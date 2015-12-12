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


/**@file  spxsteeppr.h
 * @brief Steepest edge pricer.
 */
#ifndef _SPXSTEEPPR_H_
#define _SPXSTEEPPR_H_


#include <assert.h>

#include "spxdefines.h"
#include "spxpricer.h"
#include "random.h"

namespace soplex
{

/**@brief   Steepest edge pricer.
   @ingroup Algo
      
   Class SPxSteepPR implements a steepest edge pricer to be used with
   SoPlex.
   
   See SPxPricer for a class documentation.
*/
class SPxSteepPR : public SPxPricer
{
public:

   //-------------------------------------
   /**@name Types */
   //@{
   /// How to setup the direction multipliers.
   /** Possible settings are #EXACT for starting with exactly computed
       values, or #DEFAULT for starting with multipliers set to 1. The
       latter is the default.
   */
   enum Setup {
      EXACT,   ///< starting with exactly computed values
      DEFAULT  ///< starting with multipliers set to 1
   };
   //@}
   /// setup steepest edge weights
   void setupWeights(SPxSolver::Type type);

private:

   //-------------------------------------
   /**@name Data */
   //@{
   /// vector of pricing penalties
   DVector penalty;
   /// vector of pricing penalties
   DVector coPenalty;
   /// working vector
   DVector workVec;
   /// working vector
   SSVector workRhs;
   /// temporary array of precomputed pricing values
   DataArray<IdxElement> prices;
   /// temporary array of precomputed pricing values
   DataArray<IdxElement> pricesCo;
   /// array of best pricing candidates
   DIdxSet bestPrices;
   /// array of best pricing candidates
   DIdxSet bestPricesCo;
   ///
   double pi_p;
   ///
   int prefSetup;
   /// preference multiplier for selecting as pivot
   DataArray < double > coPref;
   /// preference multiplier for selecting as pivot
   DataArray < double > pref;
   ///
   DataArray < double > leavePref;
   /// setup type.
   Setup setup;
   /// has a refinement step already been tried?
   bool refined;
   //@}

   //-------------------------------------
   /**@name Preferences */
   //@{
   ///
   void setupPrefsX(double mult, double /*tie*/, double /*cotie*/, double shift, double coshift);
   ///
   void setupPrefs(SPxSolver::Type);
   //@}

   //-------------------------------------
   /// prepare data structures for hyper sparse pricing
   int buildBestPriceVectorLeave( double feastol );
   /// implementation of full pricing
   int selectLeaveX(double tol);
   /// implementation of sparse pricing in the leaving Simplex
   int selectLeaveSparse(double tol);
   /// implementation of hyper sparse pricing in the leaving Simplex
   int selectLeaveHyper(double tol);
   /// build up vector of pricing values for later use
   SPxId buildBestPriceVectorEnterDim(double& best, double feastol);
   SPxId buildBestPriceVectorEnterCoDim(double& best, double feastol);
   /// choose the best entering index among columns and rows but prefer sparsity
   SPxId selectEnterX(double tol);
   /// implementation of sparse pricing for the entering Simplex (slack variables)
   SPxId selectEnterSparseDim(double& best, double tol);
   /// implementation of sparse pricing for the entering Simplex
   SPxId selectEnterSparseCoDim(double& best, double tol);
   /// implementation of selectEnter() in dense case (slack variables)
   SPxId selectEnterDenseDim(double& best, double tol);
   /// implementation of selectEnter() in dense case
   SPxId selectEnterDenseCoDim(double& best, double tol);
   /// implementation of hyper sparse pricing in the entering Simplex
   SPxId selectEnterHyperDim(double& best, double feastol);
   /// implementation of hyper sparse pricing in the entering Simplex
   SPxId selectEnterHyperCoDim(double& best, double feastol);

public:

   //-------------------------------------
   /**@name Construction / destruction */
   //@{
   ///
   SPxSteepPR(const char* name = "Steep", Setup mode = DEFAULT)
      : SPxPricer(name)
      , workRhs (0, 1e-16)
      , setup (mode)
   {
      assert(isConsistent());
   }
   /// copy constructor
   SPxSteepPR( const SPxSteepPR& old)
      : SPxPricer(old)
      , penalty(old.penalty)
      , coPenalty(old.coPenalty)
      , workVec(old.workVec)
      , workRhs(old.workRhs)
      , pi_p(old.pi_p)
      , prefSetup(old.prefSetup)
      , coPref(old.coPref)
      , pref(old.pref)
      , leavePref(old.leavePref)
      , setup(old.setup)
   {
      assert(isConsistent());
   }
   /// assignment operator
   SPxSteepPR& operator=( const SPxSteepPR& rhs)
   {
      if(this != &rhs)
      {
         SPxPricer::operator=(rhs);
         penalty = rhs.penalty;
         coPenalty = rhs.coPenalty;
         workVec = rhs.workVec;
         workRhs = rhs.workRhs;
         pi_p = rhs.pi_p;
         prefSetup = rhs.prefSetup;
         coPref = rhs.coPref;
         pref = rhs.pref;
         leavePref = rhs.leavePref;
         setup = rhs.setup;

         assert(isConsistent());
      }

      return *this;
   }
   /// destructor
   virtual ~SPxSteepPR()
   {}
   /// clone function for polymorphism
   inline virtual SPxPricer* clone()  const 
   {
      return new SPxSteepPR(*this);
   }
   //@}

   //-------------------------------------
   /**@name Access / modification */
   //@{
   /// sets the solver
   virtual void load(SPxSolver* base);
   /// clear solver and preferences
   virtual void clear();
   /// set entering/leaving algorithm
   virtual void setType(SPxSolver::Type);
   /// set row/column representation
   virtual void setRep(SPxSolver::Representation rep);
   ///
   virtual int selectLeave();
   ///
   virtual void left4(int n, SPxId id);
   ///
   virtual SPxId selectEnter();
   ///
   virtual void entered4(SPxId id, int n);
   /// \p n vectors have been added to loaded LP.
   virtual void addedVecs (int n);
   /// \p n covectors have been added to loaded LP.
   virtual void addedCoVecs(int n);
   /// \p the i'th vector has been removed from the loaded LP.
   virtual void removedVec(int i);
   /// \p the i'th covector has been removed from the loaded LP.
   virtual void removedCoVec(int i);
   /// \p n vectors have been removed from loaded LP.
   virtual void removedVecs(const int perm[]);
   /// \p n covectors have been removed from loaded LP.
   virtual void removedCoVecs(const int perm[]);
   //@}

   //-------------------------------------
   /**@name Consistency check */
   //@{
   ///
   virtual bool isConsistent() const;
   //@}
};

} // namespace soplex
#endif // _SPXSTEEPPR_H_
