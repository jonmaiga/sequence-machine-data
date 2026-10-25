import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A091801: Largest n-digit multiple of the n-th prime.

The programs for A091801, the canonical program `A091801.P17201142241564417705` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091801 has offset 1).

The definition of A091801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091801.P17201142241564417705

`A004643(A005843(n+1))-A091802(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091801

/-- `A004643(A005843(n+1))-A091802(n+1)` -/
def P17201142241564417705.Spec : Prop :=
  ∀ n, P17201142241564417705.a n = A091801 (n + 1)

theorem P17201142241564417705.correct : P17201142241564417705.Spec := by
  intro n
  simp only [A091801, Nat.add_sub_cancel]

end A091801

/-! ## A091801.P17440611880090822697

`Δ[A002275(n+1)]-A091802(n+1)`
-/

namespace A091801.P17440611880090822697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091802 (n + 1)

end

end A091801.P17440611880090822697

namespace A091801

/-- `Δ[A002275(n+1)]-A091802(n+1)` -/
def P17440611880090822697.Spec : Prop :=
  ∀ n, P17440611880090822697.a n = A091801 (n + 1)

end A091801

/-! ## A091801.P9488004406242272545

`A002275(n+2)-(A091802(n+1)+A002275(n+1))`
-/

namespace A091801.P9488004406242272545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - (A091802 (n + 1) + A002275 (n + 1))

end

end A091801.P9488004406242272545

namespace A091801

/-- `A002275(n+2)-(A091802(n+1)+A002275(n+1))` -/
def P9488004406242272545.Spec : Prop :=
  ∀ n, P9488004406242272545.a n = A091801 (n + 1)

end A091801

/-! ## A091801.P8024780848642597669

`A079821(n+2)-(A091803(n+2)+A091802(n+1))`
-/

namespace A091801.P8024780848642597669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 2) - (A091803 (n + 2) + A091802 (n + 1))

end

end A091801.P8024780848642597669

namespace A091801

/-- `A079821(n+2)-(A091803(n+2)+A091802(n+1))` -/
def P8024780848642597669.Spec : Prop :=
  ∀ n, P8024780848642597669.a n = A091801 (n + 1)

end A091801

/-!
# A091802: 10^n - (largest n-digit multiple of the n-th prime).

The programs for A091802, the canonical program `A091802.P3295321793161295733` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091802 has offset 1).

The definition of A091802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091802.P14709926871543748784

`A004643(2*(n+1))-A091801(n+1)`
-/

namespace A091802.P14709926871543748784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (2 * (n + 1)) - A091801 (n + 1)

end

end A091802.P14709926871543748784

namespace A091802

/-- `A004643(2*(n+1))-A091801(n+1)` -/
def P14709926871543748784.Spec : Prop :=
  ∀ n, P14709926871543748784.a n = A091802 (n + 1)

end A091802

/-! ## A091802.P3295321793161295733

`A002283(n+1)%A000040(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091802

/-- `A002283(n+1)%A000040(n+1)+1` -/
def P3295321793161295733.Spec : Prop :=
  ∀ n, P3295321793161295733.a n = A091802 (n + 1)

theorem P3295321793161295733.correct : P3295321793161295733.Spec := by
  intro n
  simp only [A091802, Nat.add_sub_cancel]

end A091802

/-! ## A091802.P3831520968048841422

`Δ[A002275(n+1)]-A091801(n+1)`
-/

namespace A091802.P3831520968048841422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091801 (n + 1)

end

end A091802.P3831520968048841422

namespace A091802

/-- `Δ[A002275(n+1)]-A091801(n+1)` -/
def P3831520968048841422.Spec : Prop :=
  ∀ n, P3831520968048841422.a n = A091802 (n + 1)

end A091802

/-! ## A091802.P15269313312652931200

`A002275(n+2)-(A091801(n+1)+A002275(n+1))`
-/

namespace A091802.P15269313312652931200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - (A091801 (n + 1) + A002275 (n + 1))

end

end A091802.P15269313312652931200

namespace A091802

/-- `A002275(n+2)-(A091801(n+1)+A002275(n+1))` -/
def P15269313312652931200.Spec : Prop :=
  ∀ n, P15269313312652931200.a n = A091802 (n + 1)

end A091802

/-! ## A091802.P7263078718537385346

`A079821(n+2)-(A091803(n+2)+A091801(n+1))`
-/

namespace A091802.P7263078718537385346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 2) - (A091803 (n + 2) + A091801 (n + 1))

end

end A091802.P7263078718537385346

namespace A091802

/-- `A079821(n+2)-(A091803(n+2)+A091801(n+1))` -/
def P7263078718537385346.Spec : Prop :=
  ∀ n, P7263078718537385346.a n = A091802 (n + 1)

end A091802

/-!
# A091803: (Smallest n-digit multiple of the n-th prime) - 10^(n-1).

The programs for A091803, there is no canonical definition to state claims against.
-/

/-! ## A091803.P13180541924716625795

`A079821(n+1)-A011557(n)`
-/

namespace A091803.P13180541924716625795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 1) - A011557 n

end

end A091803.P13180541924716625795

/-! ## A091803.P995811636531126002

`A079821(n+1)-Δ[A002275(n)]`
-/

namespace A091803.P995811636531126002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091803.P995811636531126002

/-! ## A091803.P7418745237849628061

`A079821(n+1)-A004643(2*n)`
-/

namespace A091803.P7418745237849628061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 1) - A004643 (2 * n)

end

end A091803.P7418745237849628061

/-! ## A091803.P17128400346095049200

`A079821(n+1)-A004655(4*n)`
-/

namespace A091803.P17128400346095049200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 1) - A004655 (4 * n)

end

end A091803.P17128400346095049200

/-! ## A091803.P16420043811376535826

`A079821(n+1)+A002275(n)-A002275(n+1)`
-/

namespace A091803.P16420043811376535826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079821 (n + 1) + (A002275 n - A002275 (n + 1))

end

end A091803.P16420043811376535826

/-!
# A091804: a(n) = 2^(n*(n+1)/2)*A055209(n).

The programs for A091804, the canonical program `A091804.P12556309897702176768` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091804 has offset 0).

The definition of A091804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091804.P12556309897702176768

`2^(n*(n+1)/2)*A055209(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091804

/-- `2^(n*(n+1)/2)*A055209(n)` -/
def P12556309897702176768.Spec : Prop :=
  ∀ n, P12556309897702176768.a n = (A091804 n : ℝ)

end A091804

/-! ## A091804.P1190423593008104070

`∏[n!²*2^n]`
-/

namespace A091804.P1190423593008104070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091804.P1190423593008104070

namespace A091804

/-- `∏[n!²*2^n]` -/
def P1190423593008104070.Spec : Prop :=
  ∀ n, (P1190423593008104070.a n : ℤ) = A091804 n

end A091804

/-! ## A091804.P1393893591863497119

`∏[2^n*n!*n!]`
-/

namespace A091804.P1393893591863497119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091804.P1393893591863497119

namespace A091804

/-- `∏[2^n*n!*n!]` -/
def P1393893591863497119.Spec : Prop :=
  ∀ n, (P1393893591863497119.a n : ℤ) = A091804 n

end A091804

/-! ## A091804.P16704307511519793760

`∏[2*a(n-1)*n²]` with `a(0)=1`
-/

namespace A091804.P16704307511519793760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091804.P16704307511519793760

namespace A091804

/-- `∏[2*a(n-1)*n²]` -/
def P16704307511519793760.Spec : Prop :=
  ∀ n, (P16704307511519793760.a n : ℤ) = A091804 n

end A091804

/-! ## A091804.P8603029997235213221

`∏[abs(A055546(n))]`
-/

namespace A091804.P8603029997235213221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055546 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091804.P8603029997235213221

namespace A091804

/-- `∏[abs(A055546(n))]` -/
def P8603029997235213221.Spec : Prop :=
  ∀ n, P8603029997235213221.a n = A091804 n

end A091804

/-!
# A091806: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the numerator of the real part of the convergents.

The programs for A091806, the canonical program `A091806.P2486439758366413823` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091806 has offset 1).

The definition of A091806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091806.P2486439758366413823

`A092886(n)/gcd(A092886(n), A105309(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091806

/-- `A092886(n)/gcd(A092886(n), A105309(n))` -/
def P2486439758366413823.Spec : Prop :=
  ∀ n, P2486439758366413823.a n = (A091806 (n + 1) : ℚ)

end A091806

/-! ## A091806.P10488116499101767672

`A091807(n)*A092886(n)/A105309(n)`
-/

namespace A091806.P10488116499101767672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091807 n * A092886 n : ℚ) / (A105309 n : ℚ)

end

end A091806.P10488116499101767672

namespace A091806

/-- `A091807(n)*A092886(n)/A105309(n)` -/
def P10488116499101767672.Spec : Prop :=
  ∀ n, P10488116499101767672.a n = (A091806 (n + 1) : ℚ)

end A091806

/-! ## A091806.P1212591574757845699

`A092886(n)%A162111(A025591(n))`
-/

namespace A091806.P1212591574757845699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092886 n) (A162111 (A025591 n).toNat)

end

end A091806.P1212591574757845699

namespace A091806

/-- `A092886(n)%A162111(A025591(n))` -/
def P1212591574757845699.Spec : Prop :=
  ∀ n, P1212591574757845699.a n = A091806 (n + 1)

end A091806

/-!
# A091807: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the denominator of the real part of the convergents.

The programs for A091807, there is no canonical definition to state claims against.
-/

/-! ## A091807.P4365723095397700800

`A105309(n)/gcd(A092886(n), A105309(n))`
-/

namespace A091807.P4365723095397700800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105309 n : ℚ) / (Int.gcd (A092886 n) (A105309 n) : ℚ)

end

end A091807.P4365723095397700800

/-! ## A091807.P10348000944265906862

`lcm(A105309(n), A242510(n))/A242510(n)`
-/

namespace A091807.P10348000944265906862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A105309 n) (A242510 n) : ℚ) / (A242510 n : ℚ)

end

end A091807.P10348000944265906862

/-! ## A091807.P884732445942756397

`A091809(n+1)/A038548(A037271(3*n+1))`
-/

namespace A091807.P884732445942756397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091809 (n + 1) : ℚ) / (A038548 (A037271 (3 * n + 1)).toNat : ℚ)

end

end A091807.P884732445942756397

/-! ## A091807.P15449097544866682205

`A015053(A105309(n))/A038548(A037271(3*n+1))`
-/

namespace A091807.P15449097544866682205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (A105309 n).toNat : ℚ) / (A038548 (A037271 (3 * n + 1)).toNat : ℚ)

end

end A091807.P15449097544866682205

/-!
# A091808: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the numerator of the imaginary part of the convergents.

The programs for A091808, there is no canonical definition to state claims against.
-/

/-! ## A091808.P1815372506628931488

`lcm(A092886(n+1), A105309(n))/A105309(n)`
-/

namespace A091808.P1815372506628931488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A092886 (n + 1)) (A105309 n) : ℚ) / (A105309 n : ℚ)

end

end A091808.P1815372506628931488

/-!
# A091809: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the denominator of the imaginary part of the convergents.

The programs for A091809, there is no canonical definition to state claims against.
-/

/-! ## A091809.P11970129983574612944

`lcm(A092886(n+1), A105309(n))/A092886(n+1)`
-/

namespace A091809.P11970129983574612944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A092886 (n + 1)) (A105309 n) : ℚ) / (A092886 (n + 1) : ℚ)

end

end A091809.P11970129983574612944

/-! ## A091809.P8821370228124959898

`A015053(A105309(n))`
-/

namespace A091809.P8821370228124959898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A105309 n).toNat

end

end A091809.P8821370228124959898

/-! ## A091809.P12344558167233750473

`∏{d}[A105309(n), A089026(#)]`
-/

namespace A091809.P12344558167233750473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A089026 d

end

end A091809.P12344558167233750473

/-! ## A091809.P1264678611361055366

`A066069(A105309(n)%A017491(n))`
-/

namespace A091809.P1264678611361055366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (Int.tmod (A105309 n) (A017491 n)).toNat

end

end A091809.P1264678611361055366

/-! ## A091809.P9993157560933524520

`A066069(A105309(n))%A046020(n+1)`
-/

namespace A091809.P9993157560933524520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066069 (A105309 n).toNat) (A046020 (n + 1))

end

end A091809.P9993157560933524520

/-!
# A091810: Hankel transform of the sequence A001469 (unsigned), Genocchi numbers of first kind.

The programs for A091810, the canonical program `A091810.P8790943426307010129` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091810 has offset 0).

The definition of A091810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091810.P8790943426307010129

`(n+1)!*A055209(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091810

/-- `(n+1)!*A055209(n)²` -/
def P8790943426307010129.Spec : Prop :=
  ∀ n, P8790943426307010129.a n = A091810 n

theorem P8790943426307010129.correct : P8790943426307010129.Spec := by
  intro n
  simp only [A091810]

end A091810

/-! ## A091810.P13517746356621389041

`∏[(n+1)*n!^4]`
-/

namespace A091810.P13517746356621389041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091810.P13517746356621389041

namespace A091810

/-- `∏[(n+1)*n!^4]` -/
def P13517746356621389041.Spec : Prop :=
  ∀ n, (P13517746356621389041.a n : ℤ) = A091810 n

end A091810

/-! ## A091810.P7238688426471266142

`∏[(n+1)*n!²²]`
-/

namespace A091810.P7238688426471266142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.factorial n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091810.P7238688426471266142

namespace A091810

/-- `∏[(n+1)*n!²²]` -/
def P7238688426471266142.Spec : Prop :=
  ∀ n, (P7238688426471266142.a n : ℤ) = A091810 n

end A091810

/-! ## A091810.P10124816092838313426

`∏[(n+1)*(-∏[n-C(2, n+2)])^4]`
-/

namespace A091810.P10124816092838313426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-(∏ j ∈ Finset.range (n + 1), f2 j)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091810.P10124816092838313426

namespace A091810

/-- `∏[(n+1)*(-∏[n-C(2, n+2)])^4]` -/
def P10124816092838313426.Spec : Prop :=
  ∀ n, P10124816092838313426.a n = A091810 n

end A091810

/-! ## A091810.P14480320791641676634

`∏[A327904(2*n)]`
-/

namespace A091810.P14480320791641676634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327904 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091810.P14480320791641676634

namespace A091810

/-- `∏[A327904(2*n)]` -/
def P14480320791641676634.Spec : Prop :=
  ∀ n, P14480320791641676634.a n = A091810 n

end A091810

/-!
# A091811: Array read by rows: T(n,k) = binomial(n+k-2,k-1)*binomial(2*n-1,n-k).

The programs for A091811, there is no canonical definition to state claims against.
-/

/-! ## A091811.P11508467820842045757

`abs(A327809(n))`
-/

namespace A091811.P11508467820842045757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327809 n|

end

end A091811.P11508467820842045757

/-! ## A091811.P17447126998772683180

`A046899(n)*A111418(n)`
-/

namespace A091811.P17447126998772683180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A111418 n

end

end A091811.P17447126998772683180

/-! ## A091811.P17669368251783652199

`gcd(A000038(n), A327809(n))`
-/

namespace A091811.P17669368251783652199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327809 n)

end

end A091811.P17669368251783652199

/-! ## A091811.P10343410227839179893

`lcm(A016030(n), A327809(n))`
-/

namespace A091811.P10343410227839179893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016030 n) (A327809 n)

end

end A091811.P10343410227839179893

/-! ## A091811.P6616932193938939480

`A059481(comp[∑[n-1]])*A111418(n)`
-/

namespace A091811.P6616932193938939480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A111418 n

end

end A091811.P6616932193938939480

/-!
# A091817: (2*numerator(H(p-3)) -3*denominator(H(p-3)))/p with H(m) = 1 + 1/2 + 1/3 + ...+ 1/m.

The programs for A091817, there is no canonical definition to state claims against.
-/

/-! ## A091817.P1707697960269373978

`A299275(A001358(a(n-2)+1))` with `a(0)=-1, a(1)=0, a(2)=2`
-/

namespace A091817.P1707697960269373978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 2] fun n a =>
  A299275 (A001358 (a (n - 2) + 1).toNat).toNat

end

end A091817.P1707697960269373978

/-!
# A091818: Sum of the even proper divisors of 2n. Sum of the even divisors of 2n that are less than 2n.

The programs for A091818, the canonical program `A091818.P1536144604709334989` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091818 has offset 1).

The definition of A091818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091818.P1536144604709334989

`2*A001065(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091818

/-- `2*A001065(n+1)` -/
def P1536144604709334989.Spec : Prop :=
  ∀ n, P1536144604709334989.a n = A091818 (n + 1)

theorem P1536144604709334989.correct : P1536144604709334989.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel]

end A091818

/-! ## A091818.P10025694555354437600

`2*(∑{d}[n+1, #]-(n+1))`
-/

namespace A091818.P10025694555354437600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A091818.P10025694555354437600

namespace A091818

/-- `2*(∑{d}[n+1, #]-(n+1))` -/
def P10025694555354437600.Spec : Prop :=
  ∀ n, P10025694555354437600.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P8663559854951883780

`2*∑{d}[n+1, #%(n+1)]`
-/

namespace A091818.P8663559854951883780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), d % (n + 1))

end

end A091818.P8663559854951883780

namespace A091818

/-- `2*∑{d}[n+1, #%(n+1)]` -/
def P8663559854951883780.Spec : Prop :=
  ∀ n, (P8663559854951883780.a n : ℤ) = A091818 (n + 1)

end A091818

/-! ## A091818.P17688145984448079163

`abs(∑{d}[n+1, #]-(n+1))+∑{d}[n+1, #]-(n+1)`
-/

namespace A091818.P17688145984448079163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)| + (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A091818.P17688145984448079163

namespace A091818

/-- `abs(∑{d}[n+1, #]-(n+1))+∑{d}[n+1, #]-(n+1)` -/
def P17688145984448079163.Spec : Prop :=
  ∀ n, P17688145984448079163.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P10304316659559669062

`A062967(n+1)+1`
-/

namespace A091818.P10304316659559669062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1) + 1

end

end A091818.P10304316659559669062

namespace A091818

/-- `A062967(n+1)+1` -/
def P10304316659559669062.Spec : Prop :=
  ∀ n, P10304316659559669062.a n = A091818 (n + 1)

theorem P10304316659559669062.correct : P10304316659559669062.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P10304316659559669062.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A062967, A062967.P4115088381061697299.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P1028575630903713131

`A294015(n+1)-1`
-/

namespace A091818.P1028575630903713131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1) - 1

end

end A091818.P1028575630903713131

namespace A091818

/-- `A294015(n+1)-1` -/
def P1028575630903713131.Spec : Prop :=
  ∀ n, P1028575630903713131.a n = A091818 (n + 1)

theorem P1028575630903713131.correct : P1028575630903713131.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P1028575630903713131.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A294015, A294015.P9060703257274913068.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P7119799692773948493

`A294628(n+1)/4-1`
-/

namespace A091818.P7119799692773948493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294628 (n + 1) : ℚ) / 4 - 1

end

end A091818.P7119799692773948493

namespace A091818

/-- `A294628(n+1)/4-1` -/
def P7119799692773948493.Spec : Prop :=
  ∀ n, P7119799692773948493.a n = (A091818 (n + 1) : ℚ)

theorem P7119799692773948493.correct : P7119799692773948493.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P7119799692773948493.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A294628, A294628.P17732687691627968368.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294015, A294015.P9060703257274913068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P11243369491242795271

`2*(A237588(n+1)+n)`
-/

