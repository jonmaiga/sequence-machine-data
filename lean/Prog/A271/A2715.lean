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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271500: Positions of terms greater than 1 in A271498.

The programs for A271500, there is no canonical definition to state claims against.
-/

/-! ## A271500.P3603208576753940142

`lt[1, A271498(n+1)]+1`
-/

namespace A271500.P3603208576753940142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A271500.P3603208576753940142

/-! ## A271500.P4931415912380979989

`lt[2, A271498(ceil(abs((2*n-1)/2)))]`
-/

namespace A271500.P4931415912380979989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 ⌈|((2 * n : ℤ) - 1 : ℚ) / 2|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271500.P4931415912380979989

/-! ## A271500.P16660246934042488229

`A293754(lt[1, A271498(n+1)])`
-/

namespace A271500.P16660246934042488229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A271500.P16660246934042488229

/-! ## A271500.P7305976203597822880

`eq[A068907(A000120(n)), A326292(n)]`
-/

namespace A271500.P7305976203597822880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271500.P7305976203597822880

/-! ## A271500.P12649267938732259043

`lt[A275535(2*n+1), A262065(A160899(2*n+1))]`
-/

namespace A271500.P12649267938732259043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275535 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (A160899 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271500.P12649267938732259043

/-!
# A271503: a(1) = 1; thereafter a(n) is the product of all 0 < m < n for which a(m) divides n.

The programs for A271503, there is no canonical definition to state claims against.
-/

/-! ## A271503.P10076390085584686546

`A268385(A271504(n+1))`
-/

namespace A271503.P10076390085584686546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A271504 (n + 1)).toNat

end

end A271503.P10076390085584686546

/-! ## A271503.P7772301174231687776

`A278233(A000254(n)+1-n)`
-/

namespace A271503.P7772301174231687776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A000254 n + (1 - (n : ℤ))).toNat

end

end A271503.P7772301174231687776

/-! ## A271503.P4750254102905216298

`A278233(1-(n-A000254(n)))`
-/

namespace A271503.P4750254102905216298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (1 - ((n : ℤ) - A000254 n)).toNat

end

end A271503.P4750254102905216298

/-! ## A271503.P9067231910970175340

`A278224(or(A006154(n), A278241(n)))`
-/

namespace A271503.P9067231910970175340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (Int.lor (A006154 n) (A278241 n)).toNat

end

end A271503.P9067231910970175340

/-!
# A271504: With a(1) = 1, a(n) is the LCM of all 0 < m < n for which a(m) divides n.

The programs for A271504, there is no canonical definition to state claims against.
-/

/-! ## A271504.P12454757377336119299

`A278540(A041179(n))`
-/

namespace A271504.P12454757377336119299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A041179 n).toNat

end

end A271504.P12454757377336119299

/-! ## A271504.P2771132728940511383

`A046523(A373228(n!))`
-/

namespace A271504.P2771132728940511383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A373228 (Nat.factorial n)).toNat

end

end A271504.P2771132728940511383

/-! ## A271504.P10751766620893557224

`A278250(A106134(n+1))`
-/

namespace A271504.P10751766620893557224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278250 (A106134 (n + 1)).toNat

end

end A271504.P10751766620893557224

/-! ## A271504.P13819411995829829367

`A046523(A303259(record[∏{p}[n, #]]))`
-/

namespace A271504.P13819411995829829367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A303259 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A271504.P13819411995829829367

/-!
# A271507: Number of self-avoiding walks of any length from NW to SW corners on an n X n grid or lattice.

The programs for A271507, there is no canonical definition to state claims against.
-/

/-! ## A271507.P11870918255648932631

`A271465(2*(n+1)²-2*(n+1)+1)`
-/

namespace A271507.P11870918255648932631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A271507.P11870918255648932631

/-! ## A271507.P12914102158281008874

`record[A003982(n)*A271465(n+1)]`
-/

namespace A271507.P12914102158281008874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A271465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271507.P12914102158281008874

/-! ## A271507.P8749869675319698867

`record[gcd(A114327(n), A271465(n+1))]`
-/

namespace A271507.P8749869675319698867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A271465 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271507.P8749869675319698867

/-! ## A271507.P17651097503278791829

`A271465(A001844(n))+A165656(n)`
-/

namespace A271507.P17651097503278791829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A001844 n).toNat + A165656 n

end

end A271507.P17651097503278791829

/-! ## A271507.P6737990632423347175

`A007318(val(n+1, 5))*A271465(A001844(n))`
-/

namespace A271507.P6737990632423347175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A271465 (A001844 n).toNat

end

end A271507.P6737990632423347175

/-!
# A271508: Numbers that are congruent to {1,4} mod 10.

The programs for A271508, the canonical program `A271508.P5883315918799998758` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271508 has offset 1).

The definition of A271508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271508.P5883315918799998758

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271508

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5883315918799998758.Spec : Prop :=
  ∀ n, P5883315918799998758.a n = A271508 (n + 1)

theorem P5883315918799998758.correct : P5883315918799998758.Spec := by
  intro n
  simp only [A271508, Nat.add_sub_cancel]

end A271508

/-! ## A271508.P5784912081990490139

`n+1+2*A042948(n)`
-/

namespace A271508.P5784912081990490139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + 2 * A042948 n)

end

end A271508.P5784912081990490139

namespace A271508

/-- `n+1+2*A042948(n)` -/
def P5784912081990490139.Spec : Prop :=
  ∀ n, P5784912081990490139.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P16696658799980022158

`xor(1, 5*n)`
-/

namespace A271508.P16696658799980022158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n)

end

end A271508.P16696658799980022158

namespace A271508

/-- `xor(1, 5*n)` -/
def P16696658799980022158.Spec : Prop :=
  ∀ n, (P16696658799980022158.a n : ℤ) = A271508 (n + 1)

end A271508

/-! ## A271508.P4549490272776539417

`comp[xor(n, gcd(5, n))]`
-/

namespace A271508.P4549490272776539417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 5 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A271508.P4549490272776539417

namespace A271508

/-- `comp[xor(n, gcd(5, n))]` -/
def P4549490272776539417.Spec : Prop :=
  ∀ n, (P4549490272776539417.a n : ℤ) = A271508 (n + 1)

end A271508

/-! ## A271508.P15259656748802228447

`(-1)^n+5*n`
-/

namespace A271508.P15259656748802228447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (5 * n : ℤ)

end

end A271508.P15259656748802228447

namespace A271508

/-- `(-1)^n+5*n` -/
def P15259656748802228447.Spec : Prop :=
  ∀ n, P15259656748802228447.a n = A271508 (n + 1)

theorem P15259656748802228447.correct : P15259656748802228447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A271508, Nat.add_sub_cancel, A271508.P15259656748802228447.a, A271508.P5883315918799998758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A271508, Nat.add_sub_cancel, A271508.P15259656748802228447.a, A271508.P5883315918799998758.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271508

/-! ## A271508.P13571501090260168172

`abs(a(n-2)+10)` with `a(0)=1, a(1)=4`
-/

namespace A271508.P13571501090260168172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 10

end

end A271508.P13571501090260168172

namespace A271508

/-- `abs(a(n-2)+10)` -/
def P13571501090260168172.Spec : Prop :=
  ∀ n, (P13571501090260168172.a n : ℤ) = A271508 (n + 1)

end A271508

/-! ## A271508.P647772881600751429

`∑[10-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A271508.P647772881600751429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271508.P647772881600751429

namespace A271508

/-- `∑[10-a(n-1)]` -/
def P647772881600751429.Spec : Prop :=
  ∀ n, P647772881600751429.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P11896556366685570301

`abs(record[or(5, n)-4]+n)`
-/

namespace A271508.P11896556366685570301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)|

end

end A271508.P11896556366685570301

namespace A271508

/-- `abs(record[or(5, n)-4]+n)` -/
def P11896556366685570301.Spec : Prop :=
  ∀ n, P11896556366685570301.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P6180106412017210157

`abs(n+1-or(2, 6*n))`
-/

namespace A271508.P6180106412017210157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - (Nat.lor 2 (6 * n) : ℤ)|

end

end A271508.P6180106412017210157

namespace A271508

/-- `abs(n+1-or(2, 6*n))` -/
def P6180106412017210157.Spec : Prop :=
  ∀ n, P6180106412017210157.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P12386748721036373911

`2*(a(n-2)/2+5)` with `a(0)=1, a(1)=4`
-/

namespace A271508.P12386748721036373911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 2) / 2 + 5)

end

end A271508.P12386748721036373911

namespace A271508

/-- `2*(a(n-2)/2+5)` -/
def P12386748721036373911.Spec : Prop :=
  ∀ n, P12386748721036373911.a n = (A271508 (n + 1) : ℚ)

end A271508

/-! ## A271508.P13260470347631847499

`floor(a(n-2)+4^(5/3))` with `a(0)=1, a(1)=4`
-/

namespace A271508.P13260470347631847499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(a (n - 2) : ℝ) + (4 : ℝ) ^ ((5 : ℚ) / 3 : ℝ)⌋

end

end A271508.P13260470347631847499

namespace A271508

/-- `floor(a(n-2)+4^(5/3))` -/
def P13260470347631847499.Spec : Prop :=
  ∀ n, P13260470347631847499.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P15844951766782537950

`record[5*(n-2)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A271508.P15844951766782537950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 * ((n : ℤ) - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271508.P15844951766782537950

namespace A271508

/-- `record[5*(n-2)-a(n-2)]` -/
def P15844951766782537950.Spec : Prop :=
  ∀ n, P15844951766782537950.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P907427706191001294

`3*(4-(2-a(n-2))/3)` with `a(0)=1, a(1)=4`
-/

namespace A271508.P907427706191001294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (4 - (2 - a (n - 2)) / 3)

end

end A271508.P907427706191001294

namespace A271508

/-- `3*(4-(2-a(n-2))/3)` -/
def P907427706191001294.Spec : Prop :=
  ∀ n, P907427706191001294.a n = (A271508 (n + 1) : ℚ)

end A271508

/-! ## A271508.P7801372754686438499

`floor(2*(a(n-2)+5)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A271508.P7801372754686438499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 2) + 5) - a (n - 2)

end

end A271508.P7801372754686438499

namespace A271508

/-- `floor(2*(a(n-2)+5)-a(n-2))` -/
def P7801372754686438499.Spec : Prop :=
  ∀ n, P7801372754686438499.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P16736087431337647515

`∑[A026499(a(n-1))]` with `a(0)=1`
-/

namespace A271508.P16736087431337647515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026499 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271508.P16736087431337647515

namespace A271508

/-- `∑[A026499(a(n-1))]` -/
def P16736087431337647515.Spec : Prop :=
  ∀ n, P16736087431337647515.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P3712663717546482529

`∑[A033465(a(n-1))]` with `a(0)=1`
-/

namespace A271508.P3712663717546482529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033465 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271508.P3712663717546482529

namespace A271508

/-- `∑[A033465(a(n-1))]` -/
def P3712663717546482529.Spec : Prop :=
  ∀ n, P3712663717546482529.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P10912551833753264674

`∑[A040715(a(n-1))]` with `a(0)=1`
-/

namespace A271508.P10912551833753264674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040715 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271508.P10912551833753264674

namespace A271508

/-- `∑[A040715(a(n-1))]` -/
def P10912551833753264674.Spec : Prop :=
  ∀ n, P10912551833753264674.a n = A271508 (n + 1)

end A271508

/-! ## A271508.P4672270955987724915

`A017449(n)%A295821(n)`
-/

namespace A271508.P4672270955987724915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017449 n) (A295821 n)

end

end A271508.P4672270955987724915

namespace A271508

/-- `A017449(n)%A295821(n)` -/
def P4672270955987724915.Spec : Prop :=
  ∀ n, P4672270955987724915.a n = A271508 (n + 1)

end A271508

/-!
# A271511: a(n) = (p+1)*(p+2)/2 where p is the n-th prime.

The programs for A271511, the canonical program `A271511.P3918627091132883084` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271511 has offset 1).

The definition of A271511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271511.P3918627091132883084

`C(A052147(n+1), 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A271511

/-- `C(A052147(n+1), 2)` -/
def P3918627091132883084.Spec : Prop :=
  ∀ n, (P3918627091132883084.a n : ℤ) = A271511 (n + 1)

theorem P3918627091132883084.correct : P3918627091132883084.Spec := by
  intro n
  simp only [A271511, Nat.add_sub_cancel]

end A271511

/-! ## A271511.P2522849982806898672

`C(Δ[A007504(n)]+2, 2)`
-/

namespace A271511.P2522849982806898672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 2).toNat 2

end

end A271511.P2522849982806898672

namespace A271511

/-- `C(Δ[A007504(n)]+2, 2)` -/
def P2522849982806898672.Spec : Prop :=
  ∀ n, (P2522849982806898672.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P724121335257138779

`C(p?[A259153(n)]+2, 2)`
-/

namespace A271511.P724121335257138779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat 2

end

end A271511.P724121335257138779

namespace A271511

/-- `C(p?[A259153(n)]+2, 2)` -/
def P724121335257138779.Spec : Prop :=
  ∀ n, (P724121335257138779.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P14919478720917509567

`C(A008864(n+1)+1, 2)`
-/

namespace A271511.P14919478720917509567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 1) + 1).toNat 2

end

end A271511.P14919478720917509567

namespace A271511

/-- `C(A008864(n+1)+1, 2)` -/
def P14919478720917509567.Spec : Prop :=
  ∀ n, (P14919478720917509567.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P3860416156470500045

`C(A000040(n+1)+2, 2)`
-/

namespace A271511.P3860416156470500045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) + 2).toNat 2

end

end A271511.P3860416156470500045

namespace A271511

/-- `C(A000040(n+1)+2, 2)` -/
def P3860416156470500045.Spec : Prop :=
  ∀ n, (P3860416156470500045.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P6058559543770414173

`C(A113935(n+1)-1, 2)`
-/

namespace A271511.P6058559543770414173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113935 (n + 1) - 1).toNat 2

end

end A271511.P6058559543770414173

namespace A271511

/-- `C(A113935(n+1)-1, 2)` -/
def P6058559543770414173.Spec : Prop :=
  ∀ n, (P6058559543770414173.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P13284929880892345730

`C(A040976(n+1)+4, 2)`
-/

namespace A271511.P13284929880892345730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040976 (n + 1) + 4).toNat 2

end

end A271511.P13284929880892345730

namespace A271511

/-- `C(A040976(n+1)+4, 2)` -/
def P13284929880892345730.Spec : Prop :=
  ∀ n, (P13284929880892345730.a n : ℤ) = A271511 (n + 1)

end A271511

/-! ## A271511.P16070409503233812914

`A034953(n+1)+A008864(n+1)`
-/

namespace A271511.P16070409503233812914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + A008864 (n + 1)

end

end A271511.P16070409503233812914

namespace A271511

/-- `A034953(n+1)+A008864(n+1)` -/
def P16070409503233812914.Spec : Prop :=
  ∀ n, P16070409503233812914.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P15209462806367751805

`A072055(n+1)+A008837(n+1)`
-/

namespace A271511.P15209462806367751805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A008837 (n + 1)

end

end A271511.P15209462806367751805

namespace A271511

/-- `A072055(n+1)+A008837(n+1)` -/
def P15209462806367751805.Spec : Prop :=
  ∀ n, P15209462806367751805.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P4808079703299319819

`A100484(n+1)+A072205(n+1)`
-/

namespace A271511.P4808079703299319819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A072205 (n + 1)

end

end A271511.P4808079703299319819

namespace A271511

/-- `A100484(n+1)+A072205(n+1)` -/
def P4808079703299319819.Spec : Prop :=
  ∀ n, P4808079703299319819.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P13523068541353723366

`A060800(n+1)-A008837(n+1)`
-/

namespace A271511.P13523068541353723366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - A008837 (n + 1)

end

end A271511.P13523068541353723366

namespace A271511

/-- `A060800(n+1)-A008837(n+1)` -/
def P13523068541353723366.Spec : Prop :=
  ∀ n, P13523068541353723366.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P15771612042248146

`A110833(n+1)-A034953(n+1)`
-/

namespace A271511.P15771612042248146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) - A034953 (n + 1)

