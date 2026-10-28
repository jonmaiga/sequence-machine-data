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
import Seq.B000.C009
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A225202: Number of aperiodic tilings of an n X 1 rectangle by tiles of dimension 1 X 1 and 2 X 1.

The programs for A225202, the canonical program `A225202.P2491244517041771249` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225202 has offset 1).

The definition of A225202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225202.P2491244517041771249

`∑{d}[n+1, A008683((n+1)/#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225202

/-- `∑{d}[n+1, A008683((n+1)/#)*A000045(#+1)]` -/
def P2491244517041771249.Spec : Prop :=
  ∀ n, P2491244517041771249.a n = A225202 (n + 1)

theorem P2491244517041771249.correct : P2491244517041771249.Spec := by
  intro n
  simp only [A225202, Nat.add_sub_cancel]

end A225202

/-! ## A225202.P13080212404416054348

`A381936(n+1)+A007436(n+1)`
-/

namespace A225202.P13080212404416054348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381936 (n + 1) + A007436 (n + 1)

end

end A225202.P13080212404416054348

namespace A225202

/-- `A381936(n+1)+A007436(n+1)` -/
def P13080212404416054348.Spec : Prop :=
  ∀ n, P13080212404416054348.a n = A225202 (n + 1)

end A225202

/-! ## A225202.P10818587842943306542

`∑{d}[n+1, A007427(#)*A245282((n+1)/#)]`
-/

namespace A225202.P10818587842943306542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A245282 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A225202.P10818587842943306542

namespace A225202

/-- `∑{d}[n+1, A007427(#)*A245282((n+1)/#)]` -/
def P10818587842943306542.Spec : Prop :=
  ∀ n, P10818587842943306542.a n = A225202 (n + 1)

end A225202

/-! ## A225202.P12408593028609864709

`A383515(A319769(n)+A026810(n))`
-/

namespace A225202.P12408593028609864709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (A319769 n + A026810 n).toNat

end

end A225202.P12408593028609864709

namespace A225202

/-- `A383515(A319769(n)+A026810(n))` -/
def P12408593028609864709.Spec : Prop :=
  ∀ n, P12408593028609864709.a n = A225202 (n + 1)

end A225202

/-! ## A225202.P3255793393227331787

`record[A118287(n+1)]-A113166(n+1)`
-/

namespace A225202.P3255793393227331787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A113166 (n + 1)

end

end A225202.P3255793393227331787

namespace A225202

/-- `record[A118287(n+1)]-A113166(n+1)` -/
def P3255793393227331787.Spec : Prop :=
  ∀ n, P3255793393227331787.a n = A225202 (n + 1)

end A225202

/-!
# A225203: Table T(n,k) composed of rows equal to: n * (the characteristic function of the multiples of (n+1)), read by downwards antidiagonals.

The programs for A225203, there is no canonical definition to state claims against.
-/

/-! ## A225203.P1460064048951127723

`A307662(comp[∑[n]]+1)-1`
-/

namespace A225203.P1460064048951127723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A225203.P1460064048951127723

/-! ## A225203.P5263169305487526351

`∑{e}[A143425(comp[∑[n]]+1), #]`
-/

namespace A225203.P5263169305487526351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143425 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A225203.P5263169305487526351

/-! ## A225203.P7354557879175227205

`A023443(A307662(comp[∑[n]]+1))`
-/

namespace A225203.P7354557879175227205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A307662 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A225203.P7354557879175227205

/-! ## A225203.P217830768824235700

`A002260(n+1)*A077049(n+2)`
-/

namespace A225203.P217830768824235700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A077049 (n + 2)

end

end A225203.P217830768824235700

/-! ## A225203.P8297628575557510309

`A077049(n+2)*A175488(n+1)`
-/

namespace A225203.P8297628575557510309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 2) * A175488 (n + 1)

end

end A225203.P8297628575557510309

/-! ## A225203.P6475110433833554828

`A077049(n+2)*A326934(n+1)`
-/

namespace A225203.P6475110433833554828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 2) * A326934 (n + 1)

end

end A225203.P6475110433833554828

/-! ## A225203.P4525913679656591473

`A003602(A054582(n))*A077049(n+2)`
-/

namespace A225203.P4525913679656591473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054582 n).toNat * A077049 (n + 2)

end

end A225203.P4525913679656591473

/-! ## A225203.P15033479766504734317

`A000005(A059268(n))*A077049(n+2)`
-/

namespace A225203.P15033479766504734317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A077049 (n + 2)

end

end A225203.P15033479766504734317

/-! ## A225203.P10974087158868665877

`A176919(A120912(n+1))`
-/

namespace A225203.P10974087158868665877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (A120912 (n + 1)).toNat

end

end A225203.P10974087158868665877

/-!
# A225204: Numerators of convergents to the square root of the golden ratio.

The programs for A225204, there is no canonical definition to state claims against.
-/

/-! ## A225204.P16754444800693057157

`A331692(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A225204.P16754444800693057157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A331692 n * a (n - 1) + a (n - 2)

end

end A225204.P16754444800693057157

/-!
# A225205: Denominators of convergents to the square root of the golden ratio.

The programs for A225205, there is no canonical definition to state claims against.
-/

/-! ## A225205.P7900295785261647218

`A331692(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A225205.P7900295785261647218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A331692 n * a (n - 1) + a (n - 2)

end

end A225205.P7900295785261647218

/-!
# A225208: Engel expansion of the positive root of x^x^x^x = 2.

The programs for A225208, there is no canonical definition to state claims against.
-/

/-! ## A225208.P16426958328704212712

`A077468(A303537(n))`
-/

namespace A225208.P16426958328704212712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A303537 n).toNat

end

end A225208.P16426958328704212712

/-!
# A225209: a(n) = (392*16^n -1620*8^n +1890*4^n -767)/105.

The programs for A225209, the canonical program `A225209.P15302786311720319284` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225209 has offset 1).

The definition of A225209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225209.P15302786311720319284

`a(n-1)+2^n*(A036563(n+2)^3-A036563(n+1)^3)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225209

/-- `a(n-1)+2^n*(A036563(n+2)^3-A036563(n+1)^3)` -/
def P15302786311720319284.Spec : Prop :=
  ∀ n, P15302786311720319284.a n = A225209 (n + 1)

theorem P15302786311720319284.correct : P15302786311720319284.Spec := by
  intro n
  simp only [A225209, Nat.add_sub_cancel]

end A225209

/-!
# A225211: Numbers n such that sigma(n+1) - sigma(n) divides n.

The programs for A225211, there is no canonical definition to state claims against.
-/

/-! ## A225211.P14740798840849918784

`eq[lcm(n, A340793(n+1)), A028310(n)]`
-/

namespace A225211.P14740798840849918784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A340793 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225211.P14740798840849918784

/-!
# A225212: A "Look and Say" sequence (with nested repetitions).

The programs for A225212, there is no canonical definition to state claims against.
-/

/-! ## A225212.P8516329765082411968

`A322353(Δ[A181925(2*n+5)])+1`
-/

namespace A225212.P8516329765082411968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181925 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (f1 (n + 1) - f1 n).toNat + 1

end

end A225212.P8516329765082411968

/-! ## A225212.P18382825666085662752

`A202338(A377801(n))`
-/

namespace A225212.P18382825666085662752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202338 (A377801 n).toNat

end

end A225212.P18382825666085662752

/-! ## A225212.P15796282004953500281

`A336643(A057248(n+1))`
-/

namespace A225212.P15796282004953500281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A057248 (n + 1)).toNat

end

end A225212.P15796282004953500281

/-! ## A225212.P15441790351925899421

`A110999(A005169(n))%4`
-/

namespace A225212.P15441790351925899421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110999 (A005169 n).toNat) 4

end

end A225212.P15441790351925899421

/-!
# A225213: Triangular array read by rows. T(n,k) is the number of cycles in the digraph representation of all functions f:{1,2,...,n}->{1,2,...,n} that have length k; 1<=k<=n.

The programs for A225213, there is no canonical definition to state claims against.
-/

/-! ## A225213.P13857051277251077710

`A095888(n+1)*A111492(n+1)`
-/

namespace A225213.P13857051277251077710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) * A111492 (n + 1)

end

end A225213.P13857051277251077710

/-! ## A225213.P1553033867597135254

`A201685(n+1)²/A259334(n+1)`
-/

namespace A225213.P1553033867597135254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201685 (n + 1) ^ 2 : ℚ) / (A259334 (n + 1) : ℚ)

end

end A225213.P1553033867597135254

/-! ## A225213.P3391039261745173549

`A002262(n)!*A071207(A014132(n+1))`
-/

namespace A225213.P3391039261745173549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A071207 (A014132 (n + 1)).toNat

end

end A225213.P3391039261745173549

/-! ## A225213.P9712519686115237041

`A076112(A038722(n+1))*A111492(n+1)`
-/

namespace A225213.P9712519686115237041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A038722 (n + 1)).toNat * A111492 (n + 1)

end

end A225213.P9712519686115237041

/-! ## A225213.P10210123139394502229

`A173333(n+1)*A201685(n+1)/A094587(n)`
-/

namespace A225213.P10210123139394502229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) * A201685 (n + 1) : ℚ) / (A094587 n : ℚ)

end

end A225213.P10210123139394502229

/-!
# A225214: Primes of the form (2^n - 1)*(2^(m+3)) + 5 where n >= 1, m >= 1.

The programs for A225214, there is no canonical definition to state claims against.
-/

/-! ## A225214.P10706868442111081344

`∩[A127589(n+1), A224701(n+1)]`
-/

namespace A225214.P10706868442111081344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225214.P10706868442111081344

/-! ## A225214.P3573906895164482440

`p?[A224701(n+1)]`
-/

namespace A225214.P3573906895164482440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225214.P3573906895164482440

/-! ## A225214.P7616098292038210643

`p?[2*A224380(n+1)-1]`
-/

namespace A225214.P7616098292038210643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224380 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225214.P7616098292038210643

/-! ## A225214.P5887599380384219198

`p?[8*A224195(n+1)-3]`
-/

namespace A225214.P5887599380384219198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A224195 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225214.P5887599380384219198

/-! ## A225214.P11300692701386861965

`p?[8*A043569(n+1)+5]`
-/

namespace A225214.P11300692701386861965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A043569 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225214.P11300692701386861965

/-!
# A225215: Floor of the Euclidean distance of a point on the (1, 1, 1; 1, 1, 1) 3D walk.

The programs for A225215, the canonical program `A225215.P7608455331556747072` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225215 has offset 1).

The definition of A225215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225215.P7608455331556747072

`floor(sqrt(A008810(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225215

/-- `floor(sqrt(A008810(n+1)))` -/
def P7608455331556747072.Spec : Prop :=
  ∀ n, P7608455331556747072.a n = A225215 (n + 1)

theorem P7608455331556747072.correct : P7608455331556747072.Spec := by
  intro n
  simp only [A225215, Nat.add_sub_cancel]

end A225215

/-! ## A225215.P12544115416920836707

`floor(sqrt(ceil((n+1)²/3)))`
-/

namespace A225215.P12544115416920836707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈((n + 1) ^ 2 : ℚ) / 3⌉

end

end A225215.P12544115416920836707

namespace A225215

/-- `floor(sqrt(ceil((n+1)²/3)))` -/
def P12544115416920836707.Spec : Prop :=
  ∀ n, P12544115416920836707.a n = A225215 (n + 1)

theorem P12544115416920836707.correct : P12544115416920836707.Spec := by
  intro n
  simp only [A225215, Nat.add_sub_cancel, A225215.P12544115416920836707.a, A225215.P7608455331556747072.a, A008810, A008810.P16680249432660166697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225215

/-! ## A225215.P11581667253348535573

`ceil((acot(n)+n+1)/sqrt(3))-1`
-/

namespace A225215.P11581667253348535573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n : ℝ) + (n : ℝ) + 1) / Real.sqrt (3 : ℝ)⌉ - 1

end

end A225215.P11581667253348535573

namespace A225215

/-- `ceil((acot(n)+n+1)/sqrt(3))-1` -/
def P11581667253348535573.Spec : Prop :=
  ∀ n, P11581667253348535573.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P5453036068026155333

`ceil(sqrt(record[(abs(1-n)-2)²]/3+1))-1`
-/

namespace A225215.P5453036068026155333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3 + 1 : ℝ)⌉ - 1

end

end A225215.P5453036068026155333

namespace A225215

/-- `ceil(sqrt(record[(abs(1-n)-2)²]/3+1))-1` -/
def P5453036068026155333.Spec : Prop :=
  ∀ n, P5453036068026155333.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P10339884116084846171

`floor((acot(n+1)+n+1)/sqrt(3))%(3*n+4)`
-/

namespace A225215.P10339884116084846171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ) + 1) / Real.sqrt (3 : ℝ)⌋ (3 * n + 4 : ℤ)

end

end A225215.P10339884116084846171

namespace A225215

/-- `floor((acot(n+1)+n+1)/sqrt(3))%(3*n+4)` -/
def P10339884116084846171.Spec : Prop :=
  ∀ n, P10339884116084846171.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P17287044233003138492

`A186541(n+1)-(n+1)`
-/

namespace A225215.P17287044233003138492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186541 (n + 1) - (n + 1 : ℤ)

end

end A225215.P17287044233003138492

namespace A225215

/-- `A186541(n+1)-(n+1)` -/
def P17287044233003138492.Spec : Prop :=
  ∀ n, P17287044233003138492.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P3584686188660360726

`ceil(sqrt(A032765(n)+2))-1`
-/

namespace A225215.P3584686188660360726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A032765 n + 2 : ℝ)⌉ - 1

end

end A225215.P3584686188660360726

namespace A225215

/-- `ceil(sqrt(A032765(n)+2))-1` -/
def P3584686188660360726.Spec : Prop :=
  ∀ n, P3584686188660360726.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P14166930541258245557

`∑[char[A186542(n+1)-(n+1)]]`
-/

namespace A225215.P14166930541258245557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186542 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225215.P14166930541258245557

namespace A225215

/-- `∑[char[A186542(n+1)-(n+1)]]` -/
def P14166930541258245557.Spec : Prop :=
  ∀ n, (P14166930541258245557.a n : ℤ) = A225215 (n + 1)

end A225215

/-! ## A225215.P13247353687013499069

`A027434(A036410(n))-1`
-/

namespace A225215.P13247353687013499069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A036410 n).toNat - 1

end

end A225215.P13247353687013499069

namespace A225215

/-- `A027434(A036410(n))-1` -/
def P13247353687013499069.Spec : Prop :=
  ∀ n, P13247353687013499069.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P3819856240588431895

`A000267(A230059(n+2))`
-/

namespace A225215.P3819856240588431895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A230059 (n + 2)).toNat

end

end A225215.P3819856240588431895

namespace A225215

/-- `A000267(A230059(n+2))` -/
def P3819856240588431895.Spec : Prop :=
  ∀ n, P3819856240588431895.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P17141849703786944570

`A027434(∑[A008612(n)])-1`
-/

namespace A225215.P17141849703786944570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A225215.P17141849703786944570

namespace A225215

/-- `A027434(∑[A008612(n)])-1` -/
def P17141849703786944570.Spec : Prop :=
  ∀ n, P17141849703786944570.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P18298981902784812027

`A103128(A008747(n))`
-/

namespace A225215.P18298981902784812027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A008747 n).toNat

end

end A225215.P18298981902784812027

