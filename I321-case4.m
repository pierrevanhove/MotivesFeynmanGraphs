SetQuitOnError(true);

AttachSpec("periods/src/PF.spec");

SetVerbose("User2", true);

Kt<t> := FunctionField(Rationals());
R<x1, x2, x3, x4, x5, x6> := PolynomialRing(Kt, 6);
dop<D> := PolynomialRing(Kt);

Upower := 0;
Fpower := 2;

U := x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6;
F :=t*(-14398*x1*x2*x3 - 14398*x1*x2*x4 - 14398*x1*x2*x5 - 11314*x1*x3*x5 - 11314*x2*x3*x5 - 21234*x1*x4*x5 - 21234*x2*x4*x5 - 14398*x1*x2*x6 - 17419*x1*x3*x6 - 57109*x2*x3*x6 - 23309*x1*x4*x6 - 62999*x2*x4*x6 - 13183*x1*x5*x6 - 27811*x2*x5*x6 - 11314*x3*x5*x6 - 21234*x4*x5*x6 - 11376*x2*(x4 + x5)*x6) + (1600*x1 + 64*x2 + 3136*x3 + 8464*x4 + 5929*x5 + 25*x6)* (x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6) -t* 3487*(x4 + x5)*(x3*x6 + x1*(x3 + x6) + x2*(x3 + x6));

denomrad := F^2;
numer := 1;
exp:=1;


deq := dop ! PicardFuchs(<denomrad, numer, exp>, 2);

Write("data/I321-case4/result", deq);
