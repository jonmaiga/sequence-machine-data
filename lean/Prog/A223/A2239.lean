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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A223900: Li estimate of the number of primes in successive power of two intervals [2^i, 2^(i+1)) for i >= 1.

The programs for A223900, there is no canonical definition to state claims against.
-/

/-! ## A223900.P1733420105292052380

`A223853(n+1)+A036378(n+1)`
-/

namespace A223900.P1733420105292052380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A036378 (n + 1)

end

end A223900.P1733420105292052380

/-! ## A223900.P13381875060151743791

`A223853(n+1)+Δ[A007053(n+1)]`
-/

namespace A223900.P13381875060151743791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + (f1 (n + 1) - f1 n)

end

end A223900.P13381875060151743791

/-! ## A223900.P16018978121258817151

`A223853(n+1)+A162145(A065475(n+1))`
-/

namespace A223900.P16018978121258817151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A162145 (A065475 (n + 1)).toNat

end

end A223900.P16018978121258817151

/-! ## A223900.P11333772774657860426

`A223853(n+1)+A085341(Δ[A126646(n)])`
-/

namespace A223900.P11333772774657860426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A085341 (f1 (n + 1) - f1 n).toNat

end

end A223900.P11333772774657860426

/-! ## A223900.P16704419606812253256

`A223853(n+1)+A085341(A126646(n)+1)`
-/

namespace A223900.P16704419606812253256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A085341 (A126646 n + 1).toNat

end

end A223900.P16704419606812253256

/-!
# A223905: Number of 4-vexillary permutations in S_n, that is, permutations whose Stanley symmetric function has at most 4 terms or at most 4 Edelman-Greene tableaux.

The programs for A223905, there is no canonical definition to state claims against.
-/

/-! ## A223905.P13671954353852788674

`A000142(n)-A248475(A275423(n))`
-/

namespace A223905.P13671954353852788674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A248475 (A275423 n).toNat

end

end A223905.P13671954353852788674

/-! ## A223905.P13592935098408153890

`round(sqrt(A089727(n!)))`
-/

namespace A223905.P13592935098408153890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089727 (Nat.factorial n) : ℝ))

end

end A223905.P13592935098408153890

/-! ## A223905.P8522546542978568270

`n!-A186748(n²)`
-/

namespace A223905.P8522546542978568270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A186748 (n ^ 2)

end

end A223905.P8522546542978568270

/-!
# A223906: Poly-Cauchy numbers of the second kind -hat c_3^(-n).

The programs for A223906, the canonical program `A223906.P2202406658702429866` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223906 has offset 1).

The definition of A223906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223906.P2202406658702429866

