%
O0010 (STANDARD BOLT CIRCLE - REV 1 - Z.N.)

( SET PARAMETERS HERE )
#1 = 10.0	(A = bolt circle diameter)
#2 = 8.0	(B = number of holes)
#3 = -.2	(C = spot depth)
#7 = .1		(D = global retract)
#8 = 10.0	(E = spot feed)
#9 = .08	(F = peck depth)
#11 = 1.0	(G = final hole depth)
#4 = 10.0	(H = drill feed)
#5 = .500	(I = tap depth)
#6 = 10.0	(J = tap feed)

T1 (SPOT DRILL)
M6
G0 G90  X[#1 / 2.] Y0. A0.
S0000 M3
G43 Z3. H1
M8
M98 P0011 L#2
G0 Z3.
M5
M9
G91 G28 Z0.
M1

T2 (DRILL)
M6
G0 G90  X[#1 / 2.] Y0. A0.
S0000 M3
G43 Z3. H2
M8
M98 P0012 L#2
G0 Z3.
M5
M9
G91 G28 Z0.
M1

(c'bore)
(tbd)
M1

T4 (tap)
M6
G0 G90  X[#1 / 2.] Y0. A0.
S0000 M3
G43 Z3. H4
M8
M98 P0014 L#2
G0 Z3.
M5
M9
G91 G28 Z0.
M30


O0011 (spot sub)
G0 Z.1
G98 G81 Z#3 R#7 F#8
G80
G91 A[360.0 / #2]
G90
M99

O0012 (drill sub)
G0 Z.1
G83 Z#9 R#7 Q#9 F#4
G80
G91 A[360.0 / #2]
G90
M99

O0013 (c'bore sub)
(tbd)
M99

O0014 (tap sub)
G0 Z.1
G98 G84 Z#5 R#7 F#6
G80
G91 A[360.0 / #2]
G90
M99
%
