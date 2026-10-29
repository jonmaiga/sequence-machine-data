import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275100: Number of set partitions of [3*n] such that within each block the numbers of elements from all residue classes modulo n are equal for n>0, a(0)=1.

The programs for A275100, the canonical program `A275100.P5184702435953092645` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275100 has offset 0).

The definition of A275100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275100.P5184702435953092645

`ogf((1-5x-7x^2+21x^3)/(1-10x+27x^2-18x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275100

/-- `ogf((1-5x-7x^2+21x^3)/(1-10x+27x^2-18x^3))` -/
def P5184702435953092645.Spec : Prop :=
  ∀ n, P5184702435953092645.a n = A275100 n

theorem P5184702435953092645.correct : P5184702435953092645.Spec := by
  intro n
  simp only [A275100]

end A275100

/-! ## A275100.P13800927548665588990

`10*a(n-1)-27*a(n-2)+18*a(n-3)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=64`
-/

namespace A275100.P13800927548665588990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 16, 64] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 18 * a (n - 3)

end

end A275100.P13800927548665588990

namespace A275100

/-- `10*a(n-1)-27*a(n-2)+18*a(n-3)` -/
def P13800927548665588990.Spec : Prop :=
  ∀ n, P13800927548665588990.a n = A275100 n

end A275100

/-! ## A275100.P9933174564193437325

`A275043(A167614(n+2))`
-/

namespace A275100.P9933174564193437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A167614 (n + 2)).toNat

end

end A275100.P9933174564193437325

namespace A275100

/-- `A275043(A167614(n+2))` -/
def P9933174564193437325.Spec : Prop :=
  ∀ n, P9933174564193437325.a n = A275100 n

end A275100

/-! ## A275100.P3641087261738206813

`A275043(A141214(n)+6)`
-/

namespace A275100.P3641087261738206813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A141214 n + 6).toNat

end

end A275100.P3641087261738206813

namespace A275100

/-- `A275043(A141214(n)+6)` -/
def P3641087261738206813.Spec : Prop :=
  ∀ n, P3641087261738206813.a n = A275100 n

end A275100

/-! ## A275100.P11376271049642916428

`A275043(A052905(n)+8)`
-/

namespace A275100.P11376271049642916428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A052905 n + 8).toNat

end

end A275100.P11376271049642916428

namespace A275100

/-- `A275043(A052905(n)+8)` -/
def P11376271049642916428.Spec : Prop :=
  ∀ n, P11376271049642916428.a n = A275100 n

end A275100

/-!
# A275101: Number of set partitions of [4*n] such that within each block the numbers of elements from all residue classes modulo n are equal for n>0, a(0)=1.

The programs for A275101, there is no canonical definition to state claims against.
-/

/-! ## A275101.P5655179500500429844

`A275043(A056000(n)+14)`
-/

namespace A275101.P5655179500500429844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A056000 n + 14).toNat

end

end A275101.P5655179500500429844

/-! ## A275101.P14607786532325974348

`A275043(eq[4, A002262(n)])`
-/

namespace A275101.P14607786532325974348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275101.P14607786532325974348

/-! ## A275101.P1145714514587374278

`A275043(eq[16, A059268(n)])`
-/

namespace A275101.P1145714514587374278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275101.P1145714514587374278

/-! ## A275101.P14454042282837163335

`A275043(A141214(n+1)+7)`
-/

namespace A275101.P14454042282837163335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A141214 (n + 1) + 7).toNat

end

end A275101.P14454042282837163335

/-! ## A275101.P7859998045606248180

`A275043(eq[5, A002260(n+1)])`
-/

namespace A275101.P7859998045606248180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275101.P7859998045606248180

/-!
# A275102: Number of set partitions of [5*n] such that within each block the numbers of elements from all residue classes modulo n are equal for n>0, a(0)=1.

The programs for A275102, there is no canonical definition to state claims against.
-/

/-! ## A275102.P9833741060751184222

`A275043(eq[5, A002262(n)])`
-/

namespace A275102.P9833741060751184222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275102.P9833741060751184222

/-! ## A275102.P12431008142182140593

`A275043(eq[32, A059268(n)])`
-/

namespace A275102.P12431008142182140593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275102.P12431008142182140593

/-! ## A275102.P1426039247160330198

`A275043(eq[6, A002260(n+1)])`
-/

namespace A275102.P1426039247160330198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275102.P1426039247160330198

/-! ## A275102.P4093767686459661653

`A275043(eq[6, A134868(n+1)])`
-/

namespace A275102.P4093767686459661653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275102.P4093767686459661653

/-! ## A275102.P12485006990395075811

`A275043(eq[5, A133233(n)])`
-/

namespace A275102.P12485006990395075811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275102.P12485006990395075811

/-!
# A275104: First row of Hilbert curve in A275103.

The programs for A275104, there is no canonical definition to state claims against.
-/

/-! ## A275104.P7597276669485014581

`A275103(A163359(∑[n]))`
-/

namespace A275104.P7597276669485014581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163359 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A275104.P7597276669485014581

/-! ## A275104.P12867504199217896342

`A275103(eq[0, A059253(n)])`
-/

namespace A275104.P12867504199217896342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275104.P12867504199217896342

/-! ## A275104.P7438131764212129189

`A275103(A163357(∑[n]+n))`
-/

namespace A275104.P7438131764212129189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163357 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A275104.P7438131764212129189

/-! ## A275104.P2725055422439777907

`A275103(A163355(2*A000695(n)))`
-/

namespace A275104.P2725055422439777907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163355 (2 * A000695 n).toNat).toNat

end

end A275104.P2725055422439777907

/-! ## A275104.P1947489296457264188

`A275103(eq[A059252(n), A059261(n)])`
-/

namespace A275104.P1947489296457264188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275104.P1947489296457264188

/-! ## A275104.P4836767805371144841

`A275103(A163483(n))`
-/

namespace A275104.P4836767805371144841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163483 n).toNat

end

end A275104.P4836767805371144841

/-!
# A275105: First column of Hilbert curve in A275103.

The programs for A275105, there is no canonical definition to state claims against.
-/

/-! ## A275105.P12630652903643476775

`A275103(A163357(∑[n]))`
-/

namespace A275105.P12630652903643476775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163357 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A275105.P12630652903643476775

/-! ## A275105.P11077379132722909438

`A275103(eq[0, A059252(n)])`
-/

namespace A275105.P11077379132722909438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275105.P11077379132722909438

/-! ## A275105.P1560825538544384025

`A275103(A163359(∑[n]+n))`
-/

namespace A275105.P1560825538544384025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163359 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A275105.P1560825538544384025

/-! ## A275105.P11091644204394597319

`A275103(A163355(A000695(n)))`
-/

namespace A275105.P11091644204394597319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163355 (A000695 n).toNat).toNat

end

end A275105.P11091644204394597319

/-! ## A275105.P12828674796853613497

`A275103(A163355(eq[0, A059906(n)]))`
-/

namespace A275105.P12828674796853613497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275103 (A163355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A275105.P12828674796853613497

/-!
# A275106: Limiting sequence of the least significant digits of the even-indexed terms of A027878 in reverse order.

The programs for A275106, there is no canonical definition to state claims against.
-/

/-! ## A275106.P7961285069623078659

`A020723(C(2, n+2))-A275107(n+1)`
-/

namespace A275106.P7961285069623078659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (Nat.choose 2 (n + 2)) - A275107 (n + 1)

end

end A275106.P7961285069623078659

/-! ## A275106.P9116548989579671954

`A275107(A186497(n+1)+2)`
-/

namespace A275106.P9116548989579671954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275107 (A186497 (n + 1) + 2).toNat

end

end A275106.P9116548989579671954

/-! ## A275106.P10382122734194465793

`A020723(A250256(n+1)%2*A008624(n))-A275107(n+1)`
-/

namespace A275106.P10382122734194465793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (Int.tmod (A250256 (n + 1)) 2 * A008624 n).toNat - A275107 (n + 1)

end

end A275106.P10382122734194465793

/-! ## A275106.P7159279342954414776

`A020723(A151934(ceil(n/ϕ)))-A275107(n+1)`
-/

namespace A275106.P7159279342954414776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A151934 ⌈(n : ℝ) / Real.goldenRatio⌉.toNat).toNat - A275107 (n + 1)

end

end A275106.P7159279342954414776

/-! ## A275106.P966360847355544351

`A020723(A009145(n)%2*A008624(n))-A275107(n+1)`
-/

namespace A275106.P966360847355544351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (Int.tmod (A009145 n) 2 * A008624 n).toNat - A275107 (n + 1)

end

end A275106.P966360847355544351

/-!
# A275107: Limiting sequence of the least significant digits of the odd-indexed terms of A027878 in reverse order.

The programs for A275107, there is no canonical definition to state claims against.
-/

/-! ## A275107.P13324371458720453839

`a(and(2, n²))-A275106(n+1)` with `a(0)=9`
-/

namespace A275107.P13324371458720453839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (Nat.land 2 (n ^ 2)) - A275106 (n + 1)

end

end A275107.P13324371458720453839

/-! ## A275107.P16898933343743224079

`A275106(A186497(n+2)+1)`
-/

namespace A275107.P16898933343743224079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275106 (A186497 (n + 2) + 1).toNat

end

end A275107.P16898933343743224079

/-! ## A275107.P7269784894910060328

`A275106(A104136(n+1)+1+n)`
-/

namespace A275107.P7269784894910060328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275106 (A104136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A275107.P7269784894910060328

/-! ## A275107.P11931765172965417469

`A275106(A104135(n+1)+2+n)`
-/

namespace A275107.P11931765172965417469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275106 (A104135 (n + 1) + 2 + (n : ℤ)).toNat

end

end A275107.P11931765172965417469

/-! ## A275107.P14871000304939831352

`A020723(A151934(n)*A275106(n+1))-A275106(n+1)`
-/

namespace A275107.P14871000304939831352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A151934 n * A275106 (n + 1)).toNat - A275106 (n + 1)

end

end A275107.P14871000304939831352

/-! ## A275107.P12221758710813484335

`A020723(A151934(n))-A275106(n+1)`
-/

namespace A275107.P12221758710813484335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A151934 n).toNat - A275106 (n + 1)

end

end A275107.P12221758710813484335

/-!
# A275108: Record gaps between numbers that are either primes or semiprimes.

The programs for A275108, there is no canonical definition to state claims against.
-/

/-! ## A275108.P267413382355158316

`A275014(n+1)-A275013(n+1)`
-/

namespace A275108.P267413382355158316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275014 (n + 1) - A275013 (n + 1)

end

end A275108.P267413382355158316

/-!
# A275109: Number of times each term of the sequence A025586 (largest value in Collatz trajectory of n) occurs.

The programs for A275109, there is no canonical definition to state claims against.
-/

/-! ## A275109.P1208252357035353918

`A087255(A033496(n+1))`
-/

namespace A275109.P1208252357035353918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A033496 (n + 1)).toNat

end

end A275109.P1208252357035353918

/-! ## A275109.P15980893338683617616

`A087255(record[A087258(n+1)])`
-/

namespace A275109.P15980893338683617616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275109.P15980893338683617616

/-! ## A275109.P2380111005213732141

`A087255(record[A261702(n+1)])`
-/

namespace A275109.P2380111005213732141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275109.P2380111005213732141

/-! ## A275109.P17612680408737950058

`A087255(record[A213330(n+2)])`
-/

namespace A275109.P17612680408737950058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213330 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275109.P17612680408737950058

/-! ## A275109.P5408386135340999155

`filter[A087255(n+1), A011558(#)]`
-/

namespace A275109.P5408386135340999155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A275109.P5408386135340999155

/-! ## A275109.P6241562430579812945

`filter[A087255(n+1), A022932(#)]`
-/

namespace A275109.P6241562430579812945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A275109.P6241562430579812945

/-! ## A275109.P659605980005471910

`filter[A087255(n+1), A145568(#)]`
-/

namespace A275109.P659605980005471910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A275109.P659605980005471910

/-! ## A275109.P10708251049504093183

`filter[A087255(n+1), A168046(#)]`
-/

namespace A275109.P10708251049504093183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A275109.P10708251049504093183

/-! ## A275109.P4590434690414860882

`filter[A087255(n+1), A168182(#)]`
-/

namespace A275109.P4590434690414860882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A275109.P4590434690414860882

/-!
# A275111: a(n) = prime(n)! mod prime(n+1).

The programs for A275111, there is no canonical definition to state claims against.
-/

/-! ## A275111.P17910088631780827856

`A375277(A000040(n+1))`
-/

namespace A275111.P17910088631780827856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A000040 (n + 1)).toNat

end

end A275111.P17910088631780827856

/-! ## A275111.P13953112297114373176

`A375277(A161847(n+1))`
-/

namespace A275111.P13953112297114373176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A161847 (n + 1)).toNat

end

end A275111.P13953112297114373176

/-! ## A275111.P367088317114689106

`A375277(A008578(n+2))`
-/

namespace A275111.P367088317114689106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A008578 (n + 2)).toNat

end

end A275111.P367088317114689106

/-! ## A275111.P2711289595659821437

`A375277(A182986(n+2))`
-/

namespace A275111.P2711289595659821437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A182986 (n + 2)).toNat

end

end A275111.P2711289595659821437

/-! ## A275111.P18267622210665269455

`A375277(A006093(n+1)+1)`
-/

namespace A275111.P18267622210665269455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A006093 (n + 1) + 1).toNat

end

end A275111.P18267622210665269455

/-! ## A275111.P18218670110182377

`A375277(A008864(n+1)-1)`
-/

namespace A275111.P18218670110182377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A008864 (n + 1) - 1).toNat

end

end A275111.P18218670110182377

/-! ## A275111.P673062420828852834

`A375277(A040976(n+1)+2)`
-/

namespace A275111.P673062420828852834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A040976 (n + 1) + 2).toNat

end

end A275111.P673062420828852834

/-! ## A275111.P3003506266948870731

`A375277(A001747(n+2)/2)`
-/

namespace A275111.P3003506266948870731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A275111.P3003506266948870731

/-! ## A275111.P5663573151161684886

`A360825(A000040(ceil(sqrt(n²+4))))`
-/

namespace A275111.P5663573151161684886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 (A000040 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat).toNat

end

end A275111.P5663573151161684886

/-! ## A275111.P17064506873797235755

`A375277(A071988(2*n+1+n))`
-/

namespace A275111.P17064506873797235755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A071988 (2 * n + 1 + n)).toNat

end

end A275111.P17064506873797235755

/-! ## A275111.P6308461308764512286

`A375277(A034694(A006093(n+1)))`
-/

namespace A275111.P6308461308764512286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A275111.P6308461308764512286

/-!
# A275112: Zero together with the partial sums of A064412.

The programs for A275112, the canonical program `A275112.P4488646183425844055` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275112 has offset 0).

The definition of A275112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275112.P4488646183425844055

`ogf((x+3x^2+4x^3+6x^4+4x^5+3x^6)/(1-3x+2x^2+2x^3-4x^4+4x^5-2x^6-2x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275112

/-- `ogf((x+3x^2+4x^3+6x^4+4x^5+3x^6)/(1-3x+2x^2+2x^3-4x^4+4x^5-2x^6-2x^7+3x^8-x^9))` -/
def P4488646183425844055.Spec : Prop :=
  ∀ n, P4488646183425844055.a n = A275112 n

theorem P4488646183425844055.correct : P4488646183425844055.Spec := by
  intro n
  simp only [A275112]

end A275112

/-! ## A275112.P4810474057767871080

`∑[A064412(A028310(n))]-1`
-/

namespace A275112.P4810474057767871080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A275112.P4810474057767871080

namespace A275112

/-- `∑[A064412(A028310(n))]-1` -/
def P4810474057767871080.Spec : Prop :=
  ∀ n, P4810474057767871080.a n = A275112 n

end A275112

/-! ## A275112.P4533306428646904843

`∑[A274221(n)+A269064(n)]`
-/

namespace A275112.P4533306428646904843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274221 n + A269064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275112.P4533306428646904843

namespace A275112

/-- `∑[A274221(n)+A269064(n)]` -/
def P4533306428646904843.Spec : Prop :=
  ∀ n, P4533306428646904843.a n = A275112 n

end A275112

/-! ## A275112.P16924421248976275745

`∑[A064412(n+1)]-A064412(n+1)`
-/

namespace A275112.P16924421248976275745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064412 (n + 1)

end

end A275112.P16924421248976275745

namespace A275112

/-- `∑[A064412(n+1)]-A064412(n+1)` -/
def P16924421248976275745.Spec : Prop :=
  ∀ n, P16924421248976275745.a n = A275112 n

end A275112

/-! ## A275112.P10938062182561067536

`∑[A057427(n)*A064412(A028310(n))]`
-/

namespace A275112.P10938062182561067536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A064412 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275112.P10938062182561067536

namespace A275112

/-- `∑[A057427(n)*A064412(A028310(n))]` -/
def P10938062182561067536.Spec : Prop :=
  ∀ n, P10938062182561067536.a n = A275112 n

end A275112

/-! ## A275112.P12753129035093761980

`∑[A064412(A028310(n))%A008362(n)]`
-/

namespace A275112.P12753129035093761980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064412 (A028310 n).toNat) (A008362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275112.P12753129035093761980

namespace A275112

/-- `∑[A064412(A028310(n))%A008362(n)]` -/
def P12753129035093761980.Spec : Prop :=
  ∀ n, P12753129035093761980.a n = A275112 n

end A275112

/-! ## A275112.P633415233608306783

`A056594(4*n+2)+∑[A064412(A028310(n))]`
-/

namespace A275112.P633415233608306783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (4 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275112.P633415233608306783

namespace A275112

/-- `A056594(4*n+2)+∑[A064412(A028310(n))]` -/
def P633415233608306783.Spec : Prop :=
  ∀ n, P633415233608306783.a n = A275112 n

end A275112

/-!
# A275113: a(n) is the minimal number of squares needed to enclose n squares with a wall so that there is a gap of at least one cell between the wall and the enclosed cells.

The programs for A275113, there is no canonical definition to state claims against.
-/

/-! ## A275113.P18318550623741094585

`floor(sqrt(8*n+1))+11`
-/

namespace A275113.P18318550623741094585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) + 11

end

end A275113.P18318550623741094585

/-! ## A275113.P17382067603157072900

`floor(log2(A255996(n+1)²))`
-/

namespace A275113.P17382067603157072900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A255996 (n + 1) ^ 2).toNat

end

end A275113.P17382067603157072900

/-! ## A275113.P7378841948505082056

`ceil(2*(root(A005408(n), 2)+5))`
-/

namespace A275113.P7378841948505082056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A005408 n : ℝ) ^ (1 / (2 : ℝ)) + 5)⌉

end

end A275113.P7378841948505082056

/-! ## A275113.P3633999823913779051

`floor(root(A194933(2*n+5), 4))`
-/

namespace A275113.P3633999823913779051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194933 (2 * n + 5) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A275113.P3633999823913779051

/-! ## A275113.P15591873551287652945

`A109394(A162735(n+1))`
-/

namespace A275113.P15591873551287652945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109394 (A162735 (n + 1)).toNat

end

end A275113.P15591873551287652945

/-!
# A275114: Primes p for which the sum of the numbers in the Collatz iteration (A033493) of p is a prime.

The programs for A275114, there is no canonical definition to state claims against.
-/

/-! ## A275114.P7762614993958204960

`p?[A225748(n+1)]`
-/

namespace A275114.P7762614993958204960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275114.P7762614993958204960

/-! ## A275114.P1029941060356123774

`record[A020639(A225748(n+2))]`
-/

namespace A275114.P1029941060356123774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225748 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275114.P1029941060356123774

/-! ## A275114.P14626944843386201620

`filter[A225748(n+1), A010051(#)]`
-/

namespace A275114.P14626944843386201620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A275114.P14626944843386201620

/-! ## A275114.P14988264989337673549

`filter[A225748(n+1), A080339(#)]`
-/

namespace A275114.P14988264989337673549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A275114.P14988264989337673549

/-!
# A275115: Least prime of the form x^2 + n*y^2 with x>0 and y>0.

The programs for A275115, there is no canonical definition to state claims against.
-/

/-! ## A275115.P18028932006070855775

`A020639(A002313(n+1)*A059843(n+1))`
-/

namespace A275115.P18028932006070855775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002313 (n + 1) * A059843 (n + 1)).toNat

end

end A275115.P18028932006070855775

/-! ## A275115.P1166130745843263752

`A020639(A038883(n+1)*A059843(n+1))`
-/

namespace A275115.P1166130745843263752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038883 (n + 1) * A059843 (n + 1)).toNat

