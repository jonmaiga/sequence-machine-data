import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A361400: a(n) is the product of n and the number displayed on the upper face of a six-sided die as a result of its rotation through the edge when rolling over the cell with the number n of the square spiral of the natural row.

The programs for A361400, there is no canonical definition to state claims against.
-/

/-! ## A361400.P16766145645027612103

`(n+1)*A361136(n+1)`
-/

namespace A361400.P16766145645027612103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361136 (n + 1)

end

end A361400.P16766145645027612103

/-! ## A361400.P9480560535100514164

`(n+1)*A010874(A056569(n))`
-/

namespace A361400.P9480560535100514164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010874 (A056569 n).toNat

end

end A361400.P9480560535100514164

/-! ## A361400.P9015629891240293123

`(n+1)*A005086(A007718(n+1))`
-/

namespace A361400.P9015629891240293123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005086 (A007718 (n + 1)).toNat

end

end A361400.P9015629891240293123

/-! ## A361400.P2329357554403829127

`(n+1)*A005086(A119137(n+1))`
-/

namespace A361400.P2329357554403829127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005086 (A119137 (n + 1)).toNat

end

end A361400.P2329357554403829127

/-! ## A361400.P10016966419669111623

`(n+1)*A356224(A015893(n+1))`
-/

namespace A361400.P10016966419669111623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A356224 (A015893 (n + 1)).toNat

end

end A361400.P10016966419669111623

/-!
# A361403: Number of bicolored connected cubic graphs on 2n unlabeled vertices.

The programs for A361403, there is no canonical definition to state claims against.
-/

/-! ## A361403.P6673474071289098043

`A133906(n^n+3)-2^n`
-/

namespace A361403.P6673474071289098043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133906 (n ^ n + 3) - (2 ^ n : ℤ)

end

end A361403.P6673474071289098043

/-!
# A361404: Triangle read by rows: T(n,k) is the number of graphs with loops on n unlabeled vertices with k loops.

The programs for A361404, there is no canonical definition to state claims against.
-/

/-! ## A361404.P5476064267422546044

`A196266(A322176(n))`
-/

namespace A361404.P5476064267422546044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A322176 n).toNat

end

end A361404.P5476064267422546044

/-!
# A361405: Number of graphs with loops on 2n unlabeled vertices with n loops.

The programs for A361405, there is no canonical definition to state claims against.
-/

/-! ## A361405.P11857248797435019284

`A361404(∑[4*n])`
-/

namespace A361405.P11857248797435019284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361405.P11857248797435019284

/-! ## A361405.P5343368835458530542

`A361404(A046092(n))+A235145(n)`
-/

namespace A361405.P5343368835458530542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (A046092 n).toNat + A235145 n

end

end A361405.P5343368835458530542

/-! ## A361405.P3161724080073159762

`A361404(A046092(n))^A178489(n)`
-/

namespace A361405.P3161724080073159762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361404 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A361405.P3161724080073159762

/-! ## A361405.P17207348968811725452

`A178489(3*n+2)*A361404(A046092(n))`
-/

namespace A361405.P17207348968811725452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (3 * n + 2) * A361404 (A046092 n).toNat

end

end A361405.P17207348968811725452

/-! ## A361405.P5955738228966364161

`C(A361404(A046092(n)), A333737(n))`
-/

namespace A361405.P5955738228966364161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A361404 (A046092 n).toNat).toNat (A333737 n).toNat

end

end A361405.P5955738228966364161

/-!
# A361406: Number of bicolored connected cubic graphs on 2n unlabeled vertices with n vertices of each color.

The programs for A361406, there is no canonical definition to state claims against.
-/

/-! ## A361406.P7771441968774142611

`A321304(∑[2*n])`
-/

namespace A361406.P7771441968774142611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361406.P7771441968774142611

/-! ## A361406.P6381572873018320575

`A321304(A002378(n))+A011738(n)`
-/

namespace A361406.P6381572873018320575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (A002378 n).toNat + A011738 n

end

end A361406.P6381572873018320575

/-! ## A361406.P16587682681371272258

`A321304(A002378(n))+A086015(n)`
-/

namespace A361406.P16587682681371272258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (A002378 n).toNat + A086015 n

end

end A361406.P16587682681371272258

/-! ## A361406.P10994386325181760939

`A321304(A002378(n))+A185246(n)`
-/

namespace A361406.P10994386325181760939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (A002378 n).toNat + A185246 n

end

end A361406.P10994386325181760939

/-! ## A361406.P14829192543503380223

`gcd(A151909(n), A321304(A002378(n)))`
-/

namespace A361406.P14829192543503380223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A321304 (A002378 n).toNat)

end

end A361406.P14829192543503380223

/-!
# A361407: Number of connected cubic graphs on 2n unlabeled vertices rooted at a vertex.

The programs for A361407, there is no canonical definition to state claims against.
-/

/-! ## A361407.P18436607551716946897

`A321304((n+1)²+1)`
-/

namespace A361407.P18436607551716946897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 ((n + 1) ^ 2 + 1)

end

end A361407.P18436607551716946897

/-! ## A361407.P11471706553578888522

`record[A010052(n+2)*A321304(n)]`
-/

namespace A361407.P11471706553578888522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 2) * A321304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361407.P11471706553578888522

/-!
# A361408: Number of connected cubic graphs on 2n unlabeled vertices rooted at a pair of indistinguishable vertices.

The programs for A361408, there is no canonical definition to state claims against.
-/

/-! ## A361408.P15940327725889483231

`A321304((n+1)²+2)`
-/

namespace A361408.P15940327725889483231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 ((n + 1) ^ 2 + 2)

end

end A361408.P15940327725889483231

/-! ## A361408.P7830904218983372887

`record[A010052(n)*A321304(n+2)]`
-/

namespace A361408.P7830904218983372887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A321304 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361408.P7830904218983372887

/-! ## A361408.P12216230107894692050

`A321304(A028872(n+2))%A299862(n)`
-/

namespace A361408.P12216230107894692050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321304 (A028872 (n + 2)).toNat) (A299862 n)

end

end A361408.P12216230107894692050

/-!
# A361409: Number of bicolored cubic graphs on 2n unlabeled vertices with n vertices of each color.

The programs for A361409, there is no canonical definition to state claims against.
-/

/-! ## A361409.P9076672647209347736

`A361361(∑[2*n])`
-/

namespace A361409.P9076672647209347736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361409.P9076672647209347736

/-! ## A361409.P4138981764817431638

`A361361(A002378(n))+A011738(n)`
-/

namespace A361409.P4138981764817431638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (A002378 n).toNat + A011738 n

end

end A361409.P4138981764817431638

/-! ## A361409.P12699740581266085715

`A361361(A002378(n))+A086015(n)`
-/

namespace A361409.P12699740581266085715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (A002378 n).toNat + A086015 n

end

end A361409.P12699740581266085715

/-! ## A361409.P6303187547111397853

`A361361(A002378(n))+A185246(n)`
-/

namespace A361409.P6303187547111397853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (A002378 n).toNat + A185246 n

end

end A361409.P6303187547111397853

/-! ## A361409.P4235934669104033778

`gcd(A151909(n), A361361(A002378(n)))`
-/

namespace A361409.P4235934669104033778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A361361 (A002378 n).toNat)

end

end A361409.P4235934669104033778

/-!
# A361410: Number of cubic graphs on 2n unlabeled vertices rooted at a vertex.

The programs for A361410, there is no canonical definition to state claims against.
-/

/-! ## A361410.P13892942938978251226

`A361361((n+1)²+1)`
-/

namespace A361410.P13892942938978251226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 ((n + 1) ^ 2 + 1)

end

end A361410.P13892942938978251226

/-! ## A361410.P11699526458555506883

`record[A361361(A360610(n+1)+1)]`
-/

namespace A361410.P11699526458555506883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (A360610 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361410.P11699526458555506883

/-!
# A361411: Number of cubic graphs on 2n unlabeled vertices rooted at a pair of indistinguishable vertices.

The programs for A361411, there is no canonical definition to state claims against.
-/

/-! ## A361411.P9859420768286027311

`A361361((n+1)²+2)`
-/

namespace A361411.P9859420768286027311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 ((n + 1) ^ 2 + 2)

end

end A361411.P9859420768286027311

/-! ## A361411.P2966998851331235184

`record[A361361(∑[gcd(n, n%2)+1])]`
-/

namespace A361411.P2966998851331235184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361411.P2966998851331235184

/-!
# A361412: Number of connected 3-regular multigraphs on 2n unlabeled nodes rooted at an unoriented edge (or loop), loops allowed.

The programs for A361412, there is no canonical definition to state claims against.
-/

/-! ## A361412.P18366937433270108199

`A109497(A233668(n))`
-/

namespace A361412.P18366937433270108199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A233668 n).toNat

end

end A361412.P18366937433270108199

/-!
# A361413: Number of ways to tile an n X n square using rectangles with distinct dimensions where all the rectangle edge lengths are prime numbers.

The programs for A361413, there is no canonical definition to state claims against.
-/

/-! ## A361413.P7438544491154601085

`and(A007916(A287351(n+1)), A287378(n))`
-/

namespace A361413.P7438544491154601085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007916 (A287351 (n + 1)).toNat) (A287378 n)

end

end A361413.P7438544491154601085

/-!
# A361414: Number of non-abelian indecomposable groups of order n.

The programs for A361414, there is no canonical definition to state claims against.
-/

/-! ## A361414.P16552274881150738180

`A059984(A064024(n))`
-/

namespace A361414.P16552274881150738180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059984 (A064024 n).toNat

end

end A361414.P16552274881150738180

/-! ## A361414.P5899635234491814293

`A091979(A236291(n))`
-/

namespace A361414.P5899635234491814293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091979 (A236291 n).toNat

end

end A361414.P5899635234491814293

/-! ## A361414.P5333532781696280309

`A111405(A285777(n))`
-/

namespace A361414.P5333532781696280309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111405 (A285777 n).toNat

end

end A361414.P5333532781696280309

/-! ## A361414.P7980893112739969149

`A083918(A374384(n))`
-/

namespace A361414.P7980893112739969149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A374384 n).toNat

end

end A361414.P7980893112739969149

/-! ## A361414.P4853627556288426722

`A269247(A221074(n))`
-/

namespace A361414.P4853627556288426722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A221074 n).toNat

end

end A361414.P4853627556288426722

/-!
# A361415: Numbers k such that A360016(k) > 0.

The programs for A361415, there is no canonical definition to state claims against.
-/

/-! ## A361415.P3531057555774250241

`lt[0, A360016(n+1)]+1`
-/

namespace A361415.P3531057555774250241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361415.P3531057555774250241

/-! ## A361415.P6941460871093492546

`lt[0, A360016(A028310(n))]`
-/

namespace A361415.P6941460871093492546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A361415.P6941460871093492546

/-! ## A361415.P11003070993081016698

`A307345(2*n+5)+A067898(A000105(n+1))`
-/

namespace A361415.P11003070993081016698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307345 (2 * n + 5) + A067898 (A000105 (n + 1)).toNat

end

end A361415.P11003070993081016698

/-!
# A361418: a(n) is the least number with exactly n noninfinitary divisors.

The programs for A361418, there is no canonical definition to state claims against.
-/

/-! ## A361418.P8282554042475009804

`sqrt(A358262(n))`
-/

namespace A361418.P8282554042475009804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358262 n : ℝ)

end

end A361418.P8282554042475009804

/-!
# A361419: Numbers k such that there is a unique number m for which the sum of the aliquot infinitary divisors of m (A126168) is k.

The programs for A361419, there is no canonical definition to state claims against.
-/

/-! ## A361419.P8168336143174237563

`eq[A057427(n), A331973(A233583(n+1))]`
-/

namespace A361419.P8168336143174237563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331973 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361419.P8168336143174237563

/-! ## A361419.P394263469375485844

`A126168(A361420(n+1))`
-/

namespace A361419.P394263469375485844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A361420 (n + 1)).toNat

end

end A361419.P394263469375485844

/-!
# A361423: Start with natural numbers, for all positive integer periods p sieve out every p-th number p-1 times over.

The programs for A361423, there is no canonical definition to state claims against.
-/

/-! ## A361423.P6749454297832624508

`A007425(A294381(n))-A048099(n+1)`
-/

namespace A361423.P6749454297832624508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A294381 n).toNat - A048099 (n + 1)

end

end A361423.P6749454297832624508

/-! ## A361423.P13607535532166668003

`abs(A068074((n+2)!))`
-/

namespace A361423.P13607535532166668003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068074 (Nat.factorial (n + 2))|

end

end A361423.P13607535532166668003

/-!
# A361424: Triangle read by rows: T(n,k) is the maximum of a certain measure of the difficulty level (see comments) for tiling an n X k rectangle with a set of integer-sided rectangular pieces, rounded down to the nearest integer.

The programs for A361424, there is no canonical definition to state claims against.
-/

/-! ## A361424.P8456914176402209045

`A129568(A215328(n))`
-/

namespace A361424.P8456914176402209045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129568 (A215328 n).toNat

end

end A361424.P8456914176402209045

/-! ## A361424.P8746331780439345108

`A000005(A123199(n)+A004254(n))`
-/

namespace A361424.P8746331780439345108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123199 n + A004254 n).toNat

end

end A361424.P8746331780439345108

/-! ## A361424.P284611874851267606

`A000005(or(A059204(n), A366375(n)))`
-/

namespace A361424.P284611874851267606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A059204 n) (A366375 n)).toNat

end

end A361424.P284611874851267606

/-! ## A361424.P531721412729820040

`A000005(A258300(n)+∑[A000045(n)])`
-/

namespace A361424.P531721412729820040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A258300 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361424.P531721412729820040

/-! ## A361424.P13160982593474993916

`A000005(A279339(n+1)+A059204(n))`
-/

namespace A361424.P13160982593474993916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A279339 (n + 1) + A059204 n).toNat

end

end A361424.P13160982593474993916

/-!
# A361425: Maximum difficulty level (see A361424 for the definition) for tiling an n X n square with a set of integer-sided rectangles, rounded down to the nearest integer.

The programs for A361425, there is no canonical definition to state claims against.
-/

/-! ## A361425.P4018101613065561722

`A361424(∑[n+1])`
-/

namespace A361425.P4018101613065561722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361425.P4018101613065561722

/-!
# A361427: Maximum difficulty level (see A361424 for the definition) for tiling an n X 3 rectangle with a set of integer-sided rectangles, rounded down to the nearest integer.

The programs for A361427, there is no canonical definition to state claims against.
-/

/-! ## A361427.P2830156612012584783

`record[A361424(A006456(n)+2)]`
-/

namespace A361427.P2830156612012584783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (A006456 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361427.P2830156612012584783

/-! ## A361427.P244294531988794858

`record[A361424(A026233(2*n+3))]`
-/

namespace A361427.P244294531988794858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (A026233 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361427.P244294531988794858

/-! ## A361427.P7678702308438831515

`A361424(A058108(n+1)+A000720(n+4))`
-/

namespace A361427.P7678702308438831515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (A058108 (n + 1) + A000720 (n + 4)).toNat

end

end A361427.P7678702308438831515

/-!
# A361428: Maximum difficulty level (see A361424 for the definition) for tiling an n X 4 rectangle with a set of integer-sided rectangles, rounded down to the nearest integer.

The programs for A361428, there is no canonical definition to state claims against.
-/

/-! ## A361428.P17526450588526532549

`A361424(A296698(n+1))`
-/

namespace A361428.P17526450588526532549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (A296698 (n + 1)).toNat

end

end A361428.P17526450588526532549

/-! ## A361428.P16686254710276810189

`A264986(A000142(n+2))/A001405(n)`
-/

namespace A361428.P16686254710276810189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264986 (A000142 (n + 2)).toNat : ℚ) / (A001405 n : ℚ)

end

end A361428.P16686254710276810189

/-!
# A361429: a(n) is the smallest positive number not among the terms between a(n-1) and the most recent previous term whose value appears with the same frequency (inclusive); if no such term exists, set a(n)=1; a(1)=1.

The programs for A361429, there is no canonical definition to state claims against.
-/

/-! ## A361429.P877667863575437559

`A069904(A223453(n+1)+A059365(n))`
-/

namespace A361429.P877667863575437559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A223453 (n + 1) + A059365 n).toNat

end

end A361429.P877667863575437559

/-! ## A361429.P13473749221924154195

