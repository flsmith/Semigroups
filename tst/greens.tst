#############################################################################
##
#W  greens.tst
#Y  Copyright (C) 2006-2010                             James D. Mitchell
##
##  Licensing information can be found in the README file of this package.
##
#############################################################################
##
## $Id$
##

#ReadTest( Filename( DirectoriesPackageLibrary( "monoid", "tst" ), "greens.tst"));

gap> START_TEST("greens.tst 3.1.4");
gap> LoadPackage("monoid");;
gap> gens:=[ [ Transformation( [ 3, 4, 4, 3, 1, 1, 5 ] ) ], 
> [ Transformation( [ 1, 1, 4, 3 ] ), Transformation( [ 2, 2, 2, 2 ] ), 
> Transformation( [ 3, 3, 1, 4 ] ) ], [ Transformation( [ 4, 4, 2, 3, 3 ]), 
> Transformation( [ 5, 2, 4, 3, 1 ] ) ], 
> [ Transformation( [ 1, 5, 4, 1, 5 ] ), Transformation( [ 2, 4, 1, 3, 1 ] ) ], 
> [ Transformation( [ 4, 1, 2, 3 ] ), Transformation( [ 4, 3, 4, 1 ] ) ], 
> [ Transformation( [ 2, 1, 3, 1, 4, 3 ] ), 
>   Transformation( [ 2, 2, 2, 2, 1, 2 ] ), 
>   Transformation( [ 5, 3, 4, 3, 5, 6 ] ), 
>   Transformation( [ 6, 4, 1, 4, 5, 3 ] ), 
> Transformation( [ 6, 5, 2, 6, 3, 4 ] ) ], 
> [ Transformation( [ 3, 5, 5, 1, 4, 7, 5 ] ) ], 
> [ Transformation( [ 2, 5, 6, 1, 1, 3 ] ), 
> Transformation( [ 3, 1, 6, 2, 5, 2 ] ), 
> Transformation( [ 5, 4, 2, 3, 3, 5 ] ), 
> Transformation( [ 6, 6, 5, 5, 2, 2 ] ) ], 
> [ Transformation( [ 1, 5, 3, 2, 3 ] ), Transformation( [ 4, 3, 2, 5, 2 ] ), 
>   Transformation( [ 5, 4, 1, 2, 2 ] ), Transformation( [ 5, 5, 5, 1, 1 ] ) ], 
> [ Transformation( [ 2, 4, 4, 7, 2, 1, 2 ] ) ], 
> [ Transformation( [ 3, 4, 2, 4, 6, 7, 4 ] ), 
>   Transformation( [ 4, 6, 3, 2, 4, 5, 4 ] ), 
>   Transformation( [ 6, 2, 3, 5, 5, 2, 2 ] ), 
>   Transformation( [ 6, 5, 4, 5, 2, 4, 4 ] ), 
>   Transformation( [ 7, 6, 7, 5, 6, 5, 7 ] ) ], 
>  [ Transformation( [ 3, 2, 3, 3, 1 ] ), Transformation( [ 4, 5, 1, 2, 4 ] ) ], 
>  [ Transformation( [ 1, 4, 3, 4 ] ), Transformation( [ 2, 2, 1, 1 ] ), 
>    Transformation( [ 3, 1, 3, 4 ] ), Transformation( [ 4, 4, 3, 1 ] ) ], 
> [ Transformation( [ 1, 2, 2, 3, 3 ] ), Transformation( [ 4, 3, 4, 3, 2 ] ), 
>   Transformation( [ 5, 3, 4, 5, 4 ] ) ], 
> [ Transformation( [ 4, 3, 6, 4, 6, 1 ] ), 
>   Transformation( [ 4, 4, 4, 6, 3, 1 ] ) ], 
> [ Transformation( [ 1, 4, 3, 4 ] ), Transformation( [ 3, 3, 3, 3 ] ), 
>   Transformation( [ 3, 4, 1, 4 ] ), Transformation( [ 4, 3, 1, 4 ] ) ], 
> [ Transformation( [ 1, 3, 3, 5, 2 ] ), Transformation( [ 3, 4, 5, 1, 1 ] ) ], 
> [ Transformation( [ 2, 6, 4, 6, 5, 2 ] ), 
>   Transformation( [ 3, 5, 6, 2, 5, 1 ] ), 
>   Transformation( [ 5, 1, 3, 3, 3, 1 ] ), 
>   Transformation( [ 6, 4, 4, 6, 6, 3 ] ) ], 
> [ Transformation( [ 1, 3, 3, 3 ] ) ], 
> [ Transformation( [ 4, 1, 2, 2, 3 ] ), Transformation( [ 4, 2, 3, 2, 2 ] ) ], 
> [ Transformation( [ 1, 4, 6, 4, 4, 7, 2 ] ), 
>   Transformation( [ 1, 6, 5, 1, 7, 2, 7 ] ), 
>   Transformation( [ 2, 2, 7, 2, 1, 4, 4 ] ), 
>   Transformation( [ 5, 6, 2, 6, 3, 3, 5 ] ) ], 
> [ Transformation( [ 1, 1, 3, 1 ] ), Transformation( [ 4, 2, 3, 4 ] ), 
>   Transformation( [ 4, 4, 2, 2 ] ) ], [ Transformation( [ 3, 2, 1, 1 ] ), 
>   Transformation( [ 4, 1, 3, 2 ] ), Transformation( [ 4, 4, 1, 2 ] ) ], 
> [ Transformation( [ 1, 6, 4, 2, 5, 3, 2 ] ), 
> Transformation( [ 4, 1, 4, 7, 4, 4, 5 ] ) ], 
>   [ Transformation( [ 2, 4, 5, 4, 4 ] ) ], 
>   [ Transformation( [ 1, 4, 2, 3 ] ), Transformation( [ 4, 3, 3, 3 ] ) ], 
>   [ Transformation( [ 1, 1, 3, 1, 4 ] ) ], 
>   [ Transformation( [ 4, 3, 3, 6, 7, 2, 3 ] ), 
>   Transformation( [ 6, 6, 4, 4, 2, 1, 4 ] ) ], 
>   [ Transformation( [ 2, 2, 4, 6, 4, 3 ] ), 
>   Transformation( [ 3, 4, 1, 1, 5, 2 ] ), 
>   Transformation( [ 4, 4, 6, 4, 6, 1 ] ) ], 
>   [ Transformation( [ 3, 5, 4, 2, 1, 2, 2 ] ), 
>   Transformation( [ 7, 7, 1, 5, 7, 1, 6 ] ) ], 
>   [ Transformation( [ 3, 4, 1, 4 ] ), Transformation( [ 4, 3, 2, 2 ] ), 
>   Transformation( [ 4, 4, 1, 4 ] ) ], 
>   [ Transformation( [ 3, 7, 4, 4, 3, 3, 5 ] ), 
>   Transformation( [ 4, 6, 1, 1, 6, 4, 1 ] ), 
>   Transformation( [ 6, 5, 7, 2, 1, 1, 3 ] ) ], 
>   [ Transformation( [ 1, 2, 4, 1 ] ), Transformation( [ 4, 1, 2, 1 ] ), 
>   Transformation( [ 4, 2, 2, 4 ] ) ], 
>   [ Transformation( [ 2, 1, 2, 2 ] ), Transformation( [ 2, 4, 1, 1 ] ), 
>   Transformation( [ 4, 2, 4, 3 ] ), Transformation( [ 4, 4, 1, 2 ] ) ], 
>   [ Transformation( [ 1, 1, 1, 1, 1, 4 ] ), 
>   Transformation( [ 3, 3, 2, 4, 1, 3 ] ), 
>   Transformation( [ 4, 5, 2, 4, 4, 5 ] ), 
>   Transformation( [ 5, 3, 2, 6, 6, 4 ] ), 
>   Transformation( [ 6, 6, 5, 5, 1, 1 ] ) ], 
>   [ Transformation( [ 1, 2, 4, 1 ] ), Transformation( [ 2, 4, 1, 2 ] ), 
>   Transformation( [ 3, 3, 1, 4 ] ), Transformation( [ 3, 4, 1, 2 ] ), 
>   Transformation( [ 4, 1, 4, 3 ] ) ], 
>   [ Transformation( [ 1, 7, 6, 1, 7, 5, 5 ] ), 
>   Transformation( [ 2, 7, 1, 4, 7, 6, 2 ] ), 
>   Transformation( [ 4, 3, 7, 2, 6, 3, 4 ] ), 
>   Transformation( [ 4, 7, 2, 1, 7, 5, 4 ] ), 
>   Transformation( [ 5, 7, 5, 5, 5, 3, 5 ] ) ], 
>   [ Transformation( [ 2, 4, 4, 3 ] ) ], 
>   [ Transformation( [ 4, 6, 5, 1, 4, 4 ] ) ], 
>   [ Transformation( [ 2, 3, 4, 5, 3 ] ), Transformation( [ 4, 1, 5, 1, 3 ] ), 
>   Transformation( [ 4, 1, 5, 5, 3 ] ) ], 
>   [ Transformation( [ 1, 3, 1, 2, 2 ] ), Transformation( [ 2, 3, 5, 2, 4 ] ), 
>   Transformation( [ 2, 4, 3, 2, 5 ] ), Transformation( [ 4, 4, 2, 1, 2 ] ) ], 
>   [ Transformation( [ 1, 4, 2, 4 ] ), Transformation( [ 2, 2, 1, 4 ] ), 
>   Transformation( [ 3, 2, 2, 2 ] ) ], 
>   [ Transformation( [ 1, 5, 1, 1, 5 ] ), 
>   Transformation( [ 4, 3, 1, 3, 2 ] ) ], 
>   [ Transformation( [ 1, 3, 4, 4 ] ), Transformation( [ 2, 1, 3, 3 ] ),
> Transformation( [ 4, 1, 3, 4 ] ), Transformation( [ 4, 2, 3, 3 ] ) ], 
>   [ Transformation( [ 4, 3, 2, 2, 1, 4, 2 ] ), 
>   Transformation( [ 6, 5, 2, 7, 2, 2, 7 ] ) ], 
>   [ Transformation( [ 2, 4, 4, 3 ] ), Transformation( [ 3, 4, 1, 3 ] ), 
>   Transformation( [ 4, 1, 3, 2 ] ), Transformation( [ 4, 4, 1, 1 ] ) ], 
>   [ Transformation( [ 1, 2, 5, 2, 1 ] ), Transformation( [ 3, 2, 2, 4, 2 ] ), 
>   Transformation( [ 4, 5, 1, 1, 2 ] ), Transformation( [ 5, 5, 5, 2, 1 ] ) ],
>   [ Transformation( [ 1, 2, 4, 4 ] ), Transformation( [ 2, 1, 2, 1 ] ), 
>   Transformation( [ 2, 3, 2, 3 ] ), Transformation( [ 3, 2, 1, 3 ] ), 
>   Transformation( [ 3, 4, 3, 2 ] ) ], 
>   [ Transformation( [ 1, 1, 1, 2, 2 ] ) ], 
>   [ Transformation( [ 4, 4, 3, 3, 3, 2 ] ), 
>   Transformation( [ 4, 6, 3, 6, 4, 3 ] ), 
>   Transformation( [ 6, 4, 1, 3, 4, 5 ] ) ], 
>   [ Transformation( [ 1, 1, 4, 3 ] ), Transformation( [ 3, 1, 3, 2 ] ) ], 
>   [ Transformation( [ 1, 3, 5, 3, 3 ] ), Transformation( [ 1, 5, 4, 4, 3 ] ),
>  Transformation( [ 2, 5, 3, 1, 1 ] ) ], 
>   [ Transformation( [ 3, 2, 3, 4 ] ), Transformation( [ 3, 4, 3, 1 ] ),
>  Transformation( [ 3, 4, 4, 4 ] ), Transformation( [ 4, 3, 1, 3 ] ) ], 
>   [ Transformation( [ 2, 2, 5, 2, 2, 5 ] ), 
> Transformation( [ 2, 6, 5, 2, 6, 3 ] ), 
> Transformation( [ 4, 2, 4, 5, 5, 6 ] ), 
>       Transformation( [ 5, 4, 1, 4, 2, 2 ] ) ], 
> [ Transformation( [ 1, 1, 3, 4 ] ), Transformation( [ 3, 1, 2, 2 ] ) ], 
>   [ Transformation( [ 1, 1, 4, 5, 5, 3 ] ), 
>   Transformation( [ 6, 4, 4, 5, 6, 5 ] ) ], 
>  [ Transformation( [ 1, 4, 5, 3, 1, 7, 3 ] ), 
>  Transformation( [ 1, 6, 6, 5, 2, 4, 2 ] ) ], 
>   [ Transformation( [ 3, 3, 1, 2, 3 ] ), Transformation( [ 5, 5, 1, 5, 3 ] ),
>  Transformation( [ 5, 5, 5, 5, 2 ] ) ], 
>   [ Transformation( [ 1, 2, 5, 1, 5, 6 ] ), 
>   Transformation( [ 5, 4, 5, 5, 3, 2 ] ) ], 
>   [ Transformation( [ 1, 2, 1, 3 ] ), Transformation( [ 2, 3, 4, 4 ] ),
>  Transformation( [ 4, 1, 1, 1 ] ) ], 
>  [ Transformation( [ 1, 2, 2, 3, 2 ] ), Transformation( [ 4, 3, 2, 4, 1 ] ), 
> Transformation( [ 5, 1, 2, 2, 1 ] ), Transformation( [ 5, 2, 4, 1, 4 ] ), 
> Transformation( [ 5, 5, 4, 2, 2 ] ) ], 
> [ Transformation( [ 2, 1, 2, 3 ] ), Transformation( [ 2, 2, 3, 2 ] ) ], 
> [ Transformation( [ 4, 2, 1, 3 ] ) ], 
>   [ Transformation( [ 1, 2, 3, 4 ] ), Transformation( [ 2, 2, 3, 4 ] ), 
> Transformation( [ 2, 2, 4, 3 ] ) ], 
>   [ Transformation( [ 2, 1, 2, 1 ] ), Transformation( [ 3, 4, 2, 4 ] ) ], 
>   [ Transformation( [ 3, 4, 1, 2, 2, 2 ] ), 
>   Transformation( [ 4, 4, 4, 2, 5, 3 ] ), 
>   Transformation( [ 5, 6, 6, 5, 5, 4 ] ) ], 
>   [ Transformation( [ 1, 4, 1, 6, 4, 6 ] ), 
>   Transformation( [ 2, 4, 2, 5, 5, 6 ] ), 
>   Transformation( [ 3, 6, 2, 1, 4, 6 ] ), 
>   Transformation( [ 4, 6, 2, 4, 1, 2 ] ) ], 
>   [ Transformation( [ 1, 3, 3, 3 ] ), Transformation( [ 2, 1, 3, 1 ] ), 
>   Transformation( [ 3, 1, 2, 3 ] ) ], 
>   [ Transformation( [ 1, 4, 1, 2 ] ), Transformation( [ 2, 2, 3, 2 ] ), 
>   Transformation( [ 3, 3, 4, 3 ] ), Transformation( [ 4, 3, 3, 4 ] ),
>   Transformation( [ 4, 4, 4, 2 ] ) ], 
>   [ Transformation( [ 1, 2, 1, 4 ] ), Transformation( [ 4, 1, 1, 2 ] ), 
>   Transformation( [ 4, 3, 3, 2 ] ) ], 
>   [ Transformation( [ 2, 3, 6, 7, 1, 2, 6 ] ) ], 
>   [ Transformation( [ 4, 1, 1, 3, 3, 3 ] ) ], 
>   [ Transformation( [ 3, 3, 2, 7, 5, 5, 1 ] ), 
>   Transformation( [ 3, 5, 5, 4, 1, 3, 2 ] ), 
>   Transformation( [ 4, 1, 3, 6, 6, 6, 5 ] ), 
>   Transformation( [ 7, 2, 7, 2, 7, 7, 2 ] ) ], 
>   [ Transformation( [ 1, 1, 7, 5, 2, 1, 2 ] ), 
>   Transformation( [ 2, 7, 2, 6, 7, 5, 7 ] ), 
>   Transformation( [ 4, 5, 7, 4, 3, 1, 4 ] ) ], 
>   [ Transformation( [ 3, 6, 4, 4, 2, 5, 1 ] ), 
>   Transformation( [ 4, 1, 2, 5, 7, 7, 3 ] ), 
>   Transformation( [ 4, 4, 1, 1, 6, 2, 7 ] ), 
>   Transformation( [ 5, 7, 6, 6, 1, 4, 5 ] ) ], 
>   [ Transformation( [ 1, 1, 1, 2 ] ), Transformation( [ 1, 3, 1, 3 ] ),
>   Transformation( [ 1, 4, 3, 3 ] ), Transformation( [ 3, 1, 1, 1 ] ), 
>   Transformation( [ 4, 2, 3, 4 ] ) ], 
>   [ Transformation( [ 1, 3, 3, 2, 1, 3 ] ), 
>   Transformation( [ 1, 5, 5, 6, 5, 2 ] ), 
>   Transformation( [ 6, 3, 1, 1, 5, 5 ] ), 
>   Transformation( [ 6, 3, 1, 5, 2, 4 ] ) ], 
>   [ Transformation( [ 2, 6, 1, 3, 1, 5 ] ), 
>   Transformation( [ 4, 3, 3, 5, 5, 5 ] ), 
>   Transformation( [ 4, 5, 6, 4, 4, 2 ] ), 
>   Transformation( [ 6, 3, 5, 4, 1, 4 ] ) ], 
>   [ Transformation( [ 3, 1, 2, 2, 3 ] ), Transformation( [ 3, 2, 1, 2, 5 ] ), 
>       Transformation( [ 3, 3, 4, 2, 4 ] ) ],
>   [ Transformation( [ 1, 7, 1, 6, 6, 5, 3 ] ), 
>   Transformation( [ 2, 6, 5, 6, 1, 5, 6 ] ), 
>   Transformation( [ 3, 4, 6, 1, 5, 1, 6 ] ), 
>   Transformation( [ 7, 5, 7, 2, 5, 7, 4 ] ) ], 
>   [ Transformation( [ 2, 1, 2, 2, 4 ] ), 
>   Transformation( [ 2, 1, 4, 1, 3 ] ), 
>   Transformation( [ 3, 3, 1, 3, 2 ] ), 
>   Transformation( [ 5, 4, 5, 4, 5 ] ) ], 
>   [ Transformation( [ 2, 1, 4, 3 ] ), Transformation( [ 2, 3, 4, 4 ] ), 
>   Transformation( [ 3, 3, 1, 1 ] ) ], 
>   [ Transformation( [ 2, 1, 1, 2 ] ) ], 
>   [ Transformation( [ 1, 3, 1, 3, 3 ] ), Transformation( [ 2, 1, 1, 4, 1 ] ), 
>   Transformation( [ 4, 5, 1, 5, 4 ] ), Transformation( [ 5, 4, 3, 4, 2 ] ),
>   Transformation( [ 5, 5, 5, 3, 4 ] ) ], 
>   [ Transformation( [ 5, 5, 5, 5, 5 ] ) ], 
>   [ Transformation( [ 3, 2, 1, 2, 6, 6 ] ), 
>   Transformation( [ 6, 2, 1, 4, 3, 2 ] ) ], 
>   [ Transformation( [ 3, 4, 4, 2, 4, 7, 2 ] ), 
>   Transformation( [ 4, 1, 7, 7, 7, 1, 3 ] ), 
>   Transformation( [ 5, 5, 5, 4, 4, 3, 4 ] ), 
>   Transformation( [ 6, 6, 6, 3, 6, 7, 2 ] ), 
>   Transformation( [ 7, 7, 5, 1, 7, 2, 3 ] ) ], 
>   [ Transformation( [ 1, 5, 3, 3, 1, 2, 2 ] ), 
>   Transformation( [ 3, 4, 1, 6, 3, 4, 5 ] ), 
>   Transformation( [ 4, 1, 2, 1, 6, 7, 5 ] ), 
>   Transformation( [ 4, 2, 7, 2, 4, 1, 1 ] ), 
>   Transformation( [ 7, 7, 7, 1, 5, 4, 4 ] ) ], 
>   [ Transformation( [ 1, 3, 2, 6, 5, 5 ] ), 
>   Transformation( [ 3, 1, 2, 5, 6, 2 ] ), 
>   Transformation( [ 5, 5, 1, 5, 3, 5 ] ), 
>   Transformation( [ 6, 6, 1, 5, 6, 2 ] ) ], 
>   [ Transformation( [ 1, 4, 3, 3, 4, 3 ] ), 
>   Transformation( [ 3, 1, 2, 5, 2, 5 ] ), 
>   Transformation( [ 3, 2, 1, 6, 5, 4 ] ), 
>   Transformation( [ 5, 2, 1, 1, 3, 1 ] ), 
>   Transformation( [ 6, 4, 1, 1, 1, 1 ] ) ], 
>   [ Transformation( [ 4, 2, 3, 3, 4 ] ) ], 
>   [ Transformation( [ 1, 4, 4, 4, 3, 1, 5 ] ), 
>   Transformation( [ 4, 7, 3, 6, 1, 7, 6 ] ) ], 
>   [ Transformation( [ 4, 3, 5, 7, 7, 1, 6 ] ) ], 
>   [ Transformation( [ 2, 2, 4, 1 ] ) ], 
>   [ Transformation( [ 1, 1, 2, 6, 4, 6 ] ), 
>   Transformation( [ 4, 2, 3, 1, 2, 2 ] ), 
>   Transformation( [ 4, 2, 4, 3, 6, 5 ] ) ], 
>   [ Transformation( [ 2, 3, 6, 4, 7, 4, 6 ] ), 
>   Transformation( [ 4, 4, 3, 2, 6, 4, 6 ] ), 
>   Transformation( [ 4, 6, 6, 5, 4, 6, 7 ] ), 
>   Transformation( [ 5, 6, 1, 6, 3, 5, 1 ] ) ],
>   [ Transformation( [ 1, 1, 5, 3, 1 ] ),
>   Transformation( [ 2, 2, 4, 2, 3 ] ), 
>   Transformation( [ 2, 3, 4, 4, 5 ] ), 
>   Transformation( [ 2, 4, 2, 4, 5 ] ) ], 
>   [ Transformation( [ 3, 1, 1, 5, 3 ] ), 
> Transformation( [ 3, 3, 5, 3, 1 ] ) ], 
>   [ Transformation( [ 4, 3, 3, 5, 2, 5 ] ), 
>   Transformation( [ 6, 1, 2, 4, 1, 3 ] ) ], 
>   [ Transformation( [ 2, 3, 4, 3, 3 ] ), Transformation( [ 3, 5, 2, 4, 2 ] ), 
>   Transformation( [ 3, 5, 2, 5, 2 ] ), 
> Transformation( [ 5, 3, 3, 5, 2 ] ) ] ];;
gap> semis:=List(gens, Semigroup);;
gap> List(semis, x-> [Length(GreensRClasses(x)), Size(x)]);
[ [ 3, 4 ], [ 2, 10 ], [ 3, 14 ], [ 12, 211 ], [ 4, 28 ], [ 378, 4818 ],
  [ 2, 5 ], [ 92, 7142 ], [ 81, 615 ], [ 2, 4 ], [ 158, 2255 ], [ 18, 99 ],
  [ 9, 50 ], [ 16, 76 ], [ 17, 77 ], [ 6, 13 ], [ 19, 330 ], [ 120, 1263 ],
  [ 1, 1 ], [ 14, 53 ], [ 216, 1306 ], [ 6, 12 ], [ 15, 235 ], [ 23, 235 ],
  [ 2, 2 ], [ 3, 9 ], [ 2, 2 ], [ 17, 206 ], [ 22, 506 ], [ 24, 340 ],
  [ 7, 39 ], [ 99, 495 ], [ 10, 18 ], [ 10, 100 ], [ 34, 843 ], [ 14, 210 ],
  [ 546, 3538 ], [ 2, 3 ], [ 2, 3 ], [ 35, 448 ], [ 21, 515 ], [ 9, 14 ],
  [ 5, 11 ], [ 17, 23 ], [ 28, 763 ], [ 15, 199 ], [ 21, 170 ], [ 11, 142 ],
  [ 2, 2 ], [ 33, 1259 ], [ 6, 25 ], [ 64, 426 ], [ 9, 40 ], [ 46, 388 ],
  [ 6, 25 ], [ 11, 49 ], [ 48, 391 ], [ 7, 40 ], [ 13, 18 ], [ 6, 48 ],
  [ 30, 792 ], [ 7, 11 ], [ 1, 3 ], [ 2, 3 ], [ 8, 17 ], [ 15, 115 ],
  [ 49, 1724 ], [ 8, 45 ], [ 6, 46 ], [ 8, 66 ], [ 2, 4 ], [ 1, 3 ],
  [ 322, 4344 ], [ 30, 661 ], [ 1597, 63890 ], [ 10, 76 ], [ 173, 9084 ],
  [ 74, 3931 ], [ 15, 117 ], [ 163, 4804 ], [ 14, 106 ], [ 10, 28 ],
  [ 1, 2 ], [ 53, 328 ], [ 1, 1 ], [ 17, 26 ], [ 172, 1443 ], [ 230, 15176 ],
  [ 83, 1382 ], [ 158, 1074 ], [ 2, 2 ], [ 26, 535 ], [ 3, 6 ], [ 3, 3 ],
  [ 44, 1834 ], [ 158, 1776 ], [ 19, 326 ], [ 9, 45 ], [ 32, 379 ],
  [ 23, 149 ] ]
