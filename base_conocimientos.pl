% ===========================
% REGLAS DE LA ORACIÓN
% ===========================
o --> sn(_Gen, Num), sv(Num).
o(o(SN,SV)) --> sn(SN, _Gen, Num), sv(SV, Num).

% ===========================
% FRASE NOMINAL
% ===========================
sn(Gen, Num) --> det(Gen, Num), n(Gen, Num).
sn(sn(DET,N), Gen, Num) --> det(DET, Gen, Num), n(N, Gen, Num).

% ===========================
% FRASE VERBAL
% ===========================
sv(Num) --> vt(Num), sn(_Gen, _Num).
sv(Num) --> vi(Num).
sv(sv(VT,SN), Num) --> vt(VT, Num), sn(SN, _Gen, _Num).
sv(sv(VI), Num) --> vi(VI, Num).

% ===========================
% ARTÍCULOS
% ===========================
det(m, sg) --> [el].
det(f, sg) --> [la].
det(m, pl) --> [los].
det(f, pl) --> [las].
det(m, sg) --> [un].
det(f, sg) --> [una].
det(m, pl) --> [unos].
det(f, pl) --> [unas].
det(det(el),   m, sg) --> [el].
det(det(la),   f, sg) --> [la].
det(det(los),  m, pl) --> [los].
det(det(las),  f, pl) --> [las].
det(det(un),   m, sg) --> [un].
det(det(una),  f, sg) --> [una].

% ===========================
% SUSTANTIVOS
% ===========================
n(m, sg) --> [empleado].
n(f, sg) --> [empleada].
n(m, pl) --> [empleados].
n(f, pl) --> [empleadas].
n(m, sg) --> [sueldo].
n(m, pl) --> [sueldos].
n(n(empleado),  m, sg) --> [empleado].
n(n(empleada),  f, sg) --> [empleada].
n(n(empleados), m, pl) --> [empleados].
n(n(empleadas), f, pl) --> [empleadas].
n(n(sueldo),    m, sg) --> [sueldo].
n(n(sueldos),   m, pl) --> [sueldos].

% ===========================
% VERBOS INTRANSITIVOS
% ===========================
vi(sg) --> [trabaja].
vi(pl) --> [trabajan].
vi(vi(trabaja),  sg) --> [trabaja].
vi(vi(trabajan), pl) --> [trabajan].

% ===========================
% VERBOS TRANSITIVOS
% ===========================
vt(sg) --> [cobra].
vt(pl) --> [cobran].
vt(vt(cobra),  sg) --> [cobra].
vt(vt(cobran), pl) --> [cobran].