`A286351(A255543(n+1))+1`
-/

namespace A361429.P13473749221924154195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286351 (A255543 (n + 1)).toNat + 1

end

end A361429.P13473749221924154195

/-! ## A361429.P2972840439426304616

`gcd(A022290(n), A234947(n+1))`
-/

namespace A361429.P2972840439426304616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022290 n) (A234947 (n + 1))

end

end A361429.P2972840439426304616

/-! ## A361429.P7178599012689134454

`A333381(A095162(n+1)-∑{digits}[n, val(#+2, 6)])`
-/

namespace A361429.P7178599012689134454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A095162 (n + 1) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum : ℕ) : ℤ)).toNat

end

end A361429.P7178599012689134454

/-! ## A361429.P12855604128170166371

`A000120(C(A338598(n+1), A048993(n)))`
-/

namespace A361429.P12855604128170166371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A338598 (n + 1)).toNat (A048993 n).toNat)

end

end A361429.P12855604128170166371

/-!
# A361430: Multiplicative with a(p^e) = e - 1.

The programs for A361430, the canonical program `A361430.P1422546934025850425` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361430 has offset 1).

The definition of A361430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361430.P1422546934025850425

`∏{e}[n+1, #-1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361430

/-- `∏{e}[n+1, #-1]` -/
def P1422546934025850425.Spec : Prop :=
  ∀ n, P1422546934025850425.a n = A361430 (n + 1)

theorem P1422546934025850425.correct : P1422546934025850425.Spec := by
  intro n
  simp only [A361430, Nat.add_sub_cancel]

end A361430

/-! ## A361430.P10364449484769382479

`∏{p}[n+1, val(n+1, #)-1]`
-/

namespace A361430.P10364449484769382479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation (n + 1) p : ℤ) - 1)

end

end A361430.P10364449484769382479

namespace A361430

/-- `∏{p}[n+1, val(n+1, #)-1]` -/
def P10364449484769382479.Spec : Prop :=
  ∀ n, P10364449484769382479.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P14712773534039297971

`∏{p}[n+1, val((n+1)/#, #)]`
-/

namespace A361430.P14712773534039297971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat p

end

end A361430.P14712773534039297971

namespace A361430

/-- `∏{p}[n+1, val((n+1)/#, #)]` -/
def P14712773534039297971.Spec : Prop :=
  ∀ n, (P14712773534039297971.a n : ℤ) = A361430 (n + 1)

end A361430

/-! ## A361430.P13619856016136278828

`abs(∏{e}[2*n-(n-1), 1-#])`
-/

namespace A361430.P13619856016136278828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))|

end

end A361430.P13619856016136278828

namespace A361430

/-- `abs(∏{e}[2*n-(n-1), 1-#])` -/
def P13619856016136278828.Spec : Prop :=
  ∀ n, P13619856016136278828.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P5065822983915538867

`A369309(A368886(n+1))`
-/

namespace A361430.P5065822983915538867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (A368886 (n + 1)).toNat

end

end A361430.P5065822983915538867

namespace A361430

/-- `A369309(A368886(n+1))` -/
def P5065822983915538867.Spec : Prop :=
  ∀ n, P5065822983915538867.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P7063712921897412042

`A112526(n+1)*A190867(n+1)`
-/

namespace A361430.P7063712921897412042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A190867 (n + 1)

end

end A361430.P7063712921897412042

namespace A361430

/-- `A112526(n+1)*A190867(n+1)` -/
def P7063712921897412042.Spec : Prop :=
  ∀ n, P7063712921897412042.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P11214636349688452790

`A396336(n+1)/A173557(n+1)`
-/

namespace A361430.P11214636349688452790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396336 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A361430.P11214636349688452790

namespace A361430

/-- `A396336(n+1)/A173557(n+1)` -/
def P11214636349688452790.Spec : Prop :=
  ∀ n, P11214636349688452790.a n = (A361430 (n + 1) : ℚ)

end A361430

/-! ## A361430.P10936705713872814740

`A396336(n+1)/A322351(n+1)`
-/

namespace A361430.P10936705713872814740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396336 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A361430.P10936705713872814740

namespace A361430

/-- `A396336(n+1)/A322351(n+1)` -/
def P10936705713872814740.Spec : Prop :=
  ∀ n, P10936705713872814740.a n = (A361430 (n + 1) : ℚ)

end A361430

/-! ## A361430.P17184865091539165777

`A369309(n+1)/A365498(n+1)`
-/

namespace A361430.P17184865091539165777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369309 (n + 1) : ℚ) / (A365498 (n + 1) : ℚ)

end

end A361430.P17184865091539165777

namespace A361430

/-- `A369309(n+1)/A365498(n+1)` -/
def P17184865091539165777.Spec : Prop :=
  ∀ n, P17184865091539165777.a n = (A361430 (n + 1) : ℚ)

end A361430

/-! ## A361430.P13371094902446987493

`A369309(n+1)/A368885(n+1)`
-/

namespace A361430.P13371094902446987493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369309 (n + 1) : ℚ) / (A368885 (n + 1) : ℚ)

end

end A361430.P13371094902446987493

namespace A361430

/-- `A369309(n+1)/A368885(n+1)` -/
def P13371094902446987493.Spec : Prop :=
  ∀ n, P13371094902446987493.a n = (A361430 (n + 1) : ℚ)

end A361430

/-! ## A361430.P2162828497817016497

`lcm(A190867(n+1), A307423(n+1))`
-/

namespace A361430.P2162828497817016497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A190867 (n + 1)) (A307423 (n + 1))

end

end A361430.P2162828497817016497

namespace A361430

/-- `lcm(A190867(n+1), A307423(n+1))` -/
def P2162828497817016497.Spec : Prop :=
  ∀ n, (P2162828497817016497.a n : ℤ) = A361430 (n + 1)

end A361430

/-! ## A361430.P3332491784577660994

`∑{d}[n+1, A076479(#)*A324910((n+1)/#)]`
-/

namespace A361430.P3332491784577660994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076479 d * A324910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361430.P3332491784577660994

namespace A361430

/-- `∑{d}[n+1, A076479(#)*A324910((n+1)/#)]` -/
def P3332491784577660994.Spec : Prop :=
  ∀ n, P3332491784577660994.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P12898454512578759236

`A396336(n+1)/A384050(A071773(n+1))`
-/

namespace A361430.P12898454512578759236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396336 (n + 1) : ℚ) / (A384050 (A071773 (n + 1)).toNat : ℚ)

end

end A361430.P12898454512578759236

namespace A361430

/-- `A396336(n+1)/A384050(A071773(n+1))` -/
def P12898454512578759236.Spec : Prop :=
  ∀ n, P12898454512578759236.a n = (A361430 (n + 1) : ℚ)

end A361430

/-! ## A361430.P8952818041059642778

`abs(A298826(n+1))`
-/

namespace A361430.P8952818041059642778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298826 (n + 1)|

end

end A361430.P8952818041059642778

namespace A361430

/-- `abs(A298826(n+1))` -/
def P8952818041059642778.Spec : Prop :=
  ∀ n, P8952818041059642778.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P14848747884922530217

`A000196(A298826(n+1)²)`
-/

namespace A361430.P14848747884922530217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A298826 (n + 1) ^ 2).toNat

end

end A361430.P14848747884922530217

namespace A361430

/-- `A000196(A298826(n+1)²)` -/
def P14848747884922530217.Spec : Prop :=
  ∀ n, P14848747884922530217.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P75685495174299060

`gcd(A000038(n), A298826(n+1))`
-/

namespace A361430.P75685495174299060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298826 (n + 1))

end

end A361430.P75685495174299060

namespace A361430

/-- `gcd(A000038(n), A298826(n+1))` -/
def P75685495174299060.Spec : Prop :=
  ∀ n, (P75685495174299060.a n : ℤ) = A361430 (n + 1)

end A361430

/-! ## A361430.P3746404236212935787

`A008836(A147848(n+1))*A298826(n+1)`
-/

namespace A361430.P3746404236212935787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A147848 (n + 1)).toNat * A298826 (n + 1)

end

end A361430.P3746404236212935787

namespace A361430

/-- `A008836(A147848(n+1))*A298826(n+1)` -/
def P3746404236212935787.Spec : Prop :=
  ∀ n, P3746404236212935787.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P5175306026443568832

`A008836(A306652(n+1))*A298826(n+1)`
-/

namespace A361430.P5175306026443568832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A306652 (n + 1)).toNat * A298826 (n + 1)

end

end A361430.P5175306026443568832

namespace A361430

/-- `A008836(A306652(n+1))*A298826(n+1)` -/
def P5175306026443568832.Spec : Prop :=
  ∀ n, P5175306026443568832.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P17968352181505289033

`A332712(A102631(n+1))`
-/

namespace A361430.P17968352181505289033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A102631 (n + 1)).toNat

end

end A361430.P17968352181505289033

namespace A361430

/-- `A332712(A102631(n+1))` -/
def P17968352181505289033.Spec : Prop :=
  ∀ n, P17968352181505289033.a n = A361430 (n + 1)

end A361430

/-! ## A361430.P10051210598323855295

`A365550(A350390((n+1)²))`
-/

namespace A361430.P10051210598323855295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365550 (A350390 ((n + 1) ^ 2)).toNat

end

end A361430.P10051210598323855295

namespace A361430

/-- `A365550(A350390((n+1)²))` -/
def P10051210598323855295.Spec : Prop :=
  ∀ n, P10051210598323855295.a n = A361430 (n + 1)

end A361430

/-!
# A361431: Number of ways to write n^2 as an ordered sum of n^2 squares of integers.

The programs for A361431, there is no canonical definition to state claims against.
-/

/-! ## A361431.P2263486800118585016

`A066535(n²)`
-/

namespace A361431.P2263486800118585016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066535 (n ^ 2)

end

end A361431.P2263486800118585016

/-! ## A361431.P2262857147993411400

`record[lcm(A000122(n), A066535(n))]`
-/

namespace A361431.P2262857147993411400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 n) (A066535 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361431.P2262857147993411400

/-! ## A361431.P7384257911065937882

`A286815(A046092(n²))`
-/

namespace A361431.P7384257911065937882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A046092 (n ^ 2)).toNat

end

end A361431.P7384257911065937882

/-!
# A361432: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..floor(n/2)} k^(n-j) * binomial(n,2*j).

The programs for A361432, there is no canonical definition to state claims against.
-/

/-! ## A361432.P16476920231226046493

`A292860(n)-A124762(A351790(n))`
-/

namespace A361432.P16476920231226046493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n - A124762 (A351790 n).toNat

end

end A361432.P16476920231226046493

/-! ## A361432.P9044996238843505417

`A292860(n)-A278341(A195644(n+1))`
-/

namespace A361432.P9044996238843505417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n - A278341 (A195644 (n + 1)).toNat

end

end A361432.P9044996238843505417

/-!
# A361433: a(n) = number of squares in the n-th antidiagonal of the natural number array, A000027.

The programs for A361433, there is no canonical definition to state claims against.
-/

/-! ## A361433.P12897049878533972525

`Δ[floor(sqrt(∑[n]))]`
-/

namespace A361433.P12897049878533972525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A361433.P12897049878533972525

/-! ## A361433.P18285451856981748679

`Δ[floor(sqrt(C(n+1, 2)))]²`
-/

namespace A361433.P18285451856981748679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A361433.P18285451856981748679

/-! ## A361433.P13521504327227479777

`Δ[floor(sqrt(C(n+1, 2)))]^3`
-/

namespace A361433.P13521504327227479777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3

end

end A361433.P13521504327227479777

/-! ## A361433.P15672345383179997051

`char[round(sqrt(2)*xor(1, n))-1]`
-/