namespace A091818.P11243369491242795271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A237588 (n + 1) + (n : ℤ))

end

end A091818.P11243369491242795271

namespace A091818

/-- `2*(A237588(n+1)+n)` -/
def P11243369491242795271.Spec : Prop :=
  ∀ n, P11243369491242795271.a n = A091818 (n + 1)

theorem P11243369491242795271.correct : P11243369491242795271.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P11243369491242795271.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A237588, A237588.P7919289499905681947.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P8393824149777324811

`2*(A039653(n+1)-n)`
-/

namespace A091818.P8393824149777324811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A039653 (n + 1) - (n : ℤ))

end

end A091818.P8393824149777324811

namespace A091818

/-- `2*(A039653(n+1)-n)` -/
def P8393824149777324811.Spec : Prop :=
  ∀ n, P8393824149777324811.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P5206560784429454236

`2*(n-A235796(n+1))`
-/

namespace A091818.P5206560784429454236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A235796 (n + 1))

end

end A091818.P5206560784429454236

namespace A091818

/-- `2*(n-A235796(n+1))` -/
def P5206560784429454236.Spec : Prop :=
  ∀ n, P5206560784429454236.a n = A091818 (n + 1)

theorem P5206560784429454236.correct : P5206560784429454236.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P5206560784429454236.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A235796, A235796.P10282550748648679139.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P4180343506946738468

`A002659(n+1)-Δ[n²]`
-/

namespace A091818.P4180343506946738468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091818.P4180343506946738468

namespace A091818

/-- `A002659(n+1)-Δ[n²]` -/
def P4180343506946738468.Spec : Prop :=
  ∀ n, P4180343506946738468.a n = A091818 (n + 1)

theorem P4180343506946738468.correct : P4180343506946738468.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P4180343506946738468.f1, A091818.P4180343506946738468.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A002659, A002659.P10160211641234387559.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P7770433893853377552

`∑[2*(A340793(n+1)-1)]`
-/

namespace A091818.P7770433893853377552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A340793 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091818.P7770433893853377552

namespace A091818

/-- `∑[2*(A340793(n+1)-1)]` -/
def P7770433893853377552.Spec : Prop :=
  ∀ n, P7770433893853377552.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P11659656724370109444

`2*(∑[n]-A024816(n+1))`
-/

namespace A091818.P11659656724370109444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1))

end

end A091818.P11659656724370109444

namespace A091818

/-- `2*(∑[n]-A024816(n+1))` -/
def P11659656724370109444.Spec : Prop :=
  ∀ n, P11659656724370109444.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P10118746144451577934

`2*(A033880(n+1)+n+1)`
-/

namespace A091818.P10118746144451577934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033880 (n + 1) + (n + 1 : ℤ))

end

end A091818.P10118746144451577934

namespace A091818

/-- `2*(A033880(n+1)+n+1)` -/
def P10118746144451577934.Spec : Prop :=
  ∀ n, P10118746144451577934.a n = A091818 (n + 1)

theorem P10118746144451577934.correct : P10118746144451577934.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P10118746144451577934.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A033880, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P3322946877535707729

`2*(A000203(n+1)-(n+1))`
-/

namespace A091818.P3322946877535707729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n + 1 : ℤ))

end

end A091818.P3322946877535707729

namespace A091818

/-- `2*(A000203(n+1)-(n+1))` -/
def P3322946877535707729.Spec : Prop :=
  ∀ n, P3322946877535707729.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P14666860488621342170

`2*(n+1-A033879(n+1))`
-/

namespace A091818.P14666860488621342170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A033879 (n + 1))

end

end A091818.P14666860488621342170

namespace A091818

/-- `2*(n+1-A033879(n+1))` -/
def P14666860488621342170.Spec : Prop :=
  ∀ n, P14666860488621342170.a n = A091818 (n + 1)

theorem P14666860488621342170.correct : P14666860488621342170.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P14666860488621342170.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P403906062263465868

`A074400(n+1)-2*(n+1)`
-/

namespace A091818.P403906062263465868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - (2 * (n + 1) : ℤ)

end

end A091818.P403906062263465868

namespace A091818

/-- `A074400(n+1)-2*(n+1)` -/
def P403906062263465868.Spec : Prop :=
  ∀ n, P403906062263465868.a n = A091818 (n + 1)

theorem P403906062263465868.correct : P403906062263465868.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P403906062263465868.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A074400, A074400.P16312391460013478761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P4427192354350337349

`2*(A088580(n+1)-(n+2))`
-/

namespace A091818.P4427192354350337349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088580 (n + 1) - (n + 2 : ℤ))

end

end A091818.P4427192354350337349

namespace A091818

/-- `2*(A088580(n+1)-(n+2))` -/
def P4427192354350337349.Spec : Prop :=
  ∀ n, P4427192354350337349.a n = A091818 (n + 1)

theorem P4427192354350337349.correct : P4427192354350337349.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P4427192354350337349.a, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-! ## A091818.P14867190373749782116

`2*∑{d}[n+1, #-A000010(#)]`
-/

namespace A091818.P14867190373749782116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d))

end

end A091818.P14867190373749782116

namespace A091818

/-- `2*∑{d}[n+1, #-A000010(#)]` -/
def P14867190373749782116.Spec : Prop :=
  ∀ n, P14867190373749782116.a n = A091818 (n + 1)

end A091818

/-! ## A091818.P14563279938523057818

`A033880(n+1)+A000203(n+1)`
-/

namespace A091818.P14563279938523057818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A000203 (n + 1)

end

end A091818.P14563279938523057818

namespace A091818

/-- `A033880(n+1)+A000203(n+1)` -/
def P14563279938523057818.Spec : Prop :=
  ∀ n, P14563279938523057818.a n = A091818 (n + 1)

theorem P14563279938523057818.correct : P14563279938523057818.Spec := by
  intro n
  simp only [A091818, Nat.add_sub_cancel, A091818.P14563279938523057818.a, A091818.P1536144604709334989.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091818

/-!
# A091819: Numbers k that have, in binary, the same number of ones as are in k^2 and which have no nonincreasing binary representation.

The programs for A091819, there is no canonical definition to state claims against.
-/

/-! ## A091819.P15590586571885664463

`eq[A232243(n), A340375(n)]`
-/

namespace A091819.P15590586571885664463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091819.P15590586571885664463

/-! ## A091819.P9327676437378299084

`eq[A278222(n)%3, A232243(n)]`
-/

namespace A091819.P9327676437378299084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091819.P9327676437378299084

/-! ## A091819.P4635384639691893521

`eq[A286588(n)%3, A232243(n)]`
-/

namespace A091819.P4635384639691893521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286588 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091819.P4635384639691893521

/-! ## A091819.P3874973237818258383

`∩[A004750(n+1), A077436(n+1)]`
-/

namespace A091819.P3874973237818258383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091819.P3874973237818258383

/-! ## A091819.P10942678033178850234

`∩[A077436(n+1), A101082(n+1)]`
-/

namespace A091819.P10942678033178850234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091819.P10942678033178850234

/-! ## A091819.P18025647245569869771

`∩[A077436(n+1), A257739(n+1)]`
-/

namespace A091819.P18025647245569869771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091819.P18025647245569869771

/-! ## A091819.P4679659879876882028

`∩[A077436(n+1), A391250(n+1)]`
-/

namespace A091819.P4679659879876882028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091819.P4679659879876882028

/-! ## A091819.P16396625149351108261

`eq[A036987(A035327(n)), A232243(n)]`
-/

namespace A091819.P16396625149351108261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091819.P16396625149351108261

/-! ## A091819.P13183890560681183697

`eq[A010872(A278222(n)), A232243(n)]`
-/

namespace A091819.P13183890560681183697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091819.P13183890560681183697

/-!
# A091820: Number of ways to reach a sum of n by a down-only cascade through Pascal's Triangle, starting at C(0,0)=1 at the apex and shifting left or right by exactly one position at each step.

The programs for A091820, there is no canonical definition to state claims against.
-/

/-! ## A091820.P5865594607645993774

`A005811(A101977(n+1)*A103314(n))`
-/

namespace A091820.P5865594607645993774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A101977 (n + 1) * A103314 n).toNat

end

end A091820.P5865594607645993774

/-!
# A091822: a(n)=2*sum(k=0,n,sum(i=0,k,sum(j=0,i, A010060(j))))-(1/6)*(n^3+6*n^2+11*n-6).

The programs for A091822, the canonical program `A091822.P18176888535839854979` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091822 has offset 1).

The definition of A091822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091822.P18176888535839854979

`∑[A076826(ceil(n/2))]-n`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091822

/-- `∑[A076826(ceil(n/2))]-n` -/
def P18176888535839854979.Spec : Prop :=
  ∀ n, P18176888535839854979.a n = A091822 (n + 1)

theorem P18176888535839854979.correct : P18176888535839854979.Spec := by
  intro n
  simp only [A091822, Nat.add_sub_cancel]

end A091822

/-! ## A091822.P15954389056767978388

`∑[∑[A076826(n+1)-1]]-n`
-/

namespace A091822.P15954389056767978388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A091822.P15954389056767978388

namespace A091822

/-- `∑[∑[A076826(n+1)-1]]-n` -/
def P15954389056767978388.Spec : Prop :=
  ∀ n, P15954389056767978388.a n = A091822 (n + 1)

end A091822

/-! ## A091822.P10734225457511927701

`∑[A076826(A065033(n))-1]`
-/

namespace A091822.P10734225457511927701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A065033 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091822.P10734225457511927701

namespace A091822

/-- `∑[A076826(A065033(n))-1]` -/
def P10734225457511927701.Spec : Prop :=
  ∀ n, P10734225457511927701.a n = A091822 (n + 1)

end A091822

/-! ## A091822.P13638930973788875664

`∑[A104895(A008619(n+1))%2]+1`
-/

namespace A091822.P13638930973788875664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104895 (A008619 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091822.P13638930973788875664

namespace A091822

/-- `∑[A104895(A008619(n+1))%2]+1` -/
def P13638930973788875664.Spec : Prop :=
  ∀ n, P13638930973788875664.a n = A091822 (n + 1)

end A091822

/-! ## A091822.P9185250364050761461

`∑[A080513(A266383(n+1))%3]-n`
-/

namespace A091822.P9185250364050761461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080513 (A266383 (n + 1)).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A091822.P9185250364050761461

namespace A091822

/-- `∑[A080513(A266383(n+1))%3]-n` -/
def P9185250364050761461.Spec : Prop :=
  ∀ n, P9185250364050761461.a n = A091822 (n + 1)

end A091822

/-! ## A091822.P8215823471497610681

`∑[A163804(A071044(A065033(n)))]`
-/

namespace A091822.P8215823471497610681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A071044 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091822.P8215823471497610681

namespace A091822

/-- `∑[A163804(A071044(A065033(n)))]` -/
def P8215823471497610681.Spec : Prop :=
  ∀ n, P8215823471497610681.a n = A091822 (n + 1)

end A091822

/-! ## A091822.P13636390794902406402

`A001489(n)+∑[A076826(A110654(n))]`
-/

namespace A091822.P13636390794902406402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091822.P13636390794902406402

namespace A091822

/-- `A001489(n)+∑[A076826(A110654(n))]` -/
def P13636390794902406402.Spec : Prop :=
  ∀ n, P13636390794902406402.a n = A091822 (n + 1)

theorem P13636390794902406402.correct : P13636390794902406402.Spec := by
  intro n
  simp only [A091822, Nat.add_sub_cancel, A091822.P13636390794902406402.f1, A091822.P13636390794902406402.a, A091822.P18176888535839854979.f1, A091822.P18176888535839854979.a, A001489, A001489.P15233530513763566776.a, A076826, A076826.P11423364779277600938.a, A110654, A110654.P360289776162656549.a, A115384, A115384.P10033913726558094609.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091822

/-!
# A091823: a(n) = 2*n^2 + 3*n - 1.

The programs for A091823, the canonical program `A091823.P12621649529631280262` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091823 has offset 1).

The definition of A091823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+3*(n+1)-1` (program `A091823.P12621649529631280262`, by `A091823.P12621649529631280262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091823.P1821915052499536440

`n+4*C(2+n, n)`
-/

namespace A091823.P1821915052499536440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4 * Nat.choose (2 + n) n

end

end A091823.P1821915052499536440

namespace A091823

/-- `n+4*C(2+n, n)` -/
def P1821915052499536440.Spec : Prop :=
  ∀ n, (P1821915052499536440.a n : ℤ) = A091823 (n + 1)

end A091823

/-! ## A091823.P12621649529631280262

`2*(n+1)²+3*(n+1)-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091823

/-- `2*(n+1)²+3*(n+1)-1` -/
def P12621649529631280262.Spec : Prop :=
  ∀ n, P12621649529631280262.a n = A091823 (n + 1)

theorem P12621649529631280262.correct : P12621649529631280262.Spec := by
  intro n
  simp only [A091823, Nat.add_sub_cancel]

end A091823

/-! ## A091823.P11120440968392658325

`∑[a(n-1)+4]` with `a(0)=4, a(1)=9`
-/

namespace A091823.P11120440968392658325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091823.P11120440968392658325

namespace A091823

/-- `∑[a(n-1)+4]` -/
def P11120440968392658325.Spec : Prop :=
  ∀ n, (P11120440968392658325.a n : ℤ) = A091823 (n + 1)

end A091823

/-! ## A091823.P13413635858245589051

`∑[record[xor(3, n+1)+2]]`
-/

namespace A091823.P13413635858245589051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091823.P13413635858245589051

namespace A091823

/-- `∑[record[xor(3, n+1)+2]]` -/
def P13413635858245589051.Spec : Prop :=
  ∀ n, (P13413635858245589051.a n : ℤ) = A091823 (n + 1)

end A091823

/-! ## A091823.P8466570620747610390

`∑[ogf((4+x-x^2)/(1-2x+x^2))]`
-/

namespace A091823.P8466570620747610390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091823.P8466570620747610390

namespace A091823

/-- `∑[ogf((4+x-x^2)/(1-2x+x^2))]` -/
def P8466570620747610390.Spec : Prop :=
  ∀ n, P8466570620747610390.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P8713827505737390924

`ogf((4+x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A091823.P8713827505737390924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -1] [1, -3, 3, -1] n

end

end A091823.P8713827505737390924

namespace A091823

/-- `ogf((4+x-x^2)/(1-3x+3x^2-x^3))` -/
def P8713827505737390924.Spec : Prop :=
  ∀ n, P8713827505737390924.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P14928651527925913548

`ceil(comp[2*n]/acot(n+3))`
-/

namespace A091823.P14928651527925913548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ)⌉

end

end A091823.P14928651527925913548

namespace A091823

/-- `ceil(comp[2*n]/acot(n+3))` -/
def P14928651527925913548.Spec : Prop :=
  ∀ n, P14928651527925913548.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P14708412794884409535

`floor(n-∑[a(n-1)-4])` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A091823.P14708412794884409535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091823.P14708412794884409535

namespace A091823

/-- `floor(n-∑[a(n-1)-4])` -/
def P14708412794884409535.Spec : Prop :=
  ∀ n, P14708412794884409535.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P16035843036659169187

`abs(2-lcm(2*n+3, n+2))`
-/

namespace A091823.P16035843036659169187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm (2 * n + 3) (n + 2) : ℤ)|

end

end A091823.P16035843036659169187

namespace A091823

/-- `abs(2-lcm(2*n+3, n+2))` -/
def P16035843036659169187.Spec : Prop :=
  ∀ n, P16035843036659169187.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P9814957927121315042

`floor(4*n+a(n-1)+5)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A091823.P9814957927121315042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * n + (a (n - 1) + 5)

end

end A091823.P9814957927121315042

namespace A091823

/-- `floor(4*n+a(n-1)+5)` -/
def P9814957927121315042.Spec : Prop :=
  ∀ n, (P9814957927121315042.a n : ℤ) = A091823 (n + 1)

theorem P9814957927121315042.correct : P9814957927121315042.Spec := by
  intro n
  induction n with
  | zero => simp [A091823, A091823.P9814957927121315042.a, A091823.P12621649529631280262.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A091823, Nat.add_sub_cancel, A091823.P9814957927121315042.a, A091823.P12621649529631280262.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A091823

/-! ## A091823.P1624736794207334798

`ceil((2*n+1)/cos(atan(n+3)))`
-/

namespace A091823.P1624736794207334798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.cos (Real.arctan (n + 3 : ℝ))⌉

end

end A091823.P1624736794207334798

namespace A091823

/-- `ceil((2*n+1)/cos(atan(n+3)))` -/
def P1624736794207334798.Spec : Prop :=
  ∀ n, P1624736794207334798.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P506452840603509721

`ceil((2*n+1)/sin(acot(n+3)))`
-/

namespace A091823.P506452840603509721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n + 3 : ℝ))⌉

end

end A091823.P506452840603509721

namespace A091823

/-- `ceil((2*n+1)/sin(acot(n+3)))` -/
def P506452840603509721.Spec : Prop :=
  ∀ n, P506452840603509721.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P188428054512976133

`ceil((2*n+1)/asin(acot(n+3)))`
-/

namespace A091823.P188428054512976133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.arcsin (SequenceMachineLib.acot (n + 3 : ℝ))⌉

end

end A091823.P188428054512976133

namespace A091823

/-- `ceil((2*n+1)/asin(acot(n+3)))` -/
def P188428054512976133.Spec : Prop :=
  ∀ n, P188428054512976133.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P8716630211572826519

`ceil((2*n+1)/sinh(acot(n+3)))`
-/

namespace A091823.P8716630211572826519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sinh (SequenceMachineLib.acot (n + 3 : ℝ))⌉

end

end A091823.P8716630211572826519

namespace A091823

/-- `ceil((2*n+1)/sinh(acot(n+3)))` -/
def P8716630211572826519.Spec : Prop :=
  ∀ n, P8716630211572826519.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P17271300741483197113

`ceil(cot(acot(2*n+1)/(n+3)))`
-/

namespace A091823.P17271300741483197113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (SequenceMachineLib.acot (2 * n + 1 : ℝ) / (n + 3 : ℝ))⌉

end

end A091823.P17271300741483197113

namespace A091823

/-- `ceil(cot(acot(2*n+1)/(n+3)))` -/
def P17271300741483197113.Spec : Prop :=
  ∀ n, P17271300741483197113.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P3801836321337754844

`4*((a(n-1)+5)/4+n)` with `a(0)=4`
-/

namespace A091823.P3801836321337754844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 * ((a (n - 1) + 5) / 4 + (n : ℚ))

end

end A091823.P3801836321337754844

namespace A091823

/-- `4*((a(n-1)+5)/4+n)` -/
def P3801836321337754844.Spec : Prop :=
  ∀ n, P3801836321337754844.a n = (A091823 (n + 1) : ℚ)

theorem P3801836321337754844.correct : P3801836321337754844.Spec := by
  intro n
  induction n with
  | zero => simp [A091823, A091823.P3801836321337754844.a, A091823.P12621649529631280262.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A091823, Nat.add_sub_cancel, A091823.P3801836321337754844.a, A091823.P12621649529631280262.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A091823

/-! ## A091823.P7457212519150321752

`abs(xor((2*n+1)*(n+3), -1))`
-/

namespace A091823.P7457212519150321752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((2 * n + 1) * (n + 3) : ℤ) (-1)|

end

end A091823.P7457212519150321752

namespace A091823

/-- `abs(xor((2*n+1)*(n+3), -1))` -/
def P7457212519150321752.Spec : Prop :=
  ∀ n, P7457212519150321752.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P1310956823154194935

`-xor((2*n+1)*(n+3), -1)`
-/

namespace A091823.P1310956823154194935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((2 * n + 1) * (n + 3) : ℤ) (-1)

end

end A091823.P1310956823154194935

namespace A091823

/-- `-xor((2*n+1)*(n+3), -1)` -/
def P1310956823154194935.Spec : Prop :=
  ∀ n, P1310956823154194935.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P6705576676731067130

`ceil((2*n+1)/sin(1/(n+3)))`
-/

namespace A091823.P6705576676731067130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sin (1 / (n + 3 : ℚ) : ℝ)⌉

end

end A091823.P6705576676731067130

namespace A091823

/-- `ceil((2*n+1)/sin(1/(n+3)))` -/
def P6705576676731067130.Spec : Prop :=
  ∀ n, P6705576676731067130.a n = A091823 (n + 1)

end A091823

/-! ## A091823.P16456884757339275591

`ceil((2*n+1)/atan(1/(n+3)))`
-/

namespace A091823.P16456884757339275591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.arctan (1 / (n + 3 : ℚ) : ℝ)⌉

end

end A091823.P16456884757339275591

namespace A091823

/-- `ceil((2*n+1)/atan(1/(n+3)))` -/
def P16456884757339275591.Spec : Prop :=
  ∀ n, P16456884757339275591.a n = A091823 (n + 1)

end A091823

/-!
# A091826: (1/p)*(1+A000254(p)-p) as p runs through the primes.

The programs for A091826, there is no canonical definition to state claims against.
-/

/-! ## A091826.P10119576474017036120

`A180589(A000040(n+1))`
-/

namespace A091826.P10119576474017036120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180589 (A000040 (n + 1)).toNat

end

end A091826.P10119576474017036120

/-! ## A091826.P12973911322523657599

`A180589(A030475(n+1))`
-/

namespace A091826.P12973911322523657599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180589 (A030475 (n + 1)).toNat

end

end A091826.P12973911322523657599

/-! ## A091826.P12472819916204927955

`record[A180589(A020639(n+1))]`
-/

namespace A091826.P12472819916204927955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180589 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091826.P12472819916204927955

/-! ## A091826.P823087544635026851

`A180589(∏{p}[A001248(n+1), #])`
-/

namespace A091826.P823087544635026851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180589 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091826.P823087544635026851

/-! ## A091826.P17048497986583538727

`floor(A000254(A008578(n+2))/A008578(n+2))`
-/

namespace A091826.P17048497986583538727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000254 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A091826.P17048497986583538727

/-!
# A091828: a(n)=n-2*valuation(A000254(n),3).

The programs for A091828, the canonical program `A091828.P7160503781707048066` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091828 has offset 1).

The definition of A091828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091828.P7160503781707048066

`n+1-2*val(A000254(n+1), 3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091828

/-- `n+1-2*val(A000254(n+1), 3)` -/
def P7160503781707048066.Spec : Prop :=
  ∀ n, P7160503781707048066.a n = A091828 (n + 1)

theorem P7160503781707048066.correct : P7160503781707048066.Spec := by
  intro n
  simp only [A091828, Nat.add_sub_cancel]

end A091828

/-!
# A091829: a(1)=1; a(2n)=a(n)+1, a(2n+1)=a(n) mod 2.

The programs for A091829, the canonical program `A091829.P4819344325037960460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091829 has offset 1).