end

end A275115.P1166130745843263752

/-! ## A275115.P8365988847544762824

`A020639(A059843(n+1)*A191023(n+1))`
-/

namespace A275115.P8365988847544762824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059843 (n + 1) * A191023 (n + 1)).toNat

end

end A275115.P8365988847544762824

/-! ## A275115.P16680984653119314887

`A020639(A059843(n+1)*A110589(n+4))`
-/

namespace A275115.P16680984653119314887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059843 (n + 1) * A110589 (n + 4)).toNat

end

end A275115.P16680984653119314887

/-! ## A275115.P7766123837290958546

`A020639(A059843(4*(n+1))*A059843(n+1))`
-/

namespace A275115.P7766123837290958546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059843 (4 * (n + 1)) * A059843 (n + 1)).toNat

end

end A275115.P7766123837290958546

/-!
# A275116: Positions of 2 in A274640.

The programs for A275116, there is no canonical definition to state claims against.
-/

/-! ## A275116.P1706993275326077289

`eq[1, A274641(n)]`
-/

namespace A275116.P1706993275326077289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275116.P1706993275326077289

/-! ## A275116.P14720576476023087909

`eq[2, A274640(n)]`
-/

namespace A275116.P14720576476023087909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275116.P14720576476023087909

/-! ## A275116.P6713478423419362137

`lt[A004443(A274641(n)+1), 1]`
-/

namespace A275116.P6713478423419362137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A274641 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P6713478423419362137

/-! ## A275116.P9885071177445915681

`lt[A008611(A274640(n)-1), 1]`
-/

namespace A275116.P9885071177445915681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A274640 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P9885071177445915681

/-! ## A275116.P10953259825696171777

`lt[A050059(A274640(n)+1), 2]`
-/

namespace A275116.P10953259825696171777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050059 (A274640 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P10953259825696171777

/-! ## A275116.P34517620334442605

`lt[A000032(A274640(n)-1), 2]`
-/

namespace A275116.P34517620334442605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A274640 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P34517620334442605

/-! ## A275116.P8710447745587126911

`lt[A050059(A274641(n)+2), 2]`
-/

namespace A275116.P8710447745587126911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050059 (A274641 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P8710447745587126911

/-! ## A275116.P6329625534077879671

`lt[A004443(2*A274641(n)), 1]`
-/

namespace A275116.P6329625534077879671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (2 * A274641 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P6329625534077879671

/-! ## A275116.P16362218338251512304

`lt[A094728(A274640(n)+1), 4]`
-/

namespace A275116.P16362218338251512304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A274640 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P16362218338251512304

/-! ## A275116.P7146155360588671909

`lt[1, A000041(C(2, A274641(n)))]`
-/

namespace A275116.P7146155360588671909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (A274641 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275116.P7146155360588671909

/-! ## A275116.P8343312592572369104

`lt[1, A274641(C(2, A274641(n)))]`
-/

namespace A275116.P8343312592572369104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (Nat.choose 2 (A274641 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275116.P8343312592572369104

/-! ## A275116.P17176792154033144089

`record[gcd(n, A063277(2*A274640(n)))]`
-/

namespace A275116.P17176792154033144089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A063277 (2 * A274640 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275116.P17176792154033144089

/-! ## A275116.P9901352578987488415

`lt[A008611((A274640(n)+n)%(n+1)), 1]`
-/

namespace A275116.P9901352578987488415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A274640 n + (n : ℤ)) (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275116.P9901352578987488415

/-! ## A275116.P15924269294980273674

`lt[A000032(A274641(n)), A274640(n)]`
-/

namespace A275116.P15924269294980273674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A274641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275116.P15924269294980273674

/-!
# A275117: Direction where Langton's ant is looking after n moves: 1 if looking in starting direction, 2 if looking 90 degrees clockwise from starting direction, 3 if looking 90 degrees counterclockwise from starting direction, or 4 if looking in direction opposite to starting direction.

The programs for A275117, there is no canonical definition to state claims against.
-/

/-! ## A275117.P2200974718902658870

`(2^A255938(n))%5`
-/

namespace A275117.P2200974718902658870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A255938 n : ℤ))) 5

end

end A275117.P2200974718902658870

/-! ## A275117.P1628335667380487163

`A070402(A255938(n))`
-/

namespace A275117.P1628335667380487163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A255938 n).toNat

end

end A275117.P1628335667380487163

/-! ## A275117.P8959132950992232416

`A070352(3*A255938(n))`
-/

namespace A275117.P8959132950992232416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (3 * A255938 n).toNat

end

end A275117.P8959132950992232416

/-! ## A275117.P6922107674382663922

`A070352(lcm(23, A255938(n)))`
-/

namespace A275117.P6922107674382663922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (Int.lcm 23 (A255938 n))

end

end A275117.P6922107674382663922

/-! ## A275117.P9792730756993682443

`A070352(xor(1, A255938(n)+1))`
-/

namespace A275117.P9792730756993682443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (Int.xor 1 (A255938 n + 1)).toNat

end

end A275117.P9792730756993682443

/-! ## A275117.P13085066445493967597

`A070352(A255938(n)+n+n)`
-/

namespace A275117.P13085066445493967597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A255938 n + (n : ℤ) + (n : ℤ)).toNat

end

end A275117.P13085066445493967597

/-! ## A275117.P64487457075592068

`A070352(A255938(n)+A005843(n))`
-/

namespace A275117.P64487457075592068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A255938 n + A005843 n).toNat

end

end A275117.P64487457075592068

/-! ## A275117.P6622325400496172890

`A070352(xor(A005843(n), A255938(n)))`
-/

namespace A275117.P6622325400496172890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (Int.xor (A005843 n) (A255938 n)).toNat

end

end A275117.P6622325400496172890

/-! ## A275117.P7765143364377785294

`A070352(A005843(n)-(A255938(n)-A005843(n)))`
-/

namespace A275117.P7765143364377785294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A005843 n - (A255938 n - A005843 n)).toNat

end

end A275117.P7765143364377785294

/-!
# A275118: Split primes p such that prime P lying above p is a Wieferich place of K (with discriminant D_K), for some imaginary quadratic field K of class number 1.

The programs for A275118, there is no canonical definition to state claims against.
-/

/-! ## A275118.P15856747332934409363

`A007917(or(A000108(2*n), A125848(n+1)))`
-/

namespace A275118.P15856747332934409363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Int.lor (A000108 (2 * n)) (A125848 (n + 1))).toNat

end

end A275118.P15856747332934409363

/-!
# A275119: The even integers in the sequence appear in blocks and the successive sizes of these blocks are given by the sequence itself.

The programs for A275119, there is no canonical definition to state claims against.
-/

/-! ## A275119.P14196329520958783918

`A000720(p?[A334111(A246696(n))])`
-/

namespace A275119.P14196329520958783918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (A246696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A275119.P14196329520958783918

/-!
# A275120: List the least common multiples of {1, 2, ..., k} for k = 0, 1, ...; this sequence gives the length of the n-th block of consecutive equal numbers.

The programs for A275120, the canonical program `A275120.P14177389286466694945` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275120 has offset 1).

The definition of A275120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275120.P16570048664892298075

