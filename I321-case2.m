SetQuitOnError(true);

AttachSpec("periods/src/PF.spec");

SetVerbose("User2", true);

Kt<t> := FunctionField(Rationals());
R<x1, x2, x3, x4, x5, x6> := PolynomialRing(Kt, 6);
dop<D> := PolynomialRing(Kt);

Upower := 0;
Fpower := 2;

U := x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6;
F :=t*(-7268*x1*x2*x3 - 7268*x1*x2*x4 - 7268*x1*x2*x5 - 14259*x1*x3*x5 - 14259*x2*x3*x5 - 7009*x1*x4*x5 - 7009*x2*x4*x5 - 7268*x1*x2*x6 - 6724*x1*x3*x6 - 12180*x2*x3*x6 - 20060*x1*x4*x6 - 25516*x2*x4*x6 - 33557*x1*x5*x6 - 29911*x2*x5*x6 - 14259*x3*x5*x6 - 7009*x4*x5*x6 + 6156*x2*(x4 + x5)*x6) + (7225*x1 + 169*x2 + 1764*x3 + 1296*x4 + 5929*x5 + 2209*x6)* (x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6) - t*9214*(x4 + x5)*(x3*x6 + x1*(x3 + x6) + x2*(x3 + x6)); 

denomrad := F^2;
numer := 1;
exp:=1;


deq := dop ! PicardFuchs(<denomrad, numer, exp>, 2);

Write("data/I321-case2/result", deq);