The definition of A091829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091829.P4819344325037960460

`val((n+1)*A059009(or(n, n+1)), 2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091829

/-- `val((n+1)*A059009(or(n, n+1)), 2)` -/
def P4819344325037960460.Spec : Prop :=
  ∀ n, (P4819344325037960460.a n : ℤ) = A091829 (n + 1)

theorem P4819344325037960460.correct : P4819344325037960460.Spec := by
  intro n
  simp only [A091829, Nat.add_sub_cancel]

end A091829

/-! ## A091829.P10163487156725996977

`A135560(n+1)-A298952(n)`
-/

namespace A091829.P10163487156725996977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - A298952 n

end

end A091829.P10163487156725996977

namespace A091829

/-- `A135560(n+1)-A298952(n)` -/
def P10163487156725996977.Spec : Prop :=
  ∀ n, P10163487156725996977.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P12540375392676764219

`A135523(n+1)+A056594(a(n-1)^2)` with `a(0)=1`
-/

namespace A091829.P12540375392676764219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135523 (n + 1) + A056594 (a (n - 1) ^ 2).toNat

end

end A091829.P12540375392676764219

namespace A091829

/-- `A135523(n+1)+A056594(a(n-1)^2)` -/
def P12540375392676764219.Spec : Prop :=
  ∀ n, P12540375392676764219.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P8559711416115658827

`A135560(n+1)-A004074(A004074(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A091829.P8559711416115658827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135560 (n + 1) - A004074 (A004074 (a (n - 1) + 1).toNat + 1).toNat

end

end A091829.P8559711416115658827

namespace A091829

/-- `A135560(n+1)-A004074(A004074(a(n-1)+1)+1)` -/
def P8559711416115658827.Spec : Prop :=
  ∀ n, P8559711416115658827.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P13875116000549881649

`A241235(n+1)-A004074(A004074(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A091829.P13875116000549881649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241235 (n + 1) - A004074 (A004074 (a (n - 1) + 1).toNat + 1).toNat

end

end A091829.P13875116000549881649

namespace A091829

/-- `A241235(n+1)-A004074(A004074(a(n-1)+1)+1)` -/
def P13875116000549881649.Spec : Prop :=
  ∀ n, P13875116000549881649.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P10069869766653966484

`A023416(n+1)+2-A023416(A059009(n))`
-/

namespace A091829.P10069869766653966484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (2 - A023416 (A059009 n).toNat)

end

end A091829.P10069869766653966484

namespace A091829

/-- `A023416(n+1)+2-A023416(A059009(n))` -/
def P10069869766653966484.Spec : Prop :=
  ∀ n, P10069869766653966484.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P13118638013350893045

`A341389(A233280(2*n))+A268726(A233280(n+1))`
-/

namespace A091829.P13118638013350893045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A233280 (2 * n)).toNat + A268726 (A233280 (n + 1)).toNat

end

end A091829.P13118638013350893045

namespace A091829

/-- `A341389(A233280(2*n))+A268726(A233280(n+1))` -/
def P13118638013350893045.Spec : Prop :=
  ∀ n, P13118638013350893045.a n = A091829 (n + 1)

end A091829

/-! ## A091829.P14052345921297687206

`A001511(n+1)-A010060(A160230(n+1))`
-/

namespace A091829.P14052345921297687206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A010060 (A160230 (n + 1)).toNat

end

end A091829.P14052345921297687206

namespace A091829

/-- `A001511(n+1)-A010060(A160230(n+1))` -/
def P14052345921297687206.Spec : Prop :=
  ∀ n, P14052345921297687206.a n = A091829 (n + 1)

end A091829

/-!
# A091830: a(1)=1; a(2n)=(a(n)+1) mod 2, a(2n+1)=a(2n)+1.

The programs for A091830, the canonical program `A091830.P10496688592714661004` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091830 has offset 1).

The definition of A091830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091830.P10496688592714661004

`a(a(floor((n-1)/2)))-and(1, n)+1` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091830

/-- `a(a(floor((n-1)/2)))-and(1, n)+1` -/
def P10496688592714661004.Spec : Prop :=
  ∀ n, P10496688592714661004.a n = A091830 (n + 1)

theorem P10496688592714661004.correct : P10496688592714661004.Spec := by
  intro n
  simp only [A091830, Nat.add_sub_cancel]

end A091830

/-! ## A091830.P15371597197723864422

`and(a(lcm(2, 1-n)/2)+1, 2*n+3)` with `a(0)=1`
-/

namespace A091830.P15371597197723864422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (a (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat + 1) (2 * n + 3)

end

end A091830.P15371597197723864422

namespace A091830

/-- `and(a(lcm(2, 1-n)/2)+1, 2*n+3)` -/
def P15371597197723864422.Spec : Prop :=
  ∀ n, (P15371597197723864422.a n : ℤ) = A091830 (n + 1)

end A091830

/-! ## A091830.P15179426030774380884

`(A132140(n+1)%6)%4`
-/

namespace A091830.P15179426030774380884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A132140 (n + 1)) 6) 4

end

end A091830.P15179426030774380884

namespace A091830

/-- `(A132140(n+1)%6)%4` -/
def P15179426030774380884.Spec : Prop :=
  ∀ n, P15179426030774380884.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P14858236741956285753

`2-A059010(round(n/2))+n`
-/

namespace A091830.P14858236741956285753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A059010 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + (n : ℤ)

end

end A091830.P14858236741956285753

namespace A091830

/-- `2-A059010(round(n/2))+n` -/
def P14858236741956285753.Spec : Prop :=
  ∀ n, P14858236741956285753.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P4628507943759689113

`abs(A059448(n+1)+(-1)^n)`
-/

namespace A091830.P4628507943759689113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059448 (n + 1) + (-1) ^ n|

end

end A091830.P4628507943759689113

namespace A091830

/-- `abs(A059448(n+1)+(-1)^n)` -/
def P4628507943759689113.Spec : Prop :=
  ∀ n, P4628507943759689113.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P6797480151626414908

`and(2*n+3, A122497(n+1))`
-/

namespace A091830.P6797480151626414908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 3 : ℤ) (A122497 (n + 1))

end

end A091830.P6797480151626414908

namespace A091830

/-- `and(2*n+3, A122497(n+1))` -/
def P6797480151626414908.Spec : Prop :=
  ∀ n, P6797480151626414908.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P11835357467552771087

`A122497(n+1)%A040003(n)`
-/

namespace A091830.P11835357467552771087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122497 (n + 1)) (A040003 n)

end

end A091830.P11835357467552771087

namespace A091830

/-- `A122497(n+1)%A040003(n)` -/
def P11835357467552771087.Spec : Prop :=
  ∀ n, P11835357467552771087.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P197182445589714022

`and(A122497(n+1), A289111(n))`
-/

namespace A091830.P197182445589714022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A289111 n)

end

end A091830.P197182445589714022

namespace A091830

/-- `and(A122497(n+1), A289111(n))` -/
def P197182445589714022.Spec : Prop :=
  ∀ n, P197182445589714022.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P13246804539104579946

`and(A122497(n+1), A195280(n+1))`
-/

namespace A091830.P13246804539104579946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A195280 (n + 1))

end

end A091830.P13246804539104579946

namespace A091830

/-- `and(A122497(n+1), A195280(n+1))` -/
def P13246804539104579946.Spec : Prop :=
  ∀ n, P13246804539104579946.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P1412845008888052907

`A098178(A180200(n+1))`
-/

namespace A091830.P1412845008888052907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A180200 (n + 1)).toNat

end

end A091830.P1412845008888052907

namespace A091830

/-- `A098178(A180200(n+1))` -/
def P1412845008888052907.Spec : Prop :=
  ∀ n, P1412845008888052907.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P17594836164906271478

`A047237(A059009(n+1))%3`
-/

namespace A091830.P17594836164906271478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047237 (A059009 (n + 1)).toNat) 3

end

end A091830.P17594836164906271478

namespace A091830

/-- `A047237(A059009(n+1))%3` -/
def P17594836164906271478.Spec : Prop :=
  ∀ n, P17594836164906271478.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P6827898677276387244

`A007877(A059010(n+1))`
-/

namespace A091830.P6827898677276387244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A059010 (n + 1)).toNat

end

end A091830.P6827898677276387244

namespace A091830

/-- `A007877(A059010(n+1))` -/
def P6827898677276387244.Spec : Prop :=
  ∀ n, P6827898677276387244.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P12564849031955868847

`and(A122497(n+1), A140787(n))`
-/

namespace A091830.P12564849031955868847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A140787 n)

end

end A091830.P12564849031955868847

namespace A091830

/-- `and(A122497(n+1), A140787(n))` -/
def P12564849031955868847.Spec : Prop :=
  ∀ n, P12564849031955868847.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P665281949679022279

`and(A122497(n+1), A371715(n))`
-/

namespace A091830.P665281949679022279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A371715 n)

end

end A091830.P665281949679022279

namespace A091830

/-- `and(A122497(n+1), A371715(n))` -/
def P665281949679022279.Spec : Prop :=
  ∀ n, P665281949679022279.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P15919562802743128262

`and(A122497(n+1), A257449(n+1))`
-/

namespace A091830.P15919562802743128262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A257449 (n + 1))

end

end A091830.P15919562802743128262

namespace A091830

/-- `and(A122497(n+1), A257449(n+1))` -/
def P15919562802743128262.Spec : Prop :=
  ∀ n, P15919562802743128262.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P571471115870697321

`and(A122497(n+1), A129397(n))`
-/

namespace A091830.P571471115870697321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A129397 n)

end

end A091830.P571471115870697321

namespace A091830

/-- `and(A122497(n+1), A129397(n))` -/
def P571471115870697321.Spec : Prop :=
  ∀ n, P571471115870697321.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P16350076253461827350

`and(A122497(n+1), A191007(n))`
-/

namespace A091830.P16350076253461827350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A191007 n)

end

end A091830.P16350076253461827350

namespace A091830

/-- `and(A122497(n+1), A191007(n))` -/
def P16350076253461827350.Spec : Prop :=
  ∀ n, P16350076253461827350.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P10471514456320298949

`and(A122497(n+1), A302158(n+1))`
-/

namespace A091830.P10471514456320298949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A302158 (n + 1))

end

end A091830.P10471514456320298949

namespace A091830

/-- `and(A122497(n+1), A302158(n+1))` -/
def P10471514456320298949.Spec : Prop :=
  ∀ n, P10471514456320298949.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P2744700358430873956

`and(A122497(n+1), A297583(n+1))`
-/

namespace A091830.P2744700358430873956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A297583 (n + 1))

end

end A091830.P2744700358430873956

namespace A091830

/-- `and(A122497(n+1), A297583(n+1))` -/
def P2744700358430873956.Spec : Prop :=
  ∀ n, P2744700358430873956.a n = A091830 (n + 1)

end A091830

/-! ## A091830.P14088485653808846749

`and(A122497(n+1), A356411(n))`
-/

namespace A091830.P14088485653808846749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122497 (n + 1)) (A356411 n)

end

end A091830.P14088485653808846749

namespace A091830

/-- `and(A122497(n+1), A356411(n))` -/
def P14088485653808846749.Spec : Prop :=
  ∀ n, P14088485653808846749.a n = A091830 (n + 1)

end A091830

/-!
# A091832: Pierce expansion of 1/e^2.

The programs for A091832, there is no canonical definition to state claims against.
-/

/-! ## A091832.P11872018691645009235

`3*n+1+A007954(A038754(3*(n+1)))`
-/

namespace A091832.P11872018691645009235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) + A007954 (A038754 (3 * (n + 1))).toNat

end

end A091832.P11872018691645009235

/-!
# A091834: Triangle read by rows: T(n,k) = maximum denominator in the Egyptian fraction representation that minimizes the maximum denominator of the k-th entry of row n of the triangle of numbers 1/2; 1/3, 2/3; 1/4, 2/4, 3/4; ...

The programs for A091834, there is no canonical definition to state claims against.
-/

/-! ## A091834.P8177621168842240736

`A050210(n+2)/A014709(A049479(n+2))`
-/

namespace A091834.P8177621168842240736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050210 (n + 2) : ℚ) / (A014709 (A049479 (n + 2)).toNat : ℚ)

end

end A091834.P8177621168842240736

/-! ## A091834.P11743369434906177787

`A050210(n+2)/∏{e}[A009145(n)+1, A000005(#)]`
-/

namespace A091834.P11743369434906177787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050210 (n + 2) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ)

end

end A091834.P11743369434906177787

/-! ## A091834.P17933926811886914907

`A050210(n+2)/A124010(A090636(n+1))`
-/

namespace A091834.P17933926811886914907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050210 (n + 2) : ℚ) / (A124010 (A090636 (n + 1)).toNat : ℚ)

end

end A091834.P17933926811886914907

/-!
# A091835: Double factorial of primes.

The programs for A091835, there is no canonical definition to state claims against.
-/

/-! ## A091835.P14400098414437258620

`A006882(p?[comp[n²]])`
-/

namespace A091835.P14400098414437258620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A091835.P14400098414437258620

/-! ## A091835.P2354486098140288023

`A006882(A000040(n+1))`
-/

namespace A091835.P2354486098140288023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A000040 (n + 1)).toNat

end

end A091835.P2354486098140288023

/-! ## A091835.P12627403964969562313

`A006882(A008578(n+2))`
-/

namespace A091835.P12627403964969562313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A008578 (n + 2)).toNat

end

end A091835.P12627403964969562313

/-! ## A091835.P10694081561686128542

`A006882(record[A006530(n+2)])`
-/

namespace A091835.P10694081561686128542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091835.P10694081561686128542

/-! ## A091835.P10881637169745833802

`A006882(record[A020639(n+2)])`
-/

namespace A091835.P10881637169745833802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091835.P10881637169745833802

/-!
# A091836: A triangle of Motzkin ballot numbers.

The programs for A091836, there is no canonical definition to state claims against.
-/

/-! ## A091836.P14236277654261300551

`A034929(A038722(n+1))`
-/

namespace A091836.P14236277654261300551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A038722 (n + 1)).toNat

end

end A091836.P14236277654261300551

/-! ## A091836.P1241929963577096021

`A034929(A061579(n)+1)`
-/

namespace A091836.P1241929963577096021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A061579 n + 1).toNat

end

end A091836.P1241929963577096021

/-! ## A091836.P534746360879961615

`A034929(A114327(n)+1+n)`
-/

namespace A091836.P534746360879961615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A114327 n + 1 + (n : ℤ)).toNat

end

end A091836.P534746360879961615

/-! ## A091836.P13753259088846605392

`A034929(A093995(n+1)-n)`
-/

namespace A091836.P13753259088846605392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A091836.P13753259088846605392

/-! ## A091836.P6703455695774948280

`A034929(A002024(n+1)²-n)`
-/

namespace A091836.P6703455695774948280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A091836.P6703455695774948280

/-! ## A091836.P10816762024093035398

`A034929(A265129(n+1)-(n+1))`
-/

namespace A091836.P10816762024093035398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A091836.P10816762024093035398

/-! ## A091836.P10658065521570336088

`A034929(A057944(n)+A004736(n+1))`
-/

namespace A091836.P10658065521570336088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A057944 n + A004736 (n + 1)).toNat

end

end A091836.P10658065521570336088

/-!
# A091837: Smallest b>1 such that 11*n is a repdigit in base b.

The programs for A091837, there is no canonical definition to state claims against.
-/

/-! ## A091837.P6349669996526912238

`A059711(11*(n+1))`
-/

namespace A091837.P6349669996526912238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (11 * (n + 1))

end

end A091837.P6349669996526912238

/-!
# A091838: a(n) is the number of images of the border correlation function for binary words of length n (cf. link).

The programs for A091838, there is no canonical definition to state claims against.
-/

/-! ## A091838.P7210671284311985783

`A000204(n+1)-A001878(A077851(n))`
-/

namespace A091838.P7210671284311985783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A001878 (A077851 n).toNat

end

end A091838.P7210671284311985783

/-! ## A091838.P3891061936077129092

`A000032(n+1)-A122204(A097331(n+2))`
-/

namespace A091838.P3891061936077129092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A122204 (A097331 (n + 2)).toNat

end

end A091838.P3891061936077129092

/-! ## A091838.P8486545815694378302

`A140829(2*(n+2))-A348496(A299282(2*n+3))`
-/

namespace A091838.P8486545815694378302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140829 (2 * (n + 2)) - A348496 (A299282 (2 * n + 3)).toNat

