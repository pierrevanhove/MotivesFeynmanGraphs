SetQuitOnError(true);

AttachSpec("periods/src/PF.spec");

SetVerbose("User2", true);

Kt<t> := FunctionField(Rationals());
R<x1, x2, x3, x4, x5, x6> := PolynomialRing(Kt, 6);
dop<D> := PolynomialRing(Kt);

Upower := 0;
Fpower := 2;

U := x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6;
F :=t*(-12441*x1*x2*x3 - 12441*x1*x2*x4 - 12441*x1*x2*x5 - 44660*x1*x3*x5 - 44660*x2*x3*x5 - 14564*x1*x4*x5 - 14564*x2*x4*x5 - 12441*x1*x2*x6 - 11536*x1*x3*x6 - 22261*x2*x3*x6 - 17576*x1*x4*x6 - 28301*x2*x4*x6 - 77948*x1*x5*x6 - 74623*x2*x5*x6 - 44660*x3*x5*x6 - 14564*x4*x5*x6 + 13580*x2*(x4 + x5)*x6) + (1024*x1 + 256*x2 + 100*x3 + 5929*x4 + 900*x5 + 5776*x6)* (x1*x3 + x2*x3 + x1*x4 + x2*x4 + x1*x5 + x2*x5 + x1*x6 + x2*x6 + x3*x6 + x4*x6 + x5*x6) -t* 20866*(x4 + x5)*(x3*x6 + x1*(x3 + x6) + x2*(x3 + x6));


denomrad := F^2;
numer := 1;
exp:=1;


deq := dop ! PicardFuchs(<denomrad, numer, exp>, 2);

Write("data/I321-case3/result", deq);