namespace A361433.P15672345383179997051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (Nat.xor 1 n : ℝ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361433.P15672345383179997051

/-! ## A361433.P11883353385128289070

`Δ[floor(sqrt(C(n+1, 2)))]%4`
-/

namespace A361433.P11883353385128289070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 4

end

end A361433.P11883353385128289070

/-! ## A361433.P12082158910205172762

`Δ[ceil((2*n+1)/sqrt(8))]%3`
-/

namespace A361433.P12082158910205172762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sqrt (8 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A361433.P12082158910205172762

/-! ## A361433.P6499798516194872587

`char[(round((n+1)/sqrt(2))-1)*(n%2)^n]`
-/

namespace A361433.P6499798516194872587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.sqrt (2 : ℝ)) - 1) * (((n % 2) ^ n : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361433.P6499798516194872587

/-! ## A361433.P7967692242469441796

`A080764(n+8)`
-/

namespace A361433.P7967692242469441796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (n + 8)

end

end A361433.P7967692242469441796

/-!
# A361434: Positions in Pi where the leader in the race of digits changes.

The programs for A361434, there is no canonical definition to state claims against.
-/

/-! ## A361434.P10221645918428968765

`A292673(A182112(a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A361434.P10221645918428968765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A292673 (A182112 (a (n - 2)).toNat).toNat

end

end A361434.P10221645918428968765

/-! ## A361434.P4837339222396866333

`A334046(A001595(3*(n+1))-1)`
-/

namespace A361434.P4837339222396866333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334046 (A001595 (3 * (n + 1)) - 1).toNat

end

end A361434.P4837339222396866333

/-!
# A361435: a(n) is the least positive integer that can be expressed as the sum of one or more consecutive squarefree numbers in exactly n ways.

The programs for A361435, there is no canonical definition to state claims against.
-/

/-! ## A361435.P2987051833137425460

`A105027(n)+A090321(A000169(n+1))`
-/

namespace A361435.P2987051833137425460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 n + A090321 (A000169 (n + 1)).toNat

end

end A361435.P2987051833137425460

/-!
# A361436: Primes of the form k! - Sum_{i=1..k-1} (-1)^(k-i)*i!.

The programs for A361436, there is no canonical definition to state claims against.
-/

/-! ## A361436.P8764098491069442848

`A000265(A005165(n+1)+A000142(n+2))`
-/

namespace A361436.P8764098491069442848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005165 (n + 1) + A000142 (n + 2)).toNat

end

end A361436.P8764098491069442848

/-! ## A361436.P13759144917952037690

`A006530(A005165(n+1)+A000142(n+2))`
-/

namespace A361436.P13759144917952037690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005165 (n + 1) + A000142 (n + 2)).toNat

end

end A361436.P13759144917952037690

/-! ## A361436.P15348057614610638142

`A007947(A005165(n+1)+A000142(n+2))`
-/

namespace A361436.P15348057614610638142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A005165 (n + 1) + A000142 (n + 2)).toNat

end

end A361436.P15348057614610638142

/-!
# A361438: Triangle T(n,k), n >= 1, 1 <= k <= A046801(n), read by rows, where T(n,k) is k-th smallest divisor of 2^n-1.

The programs for A361438, there is no canonical definition to state claims against.
-/

/-! ## A361438.P15978012014213738108

`A053645(A258159(n+1))`
-/

namespace A361438.P15978012014213738108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A258159 (n + 1)).toNat

end

end A361438.P15978012014213738108

/-! ## A361438.P11119807897435236215

`A062050(A258159(n+1)-1)`
-/

namespace A361438.P11119807897435236215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258159 (n + 1) - 1).toNat

end

end A361438.P11119807897435236215

/-! ## A361438.P8555150036075968049

`A164089(2*A258159(n+1))`
-/

namespace A361438.P8555150036075968049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * A258159 (n + 1)).toNat

end

end A361438.P8555150036075968049

/-! ## A361438.P10989216450670380909

`gcd(A084845(n+1), A191106(A159341(n)))`
-/

namespace A361438.P10989216450670380909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084845 (n + 1)) (A191106 (A159341 n).toNat)

end

end A361438.P10989216450670380909

/-! ## A361438.P3049081673460008240

`A006257(A054424(n+1))%A128027(n+1)`
-/

namespace A361438.P3049081673460008240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006257 (A054424 (n + 1)).toNat) (A128027 (n + 1))

end

end A361438.P3049081673460008240

/-!
# A361443: a(n) is the first term of the n-th row of A361442.

The programs for A361443, there is no canonical definition to state claims against.
-/

/-! ## A361443.P15007528718731574333

`A361442(∑[n])`
-/

namespace A361443.P15007528718731574333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361443.P15007528718731574333

/-! ## A361443.P5322099685175046820

`and(-1, A361442(A000217(n)))`
-/

namespace A361443.P5322099685175046820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A361442 (A000217 n).toNat)

end

end A361443.P5322099685175046820

/-! ## A361443.P1202939977934485779

`A361442(A000217(n))%A000070(n)`
-/

namespace A361443.P1202939977934485779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361442 (A000217 n).toNat) (A000070 n)

end

end A361443.P1202939977934485779

/-! ## A361443.P3345128642302641697

`A361442(A000217(n))+A080339(A016725(n+1))`
-/

namespace A361443.P3345128642302641697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361442 (A000217 n).toNat + A080339 (A016725 (n + 1)).toNat

end

end A361443.P3345128642302641697

/-! ## A361443.P10748126914583126465

`A361442(A000217(n))+A080339(A031405(n+1))`
-/

namespace A361443.P10748126914583126465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361442 (A000217 n).toNat + A080339 (A031405 (n + 1)).toNat

end

end A361443.P10748126914583126465

/-! ## A361443.P16335518475171361297

`A361442(A000217(n))+A080339(A323629(n+1))`
-/

namespace A361443.P16335518475171361297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361442 (A000217 n).toNat + A080339 (A323629 (n + 1)).toNat

end

end A361443.P16335518475171361297

/-! ## A361443.P6943908345033754978

`A151909(n)!*A361442(A000217(n))`
-/

namespace A361443.P6943908345033754978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151909 n).toNat : ℤ) * A361442 (A000217 n).toNat

end

end A361443.P6943908345033754978

/-!
# A361444: Lexicographically earliest sequence of distinct positive base-10 palindromes such that a(n) + a(n+1) is prime.

The programs for A361444, there is no canonical definition to state claims against.
-/

/-! ## A361444.P14972016281623246552

`A361445(n)-a(n-1)` with `a(0)=1`
-/

namespace A361444.P14972016281623246552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361445 n - a (n - 1)

end

end A361444.P14972016281623246552

/-! ## A361444.P5695700428239519678

`A002113(A309863(n)+A055265(n+1))`
-/

namespace A361444.P5695700428239519678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A309863 n + A055265 (n + 1)).toNat

end

end A361444.P5695700428239519678

/-!
# A361445: Sums of consecutive terms of A361444.

The programs for A361445, there is no canonical definition to state claims against.
-/

/-! ## A361445.P8458276709185552931

`abs(Δ[A038608(A361444(n+1))])`
-/

namespace A361445.P8458276709185552931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A361444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A361445.P8458276709185552931

/-! ## A361445.P4134027606010798899

`A361444(n+1)+A361444(n+2)`
-/

namespace A361445.P4134027606010798899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361444 (n + 1) + A361444 (n + 2)

end

end A361445.P4134027606010798899

/-! ## A361445.P6153800147790542624

`or(A012257(A087214(n)), A086527(n+1))`
-/

namespace A361445.P6153800147790542624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012257 (A087214 n).toNat) (A086527 (n + 1))

end

end A361445.P6153800147790542624

/-! ## A361445.P14852197812866429691

`A003459(A122953(3*n+2)^A322298(n))`
-/

namespace A361445.P14852197812866429691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (SequenceMachineLib.roundAway ((A122953 (3 * n + 2) : ℚ) ^ (A322298 n : ℤ))).toNat

end

end A361445.P14852197812866429691

/-!
# A361446: Number of connected 3-regular multigraphs on 2n unlabeled nodes rooted at an oriented edge (or loop), loops allowed.

The programs for A361446, there is no canonical definition to state claims against.
-/

/-! ## A361446.P2308077053046977529

`A004525(A020103(n+4)-1)`
-/

namespace A361446.P2308077053046977529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A020103 (n + 4) - 1).toNat

end

end A361446.P2308077053046977529

/-!
# A361447: Number of connected 3-regular (cubic) multigraphs on 2n unlabeled nodes rooted at an unoriented edge (or loop) whose removal does not disconnect the graph, loops allowed.

The programs for A361447, there is no canonical definition to state claims against.
-/

/-! ## A361447.P969936526069164943

`A004396(xor(A002265(n), A124468(n)))`
-/

namespace A361447.P969936526069164943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.xor (A002265 n) (A124468 n)).toNat

end

end A361447.P969936526069164943

/-! ## A361447.P5344360375336314187

`A004396(xor(A111852(n+1), A124468(n)))`
-/

namespace A361447.P5344360375336314187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.xor (A111852 (n + 1)) (A124468 n)).toNat

end

end A361447.P5344360375336314187

/-!
# A361448: Number of connected 3-regular multigraphs on 2n unlabeled nodes rooted at an oriented edge (or loop) whose removal does not disconnect the graph, loops allowed.

The programs for A361448, there is no canonical definition to state claims against.
-/

/-! ## A361448.P9010584291574429964

`A374568(n+1)+A329343(A374548(2*n))`
-/

namespace A361448.P9010584291574429964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374568 (n + 1) + A329343 (A374548 (2 * n)).toNat

end

end A361448.P9010584291574429964

/-!
# A361454: Number of 4-regular multigraphs on n unlabeled nodes with 4 external legs, loops allowed.

The programs for A361454, there is no canonical definition to state claims against.
-/

/-! ## A361454.P16256516097767256735

`A004526(A316367(n)+A001970(2*n+1))`
-/

namespace A361454.P16256516097767256735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316367 n + A001970 (2 * n + 1)).toNat

end

end A361454.P16256516097767256735

/-!
# A361455: Triangle read by rows: T(n,k) is the number of simple digraphs on labeled n nodes with k strongly connected components.

The programs for A361455, there is no canonical definition to state claims against.
-/

/-! ## A361455.P17899636623125995556

`A361269(n)/A137688(n)`
-/

namespace A361455.P17899636623125995556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361269 n : ℚ) / (A137688 n : ℚ)

end

end A361455.P17899636623125995556

/-!
# A361457: Numbers k such that the first player has a winning strategy in the game described in the Comments.

The programs for A361457, there is no canonical definition to state claims against.
-/

/-! ## A361457.P10930269619566889526

`lt[A329224(n+1), A206073(A006519(n+1))]`
-/

namespace A361457.P10930269619566889526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206073 (A006519 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361457.P10930269619566889526

/-! ## A361457.P8918017839899831762

`A209061(n+1)+A135664(A390677(3*n+4))`
-/

namespace A361457.P8918017839899831762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1) + A135664 (A390677 (3 * n + 4)).toNat

end

end A361457.P8918017839899831762

/-! ## A361457.P16901640182062596212

`lt[A175003(2*(n+2)), A228900(A105357(n+1))]`
-/

namespace A361457.P16901640182062596212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175003 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228900 (A105357 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361457.P16901640182062596212

/-! ## A361457.P15423429692945547182

`A008615(A315395(n)+A196088(3*n+5))`
-/

namespace A361457.P15423429692945547182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A315395 n + A196088 (3 * n + 5)).toNat

end

end A361457.P15423429692945547182

/-! ## A361457.P18300429731973978571

`eq[A000122(A138771(n+1)), A243829(n)]`
-/

namespace A361457.P18300429731973978571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A138771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361457.P18300429731973978571

/-!
# A361458: Size of the symmetric difference of {1,2,3}, {2,4,6}, ..., {n,2n,3n}.

The programs for A361458, the canonical program `A361458.P16228617510367498706` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361458 has offset 1).

The definition of A361458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361458.P12620059625745568409

`or(2, comp[or(6, n)])+1`
-/

namespace A361458.P12620059625745568409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A361458.P12620059625745568409

namespace A361458

/-- `or(2, comp[or(6, n)])+1` -/
def P12620059625745568409.Spec : Prop :=
  ∀ n, (P12620059625745568409.a n : ℤ) = A361458 (n + 1)

end A361458

/-! ## A361458.P16228617510367498706

`∑[A132951(∑[A130151(n)])]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361458

/-- `∑[A132951(∑[A130151(n)])]` -/
def P16228617510367498706.Spec : Prop :=
  ∀ n, P16228617510367498706.a n = A361458 (n + 1)

theorem P16228617510367498706.correct : P16228617510367498706.Spec := by
  intro n
  simp only [A361458, Nat.add_sub_cancel]

end A361458

/-! ## A361458.P8125894845357522838

`∑[A357892(A020639(5*(n+1)))]`
-/

namespace A361458.P8125894845357522838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357892 (A020639 (5 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361458.P8125894845357522838

namespace A361458

/-- `∑[A357892(A020639(5*(n+1)))]` -/
def P8125894845357522838.Spec : Prop :=
  ∀ n, P8125894845357522838.a n = A361458 (n + 1)

end A361458

/-! ## A361458.P2257256184481751668

`A063942(A047452(n+2))`
-/

namespace A361458.P2257256184481751668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A047452 (n + 2)).toNat

end

end A361458.P2257256184481751668

namespace A361458

/-- `A063942(A047452(n+2))` -/
def P2257256184481751668.Spec : Prop :=
  ∀ n, P2257256184481751668.a n = A361458 (n + 1)

end A361458

/-! ## A361458.P5954703395491104697

`∑[A084099(A269863(n+1))+1]`
-/

namespace A361458.P5954703395491104697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A269863 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361458.P5954703395491104697

namespace A361458

/-- `∑[A084099(A269863(n+1))+1]` -/
def P5954703395491104697.Spec : Prop :=
  ∀ n, P5954703395491104697.a n = A361458 (n + 1)

end A361458

/-! ## A361458.P10003103246876783684

`∑[A132951(∑[A109613(n)])]`
-/

namespace A361458.P10003103246876783684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361458.P10003103246876783684

namespace A361458

/-- `∑[A132951(∑[A109613(n)])]` -/
def P10003103246876783684.Spec : Prop :=
  ∀ n, P10003103246876783684.a n = A361458 (n + 1)

end A361458

/-!
# A361459: Number of partitions p of n such that 5*min(p) is a part of p.

The programs for A361459, there is no canonical definition to state claims against.
-/

/-! ## A361459.P258680495287846383

`A238591(n+1)-A097093(n+1)`
-/

namespace A361459.P258680495287846383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 1) - A097093 (n + 1)

end

end A361459.P258680495287846383

/-! ## A361459.P6047154968654927871

`A238591(n+1)-(A238591(n+6)-A000041(n+1))`
-/

namespace A361459.P6047154968654927871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 1) - (A238591 (n + 6) - A000041 (n + 1))

end

end A361459.P6047154968654927871

/-! ## A361459.P8064716385187692235

`A024792(n+3)+A007949(A294579(3*n+1))`
-/

namespace A361459.P8064716385187692235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (n + 3) + A007949 (A294579 (3 * n + 1)).toNat

end

end A361459.P8064716385187692235

/-!
# A361460: a(n) = 1 if A135504(n+1) = 2 * A135504(n), otherwise 0.

The programs for A361460, the canonical program `A361460.P12226711080690228128` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361460 has offset 1).

The definition of A361460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361460.P836759249183417574

`round(acot(A135506(n+1)))`
-/

namespace A361460.P836759249183417574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A135506 (n + 1) : ℝ))

end

end A361460.P836759249183417574

namespace A361460

/-- `round(acot(A135506(n+1)))` -/
def P836759249183417574.Spec : Prop :=
  ∀ n, P836759249183417574.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P11815388057451770461

`val(A361470(n+1), n+2)`
-/

namespace A361460.P11815388057451770461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361470 (n + 1)).toNat (n + 2)

end

end A361460.P11815388057451770461

namespace A361460

/-- `val(A361470(n+1), n+2)` -/
def P11815388057451770461.Spec : Prop :=
  ∀ n, (P11815388057451770461.a n : ℤ) = A361460 (n + 1)

end A361460

/-! ## A361460.P4811217818218900790

`A004530(A135506(n+1))`
-/

namespace A361460.P4811217818218900790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A135506 (n + 1)).toNat

end

end A361460.P4811217818218900790

namespace A361460

/-- `A004530(A135506(n+1))` -/
def P4811217818218900790.Spec : Prop :=
  ∀ n, P4811217818218900790.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P12226711080690228128

`A000007(A135506(n+1)-1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361460

/-- `A000007(A135506(n+1)-1)` -/
def P12226711080690228128.Spec : Prop :=
  ∀ n, P12226711080690228128.a n = A361460 (n + 1)

theorem P12226711080690228128.correct : P12226711080690228128.Spec := by
  intro n
  simp only [A361460, Nat.add_sub_cancel]

end A361460

/-! ## A361460.P1745713284695756960

`A135461(A135506(n+1)+3)`
-/

namespace A361460.P1745713284695756960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A135506 (n + 1) + 3).toNat

end

end A361460.P1745713284695756960

namespace A361460

/-- `A135461(A135506(n+1)+3)` -/
def P1745713284695756960.Spec : Prop :=
  ∀ n, P1745713284695756960.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P7698387136340442337

`A358750(6*A135506(n+1))`
-/

namespace A361460.P7698387136340442337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (6 * A135506 (n + 1)).toNat

end

end A361460.P7698387136340442337

namespace A361460

/-- `A358750(6*A135506(n+1))` -/
def P7698387136340442337.Spec : Prop :=
  ∀ n, P7698387136340442337.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P3523972006154178519

`A135501(C(2, A135506(n+1)))`
-/

namespace A361460.P3523972006154178519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135501 (Nat.choose 2 (A135506 (n + 1)).toNat)

end

end A361460.P3523972006154178519

namespace A361460

/-- `A135501(C(2, A135506(n+1)))` -/
def P3523972006154178519.Spec : Prop :=
  ∀ n, P3523972006154178519.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P5421875321535477140

`A135523(or(1, A135506(n+1)))`
-/

namespace A361460.P5421875321535477140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (Int.lor 1 (A135506 (n + 1))).toNat

end

end A361460.P5421875321535477140

namespace A361460

/-- `A135523(or(1, A135506(n+1)))` -/
def P5421875321535477140.Spec : Prop :=
  ∀ n, P5421875321535477140.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P2000313048392416741

`A135534(or(1, A135506(n+1)))`
-/

namespace A361460.P2000313048392416741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (Int.lor 1 (A135506 (n + 1))).toNat

end

end A361460.P2000313048392416741

namespace A361460

/-- `A135534(or(1, A135506(n+1)))` -/
def P2000313048392416741.Spec : Prop :=
  ∀ n, P2000313048392416741.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P4222959134238105074

`A354097(or(1, A135506(n+1)))`
-/

namespace A361460.P4222959134238105074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (Int.lor 1 (A135506 (n + 1))).toNat

end

end A361460.P4222959134238105074

namespace A361460

/-- `A354097(or(1, A135506(n+1)))` -/
def P4222959134238105074.Spec : Prop :=
  ∀ n, P4222959134238105074.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P18130362703524582403

`∑{d}[A135506(n+1), A008683(#)]`
-/

namespace A361460.P18130362703524582403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A361460.P18130362703524582403

namespace A361460

/-- `∑{d}[A135506(n+1), A008683(#)]` -/
def P18130362703524582403.Spec : Prop :=
  ∀ n, P18130362703524582403.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P13880808037729053631

`∏{e}[A135506(n+1), A001221(#)]`
-/

namespace A361460.P13880808037729053631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A361460.P13880808037729053631

namespace A361460

/-- `∏{e}[A135506(n+1), A001221(#)]` -/
def P13880808037729053631.Spec : Prop :=
  ∀ n, P13880808037729053631.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P13582967007147139865

`∏{e}[A135506(n+1), A001222(#)]`
-/

namespace A361460.P13582967007147139865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A361460.P13582967007147139865

namespace A361460

/-- `∏{e}[A135506(n+1), A001222(#)]` -/
def P13582967007147139865.Spec : Prop :=
  ∀ n, P13582967007147139865.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P7707302232152746422

`A000045(C(2, A135506(n+1)²))`
-/

namespace A361460.P7707302232152746422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A135506 (n + 1) ^ 2).toNat)

end

end A361460.P7707302232152746422

namespace A361460

/-- `A000045(C(2, A135506(n+1)²))` -/
def P7707302232152746422.Spec : Prop :=
  ∀ n, P7707302232152746422.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P16505235313309169109

`A135506(n+1)%A081812(n+2)`
-/

namespace A361460.P16505235313309169109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135506 (n + 1)) (A081812 (n + 2))

end

end A361460.P16505235313309169109

namespace A361460

/-- `A135506(n+1)%A081812(n+2)` -/
def P16505235313309169109.Spec : Prop :=
  ∀ n, P16505235313309169109.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P5379307271416570574

`gcd(2, A089026(A135506(n+1)+1))-1`
-/