end

end A091838.P8486545815694378302

/-! ## A091838.P4724667008916817979

`round(sqrt(A007310(floor(17^(n/3)))))`
-/

namespace A091838.P4724667008916817979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007310 ⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat : ℝ))

end

end A091838.P4724667008916817979

/-! ## A091838.P2103107870571519095

`A216256(A018024(n))`
-/

namespace A091838.P2103107870571519095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A018024 n).toNat

end

end A091838.P2103107870571519095

/-!
# A091839: A smoothed version of A091579.

The programs for A091839, there is no canonical definition to state claims against.
-/

/-! ## A091839.P2001188445974356728

`A091588(val(n+1, 2))`
-/

namespace A091839.P2001188445974356728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (SequenceMachineLib.valuation (n + 1) 2)

end

end A091839.P2001188445974356728

/-! ## A091839.P6755451652782724023

`A091588(Δ[A011371(n)])`
-/

namespace A091839.P6755451652782724023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (f1 (n + 1) - f1 n).toNat

end

end A091839.P6755451652782724023

/-! ## A091839.P3425807735345537356

`A091588(A007814(n+1))`
-/

namespace A091839.P3425807735345537356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (A007814 (n + 1)).toNat

end

end A091839.P3425807735345537356

/-! ## A091839.P11362749689239904765

`A091588(log2(A006519(n+1)))`
-/

namespace A091839.P11362749689239904765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

end

end A091839.P11362749689239904765

/-! ## A091839.P3138806162487302424

`A091588(A001511(n+1)-1)`
-/

namespace A091839.P3138806162487302424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (A001511 (n + 1) - 1).toNat

end

end A091839.P3138806162487302424

/-! ## A091839.P17779571517744305358

`A091588(∑{e}[A006519(n+1), #])`
-/

namespace A091839.P17779571517744305358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A091839.P17779571517744305358

/-! ## A091839.P16707112092914423909

`∏{e}[A006519(n+1), A091588(#)]`
-/

namespace A091839.P16707112092914423909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A091588 (Nat.factorization (f1 n).natAbs p)

end

end A091839.P16707112092914423909

/-! ## A091839.P13091947459701868704

`A091588(A011371(n+1)-A011371(n))`
-/

namespace A091839.P13091947459701868704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (A011371 (n + 1) - A011371 n).toNat

end

end A091839.P13091947459701868704

/-!
# A091840: Lengths of suffix blocks associated with A091787.

The programs for A091840, there is no canonical definition to state claims against.
-/

/-! ## A091840.P7192090604680518961

`A061795(A038500(n+1)%A051955(n+1))`
-/

namespace A091840.P7192090604680518961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061795 (Int.tmod (A038500 (n + 1)) (A051955 (n + 1))).toNat

end

end A091840.P7192090604680518961

/-! ## A091840.P7878320330478126565

`A072774(A038500(n+1))%A225702(n+1)`
-/

namespace A091840.P7878320330478126565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072774 (A038500 (n + 1)).toNat) (A225702 (n + 1))

end

end A091840.P7878320330478126565

/-! ## A091840.P16737508329055158984

`A080197((3^val(n+1, 3))%A335468(2*(n+1)))`
-/

namespace A091840.P16737508329055158984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (Int.tmod (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) (A335468 (2 * (n + 1)))).toNat

end

end A091840.P16737508329055158984

/-! ## A091840.P17104080481290695627

`A385755(A038500(n+1))%A265154(n+1)`
-/

namespace A091840.P17104080481290695627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385755 (A038500 (n + 1)).toNat) (A265154 (n + 1))

end

end A091840.P17104080481290695627

/-!
# A091841: Records in A091840.

The programs for A091841, there is no canonical definition to state claims against.
-/

/-! ## A091841.P17254941681376405780

`ceil(A037702(n+1)/4+n)`
-/

namespace A091841.P17254941681376405780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037702 (n + 1) : ℚ) / 4 + (n : ℚ)⌉

end

end A091841.P17254941681376405780

/-! ## A091841.P8288349171477184819

`floor((A037793(n+1)-3)/8)+n+1`
-/

namespace A091841.P8288349171477184819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037793 (n + 1) - 3 : ℚ) / 8⌋ + (n + 1 : ℤ)

end

end A091841.P8288349171477184819

/-! ## A091841.P9515901000230415767

`∑[A260731(∑[A026559(n+1)])]`
-/

namespace A091841.P9515901000230415767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091841.P9515901000230415767

/-!
# A091842: Lengths of suffix blocks associated with A091799.

The programs for A091842, the canonical program `A091842.P827728373832057480` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091842 has offset 1).

The definition of A091842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091842.P9557156830910549468

`A092982(4^val(n+1, 4)+1)`
-/

namespace A091842.P9557156830910549468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (4 ^ SequenceMachineLib.valuation (n + 1) 4 + 1)

end

end A091842.P9557156830910549468

namespace A091842

/-- `A092982(4^val(n+1, 4)+1)` -/
def P9557156830910549468.Spec : Prop :=
  ∀ n, P9557156830910549468.a n = A091842 (n + 1)

end A091842

/-! ## A091842.P3930474227883200693

`A329999(Δ[A087069(n)]!)`
-/

namespace A091842.P3930474227883200693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329999 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A091842.P3930474227883200693

namespace A091842

/-- `A329999(Δ[A087069(n)]!)` -/
def P3930474227883200693.Spec : Prop :=
  ∀ n, P3930474227883200693.a n = A091842 (n + 1)

end A091842

/-! ## A091842.P3805973900543780673

`A023190(A023190(Δ[A037462(n)]))`
-/

namespace A091842.P3805973900543780673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A023190 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091842.P3805973900543780673

namespace A091842

/-- `A023190(A023190(Δ[A037462(n)]))` -/
def P3805973900543780673.Spec : Prop :=
  ∀ n, P3805973900543780673.a n = A091842 (n + 1)

end A091842

/-! ## A091842.P16318218456056441647

`A000119(A171788(Δ[A007090(n)]))`
-/

namespace A091842.P16318218456056441647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A171788 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091842.P16318218456056441647

namespace A091842

/-- `A000119(A171788(Δ[A007090(n)]))` -/
def P16318218456056441647.Spec : Prop :=
  ∀ n, P16318218456056441647.a n = A091842 (n + 1)

end A091842

/-! ## A091842.P827728373832057480