`A376596(n)+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A275120.P16570048664892298075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A376596 n + a (n - 1)

end

end A275120.P16570048664892298075

namespace A275120

/-- `A376596(n)+a(n-1)` -/
def P16570048664892298075.Spec : Prop :=
  ∀ n, P16570048664892298075.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P14177389286466694945

`A057820(n+1)+C(2, n+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A275120

/-- `A057820(n+1)+C(2, n+2)` -/
def P14177389286466694945.Spec : Prop :=
  ∀ n, P14177389286466694945.a n = A275120 (n + 1)

theorem P14177389286466694945.correct : P14177389286466694945.Spec := by
  intro n
  simp only [A275120, Nat.add_sub_cancel]

end A275120

/-! ## A275120.P9383592909405023936

`Δ[A057820(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A275120.P9383592909405023936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A057820 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275120.P9383592909405023936

namespace A275120

/-- `Δ[A057820(n)+a(n-1)]` -/
def P9383592909405023936.Spec : Prop :=
  ∀ n, P9383592909405023936.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P15506851185599672394

`A057820(n+1)+A000007(n)`
-/

namespace A275120.P15506851185599672394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + A000007 n

end

end A275120.P15506851185599672394

namespace A275120

/-- `A057820(n+1)+A000007(n)` -/
def P15506851185599672394.Spec : Prop :=
  ∀ n, P15506851185599672394.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P3998956865275378759

`A054977(n)*A057820(n+1)`
-/

namespace A275120.P3998956865275378759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A057820 (n + 1)

end

end A275120.P3998956865275378759

namespace A275120

/-- `A054977(n)*A057820(n+1)` -/
def P3998956865275378759.Spec : Prop :=
  ∀ n, P3998956865275378759.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P12277022121069625354

`A057820(A054977(n)²²+n)`
-/

namespace A275120.P12277022121069625354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 ((A054977 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A275120.P12277022121069625354

namespace A275120

/-- `A057820(A054977(n)²²+n)` -/
def P12277022121069625354.Spec : Prop :=
  ∀ n, P12277022121069625354.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P17453683370950895999

`A063524(n+1)+A057820(n+1)`
-/

namespace A275120.P17453683370950895999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A057820 (n + 1)

end

end A275120.P17453683370950895999

namespace A275120

/-- `A063524(n+1)+A057820(n+1)` -/
def P17453683370950895999.Spec : Prop :=
  ∀ n, P17453683370950895999.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P6586483123270335074

`A057820(n+1)+A028310(n)-n`
-/

namespace A275120.P6586483123270335074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + (A028310 n - (n : ℤ))

end

end A275120.P6586483123270335074

namespace A275120

/-- `A057820(n+1)+A028310(n)-n` -/
def P6586483123270335074.Spec : Prop :=
  ∀ n, P6586483123270335074.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P11787765024922510825

`A057820(n+1)+A010051(2*(n+1))`
-/

namespace A275120.P11787765024922510825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + A010051 (2 * (n + 1))

end

end A275120.P11787765024922510825

namespace A275120

/-- `A057820(n+1)+A010051(2*(n+1))` -/
def P11787765024922510825.Spec : Prop :=
  ∀ n, P11787765024922510825.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P13727362276293932476

`A057820(n+1)*A369010(2*n+1)`
-/

namespace A275120.P13727362276293932476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) * A369010 (2 * n + 1)

end

end A275120.P13727362276293932476

namespace A275120

/-- `A057820(n+1)*A369010(2*n+1)` -/
def P13727362276293932476.Spec : Prop :=
  ∀ n, P13727362276293932476.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P12158223515670233310

`Δ[A000961(n+1)]+floor(acot(n))`
-/

namespace A275120.P12158223515670233310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A275120.P12158223515670233310

namespace A275120

/-- `Δ[A000961(n+1)]+floor(acot(n))` -/
def P12158223515670233310.Spec : Prop :=
  ∀ n, P12158223515670233310.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P15151669806365576565

`Δ[A057427(n)+A000961(n+1)]`
-/

namespace A275120.P15151669806365576565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275120.P15151669806365576565

namespace A275120

/-- `Δ[A057427(n)+A000961(n+1)]` -/
def P15151669806365576565.Spec : Prop :=
  ∀ n, P15151669806365576565.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P6548142139951881300

`Δ[A157532(n+1)+A000961(n+1)]`
-/

namespace A275120.P6548142139951881300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275120.P6548142139951881300

namespace A275120

/-- `Δ[A157532(n+1)+A000961(n+1)]` -/
def P6548142139951881300.Spec : Prop :=
  ∀ n, P6548142139951881300.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P18145790239036136814

`A019590(n+2)+Δ[A000961(n+1)]`
-/

namespace A275120.P18145790239036136814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (f1 (n + 1) - f1 n)

end

end A275120.P18145790239036136814

namespace A275120

/-- `A019590(n+2)+Δ[A000961(n+1)]` -/
def P18145790239036136814.Spec : Prop :=
  ∀ n, P18145790239036136814.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P4843732671908153864

`Δ[A000961(n+1)%A025475(n+1)]`
-/

namespace A275120.P4843732671908153864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (n + 1)) (A025475 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275120.P4843732671908153864

namespace A275120

/-- `Δ[A000961(n+1)%A025475(n+1)]` -/
def P4843732671908153864.Spec : Prop :=
  ∀ n, P4843732671908153864.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P10265937115230568861

`A000961(A028310(n)+2)-A000961(n+1)`
-/

namespace A275120.P10265937115230568861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A028310 n + 2).toNat - A000961 (n + 1)

end

end A275120.P10265937115230568861

namespace A275120

/-- `A000961(A028310(n)+2)-A000961(n+1)` -/
def P10265937115230568861.Spec : Prop :=
  ∀ n, P10265937115230568861.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P13844627354209700439

`A181062(A028310(n)+2)-A181062(n+1)`
-/

namespace A275120.P13844627354209700439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (A028310 n + 2).toNat - A181062 (n + 1)

end

end A275120.P13844627354209700439

namespace A275120

/-- `A181062(A028310(n)+2)-A181062(n+1)` -/
def P13844627354209700439.Spec : Prop :=
  ∀ n, P13844627354209700439.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P14621859687645686197

`A000961(n+2)+A000007(n)-A000961(n+1)`
-/

namespace A275120.P14621859687645686197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) + (A000007 n - A000961 (n + 1))

end

end A275120.P14621859687645686197

namespace A275120

/-- `A000961(n+2)+A000007(n)-A000961(n+1)` -/
def P14621859687645686197.Spec : Prop :=
  ∀ n, P14621859687645686197.a n = A275120 (n + 1)

end A275120

/-! ## A275120.P13479733463541529611

`(A000961(n+2)-A000961(n+1))*A054977(n)`
-/

namespace A275120.P13479733463541529611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 2) - A000961 (n + 1)) * A054977 n

end

end A275120.P13479733463541529611

namespace A275120

/-- `(A000961(n+2)-A000961(n+1))*A054977(n)` -/
def P13479733463541529611.Spec : Prop :=
  ∀ n, P13479733463541529611.a n = A275120 (n + 1)

end A275120

/-!
# A275121: a(n) is the smallest multiple of n that is a practical number.

The programs for A275121, there is no canonical definition to state claims against.
-/

/-! ## A275121.P234840883069618997

`(n+1)*A210445(n+1)`
-/

namespace A275121.P234840883069618997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210445 (n + 1)

end

end A275121.P234840883069618997

/-! ## A275121.P17202365857433662510

`round(A210445(n+1)/acot(A000027(n+1)))`
-/

namespace A275121.P17202365857433662510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210445 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ))

end

end A275121.P17202365857433662510

/-! ## A275121.P15744031232668343497

`A210445(A328399(2*n))*A328399(2*n)`
-/

namespace A275121.P15744031232668343497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A275121.P15744031232668343497

/-! ## A275121.P1427762701963952507

`A005843(n+1)/(1/A210445(n+1)+1/A210445(n+1))`
-/

namespace A275121.P1427762701963952507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (1 / (A210445 (n + 1) : ℚ) + 1 / (A210445 (n + 1) : ℚ))

end

end A275121.P1427762701963952507

/-! ## A275121.P12579031956632328794

`(n+1)/(A000007(n+1)+1/A210445(n+1))`
-/

namespace A275121.P12579031956632328794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((A000007 (n + 1) : ℚ) + 1 / (A210445 (n + 1) : ℚ))

end

end A275121.P12579031956632328794

/-! ## A275121.P7314545362091511371

`A075362(A210445(n+1)+A000217(n))`
-/

namespace A275121.P7314545362091511371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A210445 (n + 1) + A000217 n).toNat

end

end A275121.P7314545362091511371

/-!
# A275123: Even numbers n such that sigma(n) divides sigma(n^n).

The programs for A275123, there is no canonical definition to state claims against.
-/

/-! ## A275123.P15085364942512681376

`A275217(A181845(∑[n+1]))`
-/

namespace A275123.P15085364942512681376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275217 (A181845 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A275123.P15085364942512681376

/-! ## A275123.P10495903882000218644

`A008833(2*A275217(n+1))`
-/

namespace A275123.P10495903882000218644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * A275217 (n + 1)).toNat

end

end A275123.P10495903882000218644

/-! ## A275123.P17774376865020014396

`A014682(2*A275217(n+1))`
-/

namespace A275123.P17774376865020014396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A275217 (n + 1)).toNat

end

end A275123.P17774376865020014396

/-! ## A275123.P17650977155599979094

`A275217(A349520((2*n+1)²))`
-/

namespace A275123.P17650977155599979094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275217 (A349520 ((2 * n + 1) ^ 2)).toNat

end

end A275123.P17650977155599979094

/-! ## A275123.P18197005228616289708

`A275217(n+1)%p?[A038425(n)]`
-/

namespace A275123.P18197005228616289708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275217 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275123.P18197005228616289708

/-! ## A275123.P9752174998783882057

`A275217(A174344(A069894(n)))`
-/

namespace A275123.P9752174998783882057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275217 (A174344 (A069894 n).toNat).toNat

end

end A275123.P9752174998783882057

/-!
# A275124: Multiples of 5 where Pisano periods of Fibonacci numbers A001175 and Lucas numbers A106291 agree.

The programs for A275124, there is no canonical definition to state claims against.
-/

/-! ## A275124.P11664855822898411215

`∩[5*n, A374365(n+1)]`
-/

namespace A275124.P11664855822898411215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275124.P11664855822898411215

/-! ## A275124.P10600362100410405330

`filter[A374365(n+1), A079998(#)]`
-/

namespace A275124.P10600362100410405330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A275124.P10600362100410405330

/-!
# A275125: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-2), (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275125, there is no canonical definition to state claims against.
-/

/-! ## A275125.P5116573772153586426

`A275131(∑[4*n]+1)`
-/

namespace A275125.P5116573772153586426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275125.P5116573772153586426

/-! ## A275125.P9963140390471765671

`record[A003982(n)*A275131(n+1)]`
-/

namespace A275125.P9963140390471765671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275125.P9963140390471765671

/-! ## A275125.P13081083480704173072

`record[gcd(A008482(n), A275131(n+1))]`
-/

namespace A275125.P13081083480704173072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A275131 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275125.P13081083480704173072

/-! ## A275125.P18050811059743158858

`A275131(A001844(n))%A332116(n)`
-/

namespace A275125.P18050811059743158858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275131 (A001844 n).toNat) (A332116 n)

end

end A275125.P18050811059743158858

/-! ## A275125.P16523164404329282650

`gcd(A010893(n), A275131(A001844(n)))`
-/

namespace A275125.P16523164404329282650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010893 (n + 13)) (A275131 (A001844 n).toNat)

end

end A275125.P16523164404329282650

/-!
# A275126: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275126, the canonical program `A275126.P7885068156591957125` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275126 has offset 1).

The definition of A275126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275126.P7885068156591957125

`ogf((5+x+7x^2+6x^3+7x^4+11x^5-4x^6-10x^7-5x^8-x^9)/(1-3x+2x^2-4x^3-x^4-3x^5-8x^6-x^7+3x^8+x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275126

/-- `ogf((5+x+7x^2+6x^3+7x^4+11x^5-4x^6-10x^7-5x^8-x^9)/(1-3x+2x^2-4x^3-x^4-3x^5-8x^6-x^7+3x^8+x^9))` -/
def P7885068156591957125.Spec : Prop :=
  ∀ n, P7885068156591957125.a n = A275126 (n + 1)

theorem P7885068156591957125.correct : P7885068156591957125.Spec := by
  intro n
  simp only [A275126, Nat.add_sub_cancel]

end A275126

/-! ## A275126.P5814474206479041251

`A275131(∑[n+3]+1)`
-/

namespace A275126.P5814474206479041251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275126.P5814474206479041251

namespace A275126

/-- `A275131(∑[n+3]+1)` -/
def P5814474206479041251.Spec : Prop :=
  ∀ n, P5814474206479041251.a n = A275126 (n + 1)

end A275126

/-!
# A275127: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275127, there is no canonical definition to state claims against.
-/

/-! ## A275127.P17580800615126567267

`A275131(A141214(n+1))`
-/

namespace A275127.P17580800615126567267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A141214 (n + 1)).toNat

end

end A275127.P17580800615126567267

/-! ## A275127.P17452804907422764759

`A275131(A055998(n+2))`
-/

namespace A275127.P17452804907422764759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A055998 (n + 2)).toNat

end

end A275127.P17452804907422764759

/-! ## A275127.P6807169924699790625

`A275131(A056000(n)+7)`
-/

namespace A275127.P6807169924699790625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A056000 n + 7).toNat

end

end A275127.P6807169924699790625

/-! ## A275127.P12436402042714919306

`A275131(Δ[A006416(n+2)])`
-/

namespace A275127.P12436402042714919306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (f1 (n + 1) - f1 n).toNat

end

end A275127.P12436402042714919306

/-! ## A275127.P3036173726670726283

`A275131(A052905(n+1)+2)`
-/

namespace A275127.P3036173726670726283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A052905 (n + 1) + 2).toNat

end

end A275127.P3036173726670726283

/-!
# A275128: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275128, there is no canonical definition to state claims against.
-/

/-! ## A275128.P17779704700674592549

`A275131(A046691(n+3))`
-/

namespace A275128.P17779704700674592549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A046691 (n + 3)).toNat

end

end A275128.P17779704700674592549

/-! ## A275128.P18210884376053946156

`A275131(Δ[A023545(n+1)])`
-/

namespace A275128.P18210884376053946156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (f1 (n + 1) - f1 n).toNat

end

end A275128.P18210884376053946156

/-! ## A275128.P5213872642478584320

`A275131(A055998(n+3)-1)`
-/

namespace A275128.P5213872642478584320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A055998 (n + 3) - 1).toNat

end

end A275128.P5213872642478584320

/-! ## A275128.P17278247980644635127

`A275131(A000217(n+5)-4)`
-/

namespace A275128.P17278247980644635127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000217 (n + 5) - 4).toNat

end

end A275128.P17278247980644635127

/-! ## A275128.P1032303452140253213

`A275131(A000124(n+5)-5)`
-/

namespace A275128.P1032303452140253213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 5) - 5).toNat

end

end A275128.P1032303452140253213

/-!
# A275129: Number of n X 6 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275129, there is no canonical definition to state claims against.
-/

/-! ## A275129.P4810924532002923813

`A275131(A052905(n+3))`
-/

namespace A275129.P4810924532002923813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A052905 (n + 3)).toNat

end

end A275129.P4810924532002923813

/-! ## A275129.P5072651736091042818

`A275131(eq[3, A219347(n)])`
-/

namespace A275129.P5072651736091042818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275129.P5072651736091042818

/-! ## A275129.P6749874472453780080

`A275131(A000217(n+6)-5)`
-/

namespace A275129.P6749874472453780080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000217 (n + 6) - 5).toNat

end

end A275129.P6749874472453780080

/-! ## A275129.P15410368972372010530

`A275131(A000124(n+6)-6)`
-/

namespace A275129.P15410368972372010530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 6) - 6).toNat

end

end A275129.P15410368972372010530

/-! ## A275129.P15050730895087136089

`A275131(A167614(n+5)-8)`
-/

namespace A275129.P15050730895087136089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A167614 (n + 5) - 8).toNat

end

end A275129.P15050730895087136089

/-!
# A275130: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275130, there is no canonical definition to state claims against.
-/

/-! ## A275130.P7340640620370941062

`A275131(eq[4, A219347(n)])`
-/

namespace A275130.P7340640620370941062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275130.P7340640620370941062

/-! ## A275130.P9135925176149093300

`A275131(eq[6, A193592(n)])`
-/

namespace A275130.P9135925176149093300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275130.P9135925176149093300

/-! ## A275130.P2341950362316728881

`A275131(Δ[A023551(n+2)])`
-/

namespace A275130.P2341950362316728881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (f1 (n + 1) - f1 n).toNat

end

end A275130.P2341950362316728881

/-! ## A275130.P14520623385814948078

`A275131(eq[10, A185782(n+1)])`
-/

namespace A275130.P14520623385814948078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275130.P14520623385814948078

/-! ## A275130.P15171156617614503990

`A275131(eq[32, A057728(n+1)])`
-/

namespace A275130.P15171156617614503990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275130.P15171156617614503990

/-!
# A275131: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275131, there is no canonical definition to state claims against.
-/

/-! ## A275131.P16660928625308988560

`A274728(n+1)-A028572(A006252(n))`
-/

namespace A275131.P16660928625308988560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (n + 1) - A028572 (A006252 n).toNat

end

end A275131.P16660928625308988560

/-! ## A275131.P13464609898817624864

`A275183(n+1)+A137579(A013609(2*(n+1)))`
-/

namespace A275131.P13464609898817624864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (n + 1) + A137579 (A013609 (2 * (n + 1))).toNat

end

end A275131.P13464609898817624864

/-!
# A275132: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275132, the canonical program `A275132.P9148275348864666762` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275132 has offset 1).

The definition of A275132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275132.P9148275348864666762

`ogf((2+6x+5x^2+3x^3-5x^4-4x^5)/(1-3x-2x^2-6x^3+2x^4+4x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275132

/-- `ogf((2+6x+5x^2+3x^3-5x^4-4x^5)/(1-3x-2x^2-6x^3+2x^4+4x^5))` -/
def P9148275348864666762.Spec : Prop :=
  ∀ n, P9148275348864666762.a n = A275132 (n + 1)

theorem P9148275348864666762.correct : P9148275348864666762.Spec := by
  intro n
  simp only [A275132, Nat.add_sub_cancel]

end A275132

/-! ## A275132.P15029182947795405108

`A275131(∑[n+2]+4)`
-/

namespace A275132.P15029182947795405108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275132.P15029182947795405108

namespace A275132

/-- `A275131(∑[n+2]+4)` -/
def P15029182947795405108.Spec : Prop :=
  ∀ n, P15029182947795405108.a n = A275132 (n + 1)

end A275132

/-! ## A275132.P14819664246742666001

`-((1-4/2)*A275131(A167614(n+1)))`
-/

namespace A275132.P14819664246742666001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((1 - (4 : ℚ) / 2) * (A275131 (A167614 (n + 1)).toNat : ℚ))

end

end A275132.P14819664246742666001

namespace A275132

/-- `-((1-4/2)*A275131(A167614(n+1)))` -/
def P14819664246742666001.Spec : Prop :=
  ∀ n, P14819664246742666001.a n = (A275132 (n + 1) : ℚ)

end A275132

/-! ## A275132.P3294793693725065451

`A275131(A167614(n+1))%A017118(n)`
-/

namespace A275132.P3294793693725065451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275131 (A167614 (n + 1)).toNat) (A017118 n)

end

end A275132.P3294793693725065451

namespace A275132

/-- `A275131(A167614(n+1))%A017118(n)` -/
def P3294793693725065451.Spec : Prop :=
  ∀ n, P3294793693725065451.a n = A275132 (n + 1)

end A275132

/-! ## A275132.P2779251380825305606

`lcm(A033999(n), A275131(A034856(n+1)+5))`
-/

namespace A275132.P2779251380825305606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275131 (A034856 (n + 1) + 5).toNat)

end

end A275132.P2779251380825305606

namespace A275132

/-- `lcm(A033999(n), A275131(A034856(n+1)+5))` -/
def P2779251380825305606.Spec : Prop :=
  ∀ n, (P2779251380825305606.a n : ℤ) = A275132 (n + 1)

end A275132

/-!
# A275133: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275133, there is no canonical definition to state claims against.
-/

/-! ## A275133.P11423246173455736920

`A275131(∑[n+3]+7)`
-/

namespace A275133.P11423246173455736920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A275133.P11423246173455736920

/-! ## A275133.P3598006621733689766

`gcd(n, n+1)*A275131(A034856(n+2)+6)`
-/

namespace A275133.P3598006621733689766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A275131 (A034856 (n + 2) + 6).toNat

end

end A275133.P3598006621733689766

/-! ## A275133.P15073986992974123402

`A275131(A167614(n+2)+1)%A119860(n+1)`
-/

namespace A275133.P15073986992974123402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275131 (A167614 (n + 2) + 1).toNat) (A119860 (n + 1))

end

end A275133.P15073986992974123402

/-! ## A275133.P879550322981442565

`A275131(A167614(n+2)+1)+A025439(A224344(n))`
-/

namespace A275133.P879550322981442565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A167614 (n + 2) + 1).toNat + A025439 (A224344 n).toNat

end

end A275133.P879550322981442565

/-! ## A275133.P5511623524315606393

`A275131(A152950(n+3)+A020705(n))%A189540(n+1)`
-/

namespace A275133.P5511623524315606393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275131 (A152950 (n + 3) + A020705 n).toNat) (A189540 (n + 1))

end

end A275133.P5511623524315606393

/-!
# A275134: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275134, there is no canonical definition to state claims against.
-/

/-! ## A275134.P9943387905111923811

`A275131(A056000(n)+15)`
-/

namespace A275134.P9943387905111923811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A056000 n + 15).toNat

end

end A275134.P9943387905111923811

/-! ## A275134.P9483343860926448672

`A275131(A167614(n+3)+2)`
-/

namespace A275134.P9483343860926448672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A167614 (n + 3) + 2).toNat

end

end A275134.P9483343860926448672

/-! ## A275134.P6523967991198634103

`A275131(A000217(n+4)+5)`
-/

namespace A275134.P6523967991198634103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000217 (n + 4) + 5).toNat

end

end A275134.P6523967991198634103

/-! ## A275134.P7614524564977841515

`A275131(A055999(n+3)-2*n)`
-/

namespace A275134.P7614524564977841515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A275134.P7614524564977841515

/-! ## A275134.P6150249949736268475

`A275131(A000124(n+5)+n-(2*n+1))`
-/

namespace A275134.P6150249949736268475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 5) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A275134.P6150249949736268475

/-!
# A275135: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275135, there is no canonical definition to state claims against.
-/

/-! ## A275135.P476264860673541109

`A275131(A000124(n+5)+5)`
-/

namespace A275135.P476264860673541109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 5) + 5).toNat

end

end A275135.P476264860673541109

/-! ## A275135.P14373792037591914950

`A275131(A000096(n+4)+7)`
-/

namespace A275135.P14373792037591914950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000096 (n + 4) + 7).toNat

end

end A275135.P14373792037591914950

/-! ## A275135.P5061360881524809679

`A275131(A000217(n+5)+6)`
-/

namespace A275135.P5061360881524809679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000217 (n + 5) + 6).toNat

end

end A275135.P5061360881524809679

/-! ## A275135.P2166803604727184122

`A275131(A034856(n+4)+8)`
-/

namespace A275135.P2166803604727184122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A034856 (n + 4) + 8).toNat

end

end A275135.P2166803604727184122

/-! ## A275135.P17697672422872971033

`A275131(A055998(n+3)+9)`
-/

namespace A275135.P17697672422872971033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A055998 (n + 3) + 9).toNat

end

end A275135.P17697672422872971033

/-!
# A275136: Number of 7 X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275136, there is no canonical definition to state claims against.
-/

/-! ## A275136.P12521074055012208421

`A275131(A133263(n+6)+5)`
-/

namespace A275136.P12521074055012208421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A133263 (n + 6) + 5).toNat

end

end A275136.P12521074055012208421

/-! ## A275136.P4412122986707146156

`A275131(A000217(n+6)+7)`
-/

namespace A275136.P4412122986707146156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000217 (n + 6) + 7).toNat

end

end A275136.P4412122986707146156

/-! ## A275136.P1449482759841450955

`A275131(A000124(n+7)-(n+1))`
-/

namespace A275136.P1449482759841450955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A275136.P1449482759841450955

/-! ## A275136.P4940349043893402380

`A275131(A000124(n+5)+n+12)`
-/

namespace A275136.P4940349043893402380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000124 (n + 5) + (n : ℤ) + 12).toNat

end

end A275136.P4940349043893402380

/-! ## A275136.P6303577435290112962

`A275131(A000096(n+7)-A005408(n+3))`
-/

namespace A275136.P6303577435290112962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A275136.P6303577435290112962

/-!
# A275137: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275137, there is no canonical definition to state claims against.
-/

/-! ## A275137.P9768092476125284195

`A275142((n+1)²+n²)`
-/

namespace A275137.P9768092476125284195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 ((n + 1) ^ 2 + n ^ 2)

end

end A275137.P9768092476125284195

/-! ## A275137.P11301222440472714002

`record[A275142(A330613(n+1))]`
-/

namespace A275137.P11301222440472714002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275137.P11301222440472714002

/-! ## A275137.P12206872173774997526

`record[A003982(n)*A275142(n+1)]`
-/

namespace A275137.P12206872173774997526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275137.P12206872173774997526

/-! ## A275137.P1833814157162563949

`record[gcd(A037012(n), A275142(n+1))]`
-/

namespace A275137.P1833814157162563949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A275142 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275137.P1833814157162563949

/-! ## A275137.P6649582256807787280

`gcd(A000038(n), A275142(A001844(n)))`
-/

namespace A275137.P6649582256807787280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275142 (A001844 n).toNat)

end

end A275137.P6649582256807787280

/-!
# A275138: Number of n X 4 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275138, the canonical program `A275138.P4737506307290959950` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275138 has offset 1).

The definition of A275138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275138.P7586376287935987912

`ogf((4+32x+16x^2)/(1-4x-4x^2))`
-/

namespace A275138.P7586376287935987912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 32, 16] [1, -4, -4] n

end

end A275138.P7586376287935987912

namespace A275138

/-- `ogf((4+32x+16x^2)/(1-4x-4x^2))` -/
def P7586376287935987912.Spec : Prop :=
  ∀ n, P7586376287935987912.a n = A275138 (n + 1)

end A275138

/-! ## A275138.P4737506307290959950

`4*a(n-1)+4*a(n-2)` with `a(0)=4, a(1)=48, a(2)=224`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275138

/-- `4*a(n-1)+4*a(n-2)` -/
def P4737506307290959950.Spec : Prop :=
  ∀ n, (P4737506307290959950.a n : ℤ) = A275138 (n + 1)

theorem P4737506307290959950.correct : P4737506307290959950.Spec := by
  intro n
  simp only [A275138, Nat.add_sub_cancel]

end A275138

/-! ## A275138.P16679306772586169318

`gcd(2, A099425(n))*A170931(n+1)`
-/

namespace A275138.P16679306772586169318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A099425 n) : ℤ) * A170931 (n + 1)

end

end A275138.P16679306772586169318

namespace A275138

/-- `gcd(2, A099425(n))*A170931(n+1)` -/
def P16679306772586169318.Spec : Prop :=
  ∀ n, P16679306772586169318.a n = A275138 (n + 1)

end A275138

/-! ## A275138.P12688549694305335019

`A084128(n+1)*A170931(n²%(n+1))`
-/

namespace A275138.P12688549694305335019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 (n + 1) * A170931 (n ^ 2 % (n + 1))

end

end A275138.P12688549694305335019

namespace A275138