namespace A225215

/-- `A103128(A008747(n))` -/
def P18298981902784812027.Spec : Prop :=
  ∀ n, P18298981902784812027.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P16323178406237011486

`A103128(Δ[A175812(n)])`
-/

namespace A225215.P16323178406237011486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (f1 (n + 1) - f1 n).toNat

end

end A225215.P16323178406237011486

namespace A225215

/-- `A103128(Δ[A175812(n)])` -/
def P16323178406237011486.Spec : Prop :=
  ∀ n, P16323178406237011486.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P4258297714512870954

`A000196(ceil((n+1)²/3))`
-/

namespace A225215.P4258297714512870954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈((n + 1) ^ 2 : ℚ) / 3⌉.toNat

end

end A225215.P4258297714512870954

namespace A225215

/-- `A000196(ceil((n+1)²/3))` -/
def P4258297714512870954.Spec : Prop :=
  ∀ n, P4258297714512870954.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P11630745979760060198

`A137735(or(1, floor(n*(n+2)/3)))`
-/

namespace A225215.P11630745979760060198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.lor 1 ⌊(n * (n + 2) : ℚ) / 3⌋).toNat

end

end A225215.P11630745979760060198

namespace A225215

/-- `A137735(or(1, floor(n*(n+2)/3)))` -/
def P11630745979760060198.Spec : Prop :=
  ∀ n, P11630745979760060198.a n = A225215 (n + 1)

end A225215

/-! ## A225215.P5795742820778672633

`A339183(A084672(n+1))`
-/

namespace A225215.P5795742820778672633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A084672 (n + 1)).toNat

end

end A225215.P5795742820778672633

namespace A225215

/-- `A339183(A084672(n+1))` -/
def P5795742820778672633.Spec : Prop :=
  ∀ n, P5795742820778672633.a n = A225215 (n + 1)

end A225215

/-!
# A225216: Let p = n-th prime. Then a(n) = number of primes generated by prepending to the digits of p the digits of q, where q is any prime less than p.

The programs for A225216, there is no canonical definition to state claims against.
-/

/-! ## A225216.P10251797206420504095

`A284256(A001358(n+1)*A237831(n+5))`
-/

namespace A225216.P10251797206420504095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A001358 (n + 1) * A237831 (n + 5)).toNat

end

end A225216.P10251797206420504095

/-! ## A225216.P4768961286479688067

`A001822(A094470(n+1))`
-/

namespace A225216.P4768961286479688067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A094470 (n + 1)).toNat

end

end A225216.P4768961286479688067

/-! ## A225216.P3619340461021443239

`A096737(A326020(n))-2`
-/

namespace A225216.P3619340461021443239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (A326020 n).toNat - 2

end

end A225216.P3619340461021443239

/-! ## A225216.P15523631115719865497

`abs(Δ[A053735(A127681(n))])`
-/

namespace A225216.P15523631115719865497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A127681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A225216.P15523631115719865497

/-! ## A225216.P2864205361397568038

`A005206(n)-A309981(A085158(n))`
-/

namespace A225216.P2864205361397568038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n - A309981 (A085158 n).toNat

end

end A225216.P2864205361397568038

/-!
# A225218: 

The programs for A225218, there is no canonical definition to state claims against.
-/

/-! ## A225218.P6689275763241729170

`A054038(n+1)²`
-/

namespace A225218.P6689275763241729170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (n + 1) ^ 2

end

end A225218.P6689275763241729170

/-! ## A225218.P6102554252934363818

`A054038(xor(1, xor(1, n+1)))^2`
-/

namespace A225218.P6102554252934363818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (Nat.xor 1 (Nat.xor 1 (n + 1))) ^ 2

end

end A225218.P6102554252934363818

/-! ## A225218.P6898560276719411660

`A054038(n+1)^A020639(2*(n+1))`
-/

namespace A225218.P6898560276719411660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054038 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A225218.P6898560276719411660

/-! ## A225218.P13420818013227953806

`A054038(A000027(n+1))*A054038(n+1)`
-/

namespace A225218.P13420818013227953806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (A000027 (n + 1)).toNat * A054038 (n + 1)

end

end A225218.P13420818013227953806

/-! ## A225218.P10613681223143208970

`A066825(n+34)²`
-/

namespace A225218.P10613681223143208970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066825 (n + 34) ^ 2

end

end A225218.P10613681223143208970

/-! ## A225218.P4696965401834636503

`A036745(n+1)`
-/

namespace A225218.P4696965401834636503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036745 (n + 1)

end

end A225218.P4696965401834636503

/-! ## A225218.P7887719862714828477

`(3*A164565(n+1))²`
-/

namespace A225218.P7887719862714828477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A164565 (n + 1)) ^ 2

end

end A225218.P7887719862714828477

/-! ## A225218.P14308996407002820327

`∩[A068708(n+1), A339693(n+1)]`
-/

namespace A225218.P14308996407002820327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225218.P14308996407002820327

/-! ## A225218.P7121026980809644240

`∩[A076966(n+1), A339693(n+1)]`
-/

namespace A225218.P7121026980809644240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225218.P7121026980809644240

/-!
# A225219: Indices n of Fibonacci numbers Fib(n) (A000045) that are divisible by n-1 and n+1.

The programs for A225219, there is no canonical definition to state claims against.
-/

/-! ## A225219.P5183527830883480130

`∩[A100993(n+1), A123976(n+1)-1]`
-/

namespace A225219.P5183527830883480130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225219.P5183527830883480130

/-! ## A225219.P5776980096478173351

`∩[A069104(n+1)+1, A123976(n+1)-1]`
-/

namespace A225219.P5776980096478173351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225219.P5776980096478173351

/-! ## A225219.P4531105322644788497

`∩[A020725(A069104(n+1)), A123976(n+1)-1]`
-/

namespace A225219.P4531105322644788497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069104 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225219.P4531105322644788497

/-!
# A225220: Number of lattice paths without interior points from {n}^4 to {0}^4 using steps that decrement one component by 1.

The programs for A225220, there is no canonical definition to state claims against.
-/

/-! ## A225220.P9591608838261065203

`A225094(A052905(n+2))`
-/

namespace A225220.P9591608838261065203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A052905 (n + 2)).toNat

end

end A225220.P9591608838261065203

/-! ## A225220.P13703994031553657295

`A225094(eq[4, A025581(n)])`
-/

namespace A225220.P13703994031553657295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225220.P13703994031553657295

/-! ## A225220.P2142715158900830073

`A225094(A055999(n+2)+1)`
-/

namespace A225220.P2142715158900830073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A055999 (n + 2) + 1).toNat

end

end A225220.P2142715158900830073

/-! ## A225220.P16064999007618054293

`A225094(A000124(n+5)-6)`
-/

namespace A225220.P16064999007618054293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A000124 (n + 5) - 6).toNat

end

end A225220.P16064999007618054293

/-! ## A225220.P1581860533126690879

`A225094(Δ[A023545(n+1)]-1)`
-/

namespace A225220.P1581860533126690879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (f1 (n + 1) - f1 n - 1).toNat

end

end A225220.P1581860533126690879

/-!
# A225221: Number of lattice paths without interior points from {4}^n to {0}^n using steps that decrement one component by 1.

The programs for A225221, there is no canonical definition to state claims against.
-/

/-! ## A225221.P5511153917014635765

`A225094(A155212(n)+12)`
-/

namespace A225221.P5511153917014635765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A155212 n + 12).toNat

end

end A225221.P5511153917014635765

/-! ## A225221.P15203729062960791361

`A225094(eq[4, A002262(n)])`
-/

namespace A225221.P15203729062960791361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225221.P15203729062960791361

/-! ## A225221.P2722710109212329021

`A225094(eq[16, A143844(n)])`
-/

namespace A225221.P2722710109212329021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225221.P2722710109212329021

/-! ## A225221.P4106699209927090798

`A225094(A167499(n+3)-1)`
-/

namespace A225221.P4106699209927090798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A167499 (n + 3) - 1).toNat

end

end A225221.P4106699209927090798

/-! ## A225221.P1519540214451755439

`A225094(A000217(n+4)+4)`
-/

namespace A225221.P1519540214451755439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A000217 (n + 4) + 4).toNat

end

end A225221.P1519540214451755439

/-!
# A225222: Primes with more than twice as many 1's as 0's in binary.

The programs for A225222, the canonical program `A225222.P12882070343994640497` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225222 has offset 1).

The definition of A225222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225222.P12882070343994640497