`A095660(A095660(Δ[A007090(n)]))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A091842

/-- `A095660(A095660(Δ[A007090(n)]))` -/
def P827728373832057480.Spec : Prop :=
  ∀ n, P827728373832057480.a n = A091842 (n + 1)

theorem P827728373832057480.correct : P827728373832057480.Spec := by
  intro n
  simp only [A091842, Nat.add_sub_cancel]

end A091842

/-! ## A091842.P9273434139297540398

`A056056(A001511(n+1)^A152178(n))`
-/

namespace A091842.P9273434139297540398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (SequenceMachineLib.roundAway ((A001511 (n + 1) : ℚ) ^ (A152178 n : ℤ))).toNat

end

end A091842.P9273434139297540398

namespace A091842

/-- `A056056(A001511(n+1)^A152178(n))` -/
def P9273434139297540398.Spec : Prop :=
  ∀ n, P9273434139297540398.a n = A091842 (n + 1)

end A091842

/-! ## A091842.P9118530236667636724

`A026682(val(A134364(n+1), 4))`
-/

namespace A091842.P9118530236667636724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026682 (SequenceMachineLib.valuation (A134364 (n + 1)).toNat 4)

end

end A091842.P9118530236667636724

namespace A091842

/-- `A026682(val(A134364(n+1), 4))` -/
def P9118530236667636724.Spec : Prop :=
  ∀ n, P9118530236667636724.a n = A091842 (n + 1)

end A091842

/-!
# A091843: Records in A091842.

The programs for A091843, there is no canonical definition to state claims against.
-/

/-! ## A091843.P4703774416573346978

`A028310(A033921(n)+∑[ceil(5^n/4)])`
-/

namespace A091843.P4703774416573346978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A033921 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091843.P4703774416573346978

/-! ## A091843.P16778652926138736999

`A033921(n)+A028310(A094195(n))`
-/

namespace A091843.P16778652926138736999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n + A028310 (A094195 n).toNat

end

end A091843.P16778652926138736999

/-! ## A091843.P954021791231945029

`A094195(n)+A037800(A094198(n+1))`
-/

namespace A091843.P954021791231945029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094195 n + A037800 (A094198 (n + 1)).toNat

end

end A091843.P954021791231945029

/-!
# A091844: a(1) = 4. To get a(n+1), write the string a(1)a(2)...a(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence so far. Then a(n+1) = max(k,4).

The programs for A091844, there is no canonical definition to state claims against.
-/

/-! ## A091844.P9944919558827093746

`A113311(A001239(n+1))+val(gcd(6, (n+1)%31), 6)`
-/

namespace A091844.P9944919558827093746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A001239 (n + 1)).toNat + (SequenceMachineLib.valuation (Nat.gcd 6 ((n + 1) % 31)) 6 : ℤ)

end

end A091844.P9944919558827093746

/-! ## A091844.P17830642555920866994

`A093958(n+1)+4`
-/

namespace A091844.P17830642555920866994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093958 (n + 1) + 4

end

end A091844.P17830642555920866994

/-! ## A091844.P2495558878777995830

`A046951(A161409(n+4))+3`
-/

namespace A091844.P2495558878777995830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A161409 (n + 4)).toNat + 3

end

end A091844.P2495558878777995830

/-! ## A091844.P13573073187787618115

`A010710(A192735(n+2))`
-/

namespace A091844.P13573073187787618115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 (A192735 (n + 2)).toNat

end

end A091844.P13573073187787618115

/-! ## A091844.P15267466799124999250

`A276866(A115313(n+11)+1)`
-/

namespace A091844.P15267466799124999250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (A115313 (n + 11) + 1).toNat

end

end A091844.P15267466799124999250

/-!
# A091845: Records in sequence of lengths of suffix blocks associated with A091844.

The programs for A091845, there is no canonical definition to state claims against.
-/

/-! ## A091845.P7013213780292990054

`∑[A004698(n)+∑[ceil(6^(n-1))]]`
-/

namespace A091845.P7013213780292990054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091845.P7013213780292990054

/-! ## A091845.P220865318222201367

`∑[A211540(n)+∑[ceil(6^(n-1))]]`
-/

namespace A091845.P220865318222201367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091845.P220865318222201367

/-! ## A091845.P6405173471713435178

`∑[A083055(n+1)+∑[floor(6^(n-1))]]`
-/

namespace A091845.P6405173471713435178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083055 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091845.P6405173471713435178

/-! ## A091845.P8612809202167097509

`∑[A050365(n+2)+∑[floor(6^(n-1))]]`
-/

namespace A091845.P8612809202167097509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050365 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091845.P8612809202167097509

/-!
# A091847: Perfect totient numbers, omitting powers of 3.

The programs for A091847, there is no canonical definition to state claims against.
-/

/-! ## A091847.P4595838613024657086

`filter[A082897(n+1), A354108(#)]`
-/

namespace A091847.P4595838613024657086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A091847.P4595838613024657086

/-! ## A091847.P4293590406129813910

`∩[A082897(n+1), A177204(n+1)]`
-/

namespace A091847.P4293590406129813910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091847.P4293590406129813910

/-! ## A091847.P2705395058868745515

`∩[A113808(n+1), A177204(n+1)]`
-/

namespace A091847.P2705395058868745515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091847.P2705395058868745515

/-! ## A091847.P17842544611007456558

`∩[A082897(n+1), A284406(n+1)]`
-/

namespace A091847.P17842544611007456558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091847.P17842544611007456558

/-! ## A091847.P16035927852709976480

`∩[A113808(n+1), A284406(n+1)]`
-/

namespace A091847.P16035927852709976480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091847.P16035927852709976480

/-!
# A091848: Johnson bound J(n,4,2).

The programs for A091848, the canonical program `A091848.P14683515746087445450` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091848 has offset 1).

The definition of A091848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091848.P14683515746087445450

`floor(A182079(n)/4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091848

/-- `floor(A182079(n)/4)` -/
def P14683515746087445450.Spec : Prop :=
  ∀ n, P14683515746087445450.a n = A091848 (n + 1)

theorem P14683515746087445450.correct : P14683515746087445450.Spec := by
  intro n
  simp only [A091848, Nat.add_sub_cancel]

end A091848

/-! ## A091848.P1950761946005222413

`floor(n*(A065033(n)-1)/12)`
-/

namespace A091848.P1950761946005222413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (A065033 n - 1) : ℚ) / 12⌋

end

end A091848.P1950761946005222413

namespace A091848

/-- `floor(n*(A065033(n)-1)/12)` -/
def P1950761946005222413.Spec : Prop :=
  ∀ n, P1950761946005222413.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P4423294836361337033

`floor(n*(n-A008619(n))/12)`
-/

namespace A091848.P4423294836361337033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - A008619 n) : ℚ) / 12⌋

end

end A091848.P4423294836361337033

namespace A091848

/-- `floor(n*(n-A008619(n))/12)` -/
def P4423294836361337033.Spec : Prop :=
  ∀ n, P4423294836361337033.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P2329031568838528049

`floor((A092530(n)-A005843(n))/12)`
-/

namespace A091848.P2329031568838528049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092530 n - A005843 n : ℚ) / 12⌋

end

end A091848.P2329031568838528049

namespace A091848

/-- `floor((A092530(n)-A005843(n))/12)` -/
def P2329031568838528049.Spec : Prop :=
  ∀ n, P2329031568838528049.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P13283052209334335871

`floor(A014557(n+3)/A109613(n+4))`
-/

namespace A091848.P13283052209334335871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014557 (n + 3) : ℚ) / (A109613 (n + 4) : ℚ)⌋

end

end A091848.P13283052209334335871

namespace A091848

/-- `floor(A014557(n+3)/A109613(n+4))` -/
def P13283052209334335871.Spec : Prop :=
  ∀ n, P13283052209334335871.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P9917296927016267720

`floor(∑[A002264(A014682(n))/4])`
-/

namespace A091848.P9917296927016267720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 (A014682 n).toNat : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A091848.P9917296927016267720

namespace A091848

/-- `floor(∑[A002264(A014682(n))/4])` -/
def P9917296927016267720.Spec : Prop :=
  ∀ n, P9917296927016267720.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P5743395447106564350

`A002264(∑[A002265(A266285(n))])`
-/

namespace A091848.P5743395447106564350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A266285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091848.P5743395447106564350

namespace A091848

/-- `A002264(∑[A002265(A266285(n))])` -/
def P5743395447106564350.Spec : Prop :=
  ∀ n, P5743395447106564350.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P15481717194485992691

`A002265(A182079(n))`
-/

namespace A091848.P15481717194485992691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A182079 n).toNat

end

end A091848.P15481717194485992691

namespace A091848

/-- `A002265(A182079(n))` -/
def P15481717194485992691.Spec : Prop :=
  ∀ n, P15481717194485992691.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P977129737668970846

`A110657(or(3, A182079(n)))`
-/

namespace A091848.P977129737668970846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 3 (A182079 n)).toNat

end

end A091848.P977129737668970846

namespace A091848

/-- `A110657(or(3, A182079(n)))` -/
def P977129737668970846.Spec : Prop :=
  ∀ n, P977129737668970846.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P9518305534260640471

`A342696(A050187(n))`
-/

namespace A091848.P9518305534260640471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A050187 n).toNat

end

end A091848.P9518305534260640471

namespace A091848

/-- `A342696(A050187(n))` -/
def P9518305534260640471.Spec : Prop :=
  ∀ n, P9518305534260640471.a n = A091848 (n + 1)

end A091848

/-! ## A091848.P12352399359759200127

`A342696(A370980(n))`
-/

namespace A091848.P12352399359759200127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A370980 n).toNat

end

end A091848.P12352399359759200127

namespace A091848

/-- `A342696(A370980(n))` -/
def P12352399359759200127.Spec : Prop :=
  ∀ n, P12352399359759200127.a n = A091848 (n + 1)

end A091848

/-!
# A091849: Maximal size of (n,4,2) optical orthogonal code.

The programs for A091849, there is no canonical definition to state claims against.
-/

/-! ## A091849.P9852626323461196409

`A066339(9*A109968(n))`
-/

namespace A091849.P9852626323461196409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (9 * A109968 n).toNat

end

end A091849.P9852626323461196409

/-! ## A091849.P2360296141300715109

`floor(log2(A192789(n+1)+A192777(n+1)))`
-/

namespace A091849.P2360296141300715109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A192789 (n + 1) + A192777 (n + 1)).toNat

end

end A091849.P2360296141300715109

/-! ## A091849.P1480363418177535191

`A202304(A022433(∑[A005044(n)]))`
-/

namespace A091849.P1480363418177535191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A022433 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091849.P1480363418177535191

/-! ## A091849.P6957246071401864614

`A131209(A065033(n))+A011878(n)`
-/

namespace A091849.P6957246071401864614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A065033 n).toNat + A011878 n

end

end A091849.P6957246071401864614

/-! ## A091849.P17044672788428160707

`A130245(or(A004396(n), A023421(n)))`
-/

namespace A091849.P17044672788428160707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (Int.lor (A004396 n) (A023421 n)).toNat

end

end A091849.P17044672788428160707

/-!
# A091851: a(1) = 1; then primes associated with A091850.

The programs for A091851, there is no canonical definition to state claims against.
-/

/-! ## A091851.P3213443179997783331

`∑[(n+1)*A091850(n+1)]`
-/

namespace A091851.P3213443179997783331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091851.P3213443179997783331

/-! ## A091851.P13436883977357890929

`∑[A003056(A138126(n+1))]`
-/

namespace A091851.P13436883977357890929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A138126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091851.P13436883977357890929

/-! ## A091851.P14860514161265796101

`A122089(A038754(n+1)+n)`
-/

namespace A091851.P14860514161265796101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122089 (A038754 (n + 1) + (n : ℤ)).toNat

end

end A091851.P14860514161265796101

/-!
# A091853: a(n) is the number of numbers k such that k is obtained by permuting the digits of n and gcd(n,k) > 1.

The programs for A091853, there is no canonical definition to state claims against.
-/

/-! ## A091853.P1526449030343550886

`A067029(A027446(n+1)*A067131(n+1))`
-/

namespace A091853.P1526449030343550886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A027446 (n + 1) * A067131 (n + 1)).toNat

end

end A091853.P1526449030343550886

/-! ## A091853.P18022811453736887415

`A323022(A238864(n)*A292245(n+1))`
-/

namespace A091853.P18022811453736887415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A238864 n * A292245 (n + 1)).toNat

end

end A091853.P18022811453736887415

/-! ## A091853.P2701114439119856515

`A053251(lcm(A010553(n+1), A327103(3*n)))`
-/

namespace A091853.P2701114439119856515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (Int.lcm (A010553 (n + 1)) (A327103 (3 * n)))

end

end A091853.P2701114439119856515

/-! ## A091853.P2448370989769325340

`A257990(A008289(n+1)*A305792(n+1))`
-/

namespace A091853.P2448370989769325340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A008289 (n + 1) * A305792 (n + 1)).toNat

end

end A091853.P2448370989769325340

/-! ## A091853.P8520767249329488999

`A005136(lcm(A045778(2*(n+1)), A293429(3*n)))`
-/

namespace A091853.P8520767249329488999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.lcm (A045778 (2 * (n + 1))) (A293429 (3 * n)))

end

end A091853.P8520767249329488999

/-!
# A091854: Index of first occurrence of n in A091853, or 0 if no such number exists.

The programs for A091854, there is no canonical definition to state claims against.
-/

/-! ## A091854.P12702183843283838127

`A110060((n-1)^3+n+2)`
-/

namespace A091854.P12702183843283838127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110060 (((n : ℤ) - 1) ^ 3 + (n + 2 : ℤ)).toNat

end

end A091854.P12702183843283838127

/-!
# A091855: Odious numbers (see A000069) in A003159.

The programs for A091855, the canonical program `A091855.P1047884060551790839` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091855 has offset 1).

The definition of A091855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091855.P1047884060551790839

`A003159(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091855

/-- `A003159(2*n+1)` -/
def P1047884060551790839.Spec : Prop :=
  ∀ n, P1047884060551790839.a n = A091855 (n + 1)

theorem P1047884060551790839.correct : P1047884060551790839.Spec := by
  intro n
  simp only [A091855, Nat.add_sub_cancel]

end A091855

/-! ## A091855.P5608761426499694844

`A036554(2*(n+1)-1)/2`
-/

namespace A091855.P5608761426499694844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (2 * (n + 1) - 1) : ℚ) / 2

end

end A091855.P5608761426499694844

namespace A091855

/-- `A036554(2*(n+1)-1)/2` -/
def P5608761426499694844.Spec : Prop :=
  ∀ n, P5608761426499694844.a n = (A091855 (n + 1) : ℚ)

end A091855

/-! ## A091855.P9956470598539168293

`comp[ceil(xor(n, 2*n)/2)]`
-/

namespace A091855.P9956470598539168293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091855.P9956470598539168293

namespace A091855

/-- `comp[ceil(xor(n, 2*n)/2)]` -/
def P9956470598539168293.Spec : Prop :=
  ∀ n, (P9956470598539168293.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P13802101511060772836

`comp[xor(n+1, floor(n/2))]+1`
-/

namespace A091855.P13802101511060772836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091855.P13802101511060772836

namespace A091855

/-- `comp[xor(n+1, floor(n/2))]+1` -/
def P13802101511060772836.Spec : Prop :=
  ∀ n, (P13802101511060772836.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P18410156317588257562

`comp[and(2*n, -n)-floor(n/2)]`
-/

namespace A091855.P18410156317588257562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091855.P18410156317588257562

namespace A091855

/-- `comp[and(2*n, -n)-floor(n/2)]` -/
def P18410156317588257562.Spec : Prop :=
  ∀ n, (P18410156317588257562.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P8903906447513056525

`comp[ceil(3*n/2)-and(n, 2*n)]`
-/

namespace A091855.P8903906447513056525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ - (Nat.land n (2 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091855.P8903906447513056525

namespace A091855

/-- `comp[ceil(3*n/2)-and(n, 2*n)]` -/
def P8903906447513056525.Spec : Prop :=
  ∀ n, (P8903906447513056525.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P320440883189654651

`comp[xor(n, 2*n)-xor(n, floor(n/2))]`
-/

namespace A091855.P320440883189654651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091855.P320440883189654651

namespace A091855

/-- `comp[xor(n, 2*n)-xor(n, floor(n/2))]` -/
def P320440883189654651.Spec : Prop :=
  ∀ n, (P320440883189654651.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P15715358124794849084

`A248057(n+1)/2`
-/

namespace A091855.P15715358124794849084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248057 (n + 1) : ℚ) / 2

end

end A091855.P15715358124794849084

namespace A091855

/-- `A248057(n+1)/2` -/
def P15715358124794849084.Spec : Prop :=
  ∀ n, P15715358124794849084.a n = (A091855 (n + 1) : ℚ)

theorem P15715358124794849084.correct : P15715358124794849084.Spec := by
  intro n
  simp only [A091855, Nat.add_sub_cancel, A091855.P15715358124794849084.a, A091855.P1047884060551790839.a, A003159, A003159.P11089210282787626786.f1, A003159.P11089210282787626786.f2, A003159.P11089210282787626786.a, A248057, A248057.P14508397276911672393.a, A157971, A157971.P3473186245332457378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091855

/-! ## A091855.P14755557369263411672

`eq[0, A127254(2*n)]`
-/

namespace A091855.P14755557369263411672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091855.P14755557369263411672

namespace A091855

/-- `eq[0, A127254(2*n)]` -/
def P14755557369263411672.Spec : Prop :=
  ∀ n, (P14755557369263411672.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P11119445059434067552

`ceil(A157971(n+1)/2)`
-/

namespace A091855.P11119445059434067552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157971 (n + 1) : ℚ) / 2⌉

end

end A091855.P11119445059434067552

namespace A091855

/-- `ceil(A157971(n+1)/2)` -/
def P11119445059434067552.Spec : Prop :=
  ∀ n, P11119445059434067552.a n = A091855 (n + 1)

end A091855

/-! ## A091855.P6960837959849386395

`eq[1, A254655(2*n+1)]`
-/

namespace A091855.P6960837959849386395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091855.P6960837959849386395

namespace A091855

/-- `eq[1, A254655(2*n+1)]` -/
def P6960837959849386395.Spec : Prop :=
  ∀ n, (P6960837959849386395.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P15581389993717782229

`eq[5, A254378(2*n+1)]`
-/

namespace A091855.P15581389993717782229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091855.P15581389993717782229

namespace A091855

/-- `eq[5, A254378(2*n+1)]` -/
def P15581389993717782229.Spec : Prop :=
  ∀ n, (P15581389993717782229.a n : ℤ) = A091855 (n + 1)

end A091855

/-! ## A091855.P3438610218246336813

`A285959(n+1)-(n+1)`
-/

namespace A091855.P3438610218246336813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - (n + 1 : ℤ)

end

end A091855.P3438610218246336813

namespace A091855

/-- `A285959(n+1)-(n+1)` -/
def P3438610218246336813.Spec : Prop :=
  ∀ n, P3438610218246336813.a n = A091855 (n + 1)

end A091855

/-! ## A091855.P10090351000166987254

`A091785(n+1)-A104248(n+1)`
-/

namespace A091855.P10090351000166987254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) - A104248 (n + 1)

end

end A091855.P10090351000166987254

namespace A091855

/-- `A091785(n+1)-A104248(n+1)` -/
def P10090351000166987254.Spec : Prop :=
  ∀ n, P10090351000166987254.a n = A091855 (n + 1)

end A091855

/-! ## A091855.P493144008467482228

`lt[A127254(n), 1]/2`
-/

namespace A091855.P493144008467482228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A091855.P493144008467482228

namespace A091855

/-- `lt[A127254(n), 1]/2` -/
def P493144008467482228.Spec : Prop :=
  ∀ n, P493144008467482228.a n = (A091855 (n + 1) : ℚ)

end A091855

/-! ## A091855.P8059309170816828297

`eq[A254379(n), A254655(n+1)]/2`
-/

namespace A091855.P8059309170816828297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A091855.P8059309170816828297

namespace A091855

/-- `eq[A254379(n), A254655(n+1)]/2` -/
def P8059309170816828297.Spec : Prop :=
  ∀ n, P8059309170816828297.a n = (A091855 (n + 1) : ℚ)

end A091855

/-! ## A091855.P1919310646009093164

`A000069(A285976(n+1)-n)`
-/

namespace A091855.P1919310646009093164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A285976 (n + 1) - (n : ℤ)).toNat

end

end A091855.P1919310646009093164

namespace A091855

/-- `A000069(A285976(n+1)-n)` -/
def P1919310646009093164.Spec : Prop :=
  ∀ n, P1919310646009093164.a n = A091855 (n + 1)

end A091855

/-! ## A091855.P4455074668051841630

`filter[A000069(n+1), A035263(#)]`
-/

namespace A091855.P4455074668051841630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A091855.P4455074668051841630

namespace A091855

/-- `filter[A000069(n+1), A035263(#)]` -/
def P4455074668051841630.Spec : Prop :=
  ∀ n, P4455074668051841630.a n = A091855 (n + 1)

end A091855

/-! ## A091855.P5036115144161579080

`filter[A026147(n+1), A035263(#)]`
-/

namespace A091855.P5036115144161579080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A091855.P5036115144161579080

namespace A091855

/-- `filter[A026147(n+1), A035263(#)]` -/
def P5036115144161579080.Spec : Prop :=
  ∀ n, P5036115144161579080.a n = A091855 (n + 1)

end A091855

/-!
# A091856: Beginning with 1, minimum value such that gcd(a(2n-1),a(2n)) = 1, gcd(a(2n),a(2n+1))>1 and a(n) > a(n-1).

The programs for A091856, there is no canonical definition to state claims against.
-/

/-! ## A091856.P18129328612882747512

`A061228(a(n-1))-n%2` with `a(0)=1, a(1)=2`
-/

namespace A091856.P18129328612882747512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A091856.P18129328612882747512

/-! ## A091856.P9934618864807357240

`A159475(a(n-1))-and(1, n)` with `a(0)=1, a(1)=2`
-/

namespace A091856.P9934618864807357240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A159475 (a (n - 1)).toNat - (Nat.land 1 n : ℤ)

end

end A091856.P9934618864807357240

/-! ## A091856.P5687103846934660735

`A061228(a(n-1))-A000035(n)` with `a(0)=1, a(1)=2`
-/

namespace A091856.P5687103846934660735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - A000035 n

end

end A091856.P5687103846934660735

/-! ## A091856.P2452635339771880559

`A159475(a(n-1))-A000035(n)` with `a(0)=1, a(1)=2`
-/

namespace A091856.P2452635339771880559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A159475 (a (n - 1)).toNat - A000035 n

end

end A091856.P2452635339771880559

/-! ## A091856.P4338248750916535473

`A061228(a(n-1))-A134452(n)²` with `a(0)=1, a(1)=2`
-/

namespace A091856.P4338248750916535473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - A134452 n ^ 2

end

end A091856.P4338248750916535473

/-! ## A091856.P2085887008463784187

`A061228(a(n-1))-log2(A000034(n))` with `a(0)=1, a(1)=2`
-/

namespace A091856.P2085887008463784187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A061228 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A091856.P2085887008463784187

/-! ## A091856.P8197210571041690133

`A061228(a(n-1))-Δ[A008619(n)]` with `a(0)=1, a(1)=2`
-/

namespace A091856.P8197210571041690133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - (f1 (n + 1) - f1 n)

end

end A091856.P8197210571041690133

/-! ## A091856.P7297965968044107210

`A159475(a(n-1))-Δ[A004526(n)]` with `a(0)=1, a(1)=2`
-/

namespace A091856.P7297965968044107210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A159475 (a (n - 1)).toNat - (f1 (n + 1) - f1 n)

end

end A091856.P7297965968044107210

/-! ## A091856.P506184321929536261

`A061228(a(n-1))-char[A074368(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A091856.P506184321929536261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091856.P506184321929536261

/-! ## A091856.P13860062874217150270

`A061228(a(n-1))-char[A268716(n)+1]` with `a(0)=1, a(1)=2`
-/

namespace A091856.P13860062874217150270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268716 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061228 (a (n - 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091856.P13860062874217150270

/-!
# A091857: Beginning with 1, (a(2n-1),a(2n)) = 1, (a(2n),a(2n+1))>1; a(n) is smallest value not yet used that makes this true.

The programs for A091857, there is no canonical definition to state claims against.
-/

/-! ## A091857.P8564008695531548397

`A127202(A095791(record[A003961(n+1)]))`
-/

namespace A091857.P8564008695531548397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (A095791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A091857.P8564008695531548397

/-! ## A091857.P15423107625865339679

`A127202(A052044(n+1)%A334333(n+5))`
-/

namespace A091857.P15423107625865339679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (Int.tmod (A052044 (n + 1)) (A334333 (n + 5))).toNat

end

end A091857.P15423107625865339679

/-!
# A091858: a(n) = n! mod prime(n).

The programs for A091858, there is no canonical definition to state claims against.
-/

/-! ## A091858.P9781775767875851541

`(n+1)!%Δ[A007504(n)]`
-/

namespace A091858.P9781775767875851541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A091858.P9781775767875851541

/-! ## A091858.P11325756017559419548

`∏[n+1]%A000040(n+1)`
-/

namespace A091858.P11325756017559419548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000040 (n + 1))

end

end A091858.P11325756017559419548

/-! ## A091858.P16774478315629793130

`((n+1)*n!)%record[A006530(n+2)]`
-/

namespace A091858.P16774478315629793130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * Nat.factorial n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091858.P16774478315629793130

/-! ## A091858.P3366101529427796473

`C(n+1, n)!%record[A014963(n+2)]`
-/

namespace A091858.P3366101529427796473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (Nat.choose (n + 1) n) : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091858.P3366101529427796473

/-! ## A091858.P451918203545538919

`-xor(n, -1)!%record[A020639(n+2)]`
-/

namespace A091858.P451918203545538919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (-Int.xor (n : ℤ) (-1)).toNat : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091858.P451918203545538919

/-! ## A091858.P6492924833914057355

`∏[2*n+1-n]%record[A000010(n+1)+1]`
-/

namespace A091858.P6492924833914057355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A091858.P6492924833914057355

/-! ## A091858.P4893309233263456226

`A000142(n+1)%record[A014963(n+2)]`
-/

namespace A091858.P4893309233263456226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091858.P4893309233263456226

/-!
# A091859: a(1) = 2, a(n) is the least prime of the form 2k*a(n-1)+1 where 2k is the least even number not used earlier.

The programs for A091859, there is no canonical definition to state claims against.
-/

/-! ## A091859.P12427114861525121778

`p?[(A000040(n)-1)*a(n-1)+1]` with `a(0)=2, a(1)=0`
-/

namespace A091859.P12427114861525121778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (A000040 n - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091859.P12427114861525121778

/-! ## A091859.P13482571087431268141

`A006530(lcm(A000040(n+2)-1, a(n-1))+1)` with `a(0)=2`
-/

namespace A091859.P13482571087431268141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (Int.lcm (A000040 (n + 2) - 1) (a (n - 1)) + 1)

end

end A091859.P13482571087431268141

/-!
# A091860: a(1)=1, a(n)=sum(i=1,n-1,b(i)) where b(i)=0 if a(i) and a(n-i) are both even, b(i)=1 otherwise.

The programs for A091860, there is no canonical definition to state claims against.
-/

/-! ## A091860.P14182979606664751802

`2*A070939(n)-A159981(n)`
-/

namespace A091860.P14182979606664751802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070939 n - A159981 n

end

end A091860.P14182979606664751802

/-! ## A091860.P4115581744335952461

`A123273(n)+2%A048896(n)`
-/

namespace A091860.P4115581744335952461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123273 n + Int.tmod 2 (A048896 n)

end

end A091860.P4115581744335952461

/-! ## A091860.P13053676837860473563

`A005843(A070939(n))-A159981(n)`
-/

namespace A091860.P13053676837860473563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A070939 n).toNat - A159981 n

end

end A091860.P13053676837860473563

/-! ## A091860.P9032140942705328674

`A005843(A070939(n))-A000108(n)%4`
-/

namespace A091860.P9032140942705328674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A070939 n).toNat - Int.tmod (A000108 n) 4

end

end A091860.P9032140942705328674

/-! ## A091860.P13255637230576552804

`A175453(A137173(n+1))`
-/

namespace A091860.P13255637230576552804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175453 (A137173 (n + 1)).toNat

end

end A091860.P13255637230576552804

/-!
# A091861: a(1) = 1; a(n) = smallest positive unpicked integer such that n-k divides evenly into a(n)*a(k) for every k, 1 <= k <= n-1.

The programs for A091861, there is no canonical definition to state claims against.
-/

/-! ## A091861.P5347585150996735075

`A196444(n+1)/A329344(n+1)`
-/

namespace A091861.P5347585150996735075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196444 (n + 1) : ℚ) / (A329344 (n + 1) : ℚ)

end

end A091861.P5347585150996735075

/-! ## A091861.P3852164762298901992

`A196444(n+1)/A350032(n+1)`
-/

namespace A091861.P3852164762298901992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196444 (n + 1) : ℚ) / (A350032 (n + 1) : ℚ)

end

end A091861.P3852164762298901992

/-! ## A091861.P829839024546808475

`A196444(n+1)/A079900(n+3)`
-/

namespace A091861.P829839024546808475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196444 (n + 1) : ℚ) / (A079900 (n + 3) : ℚ)

end

end A091861.P829839024546808475

/-! ## A091861.P10396819820241988843

`A196444(n+1)/A008289(n+5)`
-/

namespace A091861.P10396819820241988843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196444 (n + 1) : ℚ) / (A008289 (n + 5) : ℚ)

end

end A091861.P10396819820241988843

/-!
# A091862: a(n) = 1 if the sum of all exponents of the prime-factorization of n has no carries when summed in base 2, or a(n) = 0 if there are any carries.

The programs for A091862, the canonical program `A091862.P4023998878000536038` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091862 has offset 1).

The definition of A091862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091862.P4023998878000536038

`(∑{e}[n+1, #]!/∏{e}[n+1, #!])%2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091862

/-- `(∑{e}[n+1, #]!/∏{e}[n+1, #!])%2` -/
def P4023998878000536038.Spec : Prop :=
  ∀ n, P4023998878000536038.a n = A091862 (n + 1)

theorem P4023998878000536038.correct : P4023998878000536038.Spec := by
  intro n
  simp only [A091862, Nat.add_sub_cancel]

end A091862

/-! ## A091862.P9323630872784675577

`and(1, ∑{e}[n+1, #]!/∏{e}[n+1, #!])`
-/

namespace A091862.P9323630872784675577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)))

end

end A091862.P9323630872784675577

namespace A091862

/-- `and(1, ∑{e}[n+1, #]!/∏{e}[n+1, #!])` -/
def P9323630872784675577.Spec : Prop :=
  ∀ n, P9323630872784675577.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P15048106599064017666

`A008480(n+1)%2`
-/

namespace A091862.P15048106599064017666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) 2

end

end A091862.P15048106599064017666

namespace A091862

/-- `A008480(n+1)%2` -/
def P15048106599064017666.Spec : Prop :=
  ∀ n, P15048106599064017666.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P18141344247253796304

`A384204(n+1)%2`
-/

namespace A091862.P18141344247253796304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384204 (n + 1)) 2

end

end A091862.P18141344247253796304

namespace A091862

/-- `A384204(n+1)%2` -/
def P18141344247253796304.Spec : Prop :=
  ∀ n, P18141344247253796304.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P18391062070898785192

`and(1, A346104(n+1))`
-/

namespace A091862.P18391062070898785192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346104 (n + 1))

end

end A091862.P18391062070898785192

namespace A091862

/-- `and(1, A346104(n+1))` -/
def P18391062070898785192.Spec : Prop :=
  ∀ n, P18391062070898785192.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P3467023534575749456

`and(1, A355939(n+1))`
-/

namespace A091862.P3467023534575749456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A355939 (n + 1))

end

end A091862.P3467023534575749456

namespace A091862

/-- `and(1, A355939(n+1))` -/
def P3467023534575749456.Spec : Prop :=
  ∀ n, P3467023534575749456.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P10295110808315306376

`gcd(2, A335447(n+1))-1`
-/

namespace A091862.P10295110808315306376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A335447 (n + 1)) : ℤ) - 1

end

end A091862.P10295110808315306376

namespace A091862

/-- `gcd(2, A335447(n+1))-1` -/
def P10295110808315306376.Spec : Prop :=
  ∀ n, P10295110808315306376.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P15927079813524159215

`C(2, A268374(n+1)+2)`
-/

namespace A091862.P15927079813524159215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A268374 (n + 1) + 2).toNat

end