end

end A271511.P15771612042248146

namespace A271511

/-- `A110833(n+1)-A034953(n+1)` -/
def P15771612042248146.Spec : Prop :=
  ∀ n, P15771612042248146.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P3216719594751673870

`A138418(n+1)%A060800(n+1)`
-/

namespace A271511.P3216719594751673870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138418 (n + 1)) (A060800 (n + 1))

end

end A271511.P3216719594751673870

namespace A271511

/-- `A138418(n+1)%A060800(n+1)` -/
def P3216719594751673870.Spec : Prop :=
  ∀ n, P3216719594751673870.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P11067270568000679269

`A138452(n+1)%A181150(n+1)`
-/

namespace A271511.P11067270568000679269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138452 (n + 1)) (A181150 (n + 1))

end

end A271511.P11067270568000679269

namespace A271511

/-- `A138452(n+1)%A181150(n+1)` -/
def P11067270568000679269.Spec : Prop :=
  ∀ n, P11067270568000679269.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P12679242116313822851

`A000040(n+1)+A034953(n+1)+1`
-/

namespace A271511.P12679242116313822851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A034953 (n + 1) + 1)

end

end A271511.P12679242116313822851

namespace A271511

/-- `A000040(n+1)+A034953(n+1)+1` -/
def P12679242116313822851.Spec : Prop :=
  ∀ n, P12679242116313822851.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P18075443985182155481

`A000040(n+1)+A072205(n+1)+A000040(n+1)`
-/

namespace A271511.P18075443985182155481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A072205 (n + 1) + A000040 (n + 1))

end

end A271511.P18075443985182155481

namespace A271511

/-- `A000040(n+1)+A072205(n+1)+A000040(n+1)` -/
def P18075443985182155481.Spec : Prop :=
  ∀ n, P18075443985182155481.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P11797817403908341245

`A034953(n+1)+A382070(n+1)-A367573(n+1)`
-/

namespace A271511.P11797817403908341245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + (A382070 (n + 1) - A367573 (n + 1))

end

end A271511.P11797817403908341245

namespace A271511

/-- `A034953(n+1)+A382070(n+1)-A367573(n+1)` -/
def P11797817403908341245.Spec : Prop :=
  ∀ n, P11797817403908341245.a n = A271511 (n + 1)

end A271511

/-! ## A271511.P3443066441001973432

`A008864(n+1)+A127918(n+1)/A006093(n+1)`
-/

namespace A271511.P3443066441001973432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) + (A127918 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A271511.P3443066441001973432

namespace A271511

/-- `A008864(n+1)+A127918(n+1)/A006093(n+1)` -/
def P3443066441001973432.Spec : Prop :=
  ∀ n, P3443066441001973432.a n = (A271511 (n + 1) : ℚ)

end A271511

/-! ## A271511.P3876280365017820464

`(A179546(n+1)+A000040(n+1))/A000040(n+1)`
-/

namespace A271511.P3876280365017820464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179546 (n + 1) + A000040 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A271511.P3876280365017820464

namespace A271511

/-- `(A179546(n+1)+A000040(n+1))/A000040(n+1)` -/
def P3876280365017820464.Spec : Prop :=
  ∀ n, P3876280365017820464.a n = (A271511 (n + 1) : ℚ)

end A271511

/-! ## A271511.P14016255931188874171

`A034953(n+1)+A127917(n+1)/A036689(n+1)`
-/

namespace A271511.P14016255931188874171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034953 (n + 1) : ℚ) + (A127917 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ)

end

end A271511.P14016255931188874171

namespace A271511

/-- `A034953(n+1)+A127917(n+1)/A036689(n+1)` -/
def P14016255931188874171.Spec : Prop :=
  ∀ n, P14016255931188874171.a n = (A271511 (n + 1) : ℚ)

end A271511

/-!
# A271512: a(n) = (p+1)*(p+2)*(p+3)/6 where p is the n-th prime.

The programs for A271512, the canonical program `A271512.P2900871764372876767` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271512 has offset 1).

The definition of A271512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A271512.P2900871764372876767

`A000292(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A271512

/-- `A000292(A000040(n+1)+1)` -/
def P2900871764372876767.Spec : Prop :=
  ∀ n, P2900871764372876767.a n = A271512 (n + 1)

theorem P2900871764372876767.correct : P2900871764372876767.Spec := by
  intro n
  simp only [A271512, Nat.add_sub_cancel]

end A271512

/-! ## A271512.P5844701535386485750

`C(A113935(n+1), 3)`
-/

namespace A271512.P5844701535386485750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113935 (n + 1)).toNat 3

end

end A271512.P5844701535386485750

namespace A271512

/-- `C(A113935(n+1), 3)` -/
def P5844701535386485750.Spec : Prop :=
  ∀ n, (P5844701535386485750.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P13415294253876848910

`C(Δ[A007504(n)]+3, 3)`
-/

namespace A271512.P13415294253876848910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 3).toNat 3

end

end A271512.P13415294253876848910

namespace A271512

/-- `C(Δ[A007504(n)]+3, 3)` -/
def P13415294253876848910.Spec : Prop :=
  ∀ n, (P13415294253876848910.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P941915362195503044

`C(A052147(n+1)+1, 3)`
-/

namespace A271512.P941915362195503044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052147 (n + 1) + 1).toNat 3

end

end A271512.P941915362195503044

namespace A271512

/-- `C(A052147(n+1)+1, 3)` -/
def P941915362195503044.Spec : Prop :=
  ∀ n, (P941915362195503044.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P14456513741455023212

`C(A008864(n+1)+2, 3)`
-/

namespace A271512.P14456513741455023212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 1) + 2).toNat 3

end

end A271512.P14456513741455023212

namespace A271512

/-- `C(A008864(n+1)+2, 3)` -/
def P14456513741455023212.Spec : Prop :=
  ∀ n, (P14456513741455023212.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P15782513922160037583

`C(A006093(n+1)+4, 3)`
-/

namespace A271512.P15782513922160037583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1) + 4).toNat 3

end

end A271512.P15782513922160037583

namespace A271512

/-- `C(A006093(n+1)+4, 3)` -/
def P15782513922160037583.Spec : Prop :=
  ∀ n, (P15782513922160037583.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P5963341583868071140

`C(sqrt(A001248(n+1))+3, 3)`
-/

namespace A271512.P5963341583868071140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + 3)).toNat 3

end

end A271512.P5963341583868071140

namespace A271512

/-- `C(sqrt(A001248(n+1))+3, 3)` -/
def P5963341583868071140.Spec : Prop :=
  ∀ n, (P5963341583868071140.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P5322631010849724050

`C(A100484(n+1)/2+3, 3)`
-/

namespace A271512.P5322631010849724050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 + 3)).toNat 3

end

end A271512.P5322631010849724050

namespace A271512

/-- `C(A100484(n+1)/2+3, 3)` -/
def P5322631010849724050.Spec : Prop :=
  ∀ n, (P5322631010849724050.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P16340204676494265683

`C(A001750(n+1)/5+3, 3)`
-/

namespace A271512.P16340204676494265683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5 + 3)).toNat 3

end

end A271512.P16340204676494265683

namespace A271512

/-- `C(A001750(n+1)/5+3, 3)` -/
def P16340204676494265683.Spec : Prop :=
  ∀ n, (P16340204676494265683.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P2220092263030543753

`A127920(n+1)+A110833(n+1)`
-/

namespace A271512.P2220092263030543753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127920 (n + 1) + A110833 (n + 1)

end

end A271512.P2220092263030543753

namespace A271512

/-- `A127920(n+1)+A110833(n+1)` -/
def P2220092263030543753.Spec : Prop :=
  ∀ n, P2220092263030543753.a n = A271512 (n + 1)

end A271512

/-! ## A271512.P12258450078246626

`C(record[A006530(n+2)+1]+2, 3)`
-/

namespace A271512.P12258450078246626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A271512.P12258450078246626

namespace A271512

/-- `C(record[A006530(n+2)+1]+2, 3)` -/
def P12258450078246626.Spec : Prop :=
  ∀ n, (P12258450078246626.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P6832598159511962862

`C(record[A020639(n+2)+1]+2, 3)`
-/

namespace A271512.P6832598159511962862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A271512.P6832598159511962862

namespace A271512

/-- `C(record[A020639(n+2)+1]+2, 3)` -/
def P6832598159511962862.Spec : Prop :=
  ∀ n, (P6832598159511962862.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P5304439488670562078

`C(eq[n, n^A001222(n+1)]+4, 3)`
-/

namespace A271512.P5304439488670562078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 4) 3

end

end A271512.P5304439488670562078

namespace A271512

/-- `C(eq[n, n^A001222(n+1)]+4, 3)` -/
def P5304439488670562078.Spec : Prop :=
  ∀ n, (P5304439488670562078.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P16079817173211102496

`C(A114557(2*(n+1)), 3)`
-/

namespace A271512.P16079817173211102496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114557 (2 * (n + 1))).toNat 3

end

end A271512.P16079817173211102496

namespace A271512

/-- `C(A114557(2*(n+1)), 3)` -/
def P16079817173211102496.Spec : Prop :=
  ∀ n, (P16079817173211102496.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P15667268459294191540

`C(record[A093074(n+1)]+3, 3)`
-/

namespace A271512.P15667268459294191540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat 3

end

end A271512.P15667268459294191540

namespace A271512

/-- `C(record[A093074(n+1)]+3, 3)` -/
def P15667268459294191540.Spec : Prop :=
  ∀ n, (P15667268459294191540.a n : ℤ) = A271512 (n + 1)

end A271512

/-! ## A271512.P383035887549213906

`A000292(A008864(n+1))`
-/

namespace A271512.P383035887549213906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008864 (n + 1)).toNat

end

end A271512.P383035887549213906

namespace A271512

/-- `A000292(A008864(n+1))` -/
def P383035887549213906.Spec : Prop :=
  ∀ n, P383035887549213906.a n = A271512 (n + 1)

end A271512

/-! ## A271512.P15006019770104658006

`A000292(A028815(n+1))`
-/

namespace A271512.P15006019770104658006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A028815 (n + 1)).toNat

end

end A271512.P15006019770104658006

namespace A271512

/-- `A000292(A028815(n+1))` -/
def P15006019770104658006.Spec : Prop :=
  ∀ n, P15006019770104658006.a n = A271512 (n + 1)

end A271512

/-! ## A271512.P6933133556834138813

`A000292(A299763(n+2))`
-/

namespace A271512.P6933133556834138813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A299763 (n + 2)).toNat

end

end A271512.P6933133556834138813

namespace A271512

/-- `A000292(A299763(n+2))` -/
def P6933133556834138813.Spec : Prop :=
  ∀ n, P6933133556834138813.a n = A271512 (n + 1)

end A271512

/-! ## A271512.P18401467474778271715

`A000292(Δ[A007504(n)]+1)`
-/

namespace A271512.P18401467474778271715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f1 (n + 1) - f1 n + 1).toNat

end

end A271512.P18401467474778271715

namespace A271512

/-- `A000292(Δ[A007504(n)]+1)` -/
def P18401467474778271715.Spec : Prop :=
  ∀ n, P18401467474778271715.a n = A271512 (n + 1)

end A271512

/-! ## A271512.P3824812143435143854

`A000292(A006093(n+1)+2)`
-/

namespace A271512.P3824812143435143854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A006093 (n + 1) + 2).toNat

end

end A271512.P3824812143435143854

namespace A271512

/-- `A000292(A006093(n+1)+2)` -/
def P3824812143435143854.Spec : Prop :=
  ∀ n, P3824812143435143854.a n = A271512 (n + 1)

end A271512

/-!
# A271514: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal and exactly one upright 2x2x2 triangle having values all different.

The programs for A271514, there is no canonical definition to state claims against.
-/

/-! ## A271514.P7783540889828067568

`A081136(n)*A182166(n+2)`
-/

namespace A271514.P7783540889828067568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081136 n * A182166 (n + 2)

end

end A271514.P7783540889828067568

/-! ## A271514.P16481327530566839902

`A271517(∑[n+2])`
-/

namespace A271514.P16481327530566839902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271514.P16481327530566839902

/-!
# A271515: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal and exactly one upright 2x2x2 triangle having values all different.

The programs for A271515, there is no canonical definition to state claims against.
-/

/-! ## A271515.P13427790040621156284

`A271517(∑[n+3]+1)`
-/

namespace A271515.P13427790040621156284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271515.P13427790040621156284

/-! ## A271515.P11242962290735275123

`A271517(A027379(n+1)+1)+floor(n/10)`
-/

namespace A271515.P11242962290735275123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A027379 (n + 1) + 1).toNat + ⌊(n : ℚ) / 10⌋

end

end A271515.P11242962290735275123

/-! ## A271515.P3987513241084815190

`A000120(A166444(n))*A271517(A027379(n+1)+1)`
-/

namespace A271515.P3987513241084815190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A166444 n).toNat * A271517 (A027379 (n + 1) + 1).toNat

end

end A271515.P3987513241084815190

/-! ## A271515.P3073382156110643761

`A271517(A027379(n+1)+1)*A285097(A044419(n+2))`
-/

namespace A271515.P3073382156110643761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A027379 (n + 1) + 1).toNat * A285097 (A044419 (n + 2)).toNat

end

end A271515.P3073382156110643761

/-!
# A271516: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal and exactly one upright 2x2x2 triangle having values all different.

The programs for A271516, there is no canonical definition to state claims against.
-/

/-! ## A271516.P16959697758947869671

`A271517(A141214(n+1))`
-/

namespace A271516.P16959697758947869671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A141214 (n + 1)).toNat

end

end A271516.P16959697758947869671

/-! ## A271516.P154575134240152349

`A271517(A027379(n+2))`
-/

namespace A271516.P154575134240152349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A027379 (n + 2)).toNat

end

end A271516.P154575134240152349

/-! ## A271516.P7903566621449303573

`A271517(A055998(n+2))`
-/

namespace A271516.P7903566621449303573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A055998 (n + 2)).toNat

end

end A271516.P7903566621449303573

/-! ## A271516.P17031617518198523259

`A271517(A155212(n)+5)`
-/

namespace A271516.P17031617518198523259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A155212 n + 5).toNat

end

end A271516.P17031617518198523259

/-! ## A271516.P4345194937628803412

`A271517(eq[3, A193592(n)])`
-/

namespace A271516.P4345194937628803412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271516.P4345194937628803412

/-!
# A271517: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal and exactly one upright 2x2x2 triangle having values all different.

The programs for A271517, there is no canonical definition to state claims against.
-/

/-! ## A271517.P3085815871393499579

`A025480(A112367(n)!)*A072680(n+2)`
-/

namespace A271517.P3085815871393499579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Nat.factorial (A112367 n).toNat) * A072680 (n + 2)

end

end A271517.P3085815871393499579

/-! ## A271517.P9986925008753065094

`A002167(gcd(A058365(n+1), A292245(2*n+5)))`
-/

namespace A271517.P9986925008753065094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002167 (Int.gcd (A058365 (n + 1)) (A292245 (2 * n + 5)))

end

end A271517.P9986925008753065094

/-!
# A271518: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with x + 3*y + 5*z a square, where w, x, y and z are nonnegative integers.

The programs for A271518, there is no canonical definition to state claims against.
-/

/-! ## A271518.P3299449137049047162

`A282542(A045698(A113092(n))+n)`
-/

namespace A271518.P3299449137049047162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282542 (A045698 (A113092 n).toNat + (n : ℤ)).toNat

end

end A271518.P3299449137049047162

/-!
# A271519: Let n = (2*i + 1)*2^j; then a(n) = i + j.

The programs for A271519, the canonical program `A271519.P6089523118577748839` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271519 has offset 1).

The definition of A271519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271519.P6089523118577748839

`A025480(n)+A007814(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A271519

/-- `A025480(n)+A007814(n+1)` -/
def P6089523118577748839.Spec : Prop :=
  ∀ n, P6089523118577748839.a n = A271519 (n + 1)

theorem P6089523118577748839.correct : P6089523118577748839.Spec := by
  intro n
  simp only [A271519, Nat.add_sub_cancel]

end A271519

/-! ## A271519.P10181608338474747657

`floor(n/(xor(n, n+1)+1))+val(n+1, 2)`
-/

namespace A271519.P10181608338474747657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A271519.P10181608338474747657

namespace A271519

/-- `floor(n/(xor(n, n+1)+1))+val(n+1, 2)` -/
def P10181608338474747657.Spec : Prop :=
  ∀ n, P10181608338474747657.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P4020028328177295092

`floor(n/(xor(n, n+1)+1))+log2((xor(n, n+1)+1)/2)`
-/

namespace A271519.P4020028328177295092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℝ) + Real.logb 2 ((Nat.xor n (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A271519.P4020028328177295092

namespace A271519

/-- `floor(n/(xor(n, n+1)+1))+log2((xor(n, n+1)+1)/2)` -/
def P4020028328177295092.Spec : Prop :=
  ∀ n, P4020028328177295092.a n = (A271519 (n + 1) : ℝ)

end A271519

/-! ## A271519.P10577615204460595634

`log2(-or(n+1, -(n+1)))+ceil((n+1)/(xor(n, n+1)+1))-1`
-/

namespace A271519.P10577615204460595634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1 : ℝ)

end

end A271519.P10577615204460595634

namespace A271519

/-- `log2(-or(n+1, -(n+1)))+ceil((n+1)/(xor(n, n+1)+1))-1` -/
def P10577615204460595634.Spec : Prop :=
  ∀ n, P10577615204460595634.a n = (A271519 (n + 1) : ℝ)

end A271519

/-! ## A271519.P889420345521065166

`A330393(n)-1`
-/

namespace A271519.P889420345521065166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 n - 1

end

end A271519.P889420345521065166

namespace A271519

/-- `A330393(n)-1` -/
def P889420345521065166.Spec : Prop :=
  ∀ n, P889420345521065166.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P2404620682610877768

`a(n-(A057979(n)+1))+1` with `a(0)=0, a(1)=1`
-/

namespace A271519.P2404620682610877768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - (A057979 n + 1)).toNat + 1

end

end A271519.P2404620682610877768

namespace A271519

/-- `a(n-(A057979(n)+1))+1` -/
def P2404620682610877768.Spec : Prop :=
  ∀ n, (P2404620682610877768.a n : ℤ) = A271519 (n + 1)

end A271519

/-! ## A271519.P3388646294309625214

`val(n+1, 2)+A003602(n+1)-1`
-/

namespace A271519.P3388646294309625214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (A003602 (n + 1) - 1)

end

end A271519.P3388646294309625214

namespace A271519

/-- `val(n+1, 2)+A003602(n+1)-1` -/
def P3388646294309625214.Spec : Prop :=
  ∀ n, P3388646294309625214.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P11425889267128907497

`A025480(n)+Δ[A011371(n)]`
-/

namespace A271519.P11425889267128907497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (f1 (n + 1) - f1 n)

end

end A271519.P11425889267128907497

namespace A271519

/-- `A025480(n)+Δ[A011371(n)]` -/
def P11425889267128907497.Spec : Prop :=
  ∀ n, P11425889267128907497.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P12234966990944796750

`A089265(n+1)-A025480(n)`
-/

namespace A271519.P12234966990944796750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (n + 1) - A025480 n

end

end A271519.P12234966990944796750

namespace A271519

/-- `A089265(n+1)-A025480(n)` -/
def P12234966990944796750.Spec : Prop :=
  ∀ n, P12234966990944796750.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P18095095667248694509

`A025480(n)+A085058(n)-2`
-/

namespace A271519.P18095095667248694509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (A085058 n - 2)

end

end A271519.P18095095667248694509

namespace A271519

/-- `A025480(n)+A085058(n)-2` -/
def P18095095667248694509.Spec : Prop :=
  ∀ n, P18095095667248694509.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P7695721940983021297

`A003602(n+1)-Δ[A000120(n)]`
-/

namespace A271519.P7695721940983021297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - (f1 (n + 1) - f1 n)

end

end A271519.P7695721940983021297

namespace A271519

/-- `A003602(n+1)-Δ[A000120(n)]` -/
def P7695721940983021297.Spec : Prop :=
  ∀ n, P7695721940983021297.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P8579685660896118071

`A025480(n)+1-Δ[A000120(n)]`
-/

namespace A271519.P8579685660896118071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (1 - (f1 (n + 1) - f1 n))

end

end A271519.P8579685660896118071

namespace A271519

/-- `A025480(n)+1-Δ[A000120(n)]` -/
def P8579685660896118071.Spec : Prop :=
  ∀ n, P8579685660896118071.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P9480376425120561511

`Δ[A005187(n)]+A025480(n)-1`
-/

namespace A271519.P9480376425120561511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A025480 n - 1)