gap> m:=semis[32];;
gap> Size(m);
495
gap> ForAll(GreensRClasses(m), x-> ForAll(Idempotents(x), y-> y in x));    
true
gap> idem:=Set(Concatenation(List(GreensRClasses(m), Idempotents)));;
gap> idem=Set(Idempotents(m));
true
gap> H:=GreensHClasses(m);;
gap> I:=Concatenation(List(GreensRClasses(m), GreensHClasses));;
gap> ForAll(H, x-> Number(I, y-> Representative(x) in y)=1);
true
#gap> Set(Concatenation(List(GreensRClasses(m), GreensHClasses)))=Set
#(GreensHClasses(m));
#JDM different representatives lead to different orderings :(
#true
gap> m:=semis[68];;
gap> H:=GreensHClasses(m);;
gap> I:=Concatenation(List(GreensRClasses(m), GreensHClasses));;
gap> ForAll(H, x-> Number(I, y-> Representative(x) in y)=1);
true
#gap> Set(Concatenation(List(GreensRClasses(m), GreensHClasses)))=Set
#(GreensHClasses(m));
#true
#JDM different representatives lead to different orderings :(
#not equal as lists since they are calculated in different ways...
gap> m:=semis[74];;
gap> r:=GreensRClassOfElement(m, Transformation( [ 2, 1, 2, 2, 1, 2, 1 ] ));;
gap> d:=DClassOfRClass(r);;
gap> dr:=GreensRClasses(d);;
gap> r2:=First(dr, x-> x=r);;
gap> DClassOfRClass(r2)=d;
true
gap> m:=Semigroup(GeneratorsOfSemigroup(m));
<semigroup with 3 generators>
gap> r:=GreensRClassOfElement(m, Transformation( [ 2, 1, 2, 2, 1, 2, 1 ] ));;
gap> d:=DClassOfRClass(r);;
gap> dr:=GreensRClasses(d);;
gap> r2:=First(dr, x-> x=r);;
gap> DClassOfRClass(r2)=d;
true
gap> res:=List(semis, x-> [Length(GreensLClasses(x)), Size(x)]);     
[ [ 3, 4 ], [ 5, 10 ], [ 2, 14 ], [ 19, 211 ], [ 9, 28 ], [ 46, 4818 ],
  [ 2, 5 ], [ 39, 7142 ], [ 25, 615 ], [ 2, 4 ], [ 789, 2255 ], [ 21, 99 ],
  [ 11, 50 ], [ 25, 76 ], [ 42, 77 ], [ 10, 13 ], [ 23, 330 ], [ 87, 1263 ],
  [ 1, 1 ], [ 24, 53 ], [ 195, 1306 ], [ 9, 12 ], [ 15, 235 ], [ 28, 235 ],
  [ 2, 2 ], [ 7, 9 ], [ 2, 2 ], [ 18, 206 ], [ 26, 506 ], [ 25, 340 ],
  [ 10, 39 ], [ 45, 495 ], [ 13, 18 ], [ 11, 100 ], [ 94, 843 ], [ 15, 210 ],
  [ 80, 3538 ], [ 2, 3 ], [ 2, 3 ], [ 103, 448 ], [ 21, 515 ], [ 10, 14 ],
  [ 7, 11 ], [ 14, 23 ], [ 27, 763 ], [ 14, 199 ], [ 20, 170 ], [ 13, 142 ],
  [ 2, 2 ], [ 30, 1259 ], [ 9, 25 ], [ 23, 426 ], [ 17, 40 ], [ 34, 388 ],
  [ 8, 25 ], [ 13, 49 ], [ 31, 391 ], [ 10, 40 ], [ 17, 18 ], [ 12, 48 ],
  [ 68, 792 ], [ 10, 11 ], [ 1, 3 ], [ 2, 3 ], [ 8, 17 ], [ 22, 115 ],
  [ 201, 1724 ], [ 7, 45 ], [ 10, 46 ], [ 11, 66 ], [ 2, 4 ], [ 1, 3 ],
  [ 363, 4344 ], [ 68, 661 ], [ 2423, 63890 ], [ 11, 76 ], [ 57, 9084 ],
  [ 84, 3931 ], [ 12, 117 ], [ 156, 4804 ], [ 16, 106 ], [ 10, 28 ],
  [ 1, 2 ], [ 52, 328 ], [ 1, 1 ], [ 20, 26 ], [ 257, 1443 ], [ 74, 15176 ],
  [ 333, 1382 ], [ 74, 1074 ], [ 2, 2 ], [ 28, 535 ], [ 3, 6 ], [ 3, 3 ],
  [ 35, 1834 ], [ 93, 1776 ], [ 18, 326 ], [ 16, 45 ], [ 25, 379 ],
  [ 33, 149 ] ]