/-- `A084128(n+1)*A170931(n²%(n+1))` -/
def P12688549694305335019.Spec : Prop :=
  ∀ n, P12688549694305335019.a n = A275138 (n + 1)

end A275138

/-! ## A275138.P5682883434460317533

`A011782(A009005(n+1))*A078057(n)`
-/

namespace A275138.P5682883434460317533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A009005 (n + 1)).toNat * A078057 n

end

end A275138.P5682883434460317533

namespace A275138

/-- `A011782(A009005(n+1))*A078057(n)` -/
def P5682883434460317533.Spec : Prop :=
  ∀ n, P5682883434460317533.a n = A275138 (n + 1)

end A275138

/-! ## A275138.P14701966429029259225

`A081294(n+1)/A081294(n)*A084128(n+1)`
-/

namespace A275138.P14701966429029259225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081294 (n + 1) : ℚ) / (A081294 n : ℚ) * (A084128 (n + 1) : ℚ)

end

end A275138.P14701966429029259225

namespace A275138

/-- `A081294(n+1)/A081294(n)*A084128(n+1)` -/
def P14701966429029259225.Spec : Prop :=
  ∀ n, P14701966429029259225.a n = (A275138 (n + 1) : ℚ)

end A275138

/-! ## A275138.P9192224774454283121

`A011782(n+1)²/A011782(2*n)*A170931(n+1)`
-/

namespace A275138.P9192224774454283121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 : ℚ) / (A011782 (2 * n) : ℚ) * (A170931 (n + 1) : ℚ)

end

end A275138.P9192224774454283121

namespace A275138

/-- `A011782(n+1)²/A011782(2*n)*A170931(n+1)` -/
def P9192224774454283121.Spec : Prop :=
  ∀ n, P9192224774454283121.a n = (A275138 (n + 1) : ℚ)

end A275138

/-! ## A275138.P569121707804931880

`A011782(2*n+1)/A011782(2*n)*A170931(n+1)`
-/

namespace A275138.P569121707804931880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) : ℚ) / (A011782 (2 * n) : ℚ) * (A170931 (n + 1) : ℚ)

end

end A275138.P569121707804931880

namespace A275138

/-- `A011782(2*n+1)/A011782(2*n)*A170931(n+1)` -/
def P569121707804931880.Spec : Prop :=
  ∀ n, P569121707804931880.a n = (A275138 (n + 1) : ℚ)

end A275138

/-! ## A275138.P12459007139990412084

`A081294(n+1)*A084128(n+1)/A081294(n)`
-/

namespace A275138.P12459007139990412084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081294 (n + 1) * A084128 (n + 1) : ℚ) / (A081294 n : ℚ)

end

end A275138.P12459007139990412084

namespace A275138

/-- `A081294(n+1)*A084128(n+1)/A081294(n)` -/
def P12459007139990412084.Spec : Prop :=
  ∀ n, P12459007139990412084.a n = (A275138 (n + 1) : ℚ)

end A275138

/-!
# A275139: Number of n X 5 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275139, the canonical program `A275139.P2190337482479674266` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275139 has offset 1).

The definition of A275139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275139.P2190337482479674266

`ogf((8+120x+56x^2+8x^3)/(1-3x-5x^2-x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275139

/-- `ogf((8+120x+56x^2+8x^3)/(1-3x-5x^2-x^3))` -/
def P2190337482479674266.Spec : Prop :=
  ∀ n, P2190337482479674266.a n = A275139 (n + 1)

theorem P2190337482479674266.correct : P2190337482479674266.Spec := by
  intro n
  simp only [A275139, Nat.add_sub_cancel]

end A275139

/-! ## A275139.P8411983743212969518

`A275142(A046691(n+3))`
-/

namespace A275139.P8411983743212969518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A046691 (n + 3)).toNat

end

end A275139.P8411983743212969518

namespace A275139

/-- `A275142(A046691(n+3))` -/
def P8411983743212969518.Spec : Prop :=
  ∀ n, P8411983743212969518.a n = A275139 (n + 1)

end A275139

/-! ## A275139.P12316531819453569813

`A275142(Δ[A023545(n+1)])`
-/

namespace A275139.P12316531819453569813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (f1 (n + 1) - f1 n).toNat

end

end A275139.P12316531819453569813

namespace A275139

/-- `A275142(Δ[A023545(n+1)])` -/
def P12316531819453569813.Spec : Prop :=
  ∀ n, P12316531819453569813.a n = A275139 (n + 1)

end A275139

/-! ## A275139.P15536825959880030104

`A275142(A000096(n+4)-3)`
-/

namespace A275139.P15536825959880030104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000096 (n + 4) - 3).toNat

end

end A275139.P15536825959880030104

namespace A275139

/-- `A275142(A000096(n+4)-3)` -/
def P15536825959880030104.Spec : Prop :=
  ∀ n, P15536825959880030104.a n = A275139 (n + 1)

end A275139

/-! ## A275139.P3980168047249827562

`A275142(A000217(n+5)-4)`
-/

namespace A275139.P3980168047249827562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 5) - 4).toNat

end

end A275139.P3980168047249827562

namespace A275139

/-- `A275142(A000217(n+5)-4)` -/
def P3980168047249827562.Spec : Prop :=
  ∀ n, P3980168047249827562.a n = A275139 (n + 1)

end A275139

/-!
# A275140: Number of n X 6 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275140, there is no canonical definition to state claims against.
-/

/-! ## A275140.P6392084572482449007

`A275142(A000217(n+6)-5)`
-/

namespace A275140.P6392084572482449007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 6) - 5).toNat

end

end A275140.P6392084572482449007

/-! ## A275140.P6030468352977631150

`A275142(A000124(n+6)-6)`
-/

namespace A275140.P6030468352977631150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000124 (n + 6) - 6).toNat

end

end A275140.P6030468352977631150

/-! ## A275140.P4322662802318678633

`A275142(Δ[Δ[A006504(n+1)]])`
-/

namespace A275140.P4322662802318678633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (f1 (n + 1) - f1 n).toNat

end

end A275140.P4322662802318678633

/-! ## A275140.P9544289617177976799

`A275142(Δ[A023545(n+2)]-1)`
-/

namespace A275140.P9544289617177976799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (f1 (n + 1) - f1 n - 1).toNat

end

end A275140.P9544289617177976799

/-! ## A275140.P13170426379281630916

`A275142(A000096(n+4)+n+2)`
-/

namespace A275140.P13170426379281630916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A275140.P13170426379281630916

/-!
# A275141: Number of n X 7 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275141, there is no canonical definition to state claims against.
-/

/-! ## A275141.P11346534269703963823

`A275142(A055999(n+4))`
-/

namespace A275141.P11346534269703963823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A055999 (n + 4)).toNat

end

end A275141.P11346534269703963823

/-! ## A275141.P8330045583039969611

`A275142(A000096(n+6)-5)`
-/

namespace A275141.P8330045583039969611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000096 (n + 6) - 5).toNat

end

end A275141.P8330045583039969611

/-! ## A275141.P9955576402297481944

`A275142(A000217(n+7)-6)`
-/

namespace A275141.P9955576402297481944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 7) - 6).toNat

end

end A275141.P9955576402297481944

/-! ## A275141.P13399220281474813679

`A275142(A000124(n+7)-7)`
-/

namespace A275141.P13399220281474813679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000124 (n + 7) - 7).toNat

end

end A275141.P13399220281474813679

/-! ## A275141.P10468477266939631323

`A275142(A179865(n+7)+n+1)`
-/

namespace A275141.P10468477266939631323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A179865 (n + 7) + (n + 1 : ℤ)).toNat

end

end A275141.P10468477266939631323

/-!
# A275142: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275142, there is no canonical definition to state claims against.
-/

/-! ## A275142.P6606553763326837873

`A102323(n)+A037800(A000244(n))`
-/

namespace A275142.P6606553763326837873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102323 n + A037800 (A000244 n).toNat

end

end A275142.P6606553763326837873

/-! ## A275142.P18390760448308230702

`A181796(A001790(n))*A202979(n+1)`
-/

namespace A275142.P18390760448308230702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A001790 n).toNat * A202979 (n + 1)

end

end A275142.P18390760448308230702

/-! ## A275142.P17642771651859038464

`and(A002487(A083323(n)), A241370(n+1))`
-/

namespace A275142.P17642771651859038464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 (A083323 n).toNat) (A241370 (n + 1))

end

end A275142.P17642771651859038464

/-! ## A275142.P7578483079563230991

`A037800(A000244(n))+A003963(A302915(n+1))`
-/

namespace A275142.P7578483079563230991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A000244 n).toNat + A003963 (A302915 (n + 1)).toNat

end

end A275142.P7578483079563230991

/-! ## A275142.P4707275228644743152

`A290103(2*A302915(n+1))+A037800(A000244(n))`
-/

namespace A275142.P4707275228644743152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A302915 (n + 1)).toNat + A037800 (A000244 n).toNat

end

end A275142.P4707275228644743152

/-!
# A275143: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275143, the canonical program `A275143.P18223213180348603912` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275143 has offset 1).

The definition of A275143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275143.P14985038705173947867

`ogf((5+21x-18x^2+51x^3-20x^4)/(1-3x+2x^2-x^3))`
-/

namespace A275143.P14985038705173947867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 21, -18, 51, -20] [1, -3, 2, -1] n

end

end A275143.P14985038705173947867

namespace A275143

/-- `ogf((5+21x-18x^2+51x^3-20x^4)/(1-3x+2x^2-x^3))` -/
def P14985038705173947867.Spec : Prop :=
  ∀ n, P14985038705173947867.a n = A275143 (n + 1)

end A275143

/-! ## A275143.P18223213180348603912

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=5, a(1)=36, a(2)=80, a(3)=224, a(4)=528`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275143

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P18223213180348603912.Spec : Prop :=
  ∀ n, P18223213180348603912.a n = A275143 (n + 1)

theorem P18223213180348603912.correct : P18223213180348603912.Spec := by
  intro n
  simp only [A275143, Nat.add_sub_cancel]

end A275143

/-! ## A275143.P11656915016342644333

`A275142(∑[n+2]+4)`
-/

namespace A275143.P11656915016342644333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275143.P11656915016342644333

namespace A275143

/-- `A275142(∑[n+2]+4)` -/
def P11656915016342644333.Spec : Prop :=
  ∀ n, P11656915016342644333.a n = A275143 (n + 1)

end A275143

/-! ## A275143.P2589719729521732470

`lcm(2^val(n+1, 2), A275142(A046691(n)+7))`
-/

namespace A275143.P2589719729521732470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A275142 (A046691 n + 7).toNat)

end

end A275143.P2589719729521732470

namespace A275143

/-- `lcm(2^val(n+1, 2), A275142(A046691(n)+7))` -/
def P2589719729521732470.Spec : Prop :=
  ∀ n, (P2589719729521732470.a n : ℤ) = A275143 (n + 1)

end A275143

/-! ## A275143.P2374983134590776676

`A275142(A046691(n)+7)%A063433(n)`
-/

namespace A275143.P2374983134590776676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275142 (A046691 n + 7).toNat) (A063433 n)

end

end A275143.P2374983134590776676

namespace A275143

/-- `A275142(A046691(n)+7)%A063433(n)` -/
def P2374983134590776676.Spec : Prop :=
  ∀ n, P2374983134590776676.a n = A275143 (n + 1)

end A275143

/-!
# A275144: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275144, there is no canonical definition to state claims against.
-/

/-! ## A275144.P17770745154260158570

`A275142(A052905(n)+9)`
-/

namespace A275144.P17770745154260158570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A052905 n + 9).toNat

end

end A275144.P17770745154260158570

/-! ## A275144.P4392905155342981879

`A275142(A167614(n+2)+1)`
-/

namespace A275144.P4392905155342981879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A167614 (n + 2) + 1).toNat

end

end A275144.P4392905155342981879

/-! ## A275144.P14330125833991046696

`A275142(A000217(n+3)+4)`
-/

namespace A275144.P14330125833991046696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 3) + 4).toNat

end

end A275144.P14330125833991046696

/-! ## A275144.P15715352504489334560

`A275142(A161680(n+4)+4)`
-/

namespace A275144.P15715352504489334560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A161680 (n + 4) + 4).toNat

end

end A275144.P15715352504489334560

/-! ## A275144.P4178317079711653123

`A275142(A046691(n+1)+8)`
-/

namespace A275144.P4178317079711653123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A046691 (n + 1) + 8).toNat

end

end A275144.P4178317079711653123

/-!
# A275145: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275145, there is no canonical definition to state claims against.
-/

/-! ## A275145.P16304804337379506835

`A275142(A167499(n+3))`
-/

namespace A275145.P16304804337379506835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A167499 (n + 3)).toNat

end

end A275145.P16304804337379506835

/-! ## A275145.P5268146799183802136

`A275142(A167614(n+3)+2)`
-/

namespace A275145.P5268146799183802136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A167614 (n + 3) + 2).toNat

end

end A275145.P5268146799183802136

/-! ## A275145.P16443588738902133074

`A275142(A000124(n+4)+4)`
-/

namespace A275145.P16443588738902133074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000124 (n + 4) + 4).toNat

end

end A275145.P16443588738902133074

/-! ## A275145.P17852390777806258498

`A275142(A000217(n+4)+5)`
-/

namespace A275145.P17852390777806258498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 4) + 5).toNat

end

end A275145.P17852390777806258498

/-! ## A275145.P13932434919708852037

`A275142(A027379(n+2)+8)`
-/

namespace A275145.P13932434919708852037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A027379 (n + 2) + 8).toNat

end

end A275145.P13932434919708852037

/-!
# A275146: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275146, there is no canonical definition to state claims against.
-/

/-! ## A275146.P4804957846558301321

`A275142(A167614(n+4)+3)`
-/

namespace A275146.P4804957846558301321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A167614 (n + 4) + 3).toNat

end

end A275146.P4804957846558301321

/-! ## A275146.P3492753398805411887

`A275142(A000217(n+5)+6)`
-/

namespace A275146.P3492753398805411887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 5) + 6).toNat

end

end A275146.P3492753398805411887

/-! ## A275146.P12908807434757157099

`A275142(A055998(n+3)+9)`
-/

namespace A275146.P12908807434757157099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A055998 (n + 3) + 9).toNat

end

end A275146.P12908807434757157099

/-! ## A275146.P16882968396334449125

`A275142(A161680(n+6)+6)`
-/

namespace A275146.P16882968396334449125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A161680 (n + 6) + 6).toNat

end

end A275146.P16882968396334449125

/-! ## A275146.P16941063876872756925

`A275142(A055999(n+6)-A005843(A005843(n)+9))`
-/

namespace A275146.P16941063876872756925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A055999 (n + 6) - A005843 (A005843 n + 9).toNat).toNat

end

end A275146.P16941063876872756925

/-!
# A275147: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-2) (-1,-2) or (0,-1) and new values introduced in order 0..2.

The programs for A275147, there is no canonical definition to state claims against.
-/

/-! ## A275147.P11275276710617455772

`A275142(A167487(n+5))`
-/

namespace A275147.P11275276710617455772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A167487 (n + 5)).toNat

end

end A275147.P11275276710617455772

/-! ## A275147.P11608231871267387318

`A275142(A000217(n+6)+7)`
-/

namespace A275147.P11608231871267387318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A000217 (n + 6) + 7).toNat

end

end A275147.P11608231871267387318

/-! ## A275147.P16548898581406838116

`A275142(A161680(n+7)+7)`
-/

namespace A275147.P16548898581406838116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A161680 (n + 7) + 7).toNat

end

end A275147.P16548898581406838116

/-! ## A275147.P18397479702880693191

`A275142(A179865(n+7)+7)`
-/

namespace A275147.P18397479702880693191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A179865 (n + 7) + 7).toNat

end

end A275147.P18397479702880693191

/-! ## A275147.P9274623546137598092

`A275142(A055999(n+5)-A005843(n+1))`
-/

namespace A275147.P9274623546137598092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A275147.P9274623546137598092

/-!
# A275151: a(1) = 8; a(n) = 3*a(n-1) + 2*sqrt(2*a(n-1)*(a(n-1)-7)) - 7 for n > 1.

The programs for A275151, the canonical program `A275151.P6207991716556442764` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275151 has offset 1).

The definition of A275151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275151.P6207991716556442764

`3*a(n-1)+2*sqrt(2*a(n-1)*(a(n-1)-7))-7` with `a(0)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275151

/-- `3*a(n-1)+2*sqrt(2*a(n-1)*(a(n-1)-7))-7` -/
def P6207991716556442764.Spec : Prop :=
  ∀ n, P6207991716556442764.a n = (A275151 (n + 1) : ℝ)

end A275151

/-! ## A275151.P14824684632495419328

`ogf((8-31x+9x^2)/(1-7x+7x^2-x^3))`
-/

namespace A275151.P14824684632495419328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -31, 9] [1, -7, 7, -1] n

end

end A275151.P14824684632495419328

namespace A275151

/-- `ogf((8-31x+9x^2)/(1-7x+7x^2-x^3))` -/
def P14824684632495419328.Spec : Prop :=
  ∀ n, P14824684632495419328.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P12661069731047994244

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=8, a(1)=25, a(2)=128`
-/

namespace A275151.P12661069731047994244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 25, 128] fun n a =>
  7 * a (n - 1) - 7 * a (n - 2) + a (n - 3)

end

end A275151.P12661069731047994244

namespace A275151

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P12661069731047994244.Spec : Prop :=
  ∀ n, P12661069731047994244.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P13464474450007649667

`floor((A275793(n)+6)/2)+1`
-/

namespace A275151.P13464474450007649667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275793 n + 6 : ℚ) / 2⌋ + 1

end

end A275151.P13464474450007649667

namespace A275151

/-- `floor((A275793(n)+6)/2)+1` -/
def P13464474450007649667.Spec : Prop :=
  ∀ n, P13464474450007649667.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P16151245855935367394

`A077240(n)+3-A001108(n)`
-/

namespace A275151.P16151245855935367394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077240 n + (3 - A001108 n)

end

end A275151.P16151245855935367394

namespace A275151

/-- `A077240(n)+3-A001108(n)` -/
def P16151245855935367394.Spec : Prop :=
  ∀ n, P16151245855935367394.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P6093798538787997005

`5*A001653(n+1)-A009759(n)`
-/

namespace A275151.P6093798538787997005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001653 (n + 1) - A009759 n

end

end A275151.P6093798538787997005

namespace A275151

/-- `5*A001653(n+1)-A009759(n)` -/
def P6093798538787997005.Spec : Prop :=
  ∀ n, P6093798538787997005.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P13833532041713008099

`A220414(n+1)-A117474(2*n+1)`
-/

