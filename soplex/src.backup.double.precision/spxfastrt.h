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

/**@file  spxfastrt.h
 * @brief Fast shifting ratio test.
 */
#ifndef _SPXFASTRT_H_
#define _SPXFASTRT_H_

#include <assert.h>

#include "spxdefines.h"
#include "spxratiotester.h"

namespace soplex
{

/**@brief   Fast shifting ratio test.
   @ingroup Algo

   Class SPxFastRT is an implementation class of SPxRatioTester providing
   fast and stable ratio test. Stability is achieved by allowing some
   infeasibility to ensure numerical stability such as the Harris procedure.
   Performance is achieved by skipping the second phase if the first phase
   already shows a stable enough pivot.

   See SPxRatioTester for a class documentation.
*/
class SPxFastRT : public SPxRatioTester
{
protected:
   //-------------------------------------
   /**@name Data */
   //@{
   /// parameter for computing minimum stability requirement
   double minStab;
   /// |value| < epsilon is considered 0.
   double epsilon;
   /// currently allowed infeasibility.
   double fastDelta;
   /// flag used in methods minSelect/maxSelect to retrieve correct basis status
   bool iscoid;
   //@}

   //-------------------------------------
   /**@name Private helpers */
   //@{
   /// resets tolerances (epsilon).
   void resetTols();
   /// relaxes stability requirements.
   void relax();
   /// tightens stability requirements.
   void tighten();
   /// Compute stability requirement
   double minStability(double maxabs);

   /// Max phase 1 value.
   /** Computes the maximum value \p val that could be used for updating \p update
       such that it would still fulfill the upper and lower bounds \p upBound and
       \p lowBound, respectively, within #delta. Return value is the index where the
       maximum value is encountered. At the same time the maximum absolute value
       of \p update.delta() is computed and returned in \p maxabs. Internally all
       loops are started at \p start and incremented by \p incr.
    */
   int maxDelta(double& val, double& maxabs, UpdateVector& update,
      const Vector& lowBound, const Vector& upBound, int start, int incr) const;

   ///
   int maxDelta(double& val, double& maxabs);

   ///
   SPxId maxDelta(int& nr, double& val, double& maxabs);

   /// Min phase 1 value.
   /** Computes the minimum value \p val that could be used for updating \p update
       such that it would still fulfill the upper and lower bounds \p upBound and
       \p lowBound, respectively, within #delta. Return value is the index where the
       minimum value is encountered. At the same time the maximum absolute value
       of \p update.delta() is computed and returned in \p maxabs. Internally all
       loops are started at \p start and incremented by \p incr.
   */
   int minDelta(double& val, double& maxabs, UpdateVector& update,
      const Vector& lowBound, const Vector& upBound, int start, int incr) const;

   ///
   int minDelta(double& val, double& maxabs);

   ///
   SPxId minDelta(int& nr, double& val, double& maxabs);

   /// selects stable index for maximizing ratio test.
   /** Selects from all update values \p val < \p max the one with the largest
       value of \p upd.delta() which must be greater than \p stab and is
       returned in \p stab. The index is returned as well as the corresponding
       update value \p val. Internally all loops are started at \p start and
       incremented by \p incr.
   */
   int maxSelect(double& val, double& stab, double& best, double& bestDelta,
      double max, const UpdateVector& upd, const Vector& low,
      const Vector& up, int start = 0, int incr = 1) const;
   ///
   int maxSelect(double& val, double& stab, double& bestDelta, double max);
   ///
   SPxId maxSelect(int& nr, double& val, double& stab,
      double& bestDelta, double max);

   /// selects stable index for minimizing ratio test.
   /** Select from all update values \p val > \p max the one with the largest
       value of \p upd.delta() which must be greater than \p stab and is
       returned in \p stab. The index is returned as well as the corresponding
       update value \p val. Internally all loops are started at \p start and
       incremented by \p incr.
   */
   int minSelect(double& val, double& stab, double& best, double& bestDelta,
      double max, const UpdateVector& upd, const Vector& low,
      const Vector& up, int start = 0, int incr = 1) const;
   ///
   int minSelect(double& val, double& stab,
      double& bestDelta, double max);
   ///
   SPxId minSelect(int& nr, double& val, double& stab,
      double& bestDelta, double max);

   /// tests for stop after phase 1.
   /** Tests whether a shortcut after phase 1 is feasible for the
       selected leave pivot. In this case return the update value in \p sel.
   */
   bool minShortLeave(double& sel, int leave, double maxabs);
   ///
   bool maxShortLeave(double& sel, int leave, double maxabs);

   /// numerical stability tests.
   /** Tests whether the selected leave index needs to be discarded (and do so)
       and the ratio test is to be recomputed.
   */
   bool minReLeave(double& sel, int leave, double maxabs);
   ///
   bool maxReLeave(double& sel, int leave, double maxabs);

   /// numerical stability check.
   /** Tests whether the selected enter \p id needs to be discarded (and do so)
       and the ratio test is to be recomputed.
   */
   bool minReEnter(double& sel, double maxabs, const SPxId& id, int nr);
   ///
   bool maxReEnter(double& sel, double maxabs, const SPxId& id, int nr);

   /// Tests and returns whether a shortcut after phase 1 is feasible for the
   /// selected enter pivot.
   bool shortEnter(const SPxId& enterId, int nr, double max, double maxabs) const;
   //@}

public:

   //-------------------------------------
   /**@name Construction / destruction */
   //@{
   /// default constructor
   SPxFastRT()
      : SPxRatioTester("Fast")
      , iscoid(false)
   {}
   /// copy constructor
   SPxFastRT(const SPxFastRT& old)
      : SPxRatioTester(old)
      , minStab(old.minStab)
      , epsilon(old.epsilon)
      , fastDelta(old.fastDelta)
      , iscoid(false)
   {}
   /// assignment operator
   SPxFastRT& operator=( const SPxFastRT& rhs)
   {
      if(this != &rhs)
      {
         SPxRatioTester::operator=(rhs);
         minStab = rhs.minStab;
         epsilon = rhs.epsilon;
         fastDelta = rhs.fastDelta;
         iscoid = false;
      }

      return *this;
   }
   /// bound flipping constructor
   SPxFastRT(const char* name)
      : SPxRatioTester(name)
      , iscoid(false)
   {}
   /// destructor
   virtual ~SPxFastRT()
   {}
   /// clone function for polymorphism
   inline virtual SPxRatioTester* clone() const
   {
      return new SPxFastRT(*this);
   }
   //@}

   //-------------------------------------
   /**@name Access / modification */
   //@{
   ///
   virtual void load(SPxSolver* solver);
   ///
   virtual int selectLeave(double& val, double);
   ///
   virtual SPxId selectEnter(double& val, int);
   ///
   virtual void setType(SPxSolver::Type type);
   ///
   virtual void setDelta(double newDelta)
   {
      if( newDelta <= DEFAULT_EPS_ZERO )
         newDelta = DEFAULT_EPS_ZERO;
      delta = newDelta;
      fastDelta = newDelta;
   }
   ///
   virtual double getDelta()
   {
      return fastDelta;
   }
   //@}
};
} // namespace soplex
#endif // _SPXFASTRT_H_
