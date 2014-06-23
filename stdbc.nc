%
O0010 (STANDARD BOLT CIRCLE - V0.2 - Z.N.)
( SET PARAMETERS HERE )
#1 = 10.0	(A = bolt circle diameter)
#2 = 8.0	(B = number of holes)
#3 = .1		(C = G99 retract for all tools)
#7 = -.2	(D = spot depth)
#8 = 10.0	(E = spot feed)
#9 = .08	(F = peck depth)
#11 = 1.0	(H = final hole depth)
#4 = 10.0	(I = drill feed)
#5 = .500	(J = tap depth)
#6 = 10.0	(K = tap feed)
#13 = 100	(M = spot spindle speed)
#17 = 100	(Q = drill spindle speed)
#18 = 100 	(R = tap spindle speed)
(IF MAKING CHANGES BELOW THIS LINE, SAVE AS NEW PROGRAM IN MACHINE)

T1 (SPOT DRILL)
M6
G0 G90  X[#1 / 2.] Y0. A0.
S#13 M3
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
S#17 M3
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

T4 (TAP)
M6
G0 G90  X[#1 / 2.] Y0. A0.
S#18 M3
G43 Z3. H4
M8
M98 P0014 L#2
G0 Z3.
M5
M9
G91 G28 Z0.
M30


O0011 (STD BC SPOT SUB)
G0 Z.1
G98 G81 Z#7 R#3 F#8
G80
G91 A[360.0 / #2]
G90
M99

O0012 (STD BC DRILL SUB)
G0 Z.1
G83 Z#9 R#3 Q#9 F#4
G80
G91 A[360.0 / #2]
G90
M99

O0013 (STD BC CBORE SUB)
(tbd)
M99

O0014 (STD BC TAP SUB)
G0 Z.1
G98 G84 Z#5 R#3 F#6
G80
G91 A[360.0 / #2]
G90
M99
%