namespace A275151.P13833532041713008099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220414 (n + 1) - A117474 (2 * n + 1)

end

end A275151.P13833532041713008099

namespace A275151

/-- `A220414(n+1)-A117474(2*n+1)` -/
def P13833532041713008099.Spec : Prop :=
  ∀ n, P13833532041713008099.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P4190407207069648212

`A060569(2*n+1)-A117474(2*n+1)`
-/

namespace A275151.P4190407207069648212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060569 (2 * n + 1) - A117474 (2 * n + 1)

end

end A275151.P4190407207069648212

namespace A275151

/-- `A060569(2*n+1)-A117474(2*n+1)` -/
def P4190407207069648212.Spec : Prop :=
  ∀ n, P4190407207069648212.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P14236304470177328279

`A060569(2*n+1)-A076296(3*n+2)`
-/

namespace A275151.P14236304470177328279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060569 (2 * n + 1) - A076296 (3 * n + 2)

end

end A275151.P14236304470177328279

namespace A275151

/-- `A060569(2*n+1)-A076296(3*n+2)` -/
def P14236304470177328279.Spec : Prop :=
  ∀ n, P14236304470177328279.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P10501731989501424970

`A270889(n+1)+A270889(n)-A001108(n+1)`
-/

namespace A275151.P10501731989501424970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 (n + 1) + (A270889 n - A001108 (n + 1))

end

end A275151.P10501731989501424970

namespace A275151

/-- `A270889(n+1)+A270889(n)-A001108(n+1)` -/
def P10501731989501424970.Spec : Prop :=
  ∀ n, P10501731989501424970.a n = A275151 (n + 1)

end A275151

/-! ## A275151.P9548757756900998733

`A076294(A016789(n))-A076296(A016789(n))`
-/

namespace A275151.P9548757756900998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (A016789 n).toNat - A076296 (A016789 n).toNat

end

end A275151.P9548757756900998733

namespace A275151

/-- `A076294(A016789(n))-A076296(A016789(n))` -/
def P9548757756900998733.Spec : Prop :=
  ∀ n, P9548757756900998733.a n = A275151 (n + 1)

end A275151

/-!
# A275152: Sequence of distinct integers (considered as fixed disconnected 1-dimensional polyominoes and) chosen according to a greedy algorithm so as to tile a half line (see Comments for precise definition).

The programs for A275152, there is no canonical definition to state claims against.
-/

/-! ## A275152.P8381188036818615266

`A295088(A043320(n+1))-1`
-/

namespace A275152.P8381188036818615266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295088 (A043320 (n + 1)).toNat - 1

end

end A275152.P8381188036818615266

/-! ## A275152.P18401035467698353340

`A295088(A161953(n+1))-1`
-/

namespace A275152.P18401035467698353340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295088 (A161953 (n + 1)).toNat - 1

end

end A275152.P18401035467698353340

/-! ## A275152.P14992903238043167858

`A295088(A187829(n+1))-1`
-/

namespace A275152.P14992903238043167858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295088 (A187829 (n + 1)).toNat - 1

end

end A275152.P14992903238043167858

/-! ## A275152.P13845441061299650102

`A301461(A022331(n))+A034444(n+1)`
-/

namespace A275152.P13845441061299650102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (A022331 n).toNat + A034444 (n + 1)

end

end A275152.P13845441061299650102

/-! ## A275152.P13186522857947995880

`A295088(n+1)-A010055(A199582(n))`
-/

namespace A275152.P13186522857947995880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295088 (n + 1) - A010055 (A199582 n).toNat

end

end A275152.P13186522857947995880

/-!
# A275155: a(1) = 18; a(n) = 3*a(n - 1) + 2*sqrt(2*a(n - 1)*(a(n - 1) - 14)) - 14 for n > 1.

The programs for A275155, the canonical program `A275155.P16548523406185430590` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275155 has offset 1).

The definition of A275155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275155.P15780935961108780780

`ogf((18-62x+16x^2)/(1-7x+7x^2-x^3))`
-/

namespace A275155.P15780935961108780780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18, -62, 16] [1, -7, 7, -1] n

end

end A275155.P15780935961108780780

namespace A275155

/-- `ogf((18-62x+16x^2)/(1-7x+7x^2-x^3))` -/
def P15780935961108780780.Spec : Prop :=
  ∀ n, P15780935961108780780.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P16548523406185430590

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=18, a(1)=64, a(2)=338`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275155

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P16548523406185430590.Spec : Prop :=
  ∀ n, P16548523406185430590.a n = A275155 (n + 1)

theorem P16548523406185430590.correct : P16548523406185430590.Spec := by
  intro n
  simp only [A275155, Nat.add_sub_cancel]

end A275155

/-! ## A275155.P11000003608137597666

`3*a(n-1)+2*sqrt(2*a(n-1)*(a(n-1)-14))-14` with `a(0)=18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275155.P11000003608137597666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [18] fun n a =>
  3 * a (n - 1) + 2 * Real.sqrt (2 * a (n - 1) * (a (n - 1) - 14)) - 14

end

end A275155.P11000003608137597666

namespace A275155

/-- `3*a(n-1)+2*sqrt(2*a(n-1)*(a(n-1)-14))-14` -/
def P11000003608137597666.Spec : Prop :=
  ∀ n, P11000003608137597666.a n = (A275155 (n + 1) : ℝ)

end A275155

/-! ## A275155.P11994476301884232600

`A275795(n)+7`
-/

namespace A275155.P11994476301884232600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275795 n + 7

end

end A275155.P11994476301884232600

namespace A275155

/-- `A275795(n)+7` -/
def P11994476301884232600.Spec : Prop :=
  ∀ n, P11994476301884232600.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P7211247491053119805

`Δ[A076295(3*n)]+7`
-/

namespace A275155.P7211247491053119805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076295 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 7

end

end A275155.P7211247491053119805

namespace A275155

/-- `Δ[A076295(3*n)]+7` -/
def P7211247491053119805.Spec : Prop :=
  ∀ n, P7211247491053119805.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P1971253060697579704

`2*(A060569(2*(n+1))-A117474(2*(n+1)))`
-/

namespace A275155.P1971253060697579704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060569 (2 * (n + 1)) - A117474 (2 * (n + 1)))

end

end A275155.P1971253060697579704

namespace A275155

/-- `2*(A060569(2*(n+1))-A117474(2*(n+1)))` -/
def P1971253060697579704.Spec : Prop :=
  ∀ n, P1971253060697579704.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P9266283557274620835

`A221174(2*n+1)+A221174(2*(n+1))+7`
-/

namespace A275155.P9266283557274620835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (2 * n + 1) + (A221174 (2 * (n + 1)) + 7)

end

end A275155.P9266283557274620835

namespace A275155

/-- `A221174(2*n+1)+A221174(2*(n+1))+7` -/
def P9266283557274620835.Spec : Prop :=
  ∀ n, P9266283557274620835.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P17066104418729030334

`Δ[A076296(A008585(n))+A017041(n)]`
-/

namespace A275155.P17066104418729030334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A008585 n).toNat + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275155.P17066104418729030334

namespace A275155

/-- `Δ[A076296(A008585(n))+A017041(n)]` -/
def P17066104418729030334.Spec : Prop :=
  ∀ n, P17066104418729030334.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P15448136809947836988

`A076295(n)-(A076296(n)-A275795(n))`
-/

namespace A275155.P15448136809947836988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076295 n - (A076296 n - A275795 n)

end

end A275155.P15448136809947836988

namespace A275155

/-- `A076295(n)-(A076296(n)-A275795(n))` -/
def P15448136809947836988.Spec : Prop :=
  ∀ n, P15448136809947836988.a n = A275155 (n + 1)

end A275155

/-! ## A275155.P9984210919131016988

`2/A000079(n)*A161938(n)²`
-/

namespace A275155.P9984210919131016988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A161938 n ^ 2 : ℚ)

end

end A275155.P9984210919131016988

namespace A275155

/-- `2/A000079(n)*A161938(n)²` -/
def P9984210919131016988.Spec : Prop :=
  ∀ n, P9984210919131016988.a n = (A275155 (n + 1) : ℚ)

end A275155

/-!
# A275156: The 108 numbers n such that n(n+1) is 17-smooth.

The programs for A275156, the canonical program `A275156.P8746114165436462758` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275156 has offset 1).

The definition of A275156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275156.P8746114165436462758

`∩[A080681(n+1)-1, A080681(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A275156

/-- `∩[A080681(n+1)-1, A080681(n+1)]` -/
def P8746114165436462758.Spec : Prop :=
  ∀ n, (P8746114165436462758.a n : ℤ) = A275156 (n + 1)

theorem P8746114165436462758.correct : P8746114165436462758.Spec := by
  intro n
  simp only [A275156, Nat.add_sub_cancel]

end A275156

/-! ## A275156.P4047954226080369038

`record[A147574(n+1)/Δ[A147574(n+1)]]`
-/

namespace A275156.P4047954226080369038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147574 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147574 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275156.P4047954226080369038

namespace A275156

/-- `record[A147574(n+1)/Δ[A147574(n+1)]]` -/
def P4047954226080369038.Spec : Prop :=
  ∀ n, P4047954226080369038.a n = (A275156 (n + 1) : ℚ)

end A275156

/-! ## A275156.P12723445180177552288

`∪[A252492(n+1), A252493(n+1)]`
-/

namespace A275156.P12723445180177552288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275156.P12723445180177552288

namespace A275156

/-- `∪[A252492(n+1), A252493(n+1)]` -/
def P12723445180177552288.Spec : Prop :=
  ∀ n, (P12723445180177552288.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P17127854512122758130

`lt[A252489(n+1), 8]+1`
-/

namespace A275156.P17127854512122758130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275156.P17127854512122758130

namespace A275156

/-- `lt[A252489(n+1), 8]+1` -/
def P17127854512122758130.Spec : Prop :=
  ∀ n, (P17127854512122758130.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P5181778162115734800

`∩[A080681(n+1), A023443(A080681(n+1))]`
-/

namespace A275156.P5181778162115734800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080681 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275156.P5181778162115734800

namespace A275156

/-- `∩[A080681(n+1), A023443(A080681(n+1))]` -/
def P5181778162115734800.Spec : Prop :=
  ∀ n, (P5181778162115734800.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P5308581038886208314

`record[gcd(n+1, Δ[A006530(17*(n+1))])]`
-/

namespace A275156.P5308581038886208314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (17 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275156.P5308581038886208314

namespace A275156

/-- `record[gcd(n+1, Δ[A006530(17*(n+1))])]` -/
def P5308581038886208314.Spec : Prop :=
  ∀ n, (P5308581038886208314.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P15688218726527894999

`lt[A006530(C(n+2, 2)), 19]+1`
-/

namespace A275156.P15688218726527894999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (n + 2) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275156.P15688218726527894999

namespace A275156

/-- `lt[A006530(C(n+2, 2)), 19]+1` -/
def P15688218726527894999.Spec : Prop :=
  ∀ n, (P15688218726527894999.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P17745073739256577071

`lt[A006530(∑[n+1])-1, 17]+1`
-/

namespace A275156.P17745073739256577071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275156.P17745073739256577071

namespace A275156

/-- `lt[A006530(∑[n+1])-1, 17]+1` -/
def P17745073739256577071.Spec : Prop :=
  ∀ n, (P17745073739256577071.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P2490404377230725571

`lt[A032742(A006530(∑[n+1])+1), 10]+1`
-/

namespace A275156.P2490404377230725571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A006530 (∑ j ∈ Finset.range (n + 1), f2 j) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A275156.P2490404377230725571

namespace A275156

/-- `lt[A032742(A006530(∑[n+1])+1), 10]+1` -/
def P2490404377230725571.Spec : Prop :=
  ∀ n, (P2490404377230725571.a n : ℤ) = A275156 (n + 1)

end A275156

/-! ## A275156.P5678095691822669813

`lt[A006530((n+1)*(n+2)), 19]+1`
-/

namespace A275156.P5678095691822669813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275156.P5678095691822669813

namespace A275156

/-- `lt[A006530((n+1)*(n+2)), 19]+1` -/
def P5678095691822669813.Spec : Prop :=
  ∀ n, (P5678095691822669813.a n : ℤ) = A275156 (n + 1)

end A275156

/-!
# A275158: Numbers n such that A003144(n) = floor(alpha*n) + 1, where alpha = 1.839... is the positive real zero of x^3-x^2-x-1.

The programs for A275158, there is no canonical definition to state claims against.
-/

/-! ## A275158.P6886730336338520311

`A278041(A278353(n+1))-3`
-/

namespace A275158.P6886730336338520311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (A278353 (n + 1)).toNat - 3

end

end A275158.P6886730336338520311

/-! ## A275158.P8887500943663160753

`A003146(A278353(n+1))`
-/

namespace A275158.P8887500943663160753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (A278353 (n + 1)).toNat

end

end A275158.P8887500943663160753

/-! ## A275158.P18013284741370745164

`A308200(and(-1, A278353(n+1)))`
-/

namespace A275158.P18013284741370745164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 (Int.land (-1) (A278353 (n + 1))).toNat

end

end A275158.P18013284741370745164

/-!
# A275160: Least integer k such that A275663(k) = n.

The programs for A275160, there is no canonical definition to state claims against.
-/

/-! ## A275160.P14242824311871341596

`A054428(2*a(n-1))` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A275160.P14242824311871341596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n a =>
  A054428 (2 * a (n - 1)).toNat

end

end A275160.P14242824311871341596

/-! ## A275160.P6654288300736309974

`A287655(∑[A030814(n+1)])`
-/

namespace A275160.P6654288300736309974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275160.P6654288300736309974

/-!
# A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

The programs for A275161, the canonical program `A275161.P342480281307186842` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275161 has offset 1).

The definition of A275161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275161.P342480281307186842

`6-2*A240025(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A275161

/-- `6-2*A240025(n+1)` -/
def P342480281307186842.Spec : Prop :=
  ∀ n, P342480281307186842.a n = A275161 (n + 1)

theorem P342480281307186842.correct : P342480281307186842.Spec := by
  intro n
  simp only [A275161, Nat.add_sub_cancel]

end A275161

/-! ## A275161.P10375943071561948998

`C(4, char[a(n-2)+n+1]+2)` with `a(0)=0, a(1)=1`
-/

namespace A275161.P10375943071561948998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A275161.P10375943071561948998

namespace A275161

/-- `C(4, char[a(n-2)+n+1]+2)` -/
def P10375943071561948998.Spec : Prop :=
  ∀ n, (P10375943071561948998.a n : ℤ) = A275161 (n + 1)

end A275161

/-! ## A275161.P15868759218982370034

`3*4/(char[a(n-2)+n+1]+2)` with `a(0)=0, a(1)=1`
-/

namespace A275161.P15868759218982370034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (4 / (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℚ))

end

end A275161.P15868759218982370034

namespace A275161

/-- `3*4/(char[a(n-2)+n+1]+2)` -/
def P15868759218982370034.Spec : Prop :=
  ∀ n, P15868759218982370034.a n = (A275161 (n + 1) : ℚ)

end A275161

/-! ## A275161.P5197616144682734008

`7-A265411(n+2)`
-/

namespace A275161.P5197616144682734008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A265411 (n + 2)

end

end A275161.P5197616144682734008

namespace A275161

/-- `7-A265411(n+2)` -/
def P5197616144682734008.Spec : Prop :=
  ∀ n, P5197616144682734008.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P13241044315780740694

`12/A237347(n+1)`
-/

namespace A275161.P13241044315780740694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (A237347 (n + 1) : ℚ)

end

end A275161.P13241044315780740694

namespace A275161

/-- `12/A237347(n+1)` -/
def P13241044315780740694.Spec : Prop :=
  ∀ n, P13241044315780740694.a n = (A275161 (n + 1) : ℚ)

end A275161

/-! ## A275161.P671622255458669779

`2*(dr(A253607(n))+1)`
-/

namespace A275161.P671622255458669779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.digitalRoot (A253607 n) + 1)

end

end A275161.P671622255458669779

namespace A275161

/-- `2*(dr(A253607(n))+1)` -/
def P671622255458669779.Spec : Prop :=
  ∀ n, (P671622255458669779.a n : ℤ) = A275161 (n + 1)

end A275161

/-! ## A275161.P4256814056102314572

`2*(3-A240025(n+1))`
-/

namespace A275161.P4256814056102314572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - A240025 (n + 1))

end

end A275161.P4256814056102314572

namespace A275161

/-- `2*(3-A240025(n+1))` -/
def P4256814056102314572.Spec : Prop :=
  ∀ n, P4256814056102314572.a n = A275161 (n + 1)

theorem P4256814056102314572.correct : P4256814056102314572.Spec := by
  intro n
  simp only [A275161, Nat.add_sub_cancel, A275161.P4256814056102314572.a, A275161.P342480281307186842.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275161

/-! ## A275161.P2388407647543771350

`2*(char[A183569(n+1)]+2)`
-/

namespace A275161.P2388407647543771350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2)

end

end A275161.P2388407647543771350

namespace A275161

/-- `2*(char[A183569(n+1)]+2)` -/
def P2388407647543771350.Spec : Prop :=
  ∀ n, (P2388407647543771350.a n : ℤ) = A275161 (n + 1)

end A275161

/-! ## A275161.P5120132974962353236

`A040032(Δ[A000267(n)])`
-/

namespace A275161.P5120132974962353236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 (f1 (n + 1) - f1 n).toNat

end

end A275161.P5120132974962353236

namespace A275161

/-- `A040032(Δ[A000267(n)])` -/
def P5120132974962353236.Spec : Prop :=
  ∀ n, P5120132974962353236.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P14067295588560553850

`A171089(Δ[A000267(n)])`
-/

namespace A275161.P14067295588560553850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171089 (f1 (n + 1) - f1 n).toNat

end

end A275161.P14067295588560553850

namespace A275161

/-- `A171089(Δ[A000267(n)])` -/
def P14067295588560553850.Spec : Prop :=
  ∀ n, P14067295588560553850.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P14038994359827384821

`A309222(Δ[A000267(n)])`
-/

namespace A275161.P14038994359827384821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 (f1 (n + 1) - f1 n).toNat

end

end A275161.P14038994359827384821

namespace A275161

/-- `A309222(Δ[A000267(n)])` -/
def P14038994359827384821.Spec : Prop :=
  ∀ n, P14038994359827384821.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P3157848630087569996

`A077669(Δ[A000267(n)]+1)`
-/

namespace A275161.P3157848630087569996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077669 (f1 (n + 1) - f1 n + 1).toNat

end

end A275161.P3157848630087569996

namespace A275161