namespace A361460.P5379307271416570574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A089026 (A135506 (n + 1) + 1).toNat) : ℤ) - 1

end

end A361460.P5379307271416570574

namespace A361460

/-- `gcd(2, A089026(A135506(n+1)+1))-1` -/
def P5379307271416570574.Spec : Prop :=
  ∀ n, P5379307271416570574.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P7267878308674978697

`A082650(A135506(A135506(n+1))²)`
-/

namespace A361460.P7267878308674978697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 (A135506 (A135506 (n + 1)).toNat ^ 2).toNat

end

end A361460.P7267878308674978697

namespace A361460

/-- `A082650(A135506(A135506(n+1))²)` -/
def P7267878308674978697.Spec : Prop :=
  ∀ n, P7267878308674978697.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P9356670192025115356

`A135478(n)%A135506(A135506(n+1))`
-/

namespace A361460.P9356670192025115356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135478 n) (A135506 (A135506 (n + 1)).toNat)

end

end A361460.P9356670192025115356

namespace A361460

/-- `A135478(n)%A135506(A135506(n+1))` -/
def P9356670192025115356.Spec : Prop :=
  ∀ n, P9356670192025115356.a n = A361460 (n + 1)

end A361460

/-! ## A361460.P15569817664945507545

`val(A000040(n+1), A000040(n+1)*A135506(n+1))`
-/

namespace A361460.P15569817664945507545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat (A000040 (n + 1) * A135506 (n + 1)).toNat

end

end A361460.P15569817664945507545

namespace A361460

/-- `val(A000040(n+1), A000040(n+1)*A135506(n+1))` -/
def P15569817664945507545.Spec : Prop :=
  ∀ n, (P15569817664945507545.a n : ℤ) = A361460 (n + 1)

end A361460

/-! ## A361460.P12747551507233491769

`A135481(2*(n+1))^A001222(A135506(n+1))`
-/

namespace A361460.P12747551507233491769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135481 (2 * (n + 1)) : ℚ) ^ (A001222 (A135506 (n + 1)).toNat : ℤ)

end

end A361460.P12747551507233491769

namespace A361460

/-- `A135481(2*(n+1))^A001222(A135506(n+1))` -/
def P12747551507233491769.Spec : Prop :=
  ∀ n, P12747551507233491769.a n = (A361460 (n + 1) : ℚ)

end A361460

/-!
# A361461: Numbers k such that x(k+1) = 2 * x(k), when x(1)=1 and x(n) = x(n-1) + lcm(x(n-1),n), i.e., x(n) = A135504(n).

The programs for A361461, the canonical program `A361461.P11308028786561172249` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361461 has offset 1).

The definition of A361461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361461.P11308028786561172249

`eq[1, A135506(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361461

/-- `eq[1, A135506(n+1)]+1` -/
def P11308028786561172249.Spec : Prop :=
  ∀ n, (P11308028786561172249.a n : ℤ) = A361461 (n + 1)

theorem P11308028786561172249.correct : P11308028786561172249.Spec := by
  intro n
  simp only [A361461, Nat.add_sub_cancel]

end A361461

/-! ## A361461.P12215511294828351749

`lt[0, A361460(n+1)]+1`
-/

namespace A361461.P12215511294828351749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361461.P12215511294828351749

namespace A361461

/-- `lt[0, A361460(n+1)]+1` -/
def P12215511294828351749.Spec : Prop :=
  ∀ n, (P12215511294828351749.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P8618538756769066252

`record[(n+2)*A361460(n+2)]`
-/

namespace A361461.P8618538756769066252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A361460 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361461.P8618538756769066252

namespace A361461

/-- `record[(n+2)*A361460(n+2)]` -/
def P8618538756769066252.Spec : Prop :=
  ∀ n, P8618538756769066252.a n = A361461 (n + 1)

end A361461

/-! ## A361461.P8119171550774328743

`eq[1, A135506(lcm(n, a(n-1)))]` with `a(0)=3`
-/

namespace A361461.P8119171550774328743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A135506 (Int.lcm (n : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361461.P8119171550774328743

namespace A361461

/-- `eq[1, A135506(lcm(n, a(n-1)))]` -/
def P8119171550774328743.Spec : Prop :=
  ∀ n, (P8119171550774328743.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P4149618499251360334

`eq[A361460(n+1), A361462(n+1)]+1`
-/

namespace A361461.P4149618499251360334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A361461.P4149618499251360334

namespace A361461

/-- `eq[A361460(n+1), A361462(n+1)]+1` -/
def P4149618499251360334.Spec : Prop :=
  ∀ n, (P4149618499251360334.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P9055296634216893966

`filter[n+1, A361460(#)]`
-/

namespace A361461.P9055296634216893966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361460 (f1 j) = 1) n)

end

end A361461.P9055296634216893966

namespace A361461

/-- `filter[n+1, A361460(#)]` -/
def P9055296634216893966.Spec : Prop :=
  ∀ n, (P9055296634216893966.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P6750379271317434450

`record[A361470(n+2)-1]`
-/

namespace A361461.P6750379271317434450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361470 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361461.P6750379271317434450

namespace A361461

/-- `record[A361470(n+2)-1]` -/
def P6750379271317434450.Spec : Prop :=
  ∀ n, P6750379271317434450.a n = A361461 (n + 1)

end A361461

/-! ## A361461.P7129508971144103161

`lt[n+1, A361470(n+1)]+1`
-/

namespace A361461.P7129508971144103161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361461.P7129508971144103161

namespace A361461

/-- `lt[n+1, A361470(n+1)]+1` -/
def P7129508971144103161.Spec : Prop :=
  ∀ n, (P7129508971144103161.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P6208433901146599816

`lt[A135506(A028310(n)), 2]`
-/

namespace A361461.P6208433901146599816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A361461.P6208433901146599816

namespace A361461

/-- `lt[A135506(A028310(n)), 2]` -/
def P6208433901146599816.Spec : Prop :=
  ∀ n, (P6208433901146599816.a n : ℤ) = A361461 (n + 1)

end A361461

/-! ## A361461.P9489663669344001777

`eq[1, A135506(A065033(2*n))]`
-/

namespace A361461.P9489663669344001777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361461.P9489663669344001777

namespace A361461

/-- `eq[1, A135506(A065033(2*n))]` -/
def P9489663669344001777.Spec : Prop :=
  ∀ n, (P9489663669344001777.a n : ℤ) = A361461 (n + 1)

end A361461

/-!
# A361462: a(n) = A135506(n) mod 4.

The programs for A361462, the canonical program `A361462.P2236218584101490089` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361462 has offset 1).

The definition of A361462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135506, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361462.P2236218584101490089

`A135506(n+1)%4`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361462

/-- `A135506(n+1)%4` -/
def P2236218584101490089.Spec : Prop :=
  ∀ n, P2236218584101490089.a n = A361462 (n + 1)

theorem P2236218584101490089.correct : P2236218584101490089.Spec := by
  intro n
  simp only [A361462, Nat.add_sub_cancel]

end A361462

/-! ## A361462.P2463369981240925404

`A010873(A135506(n+1))`
-/

namespace A361462.P2463369981240925404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A135506 (n + 1)).toNat

end

end A361462.P2463369981240925404

namespace A361462

/-- `A010873(A135506(n+1))` -/
def P2463369981240925404.Spec : Prop :=
  ∀ n, P2463369981240925404.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P12594697324387310865

`A010873((n+2)/A361470(n+1))`
-/

namespace A361462.P12594697324387310865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A361470 (n + 1) : ℚ))).toNat

end

end A361462.P12594697324387310865

namespace A361462

/-- `A010873((n+2)/A361470(n+1))` -/
def P12594697324387310865.Spec : Prop :=
  ∀ n, P12594697324387310865.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P913224847334994937

`and(A135506(n+1), A157532(n+1))`
-/

namespace A361462.P913224847334994937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A157532 (n + 1))

end

end A361462.P913224847334994937

namespace A361462

/-- `and(A135506(n+1), A157532(n+1))` -/
def P913224847334994937.Spec : Prop :=
  ∀ n, P913224847334994937.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P706706789323016910

`and(A053444(A053444(n+1)²), A135506(n+1))`
-/

namespace A361462.P706706789323016910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053444 (A053444 (n + 1) ^ 2).toNat) (A135506 (n + 1))

end

end A361462.P706706789323016910

namespace A361462

/-- `and(A053444(A053444(n+1)²), A135506(n+1))` -/
def P706706789323016910.Spec : Prop :=
  ∀ n, P706706789323016910.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P724990577762735688

`and(A135506(n+1), A164285(n))`
-/

namespace A361462.P724990577762735688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A164285 n)

end

end A361462.P724990577762735688

namespace A361462

/-- `and(A135506(n+1), A164285(n))` -/
def P724990577762735688.Spec : Prop :=
  ∀ n, P724990577762735688.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P8141415017176712772

`and(A135506(n+1), A318207(n))`
-/

namespace A361462.P8141415017176712772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A318207 n)

end

end A361462.P8141415017176712772

namespace A361462

/-- `and(A135506(n+1), A318207(n))` -/
def P8141415017176712772.Spec : Prop :=
  ∀ n, P8141415017176712772.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P9302579480440340371

`and(A135506(n+1), A347512(n+1))`
-/

namespace A361462.P9302579480440340371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A347512 (n + 1))

end

end A361462.P9302579480440340371

namespace A361462

/-- `and(A135506(n+1), A347512(n+1))` -/
def P9302579480440340371.Spec : Prop :=
  ∀ n, P9302579480440340371.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P16953966643124499845

`and(A135506(n+1), A239679(n))`
-/

namespace A361462.P16953966643124499845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A239679 n)

end

end A361462.P16953966643124499845

namespace A361462

/-- `and(A135506(n+1), A239679(n))` -/
def P16953966643124499845.Spec : Prop :=
  ∀ n, P16953966643124499845.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P15208828354528938138

`and(A135506(n+1), A191341(n+1))`
-/

namespace A361462.P15208828354528938138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135506 (n + 1)) (A191341 (n + 1))

end

end A361462.P15208828354528938138

namespace A361462

/-- `and(A135506(n+1), A191341(n+1))` -/
def P15208828354528938138.Spec : Prop :=
  ∀ n, P15208828354528938138.a n = A361462 (n + 1)

end A361462

/-! ## A361462.P10888438760714749586

`and(A127509(n+1), A135506(n+1))`
-/

namespace A361462.P10888438760714749586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127509 (n + 1)) (A135506 (n + 1))

end

end A361462.P10888438760714749586

namespace A361462

/-- `and(A127509(n+1), A135506(n+1))` -/
def P10888438760714749586.Spec : Prop :=
  ∀ n, P10888438760714749586.a n = A361462 (n + 1)

end A361462

/-!
# A361463: a(n) = 1 if A135506(n) == 3 (mod 4), otherwise 0.

The programs for A361463, the canonical program `A361463.P2469529019636673647` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361463 has offset 1).

The definition of A361463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361463.P2469529019636673647

`4%A361462(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361463

/-- `4%A361462(n+1)` -/
def P2469529019636673647.Spec : Prop :=
  ∀ n, P2469529019636673647.a n = A361463 (n + 1)

theorem P2469529019636673647.correct : P2469529019636673647.Spec := by
  intro n
  simp only [A361463, Nat.add_sub_cancel]

end A361463

/-! ## A361463.P17294128084004580894

`val(A135506(n+1)%4, 3)`
-/

namespace A361463.P17294128084004580894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A135506 (n + 1)) 4).toNat 3

end

end A361463.P17294128084004580894

namespace A361463

/-- `val(A135506(n+1)%4, 3)` -/
def P17294128084004580894.Spec : Prop :=
  ∀ n, (P17294128084004580894.a n : ℤ) = A361463 (n + 1)

end A361463

/-! ## A361463.P14135443011543986248

`A001842(A135506(n+1))`
-/

namespace A361463.P14135443011543986248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A135506 (n + 1)).toNat

end

end A361463.P14135443011543986248

namespace A361463

/-- `A001842(A135506(n+1))` -/
def P14135443011543986248.Spec : Prop :=
  ∀ n, P14135443011543986248.a n = A361463 (n + 1)

end A361463

/-! ## A361463.P139094865302723160

`A133872(A135506(n+1)+1)`
-/

namespace A361463.P139094865302723160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A135506 (n + 1) + 1).toNat

end

end A361463.P139094865302723160

namespace A361463

/-- `A133872(A135506(n+1)+1)` -/
def P139094865302723160.Spec : Prop :=
  ∀ n, P139094865302723160.a n = A361463 (n + 1)

end A361463

/-! ## A361463.P4219620507619497708

`A354097(2*A135506(n+1))`
-/

namespace A361463.P4219620507619497708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (2 * A135506 (n + 1)).toNat

end

end A361463.P4219620507619497708

namespace A361463

/-- `A354097(2*A135506(n+1))` -/
def P4219620507619497708.Spec : Prop :=
  ∀ n, P4219620507619497708.a n = A361463 (n + 1)

end A361463

/-! ## A361463.P16179560774900022576

`floor(A361462(A181440(n+1))/3)`
-/

namespace A361463.P16179560774900022576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361462 (A181440 (n + 1)).toNat : ℚ) / 3⌋

end

end A361463.P16179560774900022576

namespace A361463

/-- `floor(A361462(A181440(n+1))/3)` -/
def P16179560774900022576.Spec : Prop :=
  ∀ n, P16179560774900022576.a n = A361463 (n + 1)

end A361463

/-!
# A361464: Numbers k such that A135504(k+1) / A135504(k) is a multiple of 4.

The programs for A361464, the canonical program `A361464.P557628188156379608` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361464 has offset 1).

The definition of A361464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361464.P557628188156379608

`lt[0, A361463(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361464

/-- `lt[0, A361463(n+1)]+1` -/
def P557628188156379608.Spec : Prop :=
  ∀ n, (P557628188156379608.a n : ℤ) = A361464 (n + 1)

theorem P557628188156379608.correct : P557628188156379608.Spec := by
  intro n
  simp only [A361464, Nat.add_sub_cancel]

end A361464

/-! ## A361464.P6976918133996998928

`lt[2, A361462(n+1)]+1`
-/

namespace A361464.P6976918133996998928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361464.P6976918133996998928

namespace A361464

/-- `lt[2, A361462(n+1)]+1` -/
def P6976918133996998928.Spec : Prop :=
  ∀ n, (P6976918133996998928.a n : ℤ) = A361464 (n + 1)

end A361464

/-! ## A361464.P9184881217690744408

`eq[3, A135506(n+1)%4]+1`
-/

namespace A361464.P9184881217690744408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135506 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361464.P9184881217690744408

namespace A361464

/-- `eq[3, A135506(n+1)%4]+1` -/
def P9184881217690744408.Spec : Prop :=
  ∀ n, (P9184881217690744408.a n : ℤ) = A361464 (n + 1)

end A361464

/-! ## A361464.P17998920315946142655

`eq[1, val(A361462(A000027(n+1)), 3)]+1`
-/

namespace A361464.P17998920315946142655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361462 (A000027 (n + 1)).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A361464.P17998920315946142655

namespace A361464

/-- `eq[1, val(A361462(A000027(n+1)), 3)]+1` -/
def P17998920315946142655.Spec : Prop :=
  ∀ n, (P17998920315946142655.a n : ℤ) = A361464 (n + 1)

end A361464

/-! ## A361464.P15322179226794746924

`filter[A089229(n+1), A361463(#)]`
-/

namespace A361464.P15322179226794746924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P15322179226794746924

namespace A361464

/-- `filter[A089229(n+1), A361463(#)]` -/
def P15322179226794746924.Spec : Prop :=
  ∀ n, P15322179226794746924.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P2112553090873115128

`filter[A139118(n+1), A361463(#)]`
-/

namespace A361464.P2112553090873115128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P2112553090873115128

namespace A361464

/-- `filter[A139118(n+1), A361463(#)]` -/
def P2112553090873115128.Spec : Prop :=
  ∀ n, P2112553090873115128.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P1534514779823493960

`filter[A080257(n+1), A361463(#)]`
-/

namespace A361464.P1534514779823493960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P1534514779823493960

namespace A361464

/-- `filter[A080257(n+1), A361463(#)]` -/
def P1534514779823493960.Spec : Prop :=
  ∀ n, P1534514779823493960.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P11445896999797470661

`filter[A002808(n+1), A361463(#)]`
-/

namespace A361464.P11445896999797470661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P11445896999797470661

namespace A361464

/-- `filter[A002808(n+1), A361463(#)]` -/
def P11445896999797470661.Spec : Prop :=
  ∀ n, P11445896999797470661.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P15291159016563602812

`filter[A018252(n+1), A361463(#)]`
-/

namespace A361464.P15291159016563602812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P15291159016563602812

namespace A361464

/-- `filter[A018252(n+1), A361463(#)]` -/
def P15291159016563602812.Spec : Prop :=
  ∀ n, P15291159016563602812.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P1332079892978650116

`filter[A056653(n+1), A361463(#)]`
-/

namespace A361464.P1332079892978650116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P1332079892978650116

namespace A361464

/-- `filter[A056653(n+1), A361463(#)]` -/
def P1332079892978650116.Spec : Prop :=
  ∀ n, P1332079892978650116.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P5672325129783262187

`filter[A062973(n+1), A361463(#)]`
-/

namespace A361464.P5672325129783262187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P5672325129783262187

namespace A361464

/-- `filter[A062973(n+1), A361463(#)]` -/
def P5672325129783262187.Spec : Prop :=
  ∀ n, P5672325129783262187.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P6705198381900284293

`filter[A065090(n+1), A361463(#)]`
-/

namespace A361464.P6705198381900284293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P6705198381900284293

namespace A361464

/-- `filter[A065090(n+1), A361463(#)]` -/
def P6705198381900284293.Spec : Prop :=
  ∀ n, P6705198381900284293.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P18381330765259204883

`filter[A171581(n+1), A361463(#)]`
-/

namespace A361464.P18381330765259204883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P18381330765259204883

namespace A361464

/-- `filter[A171581(n+1), A361463(#)]` -/
def P18381330765259204883.Spec : Prop :=
  ∀ n, P18381330765259204883.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P8126303368534458252

`filter[A176423(n+1), A361463(#)]`
-/

namespace A361464.P8126303368534458252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P8126303368534458252

namespace A361464

/-- `filter[A176423(n+1), A361463(#)]` -/
def P8126303368534458252.Spec : Prop :=
  ∀ n, P8126303368534458252.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P6809899218497556753

`filter[A141468(n+2), A361463(#)]`
-/

namespace A361464.P6809899218497556753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P6809899218497556753

namespace A361464

/-- `filter[A141468(n+2), A361463(#)]` -/
def P6809899218497556753.Spec : Prop :=
  ∀ n, P6809899218497556753.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P15301275482046059117

`filter[A073884(n+1), A361463(#)]`
-/

namespace A361464.P15301275482046059117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P15301275482046059117

namespace A361464

/-- `filter[A073884(n+1), A361463(#)]` -/
def P15301275482046059117.Spec : Prop :=
  ∀ n, P15301275482046059117.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P7074045492480431869

`filter[A089088(n), A361463(#)]`
-/

namespace A361464.P7074045492480431869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P7074045492480431869

namespace A361464

/-- `filter[A089088(n), A361463(#)]` -/
def P7074045492480431869.Spec : Prop :=
  ∀ n, P7074045492480431869.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P13202096915773095837

`filter[A007401(n+1), A361463(#)]`
-/

namespace A361464.P13202096915773095837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P13202096915773095837

namespace A361464

/-- `filter[A007401(n+1), A361463(#)]` -/
def P13202096915773095837.Spec : Prop :=
  ∀ n, P13202096915773095837.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P15347158746474146387

`filter[A047839(n+1), A361463(#)]`
-/

namespace A361464.P15347158746474146387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P15347158746474146387

namespace A361464

/-- `filter[A047839(n+1), A361463(#)]` -/
def P15347158746474146387.Spec : Prop :=
  ∀ n, P15347158746474146387.a n = A361464 (n + 1)

end A361464

/-! ## A361464.P4167136341006974502

`filter[A000037(n+1), A361463(#)]`
-/

namespace A361464.P4167136341006974502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361463 (f1 j).toNat = 1) n)