`p?[lt[A023416(n), A145037(n)]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225222

/-- `p?[lt[A023416(n), A145037(n)]]` -/
def P12882070343994640497.Spec : Prop :=
  ∀ n, (P12882070343994640497.a n : ℤ) = A225222 (n + 1)

theorem P12882070343994640497.correct : P12882070343994640497.Spec := by
  intro n
  simp only [A225222, Nat.add_sub_cancel]

end A225222

/-! ## A225222.P18424320060760458523

`p?[lt[A080303(n), A124108(n)]]`
-/

namespace A225222.P18424320060760458523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080303 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P18424320060760458523

namespace A225222

/-- `p?[lt[A080303(n), A124108(n)]]` -/
def P18424320060760458523.Spec : Prop :=
  ∀ n, (P18424320060760458523.a n : ℤ) = A225222 (n + 1)

end A225222

/-! ## A225222.P16311107917827647970

`p?[lt[A080791(n), A145037(n)]]`
-/

namespace A225222.P16311107917827647970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P16311107917827647970

namespace A225222

/-- `p?[lt[A080791(n), A145037(n)]]` -/
def P16311107917827647970.Spec : Prop :=
  ∀ n, (P16311107917827647970.a n : ℤ) = A225222 (n + 1)

end A225222

/-! ## A225222.P12680564100662373029

`p?[lt[A080303(n), A196168(n)]]`
-/

namespace A225222.P12680564100662373029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080303 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196168 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P12680564100662373029

namespace A225222

/-- `p?[lt[A080303(n), A196168(n)]]` -/
def P12680564100662373029.Spec : Prop :=
  ∀ n, (P12680564100662373029.a n : ℤ) = A225222 (n + 1)

end A225222

/-! ## A225222.P8301150389668552967

`p?[lt[2*A023416(n), A000120(n)]]`
-/

namespace A225222.P8301150389668552967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P8301150389668552967

namespace A225222

/-- `p?[lt[2*A023416(n), A000120(n)]]` -/
def P8301150389668552967.Spec : Prop :=
  ∀ n, (P8301150389668552967.a n : ℤ) = A225222 (n + 1)

end A225222

/-! ## A225222.P10690902862349597727

`p?[lt[2*A080791(n), A000120(n)]]`
-/

namespace A225222.P10690902862349597727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080791 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P10690902862349597727

namespace A225222

/-- `p?[lt[2*A080791(n), A000120(n)]]` -/
def P10690902862349597727.Spec : Prop :=
  ∀ n, (P10690902862349597727.a n : ℤ) = A225222 (n + 1)

end A225222

/-!
# A225223: Primes of the form p - 1, where p is a practical number (A005153).

The programs for A225223, there is no canonical definition to state claims against.
-/

/-! ## A225223.P8645590581206509910

`p?[∑[A179651(n+1)]]`
-/

namespace A225223.P8645590581206509910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225223.P8645590581206509910

/-! ## A225223.P1806661669421046863

`p?[A005153(n+1)-1]`
-/

namespace A225223.P1806661669421046863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225223.P1806661669421046863

/-! ## A225223.P8746552041597347804

`∩[A000040(n+1), A005153(n+1)-1]`
-/

namespace A225223.P8746552041597347804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225223.P8746552041597347804

/-! ## A225223.P7206177606792172847

`p?[n*A322860(n+1)]`
-/

namespace A225223.P7206177606792172847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225223.P7206177606792172847

/-! ## A225223.P1755667015343287139

`eq[A302055(n), A322860(n+1)]`
-/

namespace A225223.P1755667015343287139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P1755667015343287139

/-! ## A225223.P17832357034187934047

`∩[A005153(n+1)-1, A038550(n+1)]`
-/

namespace A225223.P17832357034187934047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225223.P17832357034187934047

/-! ## A225223.P11338085055116234765

`eq[A322860(n+1), A328771(n)]`
-/

namespace A225223.P11338085055116234765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P11338085055116234765

/-! ## A225223.P7411204704060973100

`eq[A322860(n+1), A328772(n)]`
-/

namespace A225223.P7411204704060973100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P7411204704060973100

/-! ## A225223.P7878043007999671608

`eq[A322860(n+1), A328847(n)]`
-/

namespace A225223.P7878043007999671608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P7878043007999671608

/-! ## A225223.P13305241193975154557

`eq[A167866(n), A322860(n+1)]`
-/

namespace A225223.P13305241193975154557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P13305241193975154557

/-! ## A225223.P9102076218124929959

`eq[A175126(n), A322860(n+1)]`
-/

namespace A225223.P9102076218124929959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P9102076218124929959

/-! ## A225223.P12841377675999528263

`eq[A175078(n+1), A322860(n+1)]`
-/

namespace A225223.P12841377675999528263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P12841377675999528263

/-! ## A225223.P8615600172912494423

`p?[eq[1, A210445(n+1)]]`
-/

namespace A225223.P8615600172912494423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225223.P8615600172912494423

/-! ## A225223.P13396360093522269133

`p?[lt[n, A327832(n+1)]]`
-/

namespace A225223.P13396360093522269133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225223.P13396360093522269133

/-! ## A225223.P5381622942596860783

`eq[A007920(n), A237289(n+1)]`
-/

namespace A225223.P5381622942596860783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P5381622942596860783

/-! ## A225223.P9967072492667100524

`eq[A051699(n), A237289(n+1)]`
-/

namespace A225223.P9967072492667100524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P9967072492667100524

/-! ## A225223.P12058888727660505412

`eq[A003415(n), A322860(n+1)]`
-/

namespace A225223.P12058888727660505412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P12058888727660505412

/-! ## A225223.P16087211902653590702

`eq[A055672(n), A275121(n+1)]`
-/

namespace A225223.P16087211902653590702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P16087211902653590702

/-! ## A225223.P14001735060126550498

`eq[A018783(n), A322860(n+1)]`
-/

namespace A225223.P14001735060126550498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P14001735060126550498

/-! ## A225223.P2236471291882325492

`eq[A032741(n), A322860(n+1)]`
-/

namespace A225223.P2236471291882325492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225223.P2236471291882325492

/-!
# A225224: A continuous "look-and-say" sequence (without repetition, seed 1,1,1).

The programs for A225224, there is no canonical definition to state claims against.
-/

/-! ## A225224.P4869436796820328421

`A323756(A114986(n)+A100883(n))`
-/

namespace A225224.P4869436796820328421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323756 (A114986 n + A100883 n).toNat

end

end A225224.P4869436796820328421

/-! ## A225224.P3375510325715584263

`gcd(A194240(n+1), A285735(A324571(n+1)))`
-/

namespace A225224.P3375510325715584263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194240 (n + 1)) (A285735 (A324571 (n + 1)).toNat)

end

end A225224.P3375510325715584263

/-! ## A225224.P11338538107722758655

`A126768(A136233(n))`
-/

namespace A225224.P11338538107722758655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126768 (A136233 n).toNat

end

end A225224.P11338538107722758655

/-! ## A225224.P158135519973666821

`A299483(A201166(n))`
-/

namespace A225224.P158135519973666821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299483 (A201166 n).toNat

end

end A225224.P158135519973666821

/-! ## A225224.P16583746082145180224

`A106796(A337338(n+2))`
-/

namespace A225224.P16583746082145180224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106796 (A337338 (n + 2)).toNat

end

end A225224.P16583746082145180224

/-!
# A225226: Odd primes p or q with the properties that max(p,q) is Wieferich prime 1093 or 3511 and that binomial(p*q-1,(p*q-1)/2) == binomial(p-1,(p-1)/2)*binomial(q-1,(q-1)/2) (mod (p*q)^2).

The programs for A225226, there is no canonical definition to state claims against.
-/

/-! ## A225226.P7126795401199095921

`A385856(A115035(n+2))`
-/

namespace A225226.P7126795401199095921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385856 (A115035 (n + 2)).toNat

end

end A225226.P7126795401199095921

/-!
# A225228: Numbers with prime signatures (1,1,1) or (2,2,1) or (3,2,2).

The programs for A225228, there is no canonical definition to state claims against.
-/

/-! ## A225228.P15191387098254093688

`eq[5, A050326(n+1)]+1`
-/

namespace A225228.P15191387098254093688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225228.P15191387098254093688

/-! ## A225228.P11062523032974281493

`eq[5, A050326(A028310(n))]`
-/

namespace A225228.P11062523032974281493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225228.P11062523032974281493

/-! ## A225228.P4923344920803261753

`A020725(eq[5, A050326(n+1)])`
-/

namespace A225228.P4923344920803261753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225228.P4923344920803261753

/-! ## A225228.P18401716472963917666

`eq[5, A050326(A233583(n+1))]`
-/

namespace A225228.P18401716472963917666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225228.P18401716472963917666

/-! ## A225228.P14644013561376607932

`eq[4, A002326(A286653(A074206(n)))]`
-/

namespace A225228.P14644013561376607932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A286653 (A074206 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225228.P14644013561376607932

/-! ## A225228.P16965654525905751169

`eq[2, A160806(A074206(n))]`
-/

namespace A225228.P16965654525905751169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160806 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225228.P16965654525905751169

/-!
# A225229: Numbers n such that if some integer N can be written in the form (a/2)^2+n*(b/2)^2 for integers a and b, then every prime factor P of N which occurs to an odd power can also be written in the form (c/2)^2+n*(d/2)^2 for integers c and d.

The programs for A225229, there is no canonical definition to state claims against.
-/

/-! ## A225229.P18217549211658880765

`∪[A014602(n+1), A015195(n)]`
-/

namespace A225229.P18217549211658880765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015195 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225229.P18217549211658880765

/-! ## A225229.P5685503511534429636

`∪[A014602(n+1), A209832(n)]`
-/

namespace A225229.P5685503511534429636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209832 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225229.P5685503511534429636

/-! ## A225229.P8271630116406015196

`∪[A014602(n+1), ∑[A024210(n)]]`
-/

namespace A225229.P8271630116406015196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225229.P8271630116406015196

/-! ## A225229.P11843306015314084778

`∪[A014602(n+1), ∑[A177391(n)]]`
-/

namespace A225229.P11843306015314084778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225229.P11843306015314084778

/-! ## A225229.P15800586328886063116

`∪[A014602(n+1), ∑[A308336(n)]]`
-/

namespace A225229.P15800586328886063116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225229.P15800586328886063116

/-!
# A225230: In the canonical prime factorization of n: (number of distinct primes) minus (largest prime exponent).

The programs for A225230, the canonical program `A225230.P5717106397182085981` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225230 has offset 1).

The definition of A225230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225230.P5717106397182085981

`A001221(n+1)-A051903(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225230

/-- `A001221(n+1)-A051903(n+1)` -/
def P5717106397182085981.Spec : Prop :=
  ∀ n, P5717106397182085981.a n = A225230 (n + 1)

theorem P5717106397182085981.correct : P5717106397182085981.Spec := by
  intro n
  simp only [A225230, Nat.add_sub_cancel]

end A225230

/-! ## A225230.P9207689891544804720

`A083399(n+1)-A067132(n+1)`
-/

namespace A225230.P9207689891544804720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A067132 (n + 1)

end

end A225230.P9207689891544804720

namespace A225230

/-- `A083399(n+1)-A067132(n+1)` -/
def P9207689891544804720.Spec : Prop :=
  ∀ n, P9207689891544804720.a n = A225230 (n + 1)

theorem P9207689891544804720.correct : P9207689891544804720.Spec := by
  intro n
  simp only [A225230, Nat.add_sub_cancel, A225230.P9207689891544804720.a, A225230.P5717106397182085981.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225230

/-! ## A225230.P8106178301193110422

`A297155(n+1)-A066301(n+1)`
-/

namespace A225230.P8106178301193110422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) - A066301 (n + 1)

end

end A225230.P8106178301193110422

namespace A225230

/-- `A297155(n+1)-A066301(n+1)` -/
def P8106178301193110422.Spec : Prop :=
  ∀ n, P8106178301193110422.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P18365791145707829243

`A001221(n+1)+1-A067132(n+1)`
-/

namespace A225230.P18365791145707829243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (1 - A067132 (n + 1))

end

end A225230.P18365791145707829243

namespace A225230

/-- `A001221(n+1)+1-A067132(n+1)` -/
def P18365791145707829243.Spec : Prop :=
  ∀ n, P18365791145707829243.a n = A225230 (n + 1)

theorem P18365791145707829243.correct : P18365791145707829243.Spec := by
  intro n
  simp only [A225230, Nat.add_sub_cancel, A225230.P18365791145707829243.a, A225230.P5717106397182085981.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225230

/-! ## A225230.P13233744513142810018

`A083399(n+1)-(A051903(n+1)+1)`
-/

namespace A225230.P13233744513142810018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - (A051903 (n + 1) + 1)

end

end A225230.P13233744513142810018

namespace A225230

/-- `A083399(n+1)-(A051903(n+1)+1)` -/
def P13233744513142810018.Spec : Prop :=
  ∀ n, P13233744513142810018.a n = A225230 (n + 1)

theorem P13233744513142810018.correct : P13233744513142810018.Spec := by
  intro n
  simp only [A225230, Nat.add_sub_cancel, A225230.P13233744513142810018.a, A225230.P5717106397182085981.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225230

/-! ## A225230.P13396802203790531830

`A001221(n+1)-val(A046523(n+1), 2)`
-/

namespace A225230.P13396802203790531830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ)

end

end A225230.P13396802203790531830

namespace A225230

/-- `A001221(n+1)-val(A046523(n+1), 2)` -/
def P13396802203790531830.Spec : Prop :=
  ∀ n, P13396802203790531830.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P11803478413185227294

`∑{p}[n+1, A001222(#)]-A051903(n+1)`
-/

namespace A225230.P11803478413185227294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p - A051903 (n + 1)

end

end A225230.P11803478413185227294

namespace A225230

/-- `∑{p}[n+1, A001222(#)]-A051903(n+1)` -/
def P11803478413185227294.Spec : Prop :=
  ∀ n, P11803478413185227294.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P200586997196316039

`∑{p}[n+1, A032742(#)]-A051903(n+1)`
-/

namespace A225230.P200586997196316039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A032742 p - A051903 (n + 1)

end

end A225230.P200586997196316039

namespace A225230

/-- `∑{p}[n+1, A032742(#)]-A051903(n+1)` -/
def P200586997196316039.Spec : Prop :=
  ∀ n, P200586997196316039.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P18413868861427971568

`∑{p}[n+1, A349620(#)]-A051903(n+1)`
-/

namespace A225230.P18413868861427971568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A349620 p - A051903 (n + 1)

end

end A225230.P18413868861427971568

namespace A225230

/-- `∑{p}[n+1, A349620(#)]-A051903(n+1)` -/
def P18413868861427971568.Spec : Prop :=
  ∀ n, P18413868861427971568.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P17008858177754900796

`A001222(∏{p}[n+1, #])-A051903(n+1)`
-/

namespace A225230.P17008858177754900796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A051903 (n + 1)

end

end A225230.P17008858177754900796

namespace A225230

/-- `A001222(∏{p}[n+1, #])-A051903(n+1)` -/
def P17008858177754900796.Spec : Prop :=
  ∀ n, P17008858177754900796.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P14856578003653895806

`log2(A000005(∏{p}[n+1, #]))-A051903(n+1)`
-/

namespace A225230.P14856578003653895806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) - (A051903 (n + 1) : ℝ)

end

end A225230.P14856578003653895806

namespace A225230

/-- `log2(A000005(∏{p}[n+1, #]))-A051903(n+1)` -/
def P14856578003653895806.Spec : Prop :=
  ∀ n, P14856578003653895806.a n = (A225230 (n + 1) : ℝ)

end A225230

/-! ## A225230.P17507185789481130175

`A001222(∏{p}[n+1, #])+1-A067132(n+1)`
-/

namespace A225230.P17507185789481130175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 - A067132 (n + 1)

end

end A225230.P17507185789481130175

namespace A225230

/-- `A001222(∏{p}[n+1, #])+1-A067132(n+1)` -/
def P17507185789481130175.Spec : Prop :=
  ∀ n, P17507185789481130175.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P7019096979443024455

`A001222(n+1)-∑{e}[n+1, #-1]-A051903(n+1)`
-/

namespace A225230.P7019096979443024455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) - A051903 (n + 1)

end

end A225230.P7019096979443024455

namespace A225230

/-- `A001222(n+1)-∑{e}[n+1, #-1]-A051903(n+1)` -/
def P7019096979443024455.Spec : Prop :=
  ∀ n, P7019096979443024455.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P6478143165753545644

`A001221(n+1)-A007814(A046523(n+1))`
-/

namespace A225230.P6478143165753545644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A007814 (A046523 (n + 1)).toNat

end

end A225230.P6478143165753545644

namespace A225230

/-- `A001221(n+1)-A007814(A046523(n+1))` -/
def P6478143165753545644.Spec : Prop :=
  ∀ n, P6478143165753545644.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P5722548760100482139

`A001222(A007947(n+1))-A051903(n+1)`
-/

namespace A225230.P5722548760100482139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A051903 (n + 1)

end

end A225230.P5722548760100482139

namespace A225230

/-- `A001222(A007947(n+1))-A051903(n+1)` -/
def P5722548760100482139.Spec : Prop :=
  ∀ n, P5722548760100482139.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P868602784011481985

`A051903(A034444(n+1))-A051903(n+1)`
-/

namespace A225230.P868602784011481985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034444 (n + 1)).toNat - A051903 (n + 1)

end

end A225230.P868602784011481985

namespace A225230

/-- `A051903(A034444(n+1))-A051903(n+1)` -/
def P868602784011481985.Spec : Prop :=
  ∀ n, P868602784011481985.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P3202375684700689259

`A066301(A034444(n+1))-A066301(n+1)`
-/

namespace A225230.P3202375684700689259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A034444 (n + 1)).toNat - A066301 (n + 1)

end

end A225230.P3202375684700689259

namespace A225230

/-- `A066301(A034444(n+1))-A066301(n+1)` -/
def P3202375684700689259.Spec : Prop :=
  ∀ n, P3202375684700689259.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P8285793712147867530

`A001222(A181819(n+1))-A051903(n+1)`
-/

namespace A225230.P8285793712147867530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 1)).toNat - A051903 (n + 1)

end

end A225230.P8285793712147867530

namespace A225230

/-- `A001222(A181819(n+1))-A051903(n+1)` -/
def P8285793712147867530.Spec : Prop :=
  ∀ n, P8285793712147867530.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P13154102037221833969

`A000005(∏{p}[n+1, A000005(#)])-1-A051903(n+1)`
-/

namespace A225230.P13154102037221833969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000005 p).toNat - 1 - A051903 (n + 1)

end

end A225230.P13154102037221833969

namespace A225230

/-- `A000005(∏{p}[n+1, A000005(#)])-1-A051903(n+1)` -/
def P13154102037221833969.Spec : Prop :=
  ∀ n, P13154102037221833969.a n = A225230 (n + 1)

end A225230

/-! ## A225230.P15656080189046662379

`A001222(∏{e}[n+1, A000040(#+1)])-A051903(n+1)`
-/

namespace A225230.P15656080189046662379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p + 1)).toNat - A051903 (n + 1)

end

end A225230.P15656080189046662379

namespace A225230

/-- `A001222(∏{e}[n+1, A000040(#+1)])-A051903(n+1)` -/
def P15656080189046662379.Spec : Prop :=
  ∀ n, P15656080189046662379.a n = A225230 (n + 1)

end A225230

/-!
# A225231: Schur numbers S(3,n).

The programs for A225231, the canonical program `A225231.P11022889418085603325` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225231 has offset 3).

The definition of A225231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225231.P11022889418085603325

`ogf((9-11x+11x^2-4x^3-3x^4+7x^5-3x^6)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A225231

/-- `ogf((9-11x+11x^2-4x^3-3x^4+7x^5-3x^6)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P11022889418085603325.Spec : Prop :=
  ∀ n, P11022889418085603325.a n = A225231 (n + 3)

theorem P11022889418085603325.correct : P11022889418085603325.Spec := by
  intro n
  simp only [A225231, Nat.add_sub_cancel]

end A225231

/-!
# A225232: The number of FO3C2 moves required to restore a packet of n playing cards to its original state (order and orientation).

The programs for A225232, the canonical program `A225232.P13032425765134366567` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225232 has offset 3).

The definition of A225232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225232.P7573499797759883723

`ogf((2+4x-2x^2)/(1-3x^2+3x^4-x^6))`
-/

namespace A225232.P7573499797759883723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -2] [1, 0, -3, 0, 3, 0, -1] n

end

end A225232.P7573499797759883723

namespace A225232

/-- `ogf((2+4x-2x^2)/(1-3x^2+3x^4-x^6))` -/
def P7573499797759883723.Spec : Prop :=
  ∀ n, P7573499797759883723.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P13032425765134366567

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=2, a(1)=4, a(2)=4, a(3)=12, a(4)=6, a(5)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A225232

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13032425765134366567.Spec : Prop :=
  ∀ n, P13032425765134366567.a n = A225232 (n + 3)

theorem P13032425765134366567.correct : P13032425765134366567.Spec := by
  intro n
  simp only [A225232, Nat.add_sub_cancel]

end A225232

/-! ## A225232.P7722018520203031665

`∑[or(1, n)]^(n%2)+1+n`
-/

namespace A225232.P7722018520203031665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2) + 1 + n

end

end A225232.P7722018520203031665

namespace A225232

/-- `∑[or(1, n)]^(n%2)+1+n` -/
def P7722018520203031665.Spec : Prop :=
  ∀ n, (P7722018520203031665.a n : ℤ) = A225232 (n + 3)

end A225232

/-! ## A225232.P7267113614638899600

`∑[Δ[(n²/2)^((n+1)%2)]+1]`
-/