`A242985(n+1)+3^(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A223906

/-- `A242985(n+1)+3^(n+2)` -/
def P2202406658702429866.Spec : Prop :=
  ∀ n, P2202406658702429866.a n = A223906 (n + 1)

theorem P2202406658702429866.correct : P2202406658702429866.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel]

end A223906

/-! ## A223906.P11418222957973404984

`A007689(n+2)+4^(n+1)`
-/

namespace A223906.P11418222957973404984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (n + 2) + (4 ^ (n + 1) : ℤ)

end

end A223906.P11418222957973404984

namespace A223906

/-- `A007689(n+2)+4^(n+1)` -/
def P11418222957973404984.Spec : Prop :=
  ∀ n, P11418222957973404984.a n = A223906 (n + 1)

theorem P11418222957973404984.correct : P11418222957973404984.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P11418222957973404984.a, A223906.P2202406658702429866.a, A007689, A007689.P5844437503402331617.a, A242985, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-! ## A223906.P10206761240888704440

`A254363(n+1)-A246139(n+3)`
-/

namespace A223906.P10206761240888704440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254363 (n + 1) - A246139 (n + 3)

end

end A223906.P10206761240888704440

namespace A223906

/-- `A254363(n+1)-A246139(n+3)` -/
def P10206761240888704440.Spec : Prop :=
  ∀ n, P10206761240888704440.a n = A223906 (n + 1)

theorem P10206761240888704440.correct : P10206761240888704440.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P10206761240888704440.a, A223906.P2202406658702429866.a, A242985, A242985.P924288704119484347.a, A246139, A246139.P9892592564014298492.a, A254363, A254363.P5759172668620963066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-! ## A223906.P1385458153382497869

`A024023(n+2)+A000051(n+1)²`
-/

namespace A223906.P1385458153382497869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 2) + A000051 (n + 1) ^ 2

end

end A223906.P1385458153382497869

namespace A223906

/-- `A024023(n+2)+A000051(n+1)²` -/
def P1385458153382497869.Spec : Prop :=
  ∀ n, P1385458153382497869.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P17945033319767946930

`A011782(n+2)²+A007689(n+2)`
-/

namespace A223906.P17945033319767946930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) ^ 2 + A007689 (n + 2)

end

end A223906.P17945033319767946930

namespace A223906

/-- `A011782(n+2)²+A007689(n+2)` -/
def P17945033319767946930.Spec : Prop :=
  ∀ n, P17945033319767946930.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P8346013279855539881

`A085281(n+3)+A000079(n+1)²`
-/

namespace A223906.P8346013279855539881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 3) + A000079 (n + 1) ^ 2

end

end A223906.P8346013279855539881

namespace A223906

/-- `A085281(n+3)+A000079(n+1)²` -/
def P8346013279855539881.Spec : Prop :=
  ∀ n, P8346013279855539881.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P7896021834562127551

`A074605(n+1)+2*A007689(n+1)`
-/

namespace A223906.P7896021834562127551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 (n + 1) + 2 * A007689 (n + 1)

end

end A223906.P7896021834562127551

namespace A223906

/-- `A074605(n+1)+2*A007689(n+1)` -/
def P7896021834562127551.Spec : Prop :=
  ∀ n, P7896021834562127551.a n = A223906 (n + 1)

theorem P7896021834562127551.correct : P7896021834562127551.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P7896021834562127551.a, A223906.P2202406658702429866.a, A007689, A007689.P5844437503402331617.a, A074605, A074605.P9191075828594097155.a, A242985, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-! ## A223906.P7524385724108841668

`A083318(2*(n+1))+A005056(n+2)`
-/

namespace A223906.P7524385724108841668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * (n + 1)) + A005056 (n + 2)

end

end A223906.P7524385724108841668

namespace A223906

/-- `A083318(2*(n+1))+A005056(n+2)` -/
def P7524385724108841668.Spec : Prop :=
  ∀ n, P7524385724108841668.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P8662562684348925297

`A085281(n+3)+A000079(2*(n+1))`
-/

namespace A223906.P8662562684348925297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 3) + A000079 (2 * (n + 1))

end

end A223906.P8662562684348925297

namespace A223906

/-- `A085281(n+3)+A000079(2*(n+1))` -/
def P8662562684348925297.Spec : Prop :=
  ∀ n, P8662562684348925297.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P5188426296634636015

`A011782(2*n+3)+A007689(n+2)`
-/

namespace A223906.P5188426296634636015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 3) + A007689 (n + 2)

end

end A223906.P5188426296634636015

namespace A223906

/-- `A011782(2*n+3)+A007689(n+2)` -/
def P5188426296634636015.Spec : Prop :=
  ∀ n, P5188426296634636015.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P17733331398894159449

`A077957(A008574(n+1))+A007689(n+2)`
-/

namespace A223906.P17733331398894159449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A008574 (n + 1)).toNat + A007689 (n + 2)

end

end A223906.P17733331398894159449

namespace A223906

/-- `A077957(A008574(n+1))+A007689(n+2)` -/
def P17733331398894159449.Spec : Prop :=
  ∀ n, P17733331398894159449.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P7277320764367019541

`A077957(A008586(n+1))+A007689(n+2)`
-/

namespace A223906.P7277320764367019541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A008586 (n + 1)).toNat + A007689 (n + 2)

end

end A223906.P7277320764367019541

namespace A223906

/-- `A077957(A008586(n+1))+A007689(n+2)` -/
def P7277320764367019541.Spec : Prop :=
  ∀ n, P7277320764367019541.a n = A223906 (n + 1)

end A223906

/-! ## A223906.P5549069691921071719

`A000051(n+1)+A288795(n+1)+A000051(n+1)`
-/

namespace A223906.P5549069691921071719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A288795 (n + 1) + A000051 (n + 1))

end

end A223906.P5549069691921071719

namespace A223906

/-- `A000051(n+1)+A288795(n+1)+A000051(n+1)` -/
def P5549069691921071719.Spec : Prop :=
  ∀ n, P5549069691921071719.a n = A223906 (n + 1)

theorem P5549069691921071719.correct : P5549069691921071719.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P5549069691921071719.a, A223906.P2202406658702429866.a, A000051, A000051.P14067217022188782580.a, A242985, A242985.P924288704119484347.a, A288795, A288795.P9227499836402768387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-! ## A223906.P13195368799294700971

`A074526(n+1)+A074526(n+1)-A005061(n+1)`
-/

namespace A223906.P13195368799294700971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074526 (n + 1) + (A074526 (n + 1) - A005061 (n + 1))

end

end A223906.P13195368799294700971

namespace A223906

/-- `A074526(n+1)+A074526(n+1)-A005061(n+1)` -/
def P13195368799294700971.Spec : Prop :=
  ∀ n, P13195368799294700971.a n = A223906 (n + 1)

theorem P13195368799294700971.correct : P13195368799294700971.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P13195368799294700971.a, A223906.P2202406658702429866.a, A005061, A005061.P16496871994776631977.a, A074526, A074526.P4630388288089685513.a, A242985, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-! ## A223906.P2812548253890753798

`2*A074526(n+1)-A005061(n+1)`
-/

namespace A223906.P2812548253890753798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074526 (n + 1) - A005061 (n + 1)

end

end A223906.P2812548253890753798

namespace A223906

/-- `2*A074526(n+1)-A005061(n+1)` -/
def P2812548253890753798.Spec : Prop :=
  ∀ n, P2812548253890753798.a n = A223906 (n + 1)

theorem P2812548253890753798.correct : P2812548253890753798.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel, A223906.P2812548253890753798.a, A223906.P2202406658702429866.a, A005061, A005061.P16496871994776631977.a, A074526, A074526.P4630388288089685513.a, A242985, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A223906

/-!
# A223907: Poly-Cauchy numbers of the second kind hat c_4^(-n).

The programs for A223907, there is no canonical definition to state claims against.
-/

/-! ## A223907.P7642361191971364638

`A344639(A052905(n+3))`
-/

namespace A223907.P7642361191971364638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344639 (A052905 (n + 3)).toNat

end

end A223907.P7642361191971364638

/-!
# A223909: Numbers for which the maximal run of 1's in their binary representation contains odd number of 1's.

The programs for A223909, the canonical program `A223909.P11390512592361989297` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223909 has offset 1).

The definition of A223909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223909.P11390512592361989297

`eq[1, 1-a(and(n, 2*n))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223909

/-- `eq[1, 1-a(and(n, 2*n))]` -/
def P11390512592361989297.Spec : Prop :=
  ∀ n, (P11390512592361989297.a n : ℤ) = A223909 (n + 1)

theorem P11390512592361989297.correct : P11390512592361989297.Spec := by
  intro n
  simp only [A223909, Nat.add_sub_cancel]

end A223909

/-! ## A223909.P10384451445378701870

`eq[2, 2/a(and(n, 2*n))]` with `a(0)=1`
-/

namespace A223909.P10384451445378701870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A223909.P10384451445378701870

namespace A223909

/-- `eq[2, 2/a(and(n, 2*n))]` -/
def P10384451445378701870.Spec : Prop :=
  ∀ n, (P10384451445378701870.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P14383107358816399858

`lt[A292372(a(and(n, 2*n))+2), 1]` with `a(0)=1`
-/

namespace A223909.P14383107358816399858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A292372 (f1 (Nat.land n (2 * n)) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223909.P14383107358816399858

namespace A223909

/-- `lt[A292372(a(and(n, 2*n))+2), 1]` -/
def P14383107358816399858.Spec : Prop :=
  ∀ n, (P14383107358816399858.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P9454826622541332033

`eq[2, A283442(a(and(n, 2*n)))%3]` with `a(0)=1`
-/

namespace A223909.P9454826622541332033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (A283442 (f2 (Nat.land n (2 * n))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P9454826622541332033

namespace A223909

/-- `eq[2, A283442(a(and(n, 2*n)))%3]` -/
def P9454826622541332033.Spec : Prop :=
  ∀ n, (P9454826622541332033.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P4592117415932572218

`comp[A223910(n+1)]`
-/

namespace A223909.P4592117415932572218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A223909.P4592117415932572218

namespace A223909

/-- `comp[A223910(n+1)]` -/
def P4592117415932572218.Spec : Prop :=
  ∀ n, (P4592117415932572218.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P11637766373338241616

`eq[1, A008611(a(A213370(n)))]` with `a(0)=2`
-/

namespace A223909.P11637766373338241616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A008611 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P11637766373338241616

namespace A223909

/-- `eq[1, A008611(a(A213370(n)))]` -/
def P11637766373338241616.Spec : Prop :=
  ∀ n, (P11637766373338241616.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P2374354198885490733

`eq[1, A156135(a(A213370(n)))]` with `a(0)=5`
-/

namespace A223909.P2374354198885490733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A156135 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P2374354198885490733

namespace A223909

/-- `eq[1, A156135(a(A213370(n)))]` -/
def P2374354198885490733.Spec : Prop :=
  ∀ n, (P2374354198885490733.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P10670920080006093330

`eq[1, and(1, A038374(n+1))]+1`
-/

namespace A223909.P10670920080006093330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038374 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223909.P10670920080006093330

namespace A223909

/-- `eq[1, and(1, A038374(n+1))]+1` -/
def P10670920080006093330.Spec : Prop :=
  ∀ n, (P10670920080006093330.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P10938657288886423485

`lt[1, A143409(a(A048735(n)))]` with `a(0)=1`
-/

namespace A223909.P10938657288886423485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A143409 (f2 (A048735 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223909.P10938657288886423485

namespace A223909

/-- `lt[1, A143409(a(A048735(n)))]` -/
def P10938657288886423485.Spec : Prop :=
  ∀ n, (P10938657288886423485.a n : ℤ) = A223909 (n + 1)

end A223909

/-!
# A223910: Numbers for which the maximal run of 1's in their binary representation contains even number of 1's.

The programs for A223910, the canonical program `A223910.P8730944271972674901` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223910 has offset 1).

The definition of A223910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223910.P8730944271972674901

`eq[0, 1-a(and(n, 2*n))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223910

/-- `eq[0, 1-a(and(n, 2*n))]` -/
def P8730944271972674901.Spec : Prop :=
  ∀ n, (P8730944271972674901.a n : ℤ) = A223910 (n + 1)

theorem P8730944271972674901.correct : P8730944271972674901.Spec := by
  intro n
  simp only [A223910, Nat.add_sub_cancel]

end A223910

/-! ## A223910.P10634694480519497240

`eq[1, 2/a(and(n, 2*n))]` with `a(0)=1`
-/

namespace A223910.P10634694480519497240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A223910.P10634694480519497240

namespace A223910

/-- `eq[1, 2/a(and(n, 2*n))]` -/
def P10634694480519497240.Spec : Prop :=
  ∀ n, (P10634694480519497240.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P3401477355691373718

`comp[A223909(n+1)]`
-/

namespace A223910.P3401477355691373718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A223910.P3401477355691373718

namespace A223910

/-- `comp[A223909(n+1)]` -/
def P3401477355691373718.Spec : Prop :=
  ∀ n, (P3401477355691373718.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P9646468659138927234

`lt[A083035(2*a(and(n, 2*n))+1), 1]` with `a(0)=0`
-/

namespace A223910.P9646468659138927234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A083035 (2 * f1 (Nat.land n (2 * n)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223910.P9646468659138927234

namespace A223910

/-- `lt[A083035(2*a(and(n, 2*n))+1), 1]` -/
def P9646468659138927234.Spec : Prop :=
  ∀ n, (P9646468659138927234.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P14936416014156421965

`eq[1, A008611(a(A213370(n)))]` with `a(0)=1`
-/

namespace A223910.P14936416014156421965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008611 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P14936416014156421965

namespace A223910

/-- `eq[1, A008611(a(A213370(n)))]` -/
def P14936416014156421965.Spec : Prop :=
  ∀ n, (P14936416014156421965.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P1787003586291346221

`eq[1, A156135(a(A213370(n)))]` with `a(0)=1`
-/

namespace A223910.P1787003586291346221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A156135 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P1787003586291346221

namespace A223910

/-- `eq[1, A156135(a(A213370(n)))]` -/
def P1787003586291346221.Spec : Prop :=
  ∀ n, (P1787003586291346221.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P7880581871182723880

`lt[A143409(a(A048735(n))), 2]` with `a(0)=1`
-/

namespace A223910.P7880581871182723880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143409 (f1 (A048735 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223910.P7880581871182723880

namespace A223910

/-- `lt[A143409(a(A048735(n))), 2]` -/
def P7880581871182723880.Spec : Prop :=
  ∀ n, (P7880581871182723880.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P18209471092873508673

`eq[1, and(1, A001511(A278222(n)))]`
-/

namespace A223910.P18209471092873508673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001511 (A278222 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P18209471092873508673

namespace A223910

/-- `eq[1, and(1, A001511(A278222(n)))]` -/
def P18209471092873508673.Spec : Prop :=
  ∀ n, (P18209471092873508673.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P2808269402994878111

`eq[1, A001511(A001511(A278222(n)))]`
-/

namespace A223910.P2808269402994878111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (A278222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P2808269402994878111

namespace A223910

/-- `eq[1, A001511(A001511(A278222(n)))]` -/
def P2808269402994878111.Spec : Prop :=
  ∀ n, (P2808269402994878111.a n : ℤ) = A223910 (n + 1)

end A223910

/-!
# A223911: Number of tiered orders on n nodes (corrected version of A006860).

The programs for A223911, there is no canonical definition to state claims against.
-/

/-! ## A223911.P13234714442656160851

`A000026(A222863(n))`
-/

namespace A223911.P13234714442656160851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A222863 n).toNat

end

end A223911.P13234714442656160851

/-! ## A223911.P6457379171165225690

`A222863(A001096(n))`
-/

namespace A223911.P6457379171165225690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222863 (A001096 n).toNat

end

end A223911.P6457379171165225690

/-!
# A223912: Number of n X n 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223912, there is no canonical definition to state claims against.
-/

/-! ## A223912.P18209145724201016394

`A223918(∑[4*n]+1)`
-/

namespace A223912.P18209145724201016394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223912.P18209145724201016394

/-! ## A223912.P7755176744026772653

`A223918(A001844(n))+char[15]`
-/

namespace A223912.P7755176744026772653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223912.P7755176744026772653

/-! ## A223912.P14428094991500684869

`record[gcd(A037012(n), A223918(n+1))]`
-/

namespace A223912.P14428094991500684869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223912.P14428094991500684869

/-! ## A223912.P11030224635002347245

`lcm(A223918(A001844(n)), A260196(n))`
-/

namespace A223912.P11030224635002347245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A223918 (A001844 n).toNat) (A260196 n)

end

end A223912.P11030224635002347245

/-! ## A223912.P16937328196867081295

`or(A000007(n), A223918(A001844(n)))`
-/

namespace A223912.P16937328196867081295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223918 (A001844 n).toNat)

end

end A223912.P16937328196867081295

/-!
# A223913: Number of n X 3 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223913, the canonical program `A223913.P314189107394259803` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223913 has offset 1).

The definition of A223913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223913.P314189107394259803

`ogf((22+4x+22x^2-3x^3-3x^4+5x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223913

/-- `ogf((22+4x+22x^2-3x^3-3x^4+5x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P314189107394259803.Spec : Prop :=
  ∀ n, P314189107394259803.a n = A223913 (n + 1)

theorem P314189107394259803.correct : P314189107394259803.Spec := by
  intro n
  simp only [A223913, Nat.add_sub_cancel]

end A223913

/-! ## A223913.P8806603207333043430

`A223918(∑[n+3]+1)`
-/

namespace A223913.P8806603207333043430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223913.P8806603207333043430

namespace A223913

/-- `A223918(∑[n+3]+1)` -/
def P8806603207333043430.Spec : Prop :=
  ∀ n, P8806603207333043430.a n = A223913 (n + 1)

end A223913

/-!
# A223914: Number of n X 4 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223914, there is no canonical definition to state claims against.
-/

/-! ## A223914.P724473026365576603

`A223918(A141214(n+1))`
-/

namespace A223914.P724473026365576603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A141214 (n + 1)).toNat

end

end A223914.P724473026365576603

/-! ## A223914.P18220727381876799613

`A223918(A055998(n+2))`
-/

namespace A223914.P18220727381876799613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055998 (n + 2)).toNat

end

end A223914.P18220727381876799613

/-! ## A223914.P5053495103021192900

`A223918(A046691(n+2)+1)`
-/

namespace A223914.P5053495103021192900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A046691 (n + 2) + 1).toNat

end

end A223914.P5053495103021192900

/-! ## A223914.P3447205548189874689

`A223918(A052905(n+1)+2)`
-/

namespace A223914.P3447205548189874689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A052905 (n + 1) + 2).toNat

end

end A223914.P3447205548189874689

/-! ## A223914.P5801395416056250601

`A223918(A000096(n+2)+n+2)`
-/

namespace A223914.P5801395416056250601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A223914.P5801395416056250601

/-!
# A223915: Number of nX5 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223915, there is no canonical definition to state claims against.
-/

/-! ## A223915.P14439479215364300866

`A223918(∑[n+5]+6)`
-/

namespace A223915.P14439479215364300866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223915.P14439479215364300866

/-! ## A223915.P9438289839269858014

`A223918(Δ[A023545(n+1)])+char[30]`
-/

namespace A223915.P9438289839269858014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223915.P9438289839269858014

/-! ## A223915.P10750698841104442084

`lcm(A033999(n), A223918(A167614(n+4)-7))`
-/

namespace A223915.P10750698841104442084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223918 (A167614 (n + 4) - 7).toNat)

end

end A223915.P10750698841104442084

/-! ## A223915.P5190360321928489994

`A000034(2*n)*A223918(Δ[A023545(n+1)])`
-/

namespace A223915.P5190360321928489994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A223918 (f1 (n + 1) - f1 n).toNat

end

end A223915.P5190360321928489994

/-! ## A223915.P10877540979311013656

`A223918(Δ[A023545(n+1)])%A224055(n+1)`
-/

namespace A223915.P10877540979311013656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223918 (f1 (n + 1) - f1 n).toNat) (A224055 (n + 1))

end

end A223915.P10877540979311013656

/-!
# A223916: Number of nX6 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223916, there is no canonical definition to state claims against.
-/

/-! ## A223916.P7096901842629706132

`A223918(A052905(n+3))`
-/

namespace A223916.P7096901842629706132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A052905 (n + 3)).toNat

end

end A223916.P7096901842629706132

/-! ## A223916.P3967449455287785225

`A223918(A056119(n)+16)`
-/

namespace A223916.P3967449455287785225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A056119 n + 16).toNat

end

end A223916.P3967449455287785225

/-! ## A223916.P15083817249693848764

`A223918(A055999(n+3)+1)`
-/

namespace A223916.P15083817249693848764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055999 (n + 3) + 1).toNat

end

end A223916.P15083817249693848764

/-! ## A223916.P3676219659007306448

`A223918(A000096(n+5)-4)`
-/

namespace A223916.P3676219659007306448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000096 (n + 5) - 4).toNat

end

end A223916.P3676219659007306448

/-! ## A223916.P12660708925835017506

`A223918(A000217(n+6)-5)`
-/

namespace A223916.P12660708925835017506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 6) - 5).toNat

end

end A223916.P12660708925835017506

/-!
# A223917: Number of nX7 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223917, there is no canonical definition to state claims against.
-/

/-! ## A223917.P4803001895541386117

`A223918(A055999(n+4))`
-/

namespace A223917.P4803001895541386117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055999 (n + 4)).toNat

end

end A223917.P4803001895541386117

/-! ## A223917.P12078359462093551682

`A223918(A052905(n+4)-1)`
-/

namespace A223917.P12078359462093551682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A052905 (n + 4) - 1).toNat

end

end A223917.P12078359462093551682

/-! ## A223917.P8160459064528344704

`A223918(A000124(n+7)-7)`
-/

namespace A223917.P8160459064528344704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000124 (n + 7) - 7).toNat

end

end A223917.P8160459064528344704

/-! ## A223917.P15911697236003986061

`A223918(A000096(n+5)+n+2)`
-/

namespace A223917.P15911697236003986061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A223917.P15911697236003986061

/-! ## A223917.P12267462653181621856

`A223918(A000217(n+6)+n+1)`
-/

namespace A223917.P12267462653181621856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A223917.P12267462653181621856

/-!
# A223918: T(n,k)=Number of nXk 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223918, there is no canonical definition to state claims against.
-/

/-! ## A223918.P9762335220304581623

`A001281(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P9762335220304581623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P9762335220304581623

/-! ## A223918.P15916043987009537006

`A004525(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P15916043987009537006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P15916043987009537006

/-! ## A223918.P10766249009671501211

`A004526(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P10766249009671501211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P10766249009671501211

/-! ## A223918.P5089679204290655900

`A025480(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P5089679204290655900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P5089679204290655900

/-! ## A223918.P10975977319881585307

`A026741(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P10975977319881585307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P10975977319881585307

/-!
# A223919: Number of 2 X n 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223919, there is no canonical definition to state claims against.
-/

/-! ## A223919.P16124348734032437387

`A224190(∑[n+1]+2)`
-/

namespace A223919.P16124348734032437387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223919.P16124348734032437387

/-! ## A223919.P4889043955430391885

`lcm(A033999(n), A224190(A133263(n+1)))`
-/

namespace A223919.P4889043955430391885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224190 (A133263 (n + 1)).toNat)

end

end A223919.P4889043955430391885

/-! ## A223919.P8635780940650345569

`A224190(A133263(n+1))+A000007(n+1)`
-/

namespace A223919.P8635780940650345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A223919.P8635780940650345569

/-! ## A223919.P2816602676548092619

`A224190(A133263(n+1))%A223914(n+1)`
-/

namespace A223919.P2816602676548092619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224190 (A133263 (n + 1)).toNat) (A223914 (n + 1))

end

end A223919.P2816602676548092619

/-! ## A223919.P2661671805431766031

`A223918(∑[n+1]+2)`
-/

namespace A223919.P2661671805431766031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223919.P2661671805431766031

/-!
# A223920: Number of 3Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223920, there is no canonical definition to state claims against.
-/

/-! ## A223920.P2543784649811177654

`A223918(∑[n+2]+4)`
-/

namespace A223920.P2543784649811177654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223920.P2543784649811177654

/-! ## A223920.P17661141884246752547

`lcm((-1)^n, A223918(A167614(n+1)))`
-/

namespace A223920.P17661141884246752547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223918 (A167614 (n + 1)).toNat)

end

end A223920.P17661141884246752547

/-! ## A223920.P1021489018851598195

`A223918(A167614(n+1))+A185284(n)`
-/

namespace A223920.P1021489018851598195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167614 (n + 1)).toNat + A185284 n

end

end A223920.P1021489018851598195

/-! ## A223920.P17943922070453288128

`A223918(A167614(n+1))*A304042(n)`
-/

namespace A223920.P17943922070453288128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167614 (n + 1)).toNat * A304042 n

end

end A223920.P17943922070453288128

/-! ## A223920.P15660037406698967031

`A223918(A167614(n+1))%A016890(n)`
-/

namespace A223920.P15660037406698967031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223918 (A167614 (n + 1)).toNat) (A016890 n)

end

end A223920.P15660037406698967031

/-!
# A223921: Number of 4Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223921, there is no canonical definition to state claims against.
-/

/-! ## A223921.P17772320628299980987

`A223918(A141214(n)+7)`
-/

namespace A223921.P17772320628299980987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A141214 n + 7).toNat

end

end A223921.P17772320628299980987

/-! ## A223921.P10260925235910349388

`A223918(A052905(n)+9)`
-/

namespace A223921.P10260925235910349388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A052905 n + 9).toNat

end

end A223921.P10260925235910349388

/-! ## A223921.P11415916455202311008

`A223918(A055999(n)+10)`
-/

namespace A223921.P11415916455202311008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055999 n + 10).toNat

end

end A223921.P11415916455202311008

/-! ## A223921.P11176319964917688236

`A223918(A167614(n+2)+1)`
-/

namespace A223921.P11176319964917688236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167614 (n + 2) + 1).toNat

end

end A223921.P11176319964917688236

/-! ## A223921.P7214145626942274471

`A223918(A000217(n+3)+4)`
-/

namespace A223921.P7214145626942274471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 3) + 4).toNat

end

end A223921.P7214145626942274471

/-!
# A223922: Number of 5Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223922, there is no canonical definition to state claims against.
-/

/-! ## A223922.P16888456854257812225

`A223918(A167499(n+3))`
-/

namespace A223922.P16888456854257812225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167499 (n + 3)).toNat

end

end A223922.P16888456854257812225

/-! ## A223922.P1979693680179904009

`A223918(A000217(n+4)+5)`
-/

namespace A223922.P1979693680179904009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 4) + 5).toNat

end

end A223922.P1979693680179904009

/-! ## A223922.P4348705157086342802

`A223918(A141214(n+1)+8)`
-/

namespace A223922.P4348705157086342802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A141214 (n + 1) + 8).toNat

end

end A223922.P4348705157086342802

/-! ## A223922.P7922361970618318175

`A223918(A055998(n+2)+8)`
-/

namespace A223922.P7922361970618318175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055998 (n + 2) + 8).toNat

end

end A223922.P7922361970618318175

/-! ## A223922.P15674397132814870187

`A223918(A046691(n+2)+9)`
-/

namespace A223922.P15674397132814870187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A046691 (n + 2) + 9).toNat

end

end A223922.P15674397132814870187

/-!
# A223923: Number of 6Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223923, there is no canonical definition to state claims against.
-/

/-! ## A223923.P16435824160847166401

`A223918(Δ[A264443(n)]+10)`
-/