end

end A361464.P4167136341006974502

namespace A361464

/-- `filter[A000037(n+1), A361463(#)]` -/
def P4167136341006974502.Spec : Prop :=
  ∀ n, P4167136341006974502.a n = A361464 (n + 1)

end A361464

/-!
# A361465: a(n) = 1 if A017665(n) [the numerator of the sum of the reciprocals of the divisors of n] is a power of 2, otherwise 0.

The programs for A361465, the canonical program `A361465.P9074267151544804796` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361465 has offset 1).

The definition of A361465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361465.P9074267151544804796

`A209229(A017665(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361465

/-- `A209229(A017665(n+1))` -/
def P9074267151544804796.Spec : Prop :=
  ∀ n, P9074267151544804796.a n = A361465 (n + 1)

theorem P9074267151544804796.correct : P9074267151544804796.Spec := by
  intro n
  simp only [A361465, Nat.add_sub_cancel]

end A361465

/-! ## A361465.P10138900347071940638

`char[A043305(n+1)-1]`
-/

namespace A361465.P10138900347071940638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361465.P10138900347071940638

namespace A361465

/-- `char[A043305(n+1)-1]` -/
def P10138900347071940638.Spec : Prop :=
  ∀ n, (P10138900347071940638.a n : ℤ) = A361465 (n + 1)

end A361465

/-! ## A361465.P10687241711178200844

`A036987(A017665(n+1)-1)`
-/

namespace A361465.P10687241711178200844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A017665 (n + 1) - 1).toNat

end

end A361465.P10687241711178200844

namespace A361465

/-- `A036987(A017665(n+1)-1)` -/
def P10687241711178200844.Spec : Prop :=
  ∀ n, P10687241711178200844.a n = A361465 (n + 1)

end A361465

/-! ## A361465.P9408411189018280346

`C(A355931(n+1), A161942(n+1))`
-/

namespace A361465.P9408411189018280346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355931 (n + 1)).toNat (A161942 (n + 1)).toNat

end

end A361465.P9408411189018280346

namespace A361465

/-- `C(A355931(n+1), A161942(n+1))` -/
def P9408411189018280346.Spec : Prop :=
  ∀ n, (P9408411189018280346.a n : ℤ) = A361465 (n + 1)

end A361465

/-! ## A361465.P18120869947496005237

`C(A356307(n+1), A161942(n+1))`
-/

namespace A361465.P18120869947496005237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356307 (n + 1)).toNat (A161942 (n + 1)).toNat

end

end A361465.P18120869947496005237

namespace A361465

/-- `C(A356307(n+1), A161942(n+1))` -/
def P18120869947496005237.Spec : Prop :=
  ∀ n, (P18120869947496005237.a n : ℤ) = A361465 (n + 1)

end A361465

/-! ## A361465.P13107815416756908266

`A000007(((n+1)/2^val(n+1, 2))%A161942(n+1))`
-/

namespace A361465.P13107815416756908266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A161942 (n + 1))).toNat

end

end A361465.P13107815416756908266

namespace A361465

/-- `A000007(((n+1)/2^val(n+1, 2))%A161942(n+1))` -/
def P13107815416756908266.Spec : Prop :=
  ∀ n, P13107815416756908266.a n = A361465 (n + 1)

end A361465

/-! ## A361465.P10932872068051812505

`A000007(((n+1)/ceil(xor(n, n+1)/4))%A161942(n+1))`
-/

namespace A361465.P10932872068051812505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))) (A161942 (n + 1))).toNat

end

end A361465.P10932872068051812505

namespace A361465

/-- `A000007(((n+1)/ceil(xor(n, n+1)/4))%A161942(n+1))` -/
def P10932872068051812505.Spec : Prop :=
  ∀ n, P10932872068051812505.a n = A361465 (n + 1)

end A361465

/-! ## A361465.P6022376225361978873

`C(A000265(A009194(n+1)), A161942(n+1))`
-/

namespace A361465.P6022376225361978873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (A009194 (n + 1)).toNat).toNat (A161942 (n + 1)).toNat

end

end A361465.P6022376225361978873

namespace A361465

/-- `C(A000265(A009194(n+1)), A161942(n+1))` -/
def P6022376225361978873.Spec : Prop :=
  ∀ n, (P6022376225361978873.a n : ℤ) = A361465 (n + 1)

end A361465

/-! ## A361465.P15079983924661168531

`A007814(2*n+5)^A080940(A017665(n+1))`
-/

namespace A361465.P15079983924661168531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (2 * n + 5) : ℚ) ^ (A080940 (A017665 (n + 1)).toNat : ℤ)

end

end A361465.P15079983924661168531

namespace A361465

/-- `A007814(2*n+5)^A080940(A017665(n+1))` -/
def P15079983924661168531.Spec : Prop :=
  ∀ n, P15079983924661168531.a n = (A361465 (n + 1) : ℚ)

end A361465

/-! ## A361465.P9037516357526600540

`and(1, A048250(A000203(n+1)/A009194(n+1)))`
-/

namespace A361465.P9037516357526600540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048250 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))).toNat)

end

end A361465.P9037516357526600540

namespace A361465

/-- `and(1, A048250(A000203(n+1)/A009194(n+1)))` -/
def P9037516357526600540.Spec : Prop :=
  ∀ n, P9037516357526600540.a n = A361465 (n + 1)

end A361465

/-! ## A361465.P10814830730551843815

`A034448(A000203(2*n+1-n)/gcd(n+1, A000203(n+1)))%2`
-/

namespace A361465.P10814830730551843815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (SequenceMachineLib.roundAway ((A000203 (2 * n + 1 - n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ))).toNat) 2

end

end A361465.P10814830730551843815

namespace A361465

/-- `A034448(A000203(2*n+1-n)/gcd(n+1, A000203(n+1)))%2` -/
def P10814830730551843815.Spec : Prop :=
  ∀ n, P10814830730551843815.a n = A361465 (n + 1)

end A361465

/-!
# A361466: a(n) = 1 if A017665(A003961(n)) is a power of 2, otherwise 0. Here A017665 is the numerator of the sum of the reciprocals of the divisors of n, and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A361466, the canonical program `A361466.P13131724063174196272` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361466 has offset 1).

The definition of A361466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361466.P13131724063174196272

`A209229(A341525(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A361466

/-- `A209229(A341525(n+1))` -/
def P13131724063174196272.Spec : Prop :=
  ∀ n, P13131724063174196272.a n = A361466 (n + 1)

theorem P13131724063174196272.correct : P13131724063174196272.Spec := by
  intro n
  simp only [A361466, Nat.add_sub_cancel]

end A361466

/-! ## A361466.P4735981155601985776

`floor(1/A348942(n+1))`
-/

namespace A361466.P4735981155601985776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A348942 (n + 1) : ℚ)⌋

end

end A361466.P4735981155601985776

namespace A361466

/-- `floor(1/A348942(n+1))` -/
def P4735981155601985776.Spec : Prop :=
  ∀ n, P4735981155601985776.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P3060189685531374892

`A000212(C(2, A348942(n+1)))`
-/

namespace A361466.P3060189685531374892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.choose 2 (A348942 (n + 1)).toNat)

end

end A361466.P3060189685531374892

namespace A361466

/-- `A000212(C(2, A348942(n+1)))` -/
def P3060189685531374892.Spec : Prop :=
  ∀ n, P3060189685531374892.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P12519021378607755965

`A000120(C(2, A348942(n+1)²))`
-/

namespace A361466.P12519021378607755965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A348942 (n + 1) ^ 2).toNat)

end

end A361466.P12519021378607755965

namespace A361466

/-- `A000120(C(2, A348942(n+1)²))` -/
def P12519021378607755965.Spec : Prop :=
  ∀ n, P12519021378607755965.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P14850361250114620062

`A057427(C(2, A348942(n+1)²))`
-/

namespace A361466.P14850361250114620062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose 2 (A348942 (n + 1) ^ 2).toNat)

end

end A361466.P14850361250114620062

namespace A361466

/-- `A057427(C(2, A348942(n+1)²))` -/
def P14850361250114620062.Spec : Prop :=
  ∀ n, P14850361250114620062.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P12578475111255149544

`A063524((n+1)%A326042(n+1)+1)`
-/

namespace A361466.P12578475111255149544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.tmod (n + 1 : ℤ) (A326042 (n + 1)) + 1).toNat

end

end A361466.P12578475111255149544

namespace A361466

/-- `A063524((n+1)%A326042(n+1)+1)` -/
def P12578475111255149544.Spec : Prop :=
  ∀ n, P12578475111255149544.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P15366237681588118303

`C(A000120(2^val(n+1, 2)), A348942(n+1))`
-/

namespace A361466.P15366237681588118303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat (A348942 (n + 1)).toNat

end

end A361466.P15366237681588118303

namespace A361466

/-- `C(A000120(2^val(n+1, 2)), A348942(n+1))` -/
def P15366237681588118303.Spec : Prop :=
  ∀ n, (P15366237681588118303.a n : ℤ) = A361466 (n + 1)

end A361466

/-! ## A361466.P10000470143909473458

`C(A064547(A151800(n)), A348942(n+1))`
-/

namespace A361466.P10000470143909473458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064547 (A151800 n).toNat).toNat (A348942 (n + 1)).toNat

end

end A361466.P10000470143909473458

namespace A361466

/-- `C(A064547(A151800(n)), A348942(n+1))` -/
def P10000470143909473458.Spec : Prop :=
  ∀ n, (P10000470143909473458.a n : ℤ) = A361466 (n + 1)

end A361466

/-! ## A361466.P5343138994910091115

`C(A014878(A228351(n+1)), A348942(n+1))`
-/

namespace A361466.P5343138994910091115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014878 (A228351 (n + 1)).toNat).toNat (A348942 (n + 1)).toNat

end

end A361466.P5343138994910091115

namespace A361466

/-- `C(A014878(A228351(n+1)), A348942(n+1))` -/
def P5343138994910091115.Spec : Prop :=
  ∀ n, (P5343138994910091115.a n : ℤ) = A361466 (n + 1)

end A361466

/-! ## A361466.P16939709621434817990

`C(A000120(n), A000120(n)*A348942(n+1))`
-/

namespace A361466.P16939709621434817990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A000120 n * A348942 (n + 1)).toNat

end

end A361466.P16939709621434817990

namespace A361466

/-- `C(A000120(n), A000120(n)*A348942(n+1))` -/
def P16939709621434817990.Spec : Prop :=
  ∀ n, (P16939709621434817990.a n : ℤ) = A361466 (n + 1)

end A361466

/-! ## A361466.P9210283084366662969

`C(A064547(n+1), A064547(n+1)*A348942(n+1))`
-/

namespace A361466.P9210283084366662969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064547 (n + 1)).toNat (A064547 (n + 1) * A348942 (n + 1)).toNat

end

end A361466.P9210283084366662969

namespace A361466

/-- `C(A064547(n+1), A064547(n+1)*A348942(n+1))` -/
def P9210283084366662969.Spec : Prop :=
  ∀ n, (P9210283084366662969.a n : ℤ) = A361466 (n + 1)

end A361466

/-! ## A361466.P15551301763625333

`A000007((n+1)%A326042(n+1))`
-/

namespace A361466.P15551301763625333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (A326042 (n + 1))).toNat

end

end A361466.P15551301763625333

namespace A361466

/-- `A000007((n+1)%A326042(n+1))` -/
def P15551301763625333.Spec : Prop :=
  ∀ n, P15551301763625333.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P13921001360636712361

`∏{p}[A348942(n+1), A349126(#)]`
-/

namespace A361466.P13921001360636712361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A349126 p

end

end A361466.P13921001360636712361

namespace A361466

/-- `∏{p}[A348942(n+1), A349126(#)]` -/
def P13921001360636712361.Spec : Prop :=
  ∀ n, P13921001360636712361.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P11587480135437084390

`A355943(A003961(n+1))`
-/

namespace A361466.P11587480135437084390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355943 (A003961 (n + 1)).toNat

end

end A361466.P11587480135437084390

namespace A361466

/-- `A355943(A003961(n+1))` -/
def P11587480135437084390.Spec : Prop :=
  ∀ n, P11587480135437084390.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P5768482257650860270

`A361465(A003961(2*n+1-n))`
-/

namespace A361466.P5768482257650860270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A003961 (2 * n + 1 - n)).toNat

end

end A361466.P5768482257650860270

namespace A361466

/-- `A361465(A003961(2*n+1-n))` -/
def P5768482257650860270.Spec : Prop :=
  ∀ n, P5768482257650860270.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P8614074750195881570