gap> ForAll(GreensLClasses(m), x-> ForAll(Idempotents(x), y-> y in x));                 
true
gap> idem:=Set(Concatenation(List(GreensLClasses(m), Idempotents)));
[ Transformation( [ 1, 1, 1, 1, 1, 1, 1 ] ),
  Transformation( [ 1, 1, 1, 1, 5, 1, 1 ] ),
  Transformation( [ 1, 1, 1, 1, 5, 1, 5 ] ),
  Transformation( [ 1, 1, 1, 1, 5, 5, 1 ] ),
  Transformation( [ 1, 1, 1, 4, 1, 1, 1 ] ),
  Transformation( [ 1, 1, 1, 4, 1, 4, 1 ] ),
  Transformation( [ 1, 1, 1, 4, 4, 1, 4 ] ),
  Transformation( [ 1, 1, 1, 4, 5, 1, 5 ] ),
  Transformation( [ 1, 1, 1, 5, 5, 1, 5 ] ),
  Transformation( [ 1, 1, 4, 4, 1, 1, 1 ] ),
  Transformation( [ 1, 1, 4, 4, 4, 1, 4 ] ),
  Transformation( [ 1, 1, 5, 5, 5, 1, 5 ] ),
  Transformation( [ 1, 2, 1, 1, 1, 1, 1 ] ),
  Transformation( [ 1, 2, 1, 1, 2, 1, 1 ] ),
  Transformation( [ 1, 2, 1, 1, 2, 1, 2 ] ),
  Transformation( [ 1, 2, 1, 1, 2, 2, 2 ] ),
  Transformation( [ 1, 2, 1, 1, 5, 1, 1 ] ),
  Transformation( [ 1, 2, 1, 2, 2, 1, 2 ] ),
  Transformation( [ 1, 2, 1, 2, 2, 2, 2 ] ),
  Transformation( [ 1, 2, 2, 1, 1, 1, 1 ] ),
  Transformation( [ 1, 2, 2, 1, 1, 2, 1 ] ),
  Transformation( [ 1, 2, 2, 1, 2, 2, 1 ] ),
  Transformation( [ 1, 2, 2, 1, 5, 5, 1 ] ),
  Transformation( [ 1, 4, 1, 4, 4, 1, 4 ] ),
  Transformation( [ 1, 4, 1, 4, 4, 4, 4 ] ),
  Transformation( [ 1, 5, 1, 1, 5, 1, 1 ] ),
  Transformation( [ 1, 5, 1, 1, 5, 1, 5 ] ),
  Transformation( [ 1, 5, 1, 1, 5, 5, 5 ] ),
  Transformation( [ 1, 5, 1, 4, 5, 4, 5 ] ),
  Transformation( [ 1, 5, 1, 5, 5, 1, 5 ] ),
  Transformation( [ 1, 5, 1, 5, 5, 5, 5 ] ),
  Transformation( [ 1, 5, 5, 1, 5, 5, 1 ] ),
  Transformation( [ 2, 2, 2, 2, 2, 2, 2 ] ),
  Transformation( [ 2, 2, 2, 2, 2, 6, 2 ] ),
  Transformation( [ 2, 2, 2, 2, 5, 2, 2 ] ),
  Transformation( [ 2, 2, 2, 2, 5, 2, 5 ] ),
  Transformation( [ 2, 2, 2, 2, 5, 5, 2 ] ),
  Transformation( [ 2, 2, 2, 2, 6, 6, 2 ] ),
  Transformation( [ 2, 2, 2, 2, 7, 2, 7 ] ),
  Transformation( [ 2, 2, 2, 5, 5, 2, 5 ] ),
  Transformation( [ 2, 2, 2, 6, 2, 6, 2 ] ),
  Transformation( [ 2, 2, 2, 7, 7, 2, 7 ] ),
  Transformation( [ 2, 2, 5, 5, 5, 2, 5 ] ),
  Transformation( [ 2, 2, 7, 7, 7, 2, 7 ] ),
  Transformation( [ 3, 3, 3, 3, 3, 3, 3 ] ),
  Transformation( [ 3, 3, 3, 3, 5, 3, 3 ] ),
  Transformation( [ 3, 3, 3, 3, 5, 3, 5 ] ),
  Transformation( [ 3, 3, 3, 3, 5, 5, 3 ] ),
  Transformation( [ 3, 3, 3, 3, 7, 3, 7 ] ),
  Transformation( [ 3, 3, 3, 4, 3, 3, 3 ] ),
  Transformation( [ 3, 3, 3, 4, 3, 4, 3 ] ),
  Transformation( [ 3, 3, 3, 4, 4, 3, 4 ] ),
  Transformation( [ 3, 3, 3, 4, 5, 3, 5 ] ),
  Transformation( [ 3, 3, 3, 4, 7, 3, 7 ] ),
  Transformation( [ 3, 3, 3, 5, 5, 3, 5 ] ),
  Transformation( [ 3, 3, 3, 7, 7, 3, 7 ] ),
  Transformation( [ 3, 4, 3, 4, 4, 3, 4 ] ),
  Transformation( [ 3, 4, 3, 4, 4, 4, 4 ] ),
  Transformation( [ 3, 5, 3, 3, 5, 3, 3 ] ),
  Transformation( [ 3, 5, 3, 3, 5, 3, 5 ] ),
  Transformation( [ 3, 5, 3, 3, 5, 5, 5 ] ),
  Transformation( [ 3, 5, 3, 4, 5, 4, 5 ] ),
  Transformation( [ 3, 5, 3, 5, 5, 3, 5 ] ),
  Transformation( [ 3, 5, 3, 5, 5, 5, 5 ] ),
  Transformation( [ 3, 7, 3, 3, 7, 3, 7 ] ),
  Transformation( [ 3, 7, 3, 3, 7, 7, 7 ] ),
  Transformation( [ 3, 7, 3, 4, 7, 4, 7 ] ),
  Transformation( [ 3, 7, 3, 7, 7, 3, 7 ] ),
  Transformation( [ 3, 7, 3, 7, 7, 7, 7 ] ),
  Transformation( [ 4, 3, 3, 4, 3, 3, 4 ] ),
  Transformation( [ 4, 3, 3, 4, 4, 3, 4 ] ),
  Transformation( [ 4, 3, 3, 4, 4, 4, 4 ] ),
  Transformation( [ 4, 3, 3, 4, 5, 5, 4 ] ),
  Transformation( [ 4, 4, 4, 4, 4, 4, 4 ] ),
  Transformation( [ 4, 4, 4, 4, 5, 4, 4 ] ),
  Transformation( [ 4, 4, 4, 4, 5, 4, 5 ] ),
  Transformation( [ 4, 4, 4, 4, 5, 5, 4 ] ),
  Transformation( [ 4, 4, 4, 4, 7, 4, 7 ] ),
  Transformation( [ 4, 5, 4, 4, 5, 4, 4 ] ),
  Transformation( [ 4, 5, 4, 4, 5, 4, 5 ] ),
  Transformation( [ 4, 5, 4, 4, 5, 5, 5 ] ),
  Transformation( [ 4, 5, 5, 4, 5, 5, 4 ] ),
  Transformation( [ 4, 7, 4, 4, 7, 4, 7 ] ),
  Transformation( [ 4, 7, 4, 4, 7, 7, 7 ] ),
  Transformation( [ 5, 2, 2, 5, 5, 2, 5 ] ),
  Transformation( [ 5, 2, 2, 5, 5, 5, 5 ] ),
  Transformation( [ 5, 2, 5, 5, 5, 5, 5 ] ),
  Transformation( [ 5, 3, 3, 5, 5, 3, 5 ] ),
  Transformation( [ 5, 3, 3, 5, 5, 5, 5 ] ),
  Transformation( [ 5, 5, 3, 3, 5, 5, 5 ] ),
  Transformation( [ 5, 5, 4, 4, 5, 5, 5 ] ),
  Transformation( [ 5, 5, 5, 4, 5, 4, 5 ] ),
  Transformation( [ 5, 5, 5, 4, 5, 5, 5 ] ),
  Transformation( [ 5, 5, 5, 5, 5, 5, 5 ] ),
  Transformation( [ 6, 2, 2, 6, 6, 6, 6 ] ),
  Transformation( [ 6, 2, 6, 2, 2, 6, 2 ] ),
  Transformation( [ 6, 2, 6, 6, 2, 6, 2 ] ),
  Transformation( [ 6, 2, 6, 6, 2, 6, 6 ] ),
  Transformation( [ 6, 2, 6, 6, 6, 6, 6 ] ),
  Transformation( [ 6, 6, 6, 6, 6, 6, 6 ] ),
  Transformation( [ 6, 6, 6, 6, 7, 6, 7 ] ),
  Transformation( [ 6, 6, 6, 7, 7, 6, 7 ] ),
  Transformation( [ 6, 6, 7, 7, 7, 6, 7 ] ),
  Transformation( [ 6, 7, 6, 6, 7, 6, 7 ] ),
  Transformation( [ 6, 7, 6, 7, 7, 6, 7 ] ),
  Transformation( [ 7, 2, 2, 7, 2, 2, 7 ] ),
  Transformation( [ 7, 2, 2, 7, 5, 5, 7 ] ),
  Transformation( [ 7, 2, 2, 7, 6, 6, 7 ] ),
  Transformation( [ 7, 2, 2, 7, 7, 2, 7 ] ),
  Transformation( [ 7, 2, 2, 7, 7, 7, 7 ] ),
  Transformation( [ 7, 2, 7, 7, 2, 7, 7 ] ),
  Transformation( [ 7, 2, 7, 7, 5, 7, 7 ] ),
  Transformation( [ 7, 2, 7, 7, 7, 7, 7 ] ),
  Transformation( [ 7, 3, 3, 7, 3, 3, 7 ] ),
  Transformation( [ 7, 3, 3, 7, 7, 3, 7 ] ),
  Transformation( [ 7, 3, 3, 7, 7, 7, 7 ] ),
  Transformation( [ 7, 5, 5, 7, 5, 5, 7 ] ),
  Transformation( [ 7, 5, 7, 7, 5, 7, 7 ] ),
  Transformation( [ 7, 6, 6, 7, 6, 6, 7 ] ),
  Transformation( [ 7, 6, 6, 7, 7, 6, 7 ] ),
  Transformation( [ 7, 7, 3, 3, 7, 7, 7 ] ),
  Transformation( [ 7, 7, 4, 4, 7, 7, 7 ] ),
  Transformation( [ 7, 7, 7, 4, 7, 4, 7 ] ),
  Transformation( [ 7, 7, 7, 4, 7, 7, 7 ] ),
  Transformation( [ 7, 7, 7, 6, 7, 6, 7 ] ),
  Transformation( [ 7, 7, 7, 7, 5, 5, 7 ] ),
  Transformation( [ 7, 7, 7, 7, 5, 7, 7 ] ),
  Transformation( [ 7, 7, 7, 7, 6, 6, 7 ] ),
  Transformation( [ 7, 7, 7, 7, 7, 6, 7 ] ),
  Transformation( [ 7, 7, 7, 7, 7, 7, 7 ] ) ]