namespace A225232.P7267113614638899600
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) / 2) ^ ((n + 1) % 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225232.P7267113614638899600

namespace A225232

/-- `∑[Δ[(n²/2)^((n+1)%2)]+1]` -/
def P7267113614638899600.Spec : Prop :=
  ∀ n, P7267113614638899600.a n = (A225232 (n + 3) : ℚ)

end A225232

/-! ## A225232.P8616205431175056146

`a(n-2)+2*gcd(n+1, a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A225232.P8616205431175056146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 2 * Nat.gcd (n + 1) (a (n - 1))

end

end A225232.P8616205431175056146

namespace A225232

/-- `a(n-2)+2*gcd(n+1, a(n-1))` -/
def P8616205431175056146.Spec : Prop :=
  ∀ n, (P8616205431175056146.a n : ℤ) = A225232 (n + 3)

end A225232

/-! ## A225232.P14149718160774597026

`floor((n+1)^3/a(n-1)-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A225232.P14149718160774597026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ⌊((n + 1) ^ 3 : ℚ) / (a (n - 1) : ℚ) - (a (n - 2) : ℚ)⌋

end

end A225232.P14149718160774597026

namespace A225232

/-- `floor((n+1)^3/a(n-1)-a(n-2))` -/
def P14149718160774597026.Spec : Prop :=
  ∀ n, P14149718160774597026.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P152608152057052588

`gcd(a(n-2)+n+1, (n+1)²)+n+1` with `a(0)=2, a(1)=4`
-/

namespace A225232.P152608152057052588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.gcd (a (n - 2) + (n + 1)) ((n + 1) ^ 2) + (n + 1)

end

end A225232.P152608152057052588

namespace A225232

/-- `gcd(a(n-2)+n+1, (n+1)²)+n+1` -/
def P152608152057052588.Spec : Prop :=
  ∀ n, (P152608152057052588.a n : ℤ) = A225232 (n + 3)

end A225232

/-! ## A225232.P2505617663929844180

`A176889(n+1)+1+n`
-/

namespace A225232.P2505617663929844180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (n + 1) + 1 + (n : ℤ)

end

end A225232.P2505617663929844180

namespace A225232

/-- `A176889(n+1)+1+n` -/
def P2505617663929844180.Spec : Prop :=
  ∀ n, P2505617663929844180.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P9011893277647119664

`gcd(2, n)*A226725(n+1)`
-/

namespace A225232.P9011893277647119664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A226725 (n + 1)

end

end A225232.P9011893277647119664

namespace A225232

/-- `gcd(2, n)*A226725(n+1)` -/
def P9011893277647119664.Spec : Prop :=
  ∀ n, P9011893277647119664.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P2265396166421147351

`A080513(n)*A133265(n)`
-/

namespace A225232.P2265396166421147351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A133265 n

end

end A225232.P2265396166421147351

namespace A225232

/-- `A080513(n)*A133265(n)` -/
def P2265396166421147351.Spec : Prop :=
  ∀ n, P2265396166421147351.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P190830746118134687

`A226725(n+1)+A027656(n)`
-/

namespace A225232.P190830746118134687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226725 (n + 1) + A027656 n

end

end A225232.P190830746118134687

namespace A225232

/-- `A226725(n+1)+A027656(n)` -/
def P190830746118134687.Spec : Prop :=
  ∀ n, P190830746118134687.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P11892092939336664256

`A008619(n+1)*A133265(n)`
-/

namespace A225232.P11892092939336664256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A133265 n

end

end A225232.P11892092939336664256

namespace A225232

/-- `A008619(n+1)*A133265(n)` -/
def P11892092939336664256.Spec : Prop :=
  ∀ n, P11892092939336664256.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P7263194619473795367

`(A093178(n)+1)*A080513(n)`
-/

namespace A225232.P7263194619473795367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093178 n + 1) * A080513 n

end

end A225232.P7263194619473795367

namespace A225232

/-- `(A093178(n)+1)*A080513(n)` -/
def P7263194619473795367.Spec : Prop :=
  ∀ n, P7263194619473795367.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P1449919257257929254

`(A110654(n)+1)*A133265(n)`
-/

namespace A225232.P1449919257257929254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + 1) * A133265 n

end

end A225232.P1449919257257929254

namespace A225232

/-- `(A110654(n)+1)*A133265(n)` -/
def P1449919257257929254.Spec : Prop :=
  ∀ n, P1449919257257929254.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P18054441831012081309

`A013654(n+1)/A141310(n)`
-/

namespace A225232.P18054441831012081309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013654 (n + 1) : ℚ) / (A141310 n : ℚ)

end

end A225232.P18054441831012081309

namespace A225232

/-- `A013654(n+1)/A141310(n)` -/
def P18054441831012081309.Spec : Prop :=
  ∀ n, P18054441831012081309.a n = (A225232 (n + 3) : ℚ)

end A225232

/-! ## A225232.P3388875541759325844

`2*(A014682(n)+A057979(n)²)`
-/

namespace A225232.P3388875541759325844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014682 n + A057979 n ^ 2)

end

end A225232.P3388875541759325844

namespace A225232

/-- `2*(A014682(n)+A057979(n)²)` -/
def P3388875541759325844.Spec : Prop :=
  ∀ n, P3388875541759325844.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P13526532814357426733

`2*(A110654(n)+A152271(n)²)`
-/

namespace A225232.P13526532814357426733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110654 n + A152271 n ^ 2)

end

end A225232.P13526532814357426733

namespace A225232

/-- `2*(A110654(n)+A152271(n)²)` -/
def P13526532814357426733.Spec : Prop :=
  ∀ n, P13526532814357426733.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P9830053747283106836

`2*A133622(n+1)*A008619(n)`
-/

namespace A225232.P9830053747283106836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133622 (n + 1) * A008619 n

end

end A225232.P9830053747283106836

namespace A225232

/-- `2*A133622(n+1)*A008619(n)` -/
def P9830053747283106836.Spec : Prop :=
  ∀ n, P9830053747283106836.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P3915427737368081930

`2*A152271(n)*A008619(n+1)`
-/

namespace A225232.P3915427737368081930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152271 n * A008619 (n + 1)

end

end A225232.P3915427737368081930

namespace A225232

/-- `2*A152271(n)*A008619(n+1)` -/
def P3915427737368081930.Spec : Prop :=
  ∀ n, P3915427737368081930.a n = A225232 (n + 3)

end A225232

/-! ## A225232.P14077735268887430504

`A062557(A124625(n))*A226725(n+1)`
-/

namespace A225232.P14077735268887430504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A124625 n).toNat * A226725 (n + 1)

end

end A225232.P14077735268887430504

namespace A225232

/-- `A062557(A124625(n))*A226725(n+1)` -/
def P14077735268887430504.Spec : Prop :=
  ∀ n, P14077735268887430504.a n = A225232 (n + 3)

end A225232

/-!
# A225233: Triangle read by rows: T(n, k) = (2*n + 2 - k)*k, for 0 <= k <= n.

The programs for A225233, the canonical program `A225233.P7040715574423696999` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225233 has offset 0).

The definition of A225233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*row(n)+2-col(n))*col(n)` (program `A225233.P7040715574423696999`, by `A225233.P7040715574423696999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225233.P7040715574423696999