`A209229(A336848(n+1))`
-/

namespace A361466.P8614074750195881570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A336848 (n + 1)).toNat

end

end A361466.P8614074750195881570

namespace A361466

/-- `A209229(A336848(n+1))` -/
def P8614074750195881570.Spec : Prop :=
  ∀ n, P8614074750195881570.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P12425904431829529855

`A209229(A003961(A348942(n+1)))`
-/

namespace A361466.P12425904431829529855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A003961 (A348942 (n + 1)).toNat).toNat

end

end A361466.P12425904431829529855

namespace A361466

/-- `A209229(A003961(A348942(n+1)))` -/
def P12425904431829529855.Spec : Prop :=
  ∀ n, P12425904431829529855.a n = A361466 (n + 1)

end A361466

/-! ## A361466.P5642309292198640140

`C(A336850(n+1), A003961(A326042(n+1)))`
-/

namespace A361466.P5642309292198640140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336850 (n + 1)).toNat (A003961 (A326042 (n + 1)).toNat).toNat

end

end A361466.P5642309292198640140

namespace A361466

/-- `C(A336850(n+1), A003961(A326042(n+1)))` -/
def P5642309292198640140.Spec : Prop :=
  ∀ n, (P5642309292198640140.a n : ℤ) = A361466 (n + 1)

end A361466

/-!
# A361467: a(n) = A003961(n) * sigma(A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A361467, the canonical program `A361467.P5320680292848503513` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361467 has offset 1).

The definition of A361467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003973, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361467.P5320680292848503513

`A003961(n+1)*A003973(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A361467

/-- `A003961(n+1)*A003973(n+1)` -/
def P5320680292848503513.Spec : Prop :=
  ∀ n, P5320680292848503513.a n = A361467 (n + 1)

theorem P5320680292848503513.correct : P5320680292848503513.Spec := by
  intro n
  simp only [A361467, Nat.add_sub_cancel]

end A361467

/-! ## A361467.P13971794889210554813

`A336850(n+1)²*A361468(n+1)`
-/

namespace A361467.P13971794889210554813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (n + 1) ^ 2 * A361468 (n + 1)

end

end A361467.P13971794889210554813

namespace A361467

/-- `A336850(n+1)²*A361468(n+1)` -/
def P13971794889210554813.Spec : Prop :=
  ∀ n, P13971794889210554813.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P14618463755445185747

`(A243501(n+1)-1)*A003973(n+1)`
-/

namespace A361467.P14618463755445185747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1) * A003973 (n + 1)

end

end A361467.P14618463755445185747

namespace A361467

/-- `(A243501(n+1)-1)*A003973(n+1)` -/
def P14618463755445185747.Spec : Prop :=
  ∀ n, P14618463755445185747.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P6643376434450391578

`∑{d}[n+1, A003961(#)]*A003961(n+1)`
-/

namespace A361467.P6643376434450391578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A003961 d) * A003961 (n + 1)

end

end A361467.P6643376434450391578

namespace A361467

/-- `∑{d}[n+1, A003961(#)]*A003961(n+1)` -/
def P6643376434450391578.Spec : Prop :=
  ∀ n, P6643376434450391578.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P14176894868664742382

`(2*A048673(n+1)-1)*A003973(n+1)`
-/

namespace A361467.P14176894868664742382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A048673 (n + 1) - 1) * A003973 (n + 1)

end

end A361467.P14176894868664742382

namespace A361467

/-- `(2*A048673(n+1)-1)*A003973(n+1)` -/
def P14176894868664742382.Spec : Prop :=
  ∀ n, P14176894868664742382.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P13176786966424091733

`(A336853(n+1)+1+n)*A003973(n+1)`
-/

namespace A361467.P13176786966424091733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 1) + 1 + (n : ℤ)) * A003973 (n + 1)

end

end A361467.P13176786966424091733

namespace A361467

/-- `(A336853(n+1)+1+n)*A003973(n+1)` -/
def P13176786966424091733.Spec : Prop :=
  ∀ n, P13176786966424091733.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P14421079041087583249

`A341528(n+1)/(n+1)*A003961(n+1)`
-/

namespace A361467.P14421079041087583249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (n + 1 : ℚ) * (A003961 (n + 1) : ℚ)

end

end A361467.P14421079041087583249

namespace A361467

/-- `A341528(n+1)/(n+1)*A003961(n+1)` -/
def P14421079041087583249.Spec : Prop :=
  ∀ n, P14421079041087583249.a n = (A361467 (n + 1) : ℚ)

end A361467

/-! ## A361467.P16936872974874262178

`(A253885(n)+1)*A341528(n+1)/(n+1)`
-/

namespace A361467.P16936872974874262178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1 : ℚ) * ((A341528 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A361467.P16936872974874262178

namespace A361467

/-- `(A253885(n)+1)*A341528(n+1)/(n+1)` -/
def P16936872974874262178.Spec : Prop :=
  ∀ n, P16936872974874262178.a n = (A361467 (n + 1) : ℚ)

end A361467

/-! ## A361467.P5431700026637519763

`(A252748(n+1)+2*(n+1))*A003973(n+1)`
-/

namespace A361467.P5431700026637519763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252748 (n + 1) + (2 * (n + 1) : ℤ)) * A003973 (n + 1)

end

end A361467.P5431700026637519763

namespace A361467

/-- `(A252748(n+1)+2*(n+1))*A003973(n+1)` -/
def P5431700026637519763.Spec : Prop :=
  ∀ n, P5431700026637519763.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P376198659734997583

`(A108228(n+1)+A048673(n+1))*A003973(n+1)`
-/

namespace A361467.P376198659734997583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108228 (n + 1) + A048673 (n + 1)) * A003973 (n + 1)

end

end A361467.P376198659734997583

namespace A361467

/-- `(A108228(n+1)+A048673(n+1))*A003973(n+1)` -/
def P376198659734997583.Spec : Prop :=
  ∀ n, P376198659734997583.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P14609751334670603496

`(A286385(n+1)+A000203(n+1))*A003973(n+1)`
-/

namespace A361467.P14609751334670603496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1)) * A003973 (n + 1)

end

end A361467.P14609751334670603496

namespace A361467

/-- `(A286385(n+1)+A000203(n+1))*A003973(n+1)` -/
def P14609751334670603496.Spec : Prop :=
  ∀ n, P14609751334670603496.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P9895479492467730808

`(A336852(n+1)+A000203(n+1))*A003961(n+1)`
-/

namespace A361467.P9895479492467730808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336852 (n + 1) + A000203 (n + 1)) * A003961 (n + 1)

end

end A361467.P9895479492467730808

namespace A361467

/-- `(A336852(n+1)+A000203(n+1))*A003961(n+1)` -/
def P9895479492467730808.Spec : Prop :=
  ∀ n, P9895479492467730808.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P2992452058858517821

`(A336851(n+1)+A003961(n+1))*A003961(n+1)`
-/

namespace A361467.P2992452058858517821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336851 (n + 1) + A003961 (n + 1)) * A003961 (n + 1)

end

end A361467.P2992452058858517821

namespace A361467

/-- `(A336851(n+1)+A003961(n+1))*A003961(n+1)` -/
def P2992452058858517821.Spec : Prop :=
  ∀ n, P2992452058858517821.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P14098913292902370671

`(A336847(n+1)+A336846(n+1))*A003961(n+1)`
-/

namespace A361467.P14098913292902370671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336847 (n + 1) + A336846 (n + 1)) * A003961 (n + 1)

end

end A361467.P14098913292902370671

namespace A361467

/-- `(A336847(n+1)+A336846(n+1))*A003961(n+1)` -/
def P14098913292902370671.Spec : Prop :=
  ∀ n, P14098913292902370671.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P15845879363327777627

`(A344587(n+1)+A336851(n+1))*A003973(n+1)`
-/

namespace A361467.P15845879363327777627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344587 (n + 1) + A336851 (n + 1)) * A003973 (n + 1)

end

end A361467.P15845879363327777627

namespace A361467

/-- `(A344587(n+1)+A336851(n+1))*A003973(n+1)` -/
def P15845879363327777627.Spec : Prop :=
  ∀ n, P15845879363327777627.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P3469094570130894087

`(A336845(n+1)-A336841(n+1))*A003961(n+1)`
-/

namespace A361467.P3469094570130894087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A336841 (n + 1)) * A003961 (n + 1)

end

end A361467.P3469094570130894087

namespace A361467

/-- `(A336845(n+1)-A336841(n+1))*A003961(n+1)` -/
def P3469094570130894087.Spec : Prop :=
  ∀ n, P3469094570130894087.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P6932433416215366966

`(A389076(n+1)-A389077(n+1))*A003973(n+1)`
-/

namespace A361467.P6932433416215366966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389076 (n + 1) - A389077 (n + 1)) * A003973 (n + 1)

end

end A361467.P6932433416215366966

namespace A361467

/-- `(A389076(n+1)-A389077(n+1))*A003973(n+1)` -/
def P6932433416215366966.Spec : Prop :=
  ∀ n, P6932433416215366966.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P15561584991818683767

`A003961(n+1)*A336838(n+1)*A336856(n+1)`
-/

namespace A361467.P15561584991818683767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A336838 (n + 1) * A336856 (n + 1)

end

end A361467.P15561584991818683767

namespace A361467

/-- `A003961(n+1)*A336838(n+1)*A336856(n+1)` -/
def P15561584991818683767.Spec : Prop :=
  ∀ n, P15561584991818683767.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P16275319954866672703

`A003961(n+1)*A336846(n+1)*A336848(n+1)`
-/

namespace A361467.P16275319954866672703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A336846 (n + 1) * A336848 (n + 1)

end

end A361467.P16275319954866672703

namespace A361467

/-- `A003961(n+1)*A336846(n+1)*A336848(n+1)` -/
def P16275319954866672703.Spec : Prop :=
  ∀ n, P16275319954866672703.a n = A361467 (n + 1)

end A361467

/-! ## A361467.P1856666111130087452

`A003973(n+1)*A336849(n+1)*A336850(n+1)`
-/

namespace A361467.P1856666111130087452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) * A336849 (n + 1) * A336850 (n + 1)

end

end A361467.P1856666111130087452

namespace A361467

/-- `A003973(n+1)*A336849(n+1)*A336850(n+1)` -/
def P1856666111130087452.Spec : Prop :=
  ∀ n, P1856666111130087452.a n = A361467 (n + 1)

end A361467

/-!
# A361468: a(n) = A249670(A003961(n)).

The programs for A361468, the canonical program `A361468.P13904550128284942999` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361468 has offset 1).

The definition of A361468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336849, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361468.P13904550128284942999

`A336849(n+1)*A341525(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A361468

/-- `A336849(n+1)*A341525(n+1)` -/
def P13904550128284942999.Spec : Prop :=
  ∀ n, P13904550128284942999.a n = A361468 (n + 1)

theorem P13904550128284942999.correct : P13904550128284942999.Spec := by
  intro n
  simp only [A361468, Nat.add_sub_cancel]

end A361468

/-! ## A361468.P3672061601893237377

`A361467(n+1)/A000290(A336850(n+1))`
-/

namespace A361468.P3672061601893237377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361467 (n + 1) : ℚ) / (A000290 (A336850 (n + 1)).toNat : ℚ)

end

end A361468.P3672061601893237377

namespace A361468

/-- `A361467(n+1)/A000290(A336850(n+1))` -/
def P3672061601893237377.Spec : Prop :=
  ∀ n, P3672061601893237377.a n = (A361468 (n + 1) : ℚ)

end A361468

/-! ## A361468.P6867236467911685611

`A003973(n+1)*A336849(n+1)/A336850(n+1)`
-/

namespace A361468.P6867236467911685611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) * A336849 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A361468.P6867236467911685611

namespace A361468

/-- `A003973(n+1)*A336849(n+1)/A336850(n+1)` -/
def P6867236467911685611.Spec : Prop :=
  ∀ n, P6867236467911685611.a n = (A361468 (n + 1) : ℚ)

end A361468

/-! ## A361468.P15344596608882959989

`A003961(n+1)/A336850(n+1)*A341525(n+1)`
-/

namespace A361468.P15344596608882959989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ) * (A341525 (n + 1) : ℚ)

end

end A361468.P15344596608882959989

namespace A361468

/-- `A003961(n+1)/A336850(n+1)*A341525(n+1)` -/
def P15344596608882959989.Spec : Prop :=
  ∀ n, P15344596608882959989.a n = (A361468 (n + 1) : ℚ)

end A361468

/-! ## A361468.P13798965541341440440

`A249670(A003961(n+1))`
-/

namespace A361468.P13798965541341440440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A003961 (n + 1)).toNat

end

end A361468.P13798965541341440440

namespace A361468

/-- `A249670(A003961(n+1))` -/
def P13798965541341440440.Spec : Prop :=
  ∀ n, P13798965541341440440.a n = A361468 (n + 1)

end A361468

/-! ## A361468.P16816254013759242692

`A249670(A336849(n+1)*A336850(n+1))`
-/

namespace A361468.P16816254013759242692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A336849 (n + 1) * A336850 (n + 1)).toNat

end

end A361468.P16816254013759242692

namespace A361468

/-- `A249670(A336849(n+1)*A336850(n+1))` -/
def P16816254013759242692.Spec : Prop :=
  ∀ n, P16816254013759242692.a n = A361468 (n + 1)

end A361468

/-!
# A361469: a(n) = bigomega(A249670(A003961(n))).

The programs for A361469, the canonical program `A361469.P6204931458790545730` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361469 has offset 1).

The definition of A361469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361469.P6204931458790545730

`A001222(A336849(n+1))+A001222(A341525(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A361469

/-- `A001222(A336849(n+1))+A001222(A341525(n+1))` -/
def P6204931458790545730.Spec : Prop :=
  ∀ n, P6204931458790545730.a n = A361469 (n + 1)

theorem P6204931458790545730.correct : P6204931458790545730.Spec := by
  intro n
  simp only [A361469, Nat.add_sub_cancel]

end A361469

/-! ## A361469.P11260949299008581267

`∑{e}[A361468(n+1), #]`
-/

namespace A361469.P11260949299008581267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A361469.P11260949299008581267

namespace A361469

/-- `∑{e}[A361468(n+1), #]` -/
def P11260949299008581267.Spec : Prop :=
  ∀ n, (P11260949299008581267.a n : ℤ) = A361469 (n + 1)

end A361469

/-! ## A361469.P1330571419126448778

`∑{e}[A249670(A003961(n+1)), #]`
-/

namespace A361469.P1330571419126448778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A003961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A361469.P1330571419126448778

namespace A361469

/-- `∑{e}[A249670(A003961(n+1)), #]` -/
def P1330571419126448778.Spec : Prop :=
  ∀ n, (P1330571419126448778.a n : ℤ) = A361469 (n + 1)

end A361469

/-! ## A361469.P1170141496926048034

`A001222(A361468(n+1))`
-/

namespace A361469.P1170141496926048034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A361468 (n + 1)).toNat

end

end A361469.P1170141496926048034

namespace A361469

/-- `A001222(A361468(n+1))` -/
def P1170141496926048034.Spec : Prop :=
  ∀ n, P1170141496926048034.a n = A361469 (n + 1)

end A361469

/-! ## A361469.P8533097627306347180

`A001222(A249670(A003961(n+1)))`
-/

namespace A361469.P8533097627306347180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249670 (A003961 (n + 1)).toNat).toNat

end

end A361469.P8533097627306347180

namespace A361469

/-- `A001222(A249670(A003961(n+1)))` -/
def P8533097627306347180.Spec : Prop :=
  ∀ n, P8533097627306347180.a n = A361469 (n + 1)

end A361469

/-! ## A361469.P2459415133211632138

`A001222(A336849(n+1)*A341525(n+1))`
-/

namespace A361469.P2459415133211632138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336849 (n + 1) * A341525 (n + 1)).toNat

end

end A361469.P2459415133211632138

namespace A361469

/-- `A001222(A336849(n+1)*A341525(n+1))` -/
def P2459415133211632138.Spec : Prop :=
  ∀ n, P2459415133211632138.a n = A361469 (n + 1)

end A361469

/-!
# A361470: a(n) = gcd(n+1, A135504(n)).

The programs for A361470, the canonical program `A361470.P12605734860024690100` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361470 has offset 1).

The definition of A361470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361470.P12605734860024690100