end

end A271519.P9480376425120561511

namespace A271519

/-- `Δ[A005187(n)]+A025480(n)-1` -/
def P9480376425120561511.Spec : Prop :=
  ∀ n, P9480376425120561511.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P7945431436664885845

`A001511(n+1)+A025480(n)-1`
-/

namespace A271519.P7945431436664885845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A025480 n - 1)

end

end A271519.P7945431436664885845

namespace A271519

/-- `A001511(n+1)+A025480(n)-1` -/
def P7945431436664885845.Spec : Prop :=
  ∀ n, P7945431436664885845.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P17631905886307341684

`A119674(n+1)-A003602(n+1)`
-/

namespace A271519.P17631905886307341684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (n + 1) - A003602 (n + 1)

end

end A271519.P17631905886307341684

namespace A271519

/-- `A119674(n+1)-A003602(n+1)` -/
def P17631905886307341684.Spec : Prop :=
  ∀ n, P17631905886307341684.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P1282498603877545531

`A119674(n+1)-(A025480(n)+1)`
-/

namespace A271519.P1282498603877545531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (n + 1) - (A025480 n + 1)

end

end A271519.P1282498603877545531

namespace A271519

/-- `A119674(n+1)-(A025480(n)+1)` -/
def P1282498603877545531.Spec : Prop :=
  ∀ n, P1282498603877545531.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P12908574615529061363

`A110962(2*n)+A007814(n+1)`
-/

namespace A271519.P12908574615529061363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n) + A007814 (n + 1)

end

end A271519.P12908574615529061363

namespace A271519

/-- `A110962(2*n)+A007814(n+1)` -/
def P12908574615529061363.Spec : Prop :=
  ∀ n, P12908574615529061363.a n = A271519 (n + 1)

end A271519

/-! ## A271519.P3582768359082432178

`A007814(n+1)+A153733(n)/2`
-/

namespace A271519.P3582768359082432178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) : ℚ) + (A153733 n : ℚ) / 2

end

end A271519.P3582768359082432178

namespace A271519

/-- `A007814(n+1)+A153733(n)/2` -/
def P3582768359082432178.Spec : Prop :=
  ∀ n, P3582768359082432178.a n = (A271519 (n + 1) : ℚ)

end A271519

/-!
# A271527: a(n) = 1000^n + 1.

The programs for A271527, the canonical program `A271527.P8349466858336076800` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271527 has offset 0).

The definition of A271527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1000^n+1` (program `A271527.P8349466858336076800`, by `A271527.P8349466858336076800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271527.P8349466858336076800

`1000^n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271527

/-- `1000^n+1` -/
def P8349466858336076800.Spec : Prop :=
  ∀ n, (P8349466858336076800.a n : ℤ) = A271527 n

theorem P8349466858336076800.correct : P8349466858336076800.Spec := by
  intro n
  simp only [A271527]

end A271527

/-!
# A271528: a(n) = 2*(10^n - 1)^2/27.

The programs for A271528, the canonical program `A271528.P1606489720865875831` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271528 has offset 0).

The definition of A271528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271528.P1606489720865875831

`A002276(n)*A002277(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A271528

/-- `A002276(n)*A002277(n)` -/
def P1606489720865875831.Spec : Prop :=
  ∀ n, P1606489720865875831.a n = A271528 n

theorem P1606489720865875831.correct : P1606489720865875831.Spec := by
  intro n
  simp only [A271528]

end A271528

/-! ## A271528.P15117704655933203877

`2*(10^n-1)²/27`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271528.P15117704655933203877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((10 ^ n : ℤ) - 1) ^ 2 : ℚ) / 27

end

end A271528.P15117704655933203877

namespace A271528

/-- `2*(10^n-1)²/27` -/
def P15117704655933203877.Spec : Prop :=
  ∀ n, P15117704655933203877.a n = (A271528 n : ℚ)

end A271528

/-! ## A271528.P3955089930518045121

`sqrt(A075411(n)*A075412(n))`
-/

namespace A271528.P3955089930518045121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075411 n * A075412 n : ℝ)

end

end A271528.P3955089930518045121

namespace A271528

/-- `sqrt(A075411(n)*A075412(n))` -/
def P3955089930518045121.Spec : Prop :=
  ∀ n, P3955089930518045121.a n = (A271528 n : ℝ)

end A271528

/-! ## A271528.P10310764029499720528

`6*A002275(n)²`
-/

namespace A271528.P10310764029499720528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002275 n ^ 2

end

end A271528.P10310764029499720528

namespace A271528

/-- `6*A002275(n)²` -/
def P10310764029499720528.Spec : Prop :=
  ∀ n, P10310764029499720528.a n = A271528 n

end A271528

/-! ## A271528.P9824050055773708239

`floor(A073548(n+1)²/6)`
-/

namespace A271528.P9824050055773708239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073548 (n + 1) ^ 2 : ℚ) / 6⌋

end

end A271528.P9824050055773708239

namespace A271528

/-- `floor(A073548(n+1)²/6)` -/
def P9824050055773708239.Spec : Prop :=
  ∀ n, P9824050055773708239.a n = A271528 n

end A271528

/-! ## A271528.P558245402166869726

`A002275(n)*A002280(n)`
-/

namespace A271528.P558245402166869726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A002280 n

end

end A271528.P558245402166869726

namespace A271528

/-- `A002275(n)*A002280(n)` -/
def P558245402166869726.Spec : Prop :=
  ∀ n, P558245402166869726.a n = A271528 n

end A271528

/-! ## A271528.P17939226083437920845

`2*A002275(n)*A002277(n)`
-/

namespace A271528.P17939226083437920845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 n * A002277 n

end

end A271528.P17939226083437920845

namespace A271528

/-- `2*A002275(n)*A002277(n)` -/
def P17939226083437920845.Spec : Prop :=
  ∀ n, P17939226083437920845.a n = A271528 n

end A271528

/-! ## A271528.P192769427232359944

`3*A002275(n)*A002276(n)`
-/

namespace A271528.P192769427232359944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002275 n * A002276 n

end

end A271528.P192769427232359944

namespace A271528

/-- `3*A002275(n)*A002276(n)` -/
def P192769427232359944.Spec : Prop :=
  ∀ n, P192769427232359944.a n = A271528 n

end A271528

/-! ## A271528.P8849320110173984645

`A002277(n)/3*A002280(n)`
-/

namespace A271528.P8849320110173984645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3 * (A002280 n : ℚ)

end

end A271528.P8849320110173984645

namespace A271528

/-- `A002277(n)/3*A002280(n)` -/
def P8849320110173984645.Spec : Prop :=
  ∀ n, P8849320110173984645.a n = (A271528 n : ℚ)

end A271528

/-! ## A271528.P11907774036200355375

`(A002279(n)+A002275(n))*A002275(n)`
-/

namespace A271528.P11907774036200355375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002279 n + A002275 n) * A002275 n

end

end A271528.P11907774036200355375

namespace A271528

/-- `(A002279(n)+A002275(n))*A002275(n)` -/
def P11907774036200355375.Spec : Prop :=
  ∀ n, P11907774036200355375.a n = A271528 n

end A271528

/-!
# A271530: a(1) = 1; thereafter a(n) is the product of all 0 < m < n for which n == a(m) (mod m).

The programs for A271530, there is no canonical definition to state claims against.
-/

/-! ## A271530.P13709022751980656841

`gcd(A002620(A120305(n)), A288202(n))`
-/

namespace A271530.P13709022751980656841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A120305 n).toNat) (A288202 n)

end

end A271530.P13709022751980656841

/-! ## A271530.P14929579731888859115

`gcd(A005563(n), A277238(A148696(n)))`
-/

namespace A271530.P14929579731888859115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 n) (A277238 (A148696 n).toNat)

end

end A271530.P14929579731888859115

/-! ## A271530.P764810137565430360

`gcd(A057398(A052426(n+1)), A276399(n+2))`
-/

namespace A271530.P764810137565430360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057398 (A052426 (n + 1)).toNat) (A276399 (n + 2))

end

end A271530.P764810137565430360

/-!
# A271532: a(n) = (-1)^n*(n + 1)*(5*n^2 + 10*n + 1).

The programs for A271532, the canonical program `A271532.P1584150299160625315` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271532 has offset 0).

The definition of A271532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(n+1)*(5*n²+10*n+1)` (program `A271532.P1584150299160625315`, by `A271532.P1584150299160625315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271532.P1584150299160625315