/-- `A077669(Δ[A000267(n)]+1)` -/
def P3157848630087569996.Spec : Prop :=
  ∀ n, P3157848630087569996.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P2347326242513549725

`A000703(1-Δ[A000267(n)])`
-/

namespace A275161.P2347326242513549725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A275161.P2347326242513549725

namespace A275161

/-- `A000703(1-Δ[A000267(n)])` -/
def P2347326242513549725.Spec : Prop :=
  ∀ n, P2347326242513549725.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P3711701355046873078

`2*A001612(Δ[A000267(n)])`
-/

namespace A275161.P3711701355046873078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001612 (f1 (n + 1) - f1 n).toNat

end

end A275161.P3711701355046873078

namespace A275161

/-- `2*A001612(Δ[A000267(n)])` -/
def P3711701355046873078.Spec : Prop :=
  ∀ n, P3711701355046873078.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P2658132662725973927

`2*A004444(Δ[A000267(n)])`
-/

namespace A275161.P2658132662725973927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004444 (f1 (n + 1) - f1 n).toNat

end

end A275161.P2658132662725973927

namespace A275161

/-- `2*A004444(Δ[A000267(n)])` -/
def P2658132662725973927.Spec : Prop :=
  ∀ n, P2658132662725973927.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P279057687077653987

`A018252(3-Δ[A000267(n)])`
-/

namespace A275161.P279057687077653987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A275161.P279057687077653987

namespace A275161

/-- `A018252(3-Δ[A000267(n)])` -/
def P279057687077653987.Spec : Prop :=
  ∀ n, P279057687077653987.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P6055772221326378822

`A000010(Δ[A000267(n)]+7)`
-/

namespace A275161.P6055772221326378822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n + 7).toNat

end

end A275161.P6055772221326378822

namespace A275161

/-- `A000010(Δ[A000267(n)]+7)` -/
def P6055772221326378822.Spec : Prop :=
  ∀ n, P6055772221326378822.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P17695464229497728238

`A000010(9-Δ[A000267(n)])`
-/

namespace A275161.P17695464229497728238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (9 - (f1 (n + 1) - f1 n)).toNat

end

end A275161.P17695464229497728238

namespace A275161

/-- `A000010(9-Δ[A000267(n)])` -/
def P17695464229497728238.Spec : Prop :=
  ∀ n, P17695464229497728238.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P5319746574330759977

`A000005(Δ[A000267(n)]+20)`
-/

namespace A275161.P5319746574330759977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 20).toNat

end

end A275161.P5319746574330759977

namespace A275161

/-- `A000005(Δ[A000267(n)]+20)` -/
def P5319746574330759977.Spec : Prop :=
  ∀ n, P5319746574330759977.a n = A275161 (n + 1)

end A275161

/-! ## A275161.P15631605322095879723

`A000005(or(20, Δ[A000267(n)]))`
-/

namespace A275161.P15631605322095879723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 20 (f1 (n + 1) - f1 n)).toNat

end

end A275161.P15631605322095879723

namespace A275161

/-- `A000005(or(20, Δ[A000267(n)]))` -/
def P15631605322095879723.Spec : Prop :=
  ∀ n, P15631605322095879723.a n = A275161 (n + 1)

end A275161

/-!
# A275163: a(n) = 13*2^(n+1) - 19.

The programs for A275163, the canonical program `A275163.P9369900025326698498` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275163 has offset 0).

The definition of A275163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*2^(n+1)-19` (program `A275163.P9369900025326698498`, by `A275163.P9369900025326698498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275163.P452633378726355911

`ogf((7+12x)/(1-3x+2x^2))`
-/

namespace A275163.P452633378726355911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 12] [1, -3, 2] n

end

end A275163.P452633378726355911

namespace A275163

/-- `ogf((7+12x)/(1-3x+2x^2))` -/
def P452633378726355911.Spec : Prop :=
  ∀ n, P452633378726355911.a n = A275163 n

end A275163

/-! ## A275163.P9369900025326698498

`13*2^(n+1)-19`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275163

/-- `13*2^(n+1)-19` -/
def P9369900025326698498.Spec : Prop :=
  ∀ n, P9369900025326698498.a n = A275163 n

theorem P9369900025326698498.correct : P9369900025326698498.Spec := by
  intro n
  simp only [A275163]

end A275163

/-! ## A275163.P16543606064604095571

`∑[2*a(n-1)]` with `a(0)=7, a(1)=26`
-/

namespace A275163.P16543606064604095571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 26] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275163.P16543606064604095571

namespace A275163

/-- `∑[2*a(n-1)]` -/
def P16543606064604095571.Spec : Prop :=
  ∀ n, (P16543606064604095571.a n : ℤ) = A275163 n

end A275163

/-! ## A275163.P10843107474759700184

`abs(2*a(n-1)+19)` with `a(0)=7`
-/

namespace A275163.P10843107474759700184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) + 19

end

end A275163.P10843107474759700184

namespace A275163

/-- `abs(2*a(n-1)+19)` -/
def P10843107474759700184.Spec : Prop :=
  ∀ n, (P10843107474759700184.a n : ℤ) = A275163 n

theorem P10843107474759700184.correct : P10843107474759700184.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275163, Nat.add_sub_cancel, A275163.P10843107474759700184.a, A275163.P9369900025326698498.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275163, Nat.add_sub_cancel, A275163.P10843107474759700184.a, A275163.P9369900025326698498.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275163

/-! ## A275163.P13044721634324288944

`abs(6-∑[A005029(n)])`
-/

namespace A275163.P13044721634324288944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A275163.P13044721634324288944

namespace A275163

/-- `abs(6-∑[A005029(n)])` -/
def P13044721634324288944.Spec : Prop :=
  ∀ n, P13044721634324288944.a n = A275163 n

end A275163

/-! ## A275163.P7409946418485200249

`record[A005029(A296089(n+1))-19]`
-/

namespace A275163.P7409946418485200249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 (A296089 (n + 1)).toNat - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275163.P7409946418485200249

namespace A275163

/-- `record[A005029(A296089(n+1))-19]` -/
def P7409946418485200249.Spec : Prop :=
  ∀ n, P7409946418485200249.a n = A275163 n

end A275163

/-! ## A275163.P9752652089974484405

`lcm(6-∑[A005029(n)], A033999(n))`
-/

namespace A275163.P9752652089974484405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (6 - ∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A275163.P9752652089974484405

namespace A275163

/-- `lcm(6-∑[A005029(n)], A033999(n))` -/
def P9752652089974484405.Spec : Prop :=
  ∀ n, (P9752652089974484405.a n : ℤ) = A275163 n

end A275163

/-! ## A275163.P9150353602260617332

`or(1, A265207(2*n+1)+A007283(n+1))`
-/

namespace A275163.P9150353602260617332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265207 (2 * n + 1) + A007283 (n + 1))

end

end A275163.P9150353602260617332

namespace A275163

/-- `or(1, A265207(2*n+1)+A007283(n+1))` -/
def P9150353602260617332.Spec : Prop :=
  ∀ n, P9150353602260617332.a n = A275163 n

end A275163

/-!
# A275164: The 167 numbers n such that n(n+1) is 19-smooth.

The programs for A275164, the canonical program `A275164.P7332150838585413403` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275164 has offset 1).

The definition of A275164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275164.P4402495660812263729

`∩[A080682(n+1)-1, A080682(n+1)]`
-/

namespace A275164.P4402495660812263729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275164.P4402495660812263729

namespace A275164

/-- `∩[A080682(n+1)-1, A080682(n+1)]` -/
def P4402495660812263729.Spec : Prop :=
  ∀ n, (P4402495660812263729.a n : ℤ) = A275164 (n + 1)

end A275164

/-! ## A275164.P537829519486708485

`record[A147575(n+1)/Δ[A147575(n+1)]]`
-/

namespace A275164.P537829519486708485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147575 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147575 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275164.P537829519486708485

namespace A275164

/-- `record[A147575(n+1)/Δ[A147575(n+1)]]` -/
def P537829519486708485.Spec : Prop :=
  ∀ n, P537829519486708485.a n = (A275164 (n + 1) : ℚ)

end A275164

/-! ## A275164.P12432747231860700139

`A080682(eq[1, A080682(n+2)-A080682(n+1)]+1)`
-/

namespace A275164.P12432747231860700139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 2) - A080682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275164.P12432747231860700139

namespace A275164

/-- `A080682(eq[1, A080682(n+2)-A080682(n+1)]+1)` -/
def P12432747231860700139.Spec : Prop :=
  ∀ n, P12432747231860700139.a n = A275164 (n + 1)

end A275164

/-! ## A275164.P7332150838585413403

`lt[A252489(n+1), 9]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A275164

/-- `lt[A252489(n+1), 9]+1` -/
def P7332150838585413403.Spec : Prop :=
  ∀ n, (P7332150838585413403.a n : ℤ) = A275164 (n + 1)

theorem P7332150838585413403.correct : P7332150838585413403.Spec := by
  intro n
  simp only [A275164, Nat.add_sub_cancel]

end A275164

/-! ## A275164.P2103733763074642551

`record[gcd(n+1, Δ[A006530(19*(n+1))])]`
-/

namespace A275164.P2103733763074642551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (19 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275164.P2103733763074642551

namespace A275164

/-- `record[gcd(n+1, Δ[A006530(19*(n+1))])]` -/
def P2103733763074642551.Spec : Prop :=
  ∀ n, (P2103733763074642551.a n : ℤ) = A275164 (n + 1)

end A275164

/-! ## A275164.P15305963424861847025

`lt[log(A006530(∑[n+1])), 3]+1`
-/

namespace A275164.P15305963424861847025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (∑ j ∈ Finset.range (n + 1), f2 j) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n + 1

end

end A275164.P15305963424861847025

namespace A275164

/-- `lt[log(A006530(∑[n+1])), 3]+1` -/
def P15305963424861847025.Spec : Prop :=
  ∀ n, (P15305963424861847025.a n : ℤ) = A275164 (n + 1)

end A275164

/-!
# A275165: Number of n-node graphs with two connected components.

The programs for A275165, there is no canonical definition to state claims against.
-/

/-! ## A275165.P697399666701265191

`A274934(n)+A001349(n)`
-/

namespace A275165.P697399666701265191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274934 n + A001349 n

end

end A275165.P697399666701265191

/-! ## A275165.P14954634745889035560

`A304311(A000217(n))+A274934(n)`
-/

namespace A275165.P14954634745889035560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000217 n).toNat + A274934 n

end

end A275165.P14954634745889035560

/-! ## A275165.P6225470644451205400

`A274934(n)+A201922(A152947(n+1))`
-/

namespace A275165.P6225470644451205400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274934 n + A201922 (A152947 (n + 1)).toNat

end

end A275165.P6225470644451205400

/-! ## A275165.P9943491029382932598

`A274934(n)+A201922(2-A080956(n))`
-/

namespace A275165.P9943491029382932598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274934 n + A201922 (2 - A080956 n).toNat

end

end A275165.P9943491029382932598

/-! ## A275165.P3874641575118824255

`A005142(n)+A274934(n)+A157051(n)`
-/

namespace A275165.P3874641575118824255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 n + (A274934 n + A157051 n)

end

end A275165.P3874641575118824255

/-!
# A275166: Number of n-node graphs that have 2 non-isomorphic components.

The programs for A275166, there is no canonical definition to state claims against.
-/

/-! ## A275166.P9394958221475777596

`A028310(A275165(n))-A133565(n+1)`
-/

namespace A275166.P9394958221475777596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A275165 n).toNat - A133565 (n + 1)

end

end A275166.P9394958221475777596

/-! ## A275166.P13541588722964131137

`A028310(A001349(n))+A274934(n)-A133565(n+1)`
-/

namespace A275166.P13541588722964131137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001349 n).toNat + (A274934 n - A133565 (n + 1))

end

end A275166.P13541588722964131137

/-! ## A275166.P13300028382888735872

`A293137(A292751(n))`
-/

namespace A275166.P13300028382888735872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A292751 n).toNat

end

end A275166.P13300028382888735872

/-!
# A275167: Pisano periods of A275124.

The programs for A275167, there is no canonical definition to state claims against.
-/

/-! ## A275167.P807731917480946045

`A001175(A275124(n+1))`
-/

namespace A275167.P807731917480946045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A275124 (n + 1)).toNat

end

end A275167.P807731917480946045

/-! ## A275167.P7843085666045255136

`A106291(5*A275124(n+1))`
-/

namespace A275167.P7843085666045255136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (5 * A275124 (n + 1)).toNat

end

end A275167.P7843085666045255136

/-! ## A275167.P2025784723684129927

`A106291(lcm(5, A275124(n+1)))`
-/

namespace A275167.P2025784723684129927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.lcm 5 (A275124 (n + 1)))

end

end A275167.P2025784723684129927

/-! ## A275167.P11594096472161470109

`A106291(A275124(C(n+1, n)))`
-/

namespace A275167.P11594096472161470109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A275124 (Nat.choose (n + 1) n)).toNat

end

end A275167.P11594096472161470109

/-! ## A275167.P13601060552600316673

`A106291(or(char[2], A275124(n+1)))`
-/

namespace A275167.P13601060552600316673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A275124 (n + 1))).toNat

end

end A275167.P13601060552600316673

/-! ## A275167.P16685623305730979200

`A106291(abs(1-A275124(n+1))+1)`
-/

namespace A275167.P16685623305730979200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (|1 - A275124 (n + 1)| + 1).toNat

end

end A275167.P16685623305730979200

/-! ## A275167.P7887327731498739951

`A106291(A275124(A005408(n)-n))`
-/

namespace A275167.P7887327731498739951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A275124 (A005408 n - (n : ℤ)).toNat).toNat

end

end A275167.P7887327731498739951

/-! ## A275167.P67242042890579811

`A106291(A275124(n+1)%A275124(n+1)²)`
-/

namespace A275167.P67242042890579811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.tmod (A275124 (n + 1)) (A275124 (n + 1) ^ 2)).toNat

end

end A275167.P67242042890579811

/-!
# A275172: Positions of 3 in A274640.

The programs for A275172, there is no canonical definition to state claims against.
-/

/-! ## A275172.P13984955173321178658

`eq[2, A274641(n)]`
-/

namespace A275172.P13984955173321178658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275172.P13984955173321178658

/-! ## A275172.P14649740755496170723

`eq[3, A274640(n)]`
-/

namespace A275172.P14649740755496170723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275172.P14649740755496170723

/-! ## A275172.P11583098639059576080

`lt[A004443(A274640(n)-1), 1]`
-/

namespace A275172.P11583098639059576080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A274640 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275172.P11583098639059576080

/-! ## A275172.P15494879594244927255

`lt[A225058(A274641(n)+2), 1]`
-/

namespace A275172.P15494879594244927255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A274641 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275172.P15494879594244927255

/-! ## A275172.P2209810215353159598

`lt[A050059(A274640(n)), A274641(n)]`
-/

namespace A275172.P2209810215353159598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050059 (A274640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P2209810215353159598

/-! ## A275172.P7829204961508942893

`lt[A050059(A274641(n)+1), A274641(n)]`
-/

namespace A275172.P7829204961508942893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050059 (A274641 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P7829204961508942893

/-! ## A275172.P1522934571954982531

`lt[(2-A274641(n))², A057427(n)]`
-/

namespace A275172.P1522934571954982531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A274641 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P1522934571954982531

/-! ## A275172.P4586165301530326927

`lt[A004443(A274641(n)), A057427(n)]`
-/

namespace A275172.P4586165301530326927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A274641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P4586165301530326927

/-! ## A275172.P18187651142838136123

`lt[A000007(n), A185016(A274640(n)+3)]`
-/

namespace A275172.P18187651142838136123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P18187651142838136123

/-! ## A275172.P3010379288863960194

`lt[A000038(n), A185016(A274640(n)+3)]`
-/

namespace A275172.P3010379288863960194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275172.P3010379288863960194

/-!
# A275173: a(n) = (a(n-3) + a(n-1) * a(n-5)) / a(n-6), a(0) = a(1) = ... = a(5) = 1.

The programs for A275173, the canonical program `A275173.P7309933101465829535` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275173 has offset 0).

The definition of A275173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275173.P7309933101465829535

`(a(n-3)+a(n-1)*a(n-5))/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275173

/-- `(a(n-3)+a(n-1)*a(n-5))/a(n-6)` -/
def P7309933101465829535.Spec : Prop :=
  ∀ n, P7309933101465829535.a n = (A275173 n : ℚ)

end A275173

/-!
# A275174: a(n) = (a(n-4) + a(n-1) * a(n-7)) / a(n-8), a(0) = a(1) = ... = a(7) = 1.

The programs for A275174, the canonical program `A275174.P17900861620961578110` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275174 has offset 0).

The definition of A275174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275174.P17900861620961578110

`(a(n-4)+a(n-1)*a(n-7))/a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275174

/-- `(a(n-4)+a(n-1)*a(n-7))/a(n-8)` -/
def P17900861620961578110.Spec : Prop :=
  ∀ n, P17900861620961578110.a n = (A275174 n : ℚ)

end A275174

/-!
# A275175: a(n) = (2 * a(n-3) + a(n-1) * a(n-5)) / a(n-6), a(0) = a(1) = ... = a(5) = 1.

The programs for A275175, the canonical program `A275175.P7038218815071374819` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275175 has offset 0).

The definition of A275175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275175.P7038218815071374819

`(2*a(n-3)+a(n-1)*a(n-5))/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275175

/-- `(2*a(n-3)+a(n-1)*a(n-5))/a(n-6)` -/
def P7038218815071374819.Spec : Prop :=
  ∀ n, P7038218815071374819.a n = (A275175 n : ℚ)

end A275175

/-!
# A275176: a(n) = (3 * a(n-3) + a(n-1) * a(n-5)) / a(n-6), a(0) = a(1) = ... = a(5) = 1.

The programs for A275176, the canonical program `A275176.P12541297571889359616` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275176 has offset 0).

The definition of A275176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275176.P12541297571889359616