`(n+2)/A135506(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361470

/-- `(n+2)/A135506(n+1)` -/
def P12605734860024690100.Spec : Prop :=
  ∀ n, P12605734860024690100.a n = (A361470 (n + 1) : ℚ)

end A361470

/-! ## A361470.P4246205975446257808

`gcd(n+2, A135504(n+1))`
-/

namespace A361470.P4246205975446257808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A135504 (n + 1))

end

end A361470.P4246205975446257808

namespace A361470

/-- `gcd(n+2, A135504(n+1))` -/
def P4246205975446257808.Spec : Prop :=
  ∀ n, (P4246205975446257808.a n : ℤ) = A361470 (n + 1)

end A361470

/-! ## A361470.P3237151110515530998

`(n+2)/A006530(Δ[A135504(n+1)]/A135504(n+1))`
-/

namespace A361470.P3237151110515530998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A135504 (n + 1) : ℚ))).toNat : ℚ)

end

end A361470.P3237151110515530998

namespace A361470

/-- `(n+2)/A006530(Δ[A135504(n+1)]/A135504(n+1))` -/
def P3237151110515530998.Spec : Prop :=
  ∀ n, P3237151110515530998.a n = (A361470 (n + 1) : ℚ)

end A361470

/-! ## A361470.P2108199195251657257

`gcd(∏[A158275(n+1)], A020725(n+1))`
-/

namespace A361470.P2108199195251657257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A020725 (n + 1))

end

end A361470.P2108199195251657257

namespace A361470

/-- `gcd(∏[A158275(n+1)], A020725(n+1))` -/
def P2108199195251657257.Spec : Prop :=
  ∀ n, (P2108199195251657257.a n : ℤ) = A361470 (n + 1)

end A361470

/-! ## A361470.P9863186500850222050

`val(A011557(n+2), A011557(A135506(n+1)))`
-/

namespace A361470.P9863186500850222050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011557 (n + 2)).toNat (A011557 (A135506 (n + 1)).toNat).toNat

end

end A361470.P9863186500850222050

namespace A361470

/-- `val(A011557(n+2), A011557(A135506(n+1)))` -/
def P9863186500850222050.Spec : Prop :=
  ∀ n, (P9863186500850222050.a n : ℤ) = A361470 (n + 1)

end A361470

/-!
# A361471: Size of the symmetric difference of {1,2,3,4}, {2,4,6,8}, ..., {n,2n,3n,4n}.

The programs for A361471, the canonical program `A361471.P10946116269126917643` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361471 has offset 1).

The definition of A361471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361471.P5751052723840669292

`4*∑[ceil(cos(gcd(12, n+1)%9))]`
-/

namespace A361471.P5751052723840669292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((Nat.gcd 12 (n + 1) % 9 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361471.P5751052723840669292

namespace A361471

/-- `4*∑[ceil(cos(gcd(12, n+1)%9))]` -/
def P5751052723840669292.Spec : Prop :=
  ∀ n, P5751052723840669292.a n = A361471 (n + 1)

end A361471

/-! ## A361471.P10946116269126917643

`∑[4*A320106(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361471

/-- `∑[4*A320106(n+1)]` -/
def P10946116269126917643.Spec : Prop :=
  ∀ n, P10946116269126917643.a n = A361471 (n + 1)

theorem P10946116269126917643.correct : P10946116269126917643.Spec := by
  intro n
  simp only [A361471, Nat.add_sub_cancel]

end A361471

/-! ## A361471.P17557662734224369888

`A008574(∑[A320106(n+1)])`
-/

namespace A361471.P17557662734224369888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361471.P17557662734224369888

namespace A361471

/-- `A008574(∑[A320106(n+1)])` -/
def P17557662734224369888.Spec : Prop :=
  ∀ n, P17557662734224369888.a n = A361471 (n + 1)

end A361471

/-! ## A361471.P9294845491264539167

`∑[and(4, A016789(lcm(6, (n+1)²)/6))]`
-/

namespace A361471.P9294845491264539167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A016789 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 2) : ℚ) / 6)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361471.P9294845491264539167

namespace A361471

/-- `∑[and(4, A016789(lcm(6, (n+1)²)/6))]` -/
def P9294845491264539167.Spec : Prop :=
  ∀ n, P9294845491264539167.a n = A361471 (n + 1)

end A361471

/-!
# A361473: a(n) is the least positive integer that can be expressed as the sum of one or more consecutive nonprime numbers in exactly n ways.

The programs for A361473, there is no canonical definition to state claims against.
-/

/-! ## A361473.P17301319882043248961

`A139004(A118191(n)+1)`
-/

namespace A361473.P17301319882043248961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139004 (A118191 n + 1).toNat

end

end A361473.P17301319882043248961

/-!
# A361474: a(n) = 1*binomial(n,2) + 3*binomial(n,3) + 6*binomial(n,4) + 10*binomial(n,5).

The programs for A361474, the canonical program `A361474.P7843649290353159687` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361474 has offset 0).

The definition of A361474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)+3*C(n, 3)+6*C(n, 4)+10*C(n, 5)` (program `A361474.P7843649290353159687`, by `A361474.P7843649290353159687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361474.P7843649290353159687

`C(n, 2)+3*C(n, 3)+6*C(n, 4)+10*C(n, 5)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361474

/-- `C(n, 2)+3*C(n, 3)+6*C(n, 4)+10*C(n, 5)` -/
def P7843649290353159687.Spec : Prop :=
  ∀ n, (P7843649290353159687.a n : ℤ) = A361474 n

theorem P7843649290353159687.correct : P7843649290353159687.Spec := by
  intro n
  simp only [A361474]

end A361474

/-! ## A361474.P5423516948035175085

`(A034827(n)+C(n, 2))*(n-1)`
-/

namespace A361474.P5423516948035175085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034827 n + (Nat.choose n 2 : ℤ)) * ((n : ℤ) - 1)

end

end A361474.P5423516948035175085

namespace A361474

/-- `(A034827(n)+C(n, 2))*(n-1)` -/
def P5423516948035175085.Spec : Prop :=
  ∀ n, P5423516948035175085.a n = A361474 n

end A361474

/-! ## A361474.P13564186063957080225

`A380445(n)+A007290(n)`
-/

namespace A361474.P13564186063957080225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380445 n + A007290 n

end

end A361474.P13564186063957080225

namespace A361474

/-- `A380445(n)+A007290(n)` -/
def P13564186063957080225.Spec : Prop :=
  ∀ n, P13564186063957080225.a n = A361474 n

end A361474

/-! ## A361474.P13154514684771429693

`(A008911(n)-A326247(n))*(n-1)`
-/

namespace A361474.P13154514684771429693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008911 n - A326247 n) * ((n : ℤ) - 1)

end

end A361474.P13154514684771429693

namespace A361474

/-- `(A008911(n)-A326247(n))*(n-1)` -/
def P13154514684771429693.Spec : Prop :=
  ∀ n, P13154514684771429693.a n = A361474 n

end A361474

/-! ## A361474.P10082578718190219452

`A395461(n+1)/(2*(n+1))`
-/

namespace A361474.P10082578718190219452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395461 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A361474.P10082578718190219452

namespace A361474

/-- `A395461(n+1)/(2*(n+1))` -/
def P10082578718190219452.Spec : Prop :=
  ∀ n, P10082578718190219452.a n = (A361474 n : ℚ)

end A361474

/-! ## A361474.P8028614346249781018

`3/(n+1)*A394656(n+1)`
-/

namespace A361474.P8028614346249781018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A394656 (n + 1) : ℚ)

end

end A361474.P8028614346249781018

namespace A361474

/-- `3/(n+1)*A394656(n+1)` -/
def P8028614346249781018.Spec : Prop :=
  ∀ n, P8028614346249781018.a n = (A361474 n : ℚ)

end A361474

/-!
# A361475: Array read by ascending antidiagonals: A(n, k) = (k^n - 1)/(k - 1), with k >= 2.

The programs for A361475, there is no canonical definition to state claims against.
-/

/-! ## A361475.P10011591294412620394

`A123490(n)-1`
-/

namespace A361475.P10011591294412620394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 n - 1

end

end A361475.P10011591294412620394

/-! ## A361475.P10560009290623592769

`A001478(n+1)+A123490(n)+n`
-/

namespace A361475.P10560009290623592769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A123490 n + (n : ℤ))

end

end A361475.P10560009290623592769

/-! ## A361475.P8968037728554818077

`ceil(ratio[A051129(n+1)]*A009998(n))-1`
-/

namespace A361475.P8968037728554818077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A009998 n : ℚ)⌉ - 1

end

end A361475.P8968037728554818077

/-! ## A361475.P3120948191223328441

`ceil(A261642(n+1)/A051129(n+1))-1`
-/

namespace A361475.P3120948191223328441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261642 (n + 1) : ℚ) / (A051129 (n + 1) : ℚ)⌉ - 1

end

end A361475.P3120948191223328441

/-! ## A361475.P8120259498600898783

`ceil(A051129(n+2)/A002260(n+1))-1`
-/

namespace A361475.P8120259498600898783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051129 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)⌉ - 1

end

end A361475.P8120259498600898783

/-! ## A361475.P17074534537398775623

`A321800(A001316(n))+A123490(n)`
-/

namespace A361475.P17074534537398775623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001316 n).toNat + A123490 n

end

end A361475.P17074534537398775623

/-! ## A361475.P2003540489057619472

`A321800(A001222(n+1))+A123490(n)`
-/

namespace A361475.P2003540489057619472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001222 (n + 1)).toNat + A123490 n

end

end A361475.P2003540489057619472

/-! ## A361475.P8000942296257835471

`A321800(A008477(n+1))+A123490(n)`
-/

namespace A361475.P8000942296257835471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A008477 (n + 1)).toNat + A123490 n

end

end A361475.P8000942296257835471

/-! ## A361475.P13549810280525614537

`A321800(A278523(n+1))+A123490(n)`
-/

namespace A361475.P13549810280525614537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A278523 (n + 1)).toNat + A123490 n

end

end A361475.P13549810280525614537

/-! ## A361475.P17508850699757434297

`A321800(A280726(n+1))+A123490(n)`
-/

namespace A361475.P17508850699757434297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A280726 (n + 1)).toNat + A123490 n

end

end A361475.P17508850699757434297

/-!
# A361476: Antidiagonal sums of A361475.

The programs for A361476, there is no canonical definition to state claims against.
-/

/-! ## A361476.P286971428462820980

`∑[A003101(n)]`
-/

namespace A361476.P286971428462820980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361476.P286971428462820980

/-! ## A361476.P4335092347876069654

`∑[A026898(n)-1]`
-/

namespace A361476.P4335092347876069654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361476.P4335092347876069654

/-! ## A361476.P7242979573618055999

`∑[Δ[A103439(n)]-1]`
-/

namespace A361476.P7242979573618055999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361476.P7242979573618055999

/-! ## A361476.P11684075737253204985

`∑[Δ[A104879(n)]-1]`
-/

namespace A361476.P11684075737253204985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361476.P11684075737253204985

/-! ## A361476.P14656597271791304395

`A103439(n+1)-(n+1)`
-/

namespace A361476.P14656597271791304395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 (n + 1) - (n + 1 : ℤ)

end

end A361476.P14656597271791304395

/-! ## A361476.P13946812760028988495

`A104879(n+1)-(n+2)`
-/

namespace A361476.P13946812760028988495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 (n + 1) - (n + 2 : ℤ)

end

end A361476.P13946812760028988495

/-! ## A361476.P7294236277364883751

`A003101(n)+A103439(n)-n`
-/

namespace A361476.P7294236277364883751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + (A103439 n - (n : ℤ))

end

end A361476.P7294236277364883751

/-! ## A361476.P6439124619145462852

`∑[∑[A047970(n)]-A047970(n)]`
-/

namespace A361476.P6439124619145462852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A047970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361476.P6439124619145462852

/-!
# A361477: a(n) is the number of integers whose binary expansions have the same multiset of run-lengths as that of n.

The programs for A361477, the canonical program `A361477.P6676586182976051618` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361477 has offset 0).

The definition of A361477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361477.P6676586182976051618

`A008480(A382255(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A361477

/-- `A008480(A382255(n))` -/
def P6676586182976051618.Spec : Prop :=
  ∀ n, P6676586182976051618.a n = A361477 n

theorem P6676586182976051618.correct : P6676586182976051618.Spec := by
  intro n
  simp only [A361477]

end A361477

/-! ## A361477.P9870153645847306941

`A008480(A333219(xor(n, floor(n/2))+1))`
-/

namespace A361477.P9870153645847306941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A333219 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A361477.P9870153645847306941

namespace A361477

/-- `A008480(A333219(xor(n, floor(n/2))+1))` -/
def P9870153645847306941.Spec : Prop :=
  ∀ n, P9870153645847306941.a n = A361477 n

end A361477

/-! ## A361477.P6443519075900817878

`A309004(A163755(n))`
-/

namespace A361477.P6443519075900817878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A163755 n).toNat

end

end A361477.P6443519075900817878

namespace A361477

/-- `A309004(A163755(n))` -/
def P6443519075900817878.Spec : Prop :=
  ∀ n, P6443519075900817878.a n = A361477 n

end A361477

/-! ## A361477.P2630640265567594449

`A358525(A341915(n))`
-/

namespace A361477.P2630640265567594449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A341915 n).toNat

end

end A361477.P2630640265567594449

namespace A361477

/-- `A358525(A341915(n))` -/
def P2630640265567594449.Spec : Prop :=
  ∀ n, P2630640265567594449.a n = A361477 n

end A361477

/-! ## A361477.P14121498066727220909

`A358525(A003188(n))`
-/

namespace A361477.P14121498066727220909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A003188 n).toNat

end

end A361477.P14121498066727220909

namespace A361477

/-- `A358525(A003188(n))` -/
def P14121498066727220909.Spec : Prop :=
  ∀ n, P14121498066727220909.a n = A361477 n

end A361477

/-!
# A361479: a(n) is the least integer whose binary expansion has the same multiset of run-lengths as that of n.

The programs for A361479, there is no canonical definition to state claims against.
-/

/-! ## A361479.P5921393190595126771

`A166404(A361480(n))`
-/

namespace A361479.P5921393190595126771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A361480 n).toNat

end

end A361479.P5921393190595126771

/-! ## A361479.P12835650084721436651

`A330091(A335834(n))`
-/

namespace A361479.P12835650084721436651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 (A335834 n).toNat

end

end A361479.P12835650084721436651

/-! ## A361479.P6198313021889068992

`and(n, A056539(n)%A344296(3*n+5))`
-/

namespace A361479.P6198313021889068992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (A056539 n) (A344296 (3 * n + 5)))

end

end A361479.P6198313021889068992

/-! ## A361479.P3154541112219210014

`and(A000005(A011782(n)), A056539(n))`
-/

namespace A361479.P3154541112219210014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A011782 n).toNat) (A056539 n)

end

end A361479.P3154541112219210014

/-! ## A361479.P8082480197867786071

`and(n, A000265(A084174(n)))`
-/

namespace A361479.P8082480197867786071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000265 (A084174 n).toNat)

end

end A361479.P8082480197867786071

/-!
# A361480: a(n) is the greatest integer whose binary expansion has the same multiset of run-lengths as that of n.

The programs for A361480, there is no canonical definition to state claims against.
-/

/-! ## A361480.P396401703721560930

`A166404(A361479(n))`
-/

namespace A361480.P396401703721560930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A361479 n).toNat

end

end A361480.P396401703721560930

/-! ## A361480.P16457138219804987420

`A330091(A335835(n))`
-/

namespace A361480.P16457138219804987420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 (A335835 n).toNat

end

end A361480.P16457138219804987420

/-! ## A361480.P16982540492860219494

`A336962(A335834(n))+A184946(A184946(n))`
-/

namespace A361480.P16982540492860219494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336962 (A335834 n).toNat + A184946 (A184946 n).toNat

end

end A361480.P16982540492860219494

/-! ## A361480.P12731821053767696180

`A335835(n)+A000122(A145540(n+3))`
-/

namespace A361480.P12731821053767696180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 n + A000122 (A145540 (n + 3)).toNat

end

end A361480.P12731821053767696180

/-! ## A361480.P10355550131422217097

`A335835(n)+A000122(A014418(2*(n+2)))`
-/

namespace A361480.P10355550131422217097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 n + A000122 (A014418 (2 * (n + 2))).toNat

end

end A361480.P10355550131422217097

