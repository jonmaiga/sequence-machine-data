import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A368500: Table read by rows: T(n, k) is the number of permutations of size n whose incidence graph has treewidth k.

The programs for A368500, there is no canonical definition to state claims against.
-/

/-! ## A368500.P7627098595508835322

`A048685(A089888(n+2))*A048723(n)`
-/

namespace A368500.P7627098595508835322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048685 (A089888 (n + 2)).toNat * A048723 n

end

end A368500.P7627098595508835322

/-!
# A368501: Number of compositions (ordered partitions) of n into distinct parts not greater than n/2.

The programs for A368501, there is no canonical definition to state claims against.
-/

/-! ## A368501.P8148255565961506960

`A365953(A365953(n+1)+A000720(n+3))`
-/

namespace A368501.P8148255565961506960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365953 (A365953 (n + 1) + A000720 (n + 3)).toNat

end

end A368501.P8148255565961506960

/-!
# A368502: Number of partitions of an n-set into blocks of size <= sqrt(n).

The programs for A368502, there is no canonical definition to state claims against.
-/

/-! ## A368502.P2628519805364673935

`A229223(A000196(n)+or(1, n)*ceil(n/2))`
-/

namespace A368502.P2628519805364673935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A000196 n + (Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A368502.P2628519805364673935

/-! ## A368502.P6367357808133933604

`A229223(A000217(n)+A000196(n))`
-/

namespace A368502.P6367357808133933604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A000217 n + A000196 n).toNat

end

end A368502.P6367357808133933604

/-! ## A368502.P10624986667932567429

`A000085(n^A161912(n))`
-/

namespace A368502.P10624986667932567429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A161912 n : ℤ))).toNat

end

end A368502.P10624986667932567429

/-! ## A368502.P9665927221091981198

`A000085(n%A057574(n))`
-/

namespace A368502.P9665927221091981198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (Int.tmod (n : ℤ) (A057574 n)).toNat

end

end A368502.P9665927221091981198

/-! ## A368502.P12352800354198131485

`A000085(C(n, A161912(n)))`
-/

namespace A368502.P12352800354198131485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (Nat.choose n (A161912 n).toNat)

end

end A368502.P12352800354198131485

/-!
# A368503: Number of partitions of an n-set into blocks of size <= n/2.

The programs for A368503, there is no canonical definition to state claims against.
-/

/-! ## A368503.P4131988828916557471

`A229223(∑[n]+floor(n/2))`
-/

namespace A368503.P4131988828916557471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A368503.P4131988828916557471

/-! ## A368503.P16539246525516817552

`A108947(A210981(n))`
-/

namespace A368503.P16539246525516817552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A210981 n).toNat

end

end A368503.P16539246525516817552

/-! ## A368503.P9541627853117964148

`A361674(A104872(n)^4)`
-/

namespace A368503.P9541627853117964148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361674 (A104872 n ^ 4).toNat

end

end A368503.P9541627853117964148

/-!
# A368504: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^(n-j) * j^k.

The programs for A368504, the canonical program `A368504.P14091689519755120669` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368504 has offset 0).

The definition of A368504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368504.P14091689519755120669

`(row(n)-col(n))*T(n-1,k-1)+col(n)^(row(n)-col(n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368504

/-- `(row(n)-col(n))*T(n-1,k-1)+col(n)^(row(n)-col(n))` -/
def P14091689519755120669.Spec : Prop :=
  ∀ n, P14091689519755120669.a n = (A368504 n : ℚ)

end A368504

/-! ## A368504.P15156064742637804049

`A121262(A157151(n))+A090181(n)`
-/

namespace A368504.P15156064742637804049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A157151 n).toNat + A090181 n

end

end A368504.P15156064742637804049

namespace A368504

/-- `A121262(A157151(n))+A090181(n)` -/
def P15156064742637804049.Spec : Prop :=
  ∀ n, P15156064742637804049.a n = A368504 n

end A368504

/-! ## A368504.P17674925196944052473

`A090181(n)-A008683(A187940(n+1))`
-/

namespace A368504.P17674925196944052473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n - A008683 (A187940 (n + 1)).toNat

end

end A368504.P17674925196944052473

namespace A368504

/-- `A090181(n)-A008683(A187940(n+1))` -/
def P17674925196944052473.Spec : Prop :=
  ∀ n, P17674925196944052473.a n = A368504 n

end A368504

/-! ## A368504.P10273687331609667554

`A048993(n)-A363946(A001263(n+1))`
-/

namespace A368504.P10273687331609667554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A363946 (A001263 (n + 1)).toNat

end

end A368504.P10273687331609667554

namespace A368504

/-- `A048993(n)-A363946(A001263(n+1))` -/
def P10273687331609667554.Spec : Prop :=
  ∀ n, P10273687331609667554.a n = A368504 n

end A368504

/-! ## A368504.P14714864666505857709

`or(A090181(n), A273129(A064307(n+1)))`
-/

namespace A368504.P14714864666505857709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090181 n) (A273129 (A064307 (n + 1)).toNat)

end

end A368504.P14714864666505857709

namespace A368504

/-- `or(A090181(n), A273129(A064307(n+1)))` -/
def P14714864666505857709.Spec : Prop :=
  ∀ n, P14714864666505857709.a n = A368504 n

end A368504

/-!
# A368505: a(n) = Sum_{k=0..n} n^(n-k) * k^n.

The programs for A368505, there is no canonical definition to state claims against.
-/

/-! ## A368505.P12488932711728297904

`A028310(n)*A119758(A028310(n))`
-/

namespace A368505.P12488932711728297904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A119758 (A028310 n).toNat

end

end A368505.P12488932711728297904

/-! ## A368505.P11427082207860796229

`A368504(∑[4*n])`
-/

namespace A368505.P11427082207860796229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368505.P11427082207860796229

/-!
# A368506: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^(n-j) * binomial(j+k-1,j).

The programs for A368506, there is no canonical definition to state claims against.
-/

/-! ## A368506.P1763733665511693230

`A331581(A009963(n))+A118345(n)`
-/

namespace A368506.P1763733665511693230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331581 (A009963 n).toNat + A118345 n

end

end A368506.P1763733665511693230

/-!
# A368507: Powers of superprimorials.

The programs for A368507, there is no canonical definition to state claims against.
-/

/-! ## A368507.P17812065771928662799

`∪[A000079(n), A385112(n+1)]`
-/

namespace A368507.P17812065771928662799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368507.P17812065771928662799

/-! ## A368507.P13660795897210723999

`∩[A181818(n+1), A387839(n+1)]`
-/

namespace A368507.P13660795897210723999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368507.P13660795897210723999

/-! ## A368507.P9166910359033470701

`∪[A273109(n+1), A385112(n+1)]`
-/

namespace A368507.P9166910359033470701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368507.P9166910359033470701

/-! ## A368507.P16507378454327838936

`filter[A387839(n+1), A353518(#)]`
-/

namespace A368507.P16507378454327838936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A368507.P16507378454327838936

/-! ## A368507.P17012661082905674514

`A371732(A043316(n+1))`
-/

namespace A368507.P17012661082905674514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371732 (A043316 (n + 1)).toNat

end

end A368507.P17012661082905674514

/-!
# A368508: Powers of superprimorials S(k)^m such that both k > 1 and m > 1, where S(n) = A006939(n).

The programs for A368508, there is no canonical definition to state claims against.
-/

/-! ## A368508.P18151452244552934967

`∩[A368507(n+1), A389397(n+1)]`
-/

namespace A368508.P18151452244552934967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368508.P18151452244552934967

/-! ## A368508.P9897478566896817018

`∩[A385112(n+1), A389397(n+1)]`
-/

namespace A368508.P9897478566896817018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368508.P9897478566896817018

/-! ## A368508.P6167323748046716599

`∩[A387839(n+1), A389397(n+1)]`
-/

namespace A368508.P6167323748046716599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368508.P6167323748046716599

/-! ## A368508.P3921996744845269285

`∩[A368507(n+1), A368682(n+1)]`
-/

namespace A368508.P3921996744845269285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368508.P3921996744845269285

/-! ## A368508.P4175034677857651574

`∩[A368681(n+1), A385112(n+1)]`
-/

namespace A368508.P4175034677857651574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368508.P4175034677857651574

/-!
# A368510: a(n) = Sum_{k=0..n} n^(n-k) * binomial(k+n,k).

The programs for A368510, there is no canonical definition to state claims against.
-/

/-! ## A368510.P5423816765688909609

`A310111(A045512(n))`
-/

namespace A368510.P5423816765688909609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310111 (A045512 n).toNat

end

end A368510.P5423816765688909609

/-!
# A368511: Number of ordered partitions of an n-set into blocks of size <= sqrt(n).

The programs for A368511, there is no canonical definition to state claims against.
-/

/-! ## A368511.P4211274356287311265

`A327937(A102448(2*n+5)+A080599(n))`
-/

namespace A368511.P4211274356287311265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (A102448 (2 * n + 5) + A080599 n).toNat

end

end A368511.P4211274356287311265

/-! ## A368511.P17908567527984998548

`A206292(2^n-n)`
-/

namespace A368511.P17908567527984998548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206292 (2 ^ n - n)

end

end A368511.P17908567527984998548

/-!
# A368512: Number of ordered partitions of an n-set into blocks of size <= n/2.

The programs for A368512, there is no canonical definition to state claims against.
-/

/-! ## A368512.P17056573666128936415

`A005043(n)*A327534(A369431(n))`
-/

namespace A368512.P17056573666128936415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A327534 (A369431 n).toNat

end

end A368512.P17056573666128936415

/-!
# A368513: a(n) = (6*n+1)!/(n!*(2*n)!*(3*n+1)!).

The programs for A368513, there is no canonical definition to state claims against.
-/

/-! ## A368513.P2092060042620752437

`A005809(n)*A187364(n)`
-/

namespace A368513.P2092060042620752437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A187364 n

end

end A368513.P2092060042620752437

/-! ## A368513.P2099551458092354776

`A045721(2*n)*A052203(n)`
-/

namespace A368513.P2099551458092354776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 (2 * n) * A052203 n

end

end A368513.P2099551458092354776

/-! ## A368513.P2487352065305057859

`A005809(n)*A187443(2*n)`
-/

namespace A368513.P2487352065305057859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A187443 (2 * n)

end

end A368513.P2487352065305057859

/-! ## A368513.P10755346065332279835

`record[A264772(n)]*A001700(3*n)`
-/

namespace A368513.P10755346065332279835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001700 (3 * n)

end

end A368513.P10755346065332279835

/-! ## A368513.P1315597690504780917

`A090816(2*n)*A124753(3*n)`
-/

namespace A368513.P1315597690504780917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090816 (2 * n) * A124753 (3 * n)

end

end A368513.P1315597690504780917

/-!
# A368515: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where x,y,z are in {1,2,...,n} and x != y.

The programs for A368515, there is no canonical definition to state claims against.
-/

/-! ## A368515.P8789852376335617017

`2*A368517(n+1)`
-/

namespace A368515.P8789852376335617017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368517 (n + 1)

end

end A368515.P8789852376335617017

/-! ## A368515.P1216292362165882254

`A004277(A368517(n+1))`
-/

namespace A368515.P1216292362165882254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A368517 (n + 1)).toNat

end

end A368515.P1216292362165882254

/-! ## A368515.P4131926906405194681

`A034867(A368517(n+1)²)`
-/

namespace A368515.P4131926906405194681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A368517 (n + 1) ^ 2).toNat

end

end A368515.P4131926906405194681

/-! ## A368515.P3572723923526674479

`A005843(A368517(n+1)+1)-2`
-/

namespace A368515.P3572723923526674479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A368517 (n + 1) + 1).toNat - 2

end

end A368515.P3572723923526674479

/-! ## A368515.P3072016028960272263

`A005843(A368517(n+1)%(n+2))`
-/

namespace A368515.P3072016028960272263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A368517 (n + 1)) (n + 2 : ℤ)).toNat

end

end A368515.P3072016028960272263

/-! ## A368515.P10911211539496519513

`A368517(C(2, C(3, n²))+n)+A368517(n+1)`
-/

namespace A368515.P10911211539496519513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368517 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) + A368517 (n + 1)

end

end A368515.P10911211539496519513

/-! ## A368515.P8342058191400394865

`A368517(A000027(n+1))+A368517(n+1)`
-/

namespace A368515.P8342058191400394865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368517 (A000027 (n + 1)).toNat + A368517 (n + 1)

end

end A368515.P8342058191400394865

/-!
# A368516: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where x,y,z are in {1,2,...,n} and x != y and y != z.

The programs for A368516, there is no canonical definition to state claims against.
-/

/-! ## A368516.P12324169928195111942

`2*A368607(n+1)`
-/

namespace A368516.P12324169928195111942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368607 (n + 1)

end

end A368516.P12324169928195111942

/-! ## A368516.P3642663701966537131

`A004277(A368607(n+1))`
-/

namespace A368516.P3642663701966537131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A368607 (n + 1)).toNat

end

end A368516.P3642663701966537131

/-! ## A368516.P2897143012823749190

`A368607(A000027(n+1))+A368607(n+1)`
-/

namespace A368516.P2897143012823749190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368607 (A000027 (n + 1)).toNat + A368607 (n + 1)

end

end A368516.P2897143012823749190

/-!
# A368517: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where x,y,z are in {1,2,...,n} and x < y.

The programs for A368517, there is no canonical definition to state claims against.
-/

/-! ## A368517.P18255115541187587932

`A368515(n+1)/2`
-/