`(3*a(n-3)+a(n-1)*a(n-5))/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275176

/-- `(3*a(n-3)+a(n-1)*a(n-5))/a(n-6)` -/
def P12541297571889359616.Spec : Prop :=
  ∀ n, P12541297571889359616.a n = (A275176 n : ℚ)

end A275176

/-! ## A275176.P5441771679653460572

`A084386(floor(log(A198683(n+1))))`
-/

namespace A275176.P5441771679653460572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084386 ⌊Real.log (A198683 (n + 1) : ℝ)⌋.toNat

end

end A275176.P5441771679653460572

namespace A275176

/-- `A084386(floor(log(A198683(n+1))))` -/
def P5441771679653460572.Spec : Prop :=
  ∀ n, P5441771679653460572.a n = A275176 n

end A275176

/-! ## A275176.P8631526251231664969

`A000602(n)-A007149(A000602(n))`
-/

namespace A275176.P8631526251231664969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n - A007149 (A000602 n).toNat

end

end A275176.P8631526251231664969

namespace A275176

/-- `A000602(n)-A007149(A000602(n))` -/
def P8631526251231664969.Spec : Prop :=
  ∀ n, P8631526251231664969.a n = A275176 n

end A275176

/-! ## A275176.P13131574886942876307

`A237708(A237684(n+1)+A001949(n))`
-/

namespace A275176.P13131574886942876307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A237684 (n + 1) + A001949 n).toNat

end

end A275176.P13131574886942876307

namespace A275176

/-- `A237708(A237684(n+1)+A001949(n))` -/
def P13131574886942876307.Spec : Prop :=
  ∀ n, P13131574886942876307.a n = A275176 n

end A275176

/-! ## A275176.P3449535193784794297

`A237708(A264701(n+1)+A002265(n))`
-/

namespace A275176.P3449535193784794297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A264701 (n + 1) + A002265 n).toNat

end

end A275176.P3449535193784794297

namespace A275176

/-- `A237708(A264701(n+1)+A002265(n))` -/
def P3449535193784794297.Spec : Prop :=
  ∀ n, P3449535193784794297.a n = A275176 n

end A275176

/-!
# A275177: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275177, there is no canonical definition to state claims against.
-/

/-! ## A275177.P7051246576322071118

`A275183(∑[4*n]+1)`
-/

namespace A275177.P7051246576322071118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275177.P7051246576322071118

/-! ## A275177.P4503148340871071854

`record[A003982(n)*A275183(n+1)]`
-/

namespace A275177.P4503148340871071854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275177.P4503148340871071854

/-! ## A275177.P4250138305955470483

`record[gcd(A274650(n), A275183(n+1))]`
-/

namespace A275177.P4250138305955470483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274650 n) (A275183 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275177.P4250138305955470483

/-! ## A275177.P16018516325250664383

`lcm(A033999(n), A275183(A001844(n)))`
-/

namespace A275177.P16018516325250664383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275183 (A001844 n).toNat)

end

end A275177.P16018516325250664383

/-! ## A275177.P15855772915377992766

`A275183(A001844(n))+A034571(n+1)`
-/

namespace A275177.P15855772915377992766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A001844 n).toNat + A034571 (n + 1)

end

end A275177.P15855772915377992766

/-!
# A275178: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275178, the canonical program `A275178.P5583612295576426880` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275178 has offset 1).

The definition of A275178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275178.P15856442042583130863

`ogf((5-4x-9x^2+12x^3-4x^4-17x^5+11x^6+5x^7)/(1-4x+6x^2-5x^3+x^4+x^5))`
-/

namespace A275178.P15856442042583130863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -9, 12, -4, -17, 11, 5] [1, -4, 6, -5, 1, 1] n

end

end A275178.P15856442042583130863

namespace A275178

/-- `ogf((5-4x-9x^2+12x^3-4x^4-17x^5+11x^6+5x^7)/(1-4x+6x^2-5x^3+x^4+x^5))` -/
def P15856442042583130863.Spec : Prop :=
  ∀ n, P15856442042583130863.a n = A275178 (n + 1)

end A275178

/-! ## A275178.P5583612295576426880

`4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)-a(n-5)` with `a(0)=5, a(1)=16, a(2)=25, a(3)=41, a(4)=85, a(5)=181, a(6)=389, a(7)=834`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275178

/-- `4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)-a(n-5)` -/
def P5583612295576426880.Spec : Prop :=
  ∀ n, P5583612295576426880.a n = A275178 (n + 1)

theorem P5583612295576426880.correct : P5583612295576426880.Spec := by
  intro n
  simp only [A275178, Nat.add_sub_cancel]

end A275178

/-! ## A275178.P7507866093467400591

`A275183(∑[n+3]+1)`
-/

namespace A275178.P7507866093467400591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275178.P7507866093467400591

namespace A275178

/-- `A275183(∑[n+3]+1)` -/
def P7507866093467400591.Spec : Prop :=
  ∀ n, P7507866093467400591.a n = A275178 (n + 1)

end A275178

/-!
# A275179: Number of n X 4 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275179, there is no canonical definition to state claims against.
-/

/-! ## A275179.P14551754405526660490

`A275183(A141214(n+1))`
-/

namespace A275179.P14551754405526660490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A141214 (n + 1)).toNat

end

end A275179.P14551754405526660490

/-! ## A275179.P17325306583444538827

`A275183(A027379(n+2))`
-/

namespace A275179.P17325306583444538827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A027379 (n + 2)).toNat

end

end A275179.P17325306583444538827

/-! ## A275179.P2020494243439670831

`A275183(A055998(n+2))`
-/

namespace A275179.P2020494243439670831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055998 (n + 2)).toNat

end

end A275179.P2020494243439670831

/-! ## A275179.P10704605393738988266

`A275183(A052905(n+1)+2)`
-/

namespace A275179.P10704605393738988266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A052905 (n + 1) + 2).toNat

end

end A275179.P10704605393738988266

/-! ## A275179.P11518050038400071560

`A275183(A055999(n+1)+3)`
-/

namespace A275179.P11518050038400071560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055999 (n + 1) + 3).toNat

end

end A275179.P11518050038400071560

/-!
# A275180: Number of n X 5 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275180, there is no canonical definition to state claims against.
-/

/-! ## A275180.P12218134924127038130

`A275183(Δ[A264443(n)])`
-/

namespace A275180.P12218134924127038130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (f1 (n + 1) - f1 n).toNat

end

end A275180.P12218134924127038130

/-! ## A275180.P8086350583819497884

`A275183(A046691(n+3))`
-/

namespace A275180.P8086350583819497884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A046691 (n + 3)).toNat

end

end A275180.P8086350583819497884

/-! ## A275180.P16461639574936026355

`A275183(Δ[A023545(n+1)])`
-/

namespace A275180.P16461639574936026355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (f1 (n + 1) - f1 n).toNat

end

end A275180.P16461639574936026355

/-! ## A275180.P7676451076381554210

`A275183(A055999(n+2)+2)`
-/

namespace A275180.P7676451076381554210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055999 (n + 2) + 2).toNat

end

end A275180.P7676451076381554210

/-! ## A275180.P8476948349168421408

`A275183(A000124(n+5)-5)`
-/

namespace A275180.P8476948349168421408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 5) - 5).toNat

end

end A275180.P8476948349168421408

/-!
# A275181: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275181, there is no canonical definition to state claims against.
-/

/-! ## A275181.P9887767798942967575

`A275183(Δ[A055831(n+5)])`
-/

namespace A275181.P9887767798942967575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (f1 (n + 1) - f1 n).toNat

end

end A275181.P9887767798942967575

/-! ## A275181.P5822586302821423877

`A275183(A046691(n+4)-1)`
-/

namespace A275181.P5822586302821423877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A046691 (n + 4) - 1).toNat

end

end A275181.P5822586302821423877

/-! ## A275181.P12639186895975478986

`A275183(A000096(n+5)-4)`
-/

namespace A275181.P12639186895975478986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000096 (n + 5) - 4).toNat

end

end A275181.P12639186895975478986

/-! ## A275181.P11422419083345403141

`A275183(A000124(n+6)-6)`
-/

namespace A275181.P11422419083345403141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 6) - 6).toNat

end

end A275181.P11422419083345403141

/-! ## A275181.P9601331067487149086

`A275183(Δ[Δ[A006504(n+1)]])`
-/

namespace A275181.P9601331067487149086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (f1 (n + 1) - f1 n).toNat

end

end A275181.P9601331067487149086

/-!
# A275182: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275182, there is no canonical definition to state claims against.
-/

/-! ## A275182.P9809329269529932531

`A275183(A055999(n+4))`
-/

namespace A275182.P9809329269529932531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055999 (n + 4)).toNat

end

end A275182.P9809329269529932531

/-! ## A275182.P11220863289699785491

`A275183(A052905(n+4)-1)`
-/

namespace A275182.P11220863289699785491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A052905 (n + 4) - 1).toNat

end

end A275182.P11220863289699785491

/-! ## A275182.P775353032501084519

`A275183(A000124(n+7)-7)`
-/

namespace A275182.P775353032501084519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 7) - 7).toNat

end

end A275182.P775353032501084519

/-! ## A275182.P13493670982480903279

`A275183(A000096(n+5)+n+2)`
-/

namespace A275182.P13493670982480903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A275182.P13493670982480903279

/-! ## A275182.P12072790137122391695

`A275183(A034856(n+5)+n+3)`
-/

namespace A275182.P12072790137122391695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A275182.P12072790137122391695

/-!
# A275184: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275184, the canonical program `A275184.P1412843845166259592` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275184 has offset 1).

The definition of A275184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275184.P8399873511443682547

`ogf((4+4x+x^2-x^3)/(1-2x-4x^2-3x^3))`
-/

namespace A275184.P8399873511443682547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 1, -1] [1, -2, -4, -3] n

end

end A275184.P8399873511443682547

namespace A275184

/-- `ogf((4+4x+x^2-x^3)/(1-2x-4x^2-3x^3))` -/
def P8399873511443682547.Spec : Prop :=
  ∀ n, P8399873511443682547.a n = A275184 (n + 1)

end A275184

/-! ## A275184.P1412843845166259592

`2*a(n-1)+4*a(n-2)+3*a(n-3)` with `a(0)=4, a(1)=12, a(2)=41, a(3)=141`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275184

/-- `2*a(n-1)+4*a(n-2)+3*a(n-3)` -/
def P1412843845166259592.Spec : Prop :=
  ∀ n, (P1412843845166259592.a n : ℤ) = A275184 (n + 1)

theorem P1412843845166259592.correct : P1412843845166259592.Spec := by
  intro n
  simp only [A275184, Nat.add_sub_cancel]

end A275184

/-! ## A275184.P2593318899382652765

`A275183(A141214(n)+7)`
-/

namespace A275184.P2593318899382652765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A141214 n + 7).toNat

end

end A275184.P2593318899382652765

namespace A275184

/-- `A275183(A141214(n)+7)` -/
def P2593318899382652765.Spec : Prop :=
  ∀ n, P2593318899382652765.a n = A275184 (n + 1)

end A275184

/-! ## A275184.P9477942036667410101

`A275183(A052905(n)+9)`
-/

namespace A275184.P9477942036667410101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A052905 n + 9).toNat

end

end A275184.P9477942036667410101

namespace A275184

/-- `A275183(A052905(n)+9)` -/
def P9477942036667410101.Spec : Prop :=
  ∀ n, P9477942036667410101.a n = A275184 (n + 1)

end A275184

/-! ## A275184.P17118282140366899830

`A275183(A055999(n)+10)`
-/

namespace A275184.P17118282140366899830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055999 n + 10).toNat

end

end A275184.P17118282140366899830

namespace A275184

/-- `A275183(A055999(n)+10)` -/
def P17118282140366899830.Spec : Prop :=
  ∀ n, P17118282140366899830.a n = A275184 (n + 1)

end A275184

/-!
# A275185: Number of 5 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275185, the canonical program `A275185.P4747081918636475369` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275185 has offset 1).

The definition of A275185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275185.P4747081918636475369

`ogf((8+5x-13x^2-28x^3-4x^4)/(1-2x-7x^2-8x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275185

/-- `ogf((8+5x-13x^2-28x^3-4x^4)/(1-2x-7x^2-8x^3))` -/
def P4747081918636475369.Spec : Prop :=
  ∀ n, P4747081918636475369.a n = A275185 (n + 1)

theorem P4747081918636475369.correct : P4747081918636475369.Spec := by
  intro n
  simp only [A275185, Nat.add_sub_cancel]

end A275185

/-! ## A275185.P4156748610040075022

`A275183(A167499(n+3))`
-/

namespace A275185.P4156748610040075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A167499 (n + 3)).toNat

end

end A275185.P4156748610040075022

namespace A275185

/-- `A275183(A167499(n+3))` -/
def P4156748610040075022.Spec : Prop :=
  ∀ n, P4156748610040075022.a n = A275185 (n + 1)

end A275185

/-! ## A275185.P10591354090632800601

`A275183(A056000(n)+15)`
-/

namespace A275185.P10591354090632800601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A056000 n + 15).toNat

end

end A275185.P10591354090632800601

namespace A275185

/-- `A275183(A056000(n)+15)` -/
def P10591354090632800601.Spec : Prop :=
  ∀ n, P10591354090632800601.a n = A275185 (n + 1)

end A275185

/-! ## A275185.P3648304001135595487

`A275183(A000124(n+4)+4)`
-/

namespace A275185.P3648304001135595487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 4) + 4).toNat

end

end A275185.P3648304001135595487

namespace A275185

/-- `A275183(A000124(n+4)+4)` -/
def P3648304001135595487.Spec : Prop :=
  ∀ n, P3648304001135595487.a n = A275185 (n + 1)

end A275185

/-! ## A275185.P16022500132065035322

`A275183(A000217(n+4)+5)`
-/

namespace A275185.P16022500132065035322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000217 (n + 4) + 5).toNat

end

end A275185.P16022500132065035322

namespace A275185

/-- `A275183(A000217(n+4)+5)` -/
def P16022500132065035322.Spec : Prop :=
  ∀ n, P16022500132065035322.a n = A275185 (n + 1)

end A275185

/-!
# A275186: Number of 6 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275186, there is no canonical definition to state claims against.
-/

/-! ## A275186.P14622880862597349516

`A275183(Δ[A264443(n)]+10)`
-/

namespace A275186.P14622880862597349516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (f1 (n + 1) - f1 n + 10).toNat

end

end A275186.P14622880862597349516

/-! ## A275186.P2327476505428144133

`A275183(A167614(n+4)+3)`
-/

namespace A275186.P2327476505428144133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A167614 (n + 4) + 3).toNat

end

end A275186.P2327476505428144133

/-! ## A275186.P14450549301620422520

`A275183(A000217(n+5)+6)`
-/

namespace A275186.P14450549301620422520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000217 (n + 5) + 6).toNat

end

end A275186.P14450549301620422520

/-! ## A275186.P14252167776633549383

`A275183(A000124(n+4)+n+10)`
-/

namespace A275186.P14252167776633549383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 4) + (n + 10 : ℤ)).toNat

end

end A275186.P14252167776633549383

/-! ## A275186.P5582085530517842757

`A275183(A055999(n+4)-A005408(n))`
-/

namespace A275186.P5582085530517842757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A055999 (n + 4) - A005408 n).toNat

end

end A275186.P5582085530517842757

/-!
# A275187: Number of 7 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275187, there is no canonical definition to state claims against.
-/

/-! ## A275187.P17939402194903195934

`A275183(A167487(n+5))`
-/

namespace A275187.P17939402194903195934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A167487 (n + 5)).toNat

end

end A275187.P17939402194903195934

/-! ## A275187.P9083349480914304991

`A275183(A000096(n+5)+8)`
-/

namespace A275187.P9083349480914304991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000096 (n + 5) + 8).toNat

end

end A275187.P9083349480914304991

/-! ## A275187.P5091695701701560685

`A275183(A000217(n+6)+7)`
-/

namespace A275187.P5091695701701560685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000217 (n + 6) + 7).toNat

end

end A275187.P5091695701701560685

/-! ## A275187.P4013353673595658192

`A275183(A167614(n+6)-(n+3))`
-/

namespace A275187.P4013353673595658192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A275187.P4013353673595658192

/-! ## A275187.P5482744377156625986

`A275183(A000124(n+5)+n+12)`
-/

namespace A275187.P5482744377156625986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275183 (A000124 (n + 5) + (n + 12 : ℤ)).toNat

end

end A275187.P5482744377156625986

/-!
# A275188: Positions of 8 in A274640.

The programs for A275188, there is no canonical definition to state claims against.
-/

/-! ## A275188.P3462517783771082469

`eq[7, A274641(n)]`
-/

namespace A275188.P3462517783771082469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275188.P3462517783771082469

/-! ## A275188.P18176210889132472912

`eq[8, A274640(n)]`
-/

namespace A275188.P18176210889132472912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275188.P18176210889132472912

/-! ## A275188.P15319264279384881657

`lt[A104696(A274640(n)+1), 2]`
-/

namespace A275188.P15319264279384881657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A274640 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275188.P15319264279384881657

/-! ## A275188.P5713598903057212992

`lt[A104696(A274641(n)+2), 2]`
-/

namespace A275188.P5713598903057212992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A274641 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275188.P5713598903057212992

/-! ## A275188.P5463820911718303265

`lt[A259828(A274640(n)), A274641(n)]`
-/