`(2*row(n)+2-col(n))*col(n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A225233

/-- `(2*row(n)+2-col(n))*col(n)` -/
def P7040715574423696999.Spec : Prop :=
  ∀ n, P7040715574423696999.a n = A225233 n

theorem P7040715574423696999.correct : P7040715574423696999.Spec := by
  intro n
  simp only [A225233]

end A225233

/-! ## A225233.P4177050020651099511

`(2*(row(n)+1)-col(n))*col(n)`
-/

namespace A225233.P4177050020651099511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)

end

end A225233.P4177050020651099511

namespace A225233

/-- `(2*(row(n)+1)-col(n))*col(n)` -/
def P4177050020651099511.Spec : Prop :=
  ∀ n, P4177050020651099511.a n = A225233 n

theorem P4177050020651099511.correct : P4177050020651099511.Spec := by
  intro n
  simp only [A225233, Nat.add_sub_cancel, A225233.P4177050020651099511.a, A225233.P7040715574423696999.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A225233

/-! ## A225233.P10013940315027534565

`∑[char[∑[n]]]²-(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A225233.P10013940315027534565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2

end

end A225233.P10013940315027534565

namespace A225233

/-- `∑[char[∑[n]]]²-(C(comp[∑[n]]-n, 2)-n)²` -/
def P10013940315027534565.Spec : Prop :=
  ∀ n, P10013940315027534565.a n = A225233 n

end A225233

/-! ## A225233.P14984192478997561452

`comp[comp[∑[n]]+n]-(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A225233.P14984192478997561452
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A225233.P14984192478997561452

namespace A225233

/-- `comp[comp[∑[n]]+n]-(n+1-C(comp[∑[n]]-n, 2))²` -/
def P14984192478997561452.Spec : Prop :=
  ∀ n, P14984192478997561452.a n = A225233 n

end A225233

/-! ## A225233.P497494387813626208

`∑[char[∑[n]]]²-A055461(n+1)`
-/

namespace A225233.P497494387813626208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A055461 (n + 1)

end

end A225233.P497494387813626208

namespace A225233

/-- `∑[char[∑[n]]]²-A055461(n+1)` -/
def P497494387813626208.Spec : Prop :=
  ∀ n, P497494387813626208.a n = A225233 n

end A225233

/-! ## A225233.P10646582448910040474

`comp[comp[∑[n]]+n]-A025581(n)²`
-/

namespace A225233.P10646582448910040474
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A025581 n ^ 2

end

end A225233.P10646582448910040474

namespace A225233

/-- `comp[comp[∑[n]]+n]-A025581(n)²` -/
def P10646582448910040474.Spec : Prop :=
  ∀ n, P10646582448910040474.a n = A225233 n

end A225233

/-! ## A225233.P11468898623971191176

`comp[comp[∑[n]]+n]-A095831(n+1)`
-/

namespace A225233.P11468898623971191176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A095831 (n + 1)

end

end A225233.P11468898623971191176

namespace A225233

/-- `comp[comp[∑[n]]+n]-A095831(n+1)` -/
def P11468898623971191176.Spec : Prop :=
  ∀ n, P11468898623971191176.a n = A225233 n

end A225233

/-! ## A225233.P15868472356125945836

`∑[char[∑[n]]]²-A004736(n+1)²`
-/

namespace A225233.P15868472356125945836
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A004736 (n + 1) ^ 2

end

end A225233.P15868472356125945836

namespace A225233

/-- `∑[char[∑[n]]]²-A004736(n+1)²` -/
def P15868472356125945836.Spec : Prop :=
  ∀ n, P15868472356125945836.a n = A225233 n

end A225233

/-! ## A225233.P10226568734265490967

`comp[comp[∑[n]]+n]-A025660(n+1)²`
-/

namespace A225233.P10226568734265490967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A025660 (n + 1) ^ 2

end

end A225233.P10226568734265490967

namespace A225233

/-- `comp[comp[∑[n]]+n]-A025660(n+1)²` -/
def P10226568734265490967.Spec : Prop :=
  ∀ n, P10226568734265490967.a n = A225233 n

end A225233

/-! ## A225233.P15627267482403514867

`comp[comp[∑[n]]+n]-A025669(n+1)²`
-/

namespace A225233.P15627267482403514867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A025669 (n + 1) ^ 2

end

end A225233.P15627267482403514867

namespace A225233

/-- `comp[comp[∑[n]]+n]-A025669(n+1)²` -/
def P15627267482403514867.Spec : Prop :=
  ∀ n, P15627267482403514867.a n = A225233 n

end A225233

/-!
# A225235: Emirps whose internal digits are also an emirp.

The programs for A225235, there is no canonical definition to state claims against.
-/

/-! ## A225235.P5723014782757090131

`∩[A006567(n+5), A225234(n+5)]`
-/

namespace A225235.P5723014782757090131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225234 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225235.P5723014782757090131

/-! ## A225235.P11939212613526007526

`A276132(n+32)`
-/

namespace A225235.P11939212613526007526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276132 (n + 32)

end

end A225235.P11939212613526007526

/-!
# A225236: Primes a(n) = 1 + p_1 + p_1*p_2 + p_1*p_2*p_3 + ... + p_1*p_2*...*p_n where p_1 < p_2 < ... < p_n are the smallest possible primes, with p_1 = 2.

The programs for A225236, there is no canonical definition to state claims against.
-/

/-! ## A225236.P10545756558365373269

`∑[∏[A227613(n+1)]]+1`
-/

namespace A225236.P10545756558365373269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227613 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225236.P10545756558365373269

/-!
# A225237: Numbers n such that n occurs within its base 2 representation regarded as a fixed necklace.

The programs for A225237, there is no canonical definition to state claims against.
-/

/-! ## A225237.P17414681459485988735

`A007088(lt[A103677(n+1), A336953(3*n+2)])`
-/

namespace A225237.P17414681459485988735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336953 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225237.P17414681459485988735

/-! ## A225237.P6497689703051817196

`A007088(lt[A346711(n), A059802(n+1)])`
-/

namespace A225237.P6497689703051817196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225237.P6497689703051817196

/-! ## A225237.P1963647735119981559

`A007088(A048097(n+1)%A094523(2*n+5))`
-/

namespace A225237.P1963647735119981559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A048097 (n + 1)) (A094523 (2 * n + 5))).toNat

end

end A225237.P1963647735119981559

/-! ## A225237.P15809175184895907301

`A007088(lt[A349795(n), A349772(n+3)])`
-/

namespace A225237.P15809175184895907301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349772 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225237.P15809175184895907301

/-! ## A225237.P3390732938714773108

`A007088(lt[A319192(3*n+4), A005385(n+1)])`
-/

namespace A225237.P3390732938714773108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319192 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225237.P3390732938714773108

/-!
# A225240: The squares on a chessboard that are white, counting from top left corner and down.

The programs for A225240, there is no canonical definition to state claims against.
-/

/-! ## A225240.P1017100758330494631

`lt[0, sin(n*807)]`
-/

namespace A225240.P1017100758330494631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n * 807 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225240.P1017100758330494631

/-! ## A225240.P17957601347074454935

`char[or(4, n)]+Δ[n²]`
-/

namespace A225240.P17957601347074454935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A225240.P17957601347074454935

/-! ## A225240.P9936063121969408832

`sqrt(and(4, n))!+2*n`
-/

namespace A225240.P9936063121969408832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (Nat.land 4 n : ℝ))).toNat + 2 * n

end

end A225240.P9936063121969408832

/-! ## A225240.P4414583787429816824

`Δ[n²]+and(4, n)/4`
-/

namespace A225240.P4414583787429816824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (Nat.land 4 n : ℚ) / 4

end

end A225240.P4414583787429816824

/-! ## A225240.P11427872183899935884

`sqrt(and(4, n))!+n+n`
-/

namespace A225240.P11427872183899935884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (Nat.land 4 n : ℝ))).toNat + n + n

end

end A225240.P11427872183899935884

/-!
# A225241: Numbers n such that the sum of the reciprocals of the even divisors of n is greater than zero and less than one.

The programs for A225241, the canonical program `A225241.P5113222394722278636` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225241 has offset 1).

The definition of A225241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225241.P5113222394722278636

`2*A005100(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225241

/-- `2*A005100(n+1)` -/
def P5113222394722278636.Spec : Prop :=
  ∀ n, P5113222394722278636.a n = A225241 (n + 1)

theorem P5113222394722278636.correct : P5113222394722278636.Spec := by
  intro n
  simp only [A225241, Nat.add_sub_cancel]

end A225241

/-! ## A225241.P13597619733455425606

`record[2*A125746(n+1)]`
-/

namespace A225241.P13597619733455425606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225241.P13597619733455425606

namespace A225241

/-- `record[2*A125746(n+1)]` -/
def P13597619733455425606.Spec : Prop :=
  ∀ n, P13597619733455425606.a n = A225241 (n + 1)

end A225241

/-! ## A225241.P10326476406998784060

`2*record[n-A082551(n+1)]`
-/

namespace A225241.P10326476406998784060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225241.P10326476406998784060

namespace A225241

/-- `2*record[n-A082551(n+1)]` -/
def P10326476406998784060.Spec : Prop :=
  ∀ n, P10326476406998784060.a n = A225241 (n + 1)

end A225241

/-! ## A225241.P6889489733897771687

`2*(eq[0, A294936(n+1)]+1)`
-/

namespace A225241.P6889489733897771687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225241.P6889489733897771687

namespace A225241

/-- `2*(eq[0, A294936(n+1)]+1)` -/
def P6889489733897771687.Spec : Prop :=
  ∀ n, (P6889489733897771687.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P2712110149938817576

`2*(eq[1, A294934(n+1)]+1)`
-/

namespace A225241.P2712110149938817576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225241.P2712110149938817576

namespace A225241

/-- `2*(eq[1, A294934(n+1)]+1)` -/
def P2712110149938817576.Spec : Prop :=
  ∀ n, (P2712110149938817576.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P6440644383579782625

`2*(lt[A336835(n+1), 1]+1)`
-/

namespace A225241.P6440644383579782625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A225241.P6440644383579782625

namespace A225241

/-- `2*(lt[A336835(n+1), 1]+1)` -/
def P6440644383579782625.Spec : Prop :=
  ∀ n, (P6440644383579782625.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P6690468644334478864

`2*(lt[A337690(n+1), 1]+1)`
-/

namespace A225241.P6690468644334478864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A225241.P6690468644334478864

namespace A225241

/-- `2*(lt[A337690(n+1), 1]+1)` -/
def P6690468644334478864.Spec : Prop :=
  ∀ n, (P6690468644334478864.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P9052425899775332005

`2*(comp[A023196(n+1)-1]+1)`
-/

namespace A225241.P9052425899775332005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A225241.P9052425899775332005

namespace A225241

/-- `2*(comp[A023196(n+1)-1]+1)` -/
def P9052425899775332005.Spec : Prop :=
  ∀ n, (P9052425899775332005.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P6033072408280179407

`2*lt[A000203(floor(acot(n)+n)), 2*n]`
-/

namespace A225241.P6033072408280179407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225241.P6033072408280179407

namespace A225241

/-- `2*lt[A000203(floor(acot(n)+n)), 2*n]` -/
def P6033072408280179407.Spec : Prop :=
  ∀ n, (P6033072408280179407.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P4945149727897984872

`2*lt[A000203(n^floor(atan(n))), 2*n]`
-/

namespace A225241.P4945149727897984872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225241.P4945149727897984872

namespace A225241

/-- `2*lt[A000203(n^floor(atan(n))), 2*n]` -/
def P4945149727897984872.Spec : Prop :=
  ∀ n, (P4945149727897984872.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P4953300640233705864

`2*lt[A000203(abs(1-n)+1), 2*n]`
-/

namespace A225241.P4953300640233705864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225241.P4953300640233705864

namespace A225241

/-- `2*lt[A000203(abs(1-n)+1), 2*n]` -/
def P4953300640233705864.Spec : Prop :=
  ∀ n, (P4953300640233705864.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P1430703744277528175

`2*(lt[A000203(n+1), 2*(n+1)]+1)`
-/

namespace A225241.P1430703744277528175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A225241.P1430703744277528175

namespace A225241

/-- `2*(lt[A000203(n+1), 2*(n+1)]+1)` -/
def P1430703744277528175.Spec : Prop :=
  ∀ n, (P1430703744277528175.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P17961757791531065832

`A204823(n+1)+A033884(n+1)`
-/

namespace A225241.P17961757791531065832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) + A033884 (n + 1)

end

end A225241.P17961757791531065832

namespace A225241

/-- `A204823(n+1)+A033884(n+1)` -/
def P17961757791531065832.Spec : Prop :=
  ∀ n, P17961757791531065832.a n = A225241 (n + 1)

end A225241

/-! ## A225241.P7122117457232546433

`2*(A205099(n+1)+A033884(n+1))`
-/

namespace A225241.P7122117457232546433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205099 (n + 1) + A033884 (n + 1))

end

end A225241.P7122117457232546433

namespace A225241

/-- `2*(A205099(n+1)+A033884(n+1))` -/
def P7122117457232546433.Spec : Prop :=
  ∀ n, P7122117457232546433.a n = A225241 (n + 1)

end A225241

/-! ## A225241.P16089232126223025109

`2*(A204823(n+1)-A205099(n+1))`
-/

namespace A225241.P16089232126223025109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A204823 (n + 1) - A205099 (n + 1))

end

end A225241.P16089232126223025109

namespace A225241

/-- `2*(A204823(n+1)-A205099(n+1))` -/
def P16089232126223025109.Spec : Prop :=
  ∀ n, P16089232126223025109.a n = A225241 (n + 1)

theorem P16089232126223025109.correct : P16089232126223025109.Spec := by
  intro n
  simp only [A225241, Nat.add_sub_cancel, A225241.P16089232126223025109.a, A225241.P5113222394722278636.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A204823, A204823.P4919634814112807220.f1, A204823.P4919634814112807220.a, A205099, A205099.P16915794968075742101.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225241

/-! ## A225241.P6886422008262897017

`A033884(n+1)+A000203(A005100(n+1))`
-/

namespace A225241.P6886422008262897017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033884 (n + 1) + A000203 (A005100 (n + 1)).toNat

end

end A225241.P6886422008262897017

namespace A225241

/-- `A033884(n+1)+A000203(A005100(n+1))` -/
def P6886422008262897017.Spec : Prop :=
  ∀ n, P6886422008262897017.a n = A225241 (n + 1)

end A225241

/-! ## A225241.P2685962936988981421

`A005100(n+1)+A204823(n+1)-A205099(n+1)`
-/

namespace A225241.P2685962936988981421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) + (A204823 (n + 1) - A205099 (n + 1))

end

end A225241.P2685962936988981421

namespace A225241

/-- `A005100(n+1)+A204823(n+1)-A205099(n+1)` -/
def P2685962936988981421.Spec : Prop :=
  ∀ n, P2685962936988981421.a n = A225241 (n + 1)

theorem P2685962936988981421.correct : P2685962936988981421.Spec := by
  intro n
  simp only [A225241, Nat.add_sub_cancel, A225241.P2685962936988981421.a, A225241.P5113222394722278636.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A204823, A204823.P4919634814112807220.f1, A204823.P4919634814112807220.a, A205099, A205099.P16915794968075742101.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225241

/-! ## A225241.P5113380620102098224

`A005100(n+1)+A005100(n+2)-A125238(n+1)`
-/

namespace A225241.P5113380620102098224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) + (A005100 (n + 2) - A125238 (n + 1))

end

end A225241.P5113380620102098224

namespace A225241

/-- `A005100(n+1)+A005100(n+2)-A125238(n+1)` -/
def P5113380620102098224.Spec : Prop :=
  ∀ n, P5113380620102098224.a n = A225241 (n + 1)

theorem P5113380620102098224.correct : P5113380620102098224.Spec := by
  intro n
  simp only [A225241, Nat.add_sub_cancel, A225241.P5113380620102098224.a, A225241.P5113222394722278636.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A125238, A125238.P17761678390908912446.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225241

/-! ## A225241.P11964608745713828544

`2*lt[∑{d}[n, #], 2*n]`
-/

namespace A225241.P11964608745713828544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A225241.P11964608745713828544

namespace A225241

/-- `2*lt[∑{d}[n, #], 2*n]` -/
def P11964608745713828544.Spec : Prop :=
  ∀ n, (P11964608745713828544.a n : ℤ) = A225241 (n + 1)

end A225241

/-! ## A225241.P13670066716826412372

`2*(lt[A001065(n+1), n+1]+1)`
-/

namespace A225241.P13670066716826412372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A225241.P13670066716826412372

namespace A225241

/-- `2*(lt[A001065(n+1), n+1]+1)` -/
def P13670066716826412372.Spec : Prop :=
  ∀ n, (P13670066716826412372.a n : ℤ) = A225241 (n + 1)

end A225241

/-!
# A225243: Irregular triangle read by rows, where row n contains the distinct primes that are contained in the binary representation of n as substrings; first row = [1] by convention.

The programs for A225243, there is no canonical definition to state claims against.
-/

/-! ## A225243.P17546484443136887318

`p?[A165416(n+1)+A000007(n)]-A000007(n)`
-/

namespace A225243.P17546484443136887318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A225243.P17546484443136887318

/-! ## A225243.P4525838510894600922

`A006530(A000079(n)*A007947(A023133(n+1)))`
-/

namespace A225243.P4525838510894600922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n * A007947 (A023133 (n + 1)).toNat).toNat

end

end A225243.P4525838510894600922

/-! ## A225243.P5718516508521469695

`A006530(2^n*A023133(n+1))`
-/

namespace A225243.P5718516508521469695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 ^ n : ℤ) * A023133 (n + 1)).toNat

end

end A225243.P5718516508521469695

/-! ## A225243.P16772955185061487891

`A006530(A023133(n+1)*A213173(n))`
-/

namespace A225243.P16772955185061487891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023133 (n + 1) * A213173 n).toNat

end

end A225243.P16772955185061487891

/-! ## A225243.P3929553942662197296

`A006530(A179547(n+1)*A213173(n))`
-/

namespace A225243.P3929553942662197296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179547 (n + 1) * A213173 n).toNat

end

end A225243.P3929553942662197296

/-!
# A225244: Number of partitions of n into squarefree divisors of n.

The programs for A225244, there is no canonical definition to state claims against.
-/

/-! ## A225244.P17774809639783390394

`A193404(A103314(n))`
-/

namespace A225244.P17774809639783390394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A103314 n).toNat

end

end A225244.P17774809639783390394

/-! ## A225244.P13389647180332737388

`A333496(A100346(n))`
-/

namespace A225244.P13389647180332737388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333496 (A100346 n).toNat

end

end A225244.P13389647180332737388

/-! ## A225244.P5197009195289793741

`A108611(6*A092976(n))`
-/

namespace A225244.P5197009195289793741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A092976 n).toNat

end

end A225244.P5197009195289793741

/-! ## A225244.P14840620478246301810

`A249821(4*A324865(n+1)+1)`
-/

namespace A225244.P14840620478246301810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (4 * A324865 (n + 1) + 1).toNat

end

end A225244.P14840620478246301810

/-! ## A225244.P1168668357843200402

`A107846(A045623(n))+A092976(n)`
-/

namespace A225244.P1168668357843200402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A045623 n).toNat + A092976 n

end

end A225244.P1168668357843200402

/-!
# A225245: Number of partitions of n into distinct squarefree divisors of n.

The programs for A225245, there is no canonical definition to state claims against.
-/

/-! ## A225245.P12182279480917960614

`A034968(A378843(n))`
-/

namespace A225245.P12182279480917960614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A378843 n).toNat

end

end A225245.P12182279480917960614

/-! ## A225245.P17604521542004443604

`A354582(and(A341399(n), A378843(n)))`
-/

namespace A225245.P17604521542004443604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (Int.land (A341399 n) (A378843 n)).toNat

end

end A225245.P17604521542004443604

/-! ## A225245.P11108868544511640495

`A354582(and(A048988(n+1), A378843(n)))`
-/

namespace A225245.P11108868544511640495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (Int.land (A048988 (n + 1)) (A378843 n)).toNat

end

end A225245.P11108868544511640495

/-! ## A225245.P11196495586825450547

`A302048(A115120(n))+A010052(A284345(n))`
-/

namespace A225245.P11196495586825450547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A115120 n).toNat + A010052 (A284345 n).toNat

end

end A225245.P11196495586825450547

/-! ## A225245.P14073843759134772958

`A025822(A103299(n)+A087049(n))`
-/

namespace A225245.P14073843759134772958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (A103299 n + A087049 n).toNat

end

end A225245.P14073843759134772958

/-!
# A225247: Number of distinct values of the sum of 2 products of a 0..n-1 and a 0..n integer.

The programs for A225247, there is no canonical definition to state claims against.
-/

/-! ## A225247.P18024939640034147107

`A225246(∑[n+1]+2)`
-/

namespace A225247.P18024939640034147107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225246 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225247.P18024939640034147107

/-! ## A225247.P14009940778102343597

`and(-1, A225246(A133263(n+1)))`
-/

namespace A225247.P14009940778102343597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A225246 (A133263 (n + 1)).toNat)

end

end A225247.P14009940778102343597

/-! ## A225247.P4983057028710507088

`gcd(A151935(n), A225246(A133263(n+1)))`
-/

namespace A225247.P4983057028710507088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 n) (A225246 (A133263 (n + 1)).toNat)

end

end A225247.P4983057028710507088

/-! ## A225247.P4284529011902343654

`A225246(A133263(n+1))+A000007(n+1)`
-/

namespace A225247.P4284529011902343654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225246 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A225247.P4284529011902343654

/-! ## A225247.P7877505143153702632

`A225246(A133263(n+1))%A343531(n+1)`
-/

namespace A225247.P7877505143153702632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225246 (A133263 (n + 1)).toNat) (A343531 (n + 1))

end

end A225247.P7877505143153702632

/-! ## A225247.P3856674220891099907

`A000010(C(2, n)!)*A225246(A133263(n+1))`
-/

namespace A225247.P3856674220891099907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A225246 (A133263 (n + 1)).toNat

end

end A225247.P3856674220891099907

/-! ## A225247.P10274184229167928969

`A225246(A133263(n+1))+A008683(4*(n+1))`
-/

namespace A225247.P10274184229167928969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225246 (A133263 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A225247.P10274184229167928969

/-! ## A225247.P14493580426728552416

`A225246(A133263(n+1))^(A000040(n+1)%2)`
-/

namespace A225247.P14493580426728552416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225246 (A133263 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A225247.P14493580426728552416

/-! ## A225247.P15953259642399111166

`A225246(A133263(n+1))+A000045(C(n, n+2))`
-/

namespace A225247.P15953259642399111166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225246 (A133263 (n + 1)).toNat + A000045 (Nat.choose n (n + 2))

end

end A225247.P15953259642399111166

/-!
# A225248: Number of distinct values of the sum of 3 products of a 0..n-1 and a 0..n integer.

The programs for A225248, there is no canonical definition to state claims against.
-/

/-! ## A225248.P18010594011402239480

`A028896(n)-A225249(n+1)`
-/

namespace A225248.P18010594011402239480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n - A225249 (n + 1)

end

end A225248.P18010594011402239480

/-! ## A225248.P16482884587878777393

`∑[A008588(n)]-A225249(n+1)`
-/

namespace A225248.P16482884587878777393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A225249 (n + 1)

end

end A225248.P16482884587878777393

/-! ## A225248.P690252389532939276

`A003215(n)-(A225249(n+1)+1)`
-/

namespace A225248.P690252389532939276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (A225249 (n + 1) + 1)

end

end A225248.P690252389532939276

/-! ## A225248.P13713602928728166021

`2*A045943(n)-A225249(n+1)`
-/

namespace A225248.P13713602928728166021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045943 n - A225249 (n + 1)

end

end A225248.P13713602928728166021

/-! ## A225248.P334921833973236582

`6*A000217(n)-A225249(n+1)`
-/

namespace A225248.P334921833973236582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000217 n - A225249 (n + 1)

end

end A225248.P334921833973236582

/-! ## A225248.P17647835919749797503

`A008588(∑[n])-A225249(n+1)`
-/

namespace A225248.P17647835919749797503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ j ∈ Finset.range (n + 1), f1 j) - A225249 (n + 1)

end

end A225248.P17647835919749797503

/-! ## A225248.P17413022567580032440

`A008585(A002378(n))-A225249(n+1)`
-/

namespace A225248.P17413022567580032440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A002378 n).toNat - A225249 (n + 1)