gap> idem=Set(Idempotents(m));
true
gap> m:=semis[30];;
gap> r:=GreensLClassOfElement(m, Transformation( [ 3, 3, 3, 3, 3, 3, 5 ] ));;
gap> d:=DClassOfLClass(r);;
gap> dr:=GreensLClasses(d);;
gap> r2:=First(dr, x-> x=r);;
gap> DClassOfLClass(r2)=d;
true
gap> m:=Semigroup(GeneratorsOfSemigroup(m));
<semigroup with 2 generators>
gap>  r:=GreensLClassOfElement(m, Transformation( [ 3, 3, 3, 3, 3, 3, 5 ] ));
{Transformation( [ 3, 3, 3, 3, 3, 3, 5 ] )}
gap> d:=DClassOfLClass(r);;
gap> dr:=GreensLClasses(d);;
gap> r2:=First(dr, x-> x=r);;
gap> DClassOfLClass(r2)=d;
true
gap> List(semis, s-> Length(GreensHClasses(s)));
[ 3, 5, 3, 77, 13, 1281, 2, 1032, 231, 2, 1355, 57, 28, 48, 57, 12, 139, 508, 
  1, 36, 801, 10, 71, 130, 2, 7, 2, 83, 158, 172, 22, 285, 17, 40, 377, 67, 
  1285, 2, 2, 212, 153, 14, 9, 22, 239, 65, 91, 55, 2, 367, 15, 168, 26, 207, 
  14, 29, 274, 22, 17, 26, 253, 10, 1, 2, 13, 64, 605, 20, 25, 33, 2, 1,
  1520, 307, 9625, 41, 1885, 945, 54, 1297, 58, 18, 1, 173, 1, 25, 737, 2807,
  636, 495, 2, 201, 3, 3, 471, 715, 118, 28, 197, 88 ]
