/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
/*                                                                           */
/*                  This file is part of the class library                   */
/*       SoPlex --- the Sequential object-oriented simPlex.                  */
/*                                                                           */
/*    Copyright (C) 1996-2014 Konrad-Zuse-Zentrum                            */
/*                            fuer Informationstechnik Berlin                */
/*                                                                           */
/*  SoPlex is distributed under the terms of the ZIB Academic Licence.       */
/*                                                                           */
/*  You should have received a copy of the ZIB Academic License              */
/*  along with SoPlex; see the file COPYING. If not email to soplex@zib.de.  */
/*                                                                           */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

//#define DEBUGGING 1

#include <assert.h>
#include <iostream>

#include "spxdefines.h"
#include "spxdefaultrt.h"

namespace soplex
{
/**
 * Here comes the ratio test for selecting a variable to leave the basis. 
 * It is assumed that Vec.delta() and fVec.idx() have been setup
 * correctly!
 *
 * The leaving variable is selected such that the update of fVec() (using
 * fVec.value() * fVec.delta()) keeps the basis feasible within
 * solver()->entertol(). Hence, fVec.value() must be chosen such that one
 * updated value of theFvec just reaches its bound and no other one exceeds
 * them by more than solver()->entertol(). Further, fVec.value() must have the
 * same sign as argument \p val.
 *
 * The return value of selectLeave() is the number of a variable in the
 * basis selected to leave the basis. -1 indicates that no variable could be
 * selected. Otherwise, parameter \p val contains the chosen fVec.value().
 */
int SPxDefaultRT::selectLeave(double& val, double)
{
   solver()->fVec().delta().setup();

   const double*   vec = solver()->fVec().get_const_ptr();
   const double*   upd = solver()->fVec().delta().values();
   const IdxSet& idx = solver()->fVec().idx();
   const double*   ub  = solver()->ubBound().get_const_ptr();
   const double*   lb  = solver()->lbBound().get_const_ptr();

   double epsilon = solver()->epsilon();
   int  leave   = -1;

   double x;
   int  i;
   int  j;

   // PARALLEL the j loop could be parallelized
   if (val > 0)
   {
      // Loop over NZEs of delta vector.
      for( j = 0; j < idx.size(); ++j)
      {
         i = idx.index(j);
         x = upd[i];
 
         if (x > epsilon)
         {
            if (ub[i] < infinity)
            {
               double y = (ub[i] - vec[i] + delta) / x;

               if (y < val)
               {
                  leave = i;
                  val   = y;
               }
            }
         }
         else if (x < -epsilon)
         {
            if (lb[i] > -infinity)
            {
               double y = (lb[i] - vec[i] - delta) / x;

               if (y < val)
               {
                  leave = i;
                  val   = y;
               }
            }
         }
      }
      if (leave >= 0)
      {
         x   = upd[leave];

         // BH 2005-11-30: It may well happen that the basis is degenerate and the
         // selected leaving variable is (at most delta) beyond its bound. (This
         // happens for instance on LP/netlib/adlittle.mps with setting -r -t0.) 
         // In that case we do a pivot step with length zero to avoid difficulties.
         if ( ( x > epsilon  && vec[leave] >= ub[leave] ) ||
              ( x < -epsilon && vec[leave] <= lb[leave] ) )
         {
            val = 0.0;
         }
         else 
         {
            val = (x > epsilon) ? ub[leave] : lb[leave];
            val = (val - vec[leave]) / x;
         }
      }

      ASSERT_WARN( "WDEFRT01", val > -epsilon );
   }
   else
   {
      for( j = 0; j < idx.size(); ++j)
      {
         i = idx.index(j);
         x = upd[i];

         if (x < -epsilon)
         {
            if (ub[i] < infinity)
            {
               double y = (ub[i] - vec[i] + delta) / x;

               if (y > val)
               {
                  leave = i;
                  val   = y;
               }
            }
         }
         else if (x > epsilon)
         {
            if (lb[i] > -infinity)
            {
               double y = (lb[i] - vec[i] - delta) / x;

               if (y > val)
               {
                  leave = i;
                  val   = y;
               }
            }
         }
      }
      if (leave >= 0)
      {
         x   = upd[leave];

         // See comment above.
         if ( ( x < -epsilon && vec[leave] >= ub[leave] ) || 
              ( x > epsilon  && vec[leave] <= lb[leave] ) )
         {
            val = 0.0;
         }
         else 
         {
            val = (x < epsilon) ? ub[leave] : lb[leave];
            val = (val - vec[leave]) / x;
         }
      }

      ASSERT_WARN( "WDEFRT02", val < epsilon );
   }
   return leave;
}

/**
 Here comes the ratio test. It is assumed that theCoPvec.delta() and
 theCoPvec.idx() have been setup correctly!
 */
SPxId SPxDefaultRT::selectEnter(double& max, int)
{
   solver()->coPvec().delta().setup();
   solver()->pVec().delta().setup();

   const double*   pvec = solver()->pVec().get_const_ptr();
   const double*   pupd = solver()->pVec().delta().values();
   const IdxSet& pidx = solver()->pVec().idx();
   const double*   lpb  = solver()->lpBound().get_const_ptr();
   const double*   upb  = solver()->upBound().get_const_ptr();

   const double*   cvec = solver()->coPvec().get_const_ptr();
   const double*   cupd = solver()->coPvec().delta().values();
   const IdxSet& cidx = solver()->coPvec().idx();
   const double*   lcb  = solver()->lcBound().get_const_ptr();
   const double*   ucb  = solver()->ucBound().get_const_ptr();

   double epsilon = solver()->epsilon();
   double val     = max;
   int  pnum    = -1;
   int  cnum    = -1;

   SPxId enterId;
   int   i;
   int   j;
   double  x;

   // PARALLEL the j loops could be parallelized
   if (val > 0)
   {
      for( j = 0; j < pidx.size(); ++j )
      {
         i = pidx.index(j);
         x = pupd[i];

         if (x > epsilon)
         {
            if (upb[i] < infinity)
            {
               double y = (upb[i] - pvec[i] + delta) / x;
                        
               if (y < val)
               {
                  enterId = solver()->id(i);
                  val     = y;
                  pnum    = j;
               }
            }
         }
         else if (x < -epsilon)
         {
            if (lpb[i] > -infinity)
            {
               double y = (lpb[i] - pvec[i] - delta) / x;

               if (y < val)
               {
                  enterId = solver()->id(i);
                  val     = y;
                  pnum    = j;
               }
            }
         }
      }
      for( j = 0; j < cidx.size(); ++j )
      {
         i = cidx.index(j);
         x = cupd[i];

         if (x > epsilon)
         {
            if (ucb[i] < infinity)
            {
               double y = (ucb[i] - cvec[i] + delta) / x;

               if (y < val)
               {
                  enterId = solver()->coId(i);
                  val     = y;
                  cnum    = j;
               }
            }
         }
         else if (x < -epsilon)
         {
            if (lcb[i] > -infinity)
            {
               double y = (lcb[i] - cvec[i] - delta) / x;

               if (y < val)
               {
                  enterId = solver()->coId(i);
                  val     = y;
                  cnum    = j;
               }
            }
         }
      }
      if (cnum >= 0)
      {
         i   = cidx.index(cnum);
         x   = cupd[i];
         val = (x > epsilon) ? ucb[i] : lcb[i];
         val = (val - cvec[i]) / x;
      }
      else if (pnum >= 0)
      {
         i   = pidx.index(pnum);
         x   = pupd[i];
         val = (x > epsilon) ? upb[i] : lpb[i];
         val = (val - pvec[i]) / x;
      }
   }
   else
   {
      for( j = 0; j < pidx.size(); ++j )
      {
         i = pidx.index(j);
         x = pupd[i];

         if (x > epsilon)
         {
            if (lpb[i] > -infinity)
            {
               double y = (lpb[i] - pvec[i] - delta) / x;

               if (y > val)
               {
                  enterId = solver()->id(i);
                  val     = y;
                  pnum    = j;
               }
            }
         }
         else if (x < -epsilon)
         {
            if (upb[i] < infinity)
            {
               double y = (upb[i] - pvec[i] + delta) / x;

               if (y > val)
               {
                  enterId = solver()->id(i);
                  val     = y;
                  pnum    = j;
               }
            }
         }
      }
      for( j = 0; j < cidx.size(); ++j )
      {
         i = cidx.index(j);
         x = cupd[i];

         if (x > epsilon)
         {
            if (lcb[i] > -infinity)
            {
               double y = (lcb[i] - cvec[i] - delta) / x;

               if (y > val)
               {
                  enterId = solver()->coId(i);
                  val     = y;
                  cnum    = j;
               }
            }
         }
         else if (x < -epsilon)
         {
            if (ucb[i] < infinity)
            {
               double y = (ucb[i] - cvec[i] + delta) / x;

               if (y > val)
               {
                  enterId = solver()->coId(i);
                  val     = y;
                  cnum    = j;
               }
            }
         }
      }
      if (cnum >= 0)
      {
         i   = cidx.index(cnum);
         x   = cupd[i];
         val = (x < epsilon) ? ucb[i] : lcb[i];
         val = (val - cvec[i]) / x;
      }
      else if (pnum >= 0)
      {
         i   = pidx.index(pnum);
         x   = pupd[i];
         val = (x < epsilon) ? upb[i] : lpb[i];
         val = (val - pvec[i]) / x;
      }
   }

   if (enterId.isValid() && solver()->isBasic(enterId))
   {
      MSG_DEBUG( spxout << "DDEFRT01 isValid() && isBasic(): max=" << max
                        << std::endl; )
      if (cnum >= 0)
         solver()->coPvec().delta().clearNum(cnum);
      else
         solver()->pVec().delta().clearNum(pnum);
      return SPxDefaultRT::selectEnter(max, 0);
   }

   MSG_DEBUG(
      if( !enterId.isValid() )
         spxout << "DDEFRT02 !isValid(): max=" << max << ", x=" << x << std::endl;
   )
   max = val;

   return enterId;
}

} // namespace soplex