/-!
# A361483: Primes p such that p + 256 is also prime.

The programs for A361483, the canonical program `A361483.P5152490190389925684` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361483 has offset 1).

The definition of A361483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361483.P5152490190389925684

`p?[A000040(n+1)-256]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361483

/-- `p?[A000040(n+1)-256]` -/
def P5152490190389925684.Spec : Prop :=
  ∀ n, P5152490190389925684.a n = A361483 (n + 1)

theorem P5152490190389925684.correct : P5152490190389925684.Spec := by
  intro n
  simp only [A361483, Nat.add_sub_cancel]

end A361483

/-! ## A361483.P15491575389114396805

`A361679(A155212(n+4)+1)`
-/

namespace A361483.P15491575389114396805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361679 (A155212 (n + 4) + 1).toNat

end

end A361483.P15491575389114396805

namespace A361483

/-- `A361679(A155212(n+4)+1)` -/
def P15491575389114396805.Spec : Prop :=
  ∀ n, P15491575389114396805.a n = A361483 (n + 1)

end A361483

/-! ## A361483.P1679209444705495317

`A361679(eq[7, A193592(n)])`
-/

namespace A361483.P1679209444705495317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361483.P1679209444705495317

namespace A361483

/-- `A361679(eq[7, A193592(n)])` -/
def P1679209444705495317.Spec : Prop :=
  ∀ n, P1679209444705495317.a n = A361483 (n + 1)

end A361483

/-! ## A361483.P6174868392025182688

`p?[n-A000466(A343526(n+1))]`
-/

namespace A361483.P6174868392025182688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000466 (A343526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A361483.P6174868392025182688

namespace A361483

/-- `p?[n-A000466(A343526(n+1))]` -/
def P6174868392025182688.Spec : Prop :=
  ∀ n, P6174868392025182688.a n = A361483 (n + 1)

end A361483

/-!
# A361484: Primes p such that p + 512 is also prime.

The programs for A361484, there is no canonical definition to state claims against.
-/

/-! ## A361484.P12106046115449426759

`∩[A089440(n+1), A324695(n+1)]`
-/

namespace A361484.P12106046115449426759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361484.P12106046115449426759

/-! ## A361484.P13225081456865138530

`A127209(A096111(3*n)+A003961(n+1))`
-/

namespace A361484.P13225081456865138530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127209 (A096111 (3 * n) + A003961 (n + 1)).toNat

end

end A361484.P13225081456865138530

/-!
# A361485: Primes p such that p + 1024 is also prime.

The programs for A361485, there is no canonical definition to state claims against.
-/

/-! ## A361485.P3738701099134356926

`p?[eq[4, A225767(n)]]`
-/

namespace A361485.P3738701099134356926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A361485.P3738701099134356926

/-! ## A361485.P14189051504440870388

`eq[A005128(n)², A225767(n)]`
-/

namespace A361485.P14189051504440870388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361485.P14189051504440870388

/-! ## A361485.P5114030021113464212

`eq[A225767(n), A323161(n+1)]`
-/

namespace A361485.P5114030021113464212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361485.P5114030021113464212

/-! ## A361485.P83014466449100772

`eq[A003415(n)+3, A225767(n)]`
-/

namespace A361485.P83014466449100772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361485.P83014466449100772

/-!
# A361486: Lexicographically earliest sequence of positive numbers on a square spiral such that no three equal numbers are collinear.

The programs for A361486, there is no canonical definition to state claims against.
-/

/-! ## A361486.P8956322731230957469

`A215884(A126150(n))`
-/

namespace A361486.P8956322731230957469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A126150 n).toNat

end

end A361486.P8956322731230957469

/-! ## A361486.P9060760957951617807

`A305830(Δ[A268335(n+1)²])`
-/

namespace A361486.P9060760957951617807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305830 (f1 (n + 1) - f1 n).toNat

end

end A361486.P9060760957951617807

/-! ## A361486.P13045970931694559134

`A001221(A291780(n+1)+A058695(n))`
-/

namespace A361486.P13045970931694559134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A291780 (n + 1) + A058695 n).toNat

end

end A361486.P13045970931694559134

/-! ## A361486.P13438167940459333511

`A136165(A326464(n+3)+A111575(n))`
-/

namespace A361486.P13438167940459333511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136165 (A326464 (n + 3) + A111575 n).toNat

end

end A361486.P13438167940459333511

/-! ## A361486.P17723801064928575458

`A001221(A251721(n+5)+A052548(n))`
-/

namespace A361486.P17723801064928575458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A251721 (n + 5) + A052548 n).toNat

end

end A361486.P17723801064928575458

/-!
# A361487: Odd numbers k that are neither prime powers nor squarefree, such that k/rad(k) >= q, where rad(k) = A007947(k) and prime q = A119288(k).

The programs for A361487, there is no canonical definition to state claims against.
-/

/-! ## A361487.P4616502365203362955

`∩[A053850(n+1), A361098(n+1)]`
-/

namespace A361487.P4616502365203362955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P4616502365203362955

/-! ## A361487.P1427658993942791129

`∩[A360769(n+1), A361098(n+1)]`
-/

namespace A361487.P1427658993942791129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P1427658993942791129

/-! ## A361487.P14001802759317987668

`filter[A361098(n+1), A353569(#)]`
-/

namespace A361487.P14001802759317987668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A361487.P14001802759317987668

/-! ## A361487.P14979327954435270690

`∩[A053850(n+1), A360768(n+1)]`
-/

namespace A361487.P14979327954435270690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P14979327954435270690

/-! ## A361487.P3998439920907273947

`∩[A360768(n+1), A360769(n+1)]`
-/

namespace A361487.P3998439920907273947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P3998439920907273947

/-! ## A361487.P13399525255923409317

`∩[A274720(n+1), A360768(n+1)]`
-/

namespace A361487.P13399525255923409317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P13399525255923409317

/-! ## A361487.P143645384697523348

`∩[A274720(n+1), A361098(n+1)]`
-/

namespace A361487.P143645384697523348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P143645384697523348

/-! ## A361487.P9929221949811513624

`∩[A139392(n+1), A360768(n+1)]`
-/

namespace A361487.P9929221949811513624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P9929221949811513624

/-! ## A361487.P16305754345946792014

`∩[A139392(n+1), A361098(n+1)]`
-/

namespace A361487.P16305754345946792014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P16305754345946792014

/-! ## A361487.P14994151714522725242

`∩[A333326(n+1), A360768(n+1)]`
-/

namespace A361487.P14994151714522725242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P14994151714522725242

/-! ## A361487.P6166129569274088720

`∩[A333326(n+1), A361098(n+1)]`
-/

namespace A361487.P6166129569274088720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P6166129569274088720

/-! ## A361487.P9828648162573533231

`∩[A176847(n+1), A360768(n+1)]`
-/

namespace A361487.P9828648162573533231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P9828648162573533231

/-! ## A361487.P15573277988743919773

`∩[A176847(n+1), A361098(n+1)]`
-/

namespace A361487.P15573277988743919773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P15573277988743919773

/-! ## A361487.P12353660811296702153

`∩[A061346(n+1), A360768(n+1)]`
-/

namespace A361487.P12353660811296702153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P12353660811296702153

/-! ## A361487.P6738260313677817473

`∩[A061346(n+1), A361098(n+1)]`
-/

namespace A361487.P6738260313677817473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P6738260313677817473

/-! ## A361487.P7392076823472175820

`∩[A226025(n+1), A360768(n+1)]`
-/

namespace A361487.P7392076823472175820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P7392076823472175820

/-! ## A361487.P15048598796425234035

`∩[A226025(n+1), A361098(n+1)]`
-/

namespace A361487.P15048598796425234035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P15048598796425234035

/-! ## A361487.P2206913155403526373

`∩[A014076(n+1), A360768(n+1)]`
-/

namespace A361487.P2206913155403526373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P2206913155403526373

/-! ## A361487.P6461259135603013581

`∩[A014076(n+1), A361098(n+1)]`
-/

namespace A361487.P6461259135603013581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P6461259135603013581

/-! ## A361487.P6946242734164644266

`∩[A071904(n+1), A360768(n+1)]`
-/

namespace A361487.P6946242734164644266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361487.P6946242734164644266

/-!
# A361489: Expansion of e.g.f. exp(exp(x) - 1 + x^3/6).

The programs for A361489, there is no canonical definition to state claims against.
-/

/-! ## A361489.P8570939621374110165

`A282168(A294281(n))`
-/

namespace A361489.P8570939621374110165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282168 (A294281 n).toNat

end

end A361489.P8570939621374110165

/-! ## A361489.P15413549154657601920

`A030530(A110506(∑[n]))`
-/

namespace A361489.P15413549154657601920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A110506 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361489.P15413549154657601920

/-! ## A361489.P7716195386090149320

`A282168(A000571(n+1))`
-/

namespace A361489.P7716195386090149320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282168 (A000571 (n + 1)).toNat

end

end A361489.P7716195386090149320

/-!
# A361491: Expansion of x*(1+38*x+x^2)/((1-x)*(x^2-34*x+1)).

The programs for A361491, there is no canonical definition to state claims against.
-/

/-! ## A361491.P3993485045032518244

`3*A008844(n)-2`
-/

namespace A361491.P3993485045032518244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008844 n - 2

end

end A361491.P3993485045032518244

/-! ## A361491.P3386789848241062578

`24*A075528(n)+1`
-/

namespace A361491.P3386789848241062578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A075528 n + 1

end

end A361491.P3386789848241062578

/-! ## A361491.P10780682532200057

`2*A006062(n+1)-1`
-/

namespace A361491.P10780682532200057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006062 (n + 1) - 1

end

end A361491.P10780682532200057

/-! ## A361491.P536862945296479381

`3*A078522(n+1)+1`
-/

namespace A361491.P536862945296479381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078522 (n + 1) + 1

end

end A361491.P536862945296479381

/-! ## A361491.P16229344519103572092

`4*A107118(n+1)-3`
-/

namespace A361491.P16229344519103572092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A107118 (n + 1) - 3

end

end A361491.P16229344519103572092

/-! ## A361491.P10226607469713654494

`3*A001653(n+1)²-2`
-/

namespace A361491.P10226607469713654494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001653 (n + 1) ^ 2 - 2

end

end A361491.P10226607469713654494

/-! ## A361491.P15927743632176586424

`A008845(n)+A008844(n)`
-/

namespace A361491.P15927743632176586424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008845 n + A008844 n

end

end A361491.P15927743632176586424

/-! ## A361491.P12457714646360045011

`A078522(n+1)+A008843(n)`
-/

namespace A361491.P12457714646360045011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078522 (n + 1) + A008843 n

end

end A361491.P12457714646360045011

/-! ## A361491.P14600575797526345944

`A383734(n+1)-A008844(n)`
-/

namespace A361491.P14600575797526345944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383734 (n + 1) - A008844 n

end

end A361491.P14600575797526345944

/-! ## A361491.P9755687715451548498

`A000129(2*n)²-A182188(2*n+1)`
-/

namespace A361491.P9755687715451548498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n) ^ 2 - A182188 (2 * n + 1)

end

end A361491.P9755687715451548498

/-!
# A361492: Common difference corresponding to increasing arithmetic progression of at least n >= 2 primes whose first term is A284708(n); a(1) = 1.

The programs for A361492, there is no canonical definition to state claims against.
-/

/-! ## A361492.P2836722079005954708

`∏{p}[comp[∏[n+3]]!, #]`
-/

namespace A361492.P2836722079005954708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A361492.P2836722079005954708

/-! ## A361492.P1485372511938331255

`∏{p}[Δ[∏{p}[∑[n!], #]], #]`
-/

namespace A361492.P1485372511938331255
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361492.P1485372511938331255

/-! ## A361492.P1929781767176145124

`∏{p}[and(-3, (n+1)!), #]`
-/

namespace A361492.P1929781767176145124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361492.P1929781767176145124

/-! ## A361492.P13585112913676994392

`∏{p}[2-or(2, (n+1)!), #]`
-/

namespace A361492.P13585112913676994392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lor 2 (Nat.factorial (n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361492.P13585112913676994392

/-! ## A361492.P9556166963165683287

`∏{p}[Δ[ceil(∏[n+1]/4)], #]`
-/

namespace A361492.P9556166963165683287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / 4⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361492.P9556166963165683287

/-!
# A361493: Expansion of e.g.f. exp(exp(x) - 1 + x^3).

The programs for A361493, there is no canonical definition to state claims against.
-/

/-! ## A361493.P17788563068039993566

`∑[A347610(∑[(7-(-1)^n)*n²/8])]`
-/

namespace A361493.P17788563068039993566
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 - (-1) ^ n) * (n ^ 2 : ℤ) : ℚ) / 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361493.P17788563068039993566

/-! ## A361493.P13208394666156664712

`A059253(A355114(n))`
-/

namespace A361493.P13208394666156664712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A355114 n).toNat

end

end A361493.P13208394666156664712

/-!
# A361496: Inventory of positions as an irregular table; row 0 contains 0, subsequent rows contain the 0-based positions (mod 2) of 0's, followed by the positions (mod 2) of 1's in prior rows flattened.

The programs for A361496, there is no canonical definition to state claims against.
-/

/-! ## A361496.P4244208879072925112

`A128174(A124733(n+1)+A066561(3*n+2))`
-/

namespace A361496.P4244208879072925112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A124733 (n + 1) + A066561 (3 * n + 2)).toNat

end

end A361496.P4244208879072925112

/-! ## A361496.P9801382073652108152

`A104108(A307377(n+1)+A075653(3*(n+1)))`
-/

namespace A361496.P9801382073652108152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104108 (A307377 (n + 1) + A075653 (3 * (n + 1))).toNat

end

end A361496.P9801382073652108152

/-! ## A361496.P16467120460013740699

`A157687(C(A161579(n+1), A373957(n+1)))`
-/

namespace A361496.P16467120460013740699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (Nat.choose (A161579 (n + 1)).toNat (A373957 (n + 1)).toNat)

end

end A361496.P16467120460013740699

/-! ## A361496.P939638277528396784

`A003849(n*A313974(3*n+2))`
-/

namespace A361496.P939638277528396784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((n : ℤ) * A313974 (3 * n + 2)).toNat

end

end A361496.P939638277528396784

/-! ## A361496.P8863509365721039927

`A147407(n+1)%A132589(n+1)`
-/

namespace A361496.P8863509365721039927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147407 (n + 1)) (A132589 (n + 1))

end

end A361496.P8863509365721039927

/-!
# A361497: Number of cusps in Prym-Teichmuller curve W_D(4) of discriminant D = A361169(n).

The programs for A361497, there is no canonical definition to state claims against.
-/

/-! ## A361497.P15544226092729981182

`A361164(n+3)`
-/

namespace A361497.P15544226092729981182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361164 (n + 3)

end

end A361497.P15544226092729981182

/-!
# A361499: Number of orbifold points of order 2 in Prym-Teichmuller curve W_D(4) of discriminant D = A361169(n).

The programs for A361499, there is no canonical definition to state claims against.
-/

/-! ## A361499.P2472977064864776524

`and(A001069(A000005(n+1)), A121296(n))`
-/

namespace A361499.P2472977064864776524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001069 (A000005 (n + 1)).toNat) (A121296 (n + 10))

end

end A361499.P2472977064864776524

/-! ## A361499.P6340189527625710223

`and(A121296(n), A235122(A348610(n+1)))`
-/

namespace A361499.P6340189527625710223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121296 (n + 10)) (A235122 (A348610 (n + 1)).toNat)

end

end A361499.P6340189527625710223

/-! ## A361499.P10431501761003383507

`and(A121296(n), A275946(A155828((n+1)²)))`
-/

namespace A361499.P10431501761003383507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121296 (n + 10)) (A275946 (A155828 ((n + 1) ^ 2)).toNat)

end

end A361499.P10431501761003383507

/-! ## A361499.P16956619334093226011

`and(A334431(A334434(n)), A334461(n+1))`
-/

namespace A361499.P16956619334093226011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A334431 (A334434 n).toNat) (A334461 (n + 1))

end

end A361499.P16956619334093226011

/-! ## A361499.P2963056760828170572

`and(A206778(A143683(2*n+1)), A376312(n+1))`
-/

namespace A361499.P2963056760828170572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206778 (A143683 (2 * n + 1)).toNat) (A376312 (n + 1))

end

end A361499.P2963056760828170572