namespace A368517.P18255115541187587932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368515 (n + 1) : ℚ) / 2

end

end A368517.P18255115541187587932

/-! ## A368517.P3822975501605733445

`A001281(A368515(n+1))`
-/

namespace A368517.P3822975501605733445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A368515 (n + 1)).toNat

end

end A368517.P3822975501605733445

/-! ## A368517.P11903427437865785559

`A004526(A368515(n+1)+1)`
-/

namespace A368517.P11903427437865785559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A368515 (n + 1) + 1).toNat

end

end A368517.P11903427437865785559

/-! ## A368517.P5118728504792134935

`A007150(A368515(n+1)+1)`
-/

namespace A368517.P5118728504792134935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A368515 (n + 1) + 1).toNat

end

end A368517.P5118728504792134935

/-! ## A368517.P16925978500106084349

`A028242(A368515(n+1)+1)`
-/

namespace A368517.P16925978500106084349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A368515 (n + 1) + 1).toNat

end

end A368517.P16925978500106084349

/-! ## A368517.P16694807139019909345

`A001057(A368515(n+1)-1)`
-/

namespace A368517.P16694807139019909345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A368515 (n + 1) - 1).toNat

end

end A368517.P16694807139019909345

/-! ## A368517.P17157995798672566166

`A008619(A368515(n+1)-1)`
-/

namespace A368517.P17157995798672566166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A368515 (n + 1) - 1).toNat

end

end A368517.P17157995798672566166

/-!
# A368521: Triangular array T, read by rows: T(n,k) = number of sums |x-y| + |y-z| - |x-z| = k, where x,y,z are in {1,2,...,n}.

The programs for A368521, there is no canonical definition to state claims against.
-/

/-! ## A368521.P2779515418836806427

`A368522(∑[char[∑[n]]]²-n)`
-/

namespace A368521.P2779515418836806427
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368522 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A368521.P2779515418836806427

/-!
# A368522: Triangular array T, read by rows: T(n,k) = number of sums |x-y| + |y-z| - |x-z| = 2n-2-k, where x,y,z are in {1,2,...,n}.

The programs for A368522, there is no canonical definition to state claims against.
-/

/-! ## A368522.P2727280301219918148

`A368521(∑[char[∑[n]]]²-n)`
-/

namespace A368522.P2727280301219918148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368521 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A368522.P2727280301219918148

/-! ## A368522.P15594288243228037046

`A368521(A038722(n+1))+A000007(2*(n+2))`
-/

namespace A368522.P15594288243228037046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368521 (A038722 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A368522.P15594288243228037046

/-! ## A368522.P11645546818161048286

`A376975(A347045(n+1))+A368521(A038722(n+1))`
-/

namespace A368522.P11645546818161048286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376975 (A347045 (n + 1)).toNat + A368521 (A038722 (n + 1)).toNat

end

end A368522.P11645546818161048286

/-! ## A368522.P14434699927741045808

`A387487(A355695(n+4))+A368521(A038722(n+1))`
-/

namespace A368522.P14434699927741045808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387487 (A355695 (n + 4)).toNat + A368521 (A038722 (n + 1)).toNat

end

end A368522.P14434699927741045808

/-!
# A368524: a(n) = Sum_{k=1..n} k^2 * n^(n-k).

The programs for A368524, there is no canonical definition to state claims against.
-/

/-! ## A368524.P4773350527711016194

`n*A156031(A000670(n))`
-/

namespace A368524.P4773350527711016194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156031 (A000670 n).toNat

end

end A368524.P4773350527711016194

/-! ## A368524.P18018774270306164917

`n*A036234(A322442(n))`
-/

namespace A368524.P18018774270306164917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036234 (A322442 n).toNat

end

end A368524.P18018774270306164917

/-!
# A368525: a(n) = Sum_{k=1..n} k^3 * n^(n-k).

The programs for A368525, there is no canonical definition to state claims against.
-/

/-! ## A368525.P12976669551704673713

`n*A244644(A001764(n))`
-/

namespace A368525.P12976669551704673713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244644 (A001764 n).toNat

end

end A368525.P12976669551704673713

/-!
# A368526: a(n) = Sum_{k=1..n} k^2 * n^k.

The programs for A368526, there is no canonical definition to state claims against.
-/

/-! ## A368526.P858969447914856938

`A083058(A182378(3*n)+A099036(n))`
-/

namespace A368526.P858969447914856938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A182378 (3 * n) + A099036 n).toNat

end

end A368526.P858969447914856938

/-!
# A368528: a(n) = Sum_{k=1..n} k^2 * 3^(n-k).

The programs for A368528, the canonical program `A368528.P9403371326105520779` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368528 has offset 0).

The definition of A368528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368528.P9403371326105520779

`3*a(n-1)+n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368528

/-- `3*a(n-1)+n²` -/
def P9403371326105520779.Spec : Prop :=
  ∀ n, (P9403371326105520779.a n : ℤ) = A368528 n

theorem P9403371326105520779.correct : P9403371326105520779.Spec := by
  intro n
  simp only [A368528]

end A368528

/-! ## A368528.P1067421059668116602

`(3^(n+1)-(n²+3*n+3))/2`
-/

namespace A368528.P1067421059668116602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (n ^ 2 + 3 * n + 3 : ℤ) : ℚ) / 2

end

end A368528.P1067421059668116602

namespace A368528

/-- `(3^(n+1)-(n²+3*n+3))/2` -/
def P1067421059668116602.Spec : Prop :=
  ∀ n, P1067421059668116602.a n = (A368528 n : ℚ)

theorem P1067421059668116602.correct : P1067421059668116602.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A368528, Nat.add_sub_cancel, A368528.P1067421059668116602.a, A368528.P9403371326105520779.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A368528, Nat.add_sub_cancel, A368528.P1067421059668116602.a, A368528.P9403371326105520779.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A368528

/-! ## A368528.P13729704566260910940

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=30`
-/

namespace A368528.P13729704566260910940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 30] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 10 * a (n - 3) - 3 * a (n - 4)

end

end A368528.P13729704566260910940

namespace A368528

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P13729704566260910940.Spec : Prop :=
  ∀ n, P13729704566260910940.a n = A368528 n

end A368528

/-! ## A368528.P9458623896403449242

`∑[∑[ogf((x+x^2)/(1-4x+3x^2))]]`
-/

namespace A368528.P9458623896403449242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368528.P9458623896403449242

namespace A368528

/-- `∑[∑[ogf((x+x^2)/(1-4x+3x^2))]]` -/
def P9458623896403449242.Spec : Prop :=
  ∀ n, P9458623896403449242.a n = A368528 n

end A368528

/-! ## A368528.P5721336730624243013

`∑[∑[∑[3*a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A368528.P5721336730624243013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f3 =>
  3 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368528.P5721336730624243013

namespace A368528

/-- `∑[∑[∑[3*a(n-1)]]]` -/
def P5721336730624243013.Spec : Prop :=
  ∀ n, (P5721336730624243013.a n : ℤ) = A368528 n

end A368528

/-! ## A368528.P1420002655054593114

`floor(3*a(n-1))+n*n` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368528.P1420002655054593114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + n * n

end

end A368528.P1420002655054593114

namespace A368528

/-- `floor(3*a(n-1))+n*n` -/
def P1420002655054593114.Spec : Prop :=
  ∀ n, (P1420002655054593114.a n : ℤ) = A368528 n

theorem P1420002655054593114.correct : P1420002655054593114.Spec := by
  intro n
  simp only [A368528, Nat.add_sub_cancel, A368528.P1420002655054593114.a, A368528.P9403371326105520779.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368528

/-! ## A368528.P874582640319520925

`3*(a(n-1)+n*n/3)` with `a(0)=0`
-/

namespace A368528.P874582640319520925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) + (n * n : ℚ) / 3)

end

end A368528.P874582640319520925

namespace A368528

/-- `3*(a(n-1)+n*n/3)` -/
def P874582640319520925.Spec : Prop :=
  ∀ n, P874582640319520925.a n = (A368528 n : ℚ)

end A368528

/-! ## A368528.P9082841948441634902

`3^n+a(n-1)-(n+1)` with `a(0)=0`
-/

namespace A368528.P9082841948441634902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) + (a (n - 1) - (n + 1 : ℤ))

end

end A368528.P9082841948441634902

namespace A368528

/-- `3^n+a(n-1)-(n+1)` -/
def P9082841948441634902.Spec : Prop :=
  ∀ n, P9082841948441634902.a n = A368528 n

end A368528

/-! ## A368528.P9935079591958095133

`3^n-(1-(a(n-1)-n))` with `a(0)=0`
-/

namespace A368528.P9935079591958095133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) - (1 - (a (n - 1) - (n : ℤ)))

end

end A368528.P9935079591958095133

namespace A368528

/-- `3^n-(1-(a(n-1)-n))` -/
def P9935079591958095133.Spec : Prop :=
  ∀ n, P9935079591958095133.a n = A368528 n

end A368528

/-! ## A368528.P8380434747090379939

`n*(n+1)+3*a(n-1)-n` with `a(0)=0`
-/

namespace A368528.P8380434747090379939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n + 1) : ℤ) + 3 * a (n - 1) - (n : ℤ)

end

end A368528.P8380434747090379939

namespace A368528

/-- `n*(n+1)+3*a(n-1)-n` -/
def P8380434747090379939.Spec : Prop :=
  ∀ n, P8380434747090379939.a n = A368528 n

end A368528

/-! ## A368528.P16324068635310483822

`floor(a(n-1)+a(n-1)+a(n-1)+n²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368528.P16324068635310483822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + n ^ 2))

end

end A368528.P16324068635310483822

namespace A368528

/-- `floor(a(n-1)+a(n-1)+a(n-1)+n²)` -/
def P16324068635310483822.Spec : Prop :=
  ∀ n, (P16324068635310483822.a n : ℤ) = A368528 n

theorem P16324068635310483822.correct : P16324068635310483822.Spec := by
  intro n
  simp only [A368528, Nat.add_sub_cancel, A368528.P16324068635310483822.a, A368528.P9403371326105520779.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368528

/-! ## A368528.P3078810830556194502

`∑[∑[A154992(n+1)]]`
-/

namespace A368528.P3078810830556194502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368528.P3078810830556194502

namespace A368528

/-- `∑[∑[A154992(n+1)]]` -/
def P3078810830556194502.Spec : Prop :=
  ∀ n, P3078810830556194502.a n = A368528 n

end A368528

/-! ## A368528.P9643712506221651883

`∑[A024024(n)]-(n+1)`
-/

namespace A368528.P9643712506221651883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A368528.P9643712506221651883

namespace A368528

/-- `∑[A024024(n)]-(n+1)` -/
def P9643712506221651883.Spec : Prop :=
  ∀ n, P9643712506221651883.a n = A368528 n

end A368528

/-! ## A368528.P1048644088126674595

`∑[A104743(n)]-(n+1)²`
-/

namespace A368528.P1048644088126674595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A368528.P1048644088126674595

namespace A368528

/-- `∑[A104743(n)]-(n+1)²` -/
def P1048644088126674595.Spec : Prop :=
  ∀ n, P1048644088126674595.a n = A368528 n

end A368528

/-! ## A368528.P13523293280801834711

`A003462(n+1)-∑[n+1]`
-/

namespace A368528.P13523293280801834711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A368528.P13523293280801834711

namespace A368528

/-- `A003462(n+1)-∑[n+1]` -/
def P13523293280801834711.Spec : Prop :=
  ∀ n, P13523293280801834711.a n = A368528 n

end A368528

/-! ## A368528.P7232792265251730178

`A261547(n+1)-∑[n+1]`
-/

namespace A368528.P7232792265251730178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A368528.P7232792265251730178

namespace A368528

/-- `A261547(n+1)-∑[n+1]` -/
def P7232792265251730178.Spec : Prop :=
  ∀ n, P7232792265251730178.a n = A368528 n

end A368528

/-! ## A368528.P15893446767981391737

`A061982(n)+A003462(n)`
-/

namespace A368528.P15893446767981391737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061982 n + A003462 n

end

end A368528.P15893446767981391737

namespace A368528

/-- `A061982(n)+A003462(n)` -/
def P15893446767981391737.Spec : Prop :=
  ∀ n, P15893446767981391737.a n = A368528 n

end A368528

/-! ## A368528.P9198979253485473836

`A029858(n+1)-A000096(n)`
-/

namespace A368528.P9198979253485473836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) - A000096 n

end

end A368528.P9198979253485473836

namespace A368528

/-- `A029858(n+1)-A000096(n)` -/
def P9198979253485473836.Spec : Prop :=
  ∀ n, P9198979253485473836.a n = A368528 n

end A368528

/-! ## A368528.P4997860942228755686

`A053152(n+1)+A014846(n+1)`
-/

namespace A368528.P4997860942228755686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + A014846 (n + 1)

end

end A368528.P4997860942228755686

namespace A368528

/-- `A053152(n+1)+A014846(n+1)` -/
def P4997860942228755686.Spec : Prop :=
  ∀ n, P4997860942228755686.a n = A368528 n

end A368528

/-! ## A368528.P12453631780485541268

`A048328(2*n+1)-A000217(n+1)`
-/

namespace A368528.P12453631780485541268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n + 1) - A000217 (n + 1)

end

end A368528.P12453631780485541268

namespace A368528

/-- `A048328(2*n+1)-A000217(n+1)` -/
def P12453631780485541268.Spec : Prop :=
  ∀ n, P12453631780485541268.a n = A368528 n

end A368528

/-!
# A368529: a(n) = Sum_{k=1..n} k^2 * 4^(n-k).