namespace A223923.P16435824160847166401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (f1 (n + 1) - f1 n + 10).toNat

end

end A223923.P16435824160847166401

/-! ## A223923.P6166549731101065226

`A223918(A167499(n+4)+1)`
-/

namespace A223923.P6166549731101065226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167499 (n + 4) + 1).toNat

end

end A223923.P6166549731101065226

/-! ## A223923.P9123959828876673474

`A223918(A000096(n+4)+7)`
-/

namespace A223923.P9123959828876673474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000096 (n + 4) + 7).toNat

end

end A223923.P9123959828876673474

/-! ## A223923.P9043689790022655204

`A223918(A000217(n+5)+6)`
-/

namespace A223923.P9043689790022655204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 5) + 6).toNat

end

end A223923.P9043689790022655204

/-! ## A223923.P4431710206414041877

`A223918(A184218(n+7)-A023443(n))`
-/

namespace A223923.P4431710206414041877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A184218 (n + 7) - A023443 n).toNat

end

end A223923.P4431710206414041877

/-!
# A223924: Number of 7Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223924, there is no canonical definition to state claims against.
-/

/-! ## A223924.P6705659711665735179

`A223918(A167499(n+5)+2)`
-/

namespace A223924.P6705659711665735179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167499 (n + 5) + 2).toNat

end

end A223924.P6705659711665735179

/-! ## A223924.P8417756484823900524

`A223918(A167614(n+5)+4)`
-/

namespace A223924.P8417756484823900524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167614 (n + 5) + 4).toNat

end

end A223924.P8417756484823900524

/-! ## A223924.P5733841691935523071

`A223918(A000217(n+6)+7)`
-/

namespace A223924.P5733841691935523071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A000217 (n + 6) + 7).toNat

end

end A223924.P5733841691935523071

/-! ## A223924.P5958957286033176878

`A223918(A055998(n+4)+10)`
-/

namespace A223924.P5958957286033176878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055998 (n + 4) + 10).toNat

end

end A223924.P5958957286033176878

/-! ## A223924.P7062300892698794544

`A223918(A184218(n+8)-A023443(n))`
-/

namespace A223924.P7062300892698794544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A184218 (n + 8) - A023443 n).toNat

end

end A223924.P7062300892698794544

/-!
# A223925: a(2n+1) = 2*n-1; a(2n)= 4^n.

The programs for A223925, the canonical program `A223925.P4549033672136422911` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223925 has offset 1).

The definition of A223925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223925.P841915979390430748

`ogf((1+4x-3x^2-8x^3-4x^4+4x^5)/(1-6x^2+9x^4-4x^6))`
-/

namespace A223925.P841915979390430748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, -8, -4, 4] [1, 0, -6, 0, 9, 0, -4] n

end

end A223925.P841915979390430748

namespace A223925

/-- `ogf((1+4x-3x^2-8x^3-4x^4+4x^5)/(1-6x^2+9x^4-4x^6))` -/
def P841915979390430748.Spec : Prop :=
  ∀ n, P841915979390430748.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P4549033672136422911

`6*a(n-2)-9*a(n-4)+4*a(n-6)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=16, a(4)=5, a(5)=64`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223925

/-- `6*a(n-2)-9*a(n-4)+4*a(n-6)` -/
def P4549033672136422911.Spec : Prop :=
  ∀ n, P4549033672136422911.a n = A223925 (n + 1)

theorem P4549033672136422911.correct : P4549033672136422911.Spec := by
  intro n
  simp only [A223925, Nat.add_sub_cancel]

end A223925

/-! ## A223925.P18362343585111161054

`(n+1-(n-1)*n%2)*(2-(n+1)%2)^n`
-/

namespace A223925.P18362343585111161054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)) * (2 - (((n + 1) % 2 : ℕ) : ℤ)) ^ n

end

end A223925.P18362343585111161054

namespace A223925

/-- `(n+1-(n-1)*n%2)*(2-(n+1)%2)^n` -/
def P18362343585111161054.Spec : Prop :=
  ∀ n, P18362343585111161054.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P13668676701290261233

`A084173(n*n%2)+n`
-/

namespace A223925.P13668676701290261233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (n * (n % 2)) + (n : ℤ)

end

end A223925.P13668676701290261233

namespace A223925

/-- `A084173(n*n%2)+n` -/
def P13668676701290261233.Spec : Prop :=
  ∀ n, P13668676701290261233.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15220633615929884151

`A084173(n*and(1, n))+n`
-/

namespace A223925.P15220633615929884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (n * Nat.land 1 n) + (n : ℤ)

end

end A223925.P15220633615929884151

namespace A223925

/-- `A084173(n*and(1, n))+n` -/
def P15220633615929884151.Spec : Prop :=
  ∀ n, P15220633615929884151.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15606044485027835646

`A390532(A014601(n)+2)`
-/

namespace A223925.P15606044485027835646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A014601 n + 2).toNat

end

end A223925.P15606044485027835646

namespace A223925

/-- `A390532(A014601(n)+2)` -/
def P15606044485027835646.Spec : Prop :=
  ∀ n, P15606044485027835646.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P17426047317445277113

`A390532(A042963(n+2))`
-/

namespace A223925.P17426047317445277113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A042963 (n + 2)).toNat

end

end A223925.P17426047317445277113

namespace A223925

/-- `A390532(A042963(n+2))` -/
def P17426047317445277113.Spec : Prop :=
  ∀ n, P17426047317445277113.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P5349117771217282081

`A066532(n+1)*A141310(n)`
-/

namespace A223925.P5349117771217282081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (n + 1) * A141310 n

end

end A223925.P5349117771217282081

namespace A223925

/-- `A066532(n+1)*A141310(n)` -/
def P5349117771217282081.Spec : Prop :=
  ∀ n, P5349117771217282081.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P14603606839890528944

`C(n, A072345(n))+A072345(n)²`
-/

namespace A223925.P14603606839890528944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A072345 n).toNat : ℤ) + A072345 n ^ 2

end

end A223925.P14603606839890528944

namespace A223925

/-- `C(n, A072345(n))+A072345(n)²` -/
def P14603606839890528944.Spec : Prop :=
  ∀ n, P14603606839890528944.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P1577219457894369457

`A059222(n+2)*A093178(n+1)`
-/

namespace A223925.P1577219457894369457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 2) * A093178 (n + 1)

end

end A223925.P1577219457894369457

namespace A223925

/-- `A059222(n+2)*A093178(n+1)` -/
def P1577219457894369457.Spec : Prop :=
  ∀ n, P1577219457894369457.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P13387421194900684788

`A141310(n)^(A141310(n+1)-1)`
-/

namespace A223925.P13387421194900684788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) ^ (A141310 (n + 1) - 1 : ℤ)

end

end A223925.P13387421194900684788

namespace A223925

/-- `A141310(n)^(A141310(n+1)-1)` -/
def P13387421194900684788.Spec : Prop :=
  ∀ n, P13387421194900684788.a n = (A223925 (n + 1) : ℚ)

end A223925

/-! ## A223925.P17146346423834050235

`A084173(n*A135528(n+1))+n`
-/

namespace A223925.P17146346423834050235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 ((n : ℤ) * A135528 (n + 1)).toNat + (n : ℤ)

end

end A223925.P17146346423834050235

namespace A223925

/-- `A084173(n*A135528(n+1))+n` -/
def P17146346423834050235.Spec : Prop :=
  ∀ n, P17146346423834050235.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P11420320317851271004

`A080924(n+1)+and(n, A080924(n))`
-/

namespace A223925.P11420320317851271004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 (n + 1) + Int.land (n : ℤ) (A080924 n)

end

end A223925.P11420320317851271004

namespace A223925

/-- `A080924(n+1)+and(n, A080924(n))` -/
def P11420320317851271004.Spec : Prop :=
  ∀ n, P11420320317851271004.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P3317511351459954453

`A133265(n+1)+A059222(n+2)-2`
-/

namespace A223925.P3317511351459954453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (n + 1) + (A059222 (n + 2) - 2)

end

end A223925.P3317511351459954453

namespace A223925

/-- `A133265(n+1)+A059222(n+2)-2` -/
def P3317511351459954453.Spec : Prop :=
  ∀ n, P3317511351459954453.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P3654690309627587571

`A059222(n+2)+n*A000035(n+1)`
-/

namespace A223925.P3654690309627587571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 2) + (n : ℤ) * A000035 (n + 1)

end

end A223925.P3654690309627587571

namespace A223925

/-- `A059222(n+2)+n*A000035(n+1)` -/
def P3654690309627587571.Spec : Prop :=
  ∀ n, P3654690309627587571.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P6050940578794268341

`and(n-A287199(n+1), A287199(n+1))`
-/

namespace A223925.P6050940578794268341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A287199 (n + 1)) (A287199 (n + 1))

end

end A223925.P6050940578794268341

namespace A223925

/-- `and(n-A287199(n+1), A287199(n+1))` -/
def P6050940578794268341.Spec : Prop :=
  ∀ n, P6050940578794268341.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P12655578490206756744

`A237420(n)+A000079(A237420(n+1))`
-/

namespace A223925.P12655578490206756744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A000079 (A237420 (n + 1)).toNat

end

end A223925.P12655578490206756744

namespace A223925

/-- `A237420(n)+A000079(A237420(n+1))` -/
def P12655578490206756744.Spec : Prop :=
  ∀ n, P12655578490206756744.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P668405992383492599

`A027656(n)+A057979(n+1)*A224783(n+1)`
-/

namespace A223925.P668405992383492599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A057979 (n + 1) * A224783 (n + 1)

end

end A223925.P668405992383492599

namespace A223925

/-- `A027656(n)+A057979(n+1)*A224783(n+1)` -/
def P668405992383492599.Spec : Prop :=
  ∀ n, P668405992383492599.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15876138765316721016

`(A057979(n+1)+A027656(n))*A059222(n+2)`
-/

namespace A223925.P15876138765316721016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057979 (n + 1) + A027656 n) * A059222 (n + 2)

end

end A223925.P15876138765316721016

namespace A223925

/-- `(A057979(n+1)+A027656(n))*A059222(n+2)` -/
def P15876138765316721016.Spec : Prop :=
  ∀ n, P15876138765316721016.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P8757914539494152341

`and(n-A014551(n+1), A014551(n+1))`
-/

namespace A223925.P8757914539494152341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A014551 (n + 1)) (A014551 (n + 1))

end

end A223925.P8757914539494152341

namespace A223925

/-- `and(n-A014551(n+1), A014551(n+1))` -/
def P8757914539494152341.Spec : Prop :=
  ∀ n, P8757914539494152341.a n = A223925 (n + 1)

end A223925

/-!
# A223926: Number of n X n 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223926, there is no canonical definition to state claims against.
-/

/-! ## A223926.P5002669244740496181

`A223933(∑[4*n]+1)`
-/

namespace A223926.P5002669244740496181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223926.P5002669244740496181

/-! ## A223926.P11629568733723766675

`record[A223933(Δ[A235355(n)])]`
-/

namespace A223926.P11629568733723766675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P11629568733723766675

/-! ## A223926.P16364472205979672144

`and(-1, A223933(A001844(n)))`
-/

namespace A223926.P16364472205979672144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223933 (A001844 n).toNat)

end

end A223926.P16364472205979672144

/-! ## A223926.P12714414724246510342

`record[A223933(A330613(n+1))]`
-/

namespace A223926.P12714414724246510342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P12714414724246510342

/-! ## A223926.P1090913539686352542

`record[A003982(n)*A223933(n+1)]`
-/

namespace A223926.P1090913539686352542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P1090913539686352542

/-!
# A223927: Number of n X 2 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223927, there is no canonical definition to state claims against.
-/

/-! ## A223927.P1635951780145945130

`A224374(∑[n+1]+2)`
-/

namespace A223927.P1635951780145945130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P1635951780145945130

/-! ## A223927.P14548575741659441351

`A224310(∑[n+1]+2)`
-/

namespace A223927.P14548575741659441351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P14548575741659441351

/-! ## A223927.P10741029744661683163

`or(A064873(n), A224310(C(n+2, 2)+2))`
-/

namespace A223927.P10741029744661683163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064873 n) (A224310 (Nat.choose (n + 2) 2 + 2))

end

end A223927.P10741029744661683163

/-! ## A223927.P15622766406006215713

`A224057(∑[n+1]+2)`
-/

namespace A223927.P15622766406006215713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P15622766406006215713

/-! ## A223927.P870379935164745015

`record[A224057(A008795(n)+2)]`
-/

namespace A223927.P870379935164745015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223927.P870379935164745015

/-!
# A223928: Number of n X 3 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223928, there is no canonical definition to state claims against.
-/

/-! ## A223928.P11891826666238366733

`A223933(∑[n+2]+4)`
-/

namespace A223928.P11891826666238366733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223928.P11891826666238366733

/-! ## A223928.P2230544067532246211

`and(-1, A223933(A167614(n+1)))`
-/

namespace A223928.P2230544067532246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223933 (A167614 (n + 1)).toNat)

end

end A223928.P2230544067532246211

/-! ## A223928.P12045043040137275974

`A223933(A055998(n)+6)+char[17]`
-/

namespace A223928.P12045043040137275974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223928.P12045043040137275974

/-! ## A223928.P17243149469342020630

`A223933(A167614(n+1))+A025466(n)`
-/

namespace A223928.P17243149469342020630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A167614 (n + 1)).toNat + A025466 n

end

end A223928.P17243149469342020630

/-! ## A223928.P17272946610835934989

`A223933(A167614(n+1))+A185284(n)`
-/

namespace A223928.P17272946610835934989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A167614 (n + 1)).toNat + A185284 n

end

end A223928.P17272946610835934989

/-!
# A223929: Number of nX4 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223929, there is no canonical definition to state claims against.
-/

/-! ## A223929.P14710774680093424290

`A223933(∑[n+3]+7)`
-/

namespace A223929.P14710774680093424290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223929.P14710774680093424290

/-! ## A223929.P17385273257085318214

`A223933(A141214(n+1))%A017500(2*n)`
-/

namespace A223929.P17385273257085318214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223933 (A141214 (n + 1)).toNat) (A017500 (2 * n))

end

end A223929.P17385273257085318214

/-!
# A223930: Number of nX5 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223930, there is no canonical definition to state claims against.
-/

/-! ## A223930.P16526336394790956206

`A223933(A374005(n+1))`
-/

namespace A223930.P16526336394790956206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374005 (n + 1)).toNat

end

end A223930.P16526336394790956206

/-! ## A223930.P17109261264572994140

`A223933(A167499(n+3))`
-/

namespace A223930.P17109261264572994140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A167499 (n + 3)).toNat

end

end A223930.P17109261264572994140

/-! ## A223930.P2562490428593707821

`A223933(A155212(n)+13)`
-/

namespace A223930.P2562490428593707821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A155212 n + 13).toNat

end

end A223930.P2562490428593707821

/-! ## A223930.P1976704382635089798

`A223933(A056000(n)+15)`
-/

namespace A223930.P1976704382635089798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A056000 n + 15).toNat

end

end A223930.P1976704382635089798

/-! ## A223930.P13977619452385343435