`(-1)^n*(n+1)*(5*n²+10*n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271532

/-- `(-1)^n*(n+1)*(5*n²+10*n+1)` -/
def P1584150299160625315.Spec : Prop :=
  ∀ n, P1584150299160625315.a n = A271532 n

theorem P1584150299160625315.correct : P1584150299160625315.Spec := by
  intro n
  simp only [A271532]

end A271532

/-! ## A271532.P9677702915600050019

`∑[(1-2*n%2)*(2*n+1)*(5*n²+5*n+1)]`
-/

namespace A271532.P9677702915600050019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * ((2 * n + 1) * (5 * n ^ 2 + 5 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271532.P9677702915600050019

namespace A271532

/-- `∑[(1-2*n%2)*(2*n+1)*(5*n²+5*n+1)]` -/
def P9677702915600050019.Spec : Prop :=
  ∀ n, P9677702915600050019.a n = A271532 n

end A271532

/-! ## A271532.P14558728546495524601

`∑[A389799(n+1)]/(-1)^n`
-/

namespace A271532.P14558728546495524601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389799 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A271532.P14558728546495524601

namespace A271532

/-- `∑[A389799(n+1)]/(-1)^n` -/
def P14558728546495524601.Spec : Prop :=
  ∀ n, P14558728546495524601.a n = (A271532 n : ℚ)

end A271532

/-! ## A271532.P1313445643561494400

`∑[A005904(n)*A033999(n)]`
-/

namespace A271532.P1313445643561494400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271532.P1313445643561494400

namespace A271532

/-- `∑[A005904(n)*A033999(n)]` -/
def P1313445643561494400.Spec : Prop :=
  ∀ n, P1313445643561494400.a n = A271532 n

end A271532

/-!
# A271534: Numbers n with digits abc..xyz such that n = (a + b + c + ... + x + y + z) + (a^b + b^c + c^d + ... + x^y + y^z).

The programs for A271534, there is no canonical definition to state claims against.
-/

/-! ## A271534.P15887493750256688998

`A116069(A032579(n+1))`
-/

namespace A271534.P15887493750256688998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116069 (A032579 (n + 1)).toNat

end

end A271534.P15887493750256688998

/-! ## A271534.P2140058053649938604

`A025443(A327508(n))+1+n`
-/

namespace A271534.P2140058053649938604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A327508 n).toNat + 1 + (n : ℤ)

end

end A271534.P2140058053649938604

/-! ## A271534.P15893299783452810675

`lt[A049802(A049798(3*n+2)+1), 2*n]`
-/

namespace A271534.P15893299783452810675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (A049798 (3 * n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271534.P15893299783452810675

/-! ## A271534.P17267412403387409779

`record[∑{digits}[A262360(n+1), #]]`
-/

namespace A271534.P17267412403387409779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262360 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271534.P17267412403387409779

/-! ## A271534.P12602213926443313901

`A000926(A034710(n+1))`
-/

namespace A271534.P12602213926443313901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A034710 (n + 1)).toNat

end

end A271534.P12602213926443313901

/-!
# A271535: a(n) = ( n*(n + 1)*(2*n + 1)/6 )^2.

The programs for A271535, the canonical program `A271535.P17306942896462329582` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271535 has offset 0).

The definition of A271535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271535.P17306942896462329582