The programs for A368529, the canonical program `A368529.P8468979397596949299` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368529 has offset 0).

The definition of A368529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368529.P8468979397596949299

`4*a(n-1)+n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368529

/-- `4*a(n-1)+n²` -/
def P8468979397596949299.Spec : Prop :=
  ∀ n, (P8468979397596949299.a n : ℤ) = A368529 n

theorem P8468979397596949299.correct : P8468979397596949299.Spec := by
  intro n
  simp only [A368529]

end A368529

/-! ## A368529.P16573084629757814020

`7*a(n-1)-15*a(n-2)+13*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=41`
-/

namespace A368529.P16573084629757814020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 41] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 13 * a (n - 3) - 4 * a (n - 4)

end

end A368529.P16573084629757814020

namespace A368529

/-- `7*a(n-1)-15*a(n-2)+13*a(n-3)-4*a(n-4)` -/
def P16573084629757814020.Spec : Prop :=
  ∀ n, P16573084629757814020.a n = A368529 n

end A368529

/-! ## A368529.P10573791086374451757

`(5*4^(n+1)-(9*n²+24*n+20))/27`
-/

namespace A368529.P10573791086374451757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 4 ^ (n + 1) : ℤ) - (9 * n ^ 2 + 24 * n + 20 : ℤ) : ℚ) / 27

end

end A368529.P10573791086374451757

namespace A368529

/-- `(5*4^(n+1)-(9*n²+24*n+20))/27` -/
def P10573791086374451757.Spec : Prop :=
  ∀ n, P10573791086374451757.a n = (A368529 n : ℚ)

theorem P10573791086374451757.correct : P10573791086374451757.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A368529, Nat.add_sub_cancel, A368529.P10573791086374451757.a, A368529.P8468979397596949299.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A368529, Nat.add_sub_cancel, A368529.P10573791086374451757.a, A368529.P8468979397596949299.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A368529

/-! ## A368529.P11785199225276046997

`∑[∑[ogf((x+x^2)/(1-5x+4x^2))]]`
-/

namespace A368529.P11785199225276046997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P11785199225276046997

namespace A368529

/-- `∑[∑[ogf((x+x^2)/(1-5x+4x^2))]]` -/
def P11785199225276046997.Spec : Prop :=
  ∀ n, P11785199225276046997.a n = A368529 n

end A368529

/-! ## A368529.P5199608776998857555

`∑[∑[4*a(n-1)+2]]` with `a(0)=0, a(1)=1`
-/

namespace A368529.P5199608776998857555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  4 * f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P5199608776998857555

namespace A368529

/-- `∑[∑[4*a(n-1)+2]]` -/
def P5199608776998857555.Spec : Prop :=
  ∀ n, (P5199608776998857555.a n : ℤ) = A368529 n

end A368529

/-! ## A368529.P9166817381449007804

`∑[∑[∑[4*a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A368529.P9166817381449007804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f3 =>
  4 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P9166817381449007804

namespace A368529

/-- `∑[∑[∑[4*a(n-1)]]]` -/
def P9166817381449007804.Spec : Prop :=
  ∀ n, (P9166817381449007804.a n : ℤ) = A368529 n

end A368529

/-! ## A368529.P15412899561346622104

`floor(4*a(n-1))+n*n` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368529.P15412899561346622104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + n * n

end

end A368529.P15412899561346622104

namespace A368529

/-- `floor(4*a(n-1))+n*n` -/
def P15412899561346622104.Spec : Prop :=
  ∀ n, (P15412899561346622104.a n : ℤ) = A368529 n

theorem P15412899561346622104.correct : P15412899561346622104.Spec := by
  intro n
  simp only [A368529, Nat.add_sub_cancel, A368529.P15412899561346622104.a, A368529.P8468979397596949299.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368529

/-! ## A368529.P16920270663274737377

`n*n+2*2*a(n-1)` with `a(0)=0`
-/

namespace A368529.P16920270663274737377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * n + 2 * (2 * a (n - 1))

end

end A368529.P16920270663274737377

namespace A368529

/-- `n*n+2*2*a(n-1)` -/
def P16920270663274737377.Spec : Prop :=
  ∀ n, (P16920270663274737377.a n : ℤ) = A368529 n

end A368529

/-! ## A368529.P134353369269307063

`n²+a(n-1)/(1/2)²` with `a(0)=0`
-/

namespace A368529.P134353369269307063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℚ) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A368529.P134353369269307063

namespace A368529

/-- `n²+a(n-1)/(1/2)²` -/
def P134353369269307063.Spec : Prop :=
  ∀ n, P134353369269307063.a n = (A368529 n : ℚ)

end A368529

/-! ## A368529.P14965745008787733877

`floor(5*a(n-1)-(a(n-1)-n²))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368529.P14965745008787733877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * a (n - 1) - (a (n - 1) - (n ^ 2 : ℤ))

end

end A368529.P14965745008787733877

namespace A368529

/-- `floor(5*a(n-1)-(a(n-1)-n²))` -/
def P14965745008787733877.Spec : Prop :=
  ∀ n, P14965745008787733877.a n = A368529 n

end A368529

/-! ## A368529.P8776743259990130619

`∑[A141291(n)]`
-/

namespace A368529.P8776743259990130619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P8776743259990130619

namespace A368529

/-- `∑[A141291(n)]` -/
def P8776743259990130619.Spec : Prop :=
  ∀ n, P8776743259990130619.a n = A368529 n

end A368529

/-! ## A368529.P12071362585140214428

`∑[A172285(2*n)]`
-/

namespace A368529.P12071362585140214428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P12071362585140214428

namespace A368529

/-- `∑[A172285(2*n)]` -/
def P12071362585140214428.Spec : Prop :=
  ∀ n, P12071362585140214428.a n = A368529 n

end A368529

/-! ## A368529.P4144488436842294872

`∑[A164044(n)-(n+1)]`
-/

namespace A368529.P4144488436842294872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P4144488436842294872

namespace A368529

/-- `∑[A164044(n)-(n+1)]` -/
def P4144488436842294872.Spec : Prop :=
  ∀ n, P4144488436842294872.a n = A368529 n

end A368529

/-! ## A368529.P5903427566032983871

`∑[A053088(2*n+1)-A001045(2*n)]`
-/

namespace A368529.P5903427566032983871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (2 * n + 1) - A001045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P5903427566032983871

namespace A368529

/-- `∑[A053088(2*n+1)-A001045(2*n)]` -/
def P5903427566032983871.Spec : Prop :=
  ∀ n, P5903427566032983871.a n = A368529 n

end A368529

/-! ## A368529.P13098767605733789472

`∑[A172416(2*n+1)-A172416(2*n)]`
-/

namespace A368529.P13098767605733789472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 (2 * n + 1) - A172416 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P13098767605733789472

namespace A368529

/-- `∑[A172416(2*n+1)-A172416(2*n)]` -/
def P13098767605733789472.Spec : Prop :=
  ∀ n, P13098767605733789472.a n = A368529 n

end A368529

/-! ## A368529.P11540647937185882600

`∑[∑[A020989(n)]-A020989(n)]`
-/

namespace A368529.P11540647937185882600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A020989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P11540647937185882600

namespace A368529

/-- `∑[∑[A020989(n)]-A020989(n)]` -/
def P11540647937185882600.Spec : Prop :=
  ∀ n, P11540647937185882600.a n = A368529 n

end A368529

/-! ## A368529.P5415448141859752314

`A000975(2*n+1)-∑[A053088(2*n)]`
-/

namespace A368529.P5415448141859752314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368529.P5415448141859752314

namespace A368529

/-- `A000975(2*n+1)-∑[A053088(2*n)]` -/
def P5415448141859752314.Spec : Prop :=
  ∀ n, P5415448141859752314.a n = A368529 n

end A368529

/-!
# A368530: a(n) = Sum_{k=1..n} k^3 * 4^(n-k).

The programs for A368530, the canonical program `A368530.P7495635579187238096` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368530 has offset 0).

The definition of A368530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368530.P7495635579187238096

`4*a(n-1)+n^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368530

/-- `4*a(n-1)+n^3` -/
def P7495635579187238096.Spec : Prop :=
  ∀ n, (P7495635579187238096.a n : ℤ) = A368530 n

theorem P7495635579187238096.correct : P7495635579187238096.Spec := by
  intro n
  simp only [A368530]

end A368530

/-! ## A368530.P10419252291535766006

`(11*4^(n+1)-(9*n^3+36*n²+60*n+44))/27`
-/

namespace A368530.P10419252291535766006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 4 ^ (n + 1) : ℤ) - (9 * n ^ 3 + 36 * n ^ 2 + 60 * n + 44 : ℤ) : ℚ) / 27

end

end A368530.P10419252291535766006

namespace A368530

/-- `(11*4^(n+1)-(9*n^3+36*n²+60*n+44))/27` -/
def P10419252291535766006.Spec : Prop :=
  ∀ n, P10419252291535766006.a n = (A368530 n : ℚ)

theorem P10419252291535766006.correct : P10419252291535766006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A368530, Nat.add_sub_cancel, A368530.P10419252291535766006.a, A368530.P7495635579187238096.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A368530, Nat.add_sub_cancel, A368530.P10419252291535766006.a, A368530.P7495635579187238096.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A368530

/-! ## A368530.P3250248882132799838

`n*n²+4*a(n-1)` with `a(0)=0`
-/

namespace A368530.P3250248882132799838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * n ^ 2 + 4 * a (n - 1)

end

end A368530.P3250248882132799838

namespace A368530

/-- `n*n²+4*a(n-1)` -/
def P3250248882132799838.Spec : Prop :=
  ∀ n, (P3250248882132799838.a n : ℤ) = A368530 n

end A368530

/-! ## A368530.P7104264477940574283

`floor(4*a(n-1)+n*n*n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368530.P7104264477940574283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + n * (n * n)

end

end A368530.P7104264477940574283

namespace A368530

/-- `floor(4*a(n-1)+n*n*n)` -/
def P7104264477940574283.Spec : Prop :=
  ∀ n, (P7104264477940574283.a n : ℤ) = A368530 n

theorem P7104264477940574283.correct : P7104264477940574283.Spec := by
  intro n
  simp only [A368530, Nat.add_sub_cancel, A368530.P7104264477940574283.a, A368530.P7495635579187238096.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368530

/-! ## A368530.P5269049564044735780

`2*2*a(n-1)+n*n*n` with `a(0)=0`
-/

namespace A368530.P5269049564044735780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 * a (n - 1)) + n * (n * n)

end

end A368530.P5269049564044735780

namespace A368530

/-- `2*2*a(n-1)+n*n*n` -/
def P5269049564044735780.Spec : Prop :=
  ∀ n, (P5269049564044735780.a n : ℤ) = A368530 n

theorem P5269049564044735780.correct : P5269049564044735780.Spec := by
  intro n
  simp only [A368530, Nat.add_sub_cancel, A368530.P5269049564044735780.a, A368530.P7495635579187238096.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368530

/-!
# A368531: Numbers whose binary indices are all powers of 3, where a binary index of n (row n of A048793) is any position of a 1 in its reversed binary expansion.

The programs for A368531, there is no canonical definition to state claims against.
-/

/-! ## A368531.P4093656788099241250

`A342707(eq[15, A180662(n)])`
-/

namespace A368531.P4093656788099241250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368531.P4093656788099241250

/-! ## A368531.P9208677536197591365

`A342707(A000096(n+3)+5)`
-/

namespace A368531.P9208677536197591365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342707 (A000096 (n + 3) + 5).toNat

end

end A368531.P9208677536197591365

/-! ## A368531.P5400499054413483478

`filter[A004869(n+1), A151666(#)]`
-/

namespace A368531.P5400499054413483478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A151666 (f1 j).toNat = 1) n)

end

end A368531.P5400499054413483478

/-!
# A368533: Numbers whose binary indices are all squarefree.

The programs for A368533, there is no canonical definition to state claims against.
-/

/-! ## A368533.P14931367443407134367

`lt[A326128(A116417(n)), 1]`
-/

namespace A368533.P14931367443407134367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A116417 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368533.P14931367443407134367

/-! ## A368533.P3880062833887801388

`eq[A007913(A271410(n)), A271410(n)]`
-/

namespace A368533.P3880062833887801388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A271410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368533.P3880062833887801388

/-! ## A368533.P13535177484460811128

`lt[A296885(n+1), xor(8, n)]`
-/

namespace A368533.P13535177484460811128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296885 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368533.P13535177484460811128

/-! ## A368533.P11159764190256362748

`lt[A317073(val(or(7, n)+1, 2)), 17]`
-/

namespace A368533.P11159764190256362748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317073 (SequenceMachineLib.valuation (Nat.lor 7 n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368533.P11159764190256362748

/-! ## A368533.P7607190488424521886

`lt[A090968(val(or(7, n)+1, 2)), 43]`
-/

namespace A368533.P7607190488424521886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090968 (SequenceMachineLib.valuation (Nat.lor 7 n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368533.P7607190488424521886

/-! ## A368533.P10355910503333245007

`eq[1, A053735(A339971(n))]`
-/

namespace A368533.P10355910503333245007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A339971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368533.P10355910503333245007

/-! ## A368533.P741426826654727160

`lt[A001057(A217558(2*n)), 1]`
-/

namespace A368533.P741426826654727160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A217558 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368533.P741426826654727160

/-! ## A368533.P16187059022633541813

`lt[1, A035457(A217558(2*n+1))]`
-/

namespace A368533.P16187059022633541813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A217558 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A368533.P16187059022633541813

/-! ## A368533.P710576031459240572

`2*n+1-A124474(A124471(n+1))`
-/

namespace A368533.P710576031459240572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A124474 (A124471 (n + 1)).toNat

end

end A368533.P710576031459240572

/-! ## A368533.P10529996614844436298

`eq[A106486(n), A326031(n)]`
-/

namespace A368533.P10529996614844436298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368533.P10529996614844436298

/-!
# A368534: a(n) = Sum_{k=1..n} binomial(k+1,2) * n^(n-k).

The programs for A368534, there is no canonical definition to state claims against.
-/

/-! ## A368534.P16944567754211614940

`A385608(A238244(n+1)-1)`
-/

namespace A368534.P16944567754211614940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385608 (A238244 (n + 1) - 1).toNat

end

end A368534.P16944567754211614940

/-!
# A368535: a(n) = Sum_{k=1..n} binomial(k+2,3) * n^(n-k).

The programs for A368535, there is no canonical definition to state claims against.
-/

/-! ## A368535.P17590015285571724454

`xor((n-1)^(n%2), A319629(2*(n+1)))`
-/

namespace A368535.P17590015285571724454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ (n % 2)) (A319629 (2 * (n + 1)))

end

end A368535.P17590015285571724454

/-!
# A368536: a(n) = Sum_{k=1..n} binomial(k+1,2) * n^k.

The programs for A368536, there is no canonical definition to state claims against.
-/

/-! ## A368536.P14238678136756628162

`A091065(∏[∑[A091070(n)]])`
-/

namespace A368536.P14238678136756628162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368536.P14238678136756628162

/-!
# A368537: a(n) = Sum_{k=1..n} binomial(k+2,3) * n^k.

The programs for A368537, there is no canonical definition to state claims against.
-/

/-! ## A368537.P12456214247107039178

`n*A130823(A054382(n+1))`
-/

namespace A368537.P12456214247107039178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130823 (A054382 (n + 1)).toNat

end

end A368537.P12456214247107039178

/-!
# A368538: Integers k such that there exists a group of order k with exactly k subgroups.

The programs for A368538, there is no canonical definition to state claims against.
-/

/-! ## A368538.P11655482819609685790

`lt[0, A384727(n+1)]+1`
-/

namespace A368538.P11655482819609685790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368538.P11655482819609685790

/-!
# A368540: The smallest unitary divisor d of n such that n/d is a term of A138302.

The programs for A368540, there is no canonical definition to state claims against.
-/

/-! ## A368540.P8422773875795684543

`(n+1)/A367168(n+1)`
-/

namespace A368540.P8422773875795684543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367168 (n + 1) : ℚ)

end

end A368540.P8422773875795684543

/-! ## A368540.P16236156680955143863

`A367513(n+1)*A368167(A367514(n+1))`
-/

namespace A368540.P16236156680955143863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (n + 1) * A368167 (A367514 (n + 1)).toNat

end

end A368540.P16236156680955143863

/-! ## A368540.P14919405253954058779

`A372328(A356194(n+1))/A372328(n+1)`
-/

namespace A368540.P14919405253954058779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372328 (A356194 (n + 1)).toNat : ℚ) / (A372328 (n + 1) : ℚ)

end

end A368540.P14919405253954058779

/-! ## A368540.P7845775166655771426

`A383764(n+1)/A383764(A356194(n+1))`
-/

namespace A368540.P7845775166655771426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383764 (n + 1) : ℚ) / (A383764 (A356194 (n + 1)).toNat : ℚ)

end

end A368540.P7845775166655771426

/-! ## A368540.P2118307390936873649

`A372328(A356194(n+1)*A372328(n+1))`
-/

namespace A368540.P2118307390936873649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (A356194 (n + 1) * A372328 (n + 1)).toNat

end

end A368540.P2118307390936873649

/-! ## A368540.P12317165648119187894

`A365297(A356194(n+1)*A365297(n+1))`
-/

namespace A368540.P12317165648119187894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A356194 (n + 1) * A365297 (n + 1)).toNat