end A091862.P15927079813524159215

namespace A091862

/-- `C(2, A268374(n+1)+2)` -/
def P15927079813524159215.Spec : Prop :=
  ∀ n, (P15927079813524159215.a n : ℤ) = A091862 (n + 1)

end A091862

/-! ## A091862.P15252487770419030457

`(A001222(n+1)!/∏{e}[n+1, #!])%2`
-/

namespace A091862.P15252487770419030457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ))) 2

end

end A091862.P15252487770419030457

namespace A091862

/-- `(A001222(n+1)!/∏{e}[n+1, #!])%2` -/
def P15252487770419030457.Spec : Prop :=
  ∀ n, P15252487770419030457.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P5974263379778733762

`A000035(A008480(n+1))`
-/

namespace A091862.P5974263379778733762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008480 (n + 1)).toNat

end

end A091862.P5974263379778733762

namespace A091862

/-- `A000035(A008480(n+1))` -/
def P5974263379778733762.Spec : Prop :=
  ∀ n, P5974263379778733762.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P4500225946677242952

`A008966(A293442(n+1))`
-/

namespace A091862.P4500225946677242952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A293442 (n + 1)).toNat

end

end A091862.P4500225946677242952

namespace A091862

/-- `A008966(A293442(n+1))` -/
def P4500225946677242952.Spec : Prop :=
  ∀ n, P4500225946677242952.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P1671963745474015317

`A264739(A008480(n+1)+1)`
-/

namespace A091862.P1671963745474015317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (A008480 (n + 1) + 1).toNat

end

end A091862.P1671963745474015317

namespace A091862

/-- `A264739(A008480(n+1)+1)` -/
def P1671963745474015317.Spec : Prop :=
  ∀ n, P1671963745474015317.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P5870734086981034923

`A318762(A181819(n+1))%2`
-/

namespace A091862.P5870734086981034923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318762 (A181819 (n + 1)).toNat) 2

end

end A091862.P5870734086981034923

namespace A091862

/-- `A318762(A181819(n+1))%2` -/
def P5870734086981034923.Spec : Prop :=
  ∀ n, P5870734086981034923.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P13592269297108429530

`and(A016760(n), A384204(n+1))`
-/

namespace A091862.P13592269297108429530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A384204 (n + 1))

end

end A091862.P13592269297108429530

namespace A091862

/-- `and(A016760(n), A384204(n+1))` -/
def P13592269297108429530.Spec : Prop :=
  ∀ n, P13592269297108429530.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P14398232609157684433

`∑{d}[A008480(n+1), A154955(#)]`
-/

namespace A091862.P14398232609157684433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A154955 d

end

end A091862.P14398232609157684433

namespace A091862

/-- `∑{d}[A008480(n+1), A154955(#)]` -/
def P14398232609157684433.Spec : Prop :=
  ∀ n, P14398232609157684433.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P13859779668544924329

`abs(A008683(∏{e}[n+1, A019565(#)]))`
-/

namespace A091862.P13859779668544924329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (∏ p ∈ Nat.primeFactors (f1 n), A019565 (Nat.factorization (f1 n) p)).toNat|

end

end A091862.P13859779668544924329

namespace A091862

/-- `abs(A008683(∏{e}[n+1, A019565(#)]))` -/
def P13859779668544924329.Spec : Prop :=
  ∀ n, P13859779668544924329.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P4606381627386916650

`A176895(2*A008480(n+1))-1`
-/

namespace A091862.P4606381627386916650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * A008480 (n + 1)).toNat - 1

end

end A091862.P4606381627386916650

namespace A091862

/-- `A176895(2*A008480(n+1))-1` -/
def P4606381627386916650.Spec : Prop :=
  ∀ n, P4606381627386916650.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P7573238521525913318

`A093719(3*(A008480(n+1)+1)+1)`
-/

namespace A091862.P7573238521525913318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (3 * (A008480 (n + 1) + 1) + 1).toNat

end

end A091862.P7573238521525913318

namespace A091862

/-- `A093719(3*(A008480(n+1)+1)+1)` -/
def P7573238521525913318.Spec : Prop :=
  ∀ n, P7573238521525913318.a n = A091862 (n + 1)

end A091862

/-! ## A091862.P7331690858976007630

`A268374(a(n-1)+1)^A268374(n+1)` with `a(0)=1`
-/

namespace A091862.P7331690858976007630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A268374 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A268374 (n + 1) : ℤ)

end

end A091862.P7331690858976007630

namespace A091862

/-- `A268374(a(n-1)+1)^A268374(n+1)` -/
def P7331690858976007630.Spec : Prop :=
  ∀ n, P7331690858976007630.a n = (A091862 (n + 1) : ℚ)

end A091862

/-! ## A091862.P12808648411654976679

`char[lt[A289618(n+1), 1]]`
-/

namespace A091862.P12808648411654976679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A091862.P12808648411654976679

namespace A091862

/-- `char[lt[A289618(n+1), 1]]` -/
def P12808648411654976679.Spec : Prop :=
  ∀ n, (P12808648411654976679.a n : ℤ) = A091862 (n + 1)

end A091862

/-!
# A091863: Partial sums of A091862.

The programs for A091863, there is no canonical definition to state claims against.
-/

/-! ## A091863.P18293234141839648821

`∑[(∑{e}[n+1, #]!/∏{e}[n+1, #!])%2]`
-/

namespace A091863.P18293234141839648821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P18293234141839648821

/-! ## A091863.P11847487718530063775

`∑[and(1, ∑{e}[n+1, #]!/∏{e}[n+1, #!])]`
-/

namespace A091863.P11847487718530063775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P11847487718530063775

/-! ## A091863.P5625939658000820929

`∑[A091862(n+1)]`
-/

namespace A091863.P5625939658000820929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P5625939658000820929

/-! ## A091863.P13614926847252513610

`∑[A008480(n+1)%2]`
-/

namespace A091863.P13614926847252513610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P13614926847252513610

/-! ## A091863.P5636503264569735925

`∑[A349056(n+1)%2]`
-/

namespace A091863.P5636503264569735925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349056 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P5636503264569735925

/-! ## A091863.P14072449731737596182

`∑[and(1, A321747(n+1))]`
-/

namespace A091863.P14072449731737596182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A321747 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P14072449731737596182

/-! ## A091863.P14863726810750205669

`∑[and(1, A346104(n+1))]`
-/

namespace A091863.P14863726810750205669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346104 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P14863726810750205669

/-! ## A091863.P16084233923770513324

`A091862((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A091863.P16084233923770513324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091862 ((n + 1) ^ 2) + a (n - 1)

end

end A091863.P16084233923770513324

/-! ## A091863.P14083831176787817223

`∑[A008683(∏{e}[n+1, #²+1])²]`
-/

namespace A091863.P14083831176787817223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p ^ 2 + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091863.P14083831176787817223

/-!
# A091865: G.f. satisfies A(x) = 1 + x*A(x)*A(x^2)*A(x^3)*...*A(x^n)*...

The programs for A091865, there is no canonical definition to state claims against.
-/

/-! ## A091865.P4887886965727884817

`A008676(A210021(n+2)+1)`
-/

namespace A091865.P4887886965727884817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A210021 (n + 2) + 1).toNat

end

end A091865.P4887886965727884817

/-! ## A091865.P3417526894283102701

`floor(sqrt(∑[A190915(n+1)-n]))`
-/

namespace A091865.P3417526894283102701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190915 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091865.P3417526894283102701

/-! ## A091865.P16955715013621508274

`ceil(A319646(2*n+1)/(∑[n+1]+5))`
-/

namespace A091865.P16955715013621508274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319646 (2 * n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℚ)⌉

end

end A091865.P16955715013621508274

/-! ## A091865.P11640369435041887708

`A100617(A148459(n))`
-/

namespace A091865.P11640369435041887708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A148459 n).toNat

end

end A091865.P11640369435041887708

/-! ## A091865.P4687954959578028079

`A100617(A393769(n))`
-/

namespace A091865.P4687954959578028079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A393769 n).toNat

end

end A091865.P4687954959578028079

/-!
# A091866: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having pyramid weight k.

The programs for A091866, there is no canonical definition to state claims against.
-/

/-! ## A091866.P8384018121591603547

`A111146(n)/A101211(A000672(n))`
-/

namespace A091866.P8384018121591603547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111146 n : ℚ) / (A101211 (A000672 n).toNat : ℚ)

end

end A091866.P8384018121591603547

/-! ## A091866.P5009396841976396172

`A111146(n)/A351420(A102480(n))`
-/

namespace A091866.P5009396841976396172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111146 n : ℚ) / (A351420 (A102480 n).toNat : ℚ)

end

end A091866.P5009396841976396172

/-! ## A091866.P5870224968460825739

`gcd(A036850(A336163(n)), A111146(n))`
-/

namespace A091866.P5870224968460825739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036850 (A336163 n).toNat) (A111146 n)

end

end A091866.P5870224968460825739

/-! ## A091866.P9091959269445901938

`A334622(n)-A060576(A325013(n+1))`
-/

namespace A091866.P9091959269445901938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 n - A060576 (A325013 (n + 1)).toNat

end

end A091866.P9091959269445901938

/-! ## A091866.P11825637285216636092

`A111146(n)^A290460(A325013(n+1))`
-/

namespace A091866.P11825637285216636092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111146 n : ℚ) ^ (A290460 (A325013 (n + 1)).toNat : ℤ)

end

end A091866.P11825637285216636092

/-!
# A091867: Triangle read by rows: T(n,k) = number of Dyck paths of semilength n having k peaks at odd height.

The programs for A091867, the canonical program `A091867.P15710449933827193925` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091867 has offset 0).

The definition of A091867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091867.P15710449933827193925

`A007318(n)*A005043(A025581(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091867

/-- `A007318(n)*A005043(A025581(n))` -/
def P15710449933827193925.Spec : Prop :=
  ∀ n, P15710449933827193925.a n = A091867 n

theorem P15710449933827193925.correct : P15710449933827193925.Spec := by
  intro n
  simp only [A091867]

end A091867

/-! ## A091867.P2837695698335006693

`A124926(A061579(n))`
-/

namespace A091867.P2837695698335006693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124926 (A061579 n).toNat

end

end A091867.P2837695698335006693

namespace A091867

/-- `A124926(A061579(n))` -/
def P2837695698335006693.Spec : Prop :=
  ∀ n, P2837695698335006693.a n = A091867 n

end A091867

/-! ## A091867.P8587998183678046991

`A124926(A114327(n)+n)`
-/

namespace A091867.P8587998183678046991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124926 (A114327 n + (n : ℤ)).toNat

end

end A091867.P8587998183678046991

namespace A091867

/-- `A124926(A114327(n)+n)` -/
def P8587998183678046991.Spec : Prop :=
  ∀ n, P8587998183678046991.a n = A091867 n

end A091867

/-! ## A091867.P11716736263587688725

`A124926(A038722(n+1)-1)`
-/

namespace A091867.P11716736263587688725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124926 (A038722 (n + 1) - 1).toNat

end

end A091867.P11716736263587688725

namespace A091867

/-- `A124926(A038722(n+1)-1)` -/
def P11716736263587688725.Spec : Prop :=
  ∀ n, P11716736263587688725.a n = A091867 n

end A091867

/-! ## A091867.P14721397668323893816

`A124926(A038722(n+2))`
-/

namespace A091867.P14721397668323893816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124926 (A038722 (n + 2)).toNat

end

end A091867.P14721397668323893816

namespace A091867

/-- `A124926(A038722(n+2))` -/
def P14721397668323893816.Spec : Prop :=
  ∀ n, P14721397668323893816.a n = A091867 n

end A091867

/-!
# A091868: a(n) = (n!)^(n+1).

The programs for A091868, the canonical program `A091868.P5525084501402041512` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091868 has offset 0).

The definition of A091868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^(n+1)` (program `A091868.P5525084501402041512`, by `A091868.P5525084501402041512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091868.P5525084501402041512

`n!^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091868

/-- `n!^(n+1)` -/
def P5525084501402041512.Spec : Prop :=
  ∀ n, (P5525084501402041512.a n : ℤ) = A091868 n

theorem P5525084501402041512.correct : P5525084501402041512.Spec := by
  intro n
  simp only [A091868]

end A091868

/-! ## A091868.P18237706658006426162

`n!^n*n!`
-/

namespace A091868.P18237706658006426162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ n * Nat.factorial n

end

end A091868.P18237706658006426162

namespace A091868

/-- `n!^n*n!` -/
def P18237706658006426162.Spec : Prop :=
  ∀ n, (P18237706658006426162.a n : ℤ) = A091868 n

theorem P18237706658006426162.correct : P18237706658006426162.Spec := by
  intro n
  simp only [A091868, Nat.add_sub_cancel, A091868.P18237706658006426162.a, A091868.P5525084501402041512.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091868

/-! ## A091868.P14214469515508410788

`root(n!, 2/(n+1))²`
-/

namespace A091868.P14214469515508410788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℝ) ^ (1 / (2 / (n + 1 : ℚ) : ℝ))) ^ 2

end

end A091868.P14214469515508410788

namespace A091868

/-- `root(n!, 2/(n+1))²` -/
def P14214469515508410788.Spec : Prop :=
  ∀ n, P14214469515508410788.a n = (A091868 n : ℝ)

end A091868

/-! ## A091868.P18012303592592335696

`∏[round(1/acot(n))]^(n+1)`
-/

namespace A091868.P18012303592592335696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A091868.P18012303592592335696

namespace A091868

/-- `∏[round(1/acot(n))]^(n+1)` -/
def P18012303592592335696.Spec : Prop :=
  ∀ n, P18012303592592335696.a n = A091868 n

end A091868

/-! ## A091868.P13461279442358799202

`(n*a(n-1)^(1/n))^(n+1)` with `a(0)=1`
-/

namespace A091868.P13461279442358799202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℝ) * a (n - 1) ^ (1 / (n : ℚ) : ℝ)) ^ (n + 1)

end

end A091868.P13461279442358799202

namespace A091868

/-- `(n*a(n-1)^(1/n))^(n+1)` -/
def P13461279442358799202.Spec : Prop :=
  ∀ n, P13461279442358799202.a n = (A091868 n : ℝ)

end A091868

/-!
# A091869: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k peaks at even height.

The programs for A091869, the canonical program `A091869.P5949036612487565607` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091869 has offset 1).

The definition of A091869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091869.P5949036612487565607

`A091187(A038722(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A091869

/-- `A091187(A038722(n+1))` -/
def P5949036612487565607.Spec : Prop :=
  ∀ n, P5949036612487565607.a n = A091869 (n + 1)

theorem P5949036612487565607.correct : P5949036612487565607.Spec := by
  intro n
  simp only [A091869, Nat.add_sub_cancel]

end A091869

/-! ## A091869.P15593671492707711607

`A091187(A061579(n)+1)`
-/

namespace A091869.P15593671492707711607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A061579 n + 1).toNat

end

end A091869.P15593671492707711607

namespace A091869

/-- `A091187(A061579(n)+1)` -/
def P15593671492707711607.Spec : Prop :=
  ∀ n, P15593671492707711607.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P1687733608111877422

`A007318(n)*A001006(A025581(n))`
-/

namespace A091869.P1687733608111877422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001006 (A025581 n).toNat

end

end A091869.P1687733608111877422

namespace A091869

/-- `A007318(n)*A001006(A025581(n))` -/
def P1687733608111877422.Spec : Prop :=
  ∀ n, P1687733608111877422.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P6117069742497246355

`abs(A001006(A025581(n))*A130595(n))`
-/

namespace A091869.P6117069742497246355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (A025581 n).toNat * A130595 n|

end

end A091869.P6117069742497246355

namespace A091869

/-- `abs(A001006(A025581(n))*A130595(n))` -/
def P6117069742497246355.Spec : Prop :=
  ∀ n, P6117069742497246355.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P8337340499675493286

`A130595(n)*A166587(A004736(n+1))`
-/

namespace A091869.P8337340499675493286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A166587 (A004736 (n + 1)).toNat

end

end A091869.P8337340499675493286

namespace A091869

/-- `A130595(n)*A166587(A004736(n+1))` -/
def P8337340499675493286.Spec : Prop :=
  ∀ n, P8337340499675493286.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P13321262221933966811

`(A097805(n+1)+A097805(n))*A001006(A025581(n))`
-/

namespace A091869.P13321262221933966811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A001006 (A025581 n).toNat

end

end A091869.P13321262221933966811

namespace A091869

/-- `(A097805(n+1)+A097805(n))*A001006(A025581(n))` -/
def P13321262221933966811.Spec : Prop :=
  ∀ n, P13321262221933966811.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P15058570915061565122

`(A102363(n+1)-A102363(n))*A001006(A025581(n))`
-/

namespace A091869.P15058570915061565122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102363 (n + 1) - A102363 n) * A001006 (A025581 n).toNat

end

end A091869.P15058570915061565122

namespace A091869

/-- `(A102363(n+1)-A102363(n))*A001006(A025581(n))` -/
def P15058570915061565122.Spec : Prop :=
  ∀ n, P15058570915061565122.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P13041117604376575871

`A007318(n)*A166587(A004736(n+1))*A097807(n)`
-/

namespace A091869.P13041117604376575871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166587 (A004736 (n + 1)).toNat * A097807 n

end

end A091869.P13041117604376575871

namespace A091869

/-- `A007318(n)*A166587(A004736(n+1))*A097807(n)` -/
def P13041117604376575871.Spec : Prop :=
  ∀ n, P13041117604376575871.a n = A091869 (n + 1)

end A091869

/-! ## A091869.P14230281798854712827

`A091187(A000194(2*n+1)²-n)`
-/

namespace A091869.P14230281798854712827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A091869.P14230281798854712827

namespace A091869

/-- `A091187(A000194(2*n+1)²-n)` -/
def P14230281798854712827.Spec : Prop :=
  ∀ n, P14230281798854712827.a n = A091869 (n + 1)

end A091869

/-!
# A091870: A trinomial transform of Fibonacci(3n).

The programs for A091870, the canonical program `A091870.P8620863928401513789` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091870 has offset 0).

The definition of A091870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091870.P8620863928401513789

`8*a(n-1)-11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091870

/-- `8*a(n-1)-11*a(n-2)` -/
def P8620863928401513789.Spec : Prop :=
  ∀ n, P8620863928401513789.a n = A091870 n

theorem P8620863928401513789.correct : P8620863928401513789.Spec := by
  intro n
  simp only [A091870]

end A091870

/-! ## A091870.P5975170841646886398

`sqrt(5)*((4+sqrt(5))^n-(4-sqrt(5))^n)/10`
-/