`A223933(eq[7, A066657(n)])`
-/

namespace A223930.P13977619452385343435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223930.P13977619452385343435

/-!
# A223931: Number of nX6 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223931, there is no canonical definition to state claims against.
-/

/-! ## A223931.P7567194524947328631

`A223933(A374007(n+1))`
-/

namespace A223931.P7567194524947328631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374007 (n + 1)).toNat

end

end A223931.P7567194524947328631

/-! ## A223931.P12773829021520224328

`A223933(A167499(n+4)+1)`
-/

namespace A223931.P12773829021520224328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A167499 (n + 4) + 1).toNat

end

end A223931.P12773829021520224328

/-! ## A223931.P9276328678617764674

`A223933(A000096(n+4)+7)`
-/

namespace A223931.P9276328678617764674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A000096 (n + 4) + 7).toNat

end

end A223931.P9276328678617764674

/-! ## A223931.P5401901834613884220

`A223933(A000217(n+5)+6)`
-/

namespace A223931.P5401901834613884220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A000217 (n + 5) + 6).toNat

end

end A223931.P5401901834613884220

/-! ## A223931.P5669624677113756283

`A223933(A141214(n+2)+9)`
-/

namespace A223931.P5669624677113756283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A141214 (n + 2) + 9).toNat

end

end A223931.P5669624677113756283

/-!
# A223932: Number of n X 7 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223932, there is no canonical definition to state claims against.
-/

/-! ## A223932.P4864440582519203441

`A223933(A374008(n+1))`
-/

namespace A223932.P4864440582519203441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374008 (n + 1)).toNat

end

end A223932.P4864440582519203441

/-! ## A223932.P5860815617617337798

`A223933(A167487(n+5))`
-/

namespace A223932.P5860815617617337798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A167487 (n + 5)).toNat

end

end A223932.P5860815617617337798

/-! ## A223932.P5435027718355842995

`A223933(A056119(n)+28)`
-/

namespace A223932.P5435027718355842995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A056119 n + 28).toNat

end

end A223932.P5435027718355842995

/-! ## A223932.P12283686534436912113

`A223933(eq[11, A066657(n)])`
-/

namespace A223932.P12283686534436912113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223932.P12283686534436912113

/-! ## A223932.P15218568941996160286

`A223933(A166136(n+5)+1)`
-/

namespace A223932.P15218568941996160286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A166136 (n + 5) + 1).toNat

end

end A223932.P15218568941996160286

/-!
# A223933: T(n,k)=Number of nXk 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223933, there is no canonical definition to state claims against.
-/

/-! ## A223933.P7000602578892864216

`A224057(A084193(∑[n]))`
-/

namespace A223933.P7000602578892864216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223933.P7000602578892864216

/-! ## A223933.P5559216434678239287

`A224057(A062003(n)+1)`
-/

namespace A223933.P5559216434678239287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A062003 n + 1).toNat

end

end A223933.P5559216434678239287

/-! ## A223933.P741312717406977231

`A224057(A004885(n+2))`
-/

namespace A223933.P741312717406977231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A004885 (n + 2)).toNat

end

end A223933.P741312717406977231

/-! ## A223933.P17439071506440034560

`A224057(A004896(n+2))`
-/

namespace A223933.P17439071506440034560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A004896 (n + 2)).toNat

end

end A223933.P17439071506440034560

/-! ## A223933.P18336603776756083801

`A224057(A004907(n+2))`
-/

namespace A223933.P18336603776756083801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A004907 (n + 2)).toNat

end

end A223933.P18336603776756083801

/-!
# A223936: Numbers prime(m), such that (Sum_{i=1..m} prime(i)^3) / m is an integer.

The programs for A223936, there is no canonical definition to state claims against.
-/

/-! ## A223936.P15519834107159051178

`A000040(A122140(n+1))`
-/

namespace A223936.P15519834107159051178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122140 (n + 1)).toNat

end

end A223936.P15519834107159051178

/-!
# A223937: a(n) is the sum of the cubes of the first A122140(n) primes.

The programs for A223937, there is no canonical definition to state claims against.
-/

/-! ## A223937.P373006656985824862

`A122140(n+1)*A223939(n+1)`
-/

namespace A223937.P373006656985824862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122140 (n + 1) * A223939 (n + 1)

end

end A223937.P373006656985824862

/-!
# A223939: Integer averages of first k primes cubed for some k (a(n) = A223937(n)/A122140(n)).

The programs for A223939, there is no canonical definition to state claims against.
-/

/-! ## A223939.P17596600824139935024

`A223937(n+1)/A122140(n+1)`
-/

namespace A223939.P17596600824139935024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223937 (n + 1) : ℚ) / (A122140 (n + 1) : ℚ)

end

end A223939.P17596600824139935024

/-!
# A223940: Sums of antidiagonals of A223968.

The programs for A223940, the canonical program `A223940.P712283430766083117` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223940 has offset 0).

The definition of A223940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223940.P14031860698976811516

`ogf((1+x-2x^2-x^3+x^4)/(1-x-4x^2+3x^3+3x^4-x^5))`
-/

namespace A223940.P14031860698976811516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1, 1] [1, -1, -4, 3, 3, -1] n

end

end A223940.P14031860698976811516

namespace A223940

/-- `ogf((1+x-2x^2-x^3+x^4)/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P14031860698976811516.Spec : Prop :=
  ∀ n, P14031860698976811516.a n = A223940 n

end A223940

/-! ## A223940.P712283430766083117

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223940

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P712283430766083117.Spec : Prop :=
  ∀ n, P712283430766083117.a n = A223940 n

theorem P712283430766083117.correct : P712283430766083117.Spec := by
  intro n
  simp only [A223940]

end A223940

/-! ## A223940.P4357124323351926229

`2*a(n-1)-A231182(n)` with `a(0)=1`
-/

namespace A223940.P4357124323351926229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A231182 n

end

end A223940.P4357124323351926229

namespace A223940

/-- `2*a(n-1)-A231182(n)` -/
def P4357124323351926229.Spec : Prop :=
  ∀ n, P4357124323351926229.a n = A223940 n

end A223940

/-! ## A223940.P17814393394703405263

`a(n-1)+a(A023443(n))-A231182(n)` with `a(0)=1`
-/

namespace A223940.P17814393394703405263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (A023443 n).toNat - A231182 n)

end

end A223940.P17814393394703405263

namespace A223940

/-- `a(n-1)+a(A023443(n))-A231182(n)` -/
def P17814393394703405263.Spec : Prop :=
  ∀ n, P17814393394703405263.a n = A223940 n

end A223940

/-! ## A223940.P3224878250024049711

`a(n-1)+a(n-1)-A231182(A028310(n))` with `a(0)=1`
-/

namespace A223940.P3224878250024049711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A231182 (A028310 n).toNat)

end

end A223940.P3224878250024049711

namespace A223940

/-- `a(n-1)+a(n-1)-A231182(A028310(n))` -/
def P3224878250024049711.Spec : Prop :=
  ∀ n, P3224878250024049711.a n = A223940 n

end A223940

/-! ## A223940.P9920820533282549310

`(A336675(n+4)+A336675(n))%A336675(n+2)`
-/

namespace A223940.P9920820533282549310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336675 (n + 4) + A336675 n) (A336675 (n + 2))

end

end A223940.P9920820533282549310

namespace A223940

/-- `(A336675(n+4)+A336675(n))%A336675(n+2)` -/
def P9920820533282549310.Spec : Prop :=
  ∀ n, P9920820533282549310.a n = A223940 n

end A223940

/-!
# A223942: Least prime q such that (x^{p_n}-1)/(x-1) is irreducible modulo q, where p_n is the n-th prime.

The programs for A223942, there is no canonical definition to state claims against.
-/

/-! ## A223942.P881681511506845479

`A002233(n+1)%(7*n-(n-a(n-1)))` with `a(0)=2`
-/

namespace A223942.P881681511506845479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A002233 (n + 1)) ((7 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A223942.P881681511506845479

/-! ## A223942.P1369136847930746757

`A007918(A002233(n+1))`
-/

namespace A223942.P1369136847930746757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002233 (n + 1)).toNat

end

end A223942.P1369136847930746757

/-! ## A223942.P12404443451437094608

`A002233(A028310(n)+1)`
-/

namespace A223942.P12404443451437094608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A028310 n + 1).toNat

end

end A223942.P12404443451437094608

/-! ## A223942.P2265841723032970995

`A229708(A006005(n+1))`
-/

namespace A223942.P2265841723032970995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A006005 (n + 1)).toNat

end

end A223942.P2265841723032970995

/-! ## A223942.P10516825461158390725

`A002233(A254667(n+1))`
-/

namespace A223942.P10516825461158390725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A254667 (n + 1)).toNat

end

end A223942.P10516825461158390725

/-! ## A223942.P14989806469826753219

`A002233(A348776(n+1))`
-/

namespace A223942.P14989806469826753219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A348776 (n + 1)).toNat

end

end A223942.P14989806469826753219

/-! ## A223942.P7770356220807222710

`A002233(A233583(n+2))`
-/

namespace A223942.P7770356220807222710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A233583 (n + 2)).toNat

end

end A223942.P7770356220807222710

/-! ## A223942.P15690507155336246826

`A229708(A075643(n+2))`
-/

namespace A223942.P15690507155336246826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A075643 (n + 2)).toNat

end

end A223942.P15690507155336246826

/-! ## A223942.P11136207631972469273

`A229708(A171525(n+2))`
-/

namespace A223942.P11136207631972469273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A171525 (n + 2)).toNat

end

end A223942.P11136207631972469273

/-! ## A223942.P4463244397181932431

`A002233(A054977(n)+n)`
-/

namespace A223942.P4463244397181932431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A054977 n + (n : ℤ)).toNat

end

end A223942.P4463244397181932431

/-! ## A223942.P230960675394316210

`A122028(A054977(n)+n)`
-/

namespace A223942.P230960675394316210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (A054977 n + (n : ℤ)).toNat

end

end A223942.P230960675394316210

/-! ## A223942.P2652630747579694045

`A002233(n+1)+A000007(n)`
-/

namespace A223942.P2652630747579694045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) + A000007 n

end

end A223942.P2652630747579694045

/-! ## A223942.P2215861824759964908

`A002233(A000038(n)+1+n)`
-/

namespace A223942.P2215861824759964908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A000038 n + 1 + (n : ℤ)).toNat

end

end A223942.P2215861824759964908

/-! ## A223942.P11606642929547029462

`A122028(A000007(n)+1+n)`
-/

namespace A223942.P11606642929547029462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (A000007 n + 1 + (n : ℤ)).toNat

end

end A223942.P11606642929547029462

/-! ## A223942.P3906286042931614834

`A122028(A000038(n)+1+n)`
-/

namespace A223942.P3906286042931614834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (A000038 n + 1 + (n : ℤ)).toNat

end

end A223942.P3906286042931614834

/-! ## A223942.P17967816733941682148

`A122028(A004277(n)+1-n)`
-/

namespace A223942.P17967816733941682148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (A004277 n + (1 - (n : ℤ))).toNat

end

end A223942.P17967816733941682148

/-! ## A223942.P6323616474837964972

`A122028(1-(n-A004277(n)))`
-/

namespace A223942.P6323616474837964972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A223942.P6323616474837964972

/-! ## A223942.P11693429505535444102

`A229708(record[A006530(2*n+1)])`
-/

namespace A223942.P11693429505535444102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223942.P11693429505535444102

/-! ## A223942.P16168232959872350600

`A229708(record[A014963(2*n+1)])`
-/

namespace A223942.P16168232959872350600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223942.P16168232959872350600

/-! ## A223942.P9538443330040346358

`A229708(record[A020639(2*n+1)])`
-/

namespace A223942.P9538443330040346358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223942.P9538443330040346358

/-!
# A223943: Number of n X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223943, there is no canonical definition to state claims against.
-/

/-! ## A223943.P4868688468697257054

`A223949(∑[4*n]+1)`
-/

namespace A223943.P4868688468697257054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223943.P4868688468697257054

/-! ## A223943.P8395944875751982803

`record[A223949(Δ[A235355(n)])]`
-/

namespace A223943.P8395944875751982803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P8395944875751982803

/-! ## A223943.P10407957080768122328

`record[A003982(n)*A223949(n+1)]`
-/

namespace A223943.P10407957080768122328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P10407957080768122328

/-! ## A223943.P7430494062813890122

`record[root(A223949(n+1), A143182(n))]`
-/

namespace A223943.P7430494062813890122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223949 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P7430494062813890122

/-! ## A223943.P5623592315766868278

`record[gcd(A114327(n), A223949(n+1))]`
-/

namespace A223943.P5623592315766868278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P5623592315766868278

/-!
# A223944: Number of n X 3 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223944, the canonical program `A223944.P16843128057507105975` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223944 has offset 1).

The definition of A223944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223944.P17335370951716093678

`ogf((4-2x^2-3x^3-8x^4)/(1-4x+2x^2+x^3-5x^4+8x^5))`
-/

namespace A223944.P17335370951716093678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -2, -3, -8] [1, -4, 2, 1, -5, 8] n

end

end A223944.P17335370951716093678

namespace A223944

/-- `ogf((4-2x^2-3x^3-8x^4)/(1-4x+2x^2+x^3-5x^4+8x^5))` -/
def P17335370951716093678.Spec : Prop :=
  ∀ n, P17335370951716093678.a n = A223944 (n + 1)

end A223944

/-! ## A223944.P16843128057507105975

`4*a(n-1)-2*a(n-2)-a(n-3)+5*a(n-4)-8*a(n-5)` with `a(0)=4, a(1)=16, a(2)=54, a(3)=177, a(4)=596`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223944

/-- `4*a(n-1)-2*a(n-2)-a(n-3)+5*a(n-4)-8*a(n-5)` -/
def P16843128057507105975.Spec : Prop :=
  ∀ n, P16843128057507105975.a n = A223944 (n + 1)

theorem P16843128057507105975.correct : P16843128057507105975.Spec := by
  intro n
  simp only [A223944, Nat.add_sub_cancel]

end A223944

/-! ## A223944.P16210411875413141970

`A223949(∑[n+3]+1)`
-/

namespace A223944.P16210411875413141970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223944.P16210411875413141970

namespace A223944

/-- `A223949(∑[n+3]+1)` -/
def P16210411875413141970.Spec : Prop :=
  ∀ n, P16210411875413141970.a n = A223944 (n + 1)

end A223944

/-! ## A223944.P18257397940347688296

`record[A223949(A347633(n+4))]`
-/

namespace A223944.P18257397940347688296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A347633 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223944.P18257397940347688296

namespace A223944

/-- `record[A223949(A347633(n+4))]` -/
def P18257397940347688296.Spec : Prop :=
  ∀ n, P18257397940347688296.a n = A223944 (n + 1)

end A223944

/-! ## A223944.P7831859337836583569

`A223949(A034856(n+2))+A166352(A319797(n))`
-/

namespace A223944.P7831859337836583569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A034856 (n + 2)).toNat + A166352 (A319797 n).toNat

end

end A223944.P7831859337836583569

namespace A223944

/-- `A223949(A034856(n+2))+A166352(A319797(n))` -/
def P7831859337836583569.Spec : Prop :=
  ∀ n, P7831859337836583569.a n = A223944 (n + 1)

end A223944

/-!
# A223945: Number of n X 4 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223945, the canonical program `A223945.P16046442265263553827` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223945 has offset 1).

The definition of A223945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223945.P16046442265263553827

`ogf((5-4x^2-24x^3-48x^4-33x^5-19x^6+45x^7+16x^8+8x^9)/(1-5x+5x^2+2x^3-7x^4+2x^5+4x^6+61x^7-29x^8-8x^9-8x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223945

/-- `ogf((5-4x^2-24x^3-48x^4-33x^5-19x^6+45x^7+16x^8+8x^9)/(1-5x+5x^2+2x^3-7x^4+2x^5+4x^6+61x^7-29x^8-8x^9-8x^10))` -/
def P16046442265263553827.Spec : Prop :=
  ∀ n, P16046442265263553827.a n = A223945 (n + 1)

theorem P16046442265263553827.correct : P16046442265263553827.Spec := by
  intro n
  simp only [A223945, Nat.add_sub_cancel]

end A223945

/-! ## A223945.P1101050163731073258

`A223949(A141214(n+1))`
-/

namespace A223945.P1101050163731073258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A141214 (n + 1)).toNat

end

end A223945.P1101050163731073258

namespace A223945

/-- `A223949(A141214(n+1))` -/
def P1101050163731073258.Spec : Prop :=
  ∀ n, P1101050163731073258.a n = A223945 (n + 1)

end A223945

/-! ## A223945.P2677068169672096122

`A223949(A027379(n+2))`
-/

namespace A223945.P2677068169672096122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A027379 (n + 2)).toNat

