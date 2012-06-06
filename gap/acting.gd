#############################################################################
###
##W  acting.gd
##Y  Copyright (C) 2011-12                                James D. Mitchell
###
###  Licensing information can be found in the README file of this package.
###
##############################################################################
###

DeclareCategory("IsActingElt", IsMultiplicativeElementWithOne and
IsAssociativeElement);
DeclareCategoryCollections("IsActingElt");
DeclareProperty("IsActingSemigroup", IsSemigroup and IsActingEltCollection);

# action for use in LambdaOrb etc..
DeclareAttribute("RhoAct", IsActingSemigroup);
DeclareAttribute("LambdaAct", IsActingSemigroup);

# grading for use in GradedLambdaOrb/GradedRhoOrb
DeclareAttribute("LambdaRank", IsActingSemigroup);
DeclareAttribute("RhoRank", IsActingSemigroup);
DeclareAttribute("LambdaDegree", IsActingSemigroup);
DeclareAttribute("RhoDegree", IsActingSemigroup);

# the actual functions lambda and rho
DeclareAttribute("LambdaFunc", IsActingSemigroup);
DeclareAttribute("RhoFunc", IsActingSemigroup);

# hash table of all lambda values found so far, HTValue of LambdaHT points
# to where the graded orbit is in GradedLambdaOrbs
# only applies in graded case
DeclareAttribute("LambdaHT", IsActingSemigroup, "mutable");
# should be renamed GradedLambdaHT ?

# hash table of all valid lambda-rho values found so far, HTValue of
# LambdaRhoHT points to where the existing R-class reps with same lambda-rho
# value are in SemigroupData(s).reps. 
DeclareAttribute("LambdaRhoHT", IsActingSemigroup, "mutable");

# long orbits <=> LongOrb
DeclareAttribute("LambdaOrb", IsActingSemigroup, "mutable");
DeclareAttribute("RhoOrb", IsActingSemigroup, "mutable");
DeclareProperty("IsLambdaOrb", IsOrbit);
DeclareProperty("IsRhoOrb", IsOrbit);

DeclareGlobalFunction("LambdaOrbMults");
DeclareGlobalFunction("LambdaOrbRep");
DeclareGlobalFunction("LambdaOrbSchutzGp");
DeclareGlobalFunction("LambdaOrbStabChain");
DeclareGlobalFunction("LambdaOrbSLP");
DeclareOperation("SemigroupEltSLP", [IsActingSemigroup, IsActingElt]);

DeclareAttribute("LambdaMult", IsActingSemigroup);
DeclareAttribute("RhoMult", IsActingSemigroup);
DeclareAttribute("LambdaPerm", IsActingSemigroup);
DeclareAttribute("RhoPerm", IsActingSemigroup);

# ForwardOrbitOfImage/Kernel/ShortOrb
DeclareGlobalFunction("GradedLambdaOrb");
DeclareGlobalFunction("GradedRhoOrb");
DeclareProperty("IsGradedLambdaOrb", IsOrbit);
DeclareProperty("IsGradedRhoOrb", IsOrbit);

# list of short orbits <=> OrbitsOfImages
DeclareAttribute("GradedLambdaOrbs", IsActingSemigroup, "mutable");
DeclareAttribute("GradedRhoOrbs", IsActingSemigroup, "mutable");
DeclareProperty("IsGradedLambdaOrbs", IsOrbit);
DeclareProperty("IsGradedRhoOrbs", IsOrbit);

DeclareAttribute("LambdaDomain", IsActingSemigroup);
DeclareAttribute("RhoDomain", IsActingSemigroup);

DeclareProperty("IsActingSemigroupGreensClass", IsGreensClass);

DeclareAttribute("SemigroupData", IsActingSemigroup, "mutable");
DeclareGlobalFunction("InitSemigroupData");
DeclareOperation("EnumerateSemigroupData", [IsActingSemigroup, IsCyclotomic, IsFunction]);
DeclareCategory("IsSemigroupData", IsRecord);

# IMPLICATIONS

InstallTrueMethod(IsActingSemigroup, IsTransformationSemigroup);
InstallTrueMethod(IsActingSemigroup, IsPartialPermSemigroup);
InstallTrueMethod(IsActingElt, IsTransformation);
InstallTrueMethod(IsActingElt, IsPartialPerm);

InstallTrueMethod(IsActingSemigroupGC, IsGreensClassOfTransSemigp);
InstallTrueMethod(IsActingSemigroupGC, IsGreensClassOfPartPermSemigroup);

#EOF