namespace A091870.P5975170841646886398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 : ℝ) * ((4 + Real.sqrt (5 : ℝ)) ^ n - (4 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A091870.P5975170841646886398

namespace A091870

/-- `sqrt(5)*((4+sqrt(5))^n-(4-sqrt(5))^n)/10` -/
def P5975170841646886398.Spec : Prop :=
  ∀ n, P5975170841646886398.a n = (A091870 n : ℝ)

theorem P5975170841646886398.correct : P5975170841646886398.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A091870, Nat.add_sub_cancel, A091870.P5975170841646886398.a, A091870.P8620863928401513789.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A091870, Nat.add_sub_cancel, A091870.P5975170841646886398.a, A091870.P8620863928401513789.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A091870

/-! ## A091870.P15831184251694420219

`ogf(x/(1-8x+11x^2))`
-/

namespace A091870.P15831184251694420219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 11] n

end

end A091870.P15831184251694420219

namespace A091870

/-- `ogf(x/(1-8x+11x^2))` -/
def P15831184251694420219.Spec : Prop :=
  ∀ n, P15831184251694420219.a n = A091870 n

end A091870

/-! ## A091870.P12341664637620595729

`A292466(∑[n]+n)`
-/

namespace A091870.P12341664637620595729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A091870.P12341664637620595729

namespace A091870

/-- `A292466(∑[n]+n)` -/
def P12341664637620595729.Spec : Prop :=
  ∀ n, P12341664637620595729.a n = A091870 n

end A091870

/-! ## A091870.P78671574372759255

`record[A103452(n)*A292466(n)]`
-/

namespace A091870.P78671574372759255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A292466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091870.P78671574372759255

namespace A091870

/-- `record[A103452(n)*A292466(n)]` -/
def P78671574372759255.Spec : Prop :=
  ∀ n, P78671574372759255.a n = A091870 n

end A091870

/-! ## A091870.P4266157194432298856

`record[A292466(n)/A143007(n)]`
-/

namespace A091870.P4266157194432298856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292466 n : ℚ) / (A143007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091870.P4266157194432298856

namespace A091870

/-- `record[A292466(n)/A143007(n)]` -/
def P4266157194432298856.Spec : Prop :=
  ∀ n, P4266157194432298856.a n = (A091870 n : ℚ)

end A091870

/-!
# A091871: A091633 indexed by A000040.

The programs for A091871, the canonical program `A091871.P8902696831286629578` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091871 has offset 1).

The definition of A091871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A091633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091871.P8902696831286629578