namespace A275188.P5463820911718303265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259828 (A274640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275188.P5463820911718303265

/-!
# A275189: Positions of 4 in A274640.

The programs for A275189, there is no canonical definition to state claims against.
-/

/-! ## A275189.P7731692768546580758

`eq[3, A274641(n)]`
-/

namespace A275189.P7731692768546580758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275189.P7731692768546580758

/-! ## A275189.P5179290526011727827

`eq[4, A274640(n)]`
-/

namespace A275189.P5179290526011727827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275189.P5179290526011727827

/-! ## A275189.P6887992473213006694

`lt[A225058(A274641(n)+1), 1]`
-/

namespace A275189.P6887992473213006694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A274641 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275189.P6887992473213006694

/-! ## A275189.P10255950531374655250

`lt[xor(10, A000040(A274640(n)+1)), 6]`
-/

namespace A275189.P10255950531374655250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A000040 (A274640 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275189.P10255950531374655250

/-! ## A275189.P13331329092423402309

`lt[A136417(A274641(n)), A274640(n)]`
-/

namespace A275189.P13331329092423402309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (A274641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P13331329092423402309

/-! ## A275189.P14707138048841480063

`lt[A136417(A274640(n)-1), A274640(n)]`
-/

namespace A275189.P14707138048841480063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (A274640 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P14707138048841480063

/-! ## A275189.P321561120880020957

`lt[A000007(n), A185016(A274640(n)+2)]`
-/

namespace A275189.P321561120880020957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P321561120880020957

/-! ## A275189.P225121462509988809

`lt[A000038(n), A185016(A274640(n)+2)]`
-/

namespace A275189.P225121462509988809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P225121462509988809

/-! ## A275189.P11762814008869314783

`lt[A000007(n), A185016(A274641(n)+3)]`
-/

namespace A275189.P11762814008869314783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P11762814008869314783

/-! ## A275189.P15169683346109489193

`lt[A000038(n), A185016(A274641(n)+3)]`
-/

namespace A275189.P15169683346109489193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275189.P15169683346109489193

/-!
# A275190: Positions of 5 in A274640.

The programs for A275190, there is no canonical definition to state claims against.
-/

/-! ## A275190.P7926957736478854739

`eq[4, A274641(n)]`
-/

namespace A275190.P7926957736478854739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275190.P7926957736478854739

/-! ## A275190.P8520031544117600792

`eq[5, A274640(n)]`
-/

namespace A275190.P8520031544117600792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275190.P8520031544117600792

/-! ## A275190.P4933393920811923758

`lt[xor(12, A000040(A274640(n)+1)), 2]`
-/

namespace A275190.P4933393920811923758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 12 (A000040 (A274640 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275190.P4933393920811923758

/-! ## A275190.P9050972360077343020

`lt[A000007(n), A185016(A274640(n)+1)]`
-/

namespace A275190.P9050972360077343020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P9050972360077343020

/-! ## A275190.P5805777635175156273

`lt[A000038(n), A185016(A274640(n)+1)]`
-/

namespace A275190.P5805777635175156273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P5805777635175156273

/-! ## A275190.P9869385609038387344

`lt[A185016(n), A185016(A274640(n)+1)]`
-/

namespace A275190.P9869385609038387344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P9869385609038387344

/-! ## A275190.P17696143939563428861

`lt[A000007(n), A185016(A274641(n)+2)]`
-/

namespace A275190.P17696143939563428861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P17696143939563428861

/-! ## A275190.P11821810770464876881

`lt[A000038(n), A185016(A274641(n)+2)]`
-/

namespace A275190.P11821810770464876881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P11821810770464876881

/-! ## A275190.P17725385956332150908

`lt[A185016(n), A185016(A274641(n)+2)]`
-/

namespace A275190.P17725385956332150908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275190.P17725385956332150908

/-!
# A275191: Positions of 6 in A274640.

The programs for A275191, there is no canonical definition to state claims against.
-/

/-! ## A275191.P4369149506550625136

`eq[5, A274641(n)]`
-/

namespace A275191.P4369149506550625136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275191.P4369149506550625136

/-! ## A275191.P8792845745681694046

`eq[6, A274640(n)]`
-/

namespace A275191.P8792845745681694046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275191.P8792845745681694046

/-! ## A275191.P6367506849909350349

`lt[A000010(A274640(n))², A274641(n)]`
-/

namespace A275191.P6367506849909350349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A274640 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P6367506849909350349

/-! ## A275191.P16682431186727127305

`lt[A000007(n), A185016(A274640(n))]`
-/

namespace A275191.P16682431186727127305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P16682431186727127305

/-! ## A275191.P6564008859887333773

`lt[A000038(n), A185016(A274640(n))]`
-/

namespace A275191.P6564008859887333773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P6564008859887333773

/-! ## A275191.P11659799878302129630

`lt[A185016(n), A185016(A274640(n))]`
-/

namespace A275191.P11659799878302129630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P11659799878302129630

/-! ## A275191.P10417868930252093849

`lt[A000007(n), A185016(A274641(n)+1)]`
-/

namespace A275191.P10417868930252093849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P10417868930252093849

/-! ## A275191.P2845366941787796522

`lt[A000038(n), A185016(A274641(n)+1)]`
-/

namespace A275191.P2845366941787796522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P2845366941787796522

/-! ## A275191.P16314155225363511540

`lt[A185016(n), A185016(A274641(n)+1)]`
-/

namespace A275191.P16314155225363511540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275191.P16314155225363511540

/-!
# A275192: Positions of 7 in A274640.

The programs for A275192, there is no canonical definition to state claims against.
-/

/-! ## A275192.P12962338296784006800

`eq[6, A274641(n)]`
-/

namespace A275192.P12962338296784006800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275192.P12962338296784006800

/-! ## A275192.P17707993764848127251

`eq[7, A274640(n)]`
-/

namespace A275192.P17707993764848127251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275192.P17707993764848127251

/-! ## A275192.P12258141123756545786

`lt[A104696(A274640(n)+2), 2]`
-/

namespace A275192.P12258141123756545786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A274640 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275192.P12258141123756545786

/-! ## A275192.P12091364935988467167

`lt[A000007(n), A185016(A274641(n))]`
-/

namespace A275192.P12091364935988467167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P12091364935988467167

/-! ## A275192.P17283923535117999974

`lt[A000038(n), A185016(A274641(n))]`
-/

namespace A275192.P17283923535117999974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P17283923535117999974

/-! ## A275192.P3161676424922025245

`lt[A185016(n), A185016(A274641(n))]`
-/

namespace A275192.P3161676424922025245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P3161676424922025245

/-! ## A275192.P8997835423482922383

`lt[A000007(n), A185016(A274640(n)-1)]`
-/

namespace A275192.P8997835423482922383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P8997835423482922383

/-! ## A275192.P11850496149758243885

`lt[A000038(n), A185016(A274640(n)-1)]`
-/

namespace A275192.P11850496149758243885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P11850496149758243885

/-! ## A275192.P2491533135163977771

`lt[A185016(n), A185016(A274640(n)-1)]`
-/

namespace A275192.P2491533135163977771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A274640 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275192.P2491533135163977771

/-!
# A275193: Positions of 9 in A274640.

The programs for A275193, there is no canonical definition to state claims against.
-/

/-! ## A275193.P11186363386662011272

`eq[8, A274641(n)]`
-/

namespace A275193.P11186363386662011272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275193.P11186363386662011272

/-! ## A275193.P15097742585932384473

`eq[9, A274640(n)]`
-/

namespace A275193.P15097742585932384473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275193.P15097742585932384473

/-! ## A275193.P15012164258609823272

`lt[A104696(A274641(n)+1), 2]`
-/

namespace A275193.P15012164258609823272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A274641 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275193.P15012164258609823272

/-! ## A275193.P6744296036141125896

`lt[xor(9, A008620(3*A274641(n))), 1]`
-/

namespace A275193.P6744296036141125896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A008620 (3 * A274641 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275193.P6744296036141125896

/-! ## A275193.P10876534020951294115

`lt[xor(9, A110659(4*A274641(n))), 1]`
-/

namespace A275193.P10876534020951294115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A110659 (4 * A274641 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275193.P10876534020951294115

/-!
# A275194: Positions of 10 in A274640.

The programs for A275194, there is no canonical definition to state claims against.
-/

/-! ## A275194.P17145336990268379114

`eq[9, A274641(n)]`
-/

namespace A275194.P17145336990268379114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275194.P17145336990268379114

/-! ## A275194.P12341468286768471

`eq[10, A274640(n)]`
-/

namespace A275194.P12341468286768471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275194.P12341468286768471

/-! ## A275194.P14576244538242553459

`lt[xor(10, A008620(3*A274641(n))), 1]`
-/

namespace A275194.P14576244538242553459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A008620 (3 * A274641 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275194.P14576244538242553459

/-! ## A275194.P6209411863558558801

`lt[xor(10, A110659(4*A274641(n))), 1]`
-/

namespace A275194.P6209411863558558801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A110659 (4 * A274641 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275194.P6209411863558558801

/-! ## A275194.P18320927892726408640

`lt[A314220(n), A181061(A274641(n))]`
-/

namespace A275194.P18320927892726408640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A274641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275194.P18320927892726408640

/-!
# A275195: Sum of n-th powers of the roots of x^3 - 7*x^2 - 49*x - 49.

The programs for A275195, the canonical program `A275195.P8665107921367448647` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275195 has offset 0).

The definition of A275195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275195.P18338382382484267468

`ogf((3-14x-49x^2)/(1-7x-49x^2-49x^3))`
-/

namespace A275195.P18338382382484267468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -14, -49] [1, -7, -49, -49] n

end

end A275195.P18338382382484267468

namespace A275195

/-- `ogf((3-14x-49x^2)/(1-7x-49x^2-49x^3))` -/
def P18338382382484267468.Spec : Prop :=
  ∀ n, P18338382382484267468.a n = A275195 n

end A275195

/-! ## A275195.P8665107921367448647

`7*a(n-1)+49*a(n-2)+49*a(n-3)` with `a(0)=3, a(1)=7, a(2)=147`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275195

/-- `7*a(n-1)+49*a(n-2)+49*a(n-3)` -/
def P8665107921367448647.Spec : Prop :=
  ∀ n, (P8665107921367448647.a n : ℤ) = A275195 n

theorem P8665107921367448647.correct : P8665107921367448647.Spec := by
  intro n
  simp only [A275195]

end A275195

/-!
# A275196: Odd numbers n such that sigma(n) does not divide sigma(n^3).

The programs for A275196, there is no canonical definition to state claims against.
-/

/-! ## A275196.P8665434476434717789

`lt[3, A077567(A093178(n))]`
-/

namespace A275196.P8665434476434717789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077567 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275196.P8665434476434717789

/-! ## A275196.P17199797392029228187

`A053850(A242410(n+1))%A052075(n+1)`
-/

namespace A275196.P17199797392029228187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053850 (A242410 (n + 1)).toNat) (A052075 (n + 1))

end

end A275196.P17199797392029228187

/-! ## A275196.P6128640380810687048

`filter[A392498(n+1), A353569(#)]`
-/

namespace A275196.P6128640380810687048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A275196.P6128640380810687048

/-! ## A275196.P15105480467029329576

`∩[A053850(n+1), A392498(n+1)]`
-/

namespace A275196.P15105480467029329576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275196.P15105480467029329576

/-! ## A275196.P7150808474143639150

`A097484(lt[A266152(n), A057521(2*n+1)])`
-/

namespace A275196.P7150808474143639150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A275196.P7150808474143639150

/-!
# A275198: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 14.

The programs for A275198, the canonical program `A275198.P7066260242528723624` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275198 has offset 0).

The definition of A275198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275198.P3865261942013874912

`C(row(n), col(n))%14`
-/

namespace A275198.P3865261942013874912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) % 14

end

end A275198.P3865261942013874912

namespace A275198

/-- `C(row(n), col(n))%14` -/
def P3865261942013874912.Spec : Prop :=
  ∀ n, (P3865261942013874912.a n : ℤ) = A275198 n

end A275198

/-! ## A275198.P7066260242528723624

`A070696(A007318(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275198

/-- `A070696(A007318(n))` -/
def P7066260242528723624.Spec : Prop :=
  ∀ n, P7066260242528723624.a n = A275198 n

theorem P7066260242528723624.correct : P7066260242528723624.Spec := by
  intro n
  simp only [A275198]

end A275198

/-! ## A275198.P5071968266059086348

`abs(A117440(n)%14)`
-/

namespace A275198.P5071968266059086348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A117440 n) 14|

end

end A275198.P5071968266059086348

namespace A275198

/-- `abs(A117440(n)%14)` -/
def P5071968266059086348.Spec : Prop :=
  ∀ n, P5071968266059086348.a n = A275198 n

end A275198

/-! ## A275198.P2970414855917636943

`abs(A130595(n)%14)`
-/

namespace A275198.P2970414855917636943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130595 n) 14|

end

end A275198.P2970414855917636943

namespace A275198

/-- `abs(A130595(n)%14)` -/
def P2970414855917636943.Spec : Prop :=
  ∀ n, P2970414855917636943.a n = A275198 n

end A275198

/-! ## A275198.P5428651956838304403

`sqrt(A008459(n))%14`
-/

namespace A275198.P5428651956838304403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 14

end

end A275198.P5428651956838304403

namespace A275198

/-- `sqrt(A008459(n))%14` -/
def P5428651956838304403.Spec : Prop :=
  ∀ n, P5428651956838304403.a n = A275198 n

end A275198

/-! ## A275198.P8809481577527953639

`Δ[A102363(n)]%14`
-/

namespace A275198.P8809481577527953639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 14

end

end A275198.P8809481577527953639

namespace A275198

/-- `Δ[A102363(n)]%14` -/
def P8809481577527953639.Spec : Prop :=
  ∀ n, P8809481577527953639.a n = A275198 n

end A275198

/-! ## A275198.P13676715250399467566

`(A014473(n)+1)%14`
-/

namespace A275198.P13676715250399467566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 14

end

end A275198.P13676715250399467566

namespace A275198

/-- `(A014473(n)+1)%14` -/
def P13676715250399467566.Spec : Prop :=
  ∀ n, P13676715250399467566.a n = A275198 n

end A275198

/-! ## A275198.P1139850865185760500

`(A028326(n)/2)%14`
-/

namespace A275198.P1139850865185760500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) 14

end

end A275198.P1139850865185760500

namespace A275198

/-- `(A028326(n)/2)%14` -/
def P1139850865185760500.Spec : Prop :=
  ∀ n, P1139850865185760500.a n = A275198 n

end A275198

/-! ## A275198.P9245344782081398099

`A007318(n)%A040042(n)`
-/

namespace A275198.P9245344782081398099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A040042 n)

end

end A275198.P9245344782081398099

namespace A275198

/-- `A007318(n)%A040042(n)` -/
def P9245344782081398099.Spec : Prop :=
  ∀ n, P9245344782081398099.a n = A275198 n

end A275198

/-! ## A275198.P9765814885222576421

`gcd(A124927(n), A124928(n))%14`
-/

namespace A275198.P9765814885222576421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 14

end

end A275198.P9765814885222576421

namespace A275198

/-- `gcd(A124927(n), A124928(n))%14` -/
def P9765814885222576421.Spec : Prop :=
  ∀ n, (P9765814885222576421.a n : ℤ) = A275198 n

end A275198

/-! ## A275198.P2224097968644365702

`(A176348(n)/A176346(n))%14`
-/

namespace A275198.P2224097968644365702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))) 14

end

end A275198.P2224097968644365702

namespace A275198

/-- `(A176348(n)/A176346(n))%14` -/
def P2224097968644365702.Spec : Prop :=
  ∀ n, P2224097968644365702.a n = A275198 n

end A275198

/-! ## A275198.P7357316440783145514

`A027467(n)%14`
-/

namespace A275198.P7357316440783145514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027467 n) 14

end

end A275198.P7357316440783145514

namespace A275198

/-- `A027467(n)%14` -/
def P7357316440783145514.Spec : Prop :=
  ∀ n, P7357316440783145514.a n = A275198 n

end A275198

/-! ## A275198.P14440791267505432734

`A141697(n+1)%14`
-/

namespace A275198.P14440791267505432734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141697 (n + 1)) 14

end

end A275198.P14440791267505432734

namespace A275198

/-- `A141697(n+1)%14` -/
def P14440791267505432734.Spec : Prop :=
  ∀ n, P14440791267505432734.a n = A275198 n

end A275198

/-! ## A275198.P17835116400904313437

`A142462(n+1)%A040042(n)`
-/

namespace A275198.P17835116400904313437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142462 (n + 1)) (A040042 n)

end

end A275198.P17835116400904313437

namespace A275198

/-- `A142462(n+1)%A040042(n)` -/
def P17835116400904313437.Spec : Prop :=
  ∀ n, P17835116400904313437.a n = A275198 n

end A275198

/-! ## A275198.P12746807265455047225

`A022179(n)%14`
-/

namespace A275198.P12746807265455047225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022179 n) 14

end

end A275198.P12746807265455047225

namespace A275198

/-- `A022179(n)%14` -/
def P12746807265455047225.Spec : Prop :=
  ∀ n, P12746807265455047225.a n = A275198 n

end A275198

/-! ## A275198.P438812576659615495

`A070696(A097805(comp[∑[n]]))`
-/

namespace A275198.P438812576659615495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A275198.P438812576659615495

namespace A275198

/-- `A070696(A097805(comp[∑[n]]))` -/
def P438812576659615495.Spec : Prop :=
  ∀ n, P438812576659615495.a n = A275198 n

end A275198

/-! ## A275198.P10268333181047643329

`A070696(A135225(comp[∑[n]]))`
-/

namespace A275198.P10268333181047643329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A275198.P10268333181047643329

namespace A275198

/-- `A070696(A135225(comp[∑[n]]))` -/
def P10268333181047643329.Spec : Prop :=
  ∀ n, P10268333181047643329.a n = A275198 n

end A275198

/-! ## A275198.P11592969853328036136

`A070696(abs(2-A173740(n)))`
-/

namespace A275198.P11592969853328036136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 |2 - A173740 n|.toNat

end

end A275198.P11592969853328036136

namespace A275198

/-- `A070696(abs(2-A173740(n)))` -/
def P11592969853328036136.Spec : Prop :=
  ∀ n, P11592969853328036136.a n = A275198 n

end A275198

/-! ## A275198.P17076526881579478567

`A070696(A097805(n+1)+A097805(n))`
-/

namespace A275198.P17076526881579478567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A097805 (n + 1) + A097805 n).toNat

end

end A275198.P17076526881579478567

namespace A275198

/-- `A070696(A097805(n+1)+A097805(n))` -/
def P17076526881579478567.Spec : Prop :=
  ∀ n, P17076526881579478567.a n = A275198 n

end A275198

/-! ## A275198.P5535222481177550208

`A008619(A109128(n))%14`
-/

namespace A275198.P5535222481177550208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A109128 n).toNat) 14

end

end A275198.P5535222481177550208

namespace A275198

/-- `A008619(A109128(n))%14` -/
def P5535222481177550208.Spec : Prop :=
  ∀ n, P5535222481177550208.a n = A275198 n

end A275198

/-!
# A275199: Numbers having equal numbers of distinct prime factors of forms 6*k+1 and 6*k+5.

The programs for A275199, there is no canonical definition to state claims against.
-/

/-! ## A275199.P8913251331156953096

`lt[1, A008472(A000982(2*(n+1)))%3]+1`
-/

namespace A275199.P8913251331156953096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (A000982 (2 * (n + 1))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275199.P8913251331156953096

/-! ## A275199.P321903442691682099

`lt[1, A008472(A000290(2*(n+1)))%3]+1`
-/

namespace A275199.P321903442691682099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (A000290 (2 * (n + 1))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275199.P321903442691682099

/-! ## A275199.P17726671768838522645

`∩[A010434(n+1), A353868(n+1)]`
-/

namespace A275199.P17726671768838522645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275199.P17726671768838522645

/-! ## A275199.P8361799305001906055

`eq[A007318(A109375(n)), A011602(n)]`
-/

namespace A275199.P8361799305001906055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A109375 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275199.P8361799305001906055

/-! ## A275199.P5610211548305460655

`lt[A354528(A006530(n+1)), A000005(n+2)]+1`
-/

namespace A275199.P5610211548305460655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354528 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275199.P5610211548305460655