end

end A368540.P12317165648119187894

/-!
# A368541: The number of exponential divisors of the nonsquarefree numbers.

The programs for A368541, the canonical program `A368541.P15025148590720608101` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368541 has offset 1).

The definition of A368541 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368541.P15025148590720608101

`A049419(A013929(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368541

/-- `A049419(A013929(n+1))` -/
def P15025148590720608101.Spec : Prop :=
  ∀ n, P15025148590720608101.a n = A368541 (n + 1)

theorem P15025148590720608101.correct : P15025148590720608101.Spec := by
  intro n
  simp only [A368541, Nat.add_sub_cancel]

end A368541

/-! ## A368541.P5221315555374862960

`∏{e}[A013929(n+1), A000005(#)]`
-/

namespace A368541.P5221315555374862960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A368541.P5221315555374862960

namespace A368541

/-- `∏{e}[A013929(n+1), A000005(#)]` -/
def P5221315555374862960.Spec : Prop :=
  ∀ n, P5221315555374862960.a n = A368541 (n + 1)

end A368541

/-! ## A368541.P15917984242491395198

`A049419(A368040(n+1))`
-/

namespace A368541.P15917984242491395198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A368040 (n + 1)).toNat

end

end A368541.P15917984242491395198

namespace A368541

/-- `A049419(A368040(n+1))` -/
def P15917984242491395198.Spec : Prop :=
  ∀ n, P15917984242491395198.a n = A368541 (n + 1)

end A368541

/-! ## A368541.P14743409670568321778

`A049419(A162966(n+2))`
-/

namespace A368541.P14743409670568321778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A162966 (n + 2)).toNat

end

end A368541.P14743409670568321778

namespace A368541

/-- `A049419(A162966(n+2))` -/
def P14743409670568321778.Spec : Prop :=
  ∀ n, P14743409670568321778.a n = A368541 (n + 1)

end A368541

/-! ## A368541.P15378950324610543502

`A049419(lt[1, A284345(n)])`
-/

namespace A368541.P15378950324610543502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368541.P15378950324610543502

namespace A368541

/-- `A049419(lt[1, A284345(n)])` -/
def P15378950324610543502.Spec : Prop :=
  ∀ n, P15378950324610543502.a n = A368541 (n + 1)

end A368541

/-!
# A368542: The number of divisors of n whose prime factors are all Mersenne primes (A000668).

The programs for A368542, the canonical program `A368542.P12499842272717580429` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368542 has offset 1).

The definition of A368542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368542.P15682456187262305194

`∑{d}[A000265(n+1), A364252(#)]`
-/

namespace A368542.P15682456187262305194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A364252 d

end

end A368542.P15682456187262305194

namespace A368542

/-- `∑{d}[A000265(n+1), A364252(#)]` -/
def P15682456187262305194.Spec : Prop :=
  ∀ n, P15682456187262305194.a n = A368542 (n + 1)

end A368542

/-! ## A368542.P12499842272717580429

`∑{d}[n+1, A059841(#-1)*A364252((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A368542

/-- `∑{d}[n+1, A059841(#-1)*A364252((n+1)/#)]` -/
def P12499842272717580429.Spec : Prop :=
  ∀ n, P12499842272717580429.a n = A368542 (n + 1)

theorem P12499842272717580429.correct : P12499842272717580429.Spec := by
  intro n
  simp only [A368542, Nat.add_sub_cancel]

end A368542

/-! ## A368542.P18031385888315609156

`A007949(A056119(3*(n+1)))*A147645(3*(n+1))`
-/

namespace A368542.P18031385888315609156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A056119 (3 * (n + 1))).toNat * A147645 (3 * (n + 1))

end

end A368542.P18031385888315609156

namespace A368542

/-- `A007949(A056119(3*(n+1)))*A147645(3*(n+1))` -/
def P18031385888315609156.Spec : Prop :=
  ∀ n, P18031385888315609156.a n = A368542 (n + 1)

end A368542

/-! ## A368542.P8904612832054698611

`A332268(A248101(n+1)%A359890(2*(n+2)))`
-/

namespace A368542.P8904612832054698611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (Int.tmod (A248101 (n + 1)) (A359890 (2 * (n + 2)))).toNat

end

end A368542.P8904612832054698611

namespace A368542

/-- `A332268(A248101(n+1)%A359890(2*(n+2)))` -/
def P8904612832054698611.Spec : Prop :=
  ∀ n, P8904612832054698611.a n = A368542 (n + 1)

end A368542

/-! ## A368542.P3299567568206380812

`A083888(A283980(2*(n+1))*A334230(n+1))`
-/

namespace A368542.P3299567568206380812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A283980 (2 * (n + 1)) * A334230 (n + 1)).toNat

end

end A368542.P3299567568206380812

namespace A368542

/-- `A083888(A283980(2*(n+1))*A334230(n+1))` -/
def P3299567568206380812.Spec : Prop :=
  ∀ n, P3299567568206380812.a n = A368542 (n + 1)

end A368542

/-!
# A368543: The number of divisors of n whose prime factors are all of the form 2^k + 1 (A092506).

The programs for A368543, there is no canonical definition to state claims against.
-/

/-! ## A368543.P11446124624584626650

`A055229(A243752(2*n))*A355583(n+1)`
-/

namespace A368543.P11446124624584626650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A243752 (2 * n)).toNat * A355583 (n + 1)

end

end A368543.P11446124624584626650

/-! ## A368543.P7794988929666057522

`A000005(n+1)/A352517(record[xor(3, n)])`
-/

namespace A368543.P7794988929666057522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A352517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ)

end

end A368543.P7794988929666057522

/-! ## A368543.P14663220881683348555

`A000005(n+1)/A352517(A004767(n))`
-/

namespace A368543.P14663220881683348555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A352517 (A004767 n).toNat : ℚ)

end

end A368543.P14663220881683348555

/-! ## A368543.P17757530260758874494

`A000005(n+1)/A352517(A042965(3*(n+1)))`
-/

namespace A368543.P17757530260758874494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A352517 (A042965 (3 * (n + 1))).toNat : ℚ)

end

end A368543.P17757530260758874494

/-! ## A368543.P5774795281245181959

`ceil(∏{e}[n+1, 6/7+#])/A124769(A342463(n))`
-/

namespace A368543.P5774795281245181959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉ : ℚ) / (A124769 (A342463 n).toNat : ℚ)

end

end A368543.P5774795281245181959

/-!
# A368544: The number of divisors of n whose prime factors are all of the form k^2+1.

The programs for A368544, there is no canonical definition to state claims against.
-/

/-! ## A368544.P10709721105414686451

`A347706(A250120(n+1))+A007814(2*(n+1))`
-/

namespace A368544.P10709721105414686451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A250120 (n + 1)).toNat + A007814 (2 * (n + 1))

end

end A368544.P10709721105414686451

/-! ## A368544.P1935515380126246465

`A000005(A132741(n+1)%A169790(n+1))`
-/

namespace A368544.P1935515380126246465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A132741 (n + 1)) (A169790 (n + 1))).toNat

end

end A368544.P1935515380126246465

/-! ## A368544.P10288628696740420182

`A360326(A045970(n+1))`
-/

namespace A368544.P10288628696740420182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (A045970 (n + 1)).toNat

end

end A368544.P10288628696740420182

/-! ## A368544.P12229536052540795373

`A323300(2^A132741(n+1))`
-/

namespace A368544.P12229536052540795373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323300 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A132741 (n + 1) : ℤ))).toNat

end

end A368544.P12229536052540795373

/-! ## A368544.P18274000377537466777

`A323305(2^A132741(n+1))`
-/

namespace A368544.P18274000377537466777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A132741 (n + 1) : ℤ))).toNat

end

end A368544.P18274000377537466777

/-!
# A368545: a(n) = (6*n)!*(9*n)!/((2*n)!*(3*n)!*((5*n)!)^2).

The programs for A368545, there is no canonical definition to state claims against.
-/

/-! ## A368545.P16468026197576535848

`A004355(n)*A295441(n)`
-/

namespace A368545.P16468026197576535848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A295441 n

end

end A368545.P16468026197576535848

/-!
# A368546: Alternative version of the Markov tree A327345.

The programs for A368546, there is no canonical definition to state claims against.
-/

/-! ## A368546.P12514499058920984318

`∩[∑[A324797(n+1)], A002559(n+3)]`
-/

namespace A368546.P12514499058920984318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324797 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A368546.P12514499058920984318

/-! ## A368546.P12263358075568045326

`A002559(lt[A291538(n+2), A210981(n)])`
-/

namespace A368546.P12263358075568045326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368546.P12263358075568045326

/-!
# A368548: Number of palindromic partitions of n.

The programs for A368548, there is no canonical definition to state claims against.
-/

/-! ## A368548.P238975249564853049

`A056239(2^A375783(n+1))`
-/

namespace A368548.P238975249564853049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A375783 (n + 1) : ℤ))).toNat

end

end A368548.P238975249564853049

/-! ## A368548.P5604793471810551447

`A375782(2^A375783(n+1))`
-/

namespace A368548.P5604793471810551447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A375783 (n + 1) : ℤ))).toNat

end

end A368548.P5604793471810551447

/-! ## A368548.P9560193226793673100

`A375783(n+1)%A208734(n+2)`
-/

namespace A368548.P9560193226793673100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375783 (n + 1)) (A208734 (n + 2))

end

end A368548.P9560193226793673100

/-! ## A368548.P3870317868931927187

`A375783(n+1-A332643(3*(n+1))%2)`
-/

namespace A368548.P3870317868931927187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375783 ((n + 1 : ℤ) - Int.tmod (A332643 (3 * (n + 1))) 2).toNat