end

end A223945.P2677068169672096122

namespace A223945

/-- `A223949(A027379(n+2))` -/
def P2677068169672096122.Spec : Prop :=
  ∀ n, P2677068169672096122.a n = A223945 (n + 1)

end A223945

/-! ## A223945.P14263459957226631842

`A223949(A055998(n+2))`
-/

namespace A223945.P14263459957226631842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055998 (n + 2)).toNat

end

end A223945.P14263459957226631842

namespace A223945

/-- `A223949(A055998(n+2))` -/
def P14263459957226631842.Spec : Prop :=
  ∀ n, P14263459957226631842.a n = A223945 (n + 1)

end A223945

/-! ## A223945.P7677001724127772486

`A223949(A155212(n)+5)`
-/

namespace A223945.P7677001724127772486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A155212 n + 5).toNat

end

end A223945.P7677001724127772486

namespace A223945

/-- `A223949(A155212(n)+5)` -/
def P7677001724127772486.Spec : Prop :=
  ∀ n, P7677001724127772486.a n = A223945 (n + 1)

end A223945

/-!
# A223946: Number of nX5 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223946, there is no canonical definition to state claims against.
-/

/-! ## A223946.P17480757735884312638

`A223949(∑[n+5]+6)`
-/

namespace A223946.P17480757735884312638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223946.P17480757735884312638

/-! ## A223946.P3438752091496757149

`A223949(A046691(n+3))+A000007(n+1)`
-/

namespace A223946.P3438752091496757149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A223946.P3438752091496757149

/-! ## A223946.P4468945240198245051

`A223949(A046691(n+3))+2%A000034(n)`
-/

namespace A223946.P4468945240198245051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A046691 (n + 3)).toNat + Int.tmod 2 (A000034 n)

end

end A223946.P4468945240198245051

/-! ## A223946.P15600858680813149274

`A223949(A000096(n+4)-3)+A000007(n+1)`
-/

namespace A223946.P15600858680813149274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000096 (n + 4) - 3).toNat + A000007 (n + 1)

end

end A223946.P15600858680813149274

/-! ## A223946.P8104296928581406985

`A014963(C(2*(n+1), 2))*A223949(A046691(n+3))`
-/

namespace A223946.P8104296928581406985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (2 * (n + 1)) 2) * A223949 (A046691 (n + 3)).toNat

end

end A223946.P8104296928581406985

/-!
# A223947: Number of nX6 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223947, there is no canonical definition to state claims against.
-/

/-! ## A223947.P16549352509579629583

`A223949(A052905(n+3))`
-/

namespace A223947.P16549352509579629583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A052905 (n + 3)).toNat

end

end A223947.P16549352509579629583

/-! ## A223947.P3817617469659600793

`A223949(A056119(n)+16)`
-/

namespace A223947.P3817617469659600793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A056119 n + 16).toNat

end

end A223947.P3817617469659600793

/-! ## A223947.P1360998143260249270

`A223949(eq[3, A219347(n)])`
-/

namespace A223947.P1360998143260249270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223947.P1360998143260249270

/-! ## A223947.P12773517233683779301

`A223949(eq[5, A193592(n)])`
-/

namespace A223947.P12773517233683779301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223947.P12773517233683779301

/-! ## A223947.P10373801058741620752

`A223949(A055999(n+3)+1)`
-/

namespace A223947.P10373801058741620752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055999 (n + 3) + 1).toNat

end

end A223947.P10373801058741620752

/-!
# A223948: Number of n X 7 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223948, there is no canonical definition to state claims against.
-/

/-! ## A223948.P3850500924567137553

`A223949(A055999(n+4))`
-/

namespace A223948.P3850500924567137553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055999 (n + 4)).toNat

end

end A223948.P3850500924567137553

/-! ## A223948.P15891591592382597462

`A223949(eq[4, A219347(n)])`
-/

namespace A223948.P15891591592382597462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223948.P15891591592382597462

/-! ## A223948.P17150576062026956072

`A223949(eq[6, A193592(n)])`
-/

namespace A223948.P17150576062026956072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223948.P17150576062026956072

/-! ## A223948.P9033431510551150446

`A223949(Δ[A026054(n+4)])`
-/

namespace A223948.P9033431510551150446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (f1 (n + 1) - f1 n).toNat

end

end A223948.P9033431510551150446

/-! ## A223948.P8111940761440709681

`A223949(A052905(n+4)-1)`
-/

namespace A223948.P8111940761440709681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A052905 (n + 4) - 1).toNat

end

end A223948.P8111940761440709681

/-!
# A223949: T(n,k)=Number of nXk 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223949, there is no canonical definition to state claims against.
-/

/-! ## A223949.P1881422153643701734

`A224133(n+1)+A088194(A294950(n))`
-/

namespace A223949.P1881422153643701734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (n + 1) + A088194 (A294950 n).toNat

end

end A223949.P1881422153643701734

/-! ## A223949.P12447765252740754591

`A224133(n+1)-A184946(A099927(n))`
-/

namespace A223949.P12447765252740754591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (n + 1) - A184946 (A099927 n).toNat

end

end A223949.P12447765252740754591

/-! ## A223949.P3779071122782800476

`A250361(n+1)-A010893(A051128(n+1))`
-/

namespace A223949.P3779071122782800476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (n + 1) - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P3779071122782800476

/-! ## A223949.P6195958410416038429

`A051128(A014132(n+1))-A010893(A051128(n+1))`
-/

namespace A223949.P6195958410416038429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A014132 (n + 1)).toNat - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P6195958410416038429

/-! ## A223949.P17521273442402172047

`A341392(A204985(n+1))-A010893(A051128(n+1))`
-/

namespace A223949.P17521273442402172047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A204985 (n + 1)).toNat - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P17521273442402172047

/-!
# A223950: Number of 3 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223950, the canonical program `A223950.P6396256672067392230` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223950 has offset 1).

The definition of A223950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223950.P6778969976654908744