`A049084(A091633(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091871

/-- `A049084(A091633(n+1))` -/
def P8902696831286629578.Spec : Prop :=
  ∀ n, P8902696831286629578.a n = A091871 (n + 1)

theorem P8902696831286629578.correct : P8902696831286629578.Spec := by
  intro n
  simp only [A091871, Nat.add_sub_cancel]

end A091871

/-! ## A091871.P7680257373505910810

`A000720(p?[A136333(n+1)])`
-/

namespace A091871.P7680257373505910810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091871.P7680257373505910810

namespace A091871

/-- `A000720(p?[A136333(n+1)])` -/
def P7680257373505910810.Spec : Prop :=
  ∀ n, P7680257373505910810.a n = A091871 (n + 1)

end A091871

/-! ## A091871.P11295884094468238153

`A061395(p?[A091633(n+1)])`
-/

namespace A091871.P11295884094468238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091871.P11295884094468238153

namespace A091871

/-- `A061395(p?[A091633(n+1)])` -/
def P11295884094468238153.Spec : Prop :=
  ∀ n, P11295884094468238153.a n = A091871 (n + 1)

end A091871

/-! ## A091871.P12032873688806263362

`A061395(or(1, A091633(n+1)))`
-/

namespace A091871.P12032873688806263362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A091633 (n + 1))).toNat

end

end A091871.P12032873688806263362

namespace A091871

/-- `A061395(or(1, A091633(n+1)))` -/
def P12032873688806263362.Spec : Prop :=
  ∀ n, P12032873688806263362.a n = A091871 (n + 1)

end A091871

/-! ## A091871.P12691059888756482612

`A061395(char[A061395(n+1)]*A091633(n+1))`
-/

namespace A091871.P12691059888756482612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A091633 (n + 1)).toNat

end

end A091871.P12691059888756482612

namespace A091871

/-- `A061395(char[A061395(n+1)]*A091633(n+1))` -/
def P12691059888756482612.Spec : Prop :=
  ∀ n, P12691059888756482612.a n = A091871 (n + 1)

end A091871

/-! ## A091871.P1111587857014401150

`A061395(2*A091633(n+1))`
-/

namespace A091871.P1111587857014401150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A091633 (n + 1)).toNat

end

end A091871.P1111587857014401150

namespace A091871

/-- `A061395(2*A091633(n+1))` -/
def P1111587857014401150.Spec : Prop :=
  ∀ n, P1111587857014401150.a n = A091871 (n + 1)

end A091871

/-! ## A091871.P18208987038878084477

`A061395(lcm(2, A091633(n+1)))`
-/

namespace A091871.P18208987038878084477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A091633 (n + 1)))

end

end A091871.P18208987038878084477

namespace A091871

/-- `A061395(lcm(2, A091633(n+1)))` -/
def P18208987038878084477.Spec : Prop :=
  ∀ n, P18208987038878084477.a n = A091871 (n + 1)

end A091871

/-!
# A091872: Primes arising in A086678.

The programs for A091872, there is no canonical definition to state claims against.
-/

/-! ## A091872.P6239474604365575474

`p?[∑[2*n^5]+1]`
-/

namespace A091872.P6239474604365575474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091872.P6239474604365575474

/-!
# A091873: Square roots of A068165.

The programs for A091873, there is no canonical definition to state claims against.
-/

/-! ## A091873.P14144907884223947520

`sqrt(A068165(n+1))`
-/

namespace A091873.P14144907884223947520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068165 (n + 1) : ℝ)

end

end A091873.P14144907884223947520

/-! ## A091873.P697367138756960475

`A000027(root(A068165(n+1), 2))`
-/

namespace A091873.P697367138756960475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A068165 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A091873.P697367138756960475

/-! ## A091873.P14153379718053708817

`A262689(A068165(n+1)+1)`
-/

namespace A091873.P14153379718053708817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A068165 (n + 1) + 1).toNat

end

end A091873.P14153379718053708817

/-! ## A091873.P173717355107345305

`A056926(lcm(A054977(n), A068165(n+1)))`
-/

namespace A091873.P173717355107345305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lcm (A054977 n) (A068165 (n + 1)))

end

end A091873.P173717355107345305

/-! ## A091873.P13199114343290248572

`A056926(A068165(n+1)/A054977(n+2))`
-/

namespace A091873.P13199114343290248572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A068165 (n + 1) : ℚ) / (A054977 (n + 2) : ℚ))).toNat

end

end A091873.P13199114343290248572

/-! ## A091873.P6485666487958565718

`A018851(A068165(n+1))%A002383(n+1)`
-/

namespace A091873.P6485666487958565718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018851 (A068165 (n + 1)).toNat) (A002383 (n + 1))

end

end A091873.P6485666487958565718

/-! ## A091873.P9021746228478793234

`A018851(A068165(n+1)%A244497(n+1))`
-/

namespace A091873.P9021746228478793234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Int.tmod (A068165 (n + 1)) (A244497 (n + 1))).toNat

end

end A091873.P9021746228478793234

/-! ## A091873.P5510604232267051540

`A000188(A068165(-xor(n, -1)))`
-/

namespace A091873.P5510604232267051540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A068165 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A091873.P5510604232267051540

/-! ## A091873.P12814126799804034685

`A000196(A068165(n+1)+1)`
-/

namespace A091873.P12814126799804034685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A068165 (n + 1) + 1).toNat

end

end A091873.P12814126799804034685

/-! ## A091873.P10263627737025360875

`A010341(A068165(n+1)+2)`
-/

namespace A091873.P10263627737025360875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010341 (A068165 (n + 1) + 2).toNat

end

end A091873.P10263627737025360875

/-!
# A091875: Square roots of squares in A068176.

The programs for A091875, there is no canonical definition to state claims against.
-/

/-! ## A091875.P10316056489009526337

`sqrt(A068176(n+2))`
-/

namespace A091875.P10316056489009526337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068176 (n + 2) : ℝ)

end

end A091875.P10316056489009526337

/-!
# A091876: Square roots of squares in A068177.

The programs for A091876, there is no canonical definition to state claims against.
-/

/-! ## A091876.P13819110506370036646

`sqrt(A068177(n+2))`
-/

namespace A091876.P13819110506370036646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068177 (n + 2) : ℝ)

end

end A091876.P13819110506370036646

/-!
# A091877: Square roots of A068178.

The programs for A091877, there is no canonical definition to state claims against.
-/

/-! ## A091877.P6208910561641121118

`sqrt(A068178(n+1))`
-/

namespace A091877.P6208910561641121118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068178 (n + 1) : ℝ)

end

end A091877.P6208910561641121118

/-! ## A091877.P7821906750799791279

`root(A068178(n+1), ratio[A000079(n)])`
-/

namespace A091877.P7821906750799791279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068178 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A091877.P7821906750799791279

/-! ## A091877.P13703347437460872277

`root(A068178(n+1), p?[A143380(n)])`
-/

namespace A091877.P13703347437460872277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068178 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A091877.P13703347437460872277

/-! ## A091877.P7441039514331828782

`root(A068178(n+1), A020639(2*(n+3)))`
-/

namespace A091877.P7441039514331828782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068178 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 3)) : ℝ))

end

end A091877.P7441039514331828782

/-!
# A091880: A049232 indexed by A000040.

The programs for A091880, the canonical program `A091880.P8321771741329377910` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091880 has offset 1).

The definition of A091880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091880.P16843979915057883605

`A000720(A049232(n+1))`
-/

namespace A091880.P16843979915057883605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A049232 (n + 1)).toNat

end

end A091880.P16843979915057883605

namespace A091880

/-- `A000720(A049232(n+1))` -/
def P16843979915057883605.Spec : Prop :=
  ∀ n, P16843979915057883605.a n = A091880 (n + 1)

end A091880

/-! ## A091880.P10967932713734526333

`eq[0, A008683(A000040(n+1)+2)]+1`
-/

namespace A091880.P10967932713734526333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091880.P10967932713734526333

namespace A091880

/-- `eq[0, A008683(A000040(n+1)+2)]+1` -/
def P10967932713734526333.Spec : Prop :=
  ∀ n, (P10967932713734526333.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P4666438369503956377

`eq[1, A008683(A008578(n+1)+2)+1]`
-/

namespace A091880.P4666438369503956377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 1) + 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091880.P4666438369503956377

namespace A091880

/-- `eq[1, A008683(A008578(n+1)+2)+1]` -/
def P4666438369503956377.Spec : Prop :=
  ∀ n, (P4666438369503956377.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P8321771741329377910

`lt[1, A005361(A000040(n+1)+2)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091880

/-- `lt[1, A005361(A000040(n+1)+2)]+1` -/
def P8321771741329377910.Spec : Prop :=
  ∀ n, (P8321771741329377910.a n : ℤ) = A091880 (n + 1)

theorem P8321771741329377910.correct : P8321771741329377910.Spec := by
  intro n
  simp only [A091880, Nat.add_sub_cancel]

end A091880

/-! ## A091880.P7592683258965643689

`lt[A008683(A008864(n+1)+1)², 1]+1`
-/

namespace A091880.P7592683258965643689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008864 (n + 1) + 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091880.P7592683258965643689

namespace A091880

/-- `lt[A008683(A008864(n+1)+1)², 1]+1` -/
def P7592683258965643689.Spec : Prop :=
  ∀ n, (P7592683258965643689.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P3893212251456979337

`eq[A008683(A008578(n+1)+2), A000007(n)]`
-/

namespace A091880.P3893212251456979337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091880.P3893212251456979337

namespace A091880

/-- `eq[A008683(A008578(n+1)+2), A000007(n)]` -/
def P3893212251456979337.Spec : Prop :=
  ∀ n, (P3893212251456979337.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P2099604792488489750

`lt[1, A348029(A000040(n+1)+2)]+1`
-/

namespace A091880.P2099604792488489750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P2099604792488489750

namespace A091880

/-- `lt[1, A348029(A000040(n+1)+2)]+1` -/
def P2099604792488489750.Spec : Prop :=
  ∀ n, (P2099604792488489750.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P8615894720291758456

`eq[0, A080323(A008578(n+1)+2)]`
-/

namespace A091880.P8615894720291758456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A008578 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091880.P8615894720291758456

namespace A091880

/-- `eq[0, A080323(A008578(n+1)+2)]` -/
def P8615894720291758456.Spec : Prop :=
  ∀ n, (P8615894720291758456.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P8903403715247032502

`lt[2, A057521(A000040(n+1)+2)]+1`
-/

namespace A091880.P8903403715247032502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P8903403715247032502

namespace A091880

/-- `lt[2, A057521(A000040(n+1)+2)]+1` -/
def P8903403715247032502.Spec : Prop :=
  ∀ n, (P8903403715247032502.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P7263584708092410460

`lt[2, A183097(A000040(n+1)+2)]+1`
-/

namespace A091880.P7263584708092410460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P7263584708092410460

namespace A091880

/-- `lt[2, A183097(A000040(n+1)+2)]+1` -/
def P7263584708092410460.Spec : Prop :=
  ∀ n, (P7263584708092410460.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P17698618440040905013

`record[(n+1)%(A079115(A000040(n+1)+1)+n)]`
-/

namespace A091880.P17698618440040905013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A079115 (A000040 (n + 1) + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091880.P17698618440040905013

namespace A091880

/-- `record[(n+1)%(A079115(A000040(n+1)+1)+n)]` -/
def P17698618440040905013.Spec : Prop :=
  ∀ n, P17698618440040905013.a n = A091880 (n + 1)

end A091880

/-! ## A091880.P3762780612374890689

`A230980(p?[A013929(n+1)-2])`
-/

namespace A091880.P3762780612374890689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091880.P3762780612374890689

namespace A091880

/-- `A230980(p?[A013929(n+1)-2])` -/
def P3762780612374890689.Spec : Prop :=
  ∀ n, P3762780612374890689.a n = A091880 (n + 1)

end A091880

/-! ## A091880.P1923196902254902162

`lt[A008683(record[A014963(n+1)]+2)², 1]`
-/

namespace A091880.P1923196902254902162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2).toNat ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A091880.P1923196902254902162

namespace A091880

/-- `lt[A008683(record[A014963(n+1)]+2)², 1]` -/
def P1923196902254902162.Spec : Prop :=
  ∀ n, (P1923196902254902162.a n : ℤ) = A091880 (n + 1)

end A091880

/-! ## A091880.P10725392202307859642

`record[n+1-A100112(A000040(n+1)+2)]`
-/

namespace A091880.P10725392202307859642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100112 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091880.P10725392202307859642

namespace A091880

/-- `record[n+1-A100112(A000040(n+1)+2)]` -/
def P10725392202307859642.Spec : Prop :=
  ∀ n, P10725392202307859642.a n = A091880 (n + 1)

end A091880

/-! ## A091880.P13558213553690013836

`record[(n+1)*A107078(A000040(n+1)+2)]`
-/

namespace A091880.P13558213553690013836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107078 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091880.P13558213553690013836

namespace A091880

/-- `record[(n+1)*A107078(A000040(n+1)+2)]` -/
def P13558213553690013836.Spec : Prop :=
  ∀ n, P13558213553690013836.a n = A091880 (n + 1)

end A091880

/-!
# A091881: Expansion of (1-11*x)/((1-x)*(1-16*x)).

The programs for A091881, the canonical program `A091881.P5090313428437147025` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091881 has offset 0).

The definition of A091881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-11x)/(1-17x+16x^2))` (program `A091881.P5090313428437147025`, by `A091881.P5090313428437147025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091881.P5090313428437147025

`ogf((1-11x)/(1-17x+16x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091881

/-- `ogf((1-11x)/(1-17x+16x^2))` -/
def P5090313428437147025.Spec : Prop :=
  ∀ n, P5090313428437147025.a n = A091881 n

theorem P5090313428437147025.correct : P5090313428437147025.Spec := by
  intro n
  simp only [A091881]

end A091881

/-! ## A091881.P11526832713021558004

`16^n/3+2/3`
-/

namespace A091881.P11526832713021558004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℚ) / 3 + (2 : ℚ) / 3

end

end A091881.P11526832713021558004

namespace A091881

/-- `16^n/3+2/3` -/
def P11526832713021558004.Spec : Prop :=
  ∀ n, P11526832713021558004.a n = (A091881 n : ℚ)

end A091881

/-! ## A091881.P8619765206541634639

`A078008(4*n)`
-/

namespace A091881.P8619765206541634639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (4 * n)

end

end A091881.P8619765206541634639

namespace A091881

/-- `A078008(4*n)` -/
def P8619765206541634639.Spec : Prop :=
  ∀ n, P8619765206541634639.a n = A091881 n

end A091881

/-! ## A091881.P11558715213691074992

`or(2, (4^n)²)/3`
-/

namespace A091881.P11558715213691074992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((4 ^ n) ^ 2) : ℚ) / 3

end

end A091881.P11558715213691074992

namespace A091881

/-- `or(2, (4^n)²)/3` -/
def P11558715213691074992.Spec : Prop :=
  ∀ n, P11558715213691074992.a n = (A091881 n : ℚ)

end A091881

/-! ## A091881.P1510280807261425649

`xor(2, (4^n)²)/3`
-/

namespace A091881.P1510280807261425649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((4 ^ n) ^ 2) : ℚ) / 3

end

end A091881.P1510280807261425649

namespace A091881

/-- `xor(2, (4^n)²)/3` -/
def P1510280807261425649.Spec : Prop :=
  ∀ n, P1510280807261425649.a n = (A091881 n : ℚ)

end A091881

/-! ## A091881.P18327987249667431337

`record[ceil((-4)^n/3)]`
-/

namespace A091881.P18327987249667431337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-4) ^ n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091881.P18327987249667431337

namespace A091881

/-- `record[ceil((-4)^n/3)]` -/
def P18327987249667431337.Spec : Prop :=
  ∀ n, P18327987249667431337.a n = A091881 n

end A091881

/-! ## A091881.P15894453635981533074

`floor(or(2, 4^(2*n))/3)`
-/

namespace A091881.P15894453635981533074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (4 ^ (2 * n)) : ℚ) / 3⌋

end

end A091881.P15894453635981533074

namespace A091881

/-- `floor(or(2, 4^(2*n))/3)` -/
def P15894453635981533074.Spec : Prop :=
  ∀ n, P15894453635981533074.a n = A091881 n

end A091881

/-! ## A091881.P8183380559237722066

`floor(xor(2, 4^(2*n))/3)`
-/

namespace A091881.P8183380559237722066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (4 ^ (2 * n)) : ℚ) / 3⌋

end

end A091881.P8183380559237722066

namespace A091881

/-- `floor(xor(2, 4^(2*n))/3)` -/
def P8183380559237722066.Spec : Prop :=
  ∀ n, P8183380559237722066.a n = A091881 n

end A091881

/-! ## A091881.P1913906685932441406

`round(or(2, 4^(2*n))/3)`
-/

namespace A091881.P1913906685932441406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (4 ^ (2 * n)) : ℚ) / 3)

end

end A091881.P1913906685932441406

namespace A091881

/-- `round(or(2, 4^(2*n))/3)` -/
def P1913906685932441406.Spec : Prop :=
  ∀ n, P1913906685932441406.a n = A091881 n

end A091881

/-! ## A091881.P599880603263163117

`round(xor(2, 4^(2*n))/3)`
-/

namespace A091881.P599880603263163117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (4 ^ (2 * n)) : ℚ) / 3)

end

end A091881.P599880603263163117

namespace A091881

/-- `round(xor(2, 4^(2*n))/3)` -/
def P599880603263163117.Spec : Prop :=
  ∀ n, P599880603263163117.a n = A091881 n

end A091881

/-!
# A091882: Expansion of g.f. (1-10x)/(1-15x).

The programs for A091882, the canonical program `A091882.P8271776811802626510` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091882 has offset 0).

The definition of A091882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-10x)/(1-15x))` (program `A091882.P8271776811802626510`, by `A091882.P8271776811802626510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091882.P8271776811802626510

`ogf((1-10x)/(1-15x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091882

/-- `ogf((1-10x)/(1-15x))` -/
def P8271776811802626510.Spec : Prop :=
  ∀ n, P8271776811802626510.a n = A091882 n

theorem P8271776811802626510.correct : P8271776811802626510.Spec := by
  intro n
  simp only [A091882]

end A091882

/-! ## A091882.P8797285043599764114

`ceil(15^n/3)`
-/

namespace A091882.P8797285043599764114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(15 ^ n : ℚ) / 3⌉

end

end A091882.P8797285043599764114

namespace A091882

/-- `ceil(15^n/3)` -/
def P8797285043599764114.Spec : Prop :=
  ∀ n, P8797285043599764114.a n = A091882 n

end A091882

/-! ## A091882.P22970533999678161

`lcm(3, 15^n)/3`
-/

namespace A091882.P22970533999678161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (15 ^ n) : ℚ) / 3

end

end A091882.P22970533999678161

namespace A091882

/-- `lcm(3, 15^n)/3` -/
def P22970533999678161.Spec : Prop :=
  ∀ n, P22970533999678161.a n = (A091882 n : ℚ)

end A091882

/-! ## A091882.P3377010035707001182

`15*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A091882.P3377010035707001182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  15 * a (n - 1)

end

end A091882.P3377010035707001182

namespace A091882

/-- `15*a(n-1)` -/
def P3377010035707001182.Spec : Prop :=
  ∀ n, (P3377010035707001182.a n : ℤ) = A091882 n

end A091882

/-! ## A091882.P951970198513245586

`or(1, round(15^n/3))`
-/

namespace A091882.P951970198513245586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((15 ^ n : ℚ) / 3))

end

end A091882.P951970198513245586

namespace A091882

/-- `or(1, round(15^n/3))` -/
def P951970198513245586.Spec : Prop :=
  ∀ n, P951970198513245586.a n = A091882 n

end A091882

/-! ## A091882.P7874238056671084696

`lcm(5^n, ceil(3^(n-1)))`
-/

namespace A091882.P7874238056671084696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ n : ℤ) ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A091882.P7874238056671084696

namespace A091882

/-- `lcm(5^n, ceil(3^(n-1)))` -/
def P7874238056671084696.Spec : Prop :=
  ∀ n, (P7874238056671084696.a n : ℤ) = A091882 n

end A091882

/-! ## A091882.P164147455142083445

`a(n-1)/(1/4)²-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A091882.P164147455142083445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 1)

end

end A091882.P164147455142083445

namespace A091882

/-- `a(n-1)/(1/4)²-a(n-1)` -/
def P164147455142083445.Spec : Prop :=
  ∀ n, P164147455142083445.a n = (A091882 n : ℚ)

end A091882

/-! ## A091882.P6448663042257815809

`5^n*3^log2(A011782(n))`
-/

namespace A091882.P6448663042257815809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℝ) * (3 : ℝ) ^ (Real.logb 2 (A011782 n : ℝ))

end

end A091882.P6448663042257815809

namespace A091882

/-- `5^n*3^log2(A011782(n))` -/
def P6448663042257815809.Spec : Prop :=
  ∀ n, P6448663042257815809.a n = (A091882 n : ℝ)

end A091882

/-! ## A091882.P7763571516748077705

`ceil(3^(n-1))*A000351(n)`
-/

namespace A091882.P7763571516748077705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000351 n

end

end A091882.P7763571516748077705

namespace A091882

/-- `ceil(3^(n-1))*A000351(n)` -/
def P7763571516748077705.Spec : Prop :=
  ∀ n, P7763571516748077705.a n = A091882 n

end A091882

/-! ## A091882.P10527006893136199278

`ceil(3^(n-1))*∑[A005054(n)]`
-/

namespace A091882.P10527006893136199278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091882.P10527006893136199278

namespace A091882

/-- `ceil(3^(n-1))*∑[A005054(n)]` -/
def P10527006893136199278.Spec : Prop :=
  ∀ n, P10527006893136199278.a n = A091882 n

end A091882

/-!
# A091883: Expansion of (1-5x)/((1+5x)(1-10x)).

The programs for A091883, the canonical program `A091883.P9173487389886140677` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091883 has offset 0).

The definition of A091883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-5x-50x^2))` (program `A091883.P9173487389886140677`, by `A091883.P9173487389886140677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091883.P9173487389886140677

`ogf((1-5x)/(1-5x-50x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091883

/-- `ogf((1-5x)/(1-5x-50x^2))` -/
def P9173487389886140677.Spec : Prop :=
  ∀ n, P9173487389886140677.a n = A091883 n

theorem P9173487389886140677.correct : P9173487389886140677.Spec := by
  intro n
  simp only [A091883]

end A091883

/-! ## A091883.P8642968907318964656

`10^n/3+2*(-5)^n/3`
-/

namespace A091883.P8642968907318964656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 3 + (2 * (-5) ^ n : ℚ) / 3

end

end A091883.P8642968907318964656

namespace A091883

/-- `10^n/3+2*(-5)^n/3` -/
def P8642968907318964656.Spec : Prop :=
  ∀ n, P8642968907318964656.a n = (A091883 n : ℚ)

end A091883

/-! ## A091883.P5855934593224858515

`5^n*A078008(n)`
-/

namespace A091883.P5855934593224858515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A078008 n

end

end A091883.P5855934593224858515

namespace A091883

/-- `5^n*A078008(n)` -/
def P5855934593224858515.Spec : Prop :=
  ∀ n, P5855934593224858515.a n = A091883 n

end A091883

/-! ## A091883.P2462482906898433253

`abs(5^n*A141416(2*n+1))`
-/

namespace A091883.P2462482906898433253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) * A141416 (2 * n + 1)|

end

end A091883.P2462482906898433253

namespace A091883

/-- `abs(5^n*A141416(2*n+1))` -/
def P2462482906898433253.Spec : Prop :=
  ∀ n, P2462482906898433253.a n = A091883 n

end A091883

/-! ## A091883.P2067093974354627586

`Δ[10*a(n-1)-A083085(n)]` with `a(0)=0`
-/

namespace A091883.P2067093974354627586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  10 * f1 (n - 1) - A083085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091883.P2067093974354627586

namespace A091883

/-- `Δ[10*a(n-1)-A083085(n)]` -/
def P2067093974354627586.Spec : Prop :=
  ∀ n, P2067093974354627586.a n = A091883 n

end A091883

/-! ## A091883.P4966992669731258416

`abs(A000351(n)*A151575(n))`
-/

namespace A091883.P4966992669731258416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n * A151575 n|

end

end A091883.P4966992669731258416

namespace A091883

/-- `abs(A000351(n)*A151575(n))` -/
def P4966992669731258416.Spec : Prop :=
  ∀ n, P4966992669731258416.a n = A091883 n

end A091883

/-! ## A091883.P4176048661864697124

`abs(Δ[A001045(n)]*A000351(n))`
-/

namespace A091883.P4176048661864697124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000351 n|

end

end A091883.P4176048661864697124

namespace A091883

/-- `abs(Δ[A001045(n)]*A000351(n))` -/
def P4176048661864697124.Spec : Prop :=
  ∀ n, P4176048661864697124.a n = A091883 n

end A091883

/-! ## A091883.P16884497526291392309

`abs(Δ[A166122(n)]*A151575(n))`
-/

namespace A091883.P16884497526291392309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A151575 n|

end

end A091883.P16884497526291392309

namespace A091883

/-- `abs(Δ[A166122(n)]*A151575(n))` -/
def P16884497526291392309.Spec : Prop :=
  ∀ n, P16884497526291392309.a n = A091883 n

end A091883

/-!
# A091885: Triangle T(n,k) defined by the generating function cosh(sqrt(y)*arcsin(x)) + sqrt(y)*sinh(sqrt(y)*arcsin(x)) - 1 = Sum_{n>=1} Sum_{k=1..n} T(n,k)*y^k *x^n/n!.

The programs for A091885, there is no canonical definition to state claims against.
-/

/-! ## A091885.P77199276004163321

`A121408(A246705(n+1))`
-/

namespace A091885.P77199276004163321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (A246705 (n + 1)).toNat

end

end A091885.P77199276004163321

/-! ## A091885.P17153444877711246749

`A121408(eq[0, A136630(n)])`
-/

namespace A091885.P17153444877711246749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091885.P17153444877711246749

/-! ## A091885.P13888868959821626996

`A121408(eq[0, A237996(n)])`
-/

namespace A091885.P13888868959821626996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091885.P13888868959821626996

/-! ## A091885.P12960690419506606407

`A121408(eq[0, A178090(n)])`
-/

namespace A091885.P12960690419506606407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091885.P12960690419506606407

/-! ## A091885.P9566060285621192317

`A121408(eq[0, A147311(n)])`
-/

namespace A091885.P9566060285621192317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091885.P9566060285621192317

/-!
# A091886: Values of k such that PrimePi(k)^2 < (e*k*PrimePi(k/e))/log(k), where e = 2.71828... (A001113).

The programs for A091886, there is no canonical definition to state claims against.
-/

/-! ## A091886.P18403469917874198209

`lt[A305936(2*(n+1)), A318717(n)]`
-/

namespace A091886.P18403469917874198209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091886.P18403469917874198209

/-! ## A091886.P11129812400501071542

`lt[A337525(2*n+5), A337599(n)]`
-/

namespace A091886.P11129812400501071542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337525 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091886.P11129812400501071542

/-! ## A091886.P1590615525268309856

`lt[A337982(2*(n+1)), A337983(n)²]`
-/

namespace A091886.P1590615525268309856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337982 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091886.P1590615525268309856

/-! ## A091886.P9948287685307409639

`lt[sqrt(A337982(2*n+2)), A337983(n)]`
-/

namespace A091886.P9948287685307409639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A337982 (2 * n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A091886.P9948287685307409639

/-! ## A091886.P11047383775922584377

`lt[Δ[A217263(n+2)], A275463(n+1)]`
-/

namespace A091886.P11047383775922584377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A091886.P11047383775922584377

/-!
# A091887: Irregularity index of the n-th irregular prime A000928(n).

The programs for A091887, there is no canonical definition to state claims against.
-/

/-! ## A091887.P76576822876135370

`A091888(A105018(n+1))`
-/

namespace A091887.P76576822876135370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (A105018 (n + 1)).toNat

end

end A091887.P76576822876135370

/-! ## A091887.P7968756872949131090

`gcd(A018878(A344650(n)), A232440(n+5))`
-/

namespace A091887.P7968756872949131090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018878 (A344650 n).toNat) (A232440 (n + 5))

end

end A091887.P7968756872949131090

/-! ## A091887.P13996636909465584400

`A347447(A288526(n+1))`
-/

namespace A091887.P13996636909465584400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A288526 (n + 1)).toNat

end

end A091887.P13996636909465584400

/-!
# A091888: Irregularity index of prime(n): number of numbers k, 1 <= k <= (p-3)/2, such that p = prime(n) divides the numerator of the Bernoulli number B(2k).

The programs for A091888, there is no canonical definition to state claims against.
-/

/-! ## A091888.P1303249664070919378

`A234577(A246052(n+1)%A119024(2*n+3))`
-/

namespace A091888.P1303249664070919378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234577 (Int.tmod (A246052 (n + 1)) (A119024 (2 * n + 3))).toNat

end

end A091888.P1303249664070919378

/-! ## A091888.P15373359925681476031

`A385111(n)%A337006(n+1)`
-/

namespace A091888.P15373359925681476031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385111 n) (A337006 (n + 1))

end

end A091888.P15373359925681476031

/-! ## A091888.P14679370642756310618

`and(A226463(A161953(n+1)), A347550(n))`
-/

namespace A091888.P14679370642756310618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226463 (A161953 (n + 1)).toNat) (A347550 n)

end

end A091888.P14679370642756310618

/-! ## A091888.P15278726348323000521

`A309917(n+1)%A337006(n+1)`
-/

namespace A091888.P15278726348323000521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309917 (n + 1)) (A337006 (n + 1))

end

end A091888.P15278726348323000521

/-!
# A091889: Number of partitions of n into sums of exactly two distinct powers of 2.

The programs for A091889, there is no canonical definition to state claims against.
-/

/-! ## A091889.P11130666839891261950

`Δ[A141213(∑[A067591(n)])]`
-/

namespace A091889.P11130666839891261950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091889.P11130666839891261950

/-! ## A091889.P14393699750680956332

`A067591(n+1)-A185036(A048311(n))`
-/

namespace A091889.P14393699750680956332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 (n + 1) - A185036 (A048311 n).toNat

end

end A091889.P14393699750680956332

/-! ## A091889.P5115780916193510566

`A067591(A077168(n))`
-/

namespace A091889.P5115780916193510566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 (A077168 n).toNat

end

end A091889.P5115780916193510566

/-! ## A091889.P15841084424743884693

`A067591(A029931(2^n))`
-/

namespace A091889.P15841084424743884693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 (A029931 (2 ^ n)).toNat

end

end A091889.P15841084424743884693

/-!
# A091890: Number of partitions of n into sums of exactly three distinct powers of 2.

The programs for A091890, there is no canonical definition to state claims against.
-/

/-! ## A091890.P16851786579173376138

`A000045(A103279(3*n)%A026568(n+1))`
-/

namespace A091890.P16851786579173376138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A103279 (3 * n)) (A026568 (n + 1))).toNat

end

end A091890.P16851786579173376138

/-! ## A091890.P13077308766867182735

`A269243(A067298(n)-A369465(3*n+4))`
-/

namespace A091890.P13077308766867182735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269243 (A067298 n - A369465 (3 * n + 4)).toNat

end

end A091890.P13077308766867182735

/-!
# A091891: Number of partitions of n into parts which are a sum of exactly as many distinct powers of 2 as n has 1's in its binary representation.

The programs for A091891, there is no canonical definition to state claims against.
-/

/-! ## A091891.P6150790748386584831

`A284579(A091460(n)^A334076(n))`
-/

namespace A091891.P6150790748386584831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (SequenceMachineLib.roundAway ((A091460 n : ℚ) ^ (A334076 n : ℤ))).toNat

end

end A091891.P6150790748386584831

/-! ## A091891.P17173509404886668010

`A284579(A261461(n)^A334076(n))`
-/

namespace A091891.P17173509404886668010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (SequenceMachineLib.roundAway ((A261461 n : ℚ) ^ (A334076 n : ℤ))).toNat

end

end A091891.P17173509404886668010

/-! ## A091891.P4365763816681675961

`A284579(A261922(n)^A334076(n))`
-/

namespace A091891.P4365763816681675961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (SequenceMachineLib.roundAway ((A261922 n : ℚ) ^ (A334076 n : ℤ))).toNat

end

end A091891.P4365763816681675961

/-! ## A091891.P1172935336409953129

`gcd(A320767(3*n+1), A320777(A376506(n+1)))`
-/

namespace A091891.P1172935336409953129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320767 (3 * n + 1)) (A320777 (A376506 (n + 1)).toNat)

end

end A091891.P1172935336409953129

/-! ## A091891.P16324702784389994312

`A046067(19*A102854(n))`
-/

namespace A091891.P16324702784389994312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (19 * A102854 n).toNat

end

end A091891.P16324702784389994312

/-!
# A091892: Numbers k having only one partition into parts which are a sum of exactly as many distinct powers of 2 as there are 1's in the binary representation of k.

The programs for A091892, there is no canonical definition to state claims against.
-/

/-! ## A091892.P1320940023431315735

`eq[1, A091891(n)]`
-/

namespace A091892.P1320940023431315735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091892.P1320940023431315735

/-! ## A091892.P9613660196306097788

`lt[A091891(n), A001222(A001358(n+1))]`
-/

namespace A091892.P9613660196306097788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091892.P9613660196306097788

/-! ## A091892.P11829616787177494489

`record[A026741(n)/A091891(n)]`
-/

namespace A091892.P11829616787177494489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 n : ℚ) / (A091891 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091892.P11829616787177494489

/-! ## A091892.P12536979055438278071

`record[A106609(n)/A091891(n)]`
-/

namespace A091892.P12536979055438278071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106609 n : ℚ) / (A091891 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091892.P12536979055438278071

/-! ## A091892.P10149580423958986131

`record[A212831(n)/A091891(n)]`
-/

namespace A091892.P10149580423958986131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212831 n : ℚ) / (A091891 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091892.P10149580423958986131

/-! ## A091892.P16964474519488238708

`record[A014681(n)/A091891(A014681(n))]`
-/

namespace A091892.P16964474519488238708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 n : ℚ) / (A091891 (A014681 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091892.P16964474519488238708

/-! ## A091892.P11411679280360211742

`lt[A091891(n), A001222(A086096(n+1))]`
-/

namespace A091892.P11411679280360211742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086096 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091892.P11411679280360211742

/-! ## A091892.P7291879208879085471

`lt[A091891(n), A020639(A161411(n+1))]`
-/

namespace A091892.P7291879208879085471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091892.P7291879208879085471

/-! ## A091892.P6873910390752703298

`lt[A091891(n), A001222(A086097(n+1))]`
-/

namespace A091892.P6873910390752703298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086097 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091892.P6873910390752703298

/-!
# A091895: Least number k such that the denominator of d(k)/k = n, or zero if no such number exists, where d is the number-of-divisors function A000005.

The programs for A091895, there is no canonical definition to state claims against.
-/

/-! ## A091895.P6154000949936263760

`(n+1)*A352834(n+1)`
-/

namespace A091895.P6154000949936263760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A352834 (n + 1)

end

end A091895.P6154000949936263760

/-!
# A091896: Numbers n such that there exists no k for which the denominator of d(k)/k is n, where d = A000005 is the number-of-divisors function.

The programs for A091896, there is no canonical definition to state claims against.
-/

/-! ## A091896.P4003696261013162761

`eq[0, A091895(n+1)]+1`
-/

namespace A091896.P4003696261013162761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091896.P4003696261013162761

/-! ## A091896.P4045336132675240299

`lt[A091895(n+1), A003056(n)]+1`
-/

namespace A091896.P4045336132675240299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091896.P4045336132675240299

/-! ## A091896.P5042321391851685100

`lt[A091895(n+1), A023443(n)]+1`
-/

namespace A091896.P5042321391851685100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091896.P5042321391851685100

/-! ## A091896.P8271672542103297242

`lt[A091895(n+1), A053829(n)]+1`
-/

namespace A091896.P8271672542103297242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091896.P8271672542103297242

/-! ## A091896.P16053248373560149277

`lt[A091895(n+1), A120880(n)]+1`
-/

namespace A091896.P16053248373560149277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091896.P16053248373560149277

/-!
# A091898: Numbers that change from composite to prime or vice versa for at least one permutation of their digits.

The programs for A091898, there is no canonical definition to state claims against.
-/

/-! ## A091898.P6906830725012280468

`A118759(A061365(n+1))`
-/

namespace A091898.P6906830725012280468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A061365 (n + 1)).toNat

end

end A091898.P6906830725012280468

/-! ## A091898.P5376600723137108524

`A118759(A327822(n+1))`
-/

namespace A091898.P5376600723137108524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A327822 (n + 1)).toNat

end

end A091898.P5376600723137108524

/-! ## A091898.P13481764168415778316

`A137735(A061365(n+1)²)`
-/

namespace A091898.P13481764168415778316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A061365 (n + 1) ^ 2).toNat

end

end A091898.P13481764168415778316

/-! ## A091898.P9379292898006572597

`A137735(A327822(n+1)²)`
-/

namespace A091898.P9379292898006572597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A327822 (n + 1) ^ 2).toNat

end

end A091898.P9379292898006572597

/-! ## A091898.P7106850951995575359

`filter[A061365(n+1), A377191(#)]`
-/

namespace A091898.P7106850951995575359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A091898.P7106850951995575359