end

end A368548.P3870317868931927187

/-! ## A368548.P7429063284459935685

`A375783(n+1)+A000007(A114299(n))`
-/

namespace A368548.P7429063284459935685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375783 (n + 1) + A000007 (A114299 n).toNat

end

end A368548.P7429063284459935685

/-!
# A368550: Numbers such that the square root of the sum of each digit cubed is equal to the digital sum of the number.

The programs for A368550, there is no canonical definition to state claims against.
-/

/-! ## A368550.P4305590900505992564

`eq[A055012(n), A118881(n)]`
-/

namespace A368550.P4305590900505992564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P4305590900505992564

/-! ## A368550.P3124195263540138489

`eq[A007953(n)², A055012(n)]`
-/

namespace A368550.P3124195263540138489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P3124195263540138489

/-! ## A368550.P6383581962991507314

`eq[A225051(n)-n^3, A118881(n)]`
-/

namespace A368550.P6383581962991507314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225051 n - (n ^ 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P6383581962991507314

/-! ## A368550.P3984204871659278518

`eq[A225051(n)-n^3, A007953(n)²]`
-/

namespace A368550.P3984204871659278518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225051 n - (n ^ 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P3984204871659278518

/-! ## A368550.P3454045872557789676

`eq[A118881(n)+A007953(n), A065137(n)]`
-/

namespace A368550.P3454045872557789676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n + A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P3454045872557789676

/-! ## A368550.P6146898822839564461

`eq[A065137(n)+n-A062028(n), A118881(n)]`
-/

namespace A368550.P6146898822839564461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n + ((n : ℤ) - A062028 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P6146898822839564461

/-! ## A368550.P7769941360406808839

`eq[A065137(n)+n-A062028(n), A007953(n)²]`
-/

namespace A368550.P7769941360406808839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n + ((n : ℤ) - A062028 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P7769941360406808839

/-! ## A368550.P2390468054106319214

`eq[A065137(n)+n-A062028(n), (A118880(n)^(1/3))²]`
-/

namespace A368550.P2390468054106319214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n + ((n : ℤ) - A062028 n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A368550.P2390468054106319214

/-! ## A368550.P6608385159802098013

`eq[A065137(n)+n-A062028(n), (A160939(n+1)-(n+1))²]`
-/

namespace A368550.P6608385159802098013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n + ((n : ℤ) - A062028 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) - (n + 1 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368550.P6608385159802098013

/-!
# A368553: a(n) = Sum_{k=0..n} k^k * 2^(n-k).

The programs for A368553, the canonical program `A368553.P4158758406991814508` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368553 has offset 0).

The definition of A368553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368553.P4158758406991814508

`2*a(n-1)+n^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368553

/-- `2*a(n-1)+n^n` -/
def P4158758406991814508.Spec : Prop :=
  ∀ n, (P4158758406991814508.a n : ℤ) = A368553 n

theorem P4158758406991814508.correct : P4158758406991814508.Spec := by
  intro n
  simp only [A368553]

end A368553

/-! ## A368553.P4939582626825042344

`2^n*∑[(n/2)^n]`
-/

namespace A368553.P4939582626825042344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368553.P4939582626825042344

namespace A368553

/-- `2^n*∑[(n/2)^n]` -/
def P4939582626825042344.Spec : Prop :=
  ∀ n, P4939582626825042344.a n = (A368553 n : ℚ)

end A368553

/-! ## A368553.P2708009140028065472

`a(n-1)+a(n-1)+n^n` with `a(0)=1`
-/

namespace A368553.P2708009140028065472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + n ^ n)

end

end A368553.P2708009140028065472

namespace A368553

/-- `a(n-1)+a(n-1)+n^n` -/
def P2708009140028065472.Spec : Prop :=
  ∀ n, (P2708009140028065472.a n : ℤ) = A368553 n

theorem P2708009140028065472.correct : P2708009140028065472.Spec := by
  intro n
  simp only [A368553, Nat.add_sub_cancel, A368553.P2708009140028065472.a, A368553.P4158758406991814508.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368553

/-! ## A368553.P15751695435964270451

`n^n-a(n-1)/(1/2-1)` with `a(0)=1`
-/

namespace A368553.P15751695435964270451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℚ) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A368553.P15751695435964270451

namespace A368553

/-- `n^n-a(n-1)/(1/2-1)` -/
def P15751695435964270451.Spec : Prop :=
  ∀ n, P15751695435964270451.a n = (A368553 n : ℚ)

end A368553

/-! ## A368553.P5660839157108231607

`A000312(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A368553.P5660839157108231607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000312 n + 2 * a (n - 1)

end

end A368553.P5660839157108231607

namespace A368553

/-- `A000312(n)+2*a(n-1)` -/
def P5660839157108231607.Spec : Prop :=
  ∀ n, P5660839157108231607.a n = A368553 n

end A368553

/-!
# A368554: a(n) is the number of triangular partitions of size n with two removable cells.

The programs for A368554, there is no canonical definition to state claims against.
-/

/-! ## A368554.P9661829493722622931

`A352882(n+1)-A368556(n+1)`
-/

namespace A368554.P9661829493722622931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352882 (n + 1) - A368556 (n + 1)

end

end A368554.P9661829493722622931

/-!
# A368555: a(n) = Sum_{k=0..n} k! * 3^(n-k).

The programs for A368555, the canonical program `A368555.P8950525913513879578` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368555 has offset 0).

The definition of A368555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368555.P8950525913513879578

`3*a(n-1)+n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368555

/-- `3*a(n-1)+n!` -/
def P8950525913513879578.Spec : Prop :=
  ∀ n, (P8950525913513879578.a n : ℤ) = A368555 n

theorem P8950525913513879578.correct : P8950525913513879578.Spec := by
  intro n
  simp only [A368555]

end A368555

/-! ## A368555.P15049900378859773386

`(n+3)*a(n-1)-3*n*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A368555.P15049900378859773386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (3 * n : ℤ) * a (n - 2)

end

end A368555.P15049900378859773386

namespace A368555

/-- `(n+3)*a(n-1)-3*n*a(n-2)` -/
def P15049900378859773386.Spec : Prop :=
  ∀ n, P15049900378859773386.a n = A368555 n

end A368555

/-! ## A368555.P3257897517100469847

`a(n-1)+a(n-1)+a(n-1)+n!` with `a(0)=1`
-/

namespace A368555.P3257897517100469847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + Nat.factorial n))

end

end A368555.P3257897517100469847

namespace A368555

/-- `a(n-1)+a(n-1)+a(n-1)+n!` -/
def P3257897517100469847.Spec : Prop :=
  ∀ n, (P3257897517100469847.a n : ℤ) = A368555 n

theorem P3257897517100469847.correct : P3257897517100469847.Spec := by
  intro n
  simp only [A368555, Nat.add_sub_cancel, A368555.P3257897517100469847.a, A368555.P8950525913513879578.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368555

/-! ## A368555.P3812740816826175192

`A000142(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A368555.P3812740816826175192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000142 n + 3 * a (n - 1)

end

end A368555.P3812740816826175192

namespace A368555

/-- `A000142(n)+3*a(n-1)` -/
def P3812740816826175192.Spec : Prop :=
  ∀ n, P3812740816826175192.a n = A368555 n

end A368555

/-! ## A368555.P1501954756606341435

`A028421(∑[n])+3*a(n-1)` with `a(0)=1`
-/

namespace A368555.P1501954756606341435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 * a (n - 1)

end

end A368555.P1501954756606341435

namespace A368555

/-- `A028421(∑[n])+3*a(n-1)` -/
def P1501954756606341435.Spec : Prop :=
  ∀ n, P1501954756606341435.a n = A368555 n

end A368555

/-!
# A368556: a(n) is the number of triangular partitions of size n with just one removable cell.

The programs for A368556, there is no canonical definition to state claims against.
-/

/-! ## A368556.P3613306847599540342

`A352882(n+1)-A368554(n+1)`
-/

namespace A368556.P3613306847599540342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352882 (n + 1) - A368554 (n + 1)

end

end A368556.P3613306847599540342

/-! ## A368556.P8805631223150236704

`A001227(A084905(n)+A083329(n))`
-/

namespace A368556.P8805631223150236704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A084905 n + A083329 n).toNat

end

end A368556.P8805631223150236704

/-! ## A368556.P3505343196007714703

`A000005(or(A000005(n+1), A041165(n)))`
-/

namespace A368556.P3505343196007714703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A000005 (n + 1)) (A041165 n)).toNat

end

end A368556.P3505343196007714703

/-! ## A368556.P13973575897878273020

`A145390(or(A014261(n+1), A258348(n)))`
-/

namespace A368556.P13973575897878273020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (Int.lor (A014261 (n + 1)) (A258348 n)).toNat

end

end A368556.P13973575897878273020

/-! ## A368556.P11821701220091081453

`A067824(A214371(n+1)%A379235(n+1))`
-/

namespace A368556.P11821701220091081453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (Int.tmod (A214371 (n + 1)) (A379235 (n + 1))).toNat

end

end A368556.P11821701220091081453

/-!
# A368558: Number of fractions i/n that are in the Cantor set.

The programs for A368558, there is no canonical definition to state claims against.
-/

/-! ## A368558.P3187205516130386708

`A000005(A225094(3*(n+1))+A062503(n+1))`
-/

namespace A368558.P3187205516130386708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A225094 (3 * (n + 1)) + A062503 (n + 1)).toNat

end

end A368558.P3187205516130386708

/-! ## A368558.P6631761081785496616

`A090822(A348252(n+2))*A286324(2*n+5)`
-/

namespace A368558.P6631761081785496616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A348252 (n + 2)).toNat * A286324 (2 * n + 5)

end

end A368558.P6631761081785496616

/-! ## A368558.P17018428726834999559

`A000005(-xor(A270995(2*n+1), -A270995(n)))`
-/

namespace A368558.P17018428726834999559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (-Int.xor (A270995 (2 * n + 1)) (-A270995 n)).toNat

end

end A368558.P17018428726834999559

/-! ## A368558.P2593157296488334423

`A001227(A263091(3*n+4)+A062384(2*(n+1)))`
-/

namespace A368558.P2593157296488334423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A263091 (3 * n + 4) + A062384 (2 * (n + 1))).toNat

end

end A368558.P2593157296488334423

/-!
# A368561: a(n) = Sum_{k=0..n} k! * n^k.

The programs for A368561, there is no canonical definition to state claims against.
-/

/-! ## A368561.P2169168692692302849

`A020656(A115066(n)+A006530(n+1))`
-/

namespace A368561.P2169168692692302849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (A115066 n + A006530 (n + 1)).toNat

end

end A368561.P2169168692692302849

/-!
# A368562: Expansion of g.f. A(x) satisfying A(x - A(x)) = x^2 - x^3.

The programs for A368562, there is no canonical definition to state claims against.
-/

/-! ## A368562.P16175299613515382288

`A047983(A059167(n))+A002293(n)`
-/

namespace A368562.P16175299613515382288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (A059167 n).toNat + A002293 n

end

end A368562.P16175299613515382288

/-! ## A368562.P17943972513678782055

`A057365(A349331(n)+A000108(n))`
-/

namespace A368562.P17943972513678782055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A349331 n + A000108 n).toNat

end

end A368562.P17943972513678782055

/-!
# A368563: Table read by downward antidiagonals: ranked maximum r likelihood of the number of distinguishable marbles in an urn if repeated random sampling of one marble with replacement yields n different marbles before the first repeated marble.

The programs for A368563, there is no canonical definition to state claims against.
-/

/-! ## A368563.P14789819262023995666

`A056160(A010026(n+2)-A034851(n))`
-/

namespace A368563.P14789819262023995666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056160 (A010026 (n + 2) - A034851 n).toNat

end

end A368563.P14789819262023995666

/-! ## A368563.P10456332771258354012

`A210485(n)+A043283(A304901(3*n+5))`
-/

namespace A368563.P10456332771258354012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 n + A043283 (A304901 (3 * n + 5)).toNat

end

end A368563.P10456332771258354012

/-!
# A368564: a(n) = number of pairs (p,q) of partitions of n such that d(p,q) = o(p,q), where d and o are distance functions; see Comments.

The programs for A368564, there is no canonical definition to state claims against.
-/

/-! ## A368564.P180463476055063587

`A001255(n+1)-(A368566(n+1)+A368565(n+1))`
-/

namespace A368564.P180463476055063587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - (A368566 (n + 1) + A368565 (n + 1))

end

end A368564.P180463476055063587

/-!
# A368565: a(n) = number of pairs (p,q) of partitions of n such that d(p,q) < o(p,q), where d and o are distance functions; see Comments.

The programs for A368565, there is no canonical definition to state claims against.
-/

/-! ## A368565.P5696780587630037787

`A001255(n+1)-(A368566(n+1)+A368564(n+1))`
-/

namespace A368565.P5696780587630037787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - (A368566 (n + 1) + A368564 (n + 1))

end

end A368565.P5696780587630037787

/-! ## A368565.P2583594015402896357

`A363346(A000108(n)-A030203(3*(n+1)))`
-/

namespace A368565.P2583594015402896357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363346 (A000108 n - A030203 (3 * (n + 1))).toNat

end

end A368565.P2583594015402896357

/-! ## A368565.P15396153925924972657

`A110898(A182026(n))`
-/

namespace A368565.P15396153925924972657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110898 (A182026 n).toNat

end

end A368565.P15396153925924972657

/-!
# A368566: a(n) = number of pairs (p,q) of partitions of n such that d(p,q) > o(p,q), where d and o are distance functions; see Comments.

The programs for A368566, there is no canonical definition to state claims against.
-/

/-! ## A368566.P265439540922780947

`A001255(n+1)-(A368565(n+1)+A368564(n+1))`
-/

namespace A368566.P265439540922780947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - (A368565 (n + 1) + A368564 (n + 1))

end

end A368566.P265439540922780947

/-!
# A368567: Number of Young tableaux of shape [n, floor(n/2)].

The programs for A368567, the canonical program `A368567.P4927573686977938579` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368567 has offset 0).

The definition of A368567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368567.P4927573686977938579

`A065942(n+1)/A081181(n)*A065942(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A368567

/-- `A065942(n+1)/A081181(n)*A065942(n)` -/
def P4927573686977938579.Spec : Prop :=
  ∀ n, P4927573686977938579.a n = (A368567 n : ℚ)

end A368567

/-! ## A368567.P10152199690959448551

`A030237(A099392(n+1))`
-/

namespace A368567.P10152199690959448551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A099392 (n + 1)).toNat

end

end A368567.P10152199690959448551

namespace A368567

/-- `A030237(A099392(n+1))` -/
def P10152199690959448551.Spec : Prop :=
  ∀ n, P10152199690959448551.a n = A368567 n

end A368567

/-! ## A368567.P12650957611120051743

`A033184(A080827(n+1))`
-/

namespace A368567.P12650957611120051743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A080827 (n + 1)).toNat

end

end A368567.P12650957611120051743

namespace A368567

/-- `A033184(A080827(n+1))` -/
def P12650957611120051743.Spec : Prop :=
  ∀ n, P12650957611120051743.a n = A368567 n

end A368567

/-! ## A368567.P17191607260602133638

`A033184(A099392(n+2))`
-/

namespace A368567.P17191607260602133638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A099392 (n + 2)).toNat

end

end A368567.P17191607260602133638

namespace A368567

/-- `A033184(A099392(n+2))` -/
def P17191607260602133638.Spec : Prop :=
  ∀ n, P17191607260602133638.a n = A368567 n

end A368567

/-! ## A368567.P14212614537194110829

`A130020(A047838(n+2))`
-/

namespace A368567.P14212614537194110829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A047838 (n + 2)).toNat

end

end A368567.P14212614537194110829

namespace A368567

/-- `A130020(A047838(n+2))` -/
def P14212614537194110829.Spec : Prop :=
  ∀ n, P14212614537194110829.a n = A368567 n

end A368567

/-! ## A368567.P10231684218081741938

`A080233(A210981(n))`
-/

namespace A368567.P10231684218081741938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A210981 n).toNat