`ogf((8-5x-6x^2+10x^3-3x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A223950.P6778969976654908744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -5, -6, 10, -3] [1, -4, 6, -4, 1] n

end

end A223950.P6778969976654908744

namespace A223950

/-- `ogf((8-5x-6x^2+10x^3-3x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P6778969976654908744.Spec : Prop :=
  ∀ n, P6778969976654908744.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P6396256672067392230

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=27, a(2)=54, a(3)=96, a(4)=157`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223950

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6396256672067392230.Spec : Prop :=
  ∀ n, P6396256672067392230.a n = A223950 (n + 1)

theorem P6396256672067392230.correct : P6396256672067392230.Spec := by
  intro n
  simp only [A223950, Nat.add_sub_cancel]

end A223950

/-! ## A223950.P9802605189810927706

`4*n+5+A062545(n)+A016061(n+1)`
-/

namespace A223950.P9802605189810927706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) + (A062545 n + A016061 (n + 1))

end

end A223950.P9802605189810927706

namespace A223950

/-- `4*n+5+A062545(n)+A016061(n+1)` -/
def P9802605189810927706.Spec : Prop :=
  ∀ n, P9802605189810927706.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P3691015243882300688

`A089389(2*(n+1))+∑[A167499(2*n+1)]`
-/

namespace A223950.P3691015243882300688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223950.P3691015243882300688

namespace A223950

/-- `A089389(2*(n+1))+∑[A167499(2*n+1)]` -/
def P3691015243882300688.Spec : Prop :=
  ∀ n, P3691015243882300688.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P4809956489809247682

`A016789(A103517(n))+A016061(n+1)`
-/

namespace A223950.P4809956489809247682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A103517 n).toNat + A016061 (n + 1)

end

end A223950.P4809956489809247682

namespace A223950

/-- `A016789(A103517(n))+A016061(n+1)` -/
def P4809956489809247682.Spec : Prop :=
  ∀ n, P4809956489809247682.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P15671720824273011846

`A016789(Δ[A028310(n)²]+1)+A016061(n+1)`
-/

namespace A223950.P15671720824273011846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (f1 (n + 1) - f1 n + 1).toNat + A016061 (n + 1)

end

end A223950.P15671720824273011846

namespace A223950

/-- `A016789(Δ[A028310(n)²]+1)+A016061(n+1)` -/
def P15671720824273011846.Spec : Prop :=
  ∀ n, P15671720824273011846.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P3761886934835362880

`A173196(2*n+3)+A016789(A103517(n))`
-/

namespace A223950.P3761886934835362880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * n + 3) + A016789 (A103517 n).toNat

end

end A223950.P3761886934835362880

namespace A223950

/-- `A173196(2*n+3)+A016789(A103517(n))` -/
def P3761886934835362880.Spec : Prop :=
  ∀ n, P3761886934835362880.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P8915517434295057889

`A016789(Δ[A028310(n²)]+1)+A016061(n+1)`
-/

namespace A223950.P8915517434295057889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (f1 (n + 1) - f1 n + 1).toNat + A016061 (n + 1)

end

end A223950.P8915517434295057889

namespace A223950

/-- `A016789(Δ[A028310(n²)]+1)+A016061(n+1)` -/
def P8915517434295057889.Spec : Prop :=
  ∀ n, P8915517434295057889.a n = A223950 (n + 1)

end A223950

/-!
# A223951: Number of 4 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223951, the canonical program `A223951.P14440980232408271576` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223951 has offset 1).

The definition of A223951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223951.P14440980232408271576

`ogf((16+x-68x^2+86x^3-7x^4-33x^5+13x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223951

/-- `ogf((16+x-68x^2+86x^3-7x^4-33x^5+13x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14440980232408271576.Spec : Prop :=
  ∀ n, P14440980232408271576.a n = A223951 (n + 1)

theorem P14440980232408271576.correct : P14440980232408271576.Spec := by
  intro n
  simp only [A223951, Nat.add_sub_cancel]

end A223951

/-! ## A223951.P15912606769244815834

`A223949(A141214(n)+7)`
-/

namespace A223951.P15912606769244815834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A141214 n + 7).toNat

end

end A223951.P15912606769244815834

namespace A223951

/-- `A223949(A141214(n)+7)` -/
def P15912606769244815834.Spec : Prop :=
  ∀ n, P15912606769244815834.a n = A223951 (n + 1)

end A223951

/-! ## A223951.P16579508996773957354

`A223949(A052905(n)+9)`
-/

namespace A223951.P16579508996773957354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A052905 n + 9).toNat

end

end A223951.P16579508996773957354

namespace A223951

/-- `A223949(A052905(n)+9)` -/
def P16579508996773957354.Spec : Prop :=
  ∀ n, P16579508996773957354.a n = A223951 (n + 1)

end A223951

/-! ## A223951.P12550419388972951237

`A223949(A055999(n)+10)`
-/

namespace A223951.P12550419388972951237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055999 n + 10).toNat

end

end A223951.P12550419388972951237

namespace A223951

/-- `A223949(A055999(n)+10)` -/
def P12550419388972951237.Spec : Prop :=
  ∀ n, P12550419388972951237.a n = A223951 (n + 1)

end A223951

/-! ## A223951.P16480476642029987434

`A223949(A167614(n+2)+1)`
-/

namespace A223951.P16480476642029987434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167614 (n + 2) + 1).toNat

end

end A223951.P16480476642029987434

namespace A223951

/-- `A223949(A167614(n+2)+1)` -/
def P16480476642029987434.Spec : Prop :=
  ∀ n, P16480476642029987434.a n = A223951 (n + 1)

end A223951

/-!
# A223952: Number of 5 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223952, there is no canonical definition to state claims against.
-/

/-! ## A223952.P7847906899794130968

`A223949(A167499(n+3))`
-/

namespace A223952.P7847906899794130968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167499 (n + 3)).toNat

end

end A223952.P7847906899794130968

/-! ## A223952.P3112007742214238276

`A223949(A155212(n)+13)`
-/

namespace A223952.P3112007742214238276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A155212 n + 13).toNat

end

end A223952.P3112007742214238276

/-! ## A223952.P7406613460172520990

`A223949(A000124(n+4)+4)`
-/

namespace A223952.P7406613460172520990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000124 (n + 4) + 4).toNat

end

end A223952.P7406613460172520990

/-! ## A223952.P10870106157461330999

`A223949(A000096(n+3)+6)`
-/

namespace A223952.P10870106157461330999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000096 (n + 3) + 6).toNat

end

end A223952.P10870106157461330999

/-! ## A223952.P12279071022422084158

`A223949(A052905(n+3)-(2*n+1))`
-/

namespace A223952.P12279071022422084158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A223952.P12279071022422084158

/-!
# A223953: Number of 6 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223953, there is no canonical definition to state claims against.
-/

/-! ## A223953.P10326061403293659416

`A223949(A167499(n+4)+1)`
-/

namespace A223953.P10326061403293659416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167499 (n + 4) + 1).toNat

end

end A223953.P10326061403293659416

/-! ## A223953.P13783765019367658145

`A223949(A167614(n+4)+3)`
-/

namespace A223953.P13783765019367658145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167614 (n + 4) + 3).toNat

end

end A223953.P13783765019367658145

/-! ## A223953.P7726696274990474956

`A223949(A000124(n+5)+5)`
-/

namespace A223953.P7726696274990474956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000124 (n + 5) + 5).toNat

end

end A223953.P7726696274990474956

/-! ## A223953.P11000307933668234071

`A223949(A000217(n+5)+6)`
-/

namespace A223953.P11000307933668234071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000217 (n + 5) + 6).toNat

end

end A223953.P11000307933668234071

/-! ## A223953.P14696199469836473397

`A223949(A055999(n+2)+12)`
-/

namespace A223953.P14696199469836473397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055999 (n + 2) + 12).toNat

end

end A223953.P14696199469836473397

/-!
# A223954: Number of 7 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223954, there is no canonical definition to state claims against.
-/

/-! ## A223954.P280690998778593789

`A223949(A167487(n+5))`
-/

namespace A223954.P280690998778593789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167487 (n + 5)).toNat

end

end A223954.P280690998778593789

/-! ## A223954.P7725703387602852087

`A223949(A167499(n+5)+2)`
-/

namespace A223954.P7725703387602852087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167499 (n + 5) + 2).toNat

end

end A223954.P7725703387602852087

/-! ## A223954.P401567656249318887

`A223949(A000124(n+6)+6)`
-/

namespace A223954.P401567656249318887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000124 (n + 6) + 6).toNat

end

end A223954.P401567656249318887

/-! ## A223954.P15988954932002129128

`A223949(A000096(n+5)+8)`
-/

namespace A223954.P15988954932002129128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000096 (n + 5) + 8).toNat

end

end A223954.P15988954932002129128

/-! ## A223954.P1733020478505650440

`A223949(A000217(n+6)+7)`
-/

namespace A223954.P1733020478505650440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A000217 (n + 6) + 7).toNat

end

end A223954.P1733020478505650440

/-!
# A223955: Number of n X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223955, there is no canonical definition to state claims against.
-/

/-! ## A223955.P5601167221654173552

`A223961(∑[4*n]+1)`
-/

namespace A223955.P5601167221654173552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223955.P5601167221654173552

/-! ## A223955.P3416565044320412712

`record[root(A223961(n+1), A143182(n))]`
-/

namespace A223955.P3416565044320412712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223961 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P3416565044320412712

/-! ## A223955.P2842909508391189481

`record[gcd(A003987(n), A223961(n+1))]`
-/

namespace A223955.P2842909508391189481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P2842909508391189481

/-! ## A223955.P9989712159771326365

`record[A203994(n+1)*A223961(n+1)]`
-/

namespace A223955.P9989712159771326365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A223961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P9989712159771326365

/-! ## A223955.P16357430735523932960

`A063775(n+1)*A223961(A001844(n))`
-/

namespace A223955.P16357430735523932960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1) * A223961 (A001844 n).toNat

end

end A223955.P16357430735523932960

/-!
# A223956: Number of nX3 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223956, there is no canonical definition to state claims against.
-/

/-! ## A223956.P5933900032545188951

`A223961(∑[n+3]+1)`
-/

namespace A223956.P5933900032545188951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223956.P5933900032545188951

/-!
# A223957: Number of nX4 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223957, there is no canonical definition to state claims against.
-/

/-! ## A223957.P14021014817425975971

`A223961(A141214(n+1))`
-/

namespace A223957.P14021014817425975971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A141214 (n + 1)).toNat

end

end A223957.P14021014817425975971

/-! ## A223957.P8511379378098469377

`A223961(A027379(2+n))`
-/

namespace A223957.P8511379378098469377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A027379 (2 + n)).toNat

end

end A223957.P8511379378098469377

/-! ## A223957.P8447691848347569875

`A223961(A155212(n)+5)`
-/

namespace A223957.P8447691848347569875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A155212 n + 5).toNat

end

end A223957.P8447691848347569875

/-! ## A223957.P10862778052827169079

`A223961(A056000(n)+7)`
-/

namespace A223957.P10862778052827169079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A056000 n + 7).toNat

end

end A223957.P10862778052827169079

/-! ## A223957.P16367353753080487756

`A223961(eq[2, A054123(n)])`
-/

namespace A223957.P16367353753080487756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223957.P16367353753080487756

/-!
# A223958: Number of nX5 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223958, there is no canonical definition to state claims against.
-/

/-! ## A223958.P5885026762490410093

`A223961(eq[2, A092921(n)])`
-/

namespace A223958.P5885026762490410093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223958.P5885026762490410093

/-! ## A223958.P11450693996069119695

`A223961(eq[4, A193592(n)])`
-/

namespace A223958.P11450693996069119695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223958.P11450693996069119695

/-! ## A223958.P14279580046456390859

`A223961(eq[8, A140996(n)])`
-/

namespace A223958.P14279580046456390859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223958.P14279580046456390859

/-! ## A223958.P14217806843228238026

`A223961(Δ[A023545(n+1)])`
-/

namespace A223958.P14217806843228238026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (f1 (n + 1) - f1 n).toNat

end

end A223958.P14217806843228238026

/-! ## A223958.P3392507148468529723

`A223961(eq[6, A185782(n+1)])`
-/

namespace A223958.P3392507148468529723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223958.P3392507148468529723

/-!
# A223959: Number of nX6 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223959, there is no canonical definition to state claims against.
-/

/-! ## A223959.P6689556598354930676

`A223961(A052905(n+3))`
-/

namespace A223959.P6689556598354930676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A052905 (n + 3)).toNat

end

end A223959.P6689556598354930676

/-! ## A223959.P16777611425736390231

`A223961(eq[3, A219347(n)])`
-/

namespace A223959.P16777611425736390231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223959.P16777611425736390231

/-! ## A223959.P18123455067819005807

`A223961(eq[8, A185782(n+1)])`
-/

namespace A223959.P18123455067819005807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223959.P18123455067819005807

/-! ## A223959.P15980684448534331123

`A223961(eq[8, A243070(n+1)])`
-/

namespace A223959.P15980684448534331123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223959.P15980684448534331123

/-! ## A223959.P17447948769380615620

`A223961(eq[16, A057728(n+1)])`
-/

namespace A223959.P17447948769380615620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223959.P17447948769380615620

/-!
# A223960: Number of nX7 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223960, there is no canonical definition to state claims against.
-/

/-! ## A223960.P12670068049753046570

`A223961(A055999(n+4))`
-/

namespace A223960.P12670068049753046570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A055999 (n + 4)).toNat

end

end A223960.P12670068049753046570

/-! ## A223960.P13287385807003174139

`A223961(eq[4, A219347(n)])`
-/

namespace A223960.P13287385807003174139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223960.P13287385807003174139

/-! ## A223960.P12875773136315949649

`A223961(eq[6, A193592(n)])`
-/

namespace A223960.P12875773136315949649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223960.P12875773136315949649

/-! ## A223960.P3033578570239092264

`A223961(eq[7, A200370(n+1)])`
-/

namespace A223960.P3033578570239092264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223960.P3033578570239092264

/-! ## A223960.P7563279250405123037

`A223961(eq[10, A185782(n+1)])`
-/

namespace A223960.P7563279250405123037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223960.P7563279250405123037

/-!
# A223962: Number of 2 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223962, the canonical program `A223962.P4845765778239203008` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223962 has offset 1).

The definition of A223962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223962.P6532039375602192521

`ogf((16-27x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A223962.P6532039375602192521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -27, 36, -35, 21, -7, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A223962.P6532039375602192521

namespace A223962

/-- `ogf((16-27x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6532039375602192521.Spec : Prop :=
  ∀ n, P6532039375602192521.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P4845765778239203008

`A051880(n+1)+A006542(n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A223962

/-- `A051880(n+1)+A006542(n+4)` -/
def P4845765778239203008.Spec : Prop :=
  ∀ n, P4845765778239203008.a n = A223962 (n + 1)

theorem P4845765778239203008.correct : P4845765778239203008.Spec := by
  intro n
  simp only [A223962, Nat.add_sub_cancel]

end A223962

/-! ## A223962.P14255529490726339596

`A006542(n+5)+(n+6)*∑[∑[∑[n+1]]]`
-/

namespace A223962.P14255529490726339596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) + (((n + 6) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A223962.P14255529490726339596

namespace A223962

/-- `A006542(n+5)+(n+6)*∑[∑[∑[n+1]]]` -/
def P14255529490726339596.Spec : Prop :=
  ∀ n, P14255529490726339596.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P4102874619881772623

`A264750(n+5)+Δ[A050484(n)]`
-/

namespace A223962.P4102874619881772623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264750 (n + 5) + (f1 (n + 1) - f1 n)

end

end A223962.P4102874619881772623

namespace A223962

/-- `A264750(n+5)+Δ[A050484(n)]` -/
def P4102874619881772623.Spec : Prop :=
  ∀ n, P4102874619881772623.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P907928688537373227

`A000292(n+2)²-A240440(n+2)`
-/

namespace A223962.P907928688537373227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) ^ 2 - A240440 (n + 2)

end

end A223962.P907928688537373227

namespace A223962

/-- `A000292(n+2)²-A240440(n+2)` -/
def P907928688537373227.Spec : Prop :=
  ∀ n, P907928688537373227.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P8123850386975015057

`A225007(n+1)+∑[A027800(n)-A051740(n)]`
-/

namespace A223962.P8123850386975015057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n - A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223962.P8123850386975015057

namespace A223962

/-- `A225007(n+1)+∑[A027800(n)-A051740(n)]` -/
def P8123850386975015057.Spec : Prop :=
  ∀ n, P8123850386975015057.a n = A223962 (n + 1)

end A223962

/-!
# A223963: Number of 3 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223963, there is no canonical definition to state claims against.
-/

/-! ## A223963.P2138754998024154878

`A223961(∑[n+2]+4)`
-/

namespace A223963.P2138754998024154878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223963.P2138754998024154878

/-! ## A223963.P6137188525238968689

`A223961(A167614(n+1))+A178798(n)`
-/

namespace A223963.P6137188525238968689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A167614 (n + 1)).toNat + A178798 n

end

end A223963.P6137188525238968689

/-! ## A223963.P6574208576013419887

`A223961(A167614(n+1))%A016964(n)`
-/

namespace A223963.P6574208576013419887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223961 (A167614 (n + 1)).toNat) (A016964 n)

end

end A223963.P6574208576013419887

/-! ## A223963.P14747794229246480180

`lcm(A033999(n), A223961(A167614(n+1)))`
-/

namespace A223963.P14747794229246480180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223961 (A167614 (n + 1)).toNat)

end

end A223963.P14747794229246480180

/-!
# A223964: Number of 4Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223964, there is no canonical definition to state claims against.
-/

/-! ## A223964.P2647780460583208222

`A223961(A141214(n)+7)`
-/

namespace A223964.P2647780460583208222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A141214 n + 7).toNat

end

end A223964.P2647780460583208222

/-! ## A223964.P16548719521079914811

`A223961(A052905(n)+9)`
-/

namespace A223964.P16548719521079914811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A052905 n + 9).toNat

end

end A223964.P16548719521079914811

/-! ## A223964.P6816206518661830699

`A223961(A055999(n)+10)`
-/

namespace A223964.P6816206518661830699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A055999 n + 10).toNat

end

end A223964.P6816206518661830699

/-! ## A223964.P1793952513301152271

`A223961(A167614(n+2)+1)`
-/

namespace A223964.P1793952513301152271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A167614 (n + 2) + 1).toNat

end

end A223964.P1793952513301152271

/-! ## A223964.P15793000138021399510

`A223961(A000217(n+3)+4)`
-/

namespace A223964.P15793000138021399510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A000217 (n + 3) + 4).toNat

end

end A223964.P15793000138021399510

/-!
# A223965: Number of 5 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223965, there is no canonical definition to state claims against.
-/

/-! ## A223965.P12301478664142916989

`A223961(A155212(n)+13)`
-/

namespace A223965.P12301478664142916989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A155212 n + 13).toNat

end

end A223965.P12301478664142916989

/-! ## A223965.P8418464462137741959

`A223961(eq[7, A066657(n)])`
-/

namespace A223965.P8418464462137741959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223965.P8418464462137741959

/-! ## A223965.P16948728154224897761

`A223961(A051936(n+4)+14)`
-/

namespace A223965.P16948728154224897761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A051936 (n + 4) + 14).toNat

end

end A223965.P16948728154224897761

/-! ## A223965.P6922505852004053324

`A223961(eq[6, A131818(n+1)])`
-/

namespace A223965.P6922505852004053324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223965.P6922505852004053324

/-! ## A223965.P10383186971297521652