end

end A225248.P17413022567580032440

/-! ## A225248.P3933703058935077679

`A225249(n+1)+A005843(A045943(n)-A225249(n+1))`
-/

namespace A225248.P3933703058935077679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225249 (n + 1) + A005843 (A045943 n - A225249 (n + 1)).toNat

end

end A225248.P3933703058935077679

/-! ## A225248.P3926529101723723590

`A005843(A045943(n))-A225249(n+1)`
-/

namespace A225248.P3926529101723723590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045943 n).toNat - A225249 (n + 1)

end

end A225248.P3926529101723723590

/-! ## A225248.P2333524918543361422

`A032766(A046092(n))-A225249(n+1)`
-/

namespace A225248.P2333524918543361422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A046092 n).toNat - A225249 (n + 1)

end

end A225248.P2333524918543361422

/-!
# A225249: a(k) such that A225246 column k of T(n,k) = n*k*(k-1) - a(k) for large n.

The programs for A225249, there is no canonical definition to state claims against.
-/

/-! ## A225249.P5046667793309106970

`∑[6*n]-A225248(n+1)`
-/

namespace A225249.P5046667793309106970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A225248 (n + 1)

end

end A225249.P5046667793309106970

/-! ## A225249.P9647008743684335678

`A003215(n)-(A225248(n+1)+1)`
-/

namespace A225249.P9647008743684335678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (A225248 (n + 1) + 1)

end

end A225249.P9647008743684335678

/-! ## A225249.P17515551374735977009

`∑[A008458(n)]-(A225248(n+1)+1)`
-/

namespace A225249.P17515551374735977009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A225248 (n + 1) + 1)

end

end A225249.P17515551374735977009

/-! ## A225249.P9099897469798496567

`A045943(n)+A045943(n)-A225248(n+1)`
-/

namespace A225249.P9099897469798496567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + (A045943 n - A225248 (n + 1))

end

end A225249.P9099897469798496567

/-! ## A225249.P8396073183541619516

`A023443(A003215(n)-A225248(n+1))`
-/

namespace A225249.P8396073183541619516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003215 n - A225248 (n + 1)).toNat

end

end A225249.P8396073183541619516

/-!
# A225250: Minimum value unattainable as the sum of 2 attained values of i*j with i in 0..n-1 and j in 0..n.

The programs for A225250, there is no canonical definition to state claims against.
-/

/-! ## A225250.P3482471858952447362

`A225251(A242474(n+1))-∑[2*n]`
-/

namespace A225250.P3482471858952447362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225251 (A242474 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225250.P3482471858952447362

/-! ## A225250.P2403986457888660474

`A225251(A242474(n+1))-A000217(n)-A000217(n)`
-/

namespace A225250.P2403986457888660474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225251 (A242474 (n + 1)).toNat - A000217 n - A000217 n

end

end A225250.P2403986457888660474

/-! ## A225250.P3125520178102002440

`A111618(A001000(n+1))+A002378(n)`
-/

namespace A225250.P3125520178102002440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111618 (A001000 (n + 1)).toNat + A002378 n

end

end A225250.P3125520178102002440

/-! ## A225250.P14509938630376502812

`A225251(A070938(n+1))-A002378(n)`
-/

namespace A225250.P14509938630376502812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225251 (A070938 (n + 1)).toNat - A002378 n

end

end A225250.P14509938630376502812

/-!
# A225251: Minimum value unattainable as the sum of 3 attained values of i*j with i in 0..n-1 and j in 0..n.

The programs for A225251, there is no canonical definition to state claims against.
-/

/-! ## A225251.P16674827851292283258

`(A225250(n+1)+A002378(n))*dr(A080315(n))`
-/

namespace A225251.P16674827851292283258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225250 (n + 1) + A002378 n) * (SequenceMachineLib.digitalRoot (A080315 n) : ℤ)

end

end A225251.P16674827851292283258

/-! ## A225251.P7624240361775927054

`A225250(n+1)+A049084(A168291(n))+A002378(n)`
-/

namespace A225251.P7624240361775927054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225250 (n + 1) + (A049084 (A168291 n).toNat + A002378 n)

end

end A225251.P7624240361775927054

/-! ## A225251.P14421907406678490945

`A225250(n+1)+A186746(A071053(n))+A002378(n)`
-/

namespace A225251.P14421907406678490945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225250 (n + 1) + (A186746 (A071053 n).toNat + A002378 n)

end

end A225251.P14421907406678490945

/-! ## A225251.P48122466681281443

`A000007(A008292(n+1))+A225250(n+1)+A002378(n)`
-/

namespace A225251.P48122466681281443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008292 (n + 1)).toNat + (A225250 (n + 1) + A002378 n)

end

end A225251.P48122466681281443

/-! ## A225251.P10816939706754892607

`A225250(A242474(n+1))+A002378(n)`
-/

namespace A225251.P10816939706754892607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225250 (A242474 (n + 1)).toNat + A002378 n

end

end A225251.P10816939706754892607

/-!
# A225253: Number of distinct values of the sum of 2 products of two 0..n integers.

The programs for A225253, there is no canonical definition to state claims against.
-/

/-! ## A225253.P10665996163654122859

`∑[∑[A328615(A111299(2*n+3))]]`
-/

namespace A225253.P10665996163654122859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A111299 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225253.P10665996163654122859

/-! ## A225253.P1125799101598664496

`A005449(n)+A000120(A208223(n))`
-/

namespace A225253.P1125799101598664496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A000120 (A208223 n).toNat

end

end A225253.P1125799101598664496

/-! ## A225253.P18437640054873538015

`A115623(A202705(n))+A005449(n)`
-/

namespace A225253.P18437640054873538015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A202705 n).toNat + A005449 n

end

end A225253.P18437640054873538015

/-! ## A225253.P15326372152053937230

`A335469(A002522(n))+A000124(n)`
-/

namespace A225253.P15326372152053937230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A002522 n).toNat + A000124 n

end

end A225253.P15326372152053937230

/-! ## A225253.P10620920596066973563

`A139351(A230951(n))+A005449(n)`
-/

namespace A225253.P10620920596066973563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A230951 n).toNat + A005449 n

end

end A225253.P10620920596066973563

/-!
# A225254: Number of distinct values of the sum of 3 products of two 0..n integers.

The programs for A225254, there is no canonical definition to state claims against.
-/

/-! ## A225254.P17578445767948081422

`A293404(n)+A205574(A326248(n))`
-/

namespace A225254.P17578445767948081422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n + A205574 (A326248 n).toNat

end

end A225254.P17578445767948081422

/-! ## A225254.P8945064408055508164

`n²+A293401(n)+A122670(A307978(n))`
-/

namespace A225254.P8945064408055508164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A293401 n + A122670 (A307978 n).toNat)

end

end A225254.P8945064408055508164

/-! ## A225254.P3501274757861516526

`A008264(n)-A276794(A084920(3*n+1))`
-/

namespace A225254.P3501274757861516526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008264 n - A276794 (A084920 (3 * n + 1)).toNat

end

end A225254.P3501274757861516526

/-! ## A225254.P561586747748051354

`n²+A118083(A056525(n+1))+A000326(n)`
-/

namespace A225254.P561586747748051354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A118083 (A056525 (n + 1)).toNat + A000326 n)

end

end A225254.P561586747748051354

/-!
# A225255: a(k) such that A225252 column k of T(n,k) = n*k^2 - a(k) for large n.

The programs for A225255, there is no canonical definition to state claims against.
-/

/-! ## A225255.P6897284665786066969

`3*(n+1)²-A225254(n+1)`
-/

namespace A225255.P6897284665786066969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) - A225254 (n + 1)

end

end A225255.P6897284665786066969

/-! ## A225255.P10516051218264544837

`A059270(n+1)-(A225254(n+1)+A059270(n))`
-/

namespace A225255.P10516051218264544837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 (n + 1) - (A225254 (n + 1) + A059270 n)

end

end A225255.P10516051218264544837

/-! ## A225255.P2037456585108784103

`∑[n]-A228720(A002992(n))`
-/

namespace A225255.P2037456585108784103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A228720 (A002992 n).toNat

end

end A225255.P2037456585108784103

/-! ## A225255.P17570012789701799360

`∑[n]-A247397(A006206(n+1))`
-/

namespace A225255.P17570012789701799360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A247397 (A006206 (n + 1)).toNat

end

end A225255.P17570012789701799360

/-! ## A225255.P9795542204455814583

`A000217(n)-A173022(A274168(2*n))`
-/

namespace A225255.P9795542204455814583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A173022 (A274168 (2 * n)).toNat

end

end A225255.P9795542204455814583

/-!
# A225256: Minimum value unattainable as the sum of 2 attained values of a*b with a,b 0..n integers.

The programs for A225256, there is no canonical definition to state claims against.
-/

/-! ## A225256.P5011376809786687054

`A225257(n+1)-record[A123726(n)]`
-/

namespace A225256.P5011376809786687054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225257 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225256.P5011376809786687054

/-!
# A225257: Minimum value unattainable as the sum of 3 attained values of a*b with a,b 0..n integers.

The programs for A225257, there is no canonical definition to state claims against.
-/

/-! ## A225257.P5984485608369052525

`A225256(n+1)+A048266(A048266(n+1))²`
-/

namespace A225257.P5984485608369052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225256 (n + 1) + A048266 (A048266 (n + 1)).toNat ^ 2

end

end A225257.P5984485608369052525

/-! ## A225257.P9565663992961047524

`A225256(n+1)+record[A123726(n)]`
-/

namespace A225257.P9565663992961047524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225256 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225257.P9565663992961047524

/-! ## A225257.P8113637208032397798

`A216732(2*n+3)-p?[A216674(3*n+4)]`
-/

namespace A225257.P8113637208032397798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216674 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216732 (2 * n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225257.P8113637208032397798

/-!
# A225259: Number of distinct values of the sum of 2 products of three 0..n integers.

The programs for A225259, there is no canonical definition to state claims against.
-/

/-! ## A225259.P5046783736351772071

`A225258(∑[n+1]+2)`
-/

namespace A225259.P5046783736351772071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225259.P5046783736351772071

/-! ## A225259.P15955585327626298359

`record[A225258(A133263(abs(1-n)))]`
-/

namespace A225259.P15955585327626298359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225259.P15955585327626298359

/-! ## A225259.P15849388340696891787

`record[A225258(A286158(n+1)+2)]`
-/

namespace A225259.P15849388340696891787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225259.P15849388340696891787

/-! ## A225259.P10114596166806956893

`or(char[3], A225258(A133263(n+1)))`
-/

namespace A225259.P10114596166806956893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225258 (A133263 (n + 1)).toNat)

end

end A225259.P10114596166806956893

/-! ## A225259.P10033359332583792226

`record[A225258(n+3)^A132013(n)]`
-/

namespace A225259.P10033359332583792226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225258 (n + 3) : ℚ) ^ (A132013 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225259.P10033359332583792226

/-! ## A225259.P13190434929734678612

`A225258(C(n+2, 2)+2)%A000032(n+9)`
-/

namespace A225259.P13190434929734678612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225258 (Nat.choose (n + 2) 2 + 2)) (A000032 (n + 9))

end

end A225259.P13190434929734678612

/-! ## A225259.P14040586875250082487

`A033999(n)²*A225258(A133263(n+1))`
-/

namespace A225259.P14040586875250082487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A225258 (A133263 (n + 1)).toNat

end

end A225259.P14040586875250082487

/-! ## A225259.P524651951560394271

`A225258(A133263(n+1))%A000332(n+9)`
-/

namespace A225259.P524651951560394271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225258 (A133263 (n + 1)).toNat) (A000332 (n + 9))

end

end A225259.P524651951560394271

/-! ## A225259.P11454867403696478188

`A225258(A133263(n+1))+A008683(4*(n+1))`
-/

namespace A225259.P11454867403696478188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A133263 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A225259.P11454867403696478188

/-!
# A225260: Number of distinct values of the sum of 3 products of three 0..n integers.

The programs for A225260, there is no canonical definition to state claims against.
-/

/-! ## A225260.P572593332146619169

`A225258(∑[n+2]+4)`
-/

namespace A225260.P572593332146619169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225260.P572593332146619169

/-! ## A225260.P13492024292469593720

`and(-1, A225258(A167614(n+1)))`
-/

namespace A225260.P13492024292469593720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A225258 (A167614 (n + 1)).toNat)

end

end A225260.P13492024292469593720

/-! ## A225260.P9792002745125266625

`A225258(A167614(n+1))%A075093(n+1)`
-/

namespace A225260.P9792002745125266625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225258 (A167614 (n + 1)).toNat) (A075093 (n + 1))

end

end A225260.P9792002745125266625

/-! ## A225260.P1915615418416858530

`A007318(C(2, n))*A225258(A167614(n+1))`
-/

namespace A225260.P1915615418416858530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225258 (A167614 (n + 1)).toNat

end

end A225260.P1915615418416858530

/-! ## A225260.P881758213812434341

`A225258(A167614(n+1))/A007318(C(n, 2))`
-/

namespace A225260.P881758213812434341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225258 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A225260.P881758213812434341

/-! ## A225260.P2184726479089848143

`A000108(C(n, 64))*A225258(A167614(n+1))`
-/

namespace A225260.P2184726479089848143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A225258 (A167614 (n + 1)).toNat

end

end A225260.P2184726479089848143

/-!
# A225261: Number of distinct values of the sum of 4 products of three 0..n integers.

The programs for A225261, there is no canonical definition to state claims against.
-/

/-! ## A225261.P7397841704718911195

`A225258(∑[n+3]+7)`
-/

namespace A225261.P7397841704718911195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A225261.P7397841704718911195

/-! ## A225261.P8022854205219036960

`xor(2, xor(2, A225258(A055999(n)+10)))`
-/

namespace A225261.P8022854205219036960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A225258 (A055999 n + 10).toNat))

end

end A225261.P8022854205219036960

/-! ## A225261.P6327913568712798078

`or(char[3], A225258(A000217(n+3)+4))`
-/

namespace A225261.P6327913568712798078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225258 (A000217 (n + 3) + 4).toNat)

end

end A225261.P6327913568712798078

/-! ## A225261.P2207053439842301129

`A225258(A055999(n)+10)%A201487(n+1)`
-/

namespace A225261.P2207053439842301129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225258 (A055999 n + 10).toNat) (A201487 (n + 1))

end

end A225261.P2207053439842301129

/-! ## A225261.P7279951522384972325

`A225258(A000217(n+3)+4)/A033999(n)²`
-/

namespace A225261.P7279951522384972325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225258 (A000217 (n + 3) + 4).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A225261.P7279951522384972325

/-! ## A225261.P1813503748420741360

`A225258(A000217(n+3)+4)+A000007(n+1)`
-/

namespace A225261.P1813503748420741360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A000217 (n + 3) + 4).toNat + A000007 (n + 1)

end

end A225261.P1813503748420741360