`(n*(n+1)*(2*n+1)/6)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271535

/-- `(n*(n+1)*(2*n+1)/6)²` -/
def P17306942896462329582.Spec : Prop :=
  ∀ n, P17306942896462329582.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P4516874840835861068

`Δ[C(n², 2)]²/36`
-/

namespace A271535.P4516874840835861068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ) / 36

end

end A271535.P4516874840835861068

namespace A271535

/-- `Δ[C(n², 2)]²/36` -/
def P4516874840835861068.Spec : Prop :=
  ∀ n, P4516874840835861068.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P14557040695610990781

`∑[A272125(n)]`
-/

namespace A271535.P14557040695610990781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271535.P14557040695610990781

namespace A271535

/-- `∑[A272125(n)]` -/
def P14557040695610990781.Spec : Prop :=
  ∀ n, P14557040695610990781.a n = A271535 n

end A271535

/-! ## A271535.P7088459958761849633

`A006331(n)²/4`
-/

namespace A271535.P7088459958761849633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 n ^ 2 : ℚ) / 4

end

end A271535.P7088459958761849633

namespace A271535

/-- `A006331(n)²/4` -/
def P7088459958761849633.Spec : Prop :=
  ∀ n, P7088459958761849633.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P13252993303577297737

`∑[A000290(n)]^2`
-/

namespace A271535.P13252993303577297737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A271535.P13252993303577297737

namespace A271535

/-- `∑[A000290(n)]^2` -/
def P13252993303577297737.Spec : Prop :=
  ∀ n, P13252993303577297737.a n = A271535 n

end A271535

/-! ## A271535.P7800807840585125111

`∑[n*A071270(n)]`
-/

namespace A271535.P7800807840585125111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271535.P7800807840585125111

namespace A271535

/-- `∑[n*A071270(n)]` -/
def P7800807840585125111.Spec : Prop :=
  ∀ n, P7800807840585125111.a n = A271535 n

end A271535

/-! ## A271535.P14259242388939797058

`floor((A059270(n)/3)²)`
-/

namespace A271535.P14259242388939797058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A059270 n : ℚ) / 3) ^ 2⌋

end

end A271535.P14259242388939797058

namespace A271535

/-- `floor((A059270(n)/3)²)` -/
def P14259242388939797058.Spec : Prop :=
  ∀ n, P14259242388939797058.a n = A271535 n

end A271535

/-! ## A271535.P7344527247695522899

`A000330(n)*A000330(n)`
-/

namespace A271535.P7344527247695522899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A000330 n

end

end A271535.P7344527247695522899

namespace A271535

/-- `A000330(n)*A000330(n)` -/
def P7344527247695522899.Spec : Prop :=
  ∀ n, P7344527247695522899.a n = A271535 n

end A271535

/-! ## A271535.P4598632135048891277

`(∑[A002378(n)]-∑[n])*A059270(n)/3`
-/

namespace A271535.P4598632135048891277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) : ℚ) * ((A059270 n : ℚ) / 3)

end

end A271535.P4598632135048891277

namespace A271535

/-- `(∑[A002378(n)]-∑[n])*A059270(n)/3` -/
def P4598632135048891277.Spec : Prop :=
  ∀ n, P4598632135048891277.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P16600176702898197983

`(∑[∑[2*n]]-A000217(n))*A059270(n)/3`
-/

namespace A271535.P16600176702898197983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n : ℚ) * ((A059270 n : ℚ) / 3)

end

end A271535.P16600176702898197983

namespace A271535

/-- `(∑[∑[2*n]]-A000217(n))*A059270(n)/3` -/
def P16600176702898197983.Spec : Prop :=
  ∀ n, P16600176702898197983.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P5779123055622303042

`A060493(n)+A060493(n)-A000538(n)`
-/

namespace A271535.P5779123055622303042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060493 n + (A060493 n - A000538 n)

end

end A271535.P5779123055622303042

namespace A271535

/-- `A060493(n)+A060493(n)-A000538(n)` -/
def P5779123055622303042.Spec : Prop :=
  ∀ n, P5779123055622303042.a n = A271535 n

end A271535

/-! ## A271535.P10679167668652387689

`A002415(n+1)/A000217(n+1)*A180324(n)`
-/

namespace A271535.P10679167668652387689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002415 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A180324 n : ℚ)

end

end A271535.P10679167668652387689

namespace A271535

/-- `A002415(n+1)/A000217(n+1)*A180324(n)` -/
def P10679167668652387689.Spec : Prop :=
  ∀ n, P10679167668652387689.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P17569762910936020843

`record[A060422(n)²]`
-/

namespace A271535.P17569762910936020843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060422 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271535.P17569762910936020843

namespace A271535

/-- `record[A060422(n)²]` -/
def P17569762910936020843.Spec : Prop :=
  ∀ n, P17569762910936020843.a n = A271535 n

end A271535

/-! ## A271535.P12632497049461394405

`A060422(2*n+1)*A060422(2*n+1)`
-/

namespace A271535.P12632497049461394405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060422 (2 * n + 1) * A060422 (2 * n + 1)

end

end A271535.P12632497049461394405

namespace A271535

/-- `A060422(2*n+1)*A060422(2*n+1)` -/
def P12632497049461394405.Spec : Prop :=
  ∀ n, P12632497049461394405.a n = A271535 n

end A271535

/-! ## A271535.P7300536023679319728

`A188067(2*n+1)*A188067(2*n+1)`
-/

namespace A271535.P7300536023679319728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (2 * n + 1) * A188067 (2 * n + 1)

end

end A271535.P7300536023679319728

namespace A271535

/-- `A188067(2*n+1)*A188067(2*n+1)` -/
def P7300536023679319728.Spec : Prop :=
  ∀ n, P7300536023679319728.a n = A271535 n

end A271535

/-! ## A271535.P8765623605778550734

`A208950(2*n+1)*A208950(2*n+1)`
-/

namespace A271535.P8765623605778550734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208950 (2 * n + 1) * A208950 (2 * n + 1)

end

end A271535.P8765623605778550734

namespace A271535

/-- `A208950(2*n+1)*A208950(2*n+1)` -/
def P8765623605778550734.Spec : Prop :=
  ∀ n, P8765623605778550734.a n = A271535 n

end A271535

/-! ## A271535.P15933065553102460226

`A392421(2*n+1)*A392421(2*n+1)`
-/

namespace A271535.P15933065553102460226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392421 (2 * n + 1) * A392421 (2 * n + 1)

end

end A271535.P15933065553102460226

namespace A271535

/-- `A392421(2*n+1)*A392421(2*n+1)` -/
def P15933065553102460226.Spec : Prop :=
  ∀ n, P15933065553102460226.a n = A271535 n

end A271535

/-! ## A271535.P759232802765351309

`gcd(A054563(2*n+1)², A000292(2*n)²)`
-/

namespace A271535.P759232802765351309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054563 (2 * n + 1) ^ 2) (A000292 (2 * n) ^ 2)

end

end A271535.P759232802765351309

namespace A271535

/-- `gcd(A054563(2*n+1)², A000292(2*n)²)` -/
def P759232802765351309.Spec : Prop :=
  ∀ n, (P759232802765351309.a n : ℤ) = A271535 n

end A271535

/-! ## A271535.P152669876488211032

`(∑[∑[2*n]]-A000217(n))*A276670(2*n+1)/6`
-/

namespace A271535.P152669876488211032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n : ℚ) * ((A276670 (2 * n + 1) : ℚ) / 6)

end

end A271535.P152669876488211032

namespace A271535

/-- `(∑[∑[2*n]]-A000217(n))*A276670(2*n+1)/6` -/
def P152669876488211032.Spec : Prop :=
  ∀ n, P152669876488211032.a n = (A271535 n : ℚ)

end A271535

/-! ## A271535.P16287521227040933670

`A087076(n)/A011782(n)²*A087076(n)`
-/

namespace A271535.P16287521227040933670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087076 n : ℚ) / (A011782 n ^ 2 : ℚ) * (A087076 n : ℚ)

end

end A271535.P16287521227040933670

namespace A271535

/-- `A087076(n)/A011782(n)²*A087076(n)` -/
def P16287521227040933670.Spec : Prop :=
  ∀ n, P16287521227040933670.a n = (A271535 n : ℚ)

end A271535

/-!
# A271536: Integers n such that n^2-1 and n^2 are the sum of two nonzero squares.

The programs for A271536, there is no canonical definition to state claims against.
-/

/-! ## A271536.P6134573027966405010

`∩[A009003(n+1), A050795(n+1)]`
-/

namespace A271536.P6134573027966405010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271536.P6134573027966405010

/-! ## A271536.P460722426874728606

`∩[A050795(n+1), A309812(n+1)]`
-/

namespace A271536.P460722426874728606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271536.P460722426874728606

/-! ## A271536.P15450975494661745867

`∩[A050795(n+1), A337140(n+1)]`
-/

namespace A271536.P15450975494661745867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271536.P15450975494661745867

/-! ## A271536.P18218761526243693997

`∩[A050795(n+1), A341329(n+1)]`
-/

namespace A271536.P18218761526243693997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271536.P18218761526243693997

/-!
# A271537: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A271537, there is no canonical definition to state claims against.
-/

/-! ## A271537.P4138424484570567610

`∑[∑[A271538(abs(1-n))]-3]`
-/

namespace A271537.P4138424484570567610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271538 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271537.P4138424484570567610

/-! ## A271537.P8043845418273383642

`∑[A271538(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271537.P8043845418273383642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271538 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271537.P8043845418273383642

/-! ## A271537.P13569843136761893967

`∑[A265916(n)]`
-/

namespace A271537.P13569843136761893967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271537.P13569843136761893967

/-! ## A271537.P18111792317053828708

`A265916(A004525(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271537.P18111792317053828708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265916 (A004525 (2 * n)).toNat + a (n - 1)

end

end A271537.P18111792317053828708

/-! ## A271537.P6751519298646391260

`A265916(n%A064808(n))+a(n-1)` with `a(0)=1`
-/

namespace A271537.P6751519298646391260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265916 (Int.tmod (n : ℤ) (A064808 n)).toNat + a (n - 1)

end

end A271537.P6751519298646391260

/-! ## A271537.P6413007275470592134

`a(n-1)+A265916(n)/A007318(C(n, n²))` with `a(0)=1`
-/

namespace A271537.P6413007275470592134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A265916 n : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A271537.P6413007275470592134

/-!
# A271538: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A271538, there is no canonical definition to state claims against.
-/

/-! ## A271538.P13435473691590300098

`Δ[A265916(n)]`
-/

namespace A271538.P13435473691590300098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271538.P13435473691590300098

/-! ## A271538.P12038087550229808039

`A265916(n+1)-A265916(n)`
-/

namespace A271538.P12038087550229808039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (n + 1) - A265916 n

end

end A271538.P12038087550229808039

/-! ## A271538.P3035170087922015482

`A265916(n+1)+A265916(n)/A008683(A068486(n+1))`
-/

namespace A271538.P3035170087922015482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265916 (n + 1) : ℚ) + (A265916 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A271538.P3035170087922015482

/-! ## A271538.P2133616348073838141

`A271457(n)+A184955(∑{d}[n+1, #])`
-/

namespace A271538.P2133616348073838141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271457 n + A184955 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A271538.P2133616348073838141

/-! ## A271538.P1786412230823808412

`A271457(n)+A184955(A303763(n))`
-/

namespace A271538.P1786412230823808412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271457 n + A184955 (A303763 n).toNat

end

end A271538.P1786412230823808412

/-!
# A271539: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A271539, there is no canonical definition to state claims against.
-/

/-! ## A271539.P11090644287071438048

`A271542(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271539.P11090644287071438048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271542 (n - 1) + a (n - 1)

end

end A271539.P11090644287071438048

/-! ## A271539.P16846264463462242544

`Δ[A271541(n)]-A271542(n)`
-/

namespace A271539.P16846264463462242544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271542 n

end

end A271539.P16846264463462242544

/-! ## A271539.P14324784351035720483

`A271541(n+1)-(A271542(n)+A271541(n))`
-/

namespace A271539.P14324784351035720483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271541 (n + 1) - (A271542 n + A271541 n)

end

end A271539.P14324784351035720483

/-! ## A271539.P11985808503031222075

`(2*n+3)²-A272730(n+1)`
-/

namespace A271539.P11985808503031222075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272730 (n + 1)

end

end A271539.P11985808503031222075

/-! ## A271539.P2186717594753715642

`∑[Δ[A016754(n)]-A272733(n)]`
-/

namespace A271539.P2186717594753715642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A272733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271539.P2186717594753715642

/-! ## A271539.P16265862145816360934

`Δ[∑[A016754(n)]-A272732(n)]`
-/

namespace A271539.P16265862145816360934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A272732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271539.P16265862145816360934

/-! ## A271539.P12116970996511400277

`A016754(n+1)-Δ[A272732(n)]`
-/

namespace A271539.P12116970996511400277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A271539.P12116970996511400277

/-!
# A271540: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A271540, there is no canonical definition to state claims against.
-/

/-! ## A271540.P2602759520855553946

`A271539(2^n-1)`
-/

namespace A271540.P2602759520855553946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (2 ^ n - 1)

end

end A271540.P2602759520855553946

/-! ## A271540.P4108070727688208164

`record[A271539(A227351(n))]`
-/

namespace A271540.P4108070727688208164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271540.P4108070727688208164

/-! ## A271540.P914380467856747884

`record[A271539(A255565(n))]`
-/

namespace A271540.P914380467856747884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271540.P914380467856747884

/-! ## A271540.P9658202399133028374

`record[A271539(Δ[A228693(n)])]`
-/

namespace A271540.P9658202399133028374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271540.P9658202399133028374

/-! ## A271540.P10515527066116191061

`record[A271539(A275715(n+1))]`
-/

namespace A271540.P10515527066116191061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (A275715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271540.P10515527066116191061

/-!
# A271541: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A271541, there is no canonical definition to state claims against.
-/

/-! ## A271541.P2229524335273558417

`∑[A271542(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271541.P2229524335273558417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271542 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271541.P2229524335273558417

/-! ## A271541.P8622565255607527932

`∑[A271539(n)]`
-/

namespace A271541.P8622565255607527932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271541.P8622565255607527932

/-! ## A271541.P4582859587343481582

`A271539(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271541.P4582859587343481582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271539 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A271541.P4582859587343481582

/-! ## A271541.P11329489508041225347

`∑[(2*n+3)²-A272730(n+1)]`
-/

namespace A271541.P11329489508041225347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271541.P11329489508041225347

/-! ## A271541.P2922452683427787324

`∑[A016754(n+1)-Δ[A272732(n)]]`
-/

namespace A271541.P2922452683427787324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271541.P2922452683427787324

/-!
# A271542: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A271542, there is no canonical definition to state claims against.
-/

/-! ## A271542.P17885714967612480604

`Δ[A271539(n)]`
-/

namespace A271542.P17885714967612480604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271542.P17885714967612480604

/-! ## A271542.P11287727894052851392

`A271539(n+1)-A271539(n)`
-/

namespace A271542.P11287727894052851392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 (n + 1) - A271539 n

end

end A271542.P11287727894052851392

/-! ## A271542.P11368704377115500013

`Δ[(2*n+3)²-A272730(n+1)]`
-/

namespace A271542.P11368704377115500013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271542.P11368704377115500013

/-! ## A271542.P5470815488747029973

`Δ[(2*n+3)²]-A272733(n+1)`
-/

namespace A271542.P5470815488747029973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A272733 (n + 1)

end

end A271542.P5470815488747029973

/-! ## A271542.P2374019592329896913

`Δ[A016754(n+1)-Δ[A272732(n)]]`
-/

namespace A271542.P2374019592329896913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271542.P2374019592329896913

/-!
# A271543: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A271543, there is no canonical definition to state claims against.
-/

/-! ## A271543.P5095273674912797236

`∑[A271546(abs(1-n))]-3`
-/

namespace A271543.P5095273674912797236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271546 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A271543.P5095273674912797236

/-! ## A271543.P7521189275338950512

`A271546(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271543.P7521189275338950512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271546 (n - 1) + a (n - 1)

end

end A271543.P7521189275338950512

/-! ## A271543.P4431599044457709119

`Δ[A271545(n)]-A271546(n)`
-/

namespace A271543.P4431599044457709119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271546 n

end

end A271543.P4431599044457709119

/-! ## A271543.P10544341472080721609

`A271545(n+1)-(A271546(n)+A271545(n))`
-/

namespace A271543.P10544341472080721609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271545 (n + 1) - (A271546 n + A271545 n)

end

end A271543.P10544341472080721609

/-!
# A271544: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A271544, there is no canonical definition to state claims against.
-/

/-! ## A271544.P1530632141069751966

`A271543(2^n-1)`
-/

namespace A271544.P1530632141069751966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 (2 ^ n - 1)

end

end A271544.P1530632141069751966

/-! ## A271544.P1564637801837609417

`record[A271543(A091264(n))]`
-/

namespace A271544.P1564637801837609417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271544.P1564637801837609417

/-! ## A271544.P8406805829812452624

`record[A271543(A173787(n))]`
-/

namespace A271544.P8406805829812452624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271544.P8406805829812452624

/-! ## A271544.P5898008889608773404

`and(-3, A271543(A000225(n)))`
-/

namespace A271544.P5898008889608773404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A271543 (A000225 n).toNat)

end

end A271544.P5898008889608773404

/-! ## A271544.P6820683802070596030

`record[A271543(A324573(n+1))]`
-/

namespace A271544.P6820683802070596030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 (A324573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271544.P6820683802070596030

/-!
# A271545: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A271545, there is no canonical definition to state claims against.
-/

/-! ## A271545.P12932680230555780876

`∑[A271546(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271545.P12932680230555780876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271546 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271545.P12932680230555780876

/-! ## A271545.P13443662225483617962

`∑[∑[A271546(n)]-A271546(n)+1]`
-/

namespace A271545.P13443662225483617962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A271546 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271545.P13443662225483617962

/-! ## A271545.P16205214143878337057

`∑[A271543(n)]`
-/

namespace A271545.P16205214143878337057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271545.P16205214143878337057

/-! ## A271545.P4105403018767842208

`a(n-1)+A271543(n)+A000007(n)` with `a(0)=1`
-/

namespace A271545.P4105403018767842208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271543 n + A000007 n)

end

end A271545.P4105403018767842208

/-! ## A271545.P3578765172707663220

`A271543(n+1)+a(n-1)-A271546(n)` with `a(0)=1`
-/

namespace A271545.P3578765172707663220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271543 (n + 1) + (a (n - 1) - A271546 n)

end

end A271545.P3578765172707663220

/-!
# A271546: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A271546, there is no canonical definition to state claims against.
-/

/-! ## A271546.P16990186843633604511

`Δ[A271543(n)]`
-/

namespace A271546.P16990186843633604511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271546.P16990186843633604511

/-! ## A271546.P1410647078310571781

`A271543(n+1)-A271543(n)`
-/

namespace A271546.P1410647078310571781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271543 (n + 1) - A271543 n

end

end A271546.P1410647078310571781

/-!
# A271548: Numbers k such that 4*10^k + 19 is prime.

The programs for A271548, there is no canonical definition to state claims against.
-/

/-! ## A271548.P3616637070527436768

`lt[n, A122458(n+4)+2]`
-/

namespace A271548.P3616637070527436768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (n + 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271548.P3616637070527436768

/-! ## A271548.P10827633060913007041

`record[A204016(A068911(n))]`
-/

namespace A271548.P10827633060913007041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A068911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271548.P10827633060913007041

/-! ## A271548.P8385265953197620156

`lt[A131452(n), A260590(n+4)]`
-/

namespace A271548.P8385265953197620156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260590 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271548.P8385265953197620156

/-! ## A271548.P18186356939260485651

`lt[val(A001159(A171370(n+1)), 2), 2]`
-/

namespace A271548.P18186356939260485651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001159 (A171370 (n + 1)).toNat).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271548.P18186356939260485651

/-! ## A271548.P17669626196508911575

`record[A072120(n+1)%A272973(n+1)]`
-/

namespace A271548.P17669626196508911575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072120 (n + 1)) (A272973 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271548.P17669626196508911575

/-!
# A271550: Numbers n such that n is a squarefree semiprime (i.e., omega(n) = 2 = Omega(n)) and phi(n) + 1 is a prime.

The programs for A271550, the canonical program `A271550.P5972112565588894110` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271550 has offset 1).

The definition of A271550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271550.P2510147088279843454

`eq[4, A300224(n+1)]+1`
-/

namespace A271550.P2510147088279843454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A271550.P2510147088279843454

namespace A271550

/-- `eq[4, A300224(n+1)]+1` -/
def P2510147088279843454.Spec : Prop :=
  ∀ n, (P2510147088279843454.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P9926178177616775927

`filter[A006881(n+1), A296079(#)]`
-/

namespace A271550.P9926178177616775927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A271550.P9926178177616775927

namespace A271550

/-- `filter[A006881(n+1), A296079(#)]` -/
def P9926178177616775927.Spec : Prop :=
  ∀ n, P9926178177616775927.a n = A271550 (n + 1)

end A271550

/-! ## A271550.P18602114873831091

`filter[A039698(n+1), A280710(#)]`
-/

namespace A271550.P18602114873831091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271550.P18602114873831091

namespace A271550

/-- `filter[A039698(n+1), A280710(#)]` -/
def P18602114873831091.Spec : Prop :=
  ∀ n, P18602114873831091.a n = A271550 (n + 1)

end A271550

/-! ## A271550.P15425448912314560907

`filter[A066071(n+1), A280710(#)]`
-/

namespace A271550.P15425448912314560907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271550.P15425448912314560907

namespace A271550

/-- `filter[A066071(n+1), A280710(#)]` -/
def P15425448912314560907.Spec : Prop :=
  ∀ n, P15425448912314560907.a n = A271550 (n + 1)

end A271550

/-! ## A271550.P5972112565588894110

`filter[A068993(n+1), A296079(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A271550

/-- `filter[A068993(n+1), A296079(#)]` -/
def P5972112565588894110.Spec : Prop :=
  ∀ n, P5972112565588894110.a n = A271550 (n + 1)

theorem P5972112565588894110.correct : P5972112565588894110.Spec := by
  intro n
  simp only [A271550, Nat.add_sub_cancel]

end A271550

/-! ## A271550.P9549711007996614348

`filter[A066071(n+1), A353471(#)]`
-/

namespace A271550.P9549711007996614348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A271550.P9549711007996614348

namespace A271550

/-- `filter[A066071(n+1), A353471(#)]` -/
def P9549711007996614348.Spec : Prop :=
  ∀ n, P9549711007996614348.a n = A271550 (n + 1)

end A271550

/-! ## A271550.P10723579498137678394

`filter[A152757(n+1), A280710(#)]`
-/

namespace A271550.P10723579498137678394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271550.P10723579498137678394

namespace A271550

/-- `filter[A152757(n+1), A280710(#)]` -/
def P10723579498137678394.Spec : Prop :=
  ∀ n, P10723579498137678394.a n = A271550 (n + 1)

end A271550

/-! ## A271550.P12312248899713992183

`∩[A006881(n+1), A039698(n+1)]`
-/

namespace A271550.P12312248899713992183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P12312248899713992183

namespace A271550

/-- `∩[A006881(n+1), A039698(n+1)]` -/
def P12312248899713992183.Spec : Prop :=
  ∀ n, (P12312248899713992183.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P3955325436717015946

`∩[A006881(n+1), A066071(n+1)]`
-/

namespace A271550.P3955325436717015946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P3955325436717015946

namespace A271550

/-- `∩[A006881(n+1), A066071(n+1)]` -/
def P3955325436717015946.Spec : Prop :=
  ∀ n, (P3955325436717015946.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P1101168354610991543

`∩[A039698(n+1), A068993(n+1)]`
-/

namespace A271550.P1101168354610991543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P1101168354610991543

namespace A271550

/-- `∩[A039698(n+1), A068993(n+1)]` -/
def P1101168354610991543.Spec : Prop :=
  ∀ n, (P1101168354610991543.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P7948351407247684220

`∩[A066071(n+1), A068993(n+1)]`
-/

namespace A271550.P7948351407247684220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P7948351407247684220

namespace A271550

/-- `∩[A066071(n+1), A068993(n+1)]` -/
def P7948351407247684220.Spec : Prop :=
  ∀ n, (P7948351407247684220.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P5308239482756072907

`∩[A006881(n+1), A152757(n+1)]`
-/

namespace A271550.P5308239482756072907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P5308239482756072907

namespace A271550

/-- `∩[A006881(n+1), A152757(n+1)]` -/
def P5308239482756072907.Spec : Prop :=
  ∀ n, (P5308239482756072907.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P11530778694237051528

`∩[A066071(n+1), A167171(n+1)]`
-/

namespace A271550.P11530778694237051528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P11530778694237051528

namespace A271550

/-- `∩[A066071(n+1), A167171(n+1)]` -/
def P11530778694237051528.Spec : Prop :=
  ∀ n, (P11530778694237051528.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P5632426046051163239

`∩[A152757(n+1), A161918(n+1)]`
-/

namespace A271550.P5632426046051163239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271550.P5632426046051163239

namespace A271550

/-- `∩[A152757(n+1), A161918(n+1)]` -/
def P5632426046051163239.Spec : Prop :=
  ∀ n, (P5632426046051163239.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P1449722100907845804

`eq[A000005(A000010(n+1)+1), A051709(n+1)]+1`
-/

namespace A271550.P1449722100907845804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271550.P1449722100907845804

namespace A271550

/-- `eq[A000005(A000010(n+1)+1), A051709(n+1)]+1` -/
def P1449722100907845804.Spec : Prop :=
  ∀ n, (P1449722100907845804.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P14128925411265406251

`eq[A000005(A173557(n+1)+1), A051709(n+1)]+1`
-/

namespace A271550.P14128925411265406251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A173557 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271550.P14128925411265406251

namespace A271550

/-- `eq[A000005(A173557(n+1)+1), A051709(n+1)]+1` -/
def P14128925411265406251.Spec : Prop :=
  ∀ n, (P14128925411265406251.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P2854501026015984390

`eq[A296078(n+2), A296085(A046523(n+2)+1)]+2`
-/

namespace A271550.P2854501026015984390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296085 (A046523 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A271550.P2854501026015984390

namespace A271550

/-- `eq[A296078(n+2), A296085(A046523(n+2)+1)]+2` -/
def P2854501026015984390.Spec : Prop :=
  ∀ n, (P2854501026015984390.a n : ℤ) = A271550 (n + 1)

end A271550

/-! ## A271550.P263659627796043629

`eq[4, A300224(A233583(n+1))]`
-/

namespace A271550.P263659627796043629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300224 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271550.P263659627796043629

namespace A271550

/-- `eq[4, A300224(A233583(n+1))]` -/
def P263659627796043629.Spec : Prop :=
  ∀ n, (P263659627796043629.a n : ℤ) = A271550 (n + 1)

end A271550

/-!
# A271551: a(0) = 0, a(n) = a(n-1)[n-1]a(n-1).

The programs for A271551, there is no canonical definition to state claims against.
-/

/-! ## A271551.P17973728085046305388

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=256, a(5)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271551.P17973728085046305388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 256, 0] fun n a =>
  a (n - 1)

end

end A271551.P17973728085046305388

/-!
# A271552: 

The programs for A271552, there is no canonical definition to state claims against.
-/

/-! ## A271552.P16495414137647036083

`16^a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=16`
-/

namespace A271552.P16495414137647036083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 16] fun n a =>
  16 ^ a (n - 1)

end

end A271552.P16495414137647036083

/-!
# A271554: a(n) = G_n(7), where G is the Goodstein function defined in A266201.

The programs for A271554, there is no canonical definition to state claims against.
-/

/-! ## A271554.P184193433066046038

`A056193(n)+A222117(n)-A271559(n)`
-/

namespace A271554.P184193433066046038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + (A222117 n - A271559 n)

end

end A271554.P184193433066046038

/-! ## A271554.P6043892590206608414

`A222117(n)+A266204(n)-A271560(n)`
-/

namespace A271554.P6043892590206608414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222117 n + (A266204 n - A271560 n)

end

end A271554.P6043892590206608414

/-! ## A271554.P2338000081817255294

`A222117(n)+A266205(n)-A271561(n)`
-/

namespace A271554.P2338000081817255294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222117 n + (A266205 n - A271561 n)

end

end A271554.P2338000081817255294

/-! ## A271554.P5776262488508452009

`A296441(eq[7, A002262(n)])`
-/

namespace A271554.P5776262488508452009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271554.P5776262488508452009

/-! ## A271554.P6268682100928699181

`A296441(eq[7, A133233(n)])`
-/

namespace A271554.P6268682100928699181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271554.P6268682100928699181

/-!
# A271555: a(n) = G_n(8), where G is the Goodstein function defined in A266201.

The programs for A271555, there is no canonical definition to state claims against.
-/

/-! ## A271555.P4006192934493442973

`A296441(eq[8, A002262(n)])`
-/

namespace A271555.P4006192934493442973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271555.P4006192934493442973

/-! ## A271555.P17273799601713574929

`A296441(eq[7, A327844(n+1)])`
-/

namespace A271555.P17273799601713574929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271555.P17273799601713574929

/-! ## A271555.P7053562579782506351

`A296441(eq[8, A025668(n+1)])`
-/

namespace A271555.P7053562579782506351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271555.P7053562579782506351

/-! ## A271555.P15860952921344369109

`A296441(eq[8, A144328(n+1)])`
-/

namespace A271555.P15860952921344369109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271555.P15860952921344369109

/-! ## A271555.P10842938315661159741

`A296441(eq[9, A002260(n+1)])`
-/

namespace A271555.P10842938315661159741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271555.P10842938315661159741

/-!
# A271556: a(n) = G_n(9), where G is the Goodstein function defined in A266201.

The programs for A271556, there is no canonical definition to state claims against.
-/

/-! ## A271556.P14904403665568994137

`A296441(eq[9, A002262(n)])`
-/

namespace A271556.P14904403665568994137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271556.P14904403665568994137

/-! ## A271556.P8484681304745452193

`A296441(eq[9, A133233(n)])`
-/

namespace A271556.P8484681304745452193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271556.P8484681304745452193

/-! ## A271556.P13555138485131476617

`A296441(eq[9, A025668(n+1)])`
-/

namespace A271556.P13555138485131476617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271556.P13555138485131476617

/-! ## A271556.P7469886009352740775

`A296441(eq[9, A144328(n+1)])`
-/

namespace A271556.P7469886009352740775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271556.P7469886009352740775

/-! ## A271556.P3643066782970396417

`A296441(eq[10, A002260(n+1)])`
-/

namespace A271556.P3643066782970396417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271556.P3643066782970396417

/-!
# A271557: a(n) = G_n(10), where G is the Goodstein function defined in A266201.

The programs for A271557, there is no canonical definition to state claims against.
-/

/-! ## A271557.P16335205117533620344

`A296441(eq[10, A002262(n)])`
-/

namespace A271557.P16335205117533620344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271557.P16335205117533620344

/-! ## A271557.P12536986281875894781

`A296441(eq[10, A025668(n+1)])`
-/

namespace A271557.P12536986281875894781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271557.P12536986281875894781

/-! ## A271557.P11522283029918853610

`A296441(eq[10, A144328(n+1)])`
-/

namespace A271557.P11522283029918853610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271557.P11522283029918853610

/-! ## A271557.P13213823226949976413

`A296441(eq[11, A002260(n+1)])`
-/

namespace A271557.P13213823226949976413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271557.P13213823226949976413

/-! ## A271557.P17109419994443371495

`A296441(eq[11, A133232(n+1)])`
-/

namespace A271557.P17109419994443371495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271557.P17109419994443371495

/-!
# A271558: a(n) = G_n(11), where G is the Goodstein function defined in A266201.

The programs for A271558, there is no canonical definition to state claims against.
-/

/-! ## A271558.P14919251218095022447

`A296441(eq[11, A002262(n)])`
-/

namespace A271558.P14919251218095022447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271558.P14919251218095022447

/-! ## A271558.P17792374143995902699

`A296441(eq[11, A133233(n)])`
-/

namespace A271558.P17792374143995902699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271558.P17792374143995902699

/-! ## A271558.P14574536827470871679

`A296441(eq[11, A025668(n+1)])`
-/

namespace A271558.P14574536827470871679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271558.P14574536827470871679

/-! ## A271558.P5255626012894284630

`A296441(eq[11, A144328(n+1)])`
-/

namespace A271558.P5255626012894284630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271558.P5255626012894284630

/-! ## A271558.P14908764978387540107

`A296441(eq[12, A002260(n+1)])`
-/

namespace A271558.P14908764978387540107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271558.P14908764978387540107

/-!
# A271559: a(n) = G_n(12), where G is the Goodstein function defined in A266201.

The programs for A271559, there is no canonical definition to state claims against.
-/

/-! ## A271559.P1723657520532522727

`A056193(n)+(n+2)^(n+3)`
-/

namespace A271559.P1723657520532522727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + ((n + 2) ^ (n + 3) : ℤ)

end

end A271559.P1723657520532522727

/-! ## A271559.P17587291407906476165

`A271560(n)+A056193(n)-A266204(n)`
-/

namespace A271559.P17587291407906476165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271560 n + (A056193 n - A266204 n)

end

end A271559.P17587291407906476165

/-! ## A271559.P835717360970573618

`A296441(eq[12, A002262(n)])`
-/

namespace A271559.P835717360970573618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271559.P835717360970573618

/-! ## A271559.P3373117049104119014

`A296441(eq[8, A327844(n+1)])`
-/

namespace A271559.P3373117049104119014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271559.P3373117049104119014

/-!
# A271560: a(n) = G_n(13), where G is the Goodstein function defined in A266201.

The programs for A271560, there is no canonical definition to state claims against.
-/

/-! ## A271560.P220458793156341978

`A266204(n)+(n+2)^(n+3)`
-/

namespace A271560.P220458793156341978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266204 n + ((n + 2) ^ (n + 3) : ℤ)

end

end A271560.P220458793156341978

/-! ## A271560.P7312250297031848761

`A271559(n)+A266204(n)-A056193(n)`
-/

namespace A271560.P7312250297031848761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271559 n + (A266204 n - A056193 n)

end

end A271560.P7312250297031848761

/-! ## A271560.P17742258163244580454

`A222117(n)+A266204(n)-A271554(n)`
-/

namespace A271560.P17742258163244580454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222117 n + (A266204 n - A271554 n)

end

end A271560.P17742258163244580454

/-!
# A271561: a(n) = G_n(14), where G is the Goodstein function defined in A266201.

The programs for A271561, there is no canonical definition to state claims against.
-/

/-! ## A271561.P8909076166639164969

`A266205(n)+(n+2)^(n+3)`
-/

namespace A271561.P8909076166639164969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266205 n + ((n + 2) ^ (n + 3) : ℤ)

end

end A271561.P8909076166639164969

/-! ## A271561.P10969948034170311728

`A222117(n)+A266205(n)-A271554(n)`
-/

namespace A271561.P10969948034170311728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222117 n + (A266205 n - A271554 n)

end

end A271561.P10969948034170311728

/-!
# A271564: Number of 6's found in the first differences of a reduced residue system modulo a primorial p#.

The programs for A271564, there is no canonical definition to state claims against.
-/

/-! ## A271564.P13131272174912801508

`2*(A059861(n+1)-A059862(n+1))`
-/

namespace A271564.P13131272174912801508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059861 (n + 1) - A059862 (n + 1))

end

end A271564.P13131272174912801508

/-! ## A271564.P2945119210076113676

`A059861(n+1)+A271565(n+1)-A059863(n+1)`
-/

namespace A271564.P2945119210076113676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059861 (n + 1) + (A271565 (n + 1) - A059863 (n + 1))

end

end A271564.P2945119210076113676

/-!
# A271565: Number of 8's found in the first differences of a reduced residue system modulo a primorial p#.

The programs for A271565, there is no canonical definition to state claims against.
-/

/-! ## A271565.P2584065276118539576

`A059863(n+1)+A271564(n+1)-A059861(n+1)`
-/

namespace A271565.P2584065276118539576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059863 (n + 1) + (A271564 (n + 1) - A059861 (n + 1))

end

end A271565.P2584065276118539576

/-! ## A271565.P17557831878519769906

`A079684(∏[comp[n*and(2, n)]])`
-/

namespace A271565.P17557831878519769906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A271565.P17557831878519769906

/-!
# A271566: a(n) is the length of the n-th run in A137734.

The programs for A271566, the canonical program `A271566.P1475135994427406356` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271566 has offset 1).

The definition of A271566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271566.P1475135994427406356

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=1, a(3)=1, a(4)=3, a(5)=1, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271566

/-- `2*a(n-3)-a(n-6)` -/
def P1475135994427406356.Spec : Prop :=
  ∀ n, P1475135994427406356.a n = A271566 (n + 1)

theorem P1475135994427406356.correct : P1475135994427406356.Spec := by
  intro n
  simp only [A271566, Nat.add_sub_cancel]

end A271566

/-! ## A271566.P10458201052079917001

`A028242(A130706(n)+A117909(n))`
-/

namespace A271566.P10458201052079917001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A130706 n + A117909 n).toNat

end

end A271566.P10458201052079917001

namespace A271566

/-- `A028242(A130706(n)+A117909(n))` -/
def P10458201052079917001.Spec : Prop :=
  ∀ n, P10458201052079917001.a n = A271566 (n + 1)

end A271566

/-! ## A271566.P4031263576030192501

`A028242(A117909(n)*A141044(n))`
-/

namespace A271566.P4031263576030192501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A117909 n * A141044 n).toNat

end

end A271566.P4031263576030192501

namespace A271566

/-- `A028242(A117909(n)*A141044(n))` -/
def P4031263576030192501.Spec : Prop :=
  ∀ n, P4031263576030192501.a n = A271566 (n + 1)

end A271566

/-! ## A271566.P902065086483014763

`A122434(n)+Δ[A006446(n+1)]`
-/

namespace A271566.P902065086483014763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 n + (f1 (n + 1) - f1 n)

end

end A271566.P902065086483014763

namespace A271566

/-- `A122434(n)+Δ[A006446(n+1)]` -/
def P902065086483014763.Spec : Prop :=
  ∀ n, P902065086483014763.a n = A271566 (n + 1)

end A271566

/-! ## A271566.P17570672203639035361

`A122434(n)+Δ[A008620(n)*A194960(n+1)]`
-/

namespace A271566.P17570672203639035361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A194960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 n + (f1 (n + 1) - f1 n)

end

end A271566.P17570672203639035361

namespace A271566

/-- `A122434(n)+Δ[A008620(n)*A194960(n+1)]` -/
def P17570672203639035361.Spec : Prop :=
  ∀ n, P17570672203639035361.a n = A271566 (n + 1)

end A271566

/-! ## A271566.P13533011672299903215

`A122434(n)+Δ[A008130(n+2)+A002264(n)+1]`
-/

namespace A271566.P13533011672299903215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (n + 2) + (A002264 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 n + (f1 (n + 1) - f1 n)

end

end A271566.P13533011672299903215

namespace A271566

/-- `A122434(n)+Δ[A008130(n+2)+A002264(n)+1]` -/
def P13533011672299903215.Spec : Prop :=
  ∀ n, P13533011672299903215.a n = A271566 (n + 1)

end A271566

/-!
# A271567: Convolution of nonzero triangular numbers (A000217) and nonzero tetradecagonal numbers (A051866).

The programs for A271567, the canonical program `A271567.P8825504423723623360` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271567 has offset 0).

The definition of A271567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271567.P8825504423723623360

`(n+1)*(n+2)*(n+3)*(n+4)*(12*n+5)/120`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271567

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(12*n+5)/120` -/
def P8825504423723623360.Spec : Prop :=
  ∀ n, P8825504423723623360.a n = (A271567 n : ℚ)

end A271567

/-! ## A271567.P14435645622519700463

`Δ[(2*n-1)*C(n+4, 5)]`
-/

namespace A271567.P14435645622519700463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.choose (n + 4) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271567.P14435645622519700463

namespace A271567

/-- `Δ[(2*n-1)*C(n+4, 5)]` -/
def P14435645622519700463.Spec : Prop :=
  ∀ n, P14435645622519700463.a n = A271567 n

end A271567

/-! ## A271567.P17854226582087109126

`∑[(2*n+1+n)*C(n+3, 3)]`
-/

namespace A271567.P17854226582087109126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271567.P17854226582087109126

namespace A271567

/-- `∑[(2*n+1+n)*C(n+3, 3)]` -/
def P17854226582087109126.Spec : Prop :=
  ∀ n, (P17854226582087109126.a n : ℤ) = A271567 n

end A271567

/-! ## A271567.P12966827352132276498

`Δ[C(n+4, 5)*A004273(n)]`
-/

namespace A271567.P12966827352132276498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 5 : ℤ) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271567.P12966827352132276498

namespace A271567

/-- `Δ[C(n+4, 5)*A004273(n)]` -/
def P12966827352132276498.Spec : Prop :=
  ∀ n, P12966827352132276498.a n = A271567 n

end A271567

/-! ## A271567.P17559741747306456187

`A174002(n)+A051877(n)`
-/

namespace A271567.P17559741747306456187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A051877 n

end

end A271567.P17559741747306456187

namespace A271567

/-- `A174002(n)+A051877(n)` -/
def P17559741747306456187.Spec : Prop :=
  ∀ n, P17559741747306456187.a n = A271567 n

end A271567

/-! ## A271567.P873467438322024085

`A086689(n+1)+A033488(n)`
-/

namespace A271567.P873467438322024085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) + A033488 n

end

end A271567.P873467438322024085

namespace A271567

/-- `A086689(n+1)+A033488(n)` -/
def P873467438322024085.Spec : Prop :=
  ∀ n, P873467438322024085.a n = A271567 n

end A271567

/-! ## A271567.P12288290868488147913

`A266732(n)+A005585(n+1)`
-/

namespace A271567.P12288290868488147913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n + A005585 (n + 1)

end

end A271567.P12288290868488147913

namespace A271567

/-- `A266732(n)+A005585(n+1)` -/
def P12288290868488147913.Spec : Prop :=
  ∀ n, P12288290868488147913.a n = A271567 n

end A271567

/-! ## A271567.P6302965387936941455

`A277935(n+1)+A051880(n)`
-/

namespace A271567.P6302965387936941455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A051880 n

end

end A271567.P6302965387936941455

namespace A271567

/-- `A277935(n+1)+A051880(n)` -/
def P6302965387936941455.Spec : Prop :=
  ∀ n, P6302965387936941455.a n = A271567 n

end A271567

/-! ## A271567.P3337360356650178103

`2*A051880(n)-A051878(n)`
-/

namespace A271567.P3337360356650178103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051880 n - A051878 n

end

end A271567.P3337360356650178103

namespace A271567

/-- `2*A051880(n)-A051878(n)` -/
def P3337360356650178103.Spec : Prop :=
  ∀ n, P3337360356650178103.a n = A271567 n

end A271567

/-! ## A271567.P10238214669633723519

`2*A056118(n)-A051880(n)`
-/

namespace A271567.P10238214669633723519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056118 n - A051880 n

end

end A271567.P10238214669633723519

namespace A271567

/-- `2*A056118(n)-A051880(n)` -/
def P10238214669633723519.Spec : Prop :=
  ∀ n, P10238214669633723519.a n = A271567 n

end A271567

/-! ## A271567.P14637122625597453464

`A005585(n+1)+2*A174002(n)`
-/

namespace A271567.P14637122625597453464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + 2 * A174002 n

end

end A271567.P14637122625597453464

namespace A271567

/-- `A005585(n+1)+2*A174002(n)` -/
def P14637122625597453464.Spec : Prop :=
  ∀ n, P14637122625597453464.a n = A271567 n

end A271567

/-! ## A271567.P1827758058565861435

`A051878(n)+2*A277935(n+1)`
-/

namespace A271567.P1827758058565861435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n + 2 * A277935 (n + 1)

end

end A271567.P1827758058565861435

namespace A271567

/-- `A051878(n)+2*A277935(n+1)` -/
def P1827758058565861435.Spec : Prop :=
  ∀ n, P1827758058565861435.a n = A271567 n

end A271567

/-! ## A271567.P16726520116175346013

`2*A051877(n)-A005585(n+1)`
-/

namespace A271567.P16726520116175346013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051877 n - A005585 (n + 1)

end

end A271567.P16726520116175346013

namespace A271567

/-- `2*A051877(n)-A005585(n+1)` -/
def P16726520116175346013.Spec : Prop :=
  ∀ n, P16726520116175346013.a n = A271567 n

end A271567

/-! ## A271567.P17426606897263201916

`A056118(n)+A277935(n+1)/2`
-/

namespace A271567.P17426606897263201916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056118 n : ℚ) + (A277935 (n + 1) : ℚ) / 2

end

end A271567.P17426606897263201916

namespace A271567

/-- `A056118(n)+A277935(n+1)/2` -/
def P17426606897263201916.Spec : Prop :=
  ∀ n, P17426606897263201916.a n = (A271567 n : ℚ)

end A271567

/-! ## A271567.P13956583244340903246

`A213565(n+1)-n²*A000292(n+1)`
-/

namespace A271567.P13956583244340903246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213565 (n + 1) - (n ^ 2 : ℤ) * A000292 (n + 1)

end

end A271567.P13956583244340903246

namespace A271567

/-- `A213565(n+1)-n²*A000292(n+1)` -/
def P13956583244340903246.Spec : Prop :=
  ∀ n, P13956583244340903246.a n = A271567 n

end A271567

/-! ## A271567.P13552234991406410965

`A027800(n)+A056118(n)-A034263(n)`
-/

namespace A271567.P13552234991406410965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A056118 n - A034263 n)

end

end A271567.P13552234991406410965

namespace A271567

/-- `A027800(n)+A056118(n)-A034263(n)` -/
def P13552234991406410965.Spec : Prop :=
  ∀ n, P13552234991406410965.a n = A271567 n

end A271567

/-! ## A271567.P3963983848105652874

`A034263(n)+A051880(n)-A005585(n+1)`
-/

namespace A271567.P3963983848105652874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A051880 n - A005585 (n + 1))

end

end A271567.P3963983848105652874

namespace A271567

/-- `A034263(n)+A051880(n)-A005585(n+1)` -/
def P3963983848105652874.Spec : Prop :=
  ∀ n, P3963983848105652874.a n = A271567 n

end A271567

/-! ## A271567.P3732218000835468467

`A051843(n+1)+A051878(n)-A005585(n+1)`
-/

namespace A271567.P3732218000835468467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 (n + 1) + (A051878 n - A005585 (n + 1))

end

end A271567.P3732218000835468467

namespace A271567

/-- `A051843(n+1)+A051878(n)-A005585(n+1)` -/
def P3732218000835468467.Spec : Prop :=
  ∀ n, P3732218000835468467.a n = A271567 n

end A271567

/-! ## A271567.P14690438585225608503

`∑[A220212(n+1)]`
-/

namespace A271567.P14690438585225608503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271567.P14690438585225608503

namespace A271567

/-- `∑[A220212(n+1)]` -/
def P14690438585225608503.Spec : Prop :=
  ∀ n, P14690438585225608503.a n = A271567 n

end A271567

/-! ## A271567.P9575678131734967477

`∑[∑[A172073(n+1)]]`
-/

namespace A271567.P9575678131734967477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271567.P9575678131734967477

namespace A271567

/-- `∑[∑[A172073(n+1)]]` -/
def P9575678131734967477.Spec : Prop :=
  ∀ n, P9575678131734967477.a n = A271567 n

end A271567

/-!
# A271568: Squarefree semiprimes n such that phi(n) - 1 is prime.

The programs for A271568, the canonical program `A271568.P11000683878390668970` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271568 has offset 1).

The definition of A271568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271568.P1683627808599304979

`filter[A229269(n+1), A354927(#)]`
-/

namespace A271568.P1683627808599304979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P1683627808599304979

namespace A271568

/-- `filter[A229269(n+1), A354927(#)]` -/
def P1683627808599304979.Spec : Prop :=
  ∀ n, P1683627808599304979.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P3074119496311109970

`filter[A229269(n+2), A374128(#)]`
-/

namespace A271568.P3074119496311109970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A271568.P3074119496311109970

namespace A271568

/-- `filter[A229269(n+2), A374128(#)]` -/
def P3074119496311109970.Spec : Prop :=
  ∀ n, P3074119496311109970.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P11000683878390668970

`filter[A050704(n+2), A354927(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A271568

/-- `filter[A050704(n+2), A354927(#)]` -/
def P11000683878390668970.Spec : Prop :=
  ∀ n, P11000683878390668970.a n = A271568 (n + 1)

theorem P11000683878390668970.correct : P11000683878390668970.Spec := by
  intro n
  simp only [A271568, Nat.add_sub_cancel]

end A271568

/-! ## A271568.P5902574956219237951

`filter[A071179(n+1), A354927(#)]`
-/

namespace A271568.P5902574956219237951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P5902574956219237951

namespace A271568

/-- `filter[A071179(n+1), A354927(#)]` -/
def P5902574956219237951.Spec : Prop :=
  ∀ n, P5902574956219237951.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P16101180008796918229

`filter[A050704(n+1), A280710(#)]`
-/

namespace A271568.P16101180008796918229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271568.P16101180008796918229

namespace A271568

/-- `filter[A050704(n+1), A280710(#)]` -/
def P16101180008796918229.Spec : Prop :=
  ∀ n, P16101180008796918229.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P8247967952666514483

`filter[A071179(n+1), A280710(#)]`
-/

namespace A271568.P8247967952666514483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271568.P8247967952666514483

namespace A271568

/-- `filter[A071179(n+1), A280710(#)]` -/
def P8247967952666514483.Spec : Prop :=
  ∀ n, P8247967952666514483.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P2578708891662899919

`filter[A050704(n+1), A353471(#)]`
-/

namespace A271568.P2578708891662899919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A271568.P2578708891662899919

namespace A271568

/-- `filter[A050704(n+1), A353471(#)]` -/
def P2578708891662899919.Spec : Prop :=
  ∀ n, P2578708891662899919.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P4699905695780784900

`filter[A071179(n+1), A353471(#)]`
-/

namespace A271568.P4699905695780784900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A271568.P4699905695780784900

namespace A271568

/-- `filter[A071179(n+1), A353471(#)]` -/
def P4699905695780784900.Spec : Prop :=
  ∀ n, P4699905695780784900.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P16380446336111705331

`filter[A071179(n+1), A353788(#)]`
-/

namespace A271568.P16380446336111705331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A271568.P16380446336111705331

namespace A271568

/-- `filter[A071179(n+1), A353788(#)]` -/
def P16380446336111705331.Spec : Prop :=
  ∀ n, P16380446336111705331.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P9052307939914289524

`filter[A229269(n+1), A280710(#)]`
-/

namespace A271568.P9052307939914289524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A271568.P9052307939914289524

namespace A271568

/-- `filter[A229269(n+1), A280710(#)]` -/
def P9052307939914289524.Spec : Prop :=
  ∀ n, P9052307939914289524.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P1164477803581907457

`filter[A071179(n+2), A064911(#)]`
-/

namespace A271568.P1164477803581907457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A271568.P1164477803581907457

namespace A271568

/-- `filter[A071179(n+2), A064911(#)]` -/
def P1164477803581907457.Spec : Prop :=
  ∀ n, P1164477803581907457.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P4730471652986552989

`filter[A071179(n+2), A101040(#)]`
-/

namespace A271568.P4730471652986552989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A271568.P4730471652986552989

namespace A271568

/-- `filter[A071179(n+2), A101040(#)]` -/
def P4730471652986552989.Spec : Prop :=
  ∀ n, P4730471652986552989.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P7355351842356569989

`filter[A050704(n+2), A353788(#)]`
-/

namespace A271568.P7355351842356569989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A271568.P7355351842356569989

namespace A271568

/-- `filter[A050704(n+2), A353788(#)]` -/
def P7355351842356569989.Spec : Prop :=
  ∀ n, P7355351842356569989.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P13874843814284784965

`filter[A071179(n+2), A353799(#)]`
-/

namespace A271568.P13874843814284784965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A271568.P13874843814284784965

namespace A271568

/-- `filter[A071179(n+2), A353799(#)]` -/
def P13874843814284784965.Spec : Prop :=
  ∀ n, P13874843814284784965.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P12994980245608877945

`filter[A229269(n+2), A353471(#)]`
-/

namespace A271568.P12994980245608877945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A271568.P12994980245608877945

namespace A271568

/-- `filter[A229269(n+2), A353471(#)]` -/
def P12994980245608877945.Spec : Prop :=
  ∀ n, P12994980245608877945.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P16873258233276373733

`filter[A229269(n+2), A353788(#)]`
-/

namespace A271568.P16873258233276373733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A271568.P16873258233276373733

namespace A271568

/-- `filter[A229269(n+2), A353788(#)]` -/
def P16873258233276373733.Spec : Prop :=
  ∀ n, P16873258233276373733.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P3791106785723832530

`filter[A050704(n+3), A064911(#)]`
-/

namespace A271568.P3791106785723832530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A271568.P3791106785723832530

namespace A271568

/-- `filter[A050704(n+3), A064911(#)]` -/
def P3791106785723832530.Spec : Prop :=
  ∀ n, P3791106785723832530.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P3662431458523423559

`filter[A050704(n+3), A101040(#)]`
-/

namespace A271568.P3662431458523423559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A271568.P3662431458523423559

namespace A271568

/-- `filter[A050704(n+3), A101040(#)]` -/
def P3662431458523423559.Spec : Prop :=
  ∀ n, P3662431458523423559.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P14865054016488626961

`filter[A229269(n+3), A064911(#)]`
-/

namespace A271568.P14865054016488626961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A271568.P14865054016488626961

namespace A271568

/-- `filter[A229269(n+3), A064911(#)]` -/
def P14865054016488626961.Spec : Prop :=
  ∀ n, P14865054016488626961.a n = A271568 (n + 1)

end A271568

/-! ## A271568.P16886855141941051714

`filter[A229269(n+3), A101040(#)]`
-/

namespace A271568.P16886855141941051714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A271568.P16886855141941051714

namespace A271568

/-- `filter[A229269(n+3), A101040(#)]` -/
def P16886855141941051714.Spec : Prop :=
  ∀ n, P16886855141941051714.a n = A271568 (n + 1)

end A271568

/-!
# A271569: Repdigit numbers n such that the repeated digit of n is equal to the digital root of n.

The programs for A271569, there is no canonical definition to state claims against.
-/

/-! ## A271569.P8060069374958789214

`∩[A378837(n+1), A064222(n)]`
-/

namespace A271569.P8060069374958789214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271569.P8060069374958789214

/-! ## A271569.P9705740586152771544

`∩[A378837(n+1), A385294(n+1)]`
-/

namespace A271569.P9705740586152771544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271569.P9705740586152771544

/-! ## A271569.P11134929600517306031

`∩[A378837(n+1), A385298(n+1)]`
-/

namespace A271569.P11134929600517306031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271569.P11134929600517306031

/-! ## A271569.P13116858687608577787

`∩[A281091(n+1), A064222(n)]`
-/

namespace A271569.P13116858687608577787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271569.P13116858687608577787

/-!
# A271572: a(n) = n^7 mod 32.

The programs for A271572, the canonical program `A271572.P13945688213907271640` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271572 has offset 0).

The definition of A271572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271572.P13945688213907271640

`(n^7)%32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271572

/-- `(n^7)%32` -/
def P13945688213907271640.Spec : Prop :=
  ∀ n, (P13945688213907271640.a n : ℤ) = A271572 n

theorem P13945688213907271640.correct : P13945688213907271640.Spec := by
  intro n
  simp only [A271572]

end A271572

/-!
# A271573: Numerator of (0 followed by A005126(n)= 2, 4, 7, ...)/2^n.

The programs for A271573, there is no canonical definition to state claims against.
-/

/-! ## A271573.P2854243777719451042

`A302787(A052330(n)*A084400(n+1))`
-/

namespace A271573.P2854243777719451042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302787 (A052330 n * A084400 (n + 1)).toNat

end

end A271573.P2854243777719451042

/-! ## A271573.P3535480979833554510

`A000265(ceil(2^(n-1)+n))%(2^n)`
-/

namespace A271573.P3535480979833554510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ)⌉.toNat) (2 ^ n : ℤ)

end

end A271573.P3535480979833554510

/-! ## A271573.P12839134047528760681

`A000265(and(-a(n-1), 2^(n-1))+n)` with `a(0)=0`
-/

namespace A271573.P12839134047528760681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000265 (Int.land (-a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) + (n : ℤ)).toNat

end

end A271573.P12839134047528760681

/-! ## A271573.P14533617440614712348

`A000265(or(n, and(-a(n-1), 2^(n-1))))` with `a(0)=0`
-/

namespace A271573.P14533617440614712348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000265 (Int.lor (n : ℤ) (Int.land (-a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))))).toNat

end

end A271573.P14533617440614712348

/-! ## A271573.P1247391368751405673

`A000265(ceil(2^(n-1)+n))-A000007(n)`
-/

namespace A271573.P1247391368751405673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ)⌉.toNat - A000007 n

end

end A271573.P1247391368751405673

/-!
# A271575: Primes p such that p+10, p+100 and p+1000 are all prime.

The programs for A271575, there is no canonical definition to state claims against.
-/

/-! ## A271575.P9423329949651254054

`∩[A101408(n+1), A172987(n+1)]`
-/

namespace A271575.P9423329949651254054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271575.P9423329949651254054

/-!
# A271576: Integers whose square is of the form x^2 + y^4, with x,y > 0 (see A111925).

The programs for A271576, there is no canonical definition to state claims against.
-/

/-! ## A271576.P8505446967967784933

`∪[A345645(n+1), A345700(n+1)]%A346594(2*(n+1))`
-/

namespace A271576.P8505446967967784933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A346594 (2 * (n + 1)))

end

end A271576.P8505446967967784933

/-! ## A271576.P8272971258009118284

`∩[A092629(n+1), A273908(n+1)]`
-/

namespace A271576.P8272971258009118284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271576.P8272971258009118284

/-! ## A271576.P10606566911350528764

`∩[A122546(n+1), A273908(n+1)]`
-/

namespace A271576.P10606566911350528764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271576.P10606566911350528764

/-! ## A271576.P5263692077810083962

`∩[A158698(n+1), A273908(n+1)]`
-/

namespace A271576.P5263692077810083962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271576.P5263692077810083962

/-! ## A271576.P2652129445625234018

`∩[A273908(n+1), A341763(n+1)]`
-/

namespace A271576.P2652129445625234018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271576.P2652129445625234018

/-!
# A271577: Powers, squares excepted, of the form x^2+y^4, with x,y > 0 (see A111925).

The programs for A271577, there is no canonical definition to state claims against.
-/

/-! ## A271577.P4232543961414759441

`filter[A097054(2*n+1), A198517(#)]`
-/

namespace A271577.P4232543961414759441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A271577.P4232543961414759441

/-!
# A271578: Magic sums of 4 X 4 magic squares composed of primes.

The programs for A271578, there is no canonical definition to state claims against.
-/

/-! ## A271578.P12134746430588963513

`A272303(∑[char[A103138(n)+1]]+2+n)`
-/

namespace A271578.P12134746430588963513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103138 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272303 (∑ j ∈ Finset.range (n + 1), f1 j + 2 + n)

end

end A271578.P12134746430588963513

/-! ## A271578.P2831952836419271809

`lt[A068963(2*n+1), A325325(A097798(n))]`
-/

namespace A271578.P2831952836419271809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068963 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 (A097798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271578.P2831952836419271809

/-!
# A271582: Magic sums of 4 X 4 magic squares composed of odd squares.

The programs for A271582, there is no canonical definition to state claims against.
-/

/-! ## A271582.P2568493999687426672

`A017113(A271579(n+1)^A289496(n+1))`
-/

namespace A271582.P2568493999687426672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (SequenceMachineLib.roundAway ((A271579 (n + 1) : ℚ) ^ (A289496 (n + 1) : ℤ))).toNat

end

end A271582.P2568493999687426672

/-!
# A271584: Irregular triangle read by rows: alternate (k-1)*k, k^2, for k = 0 to n.

The programs for A271584, there is no canonical definition to state claims against.
-/

/-! ## A271584.P7582988378584498469

`floor(((2-A167430(n+1))/2)²)`
-/

namespace A271584.P7582988378584498469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - A167430 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A271584.P7582988378584498469

/-! ## A271584.P17808941085587024616

`A002620(A384688(n))-A055087(n)`
-/

namespace A271584.P17808941085587024616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A384688 n).toNat - A055087 n

end

end A271584.P17808941085587024616

/-! ## A271584.P11357088186070292830

`A055087(n)*A055087(A056847(n))`
-/

namespace A271584.P11357088186070292830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n * A055087 (A056847 n).toNat

end

end A271584.P11357088186070292830

/-! ## A271584.P16006965260773570734

`A002620(A025643(n+1))-A055087(n)`
-/

namespace A271584.P16006965260773570734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A025643 (n + 1)).toNat - A055087 n

end

end A271584.P16006965260773570734

/-! ## A271584.P11969248572879803335

`A055087(A000196(n)+n)*A055087(n)`
-/

namespace A271584.P11969248572879803335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A000196 n + (n : ℤ)).toNat * A055087 n

end

end A271584.P11969248572879803335

/-! ## A271584.P3905983441054374761

`A025685(n+1)*A025685(A078358(n+1))`
-/

namespace A271584.P3905983441054374761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (n + 1) * A025685 (A078358 (n + 1)).toNat

end

end A271584.P3905983441054374761

/-! ## A271584.P3227566571906697965

`A053186(n)%A000194(n+1)*A055087(n)`
-/

namespace A271584.P3227566571906697965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 n) (A000194 (n + 1)) * A055087 n

end

end A271584.P3227566571906697965

/-! ## A271584.P13280497113394679382

`A144216(lt[A144216(n+1), A144216(n+2)]+1)-n`
-/

namespace A271584.P13280497113394679382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) - (n : ℤ)

end

end A271584.P13280497113394679382

/-! ## A271584.P4551666498391451105

`A002620(A055086(A002620(A384688(n))))`
-/

namespace A271584.P4551666498391451105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A055086 (A002620 (A384688 n).toNat).toNat).toNat

end

end A271584.P4551666498391451105

/-! ## A271584.P5426944424283465555

`A002620(A055086(A002620(A025643(n+1))))`
-/

namespace A271584.P5426944424283465555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A055086 (A002620 (A025643 (n + 1)).toNat).toNat).toNat

end

end A271584.P5426944424283465555

/-!
# A271591: Second most significant bit of the tribonacci number A000073(n).

The programs for A271591, the canonical program `A271591.P3174353865751214106` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271591 has offset 4).

The definition of A271591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271591.P3174353865751214106

`floor(A000073(n+4)/2^(ceil(log2(A000073(n+4)+1))-2))-2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A271591

/-- `floor(A000073(n+4)/2^(ceil(log2(A000073(n+4)+1))-2))-2` -/
def P3174353865751214106.Spec : Prop :=
  ∀ n, P3174353865751214106.a n = A271591 (n + 4)

theorem P3174353865751214106.correct : P3174353865751214106.Spec := by
  intro n
  simp only [A271591, Nat.add_sub_cancel]

end A271591

/-! ## A271591.P13038937505403789242

`A173196(n)%A164886(∑[n+1])`
-/

namespace A271591.P13038937505403789242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173196 n) (A164886 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A271591.P13038937505403789242

namespace A271591

/-- `A173196(n)%A164886(∑[n+1])` -/
def P13038937505403789242.Spec : Prop :=
  ∀ n, P13038937505403789242.a n = A271591 (n + 4)

end A271591

/-! ## A271591.P11183709968326345379

`and(A168046(A211018(n+1)), A210978(n))`
-/

namespace A271591.P11183709968326345379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168046 (A211018 (n + 1)).toNat) (A210978 n)

end

end A271591.P11183709968326345379

namespace A271591

/-- `and(A168046(A211018(n+1)), A210978(n))` -/
def P11183709968326345379.Spec : Prop :=
  ∀ n, P11183709968326345379.a n = A271591 (n + 4)

end A271591

/-! ## A271591.P12822855121007550014

`and(A168046(A211018(n+1)), A210981(n))`
-/

namespace A271591.P12822855121007550014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168046 (A211018 (n + 1)).toNat) (A210981 n)

end

end A271591.P12822855121007550014

namespace A271591

/-- `and(A168046(A211018(n+1)), A210981(n))` -/
def P12822855121007550014.Spec : Prop :=
  ∀ n, P12822855121007550014.a n = A271591 (n + 4)

end A271591

/-! ## A271591.P10672181686427331153

`and(A003132(A162198(n+1)), A050361(3*n+5))`
-/

namespace A271591.P10672181686427331153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003132 (A162198 (n + 1)).toNat) (A050361 (3 * n + 5))

end

end A271591.P10672181686427331153

namespace A271591

/-- `and(A003132(A162198(n+1)), A050361(3*n+5))` -/
def P10672181686427331153.Spec : Prop :=
  ∀ n, P10672181686427331153.a n = A271591 (n + 4)

end A271591

/-!
# A271592: Array read by antidiagonals: T(n,m) = number of directed Hamiltonian walks from NW to SW corners on a grid with n rows and m columns.

The programs for A271592, there is no canonical definition to state claims against.
-/

/-! ## A271592.P561648075691557414

`A275850(2^A275281(n))`
-/

namespace A271592.P561648075691557414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275281 n : ℤ))).toNat

end

end A271592.P561648075691557414

/-! ## A271592.P17308122836699456413

`A339894(2^A275281(n))`
-/

namespace A271592.P17308122836699456413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275281 n : ℤ))).toNat

end

end A271592.P17308122836699456413

/-! ## A271592.P9358401206581219023

`A089643(floor(sinh(A275281(n))))`
-/

namespace A271592.P9358401206581219023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 ⌊Real.sinh (A275281 n : ℝ)⌋.toNat

end

end A271592.P9358401206581219023

/-! ## A271592.P11650185911790357269

`A069010(ceil(sinh(A275281(n))))`
-/

namespace A271592.P11650185911790357269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ⌈Real.sinh (A275281 n : ℝ)⌉.toNat

end

end A271592.P11650185911790357269

/-! ## A271592.P1915262378202013149

`A245563(A132393(n)*A275281(n))`
-/

namespace A271592.P1915262378202013149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (A132393 n * A275281 n).toNat

end

end A271592.P1915262378202013149

/-!
# A271593: Expansion of psi(-x^3) / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A271593, there is no canonical definition to state claims against.
-/

/-! ## A271593.P13568894325696296101

`A143068(3*n+1)/2`
-/

namespace A271593.P13568894325696296101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 (3 * n + 1) : ℚ) / 2

end

end A271593.P13568894325696296101

/-! ## A271593.P9414083909149534689

`abs(A307757(A016777(n)))`
-/

namespace A271593.P9414083909149534689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307757 (A016777 n).toNat|

end

end A271593.P9414083909149534689

/-! ## A271593.P5919782260320261805

`abs(A307757(Δ[A000326(n)]))`
-/

namespace A271593.P5919782260320261805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307757 (f1 (n + 1) - f1 n).toNat|

end

end A271593.P5919782260320261805

/-! ## A271593.P9928537781587864167

`lcm(A008836(n+1), A307757(A016777(n)))`
-/

namespace A271593.P9928537781587864167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A307757 (A016777 n).toNat)

end

end A271593.P9928537781587864167

/-! ## A271593.P14233714497718408118

`abs(A307757(A028242(6*n)))`
-/

namespace A271593.P14233714497718408118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307757 (A028242 (6 * n)).toNat|

end

end A271593.P14233714497718408118

/-! ## A271593.P6595891509193883182

`lcm(A165471(n+1), A307757(A028242(6*n)))`
-/

namespace A271593.P6595891509193883182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165471 (n + 1)) (A307757 (A028242 (6 * n)).toNat)

end

end A271593.P6595891509193883182

/-!
# A271594: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A271594, there is no canonical definition to state claims against.
-/

/-! ## A271594.P699818071945136751

`∑[A271597(abs(1-n))]+4`
-/

namespace A271594.P699818071945136751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271597 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A271594.P699818071945136751

/-! ## A271594.P13159116869135222488

`A271597(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271594.P13159116869135222488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271597 (n - 1) + a (n - 1)

end

end A271594.P13159116869135222488

/-! ## A271594.P7589273031138117147

`A271597(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A271594.P7589273031138117147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271597 (n - 1) - (A000007 n - a (n - 1))

end

end A271594.P7589273031138117147

/-! ## A271594.P9515334428112229997

`Δ[A271596(n)]-A271597(n)`
-/

namespace A271594.P9515334428112229997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271597 n

end

end A271594.P9515334428112229997

/-! ## A271594.P16159815165267680294

`A271596(n+1)-(A271597(n)+A271596(n))`
-/

namespace A271594.P16159815165267680294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271596 (n + 1) - (A271597 n + A271596 n)

end

end A271594.P16159815165267680294

/-!
# A271595: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A271595, there is no canonical definition to state claims against.
-/

/-! ## A271595.P14332508399840668254

`A271594(2^n-1)`
-/

namespace A271595.P14332508399840668254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (2 ^ n - 1)

end

end A271595.P14332508399840668254

/-! ## A271595.P6690112182466510270

`record[A271594(A038573(n))]`
-/

namespace A271595.P6690112182466510270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271595.P6690112182466510270

/-! ## A271595.P9667648543786917383

`record[A271594(A091264(n))]`
-/

namespace A271595.P9667648543786917383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271595.P9667648543786917383

/-! ## A271595.P7298633809938163190

`record[A271594(A173787(n))]`
-/

namespace A271595.P7298633809938163190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271595.P7298633809938163190

/-! ## A271595.P864789807197497553

`record[A271594(A218616(n))]`
-/

namespace A271595.P864789807197497553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271595.P864789807197497553

/-!
# A271596: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A271596, there is no canonical definition to state claims against.
-/

/-! ## A271596.P18237743936968264749

`∑[A271594(n)]`
-/

namespace A271596.P18237743936968264749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271596.P18237743936968264749

/-! ## A271596.P1008123393281988045

`∑[A271597(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271596.P1008123393281988045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271597 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271596.P1008123393281988045

/-! ## A271596.P10927438541365465694

`A271594(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271596.P10927438541365465694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271594 n + a (A023443 n).toNat

end

end A271596.P10927438541365465694

/-! ## A271596.P1800663047798306496

`A271594(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A271596.P1800663047798306496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271594 n + a ((n : ℤ) - A057427 n).toNat

end

end A271596.P1800663047798306496

/-! ## A271596.P2432600658573807514

`∑[∑[A271597(n)]+1-A271597(n)]`
-/

namespace A271596.P2432600658573807514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271597 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271596.P2432600658573807514

/-! ## A271596.P562311182804549308

`A271594(n)+a(A005843(n)-(n+1))` with `a(0)=1`
-/

namespace A271596.P562311182804549308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271594 n + a (A005843 n - (n + 1 : ℤ)).toNat

end

end A271596.P562311182804549308

/-!
# A271597: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A271597, there is no canonical definition to state claims against.
-/

/-! ## A271597.P8075350060549093615

`Δ[A271594(n)]`
-/

namespace A271597.P8075350060549093615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271597.P8075350060549093615

/-! ## A271597.P1462720551527790680

`A271594(n+1)-A271594(n)`
-/

namespace A271597.P1462720551527790680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271594 (n + 1) - A271594 n

end

end A271597.P1462720551527790680

/-!
# A271598: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A271598, there is no canonical definition to state claims against.
-/

/-! ## A271598.P17462769767021969537

`A271601(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271598.P17462769767021969537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271601 (n - 1) + a (n - 1)

end

end A271598.P17462769767021969537

/-! ## A271598.P13843179171523790011

`Δ[A271600(n)]-A271601(n)`
-/

namespace A271598.P13843179171523790011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271601 n

end

end A271598.P13843179171523790011

/-! ## A271598.P16989899153102587219

`A271600(n+1)-(A271601(n)+A271600(n))`
-/

namespace A271598.P16989899153102587219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271600 (n + 1) - (A271601 n + A271600 n)

end

end A271598.P16989899153102587219

/-! ## A271598.P17226819458119934016

`abs((2*n+1)²-(A273299(n)+A000007(n)))`
-/

namespace A271598.P17226819458119934016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n + 1) ^ 2 : ℤ) - (A273299 n + A000007 n)|

end

end A271598.P17226819458119934016

/-! ## A271598.P11904475648355255786

`A016754(n)-A273299(n)%A016754(n)`
-/

namespace A271598.P11904475648355255786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A273299 n) (A016754 n)

end

end A271598.P11904475648355255786

/-! ## A271598.P13483957259770860702

`A181385(A016825(n))-A273299(n)`
-/

namespace A271598.P13483957259770860702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273299 n

end

end A271598.P13483957259770860702

/-!
# A271599: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A271599, there is no canonical definition to state claims against.
-/

/-! ## A271599.P18435661510725127991

`A271598(2^n-1)`
-/

namespace A271599.P18435661510725127991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (2 ^ n - 1)

end

end A271599.P18435661510725127991

/-! ## A271599.P710379608575549002

`record[A271598(A091264(n))]`
-/

namespace A271599.P710379608575549002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271599.P710379608575549002

/-! ## A271599.P2377564722543225711

`record[A271598(A135481(n))]`
-/

namespace A271599.P2377564722543225711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271599.P2377564722543225711

/-! ## A271599.P1418171252063918099

`record[A271598(A173787(n))]`
-/

namespace A271599.P1418171252063918099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271599.P1418171252063918099

/-! ## A271599.P5525498867935509805

`record[A271598(A227351(n))]`
-/

namespace A271599.P5525498867935509805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271599.P5525498867935509805