`A223961(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A223965.P10383186971297521652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A223965.P10383186971297521652

/-!
# A223966: Number of 6Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223966, there is no canonical definition to state claims against.
-/

/-! ## A223966.P8033608643404068906

`A223961(A056115(n)+21)`
-/

namespace A223966.P8033608643404068906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A056115 n + 21).toNat

end

end A223966.P8033608643404068906

/-! ## A223966.P7565354109817433739

`A223961(A167614(n+4)+3)`
-/

namespace A223966.P7565354109817433739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A167614 (n + 4) + 3).toNat

end

end A223966.P7565354109817433739

/-! ## A223966.P5443443040600882620

`A223961(A046691(n+3)+10)`
-/

namespace A223966.P5443443040600882620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A046691 (n + 3) + 10).toNat

end

end A223966.P5443443040600882620

/-! ## A223966.P15238234516375339494

`A223961(A155212(n+1)+14)`
-/

namespace A223966.P15238234516375339494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A155212 (n + 1) + 14).toNat

end

end A223966.P15238234516375339494

/-! ## A223966.P17190314663143283413

`A223961(eq[7, A131818(n+1)])`
-/

namespace A223966.P17190314663143283413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223966.P17190314663143283413

/-!
# A223967: Number of 7Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223967, there is no canonical definition to state claims against.
-/

/-! ## A223967.P9302040427690602449

`A223961(A167487(n+5))`
-/

namespace A223967.P9302040427690602449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A167487 (n + 5)).toNat

end

end A223967.P9302040427690602449

/-! ## A223967.P10803240009143550441

`A223961(eq[11, A066657(n)])`
-/

namespace A223967.P10803240009143550441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223967.P10803240009143550441

/-! ## A223967.P135102251398906003

`A223961(A133263(n+6)+5)`
-/

namespace A223967.P135102251398906003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A133263 (n + 6) + 5).toNat

end

end A223967.P135102251398906003

/-! ## A223967.P14444742038318096757

`A223961(A000217(n+6)+7)`
-/

namespace A223967.P14444742038318096757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A000217 (n + 6) + 7).toNat

end

end A223967.P14444742038318096757

/-! ## A223967.P13409592950707750603

`A223961(eq[8, A131818(n+1)])`
-/

namespace A223967.P13409592950707750603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223967.P13409592950707750603

/-!
# A223968: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 5 or if k-n >= 6, T(4,0) = T(3,0) = T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = T(0,5) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A223968, there is no canonical definition to state claims against.
-/

/-! ## A223968.P5983144245655252873

`A007318(n)-A198317(A185317(n))`
-/

namespace A223968.P5983144245655252873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A198317 (A185317 n).toNat

end

end A223968.P5983144245655252873

/-! ## A223968.P9350104333476950918

`A065033(A132046(n))-A198317(A185317(n))`
-/

namespace A223968.P9350104333476950918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A132046 n).toNat - A198317 (A185317 n).toNat

end

end A223968.P9350104333476950918

/-! ## A223968.P8029974645840294528

`A007318(n)-p?[A278657(n)²+1]%2`
-/

namespace A223968.P8029974645840294528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A223968.P8029974645840294528

/-! ## A223968.P8010789073328652519

`A007318(n)-A330963(A325720(n+1))`
-/

namespace A223968.P8010789073328652519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A330963 (A325720 (n + 1)).toNat

end

end A223968.P8010789073328652519

/-! ## A223968.P3034538132683910131

`A007318(n)-A316863(A316836(2*(n+1)))`
-/

namespace A223968.P3034538132683910131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A316863 (A316836 (2 * (n + 1))).toNat

end

end A223968.P3034538132683910131

/-!
# A223969: Number of n X n 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223969, there is no canonical definition to state claims against.
-/

/-! ## A223969.P14837448935936130355

`A223975(∑[4*n]+1)`
-/

namespace A223969.P14837448935936130355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223969.P14837448935936130355

/-! ## A223969.P6986446452038237950

`record[A223975(A330613(n+1))]`
-/

namespace A223969.P6986446452038237950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P6986446452038237950

/-! ## A223969.P8620606641415555706

`record[A003982(n)*A223975(n+1)]`
-/

namespace A223969.P8620606641415555706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P8620606641415555706

/-! ## A223969.P14228672924913481943

`record[gcd(A037012(n), A223975(n+1))]`
-/

namespace A223969.P14228672924913481943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223975 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P14228672924913481943

/-! ## A223969.P80854658894106685

`record[root(A223975(n+1), A253146(n+1))]`
-/

namespace A223969.P80854658894106685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223975 (n + 1) : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P80854658894106685

/-!
# A223970: Number of n X 3 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223970, there is no canonical definition to state claims against.
-/

/-! ## A223970.P829775741246740741

`A223975(∑[n+3]+1)`
-/

namespace A223970.P829775741246740741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223970.P829775741246740741

/-! ## A223970.P16379471483703261157

`A034947(n+1)²*A223975(A034856(n+2))`
-/

namespace A223970.P16379471483703261157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A223975 (A034856 (n + 2)).toNat

end

end A223970.P16379471483703261157

/-! ## A223970.P15275827025887002010

`A000010(((-1)^n)²)*A223975(A034856(n+2))`
-/

namespace A223970.P15275827025887002010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A223975 (A034856 (n + 2)).toNat

end

end A223970.P15275827025887002010

/-! ## A223970.P16081399574833135826

`A000035(A137576(n))*A223975(A034856(n+2))`
-/

namespace A223970.P16081399574833135826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137576 n).toNat * A223975 (A034856 (n + 2)).toNat

end

end A223970.P16081399574833135826

/-!
# A223971: Number of nX4 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223971, there is no canonical definition to state claims against.
-/

/-! ## A223971.P8322312431873883940

`A223975(A141214(n+1))`
-/

namespace A223971.P8322312431873883940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A141214 (n + 1)).toNat

end

end A223971.P8322312431873883940

/-! ## A223971.P10249287779596208916

`A223975(A055998(n+2))`
-/

namespace A223971.P10249287779596208916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A055998 (n + 2)).toNat

end

end A223971.P10249287779596208916

/-! ## A223971.P11852993938306801957

`A223975(A155212(n)+5)`
-/

namespace A223971.P11852993938306801957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A155212 n + 5).toNat

end

end A223971.P11852993938306801957

/-! ## A223971.P16089297717425043854

`A223975(A056000(n)+7)`
-/

namespace A223971.P16089297717425043854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056000 n + 7).toNat

end

end A223971.P16089297717425043854

/-! ## A223971.P6393146059153923607

`A223975(eq[3, A193592(n)])`
-/

namespace A223971.P6393146059153923607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223971.P6393146059153923607

/-!
# A223972: Number of nX5 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223972, there is no canonical definition to state claims against.
-/

/-! ## A223972.P2403235761687232272

`A223975(Δ[A264443(n)])`
-/

namespace A223972.P2403235761687232272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (f1 (n + 1) - f1 n).toNat

end

end A223972.P2403235761687232272

/-! ## A223972.P16579166526273220825

`A223975(A046691(n+3))`
-/

namespace A223972.P16579166526273220825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A046691 (n + 3)).toNat

end

end A223972.P16579166526273220825

/-! ## A223972.P5687655996311236085

`A223975(eq[4, A193592(n)])`
-/

namespace A223972.P5687655996311236085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223972.P5687655996311236085

/-! ## A223972.P16012464706301080073

`A223975(eq[8, A140996(n)])`
-/

namespace A223972.P16012464706301080073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223972.P16012464706301080073

/-! ## A223972.P11727406460688376194

`A223975(Δ[A023545(n+1)])`
-/

namespace A223972.P11727406460688376194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (f1 (n + 1) - f1 n).toNat

end

end A223972.P11727406460688376194

/-!
# A223973: Number of nX6 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223973, there is no canonical definition to state claims against.
-/

/-! ## A223973.P15538558805708247507

`A223975(eq[3, A219347(n)])`
-/

namespace A223973.P15538558805708247507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P15538558805708247507

/-! ## A223973.P1431736190530604008

`A223975(eq[5, A193592(n)])`
-/

namespace A223973.P1431736190530604008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P1431736190530604008

/-! ## A223973.P12864730007234490341

`A223975(eq[8, A258709(n)])`
-/

namespace A223973.P12864730007234490341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P12864730007234490341

/-! ## A223973.P18262169005845087114

`A223975(eq[6, A200370(n+1)])`
-/

namespace A223973.P18262169005845087114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P18262169005845087114

/-! ## A223973.P9380339694379697598

`A223975(eq[7, A049286(n+1)])`
-/

namespace A223973.P9380339694379697598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P9380339694379697598

/-!
# A223974: Number of nX7 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223974, there is no canonical definition to state claims against.
-/

/-! ## A223974.P12111428239211221029

`A223975(A055999(n+4))`
-/

namespace A223974.P12111428239211221029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A055999 (n + 4)).toNat

end

end A223974.P12111428239211221029

/-! ## A223974.P7210856825529726084

`A223975(eq[4, A219347(n)])`
-/

namespace A223974.P7210856825529726084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223974.P7210856825529726084

/-! ## A223974.P10191928540192819755

`A223975(eq[6, A193592(n)])`
-/

namespace A223974.P10191928540192819755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223974.P10191928540192819755

/-! ## A223974.P13443521435696795223

`A223975(A056000(n+3)+4)`
-/

namespace A223974.P13443521435696795223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056000 (n + 3) + 4).toNat

end

end A223974.P13443521435696795223

/-! ## A223974.P13990908079308248854

`A223975(A046691(n+5)-2)`
-/

namespace A223974.P13990908079308248854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A046691 (n + 5) - 2).toNat

end

end A223974.P13990908079308248854

/-!
# A223976: Number of 3Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223976, there is no canonical definition to state claims against.
-/

/-! ## A223976.P12302353448740199388

`A223975(∑[n+2]+4)`
-/

namespace A223976.P12302353448740199388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223976.P12302353448740199388

/-! ## A223976.P12545176642344137410

`A223975(A167614(n+1))+A011737(n)`
-/

namespace A223976.P12545176642344137410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167614 (n + 1)).toNat + A011737 n

end

end A223976.P12545176642344137410

/-! ## A223976.P1310363865791101765

`A036225(n)*A223975(A167614(n+1))`
-/

namespace A223976.P1310363865791101765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A223975 (A167614 (n + 1)).toNat

end

end A223976.P1310363865791101765

/-! ## A223976.P10737133273312208052

`A152848(n)*A223975(A167614(n+1))`
-/

namespace A223976.P10737133273312208052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A223975 (A167614 (n + 1)).toNat

end

end A223976.P10737133273312208052

/-! ## A223976.P5482328290558317258

`A223975(A167614(n+1))%A017585(n)`
-/

namespace A223976.P5482328290558317258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223975 (A167614 (n + 1)).toNat) (A017585 n)

end

end A223976.P5482328290558317258

/-!
# A223977: Number of 4Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223977, there is no canonical definition to state claims against.
-/

/-! ## A223977.P7420884866819410163

`A223975(A141214(n)+7)`
-/

namespace A223977.P7420884866819410163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A141214 n + 7).toNat

end

end A223977.P7420884866819410163

/-! ## A223977.P4700187012516798631

`A223975(A052905(n)+9)`
-/

namespace A223977.P4700187012516798631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A052905 n + 9).toNat

end

end A223977.P4700187012516798631

/-! ## A223977.P9585353343618789102

`A223975(A055999(n)+10)`
-/

namespace A223977.P9585353343618789102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A055999 n + 10).toNat

end

end A223977.P9585353343618789102

/-! ## A223977.P16863006143891645496

`record[A223975(A000096(n)+5)]`
-/

namespace A223977.P16863006143891645496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223977.P16863006143891645496

/-! ## A223977.P5591066187725379894

`A223975(A167614(n+2)+1)`
-/

namespace A223977.P5591066187725379894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167614 (n + 2) + 1).toNat

end

end A223977.P5591066187725379894

/-!
# A223978: Number of 5Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223978, there is no canonical definition to state claims against.
-/

/-! ## A223978.P12227664864930366277

`A223975(A167499(n+3))`
-/

namespace A223978.P12227664864930366277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167499 (n + 3)).toNat

end

end A223978.P12227664864930366277

/-! ## A223978.P14728100210246869046

`A223975(A155212(n)+13)`
-/

namespace A223978.P14728100210246869046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A155212 n + 13).toNat

end

end A223978.P14728100210246869046

/-! ## A223978.P10330129182274161260

`A223975(A056000(n)+15)`
-/

namespace A223978.P10330129182274161260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056000 n + 15).toNat

end

end A223978.P10330129182274161260

/-! ## A223978.P5682791702531668679

`A223975(eq[7, A066657(n)])`
-/

namespace A223978.P5682791702531668679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223978.P5682791702531668679

/-! ## A223978.P1802919836473299448

`A223975(A052905(n+1)+10)`
-/

namespace A223978.P1802919836473299448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A052905 (n + 1) + 10).toNat

end

end A223978.P1802919836473299448

/-!
# A223979: Number of 6 X n 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223979, there is no canonical definition to state claims against.
-/

/-! ## A223979.P2612472624671390009

`A223975(A056115(n)+21)`
-/

namespace A223979.P2612472624671390009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056115 n + 21).toNat

end

end A223979.P2612472624671390009

/-! ## A223979.P14420350219500475506

`A223975(A052905(n+2)+11)`
-/

namespace A223979.P14420350219500475506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A052905 (n + 2) + 11).toNat

end

end A223979.P14420350219500475506

/-! ## A223979.P11052191498638317682

`A223975(eq[7, A131818(n+1)])`
-/

namespace A223979.P11052191498638317682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223979.P11052191498638317682

/-! ## A223979.P2349935872245396846

`A223975(eq[4, A193592(n)]+10)`
-/

namespace A223979.P2349935872245396846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A223979.P2349935872245396846

/-! ## A223979.P11587023958631997879

`A223975(A000124(n+6)-(n+1))`
-/

namespace A223979.P11587023958631997879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A223979.P11587023958631997879

/-!
# A223980: Number of 7Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223980, there is no canonical definition to state claims against.
-/

/-! ## A223980.P12906476636289608662

`A223975(A167487(n+5))`
-/

namespace A223980.P12906476636289608662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167487 (n + 5)).toNat

end

end A223980.P12906476636289608662

/-! ## A223980.P11484232474450680064

`A223975(A056119(n)+28)`
-/

namespace A223980.P11484232474450680064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056119 n + 28).toNat

end

end A223980.P11484232474450680064

/-! ## A223980.P17989589202531432605

`A223975(eq[11, A066657(n)])`
-/

namespace A223980.P17989589202531432605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223980.P17989589202531432605

/-! ## A223980.P14327019672876868985

`A223975(A056000(n+2)+17)`
-/

namespace A223980.P14327019672876868985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056000 (n + 2) + 17).toNat

end

end A223980.P14327019672876868985

/-! ## A223980.P5090135428588464140

`A223975(eq[8, A131818(n+1)])`
-/

namespace A223980.P5090135428588464140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223980.P5090135428588464140

/-!
# A223981: Number of n X n 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223981, there is no canonical definition to state claims against.
-/

/-! ## A223981.P13037006435394302051

`A223987(∑[4*n]+1)`
-/

namespace A223981.P13037006435394302051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223981.P13037006435394302051

/-! ## A223981.P8822422477711917175

`record[A003982(n)*A223987(n+1)]`
-/

namespace A223981.P8822422477711917175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223981.P8822422477711917175

/-! ## A223981.P8957688564639251860

`record[gcd(A037012(n), A223987(n+1))]`
-/

namespace A223981.P8957688564639251860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223981.P8957688564639251860

/-! ## A223981.P8387787144589650958

`A223987(A001844(n))+A025439(n)`
-/

namespace A223981.P8387787144589650958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A001844 n).toNat + A025439 n

end

end A223981.P8387787144589650958

/-! ## A223981.P17003073561947233496

`A223987(A001844(n))/A007318(C(n, 2))`
-/

namespace A223981.P17003073561947233496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223987 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A223981.P17003073561947233496

/-!
# A223982: Number of n X 3 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223982, there is no canonical definition to state claims against.
-/

/-! ## A223982.P3434279882255196420

`A223987(∑[n+3]+1)`
-/

namespace A223982.P3434279882255196420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223982.P3434279882255196420

/-! ## A223982.P9611718380384026389

`A223987(A034856(n+2))%A289953(n)`
-/

namespace A223982.P9611718380384026389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223987 (A034856 (n + 2)).toNat) (A289953 (n + 10))

end

end A223982.P9611718380384026389

/-!
# A223983: Number of nX4 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223983, there is no canonical definition to state claims against.
-/

/-! ## A223983.P9764876057207320008

`A223987(A141214(n+1))`
-/

namespace A223983.P9764876057207320008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A141214 (n + 1)).toNat

end

end A223983.P9764876057207320008

/-! ## A223983.P11536626592212030570

`A223987(A027379(n+2))`
-/

namespace A223983.P11536626592212030570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A027379 (n + 2)).toNat

end

end A223983.P11536626592212030570

/-! ## A223983.P5047244779533302410

`A223987(A055998(n+2))`
-/

namespace A223983.P5047244779533302410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A055998 (n + 2)).toNat

end

end A223983.P5047244779533302410

/-! ## A223983.P9803784492019111832

`A223987(A155212(n)+5)`
-/

namespace A223983.P9803784492019111832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A155212 n + 5).toNat

end

end A223983.P9803784492019111832

/-! ## A223983.P5908833740113978033

`A223987(A056000(n)+7)`
-/

namespace A223983.P5908833740113978033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A056000 n + 7).toNat

end

end A223983.P5908833740113978033

/-!
# A223984: Number of nX5 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223984, there is no canonical definition to state claims against.
-/

/-! ## A223984.P6569845303241177800

`A223987(eq[2, A092921(n)])`
-/

namespace A223984.P6569845303241177800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223984.P6569845303241177800

/-! ## A223984.P4520163402372925337

`A223987(eq[4, A193592(n)])`
-/

namespace A223984.P4520163402372925337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223984.P4520163402372925337

/-! ## A223984.P4136702239653045909

`A223987(Δ[A023545(n+1)])`
-/

namespace A223984.P4136702239653045909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (f1 (n + 1) - f1 n).toNat

end

end A223984.P4136702239653045909

/-! ## A223984.P14393904714363680321

`A223987(A027379(n+3)-1)`
-/

namespace A223984.P14393904714363680321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A027379 (n + 3) - 1).toNat

end

end A223984.P14393904714363680321

/-! ## A223984.P17371809351216481900

`A223987(eq[6, A185782(n+1)])`
-/

namespace A223984.P17371809351216481900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223984.P17371809351216481900

/-!
# A223985: Number of nX6 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223985, there is no canonical definition to state claims against.
-/

/-! ## A223985.P10138434514254043120

`A223987(A052905(n+3))`
-/

namespace A223985.P10138434514254043120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A052905 (n + 3)).toNat

end

end A223985.P10138434514254043120

/-! ## A223985.P3947816488817889580

`A223987(eq[3, A219347(n)])`
-/

namespace A223985.P3947816488817889580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223985.P3947816488817889580

/-! ## A223985.P12655819542246401540

`A223987(eq[5, A193592(n)])`
-/

namespace A223985.P12655819542246401540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223985.P12655819542246401540

/-! ## A223985.P10394487897952866202

`A223987(A000124(n+6)-6)`
-/

namespace A223985.P10394487897952866202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A000124 (n + 6) - 6).toNat

end

end A223985.P10394487897952866202

/-! ## A223985.P3829319554254871006

`A223987(eq[8, A185782(n+1)])`
-/

namespace A223985.P3829319554254871006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223985.P3829319554254871006

/-!
# A223986: Number of nX7 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223986, there is no canonical definition to state claims against.
-/

/-! ## A223986.P12896404629455976685

`A223987(A055999(n+4))`
-/

namespace A223986.P12896404629455976685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A055999 (n + 4)).toNat

end

end A223986.P12896404629455976685

/-! ## A223986.P15071424934535584402

`A223987(eq[4, A219347(n)])`
-/

namespace A223986.P15071424934535584402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223986.P15071424934535584402

/-! ## A223986.P2208828554230351925

`A223987(eq[6, A193592(n)])`
-/

namespace A223986.P2208828554230351925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223986.P2208828554230351925

/-! ## A223986.P11592537166163973302

`A223987(A000124(n+7)-7)`
-/

namespace A223986.P11592537166163973302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A000124 (n + 7) - 7).toNat

end

end A223986.P11592537166163973302

/-! ## A223986.P5239594931415219508

`A223987(eq[10, A185782(n+1)])`
-/

namespace A223986.P5239594931415219508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223986.P5239594931415219508

/-!
# A223987: T(n,k)=Number of nXk 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223987, there is no canonical definition to state claims against.
-/

/-! ## A223987.P16725429622975236872

`A004277(A223864(n+1))-A224173(n+1)`
-/

namespace A223987.P16725429622975236872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223864 (n + 1)).toNat - A224173 (n + 1)

end

end A223987.P16725429622975236872

/-!
# A223988: Number of 3Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223988, there is no canonical definition to state claims against.
-/

/-! ## A223988.P14950510000898437059

`A223987(∑[n+2]+4)`
-/

namespace A223988.P14950510000898437059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223988.P14950510000898437059

/-! ## A223988.P9298925030538113017

`lcm((-1)^n, A223987(A167614(n+1)))`
-/

namespace A223988.P9298925030538113017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223987 (A167614 (n + 1)).toNat)

end

end A223988.P9298925030538113017

/-! ## A223988.P11769212565022419817

`A223987(A167614(n+1))+A185246(n)`
-/

namespace A223988.P11769212565022419817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167614 (n + 1)).toNat + A185246 n

end

end A223988.P11769212565022419817

/-! ## A223988.P11323055815711060912

`A223987(A167614(n+1))+A000007(n+1)`
-/

namespace A223988.P11323055815711060912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A223988.P11323055815711060912

/-! ## A223988.P12475548753401589593

`A223987(A167614(n+1))+A000035(2*n)`
-/

namespace A223988.P12475548753401589593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A223988.P12475548753401589593

/-!
# A223989: Number of 4Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223989, there is no canonical definition to state claims against.
-/

/-! ## A223989.P7461446746970176531

`A223987(A141214(n)+7)`
-/

namespace A223989.P7461446746970176531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A141214 n + 7).toNat

end

end A223989.P7461446746970176531

/-! ## A223989.P10057720134319555005

`A223987(A052905(n)+9)`
-/

namespace A223989.P10057720134319555005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A052905 n + 9).toNat

end

end A223989.P10057720134319555005

/-! ## A223989.P13134773107399683281

`A223987(A055999(n)+10)`
-/

namespace A223989.P13134773107399683281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A055999 n + 10).toNat

end

end A223989.P13134773107399683281

/-! ## A223989.P1347707664459071306

`A223987(Δ[A008778(n)]+6)`
-/

namespace A223989.P1347707664459071306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (f1 (n + 1) - f1 n + 6).toNat

end

end A223989.P1347707664459071306

/-! ## A223989.P1494667115072284690

`A223987(A167614(n+2)+1)`
-/

namespace A223989.P1494667115072284690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167614 (n + 2) + 1).toNat

end

end A223989.P1494667115072284690

/-!
# A223990: Number of 5Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223990, there is no canonical definition to state claims against.
-/

/-! ## A223990.P12878629094445889038

`A223987(A167499(n+3))`
-/

namespace A223990.P12878629094445889038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167499 (n + 3)).toNat

end

end A223990.P12878629094445889038

/-! ## A223990.P14465729932508908791

`A223987(A155212(n)+13)`
-/

namespace A223990.P14465729932508908791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A155212 n + 13).toNat

end

end A223990.P14465729932508908791

/-! ## A223990.P4261012082768474136

`A223987(A056000(n)+15)`
-/

namespace A223990.P4261012082768474136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A056000 n + 15).toNat

end

end A223990.P4261012082768474136

/-! ## A223990.P7450877465039612534

`A223987(A141214(n+1)+8)`
-/

namespace A223990.P7450877465039612534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A141214 (n + 1) + 8).toNat

end

end A223990.P7450877465039612534

/-! ## A223990.P8169996061761987236

`A223987(A055999(n+1)+11)`
-/

namespace A223990.P8169996061761987236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A055999 (n + 1) + 11).toNat

end

end A223990.P8169996061761987236

/-!
# A223991: Number of 6Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223991, there is no canonical definition to state claims against.
-/

/-! ## A223991.P9777887570378338170

`A223987(A056115(n)+21)`
-/

namespace A223991.P9777887570378338170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A056115 n + 21).toNat

end

end A223991.P9777887570378338170

/-! ## A223991.P4152729505679294663

`A223987(A034856(n+4)+8)`
-/

namespace A223991.P4152729505679294663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A034856 (n + 4) + 8).toNat

end

end A223991.P4152729505679294663

/-! ## A223991.P3288216223388074970

`A223987(A052905(n+2)+11)`
-/

namespace A223991.P3288216223388074970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A052905 (n + 2) + 11).toNat

end

end A223991.P3288216223388074970

/-! ## A223991.P15144749433046338906

`A223987(eq[7, A131818(n+1)])`
-/

namespace A223991.P15144749433046338906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223991.P15144749433046338906

/-! ## A223991.P8046931002420077918

`A223987(A000124(n+6)-(n+1))`
-/

namespace A223991.P8046931002420077918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A223991.P8046931002420077918

/-!
# A223992: Number of 7Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223992, there is no canonical definition to state claims against.
-/

/-! ## A223992.P17804808149138659447

`A223987(A056119(n)+28)`
-/

namespace A223992.P17804808149138659447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A056119 n + 28).toNat

end

end A223992.P17804808149138659447

/-! ## A223992.P6815474039136329528

`A223987(eq[11, A066657(n)])`
-/

namespace A223992.P6815474039136329528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223992.P6815474039136329528

/-! ## A223992.P4869993982992257277

`A223987(A000124(n+6)+6)`
-/

namespace A223992.P4869993982992257277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A000124 (n + 6) + 6).toNat

end

end A223992.P4869993982992257277

/-! ## A223992.P16777600023637946080

`A223987(A000217(n+6)+7)`
-/

namespace A223992.P16777600023637946080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A000217 (n + 6) + 7).toNat

end

end A223992.P16777600023637946080

/-! ## A223992.P10869242262399512764

`A223987(eq[8, A131818(n+1)])`
-/

namespace A223992.P10869242262399512764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223992.P10869242262399512764

/-!
# A223993: Number of n X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223993, there is no canonical definition to state claims against.
-/

/-! ## A223993.P14413006405308628500

`A223999(∑[4*n]+1)`
-/

namespace A223993.P14413006405308628500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223993.P14413006405308628500

/-! ## A223993.P8840353804084370256

`record[A223999(Δ[A014112(n+1)])]`
-/

namespace A223993.P8840353804084370256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P8840353804084370256

/-! ## A223993.P7774161069730158411

`record[A003982(n)*A223999(n+1)]`
-/

namespace A223993.P7774161069730158411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P7774161069730158411

/-! ## A223993.P10771907811856841527

`record[gcd(A114327(n), A223999(n+1))]`
-/

namespace A223993.P10771907811856841527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223999 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P10771907811856841527

/-! ## A223993.P15052281107317063927

`record[root(A223999(n+1), A286157(n+1))]`
-/

namespace A223993.P15052281107317063927
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223999 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P15052281107317063927

/-!
# A223994: Number of nX3 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223994, there is no canonical definition to state claims against.
-/

/-! ## A223994.P8061467536397100907

`A223999(∑[n+3]+1)`
-/

namespace A223994.P8061467536397100907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223994.P8061467536397100907

/-! ## A223994.P15216553158441675379

`lcm(2, A223999(A141214(n)+1))`
-/

namespace A223994.P15216553158441675379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223999 (A141214 n + 1).toNat)

end

end A223994.P15216553158441675379

/-! ## A223994.P6062297699327195922

`or(A000038(n), A223999(A141214(n)+1))`
-/

namespace A223994.P6062297699327195922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223999 (A141214 n + 1).toNat)

end

end A223994.P6062297699327195922

/-! ## A223994.P15540766458486602139

`A223999(A141214(n)+1)+A000007(n+1)`
-/

namespace A223994.P15540766458486602139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A141214 n + 1).toNat + A000007 (n + 1)

end

end A223994.P15540766458486602139

/-! ## A223994.P10343770236206118951

`A223999(A141214(n)+1)+A000038((n+1)²)`
-/

namespace A223994.P10343770236206118951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A141214 n + 1).toNat + A000038 ((n + 1) ^ 2)

end

end A223994.P10343770236206118951

/-!
# A223995: Number of nX4 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223995, there is no canonical definition to state claims against.
-/

/-! ## A223995.P16769678617711746520

`A223999(A141214(n+1))`
-/

namespace A223995.P16769678617711746520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A141214 (n + 1)).toNat

end

end A223995.P16769678617711746520

/-! ## A223995.P16339941251333340465

`A223999(A027379(n+2))`
-/

namespace A223995.P16339941251333340465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A027379 (n + 2)).toNat

end

end A223995.P16339941251333340465

/-! ## A223995.P818500692163280514

`A223999(A155212(n)+5)`
-/

namespace A223995.P818500692163280514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A155212 n + 5).toNat

end

end A223995.P818500692163280514

/-! ## A223995.P17834124149902073609

`A223999(A056000(n)+7)`
-/

namespace A223995.P17834124149902073609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A056000 n + 7).toNat

end

end A223995.P17834124149902073609

/-! ## A223995.P9774139167476842814

`A223999(A052905(n+1)+2)`
-/

namespace A223995.P9774139167476842814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A052905 (n + 1) + 2).toNat

end

end A223995.P9774139167476842814

/-!
# A223996: Number of nX5 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223996, there is no canonical definition to state claims against.
-/

/-! ## A223996.P8996729671402383960

`A223999(∑[n+5]+6)`
-/

namespace A223996.P8996729671402383960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223996.P8996729671402383960

/-! ## A223996.P8860523401871980622

`or(C(2, n+2), A223999(A000217(n+5)-4))`
-/

namespace A223996.P8860523401871980622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A223999 (A000217 (n + 5) - 4).toNat)

end

end A223996.P8860523401871980622

/-! ## A223996.P349381725788758894

`A062513(n+1)*A223999(A046691(n+3))`
-/

namespace A223996.P349381725788758894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A223999 (A046691 (n + 3)).toNat

end

end A223996.P349381725788758894

/-! ## A223996.P12173577018278557995

`A215075(A000124(n))*A223999(A046691(n+3))`
-/

namespace A223996.P12173577018278557995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A000124 n).toNat * A223999 (A046691 (n + 3)).toNat

end

end A223996.P12173577018278557995

/-! ## A223996.P12394887365339456223

`A008480(A000015(n+1))*A223999(A046691(n+3))`
-/

namespace A223996.P12394887365339456223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A000015 (n + 1)).toNat * A223999 (A046691 (n + 3)).toNat

end

end A223996.P12394887365339456223

/-!
# A223997: Number of nX6 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223997, there is no canonical definition to state claims against.
-/

/-! ## A223997.P1544264988033292869

`A223999(A052905(n+3))`
-/

namespace A223997.P1544264988033292869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A052905 (n + 3)).toNat

end

end A223997.P1544264988033292869

/-! ## A223997.P3770825925834300677

`A223999(A027379(n+4)-2)`
-/

namespace A223997.P3770825925834300677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A027379 (n + 4) - 2).toNat

end

end A223997.P3770825925834300677

/-! ## A223997.P16873680462078677602

`A223999(A000096(n+5)-4)`
-/

namespace A223997.P16873680462078677602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000096 (n + 5) - 4).toNat

end

end A223997.P16873680462078677602

/-! ## A223997.P14366837711470985967

`A223999(A000217(n+6)-5)`
-/

namespace A223997.P14366837711470985967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000217 (n + 6) - 5).toNat

end

end A223997.P14366837711470985967

/-! ## A223997.P16389480137920131240

`A223999(A000124(n+6)-6)`
-/

namespace A223997.P16389480137920131240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 6) - 6).toNat

end

end A223997.P16389480137920131240

/-!
# A223998: Number of nX7 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223998, there is no canonical definition to state claims against.
-/

/-! ## A223998.P9955270809370928106

`A223999(A055999(n+4))`
-/

namespace A223998.P9955270809370928106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A055999 (n + 4)).toNat

end

end A223998.P9955270809370928106

/-! ## A223998.P8811271179797865771

`A223999(A000096(n+6)-5)`
-/

namespace A223998.P8811271179797865771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000096 (n + 6) - 5).toNat

end

end A223998.P8811271179797865771

/-! ## A223998.P16319761357532403801

`A223999(A000217(n+7)-6)`
-/

namespace A223998.P16319761357532403801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000217 (n + 7) - 6).toNat

end

end A223998.P16319761357532403801

/-! ## A223998.P2110880887389792485

`A223999(A000124(n+7)-7)`
-/

namespace A223998.P2110880887389792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 7) - 7).toNat

end

end A223998.P2110880887389792485

/-! ## A223998.P7197310801042736702

`A223999(eq[7, A004736(n+1)]+1)`
-/

namespace A223998.P7197310801042736702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223998.P7197310801042736702