end

end A368567.P10231684218081741938

namespace A368567

/-- `A080233(A210981(n))` -/
def P10231684218081741938.Spec : Prop :=
  ∀ n, P10231684218081741938.a n = A368567 n

end A368567

/-!
# A368570: Numbers k such that both k and k+1 are the sums of consecutive squares.

The programs for A368570, there is no canonical definition to state claims against.
-/

/-! ## A368570.P12094778495034040985

`∩[A034705(n+1)-1, A034705(n+1)]`
-/

namespace A368570.P12094778495034040985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368570.P12094778495034040985

/-!
# A368571: Triangle read by rows where T(n,k) is the number of positive integers M which have both n and k as factor differences, 1 <= k < n.

The programs for A368571, there is no canonical definition to state claims against.
-/

/-! ## A368571.P4506145856734942842

`A227698(A116672(n+2))`
-/

namespace A368571.P4506145856734942842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227698 (A116672 (n + 2)).toNat

end

end A368571.P4506145856734942842

/-! ## A368571.P9370678522503581535

`A368494(A215703(n+2)^A215703(n))`
-/

namespace A368571.P9370678522503581535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (SequenceMachineLib.roundAway ((A215703 (n + 2) : ℚ) ^ (A215703 n : ℤ))).toNat

end

end A368571.P9370678522503581535

/-! ## A368571.P16603317536021294540

`A335106(A114188(n+1))`
-/

namespace A368571.P16603317536021294540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335106 (A114188 (n + 1)).toNat

end

end A368571.P16603317536021294540

/-! ## A368571.P15575101063064946461

`A335106(A394385(n+1))`
-/

namespace A368571.P15575101063064946461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335106 (A394385 (n + 1)).toNat

end

end A368571.P15575101063064946461

/-! ## A368571.P3731845038299201198

`A056170(lcm(A092271(n+1), A251241(n+1)))`
-/

namespace A368571.P3731845038299201198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (Int.lcm (A092271 (n + 1)) (A251241 (n + 1)))

end

end A368571.P3731845038299201198

/-!
# A368572: Number of refactorable numbers less than n that do not divide n.

The programs for A368572, there is no canonical definition to state claims against.
-/

/-! ## A368572.P8538308393145109032

`A208251(n+1)-A336041(n+1)`
-/

namespace A368572.P8538308393145109032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (n + 1) - A336041 (n + 1)

end

end A368572.P8538308393145109032

/-! ## A368572.P10115407765977027940

`∑[A336040(n+1)]-A336041(n+1)`
-/

namespace A368572.P10115407765977027940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336041 (n + 1)

end

end A368572.P10115407765977027940

/-! ## A368572.P3005511034003320557

`A208251(n+1)-∑{d}[n+1, A336040(#)]`
-/

namespace A368572.P3005511034003320557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A336040 d

end

end A368572.P3005511034003320557

/-! ## A368572.P16071520865107294964

`∑[1-A368625(n+1)]-A336041(n+1)`
-/

namespace A368572.P16071520865107294964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336041 (n + 1)

end

end A368572.P16071520865107294964

/-! ## A368572.P7547542059220103909

`∑[floor(1/A298734(n+1))]-A336041(n+1)`
-/

namespace A368572.P7547542059220103909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A298734 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336041 (n + 1)

end

end A368572.P7547542059220103909

/-! ## A368572.P17910071753261138875

`∑[char[A033950(n+1)-1]]-A336041(n+1)`
-/

namespace A368572.P17910071753261138875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A336041 (n + 1)

end

end A368572.P17910071753261138875

/-! ## A368572.P280607224752124199

`∑[1-A368625(n+1)]-∑{d}[n+1, A336040(#)]`
-/

namespace A368572.P280607224752124199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368625 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f2 n), A336040 d

end

end A368572.P280607224752124199

/-! ## A368572.P3309346267748509434

`∑[A063524(A124332(n+1))]-A336041(n+1)`
-/

namespace A368572.P3309346267748509434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A124332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336041 (n + 1)

end

end A368572.P3309346267748509434

/-! ## A368572.P14549882799927759190

`A208251(n+1)-(A323307(A000040(n+1))-A349658(n+1))`
-/

namespace A368572.P14549882799927759190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (n + 1) - (A323307 (A000040 (n + 1)).toNat - A349658 (n + 1))

end

end A368572.P14549882799927759190

/-!
# A368573: a(n) = Sum_{k=0..n} k! * k^k.

The programs for A368573, there is no canonical definition to state claims against.
-/

/-! ## A368573.P11487238763233063128

`∑[n^n*n!]`
-/

namespace A368573.P11487238763233063128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368573.P11487238763233063128

/-! ## A368573.P12271616714034929669

`∑[n!/n^-n]`
-/

namespace A368573.P12271616714034929669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368573.P12271616714034929669

/-! ## A368573.P7940621422930364613

`∑[A061711(n)]`
-/

namespace A368573.P7940621422930364613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368573.P7940621422930364613

/-! ## A368573.P865962156827353597

`∑[A231601(2*n)]`
-/

namespace A368573.P865962156827353597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368573.P865962156827353597

/-! ## A368573.P4072004791474959354

`∑[A000142(n)*A000312(n)]`
-/

namespace A368573.P4072004791474959354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368573.P4072004791474959354

/-!
# A368574: a(n) = n! * Sum_{k=0..n} binomial(k+2,3) / k!.

The programs for A368574, the canonical program `A368574.P13064191482087021008` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368574 has offset 0).

The definition of A368574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368574.P13064191482087021008

`n*a(n-1)+C(n+2, 3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368574

/-- `n*a(n-1)+C(n+2, 3)` -/
def P13064191482087021008.Spec : Prop :=
  ∀ n, (P13064191482087021008.a n : ℤ) = A368574 n

theorem P13064191482087021008.correct : P13064191482087021008.Spec := by
  intro n
  simp only [A368574]

end A368574

/-! ## A368574.P5766309559134386861

`∑[∑[n]]+n*a(n-1)` with `a(0)=0`
-/

namespace A368574.P5766309559134386861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368574.P5766309559134386861

namespace A368574

/-- `∑[∑[n]]+n*a(n-1)` -/
def P5766309559134386861.Spec : Prop :=
  ∀ n, (P5766309559134386861.a n : ℤ) = A368574 n

end A368574

/-! ## A368574.P8803466073386048728

`n*a(n-1)-∑[a(n-1)-n]` with `a(0)=0`
-/

namespace A368574.P8803466073386048728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368574.P8803466073386048728

namespace A368574

/-- `n*a(n-1)-∑[a(n-1)-n]` -/
def P8803466073386048728.Spec : Prop :=
  ∀ n, P8803466073386048728.a n = A368574 n

end A368574

/-! ## A368574.P2666814097175748927

`lcm(n+1, n*(n+2))/6+a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A368574.P2666814097175748927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6 + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A368574.P2666814097175748927

namespace A368574

/-- `lcm(n+1, n*(n+2))/6+a(n-1)/n^(-1)` -/
def P2666814097175748927.Spec : Prop :=
  ∀ n, P2666814097175748927.a n = (A368574 n : ℚ)

end A368574

/-! ## A368574.P16814489438431801975

`A000292(n)+xor(1, n*a(n-1)+1)` with `a(0)=0`
-/

namespace A368574.P16814489438431801975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000292 n + Int.xor 1 ((n : ℤ) * a (n - 1) + 1)

end

end A368574.P16814489438431801975

namespace A368574

/-- `A000292(n)+xor(1, n*a(n-1)+1)` -/
def P16814489438431801975.Spec : Prop :=
  ∀ n, P16814489438431801975.a n = A368574 n

end A368574

/-!
# A368575: a(n) = n! * Sum_{k=0..n} binomial(k+3,4) / k!.

The programs for A368575, the canonical program `A368575.P18021211317101163683` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368575 has offset 0).

The definition of A368575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368575.P18021211317101163683

`n*a(n-1)+C(n+3, 4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368575

/-- `n*a(n-1)+C(n+3, 4)` -/
def P18021211317101163683.Spec : Prop :=
  ∀ n, (P18021211317101163683.a n : ℤ) = A368575 n

theorem P18021211317101163683.correct : P18021211317101163683.Spec := by
  intro n
  simp only [A368575]

end A368575

/-! ## A368575.P9354190589204229204

`∑[∑[∑[n]]]+n*a(n-1)` with `a(0)=0`
-/

namespace A368575.P9354190589204229204
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368575.P9354190589204229204

namespace A368575

/-- `∑[∑[∑[n]]]+n*a(n-1)` -/
def P9354190589204229204.Spec : Prop :=
  ∀ n, (P9354190589204229204.a n : ℤ) = A368575 n

end A368575

/-! ## A368575.P6595725435777268202

`n*a(n-1)-∑[∑[a(n-1)-n]]` with `a(0)=0`
-/

namespace A368575.P6595725435777268202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368575.P6595725435777268202

namespace A368575

/-- `n*a(n-1)-∑[∑[a(n-1)-n]]` -/
def P6595725435777268202.Spec : Prop :=
  ∀ n, P6595725435777268202.a n = A368575 n

end A368575

/-! ## A368575.P12447515300523892895

`A368764(n)-A000142(n)`
-/

namespace A368575.P12447515300523892895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368764 n - A000142 n

end

end A368575.P12447515300523892895

namespace A368575

/-- `A368764(n)-A000142(n)` -/
def P12447515300523892895.Spec : Prop :=
  ∀ n, P12447515300523892895.a n = A368575 n

end A368575

/-! ## A368575.P17210278575029070223

`A368764(n)-A028242(2*n+1)!`
-/

namespace A368575.P17210278575029070223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368764 n - (Nat.factorial (A028242 (2 * n + 1)).toNat : ℤ)

end

end A368575.P17210278575029070223

namespace A368575

/-- `A368764(n)-A028242(2*n+1)!` -/
def P17210278575029070223.Spec : Prop :=
  ∀ n, P17210278575029070223.a n = A368575 n

end A368575

/-!
# A368576: a(n) = n! * Sum_{k=0..n} binomial(k+4,5) / k!.

The programs for A368576, the canonical program `A368576.P5213171200584893653` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368576 has offset 0).

The definition of A368576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368576.P5213171200584893653

`n*a(n-1)+C(n+4, 5)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A368576

/-- `n*a(n-1)+C(n+4, 5)` -/
def P5213171200584893653.Spec : Prop :=
  ∀ n, (P5213171200584893653.a n : ℤ) = A368576 n

theorem P5213171200584893653.correct : P5213171200584893653.Spec := by
  intro n
  simp only [A368576]

end A368576

/-! ## A368576.P14519155060316671125

`∑[∑[∑[∑[n]]]]+n*a(n-1)` with `a(0)=0`
-/

namespace A368576.P14519155060316671125
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368576.P14519155060316671125

namespace A368576

/-- `∑[∑[∑[∑[n]]]]+n*a(n-1)` -/
def P14519155060316671125.Spec : Prop :=
  ∀ n, (P14519155060316671125.a n : ℤ) = A368576 n