/-! ## A225261.P11439862206838980067

`A225258(A000217(n+3)+4)+A000038(n+1)`
-/

namespace A225261.P11439862206838980067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A000217 (n + 3) + 4).toNat + A000038 (n + 1)

end

end A225261.P11439862206838980067

/-! ## A225261.P16542207503553813767

`A225258(A000217(n+3)+4)+A000035(2*n)`
-/

namespace A225261.P16542207503553813767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A000217 (n + 3) + 4).toNat + A000035 (2 * n)

end

end A225261.P16542207503553813767

/-! ## A225261.P3058185442475951358

`A225258(A000217(n+3)+4)%A000032(n+9)`
-/

namespace A225261.P3058185442475951358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225258 (A000217 (n + 3) + 4).toNat) (A000032 (n + 9))

end

end A225261.P3058185442475951358

/-! ## A225261.P1316565641375134490

`A225258(A055999(n)+10)+val(A000040(n+2), 6)`
-/

namespace A225261.P1316565641375134490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (A055999 n + 10).toNat + (SequenceMachineLib.valuation (A000040 (n + 2)).toNat 6 : ℤ)

end

end A225261.P1316565641375134490

/-!
# A225262: Number of distinct values of the sum of 5 products of three 0..n integers.

The programs for A225262, there is no canonical definition to state claims against.
-/

/-! ## A225262.P12489040478541008647

`A225258(∑[n+3]+7)+(n+1)^3`
-/

namespace A225262.P12489040478541008647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + ((n + 1) ^ 3 : ℤ)

end

end A225262.P12489040478541008647

/-! ## A225262.P6238052004255263633

`A000578(n+1)+A225258(A000217(n+3)+4)+A000038(n+1)`
-/

namespace A225262.P6238052004255263633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A225258 (A000217 (n + 3) + 4).toNat + A000038 (n + 1))

end

end A225262.P6238052004255263633

/-! ## A225262.P10918306112170240651

`A000578(n+1)+A225258(A000217(n+3)+4)+A000035(2*n)`
-/

namespace A225262.P10918306112170240651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A225258 (A000217 (n + 3) + 4).toNat + A000035 (2 * n))

end

end A225262.P10918306112170240651

/-! ## A225262.P10320478661518222129

`A225258(∑[n+4]+11)`
-/

namespace A225262.P10320478661518222129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A225262.P10320478661518222129

/-!
# A225265: Minimum value unattainable as the sum of 3 attained values of a*b*c with a,b,c 0..n integers.

The programs for A225265, there is no canonical definition to state claims against.
-/

/-! ## A225265.P8493606450653438119

`A258266(A094470(n+3))+A001158(n+1)`
-/

namespace A225265.P8493606450653438119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A094470 (n + 3)).toNat + A001158 (n + 1)

end

end A225265.P8493606450653438119

/-!
# A225268: Number of distinct values of the sum of a*b+a*c+b*c over 1 sets of three a,b,c 0..n integers.

The programs for A225268, there is no canonical definition to state claims against.
-/

/-! ## A225268.P14758946143852197498

`∑[A396667(n+1)]+1`
-/

namespace A225268.P14758946143852197498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225268.P14758946143852197498

/-! ## A225268.P4893499685761467634

`A225267(∑[n]+1)`
-/

namespace A225268.P4893499685761467634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225268.P4893499685761467634

/-! ## A225268.P11717423747849177737

`record[A225267(∑[A057979(n)])]`
-/

namespace A225268.P11717423747849177737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P11717423747849177737

/-! ## A225268.P4007686202518768770

`record[A225267(A056534(n+1))]`
-/

namespace A225268.P4007686202518768770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P4007686202518768770

/-! ## A225268.P14177034143913682195

`record[A225267(A055802(n+2))]`
-/

namespace A225268.P14177034143913682195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (A055802 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P14177034143913682195

/-! ## A225268.P11976295814890033390

`or(char[3], A225267(A000124(n)))`
-/

namespace A225268.P11976295814890033390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225267 (A000124 n).toNat)

end

end A225268.P11976295814890033390

/-! ## A225268.P10418665124425513246

`record[A010054(n)*A225267(n+1)]`
-/

namespace A225268.P10418665124425513246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A225267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P10418665124425513246

/-! ## A225268.P10619419372802019323

`record[A225267(n+1)/A007318(n)]`
-/

namespace A225268.P10619419372802019323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225267 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P10619419372802019323

/-! ## A225268.P10484371610227189218

`record[gcd(A002262(n), A225267(n+1))]`
-/

namespace A225268.P10484371610227189218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A225267 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225268.P10484371610227189218

/-! ## A225268.P12210179253696048226

`A000027(A225267(C(n+2, 2)-n))`
-/

namespace A225268.P12210179253696048226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A225267 (Nat.choose (n + 2) 2 - n)).toNat

end

end A225268.P12210179253696048226

/-!
# A225269: Number of distinct values of the sum of a*b+a*c+b*c over 2 sets of three a,b,c 0..n integers.

The programs for A225269, there is no canonical definition to state claims against.
-/

/-! ## A225269.P832754068818890161

`A033581(n+1)-A225270(n+1)`
-/

namespace A225269.P832754068818890161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) - A225270 (n + 1)

end

end A225269.P832754068818890161

/-! ## A225269.P10089608105979376328

`A008458((n+1)²)-A225270(n+1)`
-/

namespace A225269.P10089608105979376328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n + 1) ^ 2) - A225270 (n + 1)

end

end A225269.P10089608105979376328

/-! ## A225269.P13611457246994829478

`A225267(∑[n+1]+2)`
-/

namespace A225269.P13611457246994829478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225269.P13611457246994829478

/-! ## A225269.P14542894062039368700

`or(char[4], A225267(A133263(n+1)))`
-/

namespace A225269.P14542894062039368700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225267 (A133263 (n + 1)).toNat)

end

end A225269.P14542894062039368700

/-! ## A225269.P17500978256276303082

`A007318(C(2, n))*A225267(A133263(n+1))`
-/

namespace A225269.P17500978256276303082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225267 (A133263 (n + 1)).toNat

end

end A225269.P17500978256276303082

/-! ## A225269.P232426499239157585

`A225267(A133263(n+1))/A007318(C(3, n))`
-/

namespace A225269.P232426499239157585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225267 (A133263 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A225269.P232426499239157585

/-! ## A225269.P1627797593819730617

`A225267(A133263(n+1))+A008683(8*n+4)`
-/

namespace A225269.P1627797593819730617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (A133263 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A225269.P1627797593819730617

/-! ## A225269.P12850648509401081805

`A006530(gcd(n, n+1))*A225267(A133263(n+1))`
-/

namespace A225269.P12850648509401081805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A225267 (A133263 (n + 1)).toNat

end

end A225269.P12850648509401081805

/-! ## A225269.P18140444675556365423

`A225267(A133263(n+1))/A008683(-or(n, -2))²`
-/

namespace A225269.P18140444675556365423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225267 (A133263 (n + 1)).toNat : ℚ) / (A008683 (-Int.lor (n : ℤ) (-2)).toNat ^ 2 : ℚ)

end

end A225269.P18140444675556365423

/-! ## A225269.P15548302172879401176

`A007318(A014963(2*(n+1)))*A225267(A133263(n+1))`
-/

namespace A225269.P15548302172879401176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A225267 (A133263 (n + 1)).toNat

end

end A225269.P15548302172879401176

/-!
# A225270: a(k) such that A225267 column k of T(n,k) = 3*n*k^2 - a(k) for large n.

The programs for A225270, there is no canonical definition to state claims against.
-/

/-! ## A225270.P10652332996694629565

`A033581(n+1)-A225269(n+1)`
-/

namespace A225270.P10652332996694629565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) - A225269 (n + 1)

end

end A225270.P10652332996694629565

/-! ## A225270.P12212644993309270777

`record[A033581(A057979(n))]%A225269(n+1)`
-/

namespace A225270.P12212644993309270777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A225269 (n + 1))

end

end A225270.P12212644993309270777

/-! ## A225270.P12096786683158209581

`A033581(A000027(n+1))%A225269(n+1)`
-/

namespace A225270.P12096786683158209581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033581 (A000027 (n + 1)).toNat) (A225269 (n + 1))

end

end A225270.P12096786683158209581

/-! ## A225270.P15685789605793988477

`A033581(A057427(n)+n)%A225269(n+1)`
-/

namespace A225270.P15685789605793988477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033581 (A057427 n + (n : ℤ)).toNat) (A225269 (n + 1))

end

end A225270.P15685789605793988477

/-! ## A225270.P7440543396920113252

`A008458((n+1)²)-A225269(n+1)`
-/

namespace A225270.P7440543396920113252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n + 1) ^ 2) - A225269 (n + 1)

end

end A225270.P7440543396920113252

/-!
# A225272: Minimum value unattainable as the sum of 2 attained values of a*b+a*c+b*c with a,b,c 0..n integers.

The programs for A225272, there is no canonical definition to state claims against.
-/

/-! ## A225272.P10576760112922607516

`A028552(2*n+1)+(A111151(3*(n+1))+n)%2`
-/

namespace A225272.P10576760112922607516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (2 * n + 1) + Int.tmod (A111151 (3 * (n + 1)) + (n : ℤ)) 2

end

end A225272.P10576760112922607516

/-! ## A225272.P1094613020666336051

`A002378(2*(n+1))-A000002(A005032(n))`
-/

namespace A225272.P1094613020666336051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * (n + 1)) - A000002 (A005032 n).toNat

end

end A225272.P1094613020666336051

/-! ## A225272.P6527969994290578120

`A045896(2*n+1)-A038548(A027608(n))`
-/

namespace A225272.P6527969994290578120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045896 (2 * n + 1) - A038548 (A027608 n).toNat

end

end A225272.P6527969994290578120

/-!
# A225273: T(n,k)=Number of distinct values of the sum of i^2 over n realizations of i in 0..k.

The programs for A225273, there is no canonical definition to state claims against.
-/

/-! ## A225273.P9368728403018665953

`A047999(A281326(n+1))+A014430(n)`
-/

namespace A225273.P9368728403018665953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A281326 (n + 1)).toNat + A014430 n

end

end A225273.P9368728403018665953

/-! ## A225273.P16082525059000000667

`A014410(n+2)-A102681(A002817(n))`
-/

namespace A225273.P16082525059000000667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A102681 (A002817 n).toNat

end

end A225273.P16082525059000000667

/-! ## A225273.P5872522874775010577

`A014410(n+2)-A102683(A006484(n))`
-/

namespace A225273.P5872522874775010577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A102683 (A006484 n).toNat

end

end A225273.P5872522874775010577

/-! ## A225273.P2275367062580165895

`A030308(A014734(n+1))+A014430(n)`
-/

namespace A225273.P2275367062580165895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A014734 (n + 1)).toNat + A014430 n

end

end A225273.P2275367062580165895

/-!
# A225274: Number of distinct values of the sum of i^2 over 7 realizations of i in 0..n.

The programs for A225274, there is no canonical definition to state claims against.
-/

/-! ## A225274.P2319703008794792023

`A225273(A166136(n+5)+1)`
-/

namespace A225274.P2319703008794792023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A166136 (n + 5) + 1).toNat

end

end A225274.P2319703008794792023

/-! ## A225274.P5945025960917777824

`A225273(A167499(n+5)+2)`
-/

namespace A225274.P5945025960917777824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A167499 (n + 5) + 2).toNat

end

end A225274.P5945025960917777824

/-! ## A225274.P11770067284880737032

`A225273(A167614(n+5)+4)`
-/

namespace A225274.P11770067284880737032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A167614 (n + 5) + 4).toNat

end

end A225274.P11770067284880737032

/-! ## A225274.P1590432361597867689

`A225273(A133263(n+6)+5)`
-/

namespace A225274.P1590432361597867689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A133263 (n + 6) + 5).toNat

end

end A225274.P1590432361597867689

/-! ## A225274.P6823127956171639389

`A225273(A000124(n+6)+6)`
-/

namespace A225274.P6823127956171639389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A000124 (n + 6) + 6).toNat

end

end A225274.P6823127956171639389

/-!
# A225275: Number of distinct values of the sum of i^2 over 8 realizations of i in 0..n.

The programs for A225275, there is no canonical definition to state claims against.
-/

/-! ## A225275.P1299486225853500139

`A225273(eq[13, A066657(n)])`
-/

namespace A225275.P1299486225853500139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225275.P1299486225853500139

/-! ## A225275.P18184099180640993539

`A225273(A000124(n+7)+7)`
-/

namespace A225275.P18184099180640993539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A000124 (n + 7) + 7).toNat

end

end A225275.P18184099180640993539

/-! ## A225275.P11572064089835230123

`A225273(A055999(n+4)+14)`
-/

namespace A225275.P11572064089835230123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A055999 (n + 4) + 14).toNat

end

end A225275.P11572064089835230123

/-! ## A225275.P8255018076553585248

`A225273(eq[9, A131818(n+1)])`
-/

namespace A225275.P8255018076553585248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225275.P8255018076553585248

/-! ## A225275.P12885944989187090229

`A225273(A133263(n+8)-(n+2))`
-/

namespace A225275.P12885944989187090229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A225275.P12885944989187090229

/-!
# A225276: Number of distinct values of the sum of i^2 over 9 realizations of i in 0..n.

The programs for A225276, there is no canonical definition to state claims against.
-/

/-! ## A225276.P11479454589792266631

`A225273(A133263(n+8)+7)`
-/

namespace A225276.P11479454589792266631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A133263 (n + 8) + 7).toNat

end

end A225276.P11479454589792266631

/-! ## A225276.P1234047439105700169

`A225273(A000124(n+8)+8)`
-/

namespace A225276.P1234047439105700169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A000124 (n + 8) + 8).toNat

end

end A225276.P1234047439105700169

/-! ## A225276.P5850862454791083586

`A225273(A027379(n+6)+12)`
-/

namespace A225276.P5850862454791083586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (A027379 (n + 6) + 12).toNat

end

end A225276.P5850862454791083586

/-! ## A225276.P11028142921976119163

`A225273(eq[10, A131818(n+1)])`
-/

namespace A225276.P11028142921976119163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225276.P11028142921976119163

/-! ## A225276.P8670463063518632895

`A225275(A187829(n+1))+(n+1)²`
-/