gap> ForAll(semis, s-> Number(GreensHClasses(s), IsGroupHClass)=Length(Idempotents(s)));
true
#JDM
gap> List(semis, s-> Number(GreensDClasses(s), IsRegularDClass));
[ 1, 2, 2, 4, 3, 6, 1, 5, 4, 1, 6, 3, 3, 4, 3, 3, 4, 4, 1, 4, 6, 4, 4, 4, 1,
  2, 1, 3, 5, 5, 3, 5, 3, 3, 5, 4, 6, 1, 1, 4, 4, 3, 3, 4, 4, 4, 4, 3, 1, 4,
  3, 4, 4, 4, 4, 3, 6, 3, 3, 3, 4, 3, 1, 2, 2, 4, 4, 3, 3, 3, 1, 1, 5, 3, 7,
  3, 5, 5, 5, 5, 2, 3, 1, 4, 1, 4, 5, 6, 5, 5, 1, 3, 1, 1, 6, 4, 3, 3, 4, 3 ]
gap> List(semis, s-> List(GreensDClasses(s), x-> Length(Idempotents(x))));
[ [ 0, 0, 1 ], [ 1, 4 ], [ 1, 2 ], [ 7, 1, 30, 5 ], [ 1, 4, 4 ],
  [ 0, 0, 167, 11, 1, 1, 168, 6, 0 ], [ 0, 1 ], [ 2, 42, 197, 169, 6 ],
  [ 2, 0, 58, 18, 0, 5 ], [ 0, 1 ],
  [ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 159, 0, 0, 0,
      0, 8, 0, 0, 5 ], [ 0, 0, 0, 0, 19, 0, 0, 0, 1, 5 ], [ 2, 0, 11, 4 ],
  [ 0, 2, 0, 1, 14, 0, 4, 0 ], [ 0, 0, 0, 0, 0, 1, 0, 0, 12, 0, 0, 3 ],
  [ 1, 0, 3, 2, 0 ], [ 2, 17, 39, 5 ],
  [ 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 137, 6 ], [ 1 ],
  [ 0, 0, 0, 1, 10, 0, 0, 1, 0, 3 ],
  [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0,
      0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 1, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0 ], [ 2, 1, 2, 0, 3 ], [ 1, 12, 24, 4 ],
  [ 1, 0, 0, 0, 1, 0, 34, 7 ], [ 0, 1 ], [ 1, 0, 3 ], [ 0, 1 ],
  [ 0, 0, 9, 0, 36, 5 ], [ 1, 0, 17, 0, 50, 1, 5 ], [ 1, 0, 7, 1, 63, 7 ],
  [ 1, 0, 8, 4 ], [ 2, 0, 0, 0, 0, 13, 69, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1, 0
     ], [ 0, 0, 4, 0, 0, 1, 0, 2 ], [ 17, 4, 4 ],
  [ 93, 0, 0, 20, 0, 0, 6, 0, 0, 1, 0, 0, 2 ], [ 1, 10, 24, 4 ],
  [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0,
      0, 0, 0, 199, 7, 0, 0, 0, 0, 0, 0, 0 ], [ 0, 1 ], [ 0, 1 ],
  [ 0, 0, 0, 0, 1, 0, 13, 0, 0, 0, 0, 0, 48, 5 ], [ 20, 1, 51, 5 ],
  [ 0, 0, 3, 0, 0, 1, 2 ], [ 3, 0, 1, 3 ], [ 0, 0, 0, 1, 0, 3, 0, 1, 0, 0, 2 ]
    , [ 2, 27, 82, 7 ], [ 1, 9, 24, 4 ], [ 0, 3, 0, 0, 1, 38, 5 ],
  [ 6, 24, 4 ], [ 0, 1 ], [ 47, 1, 121, 6 ], [ 1, 0, 5, 4 ],
  [ 14, 0, 0, 1, 42, 0, 5 ], [ 1, 0, 1, 8, 0, 3 ],
  [ 80, 0, 0, 0, 0, 6, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0 ], [ 1, 1, 6, 3 ],
  [ 0, 0, 0, 0, 11, 1, 4 ], [ 0, 1, 20, 0, 6, 65, 1, 4 ], [ 0, 1, 10, 4 ],
  [ 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2 ], [ 2, 10, 4 ],
  [ 34, 0, 0, 1, 0, 62, 5 ], [ 0, 1, 0, 1, 0, 0, 2 ], [ 1 ], [ 1, 1 ],
  [ 3, 0, 0, 4 ], [ 1, 0, 0, 0, 0, 6, 26, 1, 0 ],
  [ 47, 0, 0, 0, 2, 0, 0, 121, 0, 6 ], [ 10, 2, 3 ], [ 1, 11, 4 ],
  [ 3, 15, 4 ], [ 0, 1 ], [ 1 ],
  [ 0, 0, 0, 0, 248, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 122, 0, 0, 0,
      7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0 ], [ 0, 0, 0, 0, 0, 111, 12, 0, 0, 7 ],
  [ 0, 1, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 258, 1, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 889, 430, 7 ], [ 20, 0, 1, 4 ],
  [ 1, 324, 0, 0, 12, 231, 6 ],
  [ 0, 143, 0, 0, 0, 0, 1, 163, 0, 3, 0, 0, 0, 6, 0 ], [ 3, 1, 1, 24, 4 ],
  [ 0, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 277, 0, 7, 0 ],
  [ 0, 0, 0, 0, 0, 23, 5 ], [ 1, 0, 4, 0, 4 ], [ 1 ],
  [ 52, 1, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0 ], [ 1 ],
  [ 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 1 ],
  [ 0, 0, 0, 0, 0, 0, 0, 177, 11, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0, 0, 0, 1, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
  [ 2, 0, 0, 0, 0, 38, 434, 0, 1, 390, 7 ],
  [ 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 114, 9, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 5 ], [ 1, 32, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 65, 6, 0 ], [ 0, 1 ],
  [ 0, 0, 16, 0, 0, 0, 74, 6 ], [ 0, 0, 1 ], [ 0, 0, 1 ],
  [ 4, 1, 1, 114, 65, 6 ],
  [ 0, 0, 0, 1, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 7 ],
  [ 8, 0, 44, 5 ], [ 0, 1, 10, 0, 3 ], [ 0, 1, 0, 6, 73, 6 ],
  [ 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 1, 4 ] ]
gap> List(semis, x-> [Length(GreensDClasses(x))]);
[ [ 3 ], [ 2 ], [ 2 ], [ 4 ], [ 3 ], [ 9 ], [ 2 ], [ 5 ], [ 6 ], [ 2 ],
  [ 75 ], [ 10 ], [ 4 ], [ 8 ], [ 12 ], [ 5 ], [ 4 ], [ 16 ], [ 1 ], [ 10 ],
  [ 101 ], [ 5 ], [ 4 ], [ 8 ], [ 2 ], [ 3 ], [ 2 ], [ 6 ], [ 7 ], [ 6 ],
  [ 4 ], [ 19 ], [ 8 ], [ 3 ], [ 13 ], [ 4 ], [ 36 ], [ 2 ], [ 2 ], [ 14 ],
  [ 4 ], [ 7 ], [ 4 ], [ 11 ], [ 4 ], [ 4 ], [ 7 ], [ 3 ], [ 2 ], [ 4 ],
  [ 4 ], [ 7 ], [ 6 ], [ 16 ], [ 4 ], [ 7 ], [ 8 ], [ 4 ], [ 13 ], [ 3 ],
  [ 7 ], [ 7 ], [ 1 ], [ 2 ], [ 4 ], [ 9 ], [ 10 ], [ 3 ], [ 3 ], [ 3 ],
  [ 2 ], [ 1 ], [ 54 ], [ 10 ], [ 32 ], [ 4 ], [ 7 ], [ 15 ], [ 5 ], [ 22 ],
  [ 7 ], [ 5 ], [ 1 ], [ 17 ], [ 1 ], [ 14 ], [ 62 ], [ 11 ], [ 26 ], [ 15 ],
  [ 2 ], [ 8 ], [ 3 ], [ 3 ], [ 6 ], [ 19 ], [ 4 ], [ 5 ], [ 6 ], [ 13 ] ]
gap> List(semis, s-> Length(Idempotents(s)));
[ 1, 5, 3, 43, 9, 354, 1, 416, 83, 1, 220, 25, 17, 21, 16, 6, 63, 168, 1, 15,
  240, 8, 41, 43, 1, 4, 1, 50, 74, 79, 13, 92, 7, 25, 122, 39, 314, 1, 1, 67,
  77, 6, 7, 7, 118, 38, 47, 34, 1, 175, 10, 62, 13, 93, 11, 16, 97, 15, 4,
  16, 102, 4, 1, 2, 7, 34, 176, 15, 16, 22, 1, 1, 381, 130, 1595, 25, 574,
  316, 33, 430, 28, 9, 1, 63, 1, 5, 197, 872, 173, 106, 1, 96, 1, 1, 191,
  248, 57, 14, 86, 38 ]
gap> a:=Transformation( [ 2, 1, 4, 5, 6, 3 ] );;
gap> b:=Transformation( [ 2, 3, 1, 5, 4, 1 ] );;
gap> M:=Semigroup(a,b);;
gap> GreensLClassOfElement(M,a);
{Transformation( [ 2, 1, 4, 5, 6, 3 ] )}
gap> IsAssociatedSemigpTransSemigp(last);
true
gap> f:=FreeSemigroup(3);;
gap> a:=f.1;; b:=f.2;; c:=f.3;; 
gap> s:=f/[[a^2, a], [b^2,b], [c^2,c], [a*b,a], [b*a,b], [a*c,a], [c*a,c], [b*c,b],[c*b,c]] ;
<fp semigroup on the generators [ s1, s2, s3 ]>
gap> Size(s);
3
gap> GreensLClassOfElement(s,a);
{s1}
gap> IsAssociatedSemigpTransSemigp(last);
false
gap> gens:=[ Transformation( [ 2, 2, 5, 2, 3 ] ), 
> Transformation( [ 2, 5, 3, 5, 3 ] ) ];;
gap> S:=Semigroup(gens);;
gap> f:=Transformation( [ 5, 5, 3, 5, 3 ] );;
gap> GreensHClassData(GreensHClassOfElement(S, f));;
gap> Representative(last);
Transformation( [ 5, 5, 3, 5, 3 ] )
gap> IsTrivial(SchutzenbergerGroup(last2));
true
gap> gens:=[ Transformation( [ 4, 1, 4, 5, 3 ] ),
> Transformation( [ 5, 3, 5, 4, 3 ] ) ];;
gap> S:=Semigroup(gens);;
gap> C:=GreensLClassOfElement(S, gens[1]*gens[2]*gens[1]);
{Transformation( [ 5, 3, 5, 4, 3 ] )}
gap> GreensLClassData(C);
GreensLClassData( Transformation( [ 5, 3, 5, 4, 3 ] ), 
[ [ [ 1, 3 ], [ 2, 5 ], [ 4 ] ] ], [ Binary Relation on 5 points ], 
[ Binary Relation on 5 points ], Group( [ (), (3,5,4), (3,5) ] ) )
gap> gens:=[ Transformation( [ 5, 1, 1, 5, 1 ] ), 
> Transformation( [ 5, 2, 4, 3, 2 ] ) ];;
gap> S:=Semigroup(gens);;
gap> GradedRClasses(S);
[ [ GreensRClassData( Transformation( [ 5, 1, 1, 5, 1 ] ), [ [ 1, 5 ] ], 
        [ () ], Group( [ (), (1,5) ] ) ), GreensRClassData( Transformation( 
        [ 1, 1, 5, 1, 1 ] ), [ [ 1, 5 ] ], [ () ], Group( [ (), (1,5) ] ) ), 
      GreensRClassData( Transformation( [ 1, 1, 1, 5, 1 ] ), [ [ 1, 5 ] ], 
        [ () ], Group( [ (), (1,5) ] ) ) ], 
  [ GreensRClassData( Transformation( [ 5, 2, 4, 3, 2 ] ), [ [ 2, 3, 4, 5 ] 
         ], [ () ], Group( [ () ] ) ) ], 
  [ GreensRClassData( Transformation( [ 2, 5, 5, 2, 5 ] ), [ [ 2, 5 ] ], 
        [ () ], Group( [ () ] ) ), GreensRClassData( Transformation( 
        [ 5, 2, 2, 5, 2 ] ), [ [ 2, 5 ] ], [ () ], Group( [ () ] ) ), 
      GreensRClassData( Transformation( [ 5, 5, 2, 5, 5 ] ), [ [ 2, 5 ] ], 
        [ () ], Group( [ () ] ) ), GreensRClassData( Transformation( 
        [ 2, 2, 5, 2, 2 ] ), [ [ 2, 5 ] ], [ () ], Group( [ () ] ) ), 
      GreensRClassData( Transformation( [ 5, 5, 5, 2, 5 ] ), [ [ 2, 5 ] ], 
        [ () ], Group( [ () ] ) ), GreensRClassData( Transformation( 
        [ 2, 2, 2, 5, 2 ] ), [ [ 2, 5 ] ], [ () ], Group( [ () ] ) ) ], 
  [ GreensRClassData( Transformation( [ 2, 2, 3, 4, 2 ] ), [ [ 2, 3, 4 ] ], 
        [ () ], Group( [ (), (3,4) ] ) ) ], 
  [ GreensRClassData( Transformation( [ 1, 1, 1, 1, 1 ] ), 
        [ [ 1 ], [ 5 ], [ 2 ] ], [ (), (1,2,3,4,5), (1,2) ], Group( 
        [ () ] ) ) ] ]
gap> gens:=[ Transformation( [ 1, 2, 1, 2, 1 ] ), 
> Transformation( [ 3, 4, 2, 1, 4 ] ) ];;
gap> S:=Semigroup(gens);; 
gap> GreensRClassReps(S);
[ [ Transformation( [ 1, 2, 1, 2, 1 ] ), Transformation( [ 1, 2, 2, 1, 2 ] ), 
      Transformation( [ 2, 1, 2, 1, 1 ] ) ], 
  [ Transformation( [ 3, 4, 2, 1, 4 ] ) ] ]
gap> a:=Transformation( [ 2, 1, 4, 5, 6, 3 ] );;
gap> b:=Transformation( [ 2, 3, 1, 5, 4, 1 ] );;
gap> M:=Semigroup(a,b);;
gap> rc:=GreensRClassOfElement(M, a*b*a);
{Transformation( [ 4, 1, 6, 5, 2, 2 ] )}
gap> GreensRClassData(rc);
GreensRClassData( Transformation( [ 4, 1, 6, 5, 2, 2 ] ),
[ [ 1, 2, 4, 5, 6 ], [ 1, 2, 3, 5, 6 ], [ 1, 2, 3, 4, 6 ], [ 1, 2, 3, 4, 5 ]
 ], [ (), (1,2)(3,6,5,4), (3,5)(4,6), (1,6,3,2)(4,5) ], Group(
[ (), (2,4,6), (2,6,4), (1,2,6)(4,5) ] ) )
gap> gens:=[ Transformation( [ 3, 5, 2, 5, 1 ] ), 
> Transformation( [ 4, 3, 2, 1, 5 ] ) ];;
gap> S:=Semigroup(gens);;
gap> f:=Transformation( [ 2, 1, 1, 1, 5 ] );;
gap> StrongOrbitOfImage(S, f);;
gap> StrongOrbitsOfImages(S);
[ [ [ [ 1, 2, 5 ], [ 1, 3, 5 ], [ 1, 2, 3 ], [ 2, 3, 5 ], [ 2, 3, 4 ], 
          [ 2, 4, 5 ], [ 3, 4, 5 ] ] ], 
  [ [ (), (1,5,2,3), (1,2)(3,5,4), (1,3,2,5), (1,3)(2,5,4), (1,3,4,5,2), 
          (1,3,2,4) ] ], [ Group([ (), (2,5), (1,5) ]) ] ]
gap> f:=Transformation( [ 5, 5, 5, 5, 2 ] );;
gap> StrongOrbitOfImage(S, f);;
gap> StrongOrbitsOfImages(S); 
[ [ [ [ 1, 2, 5 ], [ 1, 3, 5 ], [ 1, 2, 3 ], [ 2, 3, 5 ], [ 2, 3, 4 ], 
          [ 2, 4, 5 ], [ 3, 4, 5 ] ], 
      [ [ 2, 5 ], [ 1, 5 ], [ 1, 3 ], [ 2, 3 ], [ 2, 4 ], [ 4, 5 ], [ 3, 5 ], 
          [ 1, 2 ], [ 3, 4 ] ] ], 
  [ [ (), (1,5,2,3), (1,2)(3,5,4), (1,3,2,5), (1,3)(2,5,4), (1,3,4,5,2), 
          (1,3,2,4) ], 
      [ (), (1,5,2), (1,2)(3,5,4), (2,5,4,3), (2,5,4), (2,3,4,5), (2,3), 
          (1,5,4,3), (2,3)(4,5) ] ], 
  [ Group([ (), (2,5), (1,5) ]), Group([ (), (2,5) ]) ] ]
gap> gens:=[ Transformation( [ 3, 5, 2, 5, 1 ] ), 
> Transformation( [ 4, 3, 2, 1, 5 ] ) ];;
gap> S:=Semigroup(gens);;
gap> f:=Transformation( [ 2, 1, 1, 1, 5 ] );;
gap> StrongOrbitOfImage(S, f);        
[ [ [ 1, 2, 5 ], [ 1, 3, 5 ], [ 1, 2, 3 ], [ 2, 3, 5 ], [ 2, 3, 4 ], 
      [ 2, 4, 5 ], [ 3, 4, 5 ] ], 
  [ (), (1,5,2,3), (1,2)(3,5,4), (1,3,2,5), (1,3)(2,5,4), (1,3,4,5,2), 
      (1,3,2,4) ], Group([ (), (2,5), (1,5) ]) ]
gap> gens:=[ Transformation( [ 4, 1, 5, 2, 4 ] ), 
> Transformation( [ 4, 4, 1, 5, 3 ] ) ];;
gap> S:=Semigroup(gens);;
gap> f:=Transformation( [ 5, 5, 3, 3, 3 ] );;
gap> GreensDClassData(GreensDClassOfElement(S, f));
GreensDClassData( Transformation( [ 5, 5, 3, 3, 3 
 ] ), GreensRClassData( Transformation( [ 5, 5, 3, 3, 3 
 ] ) ), GreensLClassData( Transformation( [ 5, 5, 3, 3, 3 ] ) ) )
gap> gens:=[ Transformation( [ 4, 4, 3, 5, 3 ] ), 
> Transformation( [ 5, 1, 1, 4, 1 ] ), 
> Transformation( [ 5, 5, 4, 4, 5 ] ) ];;
gap> S:=Semigroup(gens);;
gap> f:=Transformation( [ 4, 5, 5, 5, 5 ] );;
gap> SchutzenbergerGroup(GreensDClassOfElement(S, f));
Group([ (), (4,5) ])
gap> SchutzenbergerGroup(GreensRClassOfElement(S, f));
Group([ (), (4,5) ])
gap> SchutzenbergerGroup(GreensLClassOfElement(S, f));
Group([ (), (4,5) ])
gap> SchutzenbergerGroup(GreensHClassOfElement(S, f));
Group([ (), (4,5) ])
gap>  S:=Semigroup([ Transformation( [ 6, 4, 4, 4, 6, 1 ] ), 
> Transformation( [ 6, 5, 1, 6, 2, 2 ] ) ]);;
gap> ImagesOfTransSemigroup(S, 6);
[  ]
gap> ImagesOfTransSemigroup(S, 5);
[  ]
gap> ImagesOfTransSemigroup(S, 4);
[ [ 1, 2, 5, 6 ] ]
gap> ImagesOfTransSemigroup(S, 3);
[ [ 1, 4, 6 ], [ 2, 5, 6 ] ]
gap> ImagesOfTransSemigroup(S, 2);
[ [ 1, 4 ], [ 2, 5 ], [ 2, 6 ], [ 4, 6 ] ]
gap> ImagesOfTransSemigroup(S, 1);
[ [ 1 ], [ 2 ], [ 4 ], [ 5 ], [ 6 ] ]
gap> ImagesOfTransSemigroup(S);
[ [ 1 ], [ 1, 2, 5, 6 ], [ 1, 4 ], [ 1, 4, 6 ], [ 2 ], [ 2, 5 ], [ 2, 5, 6 ], 
  [ 2, 6 ], [ 4 ], [ 4, 6 ], [ 5 ], [ 6 ] ]
gap> S:=Semigroup([ Transformation( [ 2, 3, 4, 1 ] ), 
> Transformation( [ 3, 3, 1, 1 ] ) ]);;
gap> Idempotents(S, 1);
[  ]
gap> Idempotents(S, 2);                        
[ Transformation( [ 1, 1, 3, 3 ] ), Transformation( [ 1, 3, 3, 1 ] ), 
  Transformation( [ 2, 2, 4, 4 ] ), Transformation( [ 4, 2, 2, 4 ] ) ]
gap> Idempotents(S, 3);                        
[  ]
gap> Idempotents(S, 4);                        
[ Transformation( [ 1, 2, 3, 4 ] ) ]
gap> Idempotents(S);
[ Transformation( [ 1, 1, 3, 3 ] ), Transformation( [ 1, 2, 3, 4 ] ), 
  Transformation( [ 1, 3, 3, 1 ] ), Transformation( [ 2, 2, 4, 4 ] ), 
  Transformation( [ 4, 2, 2, 4 ] ) ]
gap>  S:=Semigroup([ Transformation( [ 6, 4, 4, 4, 6, 1 ] ), 
> Transformation( [ 6, 5, 1, 6, 2, 2 ] ) ]);;
gap> ImagesOfTransSemigroup(S, 6);
[  ]
gap> ImagesOfTransSemigroup(S, 5);
[  ]
gap> ImagesOfTransSemigroup(S, 4);
[ [ 1, 2, 5, 6 ] ]
gap> ImagesOfTransSemigroup(S, 3);
[ [ 1, 4, 6 ], [ 2, 5, 6 ] ]
gap> ImagesOfTransSemigroup(S, 2);
[ [ 1, 4 ], [ 2, 5 ], [ 2, 6 ], [ 4, 6 ] ]
gap> ImagesOfTransSemigroup(S, 1);
[ [ 1 ], [ 2 ], [ 4 ], [ 5 ], [ 6 ] ]
gap> ImagesOfTransSemigroup(S);
[ [ 1 ], [ 1, 2, 5, 6 ], [ 1, 4 ], [ 1, 4, 6 ], [ 2 ], [ 2, 5 ], [ 2, 5, 6 ], 
  [ 2, 6 ], [ 4 ], [ 4, 6 ], [ 5 ], [ 6 ] ]
gap> S:=Semigroup([ Transformation( [ 2, 4, 1, 2 ] ),
> Transformation( [ 3, 3, 4, 1 ] ) ]);;
gap> KernelsOfTransSemigroup(S);   
[ [ [ 1, 2 ], [ 3 ], [ 4 ] ], [ [ 1, 2 ], [ 3, 4 ] ], [ [ 1, 2, 3 ], [ 4 ] ], 
  [ [ 1, 2, 3, 4 ] ], [ [ 1, 2, 4 ], [ 3 ] ], [ [ 1, 3, 4 ], [ 2 ] ], 
  [ [ 1, 4 ], [ 2 ], [ 3 ] ], [ [ 1, 4 ], [ 2, 3 ] ] ]
gap> KernelsOfTransSemigroup(S,1);
[ [ [ 1, 2, 3, 4 ] ] ]
gap> KernelsOfTransSemigroup(S,2);
[ [ [ 1, 2 ], [ 3, 4 ] ], [ [ 1, 2, 3 ], [ 4 ] ], [ [ 1, 2, 4 ], [ 3 ] ], 
  [ [ 1, 3, 4 ], [ 2 ] ], [ [ 1, 4 ], [ 2, 3 ] ] ]
gap> KernelsOfTransSemigroup(S,3);
[ [ [ 1, 2 ], [ 3 ], [ 4 ] ], [ [ 1, 4 ], [ 2 ], [ 3 ] ] ]
gap> KernelsOfTransSemigroup(S,4);
[  ]
gap> STOP_TEST( "greens.tst 3.1.4", 10000);