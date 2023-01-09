SetQuitOnError(true);

AttachSpec("periods/src/PF.spec");

SetVerbose("User2", true);

Kt<t> := FunctionField(Rationals());
R<x1, x2, x3, x4, x5, x6> := PolynomialRing(Kt, 6);
dop<D> := PolynomialRing(Kt);

Upower := 0;
Fpower := 2;

U := x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6;
F:=t*(-11570*x1*x2*x3 - 11570*x1*x2*x4 - 11570*x1*x2*x5 - 20239*x1*x3*x5 - 20239*x2*x3*x5 - 8801*x1*x4*x5 - 8801*x2*x4*x5 - 11570*x1*x2*x6 - 13365*x1*x3*x6 - 15881*x2*x3*x6 - 10965*x1*x4*x6 - 13481*x2*x4*x6 - 22420*x1*x5*x6 - 31672*x2*x5*x6 - 20239*x3*x5*x6 - 8801*x4*x5*x6 - 14204*x2*(x4 + x5)*x6 )+ (4900*x1 + 121*x2 + 4489*x3 + 576*x4 + 1369*x5 + 2116*x6)* (x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6) - 7049*t*(x4 + x5)*(x3*x6 + x1*(x3 + x6) + x2*(x3 + x6));

denomrad := F^2;
numer := 1;
exp:=1;


deq := dop ! PicardFuchs(<denomrad, numer, exp>, 2);

Write("data/I321-case1/result", deq);