end A368576

/-!
# A368579: Triangle read by rows. T(n, k) is the number of compositions of n where the first part k is the largest part and the last part is not 1.

The programs for A368579, there is no canonical definition to state claims against.
-/

/-! ## A368579.P9991528670393230958

`A128189(n+1)^∑[A064172(n+5)]`
-/

namespace A368579.P9991528670393230958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064172 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128189 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A368579.P9991528670393230958

/-! ## A368579.P13516264903009414334

`A128189(n+1)^record[A025418(n+1)]`
-/

namespace A368579.P13516264903009414334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025418 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128189 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A368579.P13516264903009414334

/-! ## A368579.P15508516413357578399

`A128189(n+1)^A025418(A084192(n))`
-/

namespace A368579.P15508516413357578399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128189 (n + 1) : ℚ) ^ (A025418 (A084192 n).toNat : ℤ)

end

end A368579.P15508516413357578399

/-! ## A368579.P10052245311981396198

`A128189(n+1)^A084192(A128182(n))`
-/

namespace A368579.P10052245311981396198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128189 (n + 1) : ℚ) ^ (A084192 (A128182 n).toNat : ℤ)

end

end A368579.P10052245311981396198

/-! ## A368579.P4494315712691806489

`A015329(A337403(n+1))`
-/

namespace A368579.P4494315712691806489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A337403 (n + 1)).toNat

end

end A368579.P4494315712691806489

/-!
# A368580: a(n) = Sum_{d|n and d^2 <= n} (1 + [d^2 < n]) * (2*d - 1), where [.] denote the Iverson brackets.

The programs for A368580, there is no canonical definition to state claims against.
-/

/-! ## A368580.P502628075243894648

`A004277(A117004(n+1))-A000005(n+1)`
-/

namespace A368580.P502628075243894648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A117004 (n + 1)).toNat - A000005 (n + 1)

end

end A368580.P502628075243894648

/-! ## A368580.P414972864567368926

`A368207(n+1)-A368581(n+1)`
-/

namespace A368580.P414972864567368926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (n + 1) - A368581 (n + 1)

end

end A368580.P414972864567368926

/-! ## A368580.P9350311560043663252

`A368207(n+1)-A329152(n+1)^A107459(3*n+7)`
-/

namespace A368580.P9350311560043663252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368207 (n + 1) : ℚ) - (A329152 (n + 1) : ℚ) ^ (A107459 (3 * n + 7) : ℤ)

end

end A368580.P9350311560043663252

/-! ## A368580.P2060538818989418724

`A368207(n+1)-A032741(A000003(3*n+1)^A329152(n+1))`
-/

namespace A368580.P2060538818989418724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (n + 1) - A032741 (SequenceMachineLib.roundAway ((A000003 (3 * n + 1) : ℚ) ^ (A329152 (n + 1) : ℤ))).toNat

end

end A368580.P2060538818989418724

/-! ## A368580.P10487265948519463452

`A117004(A003961(n+1)%A074884(3*n+2))`
-/

namespace A368580.P10487265948519463452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (Int.tmod (A003961 (n + 1)) (A074884 (3 * n + 2))).toNat

end

end A368580.P10487265948519463452

/-!
# A368581: The sum of weights of nondegenerated monotone Bacher representations of n.

The programs for A368581, there is no canonical definition to state claims against.
-/

/-! ## A368581.P501271363408363186

`A368207(n+1)-A368580(n+1)`
-/

namespace A368581.P501271363408363186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (n + 1) - A368580 (n + 1)

end

end A368581.P501271363408363186

/-! ## A368581.P16824618002304903524

`A368207(n+1)-(A004277(A117004(n+1))-A000005(n+1))`
-/

namespace A368581.P16824618002304903524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (n + 1) - (A004277 (A117004 (n + 1)).toNat - A000005 (n + 1))

end

end A368581.P16824618002304903524

/-! ## A368581.P14158755645979978472

`A319318(n+1)-A115576(A237667(n))`
-/

namespace A368581.P14158755645979978472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319318 (n + 1) - A115576 (A237667 n).toNat

end

end A368581.P14158755645979978472

/-! ## A368581.P11560528328345298379

`A329152(n+1)^A007424(A279824(n))`
-/

namespace A368581.P11560528328345298379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329152 (n + 1) : ℚ) ^ (A007424 (A279824 n).toNat : ℤ)

end

end A368581.P11560528328345298379

/-! ## A368581.P9430504094304355669

`A329152(n+1)^A107459(3*n+7)`
-/

namespace A368581.P9430504094304355669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329152 (n + 1) : ℚ) ^ (A107459 (3 * n + 7) : ℤ)

end

end A368581.P9430504094304355669

/-!
# A368582: a(n) = floor((sigma(n) + 1) / 2).

The programs for A368582, the canonical program `A368582.P18390459089219903053` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368582 has offset 1).

The definition of A368582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000203(n+1)+1)/2)` (program `A368582.P18390459089219903053`, by `A368582.P18390459089219903053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368582.P14688525840450436308

`floor(A088580(n+1)/2)`
-/

namespace A368582.P14688525840450436308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088580 (n + 1) : ℚ) / 2⌋

end

end A368582.P14688525840450436308

namespace A368582

/-- `floor(A088580(n+1)/2)` -/
def P14688525840450436308.Spec : Prop :=
  ∀ n, P14688525840450436308.a n = A368582 (n + 1)

theorem P14688525840450436308.correct : P14688525840450436308.Spec := by
  intro n
  simp only [A368582, Nat.add_sub_cancel, A368582.P14688525840450436308.a, A368582.P18390459089219903053.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368582

/-! ## A368582.P18390459089219903053

`floor((A000203(n+1)+1)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A368582

/-- `floor((A000203(n+1)+1)/2)` -/
def P18390459089219903053.Spec : Prop :=
  ∀ n, P18390459089219903053.a n = A368582 (n + 1)

theorem P18390459089219903053.correct : P18390459089219903053.Spec := by
  intro n
  simp only [A368582, Nat.add_sub_cancel]

end A368582

/-! ## A368582.P8367468959574735020

`ceil(∑{d}[n+1, #/2])`
-/

namespace A368582.P8367468959574735020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2⌉

end

end A368582.P8367468959574735020

namespace A368582

/-- `ceil(∑{d}[n+1, #/2])` -/
def P8367468959574735020.Spec : Prop :=
  ∀ n, P8367468959574735020.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P1095663974046567802

`round(∑{d}[n+1, #/2])`
-/

namespace A368582.P1095663974046567802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2)

end

end A368582.P1095663974046567802

namespace A368582

/-- `round(∑{d}[n+1, #/2])` -/
def P1095663974046567802.Spec : Prop :=
  ∀ n, P1095663974046567802.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P15851138960205692954

`round(cosh(log(∑{d}[n+1, #])))`
-/

namespace A368582.P15851138960205692954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)))

end

end A368582.P15851138960205692954

namespace A368582

/-- `round(cosh(log(∑{d}[n+1, #])))` -/
def P15851138960205692954.Spec : Prop :=
  ∀ n, P15851138960205692954.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P8038596921780831074

`floor((∑{d}[n+1, #]+1)/2)`
-/

namespace A368582.P8038596921780831074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℚ) / 2⌋

end

end A368582.P8038596921780831074

namespace A368582

/-- `floor((∑{d}[n+1, #]+1)/2)` -/
def P8038596921780831074.Spec : Prop :=
  ∀ n, P8038596921780831074.a n = A368582 (n + 1)

theorem P8038596921780831074.correct : P8038596921780831074.Spec := by
  intro n
  simp only [A368582, Nat.add_sub_cancel, A368582.P8038596921780831074.f1, A368582.P8038596921780831074.a, A368582.P18390459089219903053.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368582

/-! ## A368582.P16536494745240578996

`ceil(∑{d}[2*n-(n-1), #]/2)`
-/

namespace A368582.P16536494745240578996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 2⌉

end

end A368582.P16536494745240578996

namespace A368582

/-- `ceil(∑{d}[2*n-(n-1), #]/2)` -/
def P16536494745240578996.Spec : Prop :=
  ∀ n, P16536494745240578996.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P14251093953439844761

`round(∑{d}[2*n-(n-1), #]/2)`
-/

namespace A368582.P14251093953439844761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 2)

end

end A368582.P14251093953439844761

namespace A368582

/-- `round(∑{d}[2*n-(n-1), #]/2)` -/
def P14251093953439844761.Spec : Prop :=
  ∀ n, P14251093953439844761.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P6334606471469388228

`ceil(A000203(n+1)/2)`
-/

namespace A368582.P6334606471469388228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000203 (n + 1) : ℚ) / 2⌉

end

end A368582.P6334606471469388228

namespace A368582

/-- `ceil(A000203(n+1)/2)` -/
def P6334606471469388228.Spec : Prop :=
  ∀ n, P6334606471469388228.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P8177837237306150802

`ceil(A245092(2*n+1)/2)`
-/

namespace A368582.P8177837237306150802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245092 (2 * n + 1) : ℚ) / 2⌉

end

end A368582.P8177837237306150802

namespace A368582

/-- `ceil(A245092(2*n+1)/2)` -/
def P8177837237306150802.Spec : Prop :=
  ∀ n, P8177837237306150802.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P10363840675177865563

`A369257(n+1)+A086670(n+1)`
-/

namespace A368582.P10363840675177865563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369257 (n + 1) + A086670 (n + 1)

end

end A368582.P10363840675177865563

namespace A368582

/-- `A369257(n+1)+A086670(n+1)` -/
def P10363840675177865563.Spec : Prop :=
  ∀ n, P10363840675177865563.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P17062527159161572035

`A079247(n+1)-A369258(n+1)`
-/

namespace A368582.P17062527159161572035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A369258 (n + 1)

end

end A368582.P17062527159161572035

namespace A368582

/-- `A079247(n+1)-A369258(n+1)` -/
def P17062527159161572035.Spec : Prop :=
  ∀ n, P17062527159161572035.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P16620772827039072526

`A079247(n+1)-A004526(A001227(n+1))`
-/

namespace A368582.P16620772827039072526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A004526 (A001227 (n + 1)).toNat

end

end A368582.P16620772827039072526

namespace A368582

/-- `A079247(n+1)-A004526(A001227(n+1))` -/
def P16620772827039072526.Spec : Prop :=
  ∀ n, P16620772827039072526.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P2735335464852075279

`round(A326065(2*(n+1))/2)`
-/

namespace A368582.P2735335464852075279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326065 (2 * (n + 1)) : ℚ) / 2)

end

end A368582.P2735335464852075279

namespace A368582

/-- `round(A326065(2*(n+1))/2)` -/
def P2735335464852075279.Spec : Prop :=
  ∀ n, P2735335464852075279.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P16488223557417784805

`A065033(∑{d}[n+1, #])`
-/

namespace A368582.P16488223557417784805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A368582.P16488223557417784805

namespace A368582

/-- `A065033(∑{d}[n+1, #])` -/
def P16488223557417784805.Spec : Prop :=
  ∀ n, P16488223557417784805.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P12711836333709154118

`A110654(∑{d}[n+1, #])`
-/

namespace A368582.P12711836333709154118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A368582.P12711836333709154118

namespace A368582

/-- `A110654(∑{d}[n+1, #])` -/
def P12711836333709154118.Spec : Prop :=
  ∀ n, P12711836333709154118.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P11897249398490542609

`A263997(∑{d}[n+1, #])`
-/

namespace A368582.P11897249398490542609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A368582.P11897249398490542609

namespace A368582

/-- `A263997(∑{d}[n+1, #])` -/
def P11897249398490542609.Spec : Prop :=
  ∀ n, P11897249398490542609.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P1552298825787916149

`A008619(A039653(n+1))`
-/

namespace A368582.P1552298825787916149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A039653 (n + 1)).toNat

end

end A368582.P1552298825787916149

namespace A368582

/-- `A008619(A039653(n+1))` -/
def P1552298825787916149.Spec : Prop :=
  ∀ n, P1552298825787916149.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P14963750365206835481

`A065033(A000203(n+1))`
-/

namespace A368582.P14963750365206835481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000203 (n + 1)).toNat

end

end A368582.P14963750365206835481

namespace A368582

/-- `A065033(A000203(n+1))` -/
def P14963750365206835481.Spec : Prop :=
  ∀ n, P14963750365206835481.a n = A368582 (n + 1)

end A368582

/-! ## A368582.P3449413209379211203

`A004526(A088580(n+1))`
-/

namespace A368582.P3449413209379211203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088580 (n + 1)).toNat

end

end A368582.P3449413209379211203

namespace A368582

/-- `A004526(A088580(n+1))` -/
def P3449413209379211203.Spec : Prop :=
  ∀ n, P3449413209379211203.a n = A368582 (n + 1)

end A368582

/-!
# A368583: Table read by rows: T(n, k) = A124320(n + 1, k) * A132393(n, k).

The programs for A368583, there is no canonical definition to state claims against.
-/

/-! ## A368583.P6736113029376015963

`A046899(n)*A225479(n)`
-/

namespace A368583.P6736113029376015963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A225479 n

end

end A368583.P6736113029376015963

/-! ## A368583.P16330869985753269173

`A226967(A101479(n))*A368584(n)`
-/

namespace A368583.P16330869985753269173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226967 (A101479 n).toNat * A368584 n

end

end A368583.P16330869985753269173

/-! ## A368583.P7270713748047571297

`A001221(A139170(2*(n+1)))*A368584(n)`
-/