namespace A225276.P8670463063518632895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225275 (A187829 (n + 1)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A225276.P8670463063518632895

/-!
# A225278: Minimum value unattainable as the sum of 5 attained values of i^2 with i in 0..n.

The programs for A225278, there is no canonical definition to state claims against.
-/

/-! ## A225278.P15063741368350509177

`A225279(n+1)-A166905(A034856(n+1))`
-/

namespace A225278.P15063741368350509177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225279 (n + 1) - A166905 (A034856 (n + 1)).toNat

end

end A225278.P15063741368350509177

/-! ## A225278.P13002442414298352022

`A225280(n+1)-A166905(A034856(n+1))-(n+1)²`
-/

namespace A225278.P13002442414298352022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225280 (n + 1) - A166905 (A034856 (n + 1)).toNat - ((n + 1) ^ 2 : ℤ)

end

end A225278.P13002442414298352022

/-! ## A225278.P14339474589048133034

`A302796(A330748(n)+A000070(n+1))`
-/

namespace A225278.P14339474589048133034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (A330748 n + A000070 (n + 1)).toNat

end

end A225278.P14339474589048133034

/-!
# A225279: Minimum value unattainable as the sum of 6 attained values of i^2 with i in 0..n.

The programs for A225279, there is no canonical definition to state claims against.
-/

/-! ## A225279.P15354221328078587522

`A225278(n+1)+A166905(A034856(n+1))`
-/

namespace A225279.P15354221328078587522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225278 (n + 1) + A166905 (A034856 (n + 1)).toNat

end

end A225279.P15354221328078587522

/-! ## A225279.P12152433470393360419

`A225280(n+1)-A166905(A034856(n+1))`
-/

namespace A225279.P12152433470393360419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225280 (n + 1) - A166905 (A034856 (n + 1)).toNat

end

end A225279.P12152433470393360419

/-!
# A225280: Minimum value unattainable as the sum of 7 attained values of i^2 with i in 0..n.

The programs for A225280, there is no canonical definition to state claims against.
-/

/-! ## A225280.P1996301092502102112

`A225279(n+1)+A166905(A034856(n+1))`
-/

namespace A225280.P1996301092502102112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225279 (n + 1) + A166905 (A034856 (n + 1)).toNat

end

end A225280.P1996301092502102112

/-! ## A225280.P9696888179739263953

`A225278(n+1)+2*A166905(A034856(n+1))`
-/

namespace A225280.P9696888179739263953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225278 (n + 1) + 2 * A166905 (A034856 (n + 1)).toNat

end

end A225280.P9696888179739263953

/-!
# A225281: T(n,k) = Number of distinct values of the sum of i*(i-1) over n realizations of i in 0..k.

The programs for A225281, there is no canonical definition to state claims against.
-/

/-! ## A225281.P7934017773372294109

`A134394(n+1)-A060953(A010026(n+2))`
-/

namespace A225281.P7934017773372294109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - A060953 (A010026 (n + 2)).toNat

end

end A225281.P7934017773372294109

/-! ## A225281.P15277281822254723073

`A331855(A099627(n))-A060953(A010026(n+2))`
-/

namespace A225281.P15277281822254723073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A099627 n).toNat - A060953 (A010026 (n + 2)).toNat

end

end A225281.P15277281822254723073

/-! ## A225281.P12666179757612770717

`A331855(A023758(n+1)+1)-A060953(A010026(n+2))`
-/

namespace A225281.P12666179757612770717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A023758 (n + 1) + 1).toNat - A060953 (A010026 (n + 2)).toNat

end

end A225281.P12666179757612770717

/-! ## A225281.P1591897019029923177

`A062707(n)+A004736(n+1)-A060953(A010026(n+2))`
-/

namespace A225281.P1591897019029923177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A004736 (n + 1) - A060953 (A010026 (n + 2)).toNat

end

end A225281.P1591897019029923177

/-! ## A225281.P14906984194187546741

`A260999(A135278(n)²)`
-/

namespace A225281.P14906984194187546741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A135278 n ^ 2).toNat

end

end A225281.P14906984194187546741

/-!
# A225282: Number of distinct values of the sum of i*(i-1) over 2 realizations of i in 0..n.

The programs for A225282, there is no canonical definition to state claims against.
-/

/-! ## A225282.P17854355525904069544

`∑[A108279(2*(n+1))-A108279(2*n+1)]`
-/

namespace A225282.P17854355525904069544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108279 (2 * (n + 1)) - A108279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225282.P17854355525904069544

/-! ## A225282.P9428759107955828176

`A225281(∑[n+1]+2)`
-/

namespace A225282.P9428759107955828176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225282.P9428759107955828176

/-! ## A225282.P7615090319272869934

`or(char[1], A225281(A133263(n+1)))`
-/

namespace A225282.P7615090319272869934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225281 (A133263 (n + 1)).toNat)

end

end A225282.P7615090319272869934

/-! ## A225282.P1692652241770935533

`lcm(A033999(n), A225281(A133263(n+1)))`
-/

namespace A225282.P1692652241770935533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A225281 (A133263 (n + 1)).toNat)

end

end A225282.P1692652241770935533

/-! ## A225282.P12537972091743593257

`A225281(A133263(n+1))%A000041(n+3)`
-/

namespace A225282.P12537972091743593257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225281 (A133263 (n + 1)).toNat) (A000041 (n + 3))

end

end A225282.P12537972091743593257

/-! ## A225282.P13611066693585544064

`A007318(C(2, n))*A225281(A133263(n+1))`
-/

namespace A225282.P13611066693585544064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225281 (A133263 (n + 1)).toNat

end

end A225282.P13611066693585544064

/-! ## A225282.P3995760547269928318

`A225281(A133263(n+1))+A000045(n)%-1`
-/

namespace A225282.P3995760547269928318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A133263 (n + 1)).toNat + Int.tmod (A000045 n) (-1)

end

end A225282.P3995760547269928318

/-! ## A225282.P17591637978184883644

`A225281(A133263(n+1))+char[A000045(n+10)]`
-/

namespace A225282.P17591637978184883644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225282.P17591637978184883644

/-!
# A225283: Number of distinct values of the sum of i*(i-1) over 3 realizations of i in 0..n.

The programs for A225283, there is no canonical definition to state claims against.
-/

/-! ## A225283.P16929086851708595211

`A225281(∑[n+2]+4)`
-/

namespace A225283.P16929086851708595211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225283.P16929086851708595211

/-! ## A225283.P2088812074997699289

`or(char[2], A225281(A167614(n+1)))`
-/

namespace A225283.P2088812074997699289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225281 (A167614 (n + 1)).toNat)

end

end A225283.P2088812074997699289

/-! ## A225283.P3338317767164601253

`lcm(log2(1/2), A225281(A167499(n)+n))`
-/

namespace A225283.P3338317767164601253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A225281 (A167499 n + (n : ℤ)).toNat)

end

end A225283.P3338317767164601253

/-! ## A225283.P6137067181985041413

`A225281(A167614(n+1))*A262681(n)`
-/

namespace A225283.P6137067181985041413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A167614 (n + 1)).toNat * A262681 n

end

end A225283.P6137067181985041413

/-! ## A225283.P15966885112660545609

`lcm(A158388(n), A225281(A167614(n+1)))`
-/

namespace A225283.P15966885112660545609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A225281 (A167614 (n + 1)).toNat)

end

end A225283.P15966885112660545609

/-!
# A225284: Number of distinct values of the sum of i*(i-1) over 4 realizations of i in 0..n.

The programs for A225284, there is no canonical definition to state claims against.
-/

/-! ## A225284.P16144204426290691143

`A225281(∑[n+3]+7)`
-/

namespace A225284.P16144204426290691143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A225284.P16144204426290691143

/-! ## A225284.P5118546435798231279

`or(char[1], A225281(A052905(n)+9))`
-/

namespace A225284.P5118546435798231279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225281 (A052905 n + 9).toNat)

end

end A225284.P5118546435798231279

/-! ## A225284.P13525194401638730273

`A225281(A052905(n)+9)%A225253(n+1)`
-/

namespace A225284.P13525194401638730273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225281 (A052905 n + 9).toNat) (A225253 (n + 1))

end

end A225284.P13525194401638730273

/-! ## A225284.P3790800533511490101

`A007318(C(2, n))*A225281(A052905(n)+9)`
-/

namespace A225284.P3790800533511490101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A225281 (A052905 n + 9).toNat

end

end A225284.P3790800533511490101

/-!
# A225285: Number of distinct values of the sum of i*(i-1) over 5 realizations of i in 0..n.

The programs for A225285, there is no canonical definition to state claims against.
-/

/-! ## A225285.P9592388520711511962

`record[A225281(∑[n+1]+5)]`
-/

namespace A225285.P9592388520711511962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225285.P9592388520711511962

/-! ## A225285.P1290346758316215777

`A225281(A167499(n+3))`
-/

namespace A225285.P1290346758316215777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A167499 (n + 3)).toNat

end

end A225285.P1290346758316215777

/-! ## A225285.P5992655868655364713

`A225281(A155212(n)+13)`
-/

namespace A225285.P5992655868655364713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A155212 n + 13).toNat

end

end A225285.P5992655868655364713

/-! ## A225285.P9643892271621692643

`A225281(A056000(n)+15)`
-/

namespace A225285.P9643892271621692643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A056000 n + 15).toNat

end

end A225285.P9643892271621692643

/-! ## A225285.P16547516725531640966

`A225281(A167614(n+3)+2)`
-/

namespace A225285.P16547516725531640966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A167614 (n + 3) + 2).toNat

end

end A225285.P16547516725531640966

/-!
# A225286: Number of distinct values of the sum of i*(i-1) over 6 realizations of i in 0..n.

The programs for A225286, there is no canonical definition to state claims against.
-/

/-! ## A225286.P1543465585325252925

`A225281(∑[n+5]+16)`
-/

namespace A225286.P1543465585325252925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A225286.P1543465585325252925

/-! ## A225286.P354139826464229097

`A225281(A167614(n+4)+3)%A001567(n+1)`
-/

namespace A225286.P354139826464229097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225281 (A167614 (n + 4) + 3).toNat) (A001567 (n + 1))

end

end A225286.P354139826464229097

/-! ## A225286.P4609784318689063521

`A225281(eq[7, A131818(n+1)])%A188691(n+1)`
-/

namespace A225286.P4609784318689063521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188691 (n + 1))

end

end A225286.P4609784318689063521

/-! ## A225286.P1205923164746617003

`record[A225287(A185977(n+1))]-∑[n]`
-/

namespace A225286.P1205923164746617003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225287 (A185977 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A225286.P1205923164746617003

/-! ## A225286.P14528269233086435866

`A225287(n+1)-A118759(A000217(n))`
-/

namespace A225286.P14528269233086435866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225287 (n + 1) - A118759 (A000217 n).toNat

end

end A225286.P14528269233086435866

/-!
# A225287: Number of distinct values of the sum of i*(i-1) over 7 realizations of i in 0..n.

The programs for A225287, there is no canonical definition to state claims against.
-/

/-! ## A225287.P5357917784760645882

`A225281(A056119(n)+28)`
-/

namespace A225287.P5357917784760645882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A056119 n + 28).toNat

end

end A225287.P5357917784760645882

/-! ## A225287.P5190915492475134856

`A225281(A167499(n+5)+2)`
-/

namespace A225287.P5190915492475134856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A167499 (n + 5) + 2).toNat

end

end A225287.P5190915492475134856

/-! ## A225287.P1117498144327273532

`A225281(A167614(n+5)+4)`
-/

namespace A225287.P1117498144327273532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A167614 (n + 5) + 4).toNat

end

end A225287.P1117498144327273532

/-! ## A225287.P3169169077663557898

`A225281(A000124(n+6)+6)`
-/

namespace A225287.P3169169077663557898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A000124 (n + 6) + 6).toNat

end

end A225287.P3169169077663557898

/-! ## A225287.P1278228023986056909

`A225281(A000096(n+5)+8)`
-/

namespace A225287.P1278228023986056909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225281 (A000096 (n + 5) + 8).toNat

end

end A225287.P1278228023986056909

/-!
# A225290: Minimum even value unattainable as the sum of 4 attained values of i*(i-1) with i in 0..n.

The programs for A225290, there is no canonical definition to state claims against.
-/

/-! ## A225290.P17808483617507398333

`A225291(n+1)-A029931(A020988(n))`
-/

namespace A225290.P17808483617507398333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225291 (n + 1) - A029931 (A020988 n).toNat

end

end A225290.P17808483617507398333

/-!
# A225291: Minimum even value unattainable as the sum of 5 attained values of i*(i-1) with i in 0..n.

The programs for A225291, there is no canonical definition to state claims against.
-/

/-! ## A225291.P13455002815230884131

`A225290(n+1)+A029931(A020988(n))`
-/

namespace A225291.P13455002815230884131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225290 (n + 1) + A029931 (A020988 n).toNat

end

end A225291.P13455002815230884131

/-! ## A225291.P18429706244124122183

`A225292(n+1)-A029931(A020988(n))`
-/

namespace A225291.P18429706244124122183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225292 (n + 1) - A029931 (A020988 n).toNat

end

end A225291.P18429706244124122183

/-!
# A225292: Minimum even value unattainable as the sum of 6 attained values of i*(i-1) with i in 0..n.

The programs for A225292, there is no canonical definition to state claims against.
-/

/-! ## A225292.P3654935721462559931

`A225291(n+1)+A029931(A020988(n))`
-/

namespace A225292.P3654935721462559931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225291 (n + 1) + A029931 (A020988 n).toNat

end

end A225292.P3654935721462559931

/-! ## A225292.P14527631201029447465

`∑[2*n]+A225290(n+1)+A029931(A020988(n))`
-/

namespace A225292.P14527631201029447465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A225290 (n + 1) + A029931 (A020988 n).toNat)

end

end A225292.P14527631201029447465

/-!
# A225293: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^n / Product_{k=1..n} (1 - k*x).

The programs for A225293, there is no canonical definition to state claims against.
-/

/-! ## A225293.P14541143879549978241

`A185284(5*n+4)+A086521(n+2)`
-/

namespace A225293.P14541143879549978241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (5 * n + 4) + A086521 (n + 2)

end

end A225293.P14541143879549978241

/-! ## A225293.P10096796593128031690

`A195177(A164216(n)+A110122(n))`
-/

namespace A225293.P10096796593128031690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A164216 n + A110122 n).toNat

end

end A225293.P10096796593128031690

/-! ## A225293.P16922729668268823221

`A154958(or(A151222(n), A155888(n)))`
-/

namespace A225293.P16922729668268823221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (Int.lor (A151222 n) (A155888 n)).toNat

end

end A225293.P16922729668268823221

/-!
# A225294: G.f. satisfies: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - k*x*A(x)).

The programs for A225294, there is no canonical definition to state claims against.
-/

/-! ## A225294.P9824339990856081164

`A131055(floor(sqrt(A323323(n))))`
-/

namespace A225294.P9824339990856081164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (Int.sqrt (A323323 n)).toNat

end

end A225294.P9824339990856081164

/-! ## A225294.P5840663466782454923

`A131055(round(sqrt(A323323(n))))`
-/

namespace A225294.P5840663466782454923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (SequenceMachineLib.roundAway (Real.sqrt (A323323 n : ℝ))).toNat

end

end A225294.P5840663466782454923

/-! ## A225294.P8174863742505060697

`A279571(n)+A185036(A006355(n))`
-/

namespace A225294.P8174863742505060697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279571 n + A185036 (A006355 n).toNat

end

end A225294.P8174863742505060697

/-! ## A225294.P11167266273531509647

`A279571(n)+A000120(A291116(n))`
-/

namespace A225294.P11167266273531509647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279571 n + A000120 (A291116 n).toNat

end

end A225294.P11167266273531509647

/-!
# A225297: Numbers divisible by their last digit cubed.

The programs for A225297, there is no canonical definition to state claims against.
-/

/-! ## A225297.P15046226723741102260

`∪[A225722(n+1), A017281(n)]`
-/

namespace A225297.P15046226723741102260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225297.P15046226723741102260

/-! ## A225297.P18211219539281929954

`∪[A225722(n+1), Δ[A051624(n)]]`
-/

namespace A225297.P18211219539281929954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225722 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225297.P18211219539281929954

/-! ## A225297.P12641234752954992080

`eq[n%10, A034380(A260300(n+1))]`
-/

namespace A225297.P12641234752954992080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A260300 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225297.P12641234752954992080