namespace A368583.P7270713748047571297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A139170 (2 * (n + 1))).toNat * A368584 n

end

end A368583.P7270713748047571297

/-! ## A368583.P4810415665683112344

`A176725(A293231(2*n+1))*A368584(n)`
-/

namespace A368583.P4810415665683112344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A293231 (2 * n + 1)).toNat * A368584 n

end

end A368583.P4810415665683112344

/-!
# A368584: Table read by rows: T(n, k) = A124320(n + 1, k) * A048993(n, k).

The programs for A368584, there is no canonical definition to state claims against.
-/

/-! ## A368584.P11025488798561384090

`A046899(n)*A131689(n)`
-/

namespace A368584.P11025488798561384090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A131689 n

end

end A368584.P11025488798561384090

/-! ## A368584.P1244708739568302891

`A368583(n)/A046951(A284640(3*n+5))`
-/

namespace A368584.P1244708739568302891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368583 n : ℚ) / (A046951 (A284640 (3 * n + 5)).toNat : ℚ)

end

end A368584.P1244708739568302891

/-! ## A368584.P2672021241798864445

`A382339(n)*A382358(A382353(n+1))`
-/

namespace A368584.P2672021241798864445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382339 n * A382358 (A382353 (n + 1)).toNat

end

end A368584.P2672021241798864445

/-! ## A368584.P15451846350044522513

`lcm(A055642(A230497(2*(n+1))), A304334(n))`
-/

namespace A368584.P15451846350044522513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 (A230497 (2 * (n + 1))).toNat) (A304334 n)

end

end A368584.P15451846350044522513

/-!
# A368585: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * binomial(k+2,3) / k!.

The programs for A368585, there is no canonical definition to state claims against.
-/

/-! ## A368585.P6710103032226769872

`∑[∑[n]]-n*a(n-1)` with `a(0)=0`
-/

namespace A368585.P6710103032226769872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A368585.P6710103032226769872

/-! ## A368585.P14797040372816589500

`floor(C(n+2, n-1)-n*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368585.P14797040372816589500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (n + 2) ((n : ℤ) - 1).toNat : ℤ) - (n : ℤ) * a (n - 1)

end

end A368585.P14797040372816589500

/-! ## A368585.P5530059765966811714

`lcm(n+1, n*(n+2))/6-a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A368585.P5530059765966811714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6 - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A368585.P5530059765966811714

/-! ## A368585.P11820427584194701628

`A000292(n)-a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A368585.P11820427584194701628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000292 n : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A368585.P11820427584194701628

/-!
# A368586: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * binomial(k+3,4) / k!.

The programs for A368586, there is no canonical definition to state claims against.
-/

/-! ## A368586.P4529991259741107816

`∑[∑[∑[n]]]-n*a(n-1)` with `a(0)=0`
-/

namespace A368586.P4529991259741107816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A368586.P4529991259741107816

/-!
# A368587: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * binomial(k+4,5) / k!.

The programs for A368587, there is no canonical definition to state claims against.
-/

/-! ## A368587.P16064729208752139276

`∑[∑[∑[∑[n]]]]-n*a(n-1)` with `a(0)=0`
-/

namespace A368587.P16064729208752139276
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A368587.P16064729208752139276

/-!
# A368590: Numbers k such that all of k, k+1 and k+2 are the sums of consecutive squares.

The programs for A368590, there is no canonical definition to state claims against.
-/

/-! ## A368590.P9628576758404912052

`∩[A368570(n+1)-1, A368570(n+1)]`
-/

namespace A368590.P9628576758404912052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368570 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368590.P9628576758404912052

/-!
# A368591: The sequence is both a succession of triples of monotonically increasing numbers and a succession of triples of monotonically increasing digits. This is the lexicographically earliest such sequence starting with a(1) = 0 formed by distinct number-triples.

The programs for A368591, there is no canonical definition to state claims against.
-/

/-! ## A368591.P12912239682292690880

`A379598(∑[n*char[3*n]+3]/3+4)`
-/

namespace A368591.P12912239682292690880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + 4)).toNat

end

end A368591.P12912239682292690880

/-! ## A368591.P7305104006236178646

`A358050(lt[A113340(n), n])`
-/

namespace A368591.P7305104006236178646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368591.P7305104006236178646

/-! ## A368591.P12593032756537084536

`A365770(lt[A113340(n), n])`
-/

namespace A368591.P12593032756537084536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365770 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368591.P12593032756537084536

/-! ## A368591.P2279369326474812137

`A124540(lt[A124540(n), A325691(n)])`
-/

namespace A368591.P2279369326474812137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368591.P2279369326474812137

/-! ## A368591.P10311764324613879192

`A320079(lt[A320079(n), A245710(n)])`
-/

namespace A368591.P10311764324613879192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368591.P10311764324613879192

/-!
# A368593: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^2 - A(-x)^2)/2 + x*sqrt( (A(x)^4 + A(-x)^4)/2 ).

The programs for A368593, there is no canonical definition to state claims against.
-/

/-! ## A368593.P6297883193190404644

`A263110(A092184(n+1)+A048996(2*n))`
-/

namespace A368593.P6297883193190404644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (A092184 (n + 1) + A048996 (2 * n)).toNat

end

end A368593.P6297883193190404644

/-! ## A368593.P5419529782417740777

`A271608(A125171(n+4)+A030267(n+1))`
-/

namespace A368593.P5419529782417740777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (A125171 (n + 4) + A030267 (n + 1)).toNat

end

end A368593.P5419529782417740777

/-! ## A368593.P5067067843701769526

`A271608(A134512(Δ[n²])+A125171(n+4))`
-/

namespace A368593.P5067067843701769526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (A134512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A125171 (n + 4)).toNat

end

end A368593.P5067067843701769526

/-!
# A368595: Alternating sum of A006519.

The programs for A368595, the canonical program `A368595.P11318754427664413293` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368595 has offset 1).

The definition of A368595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368595.P11318754427664413293

`A136013(n+1)-(n+1)%2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A368595

/-- `A136013(n+1)-(n+1)%2` -/
def P11318754427664413293.Spec : Prop :=
  ∀ n, P11318754427664413293.a n = A368595 (n + 1)

theorem P11318754427664413293.correct : P11318754427664413293.Spec := by
  intro n
  simp only [A368595, Nat.add_sub_cancel]

end A368595

/-! ## A368595.P17148614959078083960

`∑[-xor(1, and(n, n+1)-n)]`
-/

namespace A368595.P17148614959078083960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((Nat.land n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P17148614959078083960

namespace A368595

/-- `∑[-xor(1, and(n, n+1)-n)]` -/
def P17148614959078083960.Spec : Prop :=
  ∀ n, P17148614959078083960.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P15667886376531211748

`∑[and(n, -(n+2))-(-1)^n]`
-/

namespace A368595.P15667886376531211748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P15667886376531211748

namespace A368595

/-- `∑[and(n, -(n+2))-(-1)^n]` -/
def P15667886376531211748.Spec : Prop :=
  ∀ n, P15667886376531211748.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P13333528489594467347

`∑[and(n, -(n+2))]-log2(gcd(2, n))`
-/

namespace A368595.P13333528489594467347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A368595.P13333528489594467347

namespace A368595

/-- `∑[and(n, -(n+2))]-log2(gcd(2, n))` -/
def P13333528489594467347.Spec : Prop :=
  ∀ n, P13333528489594467347.a n = (A368595 (n + 1) : ℝ)

end A368595

/-! ## A368595.P4180459331216949339

`∑[-(and(n+1, -n)/a(n-1))]` with `a(0)=-1, a(1)=2`
-/

namespace A368595.P4180459331216949339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  -((Int.land (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P4180459331216949339

namespace A368595

/-- `∑[-(and(n+1, -n)/a(n-1))]` -/
def P4180459331216949339.Spec : Prop :=
  ∀ n, P4180459331216949339.a n = (A368595 (n + 1) : ℚ)

end A368595

/-! ## A368595.P16968758007666503298

`∑[A118830(n+1)]`
-/

namespace A368595.P16968758007666503298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P16968758007666503298

namespace A368595

/-- `∑[A118830(n+1)]` -/
def P16968758007666503298.Spec : Prop :=
  ∀ n, P16968758007666503298.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P13659765693895302016

`∑[-A118827(n+1)]`
-/

namespace A368595.P13659765693895302016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P13659765693895302016

namespace A368595

/-- `∑[-A118827(n+1)]` -/
def P13659765693895302016.Spec : Prop :=
  ∀ n, P13659765693895302016.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P1246630971219285446

`∑[A006519(n+1)*A033999(n+1)]`
-/

namespace A368595.P1246630971219285446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368595.P1246630971219285446

namespace A368595

/-- `∑[A006519(n+1)*A033999(n+1)]` -/
def P1246630971219285446.Spec : Prop :=
  ∀ n, P1246630971219285446.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P1838180599936407687

`A136013(n+1)-A135481(A080277(n+1))`
-/

namespace A368595.P1838180599936407687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (n + 1) - A135481 (A080277 (n + 1)).toNat

end

end A368595.P1838180599936407687

namespace A368595

/-- `A136013(n+1)-A135481(A080277(n+1))` -/
def P1838180599936407687.Spec : Prop :=
  ∀ n, P1838180599936407687.a n = A368595 (n + 1)

end A368595

/-! ## A368595.P4646602573332448775

`A136013(n+1)-A135481((n+1)²)`
-/

namespace A368595.P4646602573332448775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (n + 1) - A135481 ((n + 1) ^ 2)

end

end A368595.P4646602573332448775

namespace A368595

/-- `A136013(n+1)-A135481((n+1)²)` -/
def P4646602573332448775.Spec : Prop :=
  ∀ n, P4646602573332448775.a n = A368595 (n + 1)

end A368595

/-!
# A368596: Number of n-element sets of singletons or pairs of distinct elements of {1..n}, or loop graphs with n edges, such that it is not possible to choose a different element from each.

The programs for A368596, there is no canonical definition to state claims against.
-/

/-! ## A368596.P14365577399946970774

`A014068(n)-A333331(A028310(n))`
-/

namespace A368596.P14365577399946970774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014068 n - A333331 (A028310 n).toNat

end

end A368596.P14365577399946970774

/-! ## A368596.P6930915796489585335

`A007095(∑[A273919(n+1)])`
-/

namespace A368596.P6930915796489585335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368596.P6930915796489585335

/-!
# A368597: Number of n-element sets of singletons or pairs of distinct elements of {1..n} with union {1..n}, or loop-graphs covering n vertices with n edges.

The programs for A368597, there is no canonical definition to state claims against.
-/

/-! ## A368597.P2179716680985932983

`A368730(n)+A333331(A028310(n))`
-/

namespace A368597.P2179716680985932983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368730 n + A333331 (A028310 n).toNat

end

end A368597.P2179716680985932983

/-! ## A368597.P593037464476909186

`A004396(A001247(n))`
-/

namespace A368597.P593037464476909186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A001247 n).toNat

end

end A368597.P593037464476909186

/-!
# A368598: Number of non-isomorphic n-element sets of singletons or pairs of elements of {1..n}, or unlabeled loop-graphs with n edges and up to n vertices.

The programs for A368598, there is no canonical definition to state claims against.
-/

/-! ## A368598.P16712799751504602222

`A368984(n)+A368835(n)`
-/

namespace A368598.P16712799751504602222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368984 n + A368835 n

end

end A368598.P16712799751504602222

/-! ## A368598.P2771246360739596895

`A368836(∑[n+1]+1)`
-/

namespace A368598.P2771246360739596895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A368598.P2771246360739596895

/-! ## A368598.P10368476742393520460

`A070166(∑[∑[n]])`
-/

namespace A368598.P10368476742393520460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368598.P10368476742393520460

/-! ## A368598.P18098423965858631280

`A070166(A000292(n))%A001652(n+1)`
-/

namespace A368598.P18098423965858631280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070166 (A000292 n).toNat) (A001652 (n + 1))

end

end A368598.P18098423965858631280

/-! ## A368598.P1233780656474490232

`A070166(A000292(n))+A000122(3*n+2)`
-/

namespace A368598.P1233780656474490232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (A000292 n).toNat + A000122 (3 * n + 2)

end

end A368598.P1233780656474490232

/-!
# A368599: Number of non-isomorphic n-element sets of singletons or pairs of elements of {1..n} with union {1..n}, or unlabeled loop-graphs with n edges covering n vertices.

The programs for A368599, there is no canonical definition to state claims against.
-/

/-! ## A368599.P2549342267109065067

`A196545(n+1)+A119464(A011782(n))`
-/

namespace A368599.P2549342267109065067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196545 (n + 1) + A119464 (A011782 n).toNat

end

end A368599.P2549342267109065067

/-! ## A368599.P10851185322317439827

`A024417(A149865(n)-A304818(n+1))`
-/

namespace A368599.P10851185322317439827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149865 n - A304818 (n + 1)).toNat

end

end A368599.P10851185322317439827

/-! ## A368599.P16754923724718490441

`A116942(A052415(n+2))+A318229(n+1)+C(n, 6)`
-/

namespace A368599.P16754923724718490441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A052415 (n + 2)).toNat + (A318229 (n + 1) + (Nat.choose n 6 : ℤ))

end

end A368599.P16754923724718490441

/-! ## A368599.P16029189899926295622

`A116942(A052415(n+2))+A318229(n+1)+A000579(n)`
-/

namespace A368599.P16029189899926295622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A052415 (n + 2)).toNat + (A318229 (n + 1) + A000579 n)

end

end A368599.P16029189899926295622

