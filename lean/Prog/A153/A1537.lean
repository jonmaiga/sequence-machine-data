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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A153700: Greatest number m such that the fractional part of (10/9)^A153696(n) >= 1-(1/m).

The programs for A153700, there is no canonical definition to state claims against.
-/

/-! ## A153700.P7455294895805910342

`A153699(A325227(3*n+5)+A047536(n+1))`
-/

namespace A153700.P7455294895805910342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153699 (A325227 (3 * n + 5) + A047536 (n + 1)).toNat

end

end A153700.P7455294895805910342

/-! ## A153700.P14155216441186063317

`A153699(or(A120685(n), A328770(n+1)))`
-/

namespace A153700.P14155216441186063317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153699 (Int.lor (A120685 n) (A328770 (n + 1))).toNat

end

end A153700.P14155216441186063317

/-!
# A153702: Numbers k such that the fractional part of e^k is less than 1/k.

The programs for A153702, there is no canonical definition to state claims against.
-/

/-! ## A153702.P7546490585663376526

`A153701(C(n+1, ∑[char[4*n]]))`
-/

namespace A153702.P7546490585663376526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153701 (Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A153702.P7546490585663376526

/-! ## A153702.P607076698780379311

`A153701(A011971(2*n)-floor(n/∏{p}[n+1, #]))`
-/

namespace A153702.P607076698780379311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153701 (A011971 (2 * n) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋).toNat

end

end A153702.P607076698780379311

/-!
# A153703: Partial sums of A069996.

The programs for A153703, the canonical program `A153703.P5493721965326247959` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153703 has offset 1).

The definition of A153703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153703.P12915420703165602160

`ogf((1+3x)/(1-10x+36x^2-54x^3+27x^4))`
-/

namespace A153703.P12915420703165602160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -10, 36, -54, 27] n

end

end A153703.P12915420703165602160

namespace A153703

/-- `ogf((1+3x)/(1-10x+36x^2-54x^3+27x^4))` -/
def P12915420703165602160.Spec : Prop :=
  ∀ n, P12915420703165602160.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P13156540114599195040

`(3^(n+1)*((n+1)²-(n+1)+1)-1)/2`
-/

namespace A153703.P13156540114599195040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 1) - 1 : ℚ) / 2

end

end A153703.P13156540114599195040

namespace A153703

/-- `(3^(n+1)*((n+1)²-(n+1)+1)-1)/2` -/
def P13156540114599195040.Spec : Prop :=
  ∀ n, P13156540114599195040.a n = (A153703 (n + 1) : ℚ)

theorem P13156540114599195040.correct : P13156540114599195040.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A153703, Nat.add_sub_cancel, A153703.P13156540114599195040.a, A153703.P5493721965326247959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A153703, Nat.add_sub_cancel, A153703.P13156540114599195040.a, A153703.P5493721965326247959.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A153703

/-! ## A153703.P5493721965326247959

`10*a(n-1)-36*a(n-2)+54*a(n-3)-27*a(n-4)` with `a(0)=1, a(1)=13, a(2)=94, a(3)=526`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153703

/-- `10*a(n-1)-36*a(n-2)+54*a(n-3)-27*a(n-4)` -/
def P5493721965326247959.Spec : Prop :=
  ∀ n, P5493721965326247959.a n = A153703 (n + 1)

theorem P5493721965326247959.correct : P5493721965326247959.Spec := by
  intro n
  simp only [A153703, Nat.add_sub_cancel]

end A153703

/-! ## A153703.P9313605770204536690

`a(n-1)+(n+1)²*3^n` with `a(0)=1`
-/

namespace A153703.P9313605770204536690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ 2 * 3 ^ n

end

end A153703.P9313605770204536690

namespace A153703

/-- `a(n-1)+(n+1)²*3^n` -/
def P9313605770204536690.Spec : Prop :=
  ∀ n, (P9313605770204536690.a n : ℤ) = A153703 (n + 1)

end A153703

/-! ## A153703.P4187900748352554721

`∑[A069996(1+n)]`
-/

namespace A153703.P4187900748352554721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069996 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P4187900748352554721

namespace A153703

/-- `∑[A069996(1+n)]` -/
def P4187900748352554721.Spec : Prop :=
  ∀ n, P4187900748352554721.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P13204487700290399425

`∑[(n+1)²*A000244(n)]`
-/

namespace A153703.P13204487700290399425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P13204487700290399425

namespace A153703

/-- `∑[(n+1)²*A000244(n)]` -/
def P13204487700290399425.Spec : Prop :=
  ∀ n, P13204487700290399425.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P10348251019153306013

`∑[(n+1)²*A133494(n+1)]`
-/

namespace A153703.P10348251019153306013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A133494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P10348251019153306013

namespace A153703

/-- `∑[(n+1)²*A133494(n+1)]` -/
def P10348251019153306013.Spec : Prop :=
  ∀ n, P10348251019153306013.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P13484472282571982774

`∑[(n+1)²*A140429(n+1)]`
-/

namespace A153703.P13484472282571982774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A140429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P13484472282571982774

namespace A153703

/-- `∑[(n+1)²*A140429(n+1)]` -/
def P13484472282571982774.Spec : Prop :=
  ∀ n, P13484472282571982774.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P9299120064455352560

`∑[(n+1)²*A155734(n+1)]`
-/

namespace A153703.P9299120064455352560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A155734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P9299120064455352560

namespace A153703

/-- `∑[(n+1)²*A155734(n+1)]` -/
def P9299120064455352560.Spec : Prop :=
  ∀ n, P9299120064455352560.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P13858139045678771238

`∑[(n+1)*A212697(n+1)/2]`
-/

namespace A153703.P13858139045678771238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A212697 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P13858139045678771238

namespace A153703

/-- `∑[(n+1)*A212697(n+1)/2]` -/
def P13858139045678771238.Spec : Prop :=
  ∀ n, P13858139045678771238.a n = (A153703 (n + 1) : ℚ)

end A153703

/-! ## A153703.P12981863969874810917

`∑[(n+1)²*A025192(n+1)/2]`
-/

namespace A153703.P12981863969874810917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * A025192 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P12981863969874810917

namespace A153703

/-- `∑[(n+1)²*A025192(n+1)/2]` -/
def P12981863969874810917.Spec : Prop :=
  ∀ n, P12981863969874810917.a n = (A153703 (n + 1) : ℚ)

end A153703

/-! ## A153703.P8443476263816115527

`abs(∑[(A005563(n)+1)*3^n]-1)+1`
-/

namespace A153703.P8443476263816115527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n + 1) * (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A153703.P8443476263816115527

namespace A153703

/-- `abs(∑[(A005563(n)+1)*3^n]-1)+1` -/
def P8443476263816115527.Spec : Prop :=
  ∀ n, P8443476263816115527.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P3141823951473980793

`A000038(n+1)+∑[round((n+1)²/acot(3^n))]`
-/

namespace A153703.P3141823951473980793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) / SequenceMachineLib.acot (3 ^ n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P3141823951473980793

namespace A153703

/-- `A000038(n+1)+∑[round((n+1)²/acot(3^n))]` -/
def P3141823951473980793.Spec : Prop :=
  ∀ n, P3141823951473980793.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P10652523654056241008

`A261064(n+1)+n*A014915(n+1)`
-/

namespace A153703.P10652523654056241008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1) + (n : ℤ) * A014915 (n + 1)

end

end A153703.P10652523654056241008

namespace A153703

/-- `A261064(n+1)+n*A014915(n+1)` -/
def P10652523654056241008.Spec : Prop :=
  ∀ n, P10652523654056241008.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P5837127593930730180

`A003462(n+1)+A000217(n)*A000244(n+1)`
-/

namespace A153703.P5837127593930730180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + A000217 n * A000244 (n + 1)

end

end A153703.P5837127593930730180

namespace A153703

/-- `A003462(n+1)+A000217(n)*A000244(n+1)` -/
def P5837127593930730180.Spec : Prop :=
  ∀ n, P5837127593930730180.a n = A153703 (n + 1)

end A153703

/-! ## A153703.P8609180728021940503

`∑[A127960(n+1)/3]`
-/

namespace A153703.P8609180728021940503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P8609180728021940503

namespace A153703

/-- `∑[A127960(n+1)/3]` -/
def P8609180728021940503.Spec : Prop :=
  ∀ n, P8609180728021940503.a n = (A153703 (n + 1) : ℚ)

end A153703

/-! ## A153703.P3747561887685396618

`∑[A086603(n+1)/(n+1)]`
-/

namespace A153703.P3747561887685396618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086603 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153703.P3747561887685396618

namespace A153703

/-- `∑[A086603(n+1)/(n+1)]` -/
def P3747561887685396618.Spec : Prop :=
  ∀ n, P3747561887685396618.a n = (A153703 (n + 1) : ℚ)

end A153703

/-!
# A153704: Numbers k such that the fractional part of e^k is greater than 1-(1/k).

The programs for A153704, there is no canonical definition to state claims against.
-/

/-! ## A153704.P10666519797268407710

`A091560(∑[gcd(n, 3^n)])`
-/

namespace A153704.P10666519797268407710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153704.P10666519797268407710

/-! ## A153704.P16242593940485172148

`A091560(A047223(n+1))`
-/

namespace A153704.P16242593940485172148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091560 (A047223 (n + 1)).toNat

end

end A153704.P16242593940485172148

/-! ## A153704.P13254180994100766443

`A091560(A161781(n)-n)`
-/

namespace A153704.P13254180994100766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091560 (A161781 n - (n : ℤ)).toNat

end

end A153704.P13254180994100766443

/-! ## A153704.P3209233555835990126

`A091560(∑[A060266(n+1)])`
-/

namespace A153704.P3209233555835990126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091560 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153704.P3209233555835990126

/-!
# A153705: Greatest number m such that the fractional part of e^A153701(n) <= 1/m.

The programs for A153705, there is no canonical definition to state claims against.
-/

/-! ## A153705.P11374260699411886891

`A057213(A153701(n+1))`
-/

namespace A153705.P11374260699411886891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057213 (A153701 (n + 1)).toNat

end

end A153705.P11374260699411886891

/-!
# A153706: Greatest number m such that the fractional part of e^A153702(n) <= 1/m.

The programs for A153706, there is no canonical definition to state claims against.
-/

/-! ## A153706.P5266605072226339456

`A153705(∪[A153665(n+1), A186575(n)])`
-/

namespace A153706.P5266605072226339456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186575 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153705 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A153706.P5266605072226339456

/-! ## A153706.P5774008186219977018

`A153705(∪[A343819(2*n+1), A186575(n)])`
-/

namespace A153706.P5774008186219977018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343819 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186575 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153705 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A153706.P5774008186219977018

/-!
# A153708: Greatest number m such that the fractional part of e^A153704(n) >= 1-(1/m).

The programs for A153708, there is no canonical definition to state claims against.
-/

/-! ## A153708.P8429913430787303412

`A153707(∑[gcd(3, n)]-2)`
-/

namespace A153708.P8429913430787303412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153707 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A153708.P8429913430787303412

/-! ## A153708.P5193389153556268718

`A153707(Δ[ceil(n²/3)]+n)`
-/

namespace A153708.P5193389153556268718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153707 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A153708.P5193389153556268718

/-!
# A153709: Expansion of (1 + 7*x)/(1 - 11*x - 26*x^2).

The programs for A153709, the canonical program `A153709.P1735692605614728240` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153709 has offset 0).

The definition of A153709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+7x)/(1-11x-26x^2))` (program `A153709.P1735692605614728240`, by `A153709.P1735692605614728240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153709.P1735692605614728240

`ogf((1+7x)/(1-11x-26x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153709

/-- `ogf((1+7x)/(1-11x-26x^2))` -/
def P1735692605614728240.Spec : Prop :=
  ∀ n, P1735692605614728240.a n = A153709 n

theorem P1735692605614728240.correct : P1735692605614728240.Spec := by
  intro n
  simp only [A153709]

end A153709

/-! ## A153709.P18269603209277148315

`(4*13^n-(-2)^n)/3`
-/

namespace A153709.P18269603209277148315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 13 ^ n : ℤ) - (-2) ^ n : ℚ) / 3

end

end A153709.P18269603209277148315

namespace A153709

/-- `(4*13^n-(-2)^n)/3` -/
def P18269603209277148315.Spec : Prop :=
  ∀ n, P18269603209277148315.a n = (A153709 n : ℚ)

end A153709

/-! ## A153709.P17326487795833836492

`11*a(n-1)+26*a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A153709.P17326487795833836492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  11 * a (n - 1) + 26 * a (n - 2)

end

end A153709.P17326487795833836492

namespace A153709

/-- `11*a(n-1)+26*a(n-2)` -/
def P17326487795833836492.Spec : Prop :=
  ∀ n, (P17326487795833836492.a n : ℤ) = A153709 n

end A153709

/-!
# A153711: Minimal exponents m such that the fractional part of Pi^m obtains a maximum (when starting with m=1).

The programs for A153711, there is no canonical definition to state claims against.
-/

/-! ## A153711.P8902431382645167429

`A153712(record[A247506(n)])`
-/

namespace A153711.P8902431382645167429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153711.P8902431382645167429

/-! ## A153711.P1079044136424662697

`A153712(A054762(n+1))`
-/

namespace A153711.P1079044136424662697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153712 (A054762 (n + 1)).toNat

end

end A153711.P1079044136424662697

/-! ## A153711.P10388485142693818224

`A153712(record[∑[A054651(n)]])`
-/

namespace A153711.P10388485142693818224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153711.P10388485142693818224

/-! ## A153711.P4289032821727016685

`A153712(record[A126198(n+1)])`
-/

namespace A153711.P4289032821727016685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153711.P4289032821727016685

/-!
# A153712: Numbers k such that the fractional part of Pi^k is greater than 1-(1/k).

The programs for A153712, there is no canonical definition to state claims against.
-/

/-! ## A153712.P11380468565496952197

`A113324(A000110(n))+∑[n*gcd(6, n%2)]`
-/

namespace A153712.P11380468565496952197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (A000110 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153712.P11380468565496952197

/-! ## A153712.P8304435510673988159

`A153711(n+1)-A006925(A288045(n))`
-/

namespace A153712.P8304435510673988159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153711 (n + 1) - A006925 (A288045 n).toNat

end

end A153712.P8304435510673988159

/-!
# A153713: Greatest number m such that the fractional part of Pi^A137994(n) <= 1/m.

The programs for A153713, there is no canonical definition to state claims against.
-/

/-! ## A153713.P4269449097518774324

`record[A138324(n+1)]`
-/

namespace A153713.P4269449097518774324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153713.P4269449097518774324

/-! ## A153713.P16392851757174245794

`A138324(A137994(n+1))`
-/

namespace A153713.P16392851757174245794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (A137994 (n + 1)).toNat

end

end A153713.P16392851757174245794

/-!
# A153714: Greatest number m such that the fractional part of Pi^A153710(n) <= 1/m.

The programs for A153714, there is no canonical definition to state claims against.
-/

/-! ## A153714.P12955484251806410363

`A138324(A153710(n+1))`
-/

namespace A153714.P12955484251806410363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (A153710 (n + 1)).toNat

end

end A153714.P12955484251806410363

/-! ## A153714.P17551204665394759510

`A138324(lt[n, A138324(n+1)]+1)`
-/

namespace A153714.P17551204665394759510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A153714.P17551204665394759510

/-!
# A153715: Greatest number m such that the fractional part of Pi^A153711(m) >= 1-(1/m).

The programs for A153715, there is no canonical definition to state claims against.
-/

/-! ## A153715.P3941482421338795772

`record[A153716(floor((19^(4/95))^n))]`
-/

namespace A153715.P3941482421338795772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153716 ⌊((19 : ℝ) ^ ((4 : ℚ) / 95 : ℝ)) ^ n⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153715.P3941482421338795772

/-! ## A153715.P16937978937227520402

`A153716(record[A247506(n)])`
-/

namespace A153715.P16937978937227520402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153715.P16937978937227520402

/-! ## A153715.P1174783320677980270

`A153716(record[∑[A054651(n)]])`
-/

namespace A153715.P1174783320677980270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153715.P1174783320677980270

/-! ## A153715.P6177943700594249197

`A153716(record[A126198(n+1)])`
-/

namespace A153715.P6177943700594249197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153715.P6177943700594249197

/-!
# A153716: Greatest number m such that the fractional part of Pi^A153712(n) >= 1-(1/m).

The programs for A153716, there is no canonical definition to state claims against.
-/

/-! ## A153716.P4986989437962879085

`A153715(n+1)%A344161(A008000(n))`
-/

namespace A153716.P4986989437962879085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153715 (n + 1)) (A344161 (A008000 n).toNat)

end

end A153716.P4986989437962879085

/-!
# A153717: Minimal exponents m such that the fractional part of (Pi-2)^m obtains a minimum (when starting with m=1).

The programs for A153717, there is no canonical definition to state claims against.
-/

/-! ## A153717.P18074432331479115172

`∑[A267802(A092488(n+1)*A305989(n))]`
-/

namespace A153717.P18074432331479115172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267802 (A092488 (n + 1) * A305989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153717.P18074432331479115172

/-!
# A153720: Numbers k such that the fractional part of (Pi-2)^k is greater than 1-(1/k).

The programs for A153720, there is no canonical definition to state claims against.
-/

/-! ## A153720.P4189545496027485002

`A026741(A108995(n)+∑[A057335(n)])`
-/

namespace A153720.P4189545496027485002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A108995 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153720.P4189545496027485002

/-!
# A153726: Initial digit of Catalan number A000108(n).

The programs for A153726, there is no canonical definition to state claims against.
-/

/-! ## A153726.P281341076474672126

`A004096(n)%10`
-/

namespace A153726.P281341076474672126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004096 n) 10

end

end A153726.P281341076474672126

/-! ## A153726.P5273806130730235134

`A339256(A397734(n))`
-/

namespace A153726.P5273806130730235134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A397734 n).toNat

end

end A153726.P5273806130730235134

/-! ## A153726.P10670770331147948561

`A295868(A158673(n+1))`
-/

namespace A153726.P10670770331147948561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295868 (A158673 (n + 1)).toNat

end

end A153726.P10670770331147948561

/-! ## A153726.P7345332564859858458

`A339256(round(sqrt(A134664(n+1))))`
-/

namespace A153726.P7345332564859858458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (SequenceMachineLib.roundAway (Real.sqrt (A134664 (n + 1) : ℝ))).toNat

end

end A153726.P7345332564859858458

/-! ## A153726.P9734211866503594791

`A227349(A374689(2*n+3)-1)`
-/

namespace A153726.P9734211866503594791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A374689 (2 * n + 3) - 1).toNat

end

end A153726.P9734211866503594791

/-!
# A153727: Period 3: repeat [1, 4, 2] ; Trajectory of 3x+1 sequence starting at 1.

The programs for A153727, the canonical program `A153727.P14723327441823098841` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153727 has offset 0).

The definition of A153727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153727.P14723327441823098841

`a(n-3)` with `a(0)=1, a(1)=4, a(2)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153727

/-- `a(n-3)` -/
def P14723327441823098841.Spec : Prop :=
  ∀ n, (P14723327441823098841.a n : ℤ) = A153727 n

theorem P14723327441823098841.correct : P14723327441823098841.Spec := by
  intro n
  simp only [A153727]

end A153727

/-!
# A153728: Expansion of q^(-1/3) * (eta(q)^8 + 8 * eta(q^4)^8) in powers of q^2.

The programs for A153728, there is no canonical definition to state claims against.
-/

/-! ## A153728.P451573415312682587

`A000731(2*n)`
-/

namespace A153728.P451573415312682587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 (2 * n)

end

end A153728.P451573415312682587

/-! ## A153728.P5834244468715419987

`A161969(2*n)`
-/

namespace A153728.P5834244468715419987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 (2 * n)

end

end A153728.P5834244468715419987

/-! ## A153728.P12760798333582123711

`A153729(2*n)`
-/

namespace A153728.P12760798333582123711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153729 (2 * n)

end

end A153728.P12760798333582123711

/-! ## A153728.P3655633524110393274

`xor(1, xor(1, A000731(n+n)))`
-/

namespace A153728.P3655633524110393274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000731 (n + n)))

end

end A153728.P3655633524110393274

/-! ## A153728.P11306071587516320724

`A000731(A322430(n+1))+A000731(n+n)`
-/

namespace A153728.P11306071587516320724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 (A322430 (n + 1)).toNat + A000731 (n + n)

end

end A153728.P11306071587516320724

/-! ## A153728.P11858939794785775802

`A261278(6*n+1)`
-/

namespace A153728.P11858939794785775802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261278 (6 * n + 1)

end

end A153728.P11858939794785775802

/-! ## A153728.P4928033349314008619

`A286354(A187989(n+1))`
-/

namespace A153728.P4928033349314008619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A187989 (n + 1)).toNat

end

end A153728.P4928033349314008619

/-! ## A153728.P4535137997527299899

`A286354(Δ[Δ[n*A111396(n)]])`
-/

namespace A153728.P4535137997527299899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A111396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A153728.P4535137997527299899

/-!
# A153729: Expansion of q^(-1/3) * (eta(q)^8 + 32 * eta(q^4)^8) in powers of q.

The programs for A153729, there is no canonical definition to state claims against.
-/

/-! ## A153729.P2359001339331718031

`Δ[xor(2, n)]*A000731(n)`
-/

namespace A153729.P2359001339331718031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000731 n

end

end A153729.P2359001339331718031

/-! ## A153729.P14927955996023877897

`A010684(n)*A161969(n)`
-/

namespace A153729.P14927955996023877897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A161969 n

end

end A153729.P14927955996023877897

/-! ## A153729.P6931897244804237733

`A000731(n)*A176563(n)`
-/

namespace A153729.P6931897244804237733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n * A176563 n

end

end A153729.P6931897244804237733

/-! ## A153729.P10551261870988997014

`A053381(n)*A161969(n)`
-/

namespace A153729.P10551261870988997014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n * A161969 n

end

end A153729.P10551261870988997014

/-! ## A153729.P12343269930156334345

`A056753(n)*A161969(n)`
-/

namespace A153729.P12343269930156334345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n * A161969 n

end

end A153729.P12343269930156334345

/-! ## A153729.P2056719910163369317

`Δ[A004443(n)]*A000731(n)`
-/

namespace A153729.P2056719910163369317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000731 n

end

end A153729.P2056719910163369317

/-! ## A153729.P5170626747980069119

`Δ[A004463(n)]*A000731(n)`
-/

namespace A153729.P5170626747980069119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000731 n

end

end A153729.P5170626747980069119

/-! ## A153729.P6678587705949585079

`Δ[A000695(n)]*A161969(n)`
-/

namespace A153729.P6678587705949585079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161969 n

end

end A153729.P6678587705949585079

/-! ## A153729.P11176022155840104056

`A037227(n+1)*A161969(n)`
-/

namespace A153729.P11176022155840104056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1) * A161969 n

end

end A153729.P11176022155840104056

/-! ## A153729.P385034035845211350

`A038712(n+1)*A161969(n)`
-/

namespace A153729.P385034035845211350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A161969 n

end

end A153729.P385034035845211350

/-! ## A153729.P12878920931640214007

`A090740(n+1)*A161969(n)`
-/

namespace A153729.P12878920931640214007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) * A161969 n

end

end A153729.P12878920931640214007

/-! ## A153729.P17218363535771987396

`A094603(n+1)*A161969(n)`
-/

namespace A153729.P17218363535771987396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (n + 1) * A161969 n

end

end A153729.P17218363535771987396

/-! ## A153729.P5956631876505685380

`A112132(n+1)*A161969(n)`
-/

namespace A153729.P5956631876505685380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112132 (n + 1) * A161969 n

end

end A153729.P5956631876505685380

/-! ## A153729.P12035564602551290795

`A115364(n+1)*A161969(n)`
-/

namespace A153729.P12035564602551290795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (n + 1) * A161969 n

end

end A153729.P12035564602551290795

/-! ## A153729.P11117710804724800289

`A161969(n)*A233267(n+1)`
-/

namespace A153729.P11117710804724800289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n * A233267 (n + 1)

end

end A153729.P11117710804724800289

/-! ## A153729.P18069953067568411174

`A161969(n)*A233269(n+1)`
-/

namespace A153729.P18069953067568411174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n * A233269 (n + 1)

end

end A153729.P18069953067568411174

/-! ## A153729.P18107360328727637745

`A161969(n)*A276391(n+1)`
-/

namespace A153729.P18107360328727637745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n * A276391 (n + 1)

end

end A153729.P18107360328727637745

/-! ## A153729.P11647701528069063466

`A161969(n)*A385047(n+1)`
-/

namespace A153729.P11647701528069063466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n * A385047 (n + 1)

end

end A153729.P11647701528069063466

/-! ## A153729.P2677843143769243345

`2*A161969(n)-A000731(n)`
-/

namespace A153729.P2677843143769243345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161969 n - A000731 n

end

end A153729.P2677843143769243345

/-! ## A153729.P11946108211961624619

`(2-A033999(n))*A161969(n)`
-/

namespace A153729.P11946108211961624619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A161969 n

end

end A153729.P11946108211961624619

/-!
# A153730: a(n) = Sum_{m=1..n} A153452(m).

The programs for A153730, there is no canonical definition to state claims against.
-/

/-! ## A153730.P18269163538256712153

`∑[A153452(1+n)]`
-/

namespace A153730.P18269163538256712153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153730.P18269163538256712153

/-! ## A153730.P12242949193587656607

`A153452(n%n²+1)+a(n-1)` with `a(0)=1`
-/

namespace A153730.P12242949193587656607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153452 (n % n ^ 2 + 1) + a (n - 1)

end

end A153730.P12242949193587656607

/-! ## A153730.P6924572549301696526

`a(n-1)+A153452(n+1)+A010051(2*(n+1))` with `a(0)=1`
-/

namespace A153730.P6924572549301696526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A153452 (n + 1) + A010051 (2 * (n + 1)))

end

end A153730.P6924572549301696526

/-! ## A153730.P18408214760470450396

`a(n-1)+A153452(n-log2(1/2))+A000038(n+1)` with `a(0)=1`
-/

namespace A153730.P18408214760470450396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A153452 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + A000038 (n + 1))

end

end A153730.P18408214760470450396

/-! ## A153730.P751869789775763390

`∑[A028310(A153452(n-log2(1/2)))]`
-/

namespace A153730.P751869789775763390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153452 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153730.P751869789775763390

/-! ## A153730.P6773954567319202271

`A153452(n+1)+a(n-1)%A291779(n+1)` with `a(0)=1`
-/

namespace A153730.P6773954567319202271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153452 (n + 1) + Int.tmod (a (n - 1)) (A291779 (n + 1))

end

end A153730.P6773954567319202271

/-! ## A153730.P6911617273385549523

`∑[A290252(A156552(n+1))]`
-/

namespace A153730.P6911617273385549523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A156552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153730.P6911617273385549523

/-! ## A153730.P16414030053149458329

`∑[A290252(A005941(n+1)-1)]`
-/

namespace A153730.P16414030053149458329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A005941 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153730.P16414030053149458329

/-!
# A153732: Binomial transform of A109747.

The programs for A153732, there is no canonical definition to state claims against.
-/

/-! ## A153732.P14883845816282133731

`A109747(n-1)+2*a(n-1)` with `a(0)=1`
-/

namespace A153732.P14883845816282133731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109747 (n - 1) + 2 * a (n - 1)

end

end A153732.P14883845816282133731

/-! ## A153732.P746025570136732330

`∑{#}[n, C(n, #)*A109747(#)]`
-/

namespace A153732.P746025570136732330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A109747 k

end

end A153732.P746025570136732330

/-! ## A153732.P5784813893922532098

`row(A326149(row(A004191(n))))`
-/

namespace A153732.P5784813893922532098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A326149 (SequenceMachineLib.triRow (A004191 n).toNat)).toNat

end

end A153732.P5784813893922532098

/-! ## A153732.P11868285314598303544

`A076972(2*(n+1))-A001221(A076975(2*(n+1)))`
-/

namespace A153732.P11868285314598303544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076972 (2 * (n + 1)) - A001221 (A076975 (2 * (n + 1))).toNat

end

end A153732.P11868285314598303544

/-!
# A153733: Remove all trailing 1's in the binary representation of n.

The programs for A153733, the canonical program `A153733.P10755713114946739736` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153733 has offset 0).

The definition of A153733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153733.P3038898480160503165

`A000265(n+1)-1`
-/

namespace A153733.P3038898480160503165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - 1

end

end A153733.P3038898480160503165

namespace A153733

/-- `A000265(n+1)-1` -/
def P3038898480160503165.Spec : Prop :=
  ∀ n, P3038898480160503165.a n = A153733 n

theorem P3038898480160503165.correct : P3038898480160503165.Spec := by
  intro n
  simp only [A153733, Nat.add_sub_cancel, A153733.P3038898480160503165.a, A153733.P10755713114946739736.a, A000265, A000265.P16482698636471710744.a, A331739, A331739.P457850794578440847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153733

/-! ## A153733.P10755713114946739736

`n-A331739(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153733

/-- `n-A331739(n+1)` -/
def P10755713114946739736.Spec : Prop :=
  ∀ n, P10755713114946739736.a n = A153733 n

theorem P10755713114946739736.correct : P10755713114946739736.Spec := by
  intro n
  simp only [A153733]

end A153733

/-! ## A153733.P4320333860651002096

`floor(n/2^val(n+1, 2))`
-/

namespace A153733.P4320333860651002096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

end

end A153733.P4320333860651002096

namespace A153733

/-- `floor(n/2^val(n+1, 2))` -/
def P4320333860651002096.Spec : Prop :=
  ∀ n, P4320333860651002096.a n = A153733 n

end A153733

/-! ## A153733.P3701039632461417567

`floor(n/(or(n, n+1)-n))`
-/

namespace A153733.P3701039632461417567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A153733.P3701039632461417567

namespace A153733

/-- `floor(n/(or(n, n+1)-n))` -/
def P3701039632461417567.Spec : Prop :=
  ∀ n, P3701039632461417567.a n = A153733 n

end A153733

/-! ## A153733.P7333622821688546266

`floor(n/xor(n, or(n, n+1)))`
-/

namespace A153733.P7333622821688546266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)⌋

end

end A153733.P7333622821688546266

namespace A153733

/-- `floor(n/xor(n, or(n, n+1)))` -/
def P7333622821688546266.Spec : Prop :=
  ∀ n, P7333622821688546266.a n = A153733 n

end A153733

/-! ## A153733.P10173368793255829431

`floor(n/and(n+1, -(n+1)))`
-/

namespace A153733.P10173368793255829431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A153733.P10173368793255829431

namespace A153733

/-- `floor(n/and(n+1, -(n+1)))` -/
def P10173368793255829431.Spec : Prop :=
  ∀ n, P10173368793255829431.a n = A153733 n

end A153733

/-! ## A153733.P1895661478221512933

`floor(n/ceil(xor(n, n+1)/2))`
-/

namespace A153733.P1895661478221512933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ)⌋

end

end A153733.P1895661478221512933

namespace A153733

/-- `floor(n/ceil(xor(n, n+1)/2))` -/
def P1895661478221512933.Spec : Prop :=
  ∀ n, P1895661478221512933.a n = A153733 n

end A153733

/-! ## A153733.P16882260628009335882

`2*floor(n/(xor(n, n+1)+1))`
-/

namespace A153733.P16882260628009335882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A153733.P16882260628009335882

namespace A153733

/-- `2*floor(n/(xor(n, n+1)+1))` -/
def P16882260628009335882.Spec : Prop :=
  ∀ n, P16882260628009335882.a n = A153733 n

end A153733

/-! ## A153733.P16101883776978347415

`floor(n/(n+1-and(n, n+1)))`
-/

namespace A153733.P16101883776978347415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ)⌋

end

end A153733.P16101883776978347415

namespace A153733

/-- `floor(n/(n+1-and(n, n+1)))` -/
def P16101883776978347415.Spec : Prop :=
  ∀ n, P16101883776978347415.a n = A153733 n

end A153733

/-! ## A153733.P3405697690537505696

`floor(-(n/or(n+1, -(n+1))))`
-/

namespace A153733.P3405697690537505696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((n : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))⌋

end

end A153733.P3405697690537505696

namespace A153733

/-- `floor(-(n/or(n+1, -(n+1))))` -/
def P3405697690537505696.Spec : Prop :=
  ∀ n, P3405697690537505696.a n = A153733 n

end A153733

/-! ## A153733.P5121834506037268894

`-ceil(n/or(n+1, -(n+1)))`
-/

namespace A153733.P5121834506037268894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌉

end

end A153733.P5121834506037268894

namespace A153733

/-- `-ceil(n/or(n+1, -(n+1)))` -/
def P5121834506037268894.Spec : Prop :=
  ∀ n, P5121834506037268894.a n = A153733 n

end A153733

/-! ## A153733.P14115974298265821166

`-ceil(2*n/xor(n, -(n+2)))`
-/

namespace A153733.P14115974298265821166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(2 * n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉

end

end A153733.P14115974298265821166

namespace A153733

/-- `-ceil(2*n/xor(n, -(n+2)))` -/
def P14115974298265821166.Spec : Prop :=
  ∀ n, P14115974298265821166.a n = A153733 n

end A153733

/-! ## A153733.P6892212229172560990

`(n+1)/2^val(n+1, 2)-1`
-/

namespace A153733.P6892212229172560990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1

end

end A153733.P6892212229172560990

namespace A153733

/-- `(n+1)/2^val(n+1, 2)-1` -/
def P6892212229172560990.Spec : Prop :=
  ∀ n, P6892212229172560990.a n = (A153733 n : ℚ)

end A153733

/-! ## A153733.P4485130652975065916

`lcm(n+1, and(n, n+1))/(n+1)`
-/

namespace A153733.P4485130652975065916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.land n (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A153733.P4485130652975065916

namespace A153733

/-- `lcm(n+1, and(n, n+1))/(n+1)` -/
def P4485130652975065916.Spec : Prop :=
  ∀ n, P4485130652975065916.a n = (A153733 n : ℚ)

end A153733

/-! ## A153733.P6887651903198197604

`(n+1)/and(n+1, -(n+1))-1`
-/

namespace A153733.P6887651903198197604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) - 1

end

end A153733.P6887651903198197604

namespace A153733

/-- `(n+1)/and(n+1, -(n+1))-1` -/
def P6887651903198197604.Spec : Prop :=
  ∀ n, P6887651903198197604.a n = (A153733 n : ℚ)

end A153733

/-! ## A153733.P6151022415588501921

`xor(1, (n+1)/and(n+1, -(n+1)))`
-/

namespace A153733.P6151022415588501921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A153733.P6151022415588501921

namespace A153733

/-- `xor(1, (n+1)/and(n+1, -(n+1)))` -/
def P6151022415588501921.Spec : Prop :=
  ∀ n, P6151022415588501921.a n = A153733 n

end A153733

/-! ## A153733.P13105133221682503689

`and(n, n+1)/and(n+1, -(n+1))`
-/

namespace A153733.P13105133221682503689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A153733.P13105133221682503689

namespace A153733

/-- `and(n, n+1)/and(n+1, -(n+1))` -/
def P13105133221682503689.Spec : Prop :=
  ∀ n, P13105133221682503689.a n = (A153733 n : ℚ)

end A153733

/-! ## A153733.P8111392905106197256

`(n+1)/(n+1-and(n, n+1))-1`
-/

namespace A153733.P8111392905106197256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) - 1

end

end A153733.P8111392905106197256

namespace A153733

/-- `(n+1)/(n+1-and(n, n+1))-1` -/
def P8111392905106197256.Spec : Prop :=
  ∀ n, P8111392905106197256.a n = (A153733 n : ℚ)

end A153733

/-! ## A153733.P10279087757574024127

`2*A025480(n)`
-/

namespace A153733.P10279087757574024127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n

end

end A153733.P10279087757574024127

namespace A153733

/-- `2*A025480(n)` -/
def P10279087757574024127.Spec : Prop :=
  ∀ n, P10279087757574024127.a n = A153733 n

end A153733

/-! ## A153733.P13286552513867936014

`2*A110962(2*n)`
-/

namespace A153733.P13286552513867936014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110962 (2 * n)

end

end A153733.P13286552513867936014

namespace A153733

/-- `2*A110962(2*n)` -/
def P13286552513867936014.Spec : Prop :=
  ∀ n, P13286552513867936014.a n = A153733 n

end A153733

/-!
# A153734: Triangle T(n,k): T(n,k) gives the A153452(m_k) such that A056239(m_k) = n, [1<=k<=A000041(n)], sorted by m_k, read by rows. Sequence A060240 is this sequence's permutation.

The programs for A153734, there is no canonical definition to state claims against.
-/

/-! ## A153734.P3513603246016171794

`A153452(A215366(n))`
-/

namespace A153734.P3513603246016171794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A215366 n).toNat

end

end A153734.P3513603246016171794

/-! ## A153734.P3647244801220534387

`A153452(A333483(n)%A331456(n))`
-/

namespace A153734.P3647244801220534387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (Int.tmod (A333483 n) (A331456 n)).toNat

end

end A153734.P3647244801220534387

/-! ## A153734.P14110432894907501573

`A153452(A333483(n))%A225704(n+1)`
-/

namespace A153734.P14110432894907501573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153452 (A333483 n).toNat) (A225704 (n + 1))

end

end A153734.P14110432894907501573

/-!
# A153738: Adjusted recursive triangular sequence with row sums 2*(n+5)!/6!: A(n,k)= A(n - 1, k - 1) + A(n - 1, k) + (n + 4)*(n + 3)*A(n - 2, k - 1).

The programs for A153738, the canonical program `A153738.P13089720611367962624` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153738 has offset 1).

The definition of A153738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+(row(n)+5)*(row(n)+4)*T(n-2,k-1)` (program `A153738.P13089720611367962624`, by `A153738.P13089720611367962624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153738.P13089720611367962624

`T(n-1,k-1)+T(n-1,k)+(row(n)+5)*(row(n)+4)*T(n-2,k-1)` with `a(0)=2, a(1)=7, a(2)=7, a(3)=1, a(4)=110, a(5)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153738

/-- `T(n-1,k-1)+T(n-1,k)+(row(n)+5)*(row(n)+4)*T(n-2,k-1)` -/
def P13089720611367962624.Spec : Prop :=
  ∀ n, (P13089720611367962624.a n : ℤ) = A153738 (n + 1)

theorem P13089720611367962624.correct : P13089720611367962624.Spec := by
  intro n
  simp only [A153738, Nat.add_sub_cancel]

end A153738

/-!
# A153740: Smallest non-twin prime > n-th and (n+1)-th twin primes.

The programs for A153740, the canonical program `A153740.P8834701784236490181` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153740 has offset 1).

The definition of A153740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153740.P9646976608651315702

`A000040(eq[3, A237260(n+1)])`
-/

namespace A153740.P9646976608651315702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153740.P9646976608651315702

namespace A153740

/-- `A000040(eq[3, A237260(n+1)])` -/
def P9646976608651315702.Spec : Prop :=
  ∀ n, P9646976608651315702.a n = A153740 (n + 1)

end A153740

/-! ## A153740.P4878547488459876622

`∩[A007510(n+1), A088176(n+1)]`
-/

namespace A153740.P4878547488459876622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P4878547488459876622

namespace A153740

/-- `∩[A007510(n+1), A088176(n+1)]` -/
def P4878547488459876622.Spec : Prop :=
  ∀ n, (P4878547488459876622.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P14592534147248925122

`∩[A088176(n+1), A134797(n+1)]`
-/

namespace A153740.P14592534147248925122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P14592534147248925122

namespace A153740

/-- `∩[A088176(n+1), A134797(n+1)]` -/
def P14592534147248925122.Spec : Prop :=
  ∀ n, (P14592534147248925122.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P8828660921449233110

`∩[A088176(n+1), A167706(n+1)]`
-/

namespace A153740.P8828660921449233110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P8828660921449233110

namespace A153740

/-- `∩[A088176(n+1), A167706(n+1)]` -/
def P8828660921449233110.Spec : Prop :=
  ∀ n, (P8828660921449233110.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P8834701784236490181

`p?[A088176(n+2)%A001359(n+3)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A153740

/-- `p?[A088176(n+2)%A001359(n+3)]` -/
def P8834701784236490181.Spec : Prop :=
  ∀ n, P8834701784236490181.a n = A153740 (n + 1)

theorem P8834701784236490181.correct : P8834701784236490181.Spec := by
  intro n
  simp only [A153740, Nat.add_sub_cancel]

end A153740

/-! ## A153740.P17564010293116946517

`record[A088176(n+4)%A001359(n+5)]`
-/

namespace A153740.P17564010293116946517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088176 (n + 4)) (A001359 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153740.P17564010293116946517

namespace A153740

/-- `record[A088176(n+4)%A001359(n+5)]` -/
def P17564010293116946517.Spec : Prop :=
  ∀ n, P17564010293116946517.a n = A153740 (n + 1)

end A153740

/-! ## A153740.P5936013979331900609

`p?[A151800(A171821(n+1))%A001097(n+1)]`
-/

namespace A153740.P5936013979331900609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A171821 (n + 1)).toNat) (A001097 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153740.P5936013979331900609

namespace A153740

/-- `p?[A151800(A171821(n+1))%A001097(n+1)]` -/
def P5936013979331900609.Spec : Prop :=
  ∀ n, P5936013979331900609.a n = A153740 (n + 1)

end A153740

/-! ## A153740.P284366523500113661

`∩[A007510(n+1), A008578(A334142(n+1)+2)]`
-/

namespace A153740.P284366523500113661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A334142 (n + 1) + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P284366523500113661

namespace A153740

/-- `∩[A007510(n+1), A008578(A334142(n+1)+2)]` -/
def P284366523500113661.Spec : Prop :=
  ∀ n, (P284366523500113661.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P14454047277309139197

`p?[A010051(A167706(n+1)+1)*A167706(n+2)]`
-/

namespace A153740.P14454047277309139197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A167706 (n + 1) + 1).toNat * A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153740.P14454047277309139197

namespace A153740

/-- `p?[A010051(A167706(n+1)+1)*A167706(n+2)]` -/
def P14454047277309139197.Spec : Prop :=
  ∀ n, P14454047277309139197.a n = A153740 (n + 1)

end A153740

/-! ## A153740.P13124045421915727212

`filter[A088176(n+1), A283265(#)]`
-/

namespace A153740.P13124045421915727212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A153740.P13124045421915727212

namespace A153740

/-- `filter[A088176(n+1), A283265(#)]` -/
def P13124045421915727212.Spec : Prop :=
  ∀ n, P13124045421915727212.a n = A153740 (n + 1)

end A153740

/-! ## A153740.P705332118264083121

`∩[A062729(n+1), A088176(n+1)]`
-/

namespace A153740.P705332118264083121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P705332118264083121

namespace A153740

/-- `∩[A062729(n+1), A088176(n+1)]` -/
def P705332118264083121.Spec : Prop :=
  ∀ n, (P705332118264083121.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P15999548534528198284

`∩[A088176(n+1), A110673(n+1)]`
-/

namespace A153740.P15999548534528198284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P15999548534528198284

namespace A153740

/-- `∩[A088176(n+1), A110673(n+1)]` -/
def P15999548534528198284.Spec : Prop :=
  ∀ n, (P15999548534528198284.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P9882348478211392800

`∩[A088176(n+1), A396571(n+1)]`
-/

namespace A153740.P9882348478211392800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P9882348478211392800

namespace A153740

/-- `∩[A088176(n+1), A396571(n+1)]` -/
def P9882348478211392800.Spec : Prop :=
  ∀ n, (P9882348478211392800.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P5306031686080672149

`∩[A088176(n+1), A255763(n+1)]`
-/

namespace A153740.P5306031686080672149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P5306031686080672149

namespace A153740

/-- `∩[A088176(n+1), A255763(n+1)]` -/
def P5306031686080672149.Spec : Prop :=
  ∀ n, (P5306031686080672149.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P13315041847649709096

`∩[A064805(n+1), A088176(n+1)]`
-/

namespace A153740.P13315041847649709096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P13315041847649709096

namespace A153740

/-- `∩[A064805(n+1), A088176(n+1)]` -/
def P13315041847649709096.Spec : Prop :=
  ∀ n, (P13315041847649709096.a n : ℤ) = A153740 (n + 1)

end A153740

/-! ## A153740.P16080998469747499185

`∩[A061837(n+1), A088176(n+1)]`
-/

namespace A153740.P16080998469747499185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153740.P16080998469747499185

namespace A153740

/-- `∩[A061837(n+1), A088176(n+1)]` -/
def P16080998469747499185.Spec : Prop :=
  ∀ n, (P16080998469747499185.a n : ℤ) = A153740 (n + 1)

end A153740

/-!
# A153741: Number of elements in wreath product C_2 wr S_n that alternate up/not-up with respect to a weak product ordering.

The programs for A153741, there is no canonical definition to state claims against.
-/

/-! ## A153741.P6357027334328127867

`record[A330882(ceil(2^(n-1)))+n%2]`
-/

namespace A153741.P6357027334328127867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330882 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153741.P6357027334328127867

/-!
# A153744: Number of anti-hierarchical decompositions of an n-pyramidal hierarchy of n*(n+1)/2 = A000217(n) labeled elements.

The programs for A153744, there is no canonical definition to state claims against.
-/

/-! ## A153744.P14955653434745907675

`A057354(∑[3*n^n])`
-/

namespace A153744.P14955653434745907675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153744.P14955653434745907675

/-!
# A153745: Numbers k such that the number of digits d in k^2 is not prime and for each factor f of d the sum of the d/f digit groupings in k^2 of size f is a square.

The programs for A153745, there is no canonical definition to state claims against.
-/

/-! ## A153745.P6449140601070317492

`sqrt(A258660(n+1))`
-/

namespace A153745.P6449140601070317492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258660 (n + 1) : ℝ)

end

end A153745.P6449140601070317492

/-! ## A153745.P17373435815255405835

`root(A258660(n+1), A020639(2*(n+1)))`
-/

namespace A153745.P17373435815255405835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A153745.P17373435815255405835

/-! ## A153745.P5164064335823851120

`A258660(n+1)^(char[A056699(n+1)]/2)`
-/

namespace A153745.P5164064335823851120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 1) : ℝ) ^ (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

end

end A153745.P5164064335823851120

/-! ## A153745.P628773735443108538

`root(A258660(n+1), A001316(A001316(n)))`
-/

namespace A153745.P628773735443108538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A153745.P628773735443108538

/-! ## A153745.P4402100405923443505

`root(A258660(n+1), 2%A153747(n+1))`
-/

namespace A153745.P4402100405923443505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A153747 (n + 1)) : ℝ))

end

end A153745.P4402100405923443505

/-! ## A153745.P13290654735986821725

`A258660(n+1)^(A001222(A124114(n+1))/2)`
-/

namespace A153745.P13290654735986821725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 1) : ℝ) ^ ((A001222 (A124114 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A153745.P13290654735986821725

/-!
# A153746: Numbers k such that there are 8 digits in k^2 and for each factor f of 8 (1,2,4) the sum of digit groupings of size f is a square.

The programs for A153746, there is no canonical definition to state claims against.
-/

/-! ## A153746.P14186416692790517633

`A153745(11+n)`
-/

namespace A153746.P14186416692790517633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (11 + n)

end

end A153746.P14186416692790517633

/-! ## A153746.P3953001040798264395

`sqrt(A258660(n+11))`
-/

namespace A153746.P3953001040798264395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258660 (n + 11) : ℝ)

end

end A153746.P3953001040798264395

/-!
# A153747: Numbers k such that there are 9 digits in k^2 and for each factor f of 9 (1,3) the sum of digit groupings of size f is a square.

The programs for A153747, there is no canonical definition to state claims against.
-/

/-! ## A153747.P18392437024905365156

`A153745(n+34)`
-/

namespace A153747.P18392437024905365156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (n + 34)

end

end A153747.P18392437024905365156

/-! ## A153747.P6873122851408237299

`sqrt(A258660(n+34))`
-/

namespace A153747.P6873122851408237299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258660 (n + 34) : ℝ)

end

end A153747.P6873122851408237299

/-! ## A153747.P16442539885163807159

`A258660(n+34)^(A007318(C(2, n))/2)`
-/

namespace A153747.P16442539885163807159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 34) : ℝ) ^ ((A007318 (Nat.choose 2 n) : ℚ) / 2 : ℝ)

end

end A153747.P16442539885163807159

/-! ## A153747.P18050892221437221586

`A258660(n+34)^2^A133574(A001316(n))`
-/

namespace A153747.P18050892221437221586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 34) : ℝ) ^ ((2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) : ℝ)

end

end A153747.P18050892221437221586

/-! ## A153747.P6434320651156835856

`A258660(n+34)^(Δ[A007504(n)]/A001747(n+2))`
-/

namespace A153747.P6434320651156835856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258660 (n + 34) : ℝ) ^ ((f1 (n + 1) - f1 n : ℚ) / (A001747 (n + 2) : ℚ) : ℝ)

end

end A153747.P6434320651156835856

/-!
# A153750: Numbers k such that there are 14 digits in k^2 and for each factor f of 14 (1,2,7) the sum of digit groupings of size f is a square.

The programs for A153750, there is no canonical definition to state claims against.
-/

/-! ## A153750.P13672062888439444741

`A153745(559+n)`
-/

namespace A153750.P13672062888439444741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (559 + n)

end

end A153750.P13672062888439444741

/-!
# A153757: a(n) = Sum_{k=1..n} A003266(k).

The programs for A153757, there is no canonical definition to state claims against.
-/

/-! ## A153757.P3387367798567888797

`∑[A003266(1+n)]`
-/

namespace A153757.P3387367798567888797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153757.P3387367798567888797

/-!
# A153758: a(n) = Sum_{k=1..n} A153757(k).

The programs for A153758, there is no canonical definition to state claims against.
-/

/-! ## A153758.P2638923444275163538

`∑[∑[∏[a(n-2)+a(n-1)]]]` with `a(0)=1, a(1)=1`
-/

namespace A153758.P2638923444275163538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) + f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153758.P2638923444275163538

/-! ## A153758.P7473360988576024722

`∑[A153757(n+1)]`
-/

namespace A153758.P7473360988576024722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153758.P7473360988576024722

/-! ## A153758.P5994116008518509412

`∑[∑[A003266(n+1)]]`
-/

namespace A153758.P5994116008518509412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153758.P5994116008518509412

/-!
# A153759: A row sum triangular sequence: A(n,k)= A(n - 1, k - 1) + A(n - 1, k) + (n + 1)*(n + 2)*A(n - 2, k - 1).

The programs for A153759, the canonical program `A153759.P7036364761259769965` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153759 has offset 1).

The definition of A153759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+(row(n)+2)*(row(n)+3)*T(n-2,k-1)` (program `A153759.P7036364761259769965`, by `A153759.P7036364761259769965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153759.P7036364761259769965

`T(n-1,k-1)+T(n-1,k)+(row(n)+2)*(row(n)+3)*T(n-2,k-1)` with `a(0)=2, a(1)=5, a(2)=5, a(3)=1, a(4)=58, a(5)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153759

/-- `T(n-1,k-1)+T(n-1,k)+(row(n)+2)*(row(n)+3)*T(n-2,k-1)` -/
def P7036364761259769965.Spec : Prop :=
  ∀ n, (P7036364761259769965.a n : ℤ) = A153759 (n + 1)

theorem P7036364761259769965.correct : P7036364761259769965.Spec := by
  intro n
  simp only [A153759, Nat.add_sub_cancel]

end A153759

/-!
# A153760: Number of degree-n permutations of order exactly 7.

The programs for A153760, the canonical program `A153760.P2420258762223873934` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153760 has offset 1).

The definition of A153760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153760.P2420258762223873934

`a(n-1)+(1+a(n-7))*n!/(n-6)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=720`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153760

/-- `a(n-1)+(1+a(n-7))*n!/(n-6)!` -/
def P2420258762223873934.Spec : Prop :=
  ∀ n, P2420258762223873934.a n = (A153760 (n + 1) : ℚ)

end A153760

/-! ## A153760.P16727733252351301630

`∑[abs(Δ[A053497(n)])]`
-/

namespace A153760.P16727733252351301630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153760.P16727733252351301630

namespace A153760

/-- `∑[abs(Δ[A053497(n)])]` -/
def P16727733252351301630.Spec : Prop :=
  ∀ n, P16727733252351301630.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P4578104782345904948

`A053497(n+1)-1`
-/

namespace A153760.P4578104782345904948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 (n + 1) - 1

end

end A153760.P4578104782345904948

namespace A153760

/-- `A053497(n+1)-1` -/
def P4578104782345904948.Spec : Prop :=
  ∀ n, P4578104782345904948.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P4142640236547566058

`xor(1, A053497(C(n+1, n)))`
-/

namespace A153760.P4142640236547566058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053497 (Nat.choose (n + 1) n))

end

end A153760.P4142640236547566058

namespace A153760

/-- `xor(1, A053497(C(n+1, n)))` -/
def P4142640236547566058.Spec : Prop :=
  ∀ n, P4142640236547566058.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P15202638043773140242

`xor(1, A053497(A004526(2*(n+1))))`
-/

namespace A153760.P15202638043773140242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053497 (A004526 (2 * (n + 1))).toNat)

end

end A153760.P15202638043773140242

namespace A153760

/-- `xor(1, A053497(A004526(2*(n+1))))` -/
def P15202638043773140242.Spec : Prop :=
  ∀ n, P15202638043773140242.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P13090962166093292179

`A008307(A167499(n+5)+2)-1`
-/

namespace A153760.P13090962166093292179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 5) + 2).toNat - 1

end

end A153760.P13090962166093292179

namespace A153760

/-- `A008307(A167499(n+5)+2)-1` -/
def P13090962166093292179.Spec : Prop :=
  ∀ n, P13090962166093292179.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P12442360368397087752

`A008307(A133263(n+6)+5)-1`
-/

namespace A153760.P12442360368397087752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 (n + 6) + 5).toNat - 1

end

end A153760.P12442360368397087752

namespace A153760

/-- `A008307(A133263(n+6)+5)-1` -/
def P12442360368397087752.Spec : Prop :=
  ∀ n, P12442360368397087752.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P11763566666699794088

`A008307(A000124(n+6)+6)-1`
-/

namespace A153760.P11763566666699794088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000124 (n + 6) + 6).toNat - 1

end

end A153760.P11763566666699794088

namespace A153760

/-- `A008307(A000124(n+6)+6)-1` -/
def P11763566666699794088.Spec : Prop :=
  ∀ n, P11763566666699794088.a n = A153760 (n + 1)

end A153760

/-! ## A153760.P15902016465064378272

`xor(A000035(2*n+1), A008307(A133263(n+6)+5))`
-/

namespace A153760.P15902016465064378272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A008307 (A133263 (n + 6) + 5).toNat)

end

end A153760.P15902016465064378272

namespace A153760

/-- `xor(A000035(2*n+1), A008307(A133263(n+6)+5))` -/
def P15902016465064378272.Spec : Prop :=
  ∀ n, P15902016465064378272.a n = A153760 (n + 1)

end A153760

/-!
# A153761: Number of degree-n permutations of order exactly 11.

The programs for A153761, there is no canonical definition to state claims against.
-/

/-! ## A153761.P12609677228146976377

`∑[abs(Δ[A053501(n)])]`
-/

namespace A153761.P12609677228146976377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153761.P12609677228146976377

/-! ## A153761.P17838774959187312838

`A053501(1+n)-1`
-/

namespace A153761.P17838774959187312838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 (1 + n) - 1

end

end A153761.P17838774959187312838

/-! ## A153761.P17025943801663187467

`xor(1, A053501(1-(n-2*n)))`
-/

namespace A153761.P17025943801663187467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053501 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A153761.P17025943801663187467

/-! ## A153761.P1704545258486643524

`abs(1-A053501(A080513(2*n)))`
-/

namespace A153761.P1704545258486643524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A053501 (A080513 (2 * n)).toNat|

end

end A153761.P1704545258486643524

/-! ## A153761.P4151516083549545763

`and(A020985(n)-3, A053501(A080513(2*n)))`
-/

namespace A153761.P4151516083549545763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 n - 3) (A053501 (A080513 (2 * n)).toNat)

end

end A153761.P4151516083549545763

/-! ## A153761.P17044982737781532659

`and(n-A037466(n), A053501(A080513(2*n)))`
-/

namespace A153761.P17044982737781532659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A037466 n) (A053501 (A080513 (2 * n)).toNat)

end

end A153761.P17044982737781532659

/-! ## A153761.P14465188062946900006

`and(A053501(n+1)+A020985(n), A053501(n+1))`
-/

namespace A153761.P14465188062946900006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053501 (n + 1) + A020985 n) (A053501 (n + 1))

end

end A153761.P14465188062946900006

/-!
# A153762: Numbers k such that 8k + 9 is prime.

The programs for A153762, the canonical program `A153762.P5435928769076338160` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153762 has offset 1).

The definition of A153762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153762.P5435928769076338160

`floor((p?[8*n+1]-2)/8)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153762

/-- `floor((p?[8*n+1]-2)/8)` -/
def P5435928769076338160.Spec : Prop :=
  ∀ n, P5435928769076338160.a n = A153762 (n + 1)

theorem P5435928769076338160.correct : P5435928769076338160.Spec := by
  intro n
  simp only [A153762, Nat.add_sub_cancel]

end A153762

/-! ## A153762.P12039061145291927537

`A005123(n+1)-1`
-/

namespace A153762.P12039061145291927537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) - 1

end

end A153762.P12039061145291927537

namespace A153762

/-- `A005123(n+1)-1` -/
def P12039061145291927537.Spec : Prop :=
  ∀ n, P12039061145291927537.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P14264125728819526477

`A186293(n+1)/4-1`
-/

namespace A153762.P14264125728819526477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186293 (n + 1) : ℚ) / 4 - 1

end

end A153762.P14264125728819526477

namespace A153762

/-- `A186293(n+1)/4-1` -/
def P14264125728819526477.Spec : Prop :=
  ∀ n, P14264125728819526477.a n = (A153762 (n + 1) : ℚ)

end A153762

/-! ## A153762.P10503743513992310368

`(A186294(n+1)-5)/4`
-/

namespace A153762.P10503743513992310368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186294 (n + 1) - 5 : ℚ) / 4

end

end A153762.P10503743513992310368

namespace A153762

/-- `(A186294(n+1)-5)/4` -/
def P10503743513992310368.Spec : Prop :=
  ∀ n, P10503743513992310368.a n = (A153762 (n + 1) : ℚ)

end A153762

/-! ## A153762.P12679639222931228990

`floor(A007519(n+1)/8)-1`
-/

namespace A153762.P12679639222931228990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007519 (n + 1) : ℚ) / 8⌋ - 1

end

end A153762.P12679639222931228990

namespace A153762

/-- `floor(A007519(n+1)/8)-1` -/
def P12679639222931228990.Spec : Prop :=
  ∀ n, P12679639222931228990.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P17135377968059490789

`A022762(n+1)-A153766(n+1)`
-/

namespace A153762.P17135377968059490789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - A153766 (n + 1)

end

end A153762.P17135377968059490789

namespace A153762

/-- `A022762(n+1)-A153766(n+1)` -/
def P17135377968059490789.Spec : Prop :=
  ∀ n, P17135377968059490789.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P9986454587736959908

`A186295(n+1)%A005123(n+1)`
-/

namespace A153762.P9986454587736959908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186295 (n + 1)) (A005123 (n + 1))

end

end A153762.P9986454587736959908

namespace A153762

/-- `A186295(n+1)%A005123(n+1)` -/
def P9986454587736959908.Spec : Prop :=
  ∀ n, P9986454587736959908.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P11443984360757668176

`A022762(n+1)-(A005122(n+1)+1)`
-/

namespace A153762.P11443984360757668176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - (A005122 (n + 1) + 1)

end

end A153762.P11443984360757668176

namespace A153762

/-- `A022762(n+1)-(A005122(n+1)+1)` -/
def P11443984360757668176.Spec : Prop :=
  ∀ n, P11443984360757668176.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P3464484697129847513

`record[A111199(n+1)/A020639(A111199(n+1))]`
-/

namespace A153762.P3464484697129847513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111199 (n + 1) : ℚ) / (A020639 (A111199 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153762.P3464484697129847513

namespace A153762

/-- `record[A111199(n+1)/A020639(A111199(n+1))]` -/
def P3464484697129847513.Spec : Prop :=
  ∀ n, P3464484697129847513.a n = (A153762 (n + 1) : ℚ)

end A153762

/-! ## A153762.P1915616181774454200

`eq[1, A237053(4*n)]-1`
-/

namespace A153762.P1915616181774454200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153762.P1915616181774454200

namespace A153762

/-- `eq[1, A237053(4*n)]-1` -/
def P1915616181774454200.Spec : Prop :=
  ∀ n, P1915616181774454200.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P18023054184300638239

`eq[1, A101264(4*n)]-1`
-/

namespace A153762.P18023054184300638239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153762.P18023054184300638239

namespace A153762

/-- `eq[1, A101264(4*n)]-1` -/
def P18023054184300638239.Spec : Prop :=
  ∀ n, P18023054184300638239.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P5216113974452362992

`eq[1, A001222(8*n+9)]`
-/

namespace A153762.P5216113974452362992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153762.P5216113974452362992

namespace A153762

/-- `eq[1, A001222(8*n+9)]` -/
def P5216113974452362992.Spec : Prop :=
  ∀ n, (P5216113974452362992.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P5796784052299882967

`eq[2, A000005(8*n+9)]`
-/

namespace A153762.P5796784052299882967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153762.P5796784052299882967

namespace A153762

/-- `eq[2, A000005(8*n+9)]` -/
def P5796784052299882967.Spec : Prop :=
  ∀ n, (P5796784052299882967.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P18017971796020919973

`lt[A001222(9*(n+1)-n), 2]`
-/

namespace A153762.P18017971796020919973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * (n + 1) - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153762.P18017971796020919973

namespace A153762

/-- `lt[A001222(9*(n+1)-n), 2]` -/
def P18017971796020919973.Spec : Prop :=
  ∀ n, (P18017971796020919973.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P7645381898372918345

`lt[n+3, A020639(4*(2*n+1)+5)]`
-/

namespace A153762.P7645381898372918345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (2 * n + 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153762.P7645381898372918345

namespace A153762

/-- `lt[n+3, A020639(4*(2*n+1)+5)]` -/
def P7645381898372918345.Spec : Prop :=
  ∀ n, (P7645381898372918345.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P609820160456622259

`lt[4*n+1, A006530(8*n+1)]-1`
-/

namespace A153762.P609820160456622259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A153762.P609820160456622259

namespace A153762

/-- `lt[4*n+1, A006530(8*n+1)]-1` -/
def P609820160456622259.Spec : Prop :=
  ∀ n, P609820160456622259.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P3943491610026718609

`∩[A014132(n+1), A329269(n+1)]-1`
-/

namespace A153762.P3943491610026718609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A153762.P3943491610026718609

namespace A153762

/-- `∩[A014132(n+1), A329269(n+1)]-1` -/
def P3943491610026718609.Spec : Prop :=
  ∀ n, P3943491610026718609.a n = A153762 (n + 1)

end A153762

/-! ## A153762.P5157558355062154957

`lt[∑{e}[8*n+9, #], 2]`
-/

namespace A153762.P5157558355062154957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A153762.P5157558355062154957

namespace A153762

/-- `lt[∑{e}[8*n+9, #], 2]` -/
def P5157558355062154957.Spec : Prop :=
  ∀ n, (P5157558355062154957.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P11843885455388859677

`eq[1, A365958(n+1)]`
-/

namespace A153762.P11843885455388859677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153762.P11843885455388859677

namespace A153762

/-- `eq[1, A365958(n+1)]` -/
def P11843885455388859677.Spec : Prop :=
  ∀ n, (P11843885455388859677.a n : ℤ) = A153762 (n + 1)

end A153762

/-! ## A153762.P16611135945415096287

`A023443(A005123(n+1))`
-/

namespace A153762.P16611135945415096287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005123 (n + 1)).toNat

end

end A153762.P16611135945415096287

namespace A153762

/-- `A023443(A005123(n+1))` -/
def P16611135945415096287.Spec : Prop :=
  ∀ n, P16611135945415096287.a n = A153762 (n + 1)

end A153762

/-!
# A153763: Numbers k >= 0 such that 8*k+9 is not prime.

The programs for A153763, the canonical program `A153763.P6096531930319961594` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153763 has offset 1).

The definition of A153763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153763.P6096531930319961594

`lt[1, ∑{e}[8*n+9, #]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153763

/-- `lt[1, ∑{e}[8*n+9, #]]` -/
def P6096531930319961594.Spec : Prop :=
  ∀ n, (P6096531930319961594.a n : ℤ) = A153763 (n + 1)

theorem P6096531930319961594.correct : P6096531930319961594.Spec := by
  intro n
  simp only [A153763, Nat.add_sub_cancel]

end A153763

/-! ## A153763.P11364119397142422214

`comp[A153762(1+n)]`
-/

namespace A153763.P11364119397142422214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153763.P11364119397142422214

namespace A153763

/-- `comp[A153762(1+n)]` -/
def P11364119397142422214.Spec : Prop :=
  ∀ n, (P11364119397142422214.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P16076857703707727469

`comp[A005123(n+1)-1]`
-/

namespace A153763.P16076857703707727469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153763.P16076857703707727469

namespace A153763

/-- `comp[A005123(n+1)-1]` -/
def P16076857703707727469.Spec : Prop :=
  ∀ n, (P16076857703707727469.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P9881886180990562808

`eq[1, A260821(2*(n+1))]`
-/

namespace A153763.P9881886180990562808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260821 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153763.P9881886180990562808

namespace A153763

/-- `eq[1, A260821(2*(n+1))]` -/
def P9881886180990562808.Spec : Prop :=
  ∀ n, (P9881886180990562808.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P686968435508712124

`lt[1, A037039(2*(n+1))]`
-/

namespace A153763.P686968435508712124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P686968435508712124

namespace A153763

/-- `lt[1, A037039(2*(n+1))]` -/
def P686968435508712124.Spec : Prop :=
  ∀ n, (P686968435508712124.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P17271643938142558253

`lt[1, A345468(2*(n+1))]`
-/

namespace A153763.P17271643938142558253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P17271643938142558253

namespace A153763

/-- `lt[1, A345468(2*(n+1))]` -/
def P17271643938142558253.Spec : Prop :=
  ∀ n, (P17271643938142558253.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P10326716689027574041

`lt[2, A049716(4*n+5)]`
-/

namespace A153763.P10326716689027574041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (4 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P10326716689027574041

namespace A153763

/-- `lt[2, A049716(4*n+5)]` -/
def P10326716689027574041.Spec : Prop :=
  ∀ n, (P10326716689027574041.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P7314294628568566497

`eq[0, A010051(8*n+9)]`
-/

namespace A153763.P7314294628568566497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153763.P7314294628568566497

namespace A153763

/-- `eq[0, A010051(8*n+9)]` -/
def P7314294628568566497.Spec : Prop :=
  ∀ n, (P7314294628568566497.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P11866949514845261977

`lt[1, A001222(8*n+9)]`
-/

namespace A153763.P11866949514845261977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P11866949514845261977

namespace A153763

/-- `lt[1, A001222(8*n+9)]` -/
def P11866949514845261977.Spec : Prop :=
  ∀ n, (P11866949514845261977.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P17080794452562424942

`lt[1, A107286(8*n+9)]`
-/

namespace A153763.P17080794452562424942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P17080794452562424942

namespace A153763

/-- `lt[1, A107286(8*n+9)]` -/
def P17080794452562424942.Spec : Prop :=
  ∀ n, (P17080794452562424942.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P1414855991431730557

`lt[2, A000005(8*n+9)]`
-/

namespace A153763.P1414855991431730557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153763.P1414855991431730557

namespace A153763

/-- `lt[2, A000005(8*n+9)]` -/
def P1414855991431730557.Spec : Prop :=
  ∀ n, (P1414855991431730557.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P8109583493584056876

`eq[0, A283616(4*n+1)]-1`
-/

namespace A153763.P8109583493584056876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153763.P8109583493584056876

namespace A153763

/-- `eq[0, A283616(4*n+1)]-1` -/
def P8109583493584056876.Spec : Prop :=
  ∀ n, P8109583493584056876.a n = A153763 (n + 1)

end A153763

/-! ## A153763.P9076348408470371999

`comp[eq[1, A001222(8*n+1)]-1]`
-/

namespace A153763.P9076348408470371999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153763.P9076348408470371999

namespace A153763

/-- `comp[eq[1, A001222(8*n+1)]-1]` -/
def P9076348408470371999.Spec : Prop :=
  ∀ n, (P9076348408470371999.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P10720953979561656776

`comp[lt[3*n, A006530(16*n+2)]-1]`
-/

namespace A153763.P10720953979561656776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (16 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153763.P10720953979561656776

namespace A153763

/-- `comp[lt[3*n, A006530(16*n+2)]-1]` -/
def P10720953979561656776.Spec : Prop :=
  ∀ n, (P10720953979561656776.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P3059157511895898774

`eq[1, A005171(A017077(n+1))]`
-/

namespace A153763.P3059157511895898774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153763.P3059157511895898774

namespace A153763

/-- `eq[1, A005171(A017077(n+1))]` -/
def P3059157511895898774.Spec : Prop :=
  ∀ n, (P3059157511895898774.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P5655495580183005306

`eq[A101264(4*n), A339579(4*n+1)]-1`
-/

namespace A153763.P5655495580183005306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A153763.P5655495580183005306

namespace A153763

/-- `eq[A101264(4*n), A339579(4*n+1)]-1` -/
def P5655495580183005306.Spec : Prop :=
  ∀ n, P5655495580183005306.a n = A153763 (n + 1)

end A153763

/-! ## A153763.P720431131881273422

`eq[A211173(4*n), A339579(4*n+1)]-1`
-/

namespace A153763.P720431131881273422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A153763.P720431131881273422

namespace A153763

/-- `eq[A211173(4*n), A339579(4*n+1)]-1` -/
def P720431131881273422.Spec : Prop :=
  ∀ n, P720431131881273422.a n = A153763 (n + 1)

end A153763

/-! ## A153763.P12000159694778200050

`lt[A000010(A004768(n)), A004771(n)]`
-/

namespace A153763.P12000159694778200050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004768 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153763.P12000159694778200050

namespace A153763

/-- `lt[A000010(A004768(n)), A004771(n)]` -/
def P12000159694778200050.Spec : Prop :=
  ∀ n, (P12000159694778200050.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P15393955305738515158

`lt[A000010(A004771(n)+2), A004771(n)]`
-/

namespace A153763.P15393955305738515158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004771 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153763.P15393955305738515158

namespace A153763

/-- `lt[A000010(A004771(n)+2), A004771(n)]` -/
def P15393955305738515158.Spec : Prop :=
  ∀ n, (P15393955305738515158.a n : ℤ) = A153763 (n + 1)

end A153763

/-! ## A153763.P11176351994306392780

`lt[A020639(A017077(n)), A017077(n)]-1`
-/

namespace A153763.P11176351994306392780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A153763.P11176351994306392780

namespace A153763

/-- `lt[A020639(A017077(n)), A017077(n)]-1` -/
def P11176351994306392780.Spec : Prop :=
  ∀ n, P11176351994306392780.a n = A153763 (n + 1)

end A153763

/-!
# A153764: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,-1,0,0,0,0,0,0,0,0,...] DELTA [0,1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A153764, the canonical program `A153764.P10755116170530907536` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153764 has offset 0).

The definition of A153764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153764.P10755116170530907536

`T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153764

/-- `T(n-1,k-1)+T(n-2,k)` -/
def P10755116170530907536.Spec : Prop :=
  ∀ n, (P10755116170530907536.a n : ℤ) = A153764 n

theorem P10755116170530907536.correct : P10755116170530907536.Spec := by
  intro n
  simp only [A153764]

end A153764

/-! ## A153764.P12640950742446329572

`A103631((row(n)+1)²-(n+1))`
-/

namespace A153764.P12640950742446329572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 ((SequenceMachineLib.triRow n + 1) ^ 2 - (n + 1))

end

end A153764.P12640950742446329572

namespace A153764

/-- `A103631((row(n)+1)²-(n+1))` -/
def P12640950742446329572.Spec : Prop :=
  ∀ n, P12640950742446329572.a n = A153764 n

end A153764

/-! ## A153764.P17887840096533168030

`A103631(row(n)*(row(n)+3)/2-col(n))`
-/

namespace A153764.P17887840096533168030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ))).toNat

end

end A153764.P17887840096533168030

namespace A153764

/-- `A103631(row(n)*(row(n)+3)/2-col(n))` -/
def P17887840096533168030.Spec : Prop :=
  ∀ n, P17887840096533168030.a n = A153764 n

end A153764

/-! ## A153764.P10706953389234343808

`A103631(A061579(n))`
-/

namespace A153764.P10706953389234343808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A061579 n).toNat

end

end A153764.P10706953389234343808

namespace A153764

/-- `A103631(A061579(n))` -/
def P10706953389234343808.Spec : Prop :=
  ∀ n, P10706953389234343808.a n = A153764 n

end A153764

/-! ## A153764.P5911248432771705588

`A103631(∑[A198954(n)-1])`
-/

namespace A153764.P5911248432771705588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153764.P5911248432771705588

namespace A153764

/-- `A103631(∑[A198954(n)-1])` -/
def P5911248432771705588.Spec : Prop :=
  ∀ n, P5911248432771705588.a n = A153764 n

end A153764

/-! ## A153764.P9059866332922483431

`abs(A046854(n)-A114525(n))`
-/

namespace A153764.P9059866332922483431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046854 n - A114525 n|

end

end A153764.P9059866332922483431

namespace A153764

/-- `abs(A046854(n)-A114525(n))` -/
def P9059866332922483431.Spec : Prop :=
  ∀ n, P9059866332922483431.a n = A153764 n

end A153764

/-! ## A153764.P16989891509898078645

`A103631(A038722(n+1)-1)`
-/

namespace A153764.P16989891509898078645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A038722 (n + 1) - 1).toNat

end

end A153764.P16989891509898078645

namespace A153764

/-- `A103631(A038722(n+1)-1)` -/
def P16989891509898078645.Spec : Prop :=
  ∀ n, P16989891509898078645.a n = A153764 n

end A153764

/-! ## A153764.P7479420992278640856

`A073044(n+1)-A046854(n)`
-/

namespace A153764.P7479420992278640856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (n + 1) - A046854 n

end

end A153764.P7479420992278640856

namespace A153764

/-- `A073044(n+1)-A046854(n)` -/
def P7479420992278640856.Spec : Prop :=
  ∀ n, P7479420992278640856.a n = A153764 n

end A153764

/-! ## A153764.P16494175210180145336

`A103631(A000194(2*n+1)²-(n+1))`
-/

namespace A153764.P16494175210180145336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A000194 (2 * n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A153764.P16494175210180145336

namespace A153764

/-- `A103631(A000194(2*n+1)²-(n+1))` -/
def P16494175210180145336.Spec : Prop :=
  ∀ n, P16494175210180145336.a n = A153764 n

end A153764

/-!
# A153765: McKay-Thompson series of class 15A for the Monster group with a(0) = 4.

The programs for A153765, there is no canonical definition to state claims against.
-/

/-! ## A153765.P3727351523388085833

`∑{#}[n, A058625(#)*A058625(n-#)]`
-/

namespace A153765.P3727351523388085833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A058625 k * A058625 (n - k)

end

end A153765.P3727351523388085833

/-!
# A153766: Numbers k such that 8k-9 is prime.

The programs for A153766, the canonical program `A153766.P15346945641008635464` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153766 has offset 1).

The definition of A153766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153766.P3937123746835005280

`ceil(p?[8*n-1]/2)/4+1`
-/

namespace A153766.P3937123746835005280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ : ℚ) / 4 + 1

end

end A153766.P3937123746835005280

namespace A153766

/-- `ceil(p?[8*n-1]/2)/4+1` -/
def P3937123746835005280.Spec : Prop :=
  ∀ n, P3937123746835005280.a n = (A153766 (n + 1) : ℚ)

end A153766

/-! ## A153766.P4727182504859232677

`(floor(p?[8*n-1]/2)+5)/4`
-/

namespace A153766.P4727182504859232677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ + 5 : ℚ) / 4

end

end A153766.P4727182504859232677

namespace A153766

/-- `(floor(p?[8*n-1]/2)+5)/4` -/
def P4727182504859232677.Spec : Prop :=
  ∀ n, P4727182504859232677.a n = (A153766 (n + 1) : ℚ)

end A153766

/-! ## A153766.P15346945641008635464

`1+A005122(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A153766

/-- `1+A005122(n+1)` -/
def P15346945641008635464.Spec : Prop :=
  ∀ n, P15346945641008635464.a n = A153766 (n + 1)

theorem P15346945641008635464.correct : P15346945641008635464.Spec := by
  intro n
  simp only [A153766, Nat.add_sub_cancel]

end A153766

/-! ## A153766.P7680787659839409879

`A139487(n+1)+2`
-/

namespace A153766.P7680787659839409879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 2

end

end A153766.P7680787659839409879

namespace A153766

/-- `A139487(n+1)+2` -/
def P7680787659839409879.Spec : Prop :=
  ∀ n, P7680787659839409879.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P6302788425455724481

`A186303(n+1)/4+1`
-/

namespace A153766.P6302788425455724481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186303 (n + 1) : ℚ) / 4 + 1

end

end A153766.P6302788425455724481

namespace A153766

/-- `A186303(n+1)/4+1` -/
def P6302788425455724481.Spec : Prop :=
  ∀ n, P6302788425455724481.a n = (A153766 (n + 1) : ℚ)

end A153766

/-! ## A153766.P6493951764561549968

`(A186302(n+1)+5)/4`
-/

namespace A153766.P6493951764561549968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186302 (n + 1) + 5 : ℚ) / 4

end

end A153766.P6493951764561549968

namespace A153766

/-- `(A186302(n+1)+5)/4` -/
def P6493951764561549968.Spec : Prop :=
  ∀ n, P6493951764561549968.a n = (A153766 (n + 1) : ℚ)

end A153766

/-! ## A153766.P3628969610606944294

`A022762(n+1)-A153762(n+1)`
-/

namespace A153766.P3628969610606944294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - A153762 (n + 1)

end

end A153766.P3628969610606944294

namespace A153766

/-- `A022762(n+1)-A153762(n+1)` -/
def P3628969610606944294.Spec : Prop :=
  ∀ n, P3628969610606944294.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P10688369245951603052

`A022762(n+1)+1-A005123(n+1)`
-/

namespace A153766.P10688369245951603052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) + (1 - A005123 (n + 1))

end

end A153766.P10688369245951603052

namespace A153766

/-- `A022762(n+1)+1-A005123(n+1)` -/
def P10688369245951603052.Spec : Prop :=
  ∀ n, P10688369245951603052.a n = A153766 (n + 1)

theorem P10688369245951603052.correct : P10688369245951603052.Spec := by
  intro n
  simp only [A153766, Nat.add_sub_cancel, A153766.P10688369245951603052.a, A153766.P15346945641008635464.a, A005122, A005122.P2819458909718632145.f1, A005122.P2819458909718632145.a, A005123, A005123.P4885488379496739982.a, A022762, A022762.P18043620693348096952.a, A007519, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153766

/-! ## A153766.P6373764518214729131

`gcd(A186303(n+1), A282039(n+1))+1`
-/

namespace A153766.P6373764518214729131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186303 (n + 1)) (A282039 (n + 1)) + 1

end

end A153766.P6373764518214729131

namespace A153766

/-- `gcd(A186303(n+1), A282039(n+1))+1` -/
def P6373764518214729131.Spec : Prop :=
  ∀ n, (P6373764518214729131.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P8321391870167059554

`eq[n+1, A258835(n)]+2`
-/

namespace A153766.P8321391870167059554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153766.P8321391870167059554

namespace A153766

/-- `eq[n+1, A258835(n)]+2` -/
def P8321391870167059554.Spec : Prop :=
  ∀ n, (P8321391870167059554.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P18210051772095563920

`A103391(A186302(n+1))`
-/

namespace A153766.P18210051772095563920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A186302 (n + 1)).toNat

end

end A153766.P18210051772095563920

namespace A153766

/-- `A103391(A186302(n+1))` -/
def P18210051772095563920.Spec : Prop :=
  ∀ n, P18210051772095563920.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P470727291957965103

`A103391((A186304(n+1)+1)/2)`
-/

namespace A153766.P470727291957965103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (SequenceMachineLib.roundAway ((A186304 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A153766.P470727291957965103

namespace A153766

/-- `A103391((A186304(n+1)+1)/2)` -/
def P470727291957965103.Spec : Prop :=
  ∀ n, P470727291957965103.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P18088414242845121938

`eq[2, A000005(8*n+7)]+2`
-/

namespace A153766.P18088414242845121938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153766.P18088414242845121938

namespace A153766

/-- `eq[2, A000005(8*n+7)]+2` -/
def P18088414242845121938.Spec : Prop :=
  ∀ n, (P18088414242845121938.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P14472083200620566523

`lt[A001222(8*n+7), 2]+2`
-/

namespace A153766.P14472083200620566523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A153766.P14472083200620566523

namespace A153766

/-- `lt[A001222(8*n+7), 2]+2` -/
def P14472083200620566523.Spec : Prop :=
  ∀ n, (P14472083200620566523.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P10225628555154111064

`(A000010(A007522(n+1))/2+5)/4`
-/

namespace A153766.P10225628555154111064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000010 (A007522 (n + 1)).toNat : ℚ) / 2 + 5) / 4

end

end A153766.P10225628555154111064

namespace A153766

/-- `(A000010(A007522(n+1))/2+5)/4` -/
def P10225628555154111064.Spec : Prop :=
  ∀ n, P10225628555154111064.a n = (A153766 (n + 1) : ℚ)

end A153766

/-! ## A153766.P9603222697172964336

`A004482(A005122(n+1))`
-/

namespace A153766.P9603222697172964336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A005122 (n + 1)).toNat

end

end A153766.P9603222697172964336

namespace A153766

/-- `A004482(A005122(n+1))` -/
def P9603222697172964336.Spec : Prop :=
  ∀ n, P9603222697172964336.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P177498272045434022

`A145064(A139487(n+1))`
-/

namespace A153766.P177498272045434022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A139487 (n + 1)).toNat

end

end A153766.P177498272045434022

namespace A153766

/-- `A145064(A139487(n+1))` -/
def P177498272045434022.Spec : Prop :=
  ∀ n, P177498272045434022.a n = A153766 (n + 1)

end A153766

/-! ## A153766.P18030438801554828567

`eq[1, A001222(A004771(n))]+2`
-/

namespace A153766.P18030438801554828567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153766.P18030438801554828567

namespace A153766

/-- `eq[1, A001222(A004771(n))]+2` -/
def P18030438801554828567.Spec : Prop :=
  ∀ n, (P18030438801554828567.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P1993688655523944272

`eq[1, A101264(A004767(n))]+2`
-/

namespace A153766.P1993688655523944272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153766.P1993688655523944272

namespace A153766

/-- `eq[1, A101264(A004767(n))]+2` -/
def P1993688655523944272.Spec : Prop :=
  ∀ n, (P1993688655523944272.a n : ℤ) = A153766 (n + 1)

end A153766

/-! ## A153766.P9819342818535654627

`lt[A000005(Δ[A033951(n)]), 3]+2`
-/

namespace A153766.P9819342818535654627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A153766.P9819342818535654627

namespace A153766

/-- `lt[A000005(Δ[A033951(n)]), 3]+2` -/
def P9819342818535654627.Spec : Prop :=
  ∀ n, (P9819342818535654627.a n : ℤ) = A153766 (n + 1)

end A153766

/-!
# A153767: Primes p such that 8*p - 9 is also prime.

The programs for A153767, the canonical program `A153767.P9865033134181886686` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153767 has offset 1).

The definition of A153767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153767.P9865033134181886686

`p?[A153766(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153767

/-- `p?[A153766(n+1)]` -/
def P9865033134181886686.Spec : Prop :=
  ∀ n, P9865033134181886686.a n = A153767 (n + 1)

theorem P9865033134181886686.correct : P9865033134181886686.Spec := by
  intro n
  simp only [A153767, Nat.add_sub_cancel]

end A153767

/-! ## A153767.P5512344714920019891

`p?[A005122(n+1)+1]`
-/

namespace A153767.P5512344714920019891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153767.P5512344714920019891

namespace A153767

/-- `p?[A005122(n+1)+1]` -/
def P5512344714920019891.Spec : Prop :=
  ∀ n, P5512344714920019891.a n = A153767 (n + 1)

theorem P5512344714920019891.correct : P5512344714920019891.Spec := by
  intro n
  simp only [A153767, Nat.add_sub_cancel, A153767.P5512344714920019891.f1, A153767.P5512344714920019891.a, A153767.P9865033134181886686.f1, A153767.P9865033134181886686.a, A005122, A005122.P2819458909718632145.f1, A005122.P2819458909718632145.a, A153766, A153766.P15346945641008635464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153767

/-! ## A153767.P11543020744556876747

`p?[A139487(n+1)+2]`
-/

namespace A153767.P11543020744556876747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153767.P11543020744556876747

namespace A153767

/-- `p?[A139487(n+1)+2]` -/
def P11543020744556876747.Spec : Prop :=
  ∀ n, P11543020744556876747.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P15399643812876004170

`record[A006530(A153766(n+2))]`
-/

namespace A153767.P15399643812876004170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153766 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153767.P15399643812876004170

namespace A153767

/-- `record[A006530(A153766(n+2))]` -/
def P15399643812876004170.Spec : Prop :=
  ∀ n, P15399643812876004170.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P4229759911148899278

`filter[A153766(n+1), A010051(#)]`
-/

namespace A153767.P4229759911148899278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153767.P4229759911148899278

namespace A153767

/-- `filter[A153766(n+1), A010051(#)]` -/
def P4229759911148899278.Spec : Prop :=
  ∀ n, P4229759911148899278.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P14759054944498057889

`filter[A153766(n+1), A323152(#)]`
-/

namespace A153767.P14759054944498057889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A153767.P14759054944498057889

namespace A153767

/-- `filter[A153766(n+1), A323152(#)]` -/
def P14759054944498057889.Spec : Prop :=
  ∀ n, P14759054944498057889.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P3531634797843812656

`filter[A153766(n+1), A323153(#)]`
-/

namespace A153767.P3531634797843812656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A153767.P3531634797843812656

namespace A153767

/-- `filter[A153766(n+1), A323153(#)]` -/
def P3531634797843812656.Spec : Prop :=
  ∀ n, P3531634797843812656.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P3558789436241483145

`record[A006530(A005122(n+1)+1)]`
-/

namespace A153767.P3558789436241483145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005122 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153767.P3558789436241483145

namespace A153767

/-- `record[A006530(A005122(n+1)+1)]` -/
def P3558789436241483145.Spec : Prop :=
  ∀ n, P3558789436241483145.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P13888355106074917295

`record[A020639(A005122(n+1)+1)]`
-/

namespace A153767.P13888355106074917295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005122 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153767.P13888355106074917295

namespace A153767

/-- `record[A020639(A005122(n+1)+1)]` -/
def P13888355106074917295.Spec : Prop :=
  ∀ n, P13888355106074917295.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P2785885327942643281

`record[A006530(A139487(n+1)+2)]`
-/

namespace A153767.P2785885327942643281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139487 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153767.P2785885327942643281

namespace A153767

/-- `record[A006530(A139487(n+1)+2)]` -/
def P2785885327942643281.Spec : Prop :=
  ∀ n, P2785885327942643281.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P2914527866222873765

`record[A020639(A139487(n+1)+2)]`
-/

namespace A153767.P2914527866222873765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139487 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153767.P2914527866222873765

namespace A153767

/-- `record[A020639(A139487(n+1)+2)]` -/
def P2914527866222873765.Spec : Prop :=
  ∀ n, P2914527866222873765.a n = A153767 (n + 1)

end A153767

/-! ## A153767.P10182581065090576699

`∩[A000040(n+1), A153766(n+1)]`
-/

namespace A153767.P10182581065090576699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P10182581065090576699

namespace A153767

/-- `∩[A000040(n+1), A153766(n+1)]` -/
def P10182581065090576699.Spec : Prop :=
  ∀ n, (P10182581065090576699.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P12468138494806908228

`∩[A008578(n+1), A153766(n+1)]`
-/

namespace A153767.P12468138494806908228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P12468138494806908228

namespace A153767

/-- `∩[A008578(n+1), A153766(n+1)]` -/
def P12468138494806908228.Spec : Prop :=
  ∀ n, (P12468138494806908228.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P6877521126052412078

`∩[A033946(n+1), A153766(n+1)]`
-/

namespace A153767.P6877521126052412078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P6877521126052412078

namespace A153767

/-- `∩[A033946(n+1), A153766(n+1)]` -/
def P6877521126052412078.Spec : Prop :=
  ∀ n, (P6877521126052412078.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P15096582010260758703

`∩[A045344(n+1), A153766(n+1)]`
-/

namespace A153767.P15096582010260758703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P15096582010260758703

namespace A153767

/-- `∩[A045344(n+1), A153766(n+1)]` -/
def P15096582010260758703.Spec : Prop :=
  ∀ n, (P15096582010260758703.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P9097552606351856224

`∩[A045348(n+1), A153766(n+1)]`
-/

namespace A153767.P9097552606351856224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P9097552606351856224

namespace A153767

/-- `∩[A045348(n+1), A153766(n+1)]` -/
def P9097552606351856224.Spec : Prop :=
  ∀ n, (P9097552606351856224.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P8115799360714327227

`∩[A053813(n+1), A153766(n+1)]`
-/

namespace A153767.P8115799360714327227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P8115799360714327227

namespace A153767

/-- `∩[A053813(n+1), A153766(n+1)]` -/
def P8115799360714327227.Spec : Prop :=
  ∀ n, (P8115799360714327227.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P8165776935066372355

`∩[A106843(n+1), A153766(n+1)]`
-/

namespace A153767.P8165776935066372355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P8165776935066372355

namespace A153767

/-- `∩[A106843(n+1), A153766(n+1)]` -/
def P8165776935066372355.Spec : Prop :=
  ∀ n, (P8165776935066372355.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P3801029517555323107

`∩[A116974(n+1), A153766(n+1)]`
-/

namespace A153767.P3801029517555323107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P3801029517555323107

namespace A153767

/-- `∩[A116974(n+1), A153766(n+1)]` -/
def P3801029517555323107.Spec : Prop :=
  ∀ n, (P3801029517555323107.a n : ℤ) = A153767 (n + 1)

end A153767

/-! ## A153767.P10158797407288621784

`∩[A153766(n+1), A158611(n+1)]`
-/

namespace A153767.P10158797407288621784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153767.P10158797407288621784

namespace A153767

/-- `∩[A153766(n+1), A158611(n+1)]` -/
def P10158797407288621784.Spec : Prop :=
  ∀ n, (P10158797407288621784.a n : ℤ) = A153767 (n + 1)

end A153767

/-!
# A153768: Numbers n such that n, 8n-9 and 8n+9 are primes.

The programs for A153768, the canonical program `A153768.P6556551769552871721` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153768 has offset 1).

The definition of A153768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153768.P6556551769552871721

`∩[A023232(n+1), A153767(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153768

/-- `∩[A023232(n+1), A153767(n+1)]` -/
def P6556551769552871721.Spec : Prop :=
  ∀ n, (P6556551769552871721.a n : ℤ) = A153768 (n + 1)

theorem P6556551769552871721.correct : P6556551769552871721.Spec := by
  intro n
  simp only [A153768, Nat.add_sub_cancel]

end A153768

/-! ## A153768.P4201129419931225589

`∩[A023232(n+1), A153766(n+1)]`
-/

namespace A153768.P4201129419931225589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153768.P4201129419931225589

namespace A153768

/-- `∩[A023232(n+1), A153766(n+1)]` -/
def P4201129419931225589.Spec : Prop :=
  ∀ n, (P4201129419931225589.a n : ℤ) = A153768 (n + 1)

end A153768

/-! ## A153768.P18166534228905059019

`∩[A153762(n+1), A153767(n+1)]`
-/

namespace A153768.P18166534228905059019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153768.P18166534228905059019

namespace A153768

/-- `∩[A153762(n+1), A153767(n+1)]` -/
def P18166534228905059019.Spec : Prop :=
  ∀ n, (P18166534228905059019.a n : ℤ) = A153768 (n + 1)

end A153768

/-! ## A153768.P5139422961062795753

`p?[∩[A153762(n+1), A153766(n+1)]]`
-/

namespace A153768.P5139422961062795753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153768.P5139422961062795753

namespace A153768

/-- `p?[∩[A153762(n+1), A153766(n+1)]]` -/
def P5139422961062795753.Spec : Prop :=
  ∀ n, (P5139422961062795753.a n : ℤ) = A153768 (n + 1)

end A153768

/-! ## A153768.P5868818775709289230

`p?[A174571(A088769(n+1))]`
-/

namespace A153768.P5868818775709289230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A088769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153768.P5868818775709289230

namespace A153768

/-- `p?[A174571(A088769(n+1))]` -/
def P5868818775709289230.Spec : Prop :=
  ∀ n, P5868818775709289230.a n = A153768 (n + 1)

end A153768

/-!
# A153769: Numbers n such that 8n-9 is not prime.

The programs for A153769, the canonical program `A153769.P8015632483883398881` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153769 has offset 1).

The definition of A153769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153769.P11859493031844945621

`comp[A153766(n+1)]`
-/

namespace A153769.P11859493031844945621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153769.P11859493031844945621

namespace A153769

/-- `comp[A153766(n+1)]` -/
def P11859493031844945621.Spec : Prop :=
  ∀ n, (P11859493031844945621.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P2049124916404622046

`comp[A005122(n+1)+1]`
-/

namespace A153769.P2049124916404622046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153769.P2049124916404622046

namespace A153769

/-- `comp[A005122(n+1)+1]` -/
def P2049124916404622046.Spec : Prop :=
  ∀ n, (P2049124916404622046.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P15744639768330321316

`comp[A139487(n+1)+2]`
-/

namespace A153769.P15744639768330321316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153769.P15744639768330321316

namespace A153769

/-- `comp[A139487(n+1)+2]` -/
def P15744639768330321316.Spec : Prop :=
  ∀ n, (P15744639768330321316.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P6050911403067945342

`comp[comp[A153235(n+1)]+2]`
-/

namespace A153769.P6050911403067945342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153769.P6050911403067945342

namespace A153769

/-- `comp[comp[A153235(n+1)]+2]` -/
def P6050911403067945342.Spec : Prop :=
  ∀ n, (P6050911403067945342.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P5133925989742101279

`comp[lt[A001222(8*n+7), 2]+2]`
-/

namespace A153769.P5133925989742101279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153769.P5133925989742101279

namespace A153769

/-- `comp[lt[A001222(8*n+7), 2]+2]` -/
def P5133925989742101279.Spec : Prop :=
  ∀ n, (P5133925989742101279.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P17279542509842566881

`comp[lt[A000005(8*n+7)+2, 5]+2]`
-/

namespace A153769.P17279542509842566881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153769.P17279542509842566881

namespace A153769

/-- `comp[lt[A000005(8*n+7)+2, 5]+2]` -/
def P17279542509842566881.Spec : Prop :=
  ∀ n, (P17279542509842566881.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P7041067995647114872

`comp[record[A153766(A328399(n))]]`
-/

namespace A153769.P7041067995647114872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153769.P7041067995647114872

namespace A153769

/-- `comp[record[A153766(A328399(n))]]` -/
def P7041067995647114872.Spec : Prop :=
  ∀ n, (P7041067995647114872.a n : ℤ) = A153769 (n + 1)

end A153769

/-! ## A153769.P8015632483883398881

`record[A025480(A004525(A153044(n+1)))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153769

/-- `record[A025480(A004525(A153044(n+1)))]` -/
def P8015632483883398881.Spec : Prop :=
  ∀ n, P8015632483883398881.a n = A153769 (n + 1)

theorem P8015632483883398881.correct : P8015632483883398881.Spec := by
  intro n
  simp only [A153769, Nat.add_sub_cancel]

end A153769

/-!
# A153770: Primes with a prime number of digits and using all of the prime digits 2, 3, 5, 7 at least once and no other digits.

The programs for A153770, there is no canonical definition to state claims against.
-/

/-! ## A153770.P7477307646203414123

`∩[A108419(n+1), A124888(n+1)]`
-/

namespace A153770.P7477307646203414123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153770.P7477307646203414123

/-!
# A153771: Primes with a prime number of digits and using all of the prime digits 2, 3, 5, 7 repeated in strings, in that order.

The programs for A153771, there is no canonical definition to state claims against.
-/

/-! ## A153771.P11185558514834003366

`∩[A153770(n+1), A362678(n+1)]`
-/

namespace A153771.P11185558514834003366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153771.P11185558514834003366

/-!
# A153772: a(n) = (2^n + 2*(-1)^n - 6)/3.

The programs for A153772, the canonical program `A153772.P16564766298699754137` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153772 has offset 0).

The definition of A153772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2*(-1)^n-6)/3` (program `A153772.P10520403171472648501`, by `A153772.P10520403171472648501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153772.P16761979183322429212

`ogf((-1+5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A153772.P16761979183322429212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 5] [1, -2, -1, 2] n

end

end A153772.P16761979183322429212

namespace A153772

/-- `ogf((-1+5x^2)/(1-2x-x^2+2x^3))` -/
def P16761979183322429212.Spec : Prop :=
  ∀ n, P16761979183322429212.a n = A153772 n

end A153772

/-! ## A153772.P16564766298699754137

`a(n-1)+2*a(n-2)+4` with `a(0)=-1, a(1)=-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153772

/-- `a(n-1)+2*a(n-2)+4` -/
def P16564766298699754137.Spec : Prop :=
  ∀ n, P16564766298699754137.a n = A153772 n

theorem P16564766298699754137.correct : P16564766298699754137.Spec := by
  intro n
  simp only [A153772]

end A153772

/-! ## A153772.P6116673585217574000

`A078008(n)-2`
-/

namespace A153772.P6116673585217574000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - 2

end

end A153772.P6116673585217574000

namespace A153772

/-- `A078008(n)-2` -/
def P6116673585217574000.Spec : Prop :=
  ∀ n, P6116673585217574000.a n = A153772 n

end A153772

/-! ## A153772.P10520403171472648501

`(2^n+2*(-1)^n-6)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153772.P10520403171472648501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + 2 * (-1) ^ n - 6 : ℚ) / 3

end

end A153772.P10520403171472648501

namespace A153772

/-- `(2^n+2*(-1)^n-6)/3` -/
def P10520403171472648501.Spec : Prop :=
  ∀ n, P10520403171472648501.a n = (A153772 n : ℚ)

theorem P10520403171472648501.correct : P10520403171472648501.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153772, Nat.add_sub_cancel, A153772.P10520403171472648501.a, A153772.P16564766298699754137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153772, Nat.add_sub_cancel, A153772.P10520403171472648501.a, A153772.P16564766298699754137.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A153772

/-! ## A153772.P9303537065792967448

`∑[ogf((1-5x^2)/(-1+x+2x^2))]`
-/

namespace A153772.P9303537065792967448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 5] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153772.P9303537065792967448

namespace A153772

/-- `∑[ogf((1-5x^2)/(-1+x+2x^2))]` -/
def P9303537065792967448.Spec : Prop :=
  ∀ n, P9303537065792967448.a n = A153772 n

end A153772

/-! ## A153772.P5605627937875529881

`a(n-2)+2^(n-2)` with `a(0)=-1, a(1)=-2`
-/

namespace A153772.P5605627937875529881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, -2] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A153772.P5605627937875529881

namespace A153772

/-- `a(n-2)+2^(n-2)` -/
def P5605627937875529881.Spec : Prop :=
  ∀ n, P5605627937875529881.a n = (A153772 n : ℚ)

end A153772

/-! ## A153772.P1708459488723191705

`∑[2^(n-2)-a(n-1)]` with `a(0)=-1, a(1)=-1`
-/

namespace A153772.P1708459488723191705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153772.P1708459488723191705

namespace A153772

/-- `∑[2^(n-2)-a(n-1)]` -/
def P1708459488723191705.Spec : Prop :=
  ∀ n, P1708459488723191705.a n = (A153772 n : ℚ)

end A153772

/-! ## A153772.P15080133922098092999

`a(n-1)+a(n-2)+a(n-2)+4` with `a(0)=-1, a(1)=-2`
-/

namespace A153772.P15080133922098092999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n a =>
  a (n - 1) + a (n - 2) + (a (n - 2) + 4)

end

end A153772.P15080133922098092999

namespace A153772

/-- `a(n-1)+a(n-2)+a(n-2)+4` -/
def P15080133922098092999.Spec : Prop :=
  ∀ n, P15080133922098092999.a n = A153772 n

theorem P15080133922098092999.correct : P15080133922098092999.Spec := by
  intro n
  simp only [A153772, Nat.add_sub_cancel, A153772.P15080133922098092999.a, A153772.P16564766298699754137.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153772

/-! ## A153772.P17341823680873091984

`∑[A173197(n)-2]`
-/

namespace A153772.P17341823680873091984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173197 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153772.P17341823680873091984

namespace A153772

/-- `∑[A173197(n)-2]` -/
def P17341823680873091984.Spec : Prop :=
  ∀ n, P17341823680873091984.a n = A153772 n

end A153772

/-! ## A153772.P10755480473345255321

`A230096(2*n)-2`
-/

namespace A153772.P10755480473345255321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (2 * n) - 2

end

end A153772.P10755480473345255321

namespace A153772

/-- `A230096(2*n)-2` -/
def P10755480473345255321.Spec : Prop :=
  ∀ n, P10755480473345255321.a n = A153772 n

end A153772

/-! ## A153772.P7329483366682223770

`A094359(xor(1, n))-2`
-/

namespace A153772.P7329483366682223770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (Nat.xor 1 n) - 2

end

end A153772.P7329483366682223770

namespace A153772

/-- `A094359(xor(1, n))-2` -/
def P7329483366682223770.Spec : Prop :=
  ∀ n, P7329483366682223770.a n = A153772 n

end A153772

/-! ## A153772.P18091927222020958851

`abs(Δ[A140962(n)])-2`
-/

namespace A153772.P18091927222020958851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 2

end

end A153772.P18091927222020958851

namespace A153772

/-- `abs(Δ[A140962(n)])-2` -/
def P18091927222020958851.Spec : Prop :=
  ∀ n, P18091927222020958851.a n = A153772 n

end A153772

/-! ## A153772.P4603788296755292830

`A133684(Δ[n²])-2`
-/

namespace A153772.P4603788296755292830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A153772.P4603788296755292830

namespace A153772

/-- `A133684(Δ[n²])-2` -/
def P4603788296755292830.Spec : Prop :=
  ∀ n, P4603788296755292830.a n = A153772 n

end A153772

/-! ## A153772.P7142332534239224563

`abs(1-A140966(n))-2`
-/

namespace A153772.P7142332534239224563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140966 n| - 2

end

end A153772.P7142332534239224563

namespace A153772

/-- `abs(1-A140966(n))-2` -/
def P7142332534239224563.Spec : Prop :=
  ∀ n, P7142332534239224563.a n = A153772 n

end A153772

/-! ## A153772.P3195209091334212998

`abs(1-A171501(n))-2`
-/

namespace A153772.P3195209091334212998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A171501 n| - 2

end

end A153772.P3195209091334212998

namespace A153772

/-- `abs(1-A171501(n))-2` -/
def P3195209091334212998.Spec : Prop :=
  ∀ n, P3195209091334212998.a n = A153772 n

end A153772

/-! ## A153772.P12647767162611182694

`abs(2-A084247(n))-2`
-/

namespace A153772.P12647767162611182694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A084247 n| - 2

end

end A153772.P12647767162611182694

namespace A153772

/-- `abs(2-A084247(n))-2` -/
def P12647767162611182694.Spec : Prop :=
  ∀ n, P12647767162611182694.a n = A153772 n

end A153772

/-! ## A153772.P7894042468227588686

`abs(A141416(2*n+1))-2`
-/

namespace A153772.P7894042468227588686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141416 (2 * n + 1)| - 2

end

end A153772.P7894042468227588686

namespace A153772

/-- `abs(A141416(2*n+1))-2` -/
def P7894042468227588686.Spec : Prop :=
  ∀ n, P7894042468227588686.a n = A153772 n

end A153772

/-! ## A153772.P5380039061001764607

`A094359(A004442(n))-2`
-/

namespace A153772.P5380039061001764607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (A004442 n).toNat - 2

end

end A153772.P5380039061001764607

namespace A153772

/-- `A094359(A004442(n))-2` -/
def P5380039061001764607.Spec : Prop :=
  ∀ n, P5380039061001764607.a n = A153772 n

end A153772

/-! ## A153772.P8548619988316843079

`A001045(n)-A010684(n)`
-/

namespace A153772.P8548619988316843079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A010684 n

end

end A153772.P8548619988316843079

namespace A153772

/-- `A001045(n)-A010684(n)` -/
def P8548619988316843079.Spec : Prop :=
  ∀ n, P8548619988316843079.a n = A153772 n

end A153772

/-! ## A153772.P15067491004725517200

`A005578(n)-A010693(n)`
-/

namespace A153772.P15067491004725517200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A010693 n

end

end A153772.P15067491004725517200

namespace A153772

/-- `A005578(n)-A010693(n)` -/
def P15067491004725517200.Spec : Prop :=
  ∀ n, P15067491004725517200.a n = A153772 n

end A153772

/-!
# A153773: a(2*n) = 3*a(2*n-1) - 1, a(2*n+1) = 3*a(2*n), with a(1)=1.

The programs for A153773, the canonical program `A153773.P12085444522958709200` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153773 has offset 1).

The definition of A153773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153773.P13181219605180097473

`ogf((1-x-x^2)/(1-3x-x^2+3x^3))`
-/

namespace A153773.P13181219605180097473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, -1, 3] n

end

end A153773.P13181219605180097473

namespace A153773

/-- `ogf((1-x-x^2)/(1-3x-x^2+3x^3))` -/
def P13181219605180097473.Spec : Prop :=
  ∀ n, P13181219605180097473.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P12085444522958709200

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153773

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P12085444522958709200.Spec : Prop :=
  ∀ n, P12085444522958709200.a n = A153773 (n + 1)

theorem P12085444522958709200.correct : P12085444522958709200.Spec := by
  intro n
  simp only [A153773, Nat.add_sub_cancel]

end A153773

/-! ## A153773.P2597051077566375027

`(5*3^(n+1)+6-3*(-1)^(n+1))/24`
-/

namespace A153773.P2597051077566375027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ (n + 1) + 6 : ℤ) - 3 * (-1) ^ (n + 1) : ℚ) / 24

end

end A153773.P2597051077566375027

namespace A153773

/-- `(5*3^(n+1)+6-3*(-1)^(n+1))/24` -/
def P2597051077566375027.Spec : Prop :=
  ∀ n, P2597051077566375027.a n = (A153773 (n + 1) : ℚ)

theorem P2597051077566375027.correct : P2597051077566375027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A153773, Nat.add_sub_cancel, A153773.P2597051077566375027.a, A153773.P12085444522958709200.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A153773, Nat.add_sub_cancel, A153773.P2597051077566375027.a, A153773.P12085444522958709200.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A153773

/-! ## A153773.P9223996619061118551

`∑[ogf((-1+x+x^2)/(-1+2x+3x^2))]`
-/

namespace A153773.P9223996619061118551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153773.P9223996619061118551

namespace A153773

/-- `∑[ogf((-1+x+x^2)/(-1+2x+3x^2))]` -/
def P9223996619061118551.Spec : Prop :=
  ∀ n, P9223996619061118551.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P15887526627558334117

`3*a(n-1)-n%2` with `a(0)=1`
-/

namespace A153773.P15887526627558334117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ((n % 2 : ℕ) : ℤ)

end

end A153773.P15887526627558334117

namespace A153773

/-- `3*a(n-1)-n%2` -/
def P15887526627558334117.Spec : Prop :=
  ∀ n, P15887526627558334117.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P6219892005571114121

`3*a(n-1)-and(1, n)` with `a(0)=1`
-/

namespace A153773.P6219892005571114121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (Nat.land 1 n : ℤ)

end

end A153773.P6219892005571114121

namespace A153773

/-- `3*a(n-1)-and(1, n)` -/
def P6219892005571114121.Spec : Prop :=
  ∀ n, P6219892005571114121.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P806835337647534962

`3*a(n-1)-char[or(1, n)]` with `a(0)=1`
-/

namespace A153773.P806835337647534962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153773.P806835337647534962

namespace A153773

/-- `3*a(n-1)-char[or(1, n)]` -/
def P806835337647534962.Spec : Prop :=
  ∀ n, P806835337647534962.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P6975017913811923059

`gcd(2, n)+3*a(n-1)-2` with `a(0)=1`
-/

namespace A153773.P6975017913811923059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 n : ℤ) + (3 * a (n - 1) - 2)

end

end A153773.P6975017913811923059

namespace A153773

/-- `gcd(2, n)+3*a(n-1)-2` -/
def P6975017913811923059.Spec : Prop :=
  ∀ n, P6975017913811923059.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P9493757302639339139

`∑[(-1)^n+3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A153773.P9493757302639339139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (-1) ^ n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153773.P9493757302639339139

namespace A153773

/-- `∑[(-1)^n+3*a(n-1)]` -/
def P9493757302639339139.Spec : Prop :=
  ∀ n, P9493757302639339139.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P1433228966075241254

`3*a(n-1)-char[2*n+1]` with `a(0)=1`
-/

namespace A153773.P1433228966075241254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153773.P1433228966075241254

namespace A153773

/-- `3*a(n-1)-char[2*n+1]` -/
def P1433228966075241254.Spec : Prop :=
  ∀ n, P1433228966075241254.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P1732929177748287601

`floor((-1)^n/2)+3*a(n-1)` with `a(0)=1`
-/

namespace A153773.P1732929177748287601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((-1) ^ n : ℚ) / 2⌋ + 3 * a (n - 1)

end

end A153773.P1732929177748287601

namespace A153773

/-- `floor((-1)^n/2)+3*a(n-1)` -/
def P1732929177748287601.Spec : Prop :=
  ∀ n, P1732929177748287601.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P13020875225253184234

`3*a(n-2)+2*a(n-1)-1` with `a(0)=1, a(1)=2`
-/

namespace A153773.P13020875225253184234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2) + 2 * a (n - 1) - 1

end

end A153773.P13020875225253184234

namespace A153773

/-- `3*a(n-2)+2*a(n-1)-1` -/
def P13020875225253184234.Spec : Prop :=
  ∀ n, P13020875225253184234.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P4662895090940393644

`a(n-1)+a(n-1)+a(n-1)-(n+2)%2` with `a(0)=1`
-/

namespace A153773.P4662895090940393644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (((n + 2) % 2 : ℕ) : ℤ)))

end

end A153773.P4662895090940393644

namespace A153773

/-- `a(n-1)+a(n-1)+a(n-1)-(n+2)%2` -/
def P4662895090940393644.Spec : Prop :=
  ∀ n, P4662895090940393644.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P9829682511080386839

`floor(A104522(n)-n/2)`
-/

namespace A153773.P9829682511080386839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104522 n : ℚ) - (n : ℚ) / 2⌋

end

end A153773.P9829682511080386839

namespace A153773

/-- `floor(A104522(n)-n/2)` -/
def P9829682511080386839.Spec : Prop :=
  ∀ n, P9829682511080386839.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P8652344975264953780

`A060925(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A153773.P8652344975264953780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060925 (n - 1) + a (n - 1)

end

end A153773.P8652344975264953780

namespace A153773

/-- `A060925(n-1)+a(n-1)` -/
def P8652344975264953780.Spec : Prop :=
  ∀ n, P8652344975264953780.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P13150738671964972746

`A015518(n)+A006342(n)`
-/

namespace A153773.P13150738671964972746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + A006342 n

end

end A153773.P13150738671964972746

namespace A153773

/-- `A015518(n)+A006342(n)` -/
def P13150738671964972746.Spec : Prop :=
  ∀ n, P13150738671964972746.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P12536971644636099744

`A183119(n)+A111277(n)`
-/

namespace A153773.P12536971644636099744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 n + A111277 n

end

end A153773.P12536971644636099744

namespace A153773

/-- `A183119(n)+A111277(n)` -/
def P12536971644636099744.Spec : Prop :=
  ∀ n, P12536971644636099744.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P2769463177518201679

`A104522(n)-A110654(n)`
-/

namespace A153773.P2769463177518201679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104522 n - A110654 n

end

end A153773.P2769463177518201679

namespace A153773

/-- `A104522(n)-A110654(n)` -/
def P2769463177518201679.Spec : Prop :=
  ∀ n, P2769463177518201679.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P10030452899467761445

`A015518(n)+∑[A054878(n)]`
-/

namespace A153773.P10030452899467761445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153773.P10030452899467761445

namespace A153773

/-- `A015518(n)+∑[A054878(n)]` -/
def P10030452899467761445.Spec : Prop :=
  ∀ n, P10030452899467761445.a n = A153773 (n + 1)

end A153773

/-! ## A153773.P6653339356109341506

`A122983(n)+∑[A015518(n)]`
-/

namespace A153773.P6653339356109341506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153773.P6653339356109341506

namespace A153773

/-- `A122983(n)+∑[A015518(n)]` -/
def P6653339356109341506.Spec : Prop :=
  ∀ n, P6653339356109341506.a n = A153773 (n + 1)

end A153773

/-!
# A153774: a(2*n) = 3*a(2*n-1), a(2*n+1) = 3*a(2*n) - 1, with a(1) = 1.

The programs for A153774, the canonical program `A153774.P5510192372821668034` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153774 has offset 1).

The definition of A153774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153774.P16480729574906379931

`ogf((1-2x^2)/(1-3x-x^2+3x^3))`
-/

namespace A153774.P16480729574906379931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, -1, 3] n

end

end A153774.P16480729574906379931

namespace A153774

/-- `ogf((1-2x^2)/(1-3x-x^2+3x^3))` -/
def P16480729574906379931.Spec : Prop :=
  ∀ n, P16480729574906379931.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P5510192372821668034

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153774

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P5510192372821668034.Spec : Prop :=
  ∀ n, P5510192372821668034.a n = A153774 (n + 1)

theorem P5510192372821668034.correct : P5510192372821668034.Spec := by
  intro n
  simp only [A153774, Nat.add_sub_cancel]

end A153774

/-! ## A153774.P6030768424335368688

`(7*3^n+2+(-1)^(n+1))/8`
-/

namespace A153774.P6030768424335368688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ n + 2 : ℤ) + (-1) ^ (n + 1) : ℚ) / 8

end

end A153774.P6030768424335368688

namespace A153774

/-- `(7*3^n+2+(-1)^(n+1))/8` -/
def P6030768424335368688.Spec : Prop :=
  ∀ n, P6030768424335368688.a n = (A153774 (n + 1) : ℚ)

theorem P6030768424335368688.correct : P6030768424335368688.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A153774, Nat.add_sub_cancel, A153774.P6030768424335368688.a, A153774.P5510192372821668034.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A153774, Nat.add_sub_cancel, A153774.P6030768424335368688.a, A153774.P5510192372821668034.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A153774

/-! ## A153774.P10243671749451201694

`∑[ogf((-1+2x^2)/(-1+2x+3x^2))]`
-/

namespace A153774.P10243671749451201694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153774.P10243671749451201694

namespace A153774

/-- `∑[ogf((-1+2x^2)/(-1+2x+3x^2))]` -/
def P10243671749451201694.Spec : Prop :=
  ∀ n, P10243671749451201694.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P9924853933185480544

`3*a(n-1)-log2(gcd(2, n))` with `a(0)=1`
-/

namespace A153774.P9924853933185480544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A153774.P9924853933185480544

namespace A153774

/-- `3*a(n-1)-log2(gcd(2, n))` -/
def P9924853933185480544.Spec : Prop :=
  ∀ n, P9924853933185480544.a n = (A153774 (n + 1) : ℝ)

end A153774

/-! ## A153774.P15728930157683088881

`3*a(n-1)-char[2*n]` with `a(0)=1`
-/

namespace A153774.P15728930157683088881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153774.P15728930157683088881

namespace A153774

/-- `3*a(n-1)-char[2*n]` -/
def P15728930157683088881.Spec : Prop :=
  ∀ n, P15728930157683088881.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P288537482753547960

`(1-n)%2+3*a(n-1)` with `a(0)=1`
-/

namespace A153774.P288537482753547960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + 3 * a (n - 1)

end

end A153774.P288537482753547960

namespace A153774

/-- `(1-n)%2+3*a(n-1)` -/
def P288537482753547960.Spec : Prop :=
  ∀ n, P288537482753547960.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P1390456644709025659

`floor(3*a(n-1)-(n-1)%2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A153774.P1390456644709025659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Int.tmod ((n : ℤ) - 1) 2

end

end A153774.P1390456644709025659

namespace A153774

/-- `floor(3*a(n-1)-(n-1)%2)` -/
def P1390456644709025659.Spec : Prop :=
  ∀ n, P1390456644709025659.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P4860001804840465559

`3*a(n-2)+2*a(n-1)-1` with `a(0)=1, a(1)=3`
-/

namespace A153774.P4860001804840465559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 2) + 2 * a (n - 1) - 1

end

end A153774.P4860001804840465559

namespace A153774

/-- `3*a(n-2)+2*a(n-1)-1` -/
def P4860001804840465559.Spec : Prop :=
  ∀ n, P4860001804840465559.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P6127923294681155847

`3*3*a(n-2)-gcd(3, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A153774.P6127923294681155847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (3 * a (n - 2)) - (Int.gcd 3 (a (n - 2)) : ℤ)

end

end A153774.P6127923294681155847

namespace A153774

/-- `3*3*a(n-2)-gcd(3, a(n-2))` -/
def P6127923294681155847.Spec : Prop :=
  ∀ n, P6127923294681155847.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P15009362109758660724

`a(n-1)-1+a(n-1)+a(n-1)+n%2` with `a(0)=1`
-/

namespace A153774.P15009362109758660724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (a (n - 1) + ((n % 2 : ℕ) : ℤ)))

end

end A153774.P15009362109758660724

namespace A153774

/-- `a(n-1)-1+a(n-1)+a(n-1)+n%2` -/
def P15009362109758660724.Spec : Prop :=
  ∀ n, P15009362109758660724.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P12608197657107066749

`∑[A307685(n+1)]-n`
-/

namespace A153774.P12608197657107066749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A153774.P12608197657107066749

namespace A153774

/-- `∑[A307685(n+1)]-n` -/
def P12608197657107066749.Spec : Prop :=
  ∀ n, P12608197657107066749.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P8853199526786398447

`A153773(n+2)-3^n`
-/

namespace A153774.P8853199526786398447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 2) - (3 ^ n : ℤ)

end

end A153774.P8853199526786398447

namespace A153774

/-- `A153773(n+2)-3^n` -/
def P8853199526786398447.Spec : Prop :=
  ∀ n, P8853199526786398447.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P9507972304406460088

`∑{#}[n, C(n, #)*A134683(#)]`
-/

namespace A153774.P9507972304406460088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A134683 k

end

end A153774.P9507972304406460088

namespace A153774

/-- `∑{#}[n, C(n, #)*A134683(#)]` -/
def P9507972304406460088.Spec : Prop :=
  ∀ n, P9507972304406460088.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P2293443515659821511

`A141495(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A153774.P2293443515659821511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A141495 n + a (n - 2)

end

end A153774.P2293443515659821511

namespace A153774

/-- `A141495(n)+a(n-2)` -/
def P2293443515659821511.Spec : Prop :=
  ∀ n, P2293443515659821511.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P18143577313018161136

`A199109(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A153774.P18143577313018161136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A199109 (n - 1) - a (n - 1)

end

end A153774.P18143577313018161136

namespace A153774

/-- `A199109(n-1)-a(n-1)` -/
def P18143577313018161136.Spec : Prop :=
  ∀ n, P18143577313018161136.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P2090846824038521372

`A007051(n+1)-(a(n-1)+3^(n-1))` with `a(0)=1`
-/

namespace A153774.P2090846824038521372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A007051 (n + 1) : ℚ) - (a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A153774.P2090846824038521372

namespace A153774

/-- `A007051(n+1)-(a(n-1)+3^(n-1))` -/
def P2090846824038521372.Spec : Prop :=
  ∀ n, P2090846824038521372.a n = (A153774 (n + 1) : ℚ)

end A153774

/-! ## A153774.P10625272494144213112

`A039300(n)+A003462(n)`
-/

namespace A153774.P10625272494144213112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n + A003462 n

end

end A153774.P10625272494144213112

namespace A153774

/-- `A039300(n)+A003462(n)` -/
def P10625272494144213112.Spec : Prop :=
  ∀ n, P10625272494144213112.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P13445050530707677889

`A006342(n+1)-A015518(n)`
-/

namespace A153774.P13445050530707677889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (n + 1) - A015518 n

end

end A153774.P13445050530707677889

namespace A153774

/-- `A006342(n+1)-A015518(n)` -/
def P13445050530707677889.Spec : Prop :=
  ∀ n, P13445050530707677889.a n = A153774 (n + 1)

end A153774

/-! ## A153774.P8465229635584594486

`A037480(n+1)-A024023(n)`
-/

namespace A153774.P8465229635584594486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037480 (n + 1) - A024023 n

end

end A153774.P8465229635584594486

namespace A153774

/-- `A037480(n+1)-A024023(n)` -/
def P8465229635584594486.Spec : Prop :=
  ∀ n, P8465229635584594486.a n = A153774 (n + 1)

end A153774

/-!
# A153775: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x are in S.

The programs for A153775, the canonical program `A153775.P10416961851045421435` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153775 has offset 1).

The definition of A153775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153775.P3609583744995816967

`record[3*a(floor(n/2))+n-2*floor(n/2)+1]+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A153775.P3609583744995816967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A153775.P3609583744995816967

namespace A153775

/-- `record[3*a(floor(n/2))+n-2*floor(n/2)+1]+1` -/
def P3609583744995816967.Spec : Prop :=
  ∀ n, P3609583744995816967.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P843453713108640816

`ceil(A191110(n+1)/2)`
-/

namespace A153775.P843453713108640816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191110 (n + 1) : ℚ) / 2⌉

end

end A153775.P843453713108640816

namespace A153775

/-- `ceil(A191110(n+1)/2)` -/
def P843453713108640816.Spec : Prop :=
  ∀ n, P843453713108640816.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P16058958996692403970

`(A259566(n+1)+2)/3`
-/

namespace A153775.P16058958996692403970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259566 (n + 1) + 2 : ℚ) / 3

end

end A153775.P16058958996692403970

namespace A153775

/-- `(A259566(n+1)+2)/3` -/
def P16058958996692403970.Spec : Prop :=
  ∀ n, P16058958996692403970.a n = (A153775 (n + 1) : ℚ)

end A153775

/-! ## A153775.P5541680177724396477

`∑[A048673(A135517(n))]`
-/

namespace A153775.P5541680177724396477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A135517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153775.P5541680177724396477

namespace A153775

/-- `∑[A048673(A135517(n))]` -/
def P5541680177724396477.Spec : Prop :=
  ∀ n, P5541680177724396477.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P10416961851045421435

`A005823(n+2)-A132140(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153775

/-- `A005823(n+2)-A132140(n+1)` -/
def P10416961851045421435.Spec : Prop :=
  ∀ n, P10416961851045421435.a n = A153775 (n + 1)

theorem P10416961851045421435.correct : P10416961851045421435.Spec := by
  intro n
  simp only [A153775, Nat.add_sub_cancel]

end A153775

/-! ## A153775.P246500009990564650

`∪[A191109(n+1)+1, A191109(n+1)]`
-/

namespace A153775.P246500009990564650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153775.P246500009990564650

namespace A153775

/-- `∪[A191109(n+1)+1, A191109(n+1)]` -/
def P246500009990564650.Spec : Prop :=
  ∀ n, (P246500009990564650.a n : ℤ) = A153775 (n + 1)

end A153775

/-! ## A153775.P4359452215447169642

`(A191109(n+2)+1)/3`
-/

namespace A153775.P4359452215447169642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191109 (n + 2) + 1 : ℚ) / 3

end

end A153775.P4359452215447169642

namespace A153775

/-- `(A191109(n+2)+1)/3` -/
def P4359452215447169642.Spec : Prop :=
  ∀ n, P4359452215447169642.a n = (A153775 (n + 1) : ℚ)

end A153775

/-! ## A153775.P16541955279164174866

`A191109(n+2)-A191110(n+1)`
-/

namespace A153775.P16541955279164174866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - A191110 (n + 1)

end

end A153775.P16541955279164174866

namespace A153775

/-- `A191109(n+2)-A191110(n+1)` -/
def P16541955279164174866.Spec : Prop :=
  ∀ n, P16541955279164174866.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P16229268356089733294

`A005836(n+2)-A003462(A000523(n+1))`
-/

namespace A153775.P16229268356089733294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A003462 (A000523 (n + 1)).toNat

end

end A153775.P16229268356089733294

namespace A153775

/-- `A005836(n+2)-A003462(A000523(n+1))` -/
def P16229268356089733294.Spec : Prop :=
  ∀ n, P16229268356089733294.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P1194447392331487715

`A003278(n+2)-A003278(A053644(n+1))`
-/

namespace A153775.P1194447392331487715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 2) - A003278 (A053644 (n + 1)).toNat

end

end A153775.P1194447392331487715

namespace A153775

/-- `A003278(n+2)-A003278(A053644(n+1))` -/
def P1194447392331487715.Spec : Prop :=
  ∀ n, P1194447392331487715.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P10526385269520302226

`A005836(n+2)-A005836(A053644(n+1))`
-/

namespace A153775.P10526385269520302226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A005836 (A053644 (n + 1)).toNat

end

end A153775.P10526385269520302226

namespace A153775

/-- `A005836(n+2)-A005836(A053644(n+1))` -/
def P10526385269520302226.Spec : Prop :=
  ∀ n, P10526385269520302226.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P1880079201927415952

`A147991(n+1)+A005836(n+2)-A191110(n+1)`
-/

namespace A153775.P1880079201927415952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147991 (n + 1) + (A005836 (n + 2) - A191110 (n + 1))

end

end A153775.P1880079201927415952

namespace A153775

/-- `A147991(n+1)+A005836(n+2)-A191110(n+1)` -/
def P1880079201927415952.Spec : Prop :=
  ∀ n, P1880079201927415952.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P14098003175739718178

`A005836(n+2)+A005836(n+2)-A132140(n+1)`
-/

namespace A153775.P14098003175739718178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) + (A005836 (n + 2) - A132140 (n + 1))

end

end A153775.P14098003175739718178

namespace A153775

/-- `A005836(n+2)+A005836(n+2)-A132140(n+1)` -/
def P14098003175739718178.Spec : Prop :=
  ∀ n, P14098003175739718178.a n = A153775 (n + 1)

theorem P14098003175739718178.correct : P14098003175739718178.Spec := by
  intro n
  simp only [A153775, Nat.add_sub_cancel, A153775.P14098003175739718178.a, A153775.P10416961851045421435.a, A005823, A005823.P15253501149959078210.a, A005836, A005836.P12367569128854000442.a, A132140, A132140.P1279910826299744396.f1, A132140.P1279910826299744396.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153775

/-! ## A153775.P8062841933821138401

`A191108(n+2)-(A191106(n+2)+A132140(n+1))`
-/

namespace A153775.P8062841933821138401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 2) - (A191106 (n + 2) + A132140 (n + 1))

end

end A153775.P8062841933821138401

namespace A153775

/-- `A191108(n+2)-(A191106(n+2)+A132140(n+1))` -/
def P8062841933821138401.Spec : Prop :=
  ∀ n, P8062841933821138401.a n = A153775 (n + 1)

theorem P8062841933821138401.correct : P8062841933821138401.Spec := by
  intro n
  simp only [A153775, Nat.add_sub_cancel, A153775.P8062841933821138401.a, A153775.P10416961851045421435.a, A005823, A005823.P15253501149959078210.a, A132140, A132140.P1279910826299744396.f1, A132140.P1279910826299744396.a, A191106, A191106.P14318960782642290276.a, A191108, A191108.P16458009110707439268.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153775

/-! ## A153775.P7705992411795951977

`(A032924(Δ[n²])+2)/3`
-/

namespace A153775.P7705992411795951977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2 : ℚ) / 3

end

end A153775.P7705992411795951977

namespace A153775

/-- `(A032924(Δ[n²])+2)/3` -/
def P7705992411795951977.Spec : Prop :=
  ∀ n, P7705992411795951977.a n = (A153775 (n + 1) : ℚ)

end A153775

/-! ## A153775.P2799815563552562066

`ceil(A032924(2*n+1)/3)`
-/

namespace A153775.P2799815563552562066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032924 (2 * n + 1) : ℚ) / 3⌉

end

end A153775.P2799815563552562066

namespace A153775

/-- `ceil(A032924(2*n+1)/3)` -/
def P2799815563552562066.Spec : Prop :=
  ∀ n, P2799815563552562066.a n = A153775 (n + 1)

end A153775

/-! ## A153775.P4928176006017897485

`a(n-1)+a(A291770(a(n-1)))` with `a(0)=1`
-/

namespace A153775.P4928176006017897485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A291770 (a (n - 1))).toNat

end

end A153775.P4928176006017897485

namespace A153775

/-- `a(n-1)+a(A291770(a(n-1)))` -/
def P4928176006017897485.Spec : Prop :=
  ∀ n, (P4928176006017897485.a n : ℤ) = A153775 (n + 1)

end A153775

/-! ## A153775.P11379788330786241685

`eq[1, A054390(n)]+1`
-/

namespace A153775.P11379788330786241685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153775.P11379788330786241685

namespace A153775

/-- `eq[1, A054390(n)]+1` -/
def P11379788330786241685.Spec : Prop :=
  ∀ n, (P11379788330786241685.a n : ℤ) = A153775 (n + 1)

end A153775

/-! ## A153775.P13702740072540938898

`record[gcd(n, A026144(n+1))]`
-/

namespace A153775.P13702740072540938898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A026144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153775.P13702740072540938898

namespace A153775

/-- `record[gcd(n, A026144(n+1))]` -/
def P13702740072540938898.Spec : Prop :=
  ∀ n, (P13702740072540938898.a n : ℤ) = A153775 (n + 1)

end A153775

/-! ## A153775.P2692678324878453057

`eq[A058281(n), A134024(n)]`
-/

namespace A153775.P2692678324878453057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153775.P2692678324878453057

namespace A153775

/-- `eq[A058281(n), A134024(n)]` -/
def P2692678324878453057.Spec : Prop :=
  ∀ n, (P2692678324878453057.a n : ℤ) = A153775 (n + 1)

end A153775

/-!
# A153776: Sequence S such that 1 is in S and if x is in S, then 5x-3 and 5x-1 are in S.

The programs for A153776, the canonical program `A153776.P10293732672639534286` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153776 has offset 1).

The definition of A153776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153776.P16185019772119028035

`ceil(A032912(1+n*2)/5)`
-/

namespace A153776.P16185019772119028035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032912 (1 + n * 2) : ℚ) / 5⌉

end

end A153776.P16185019772119028035

namespace A153776

/-- `ceil(A032912(1+n*2)/5)` -/
def P16185019772119028035.Spec : Prop :=
  ∀ n, P16185019772119028035.a n = A153776 (n + 1)

end A153776

/-! ## A153776.P7687001860581310534

`round(A032912(2*(1+n))/5)`
-/

namespace A153776.P7687001860581310534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032912 (2 * (1 + n)) : ℚ) / 5)

end

end A153776.P7687001860581310534

namespace A153776

/-- `round(A032912(2*(1+n))/5)` -/
def P7687001860581310534.Spec : Prop :=
  ∀ n, P7687001860581310534.a n = A153776 (n + 1)

end A153776

/-! ## A153776.P10293732672639534286

`∑[A294566(A111982(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A153776

/-- `∑[A294566(A111982(n))]` -/
def P10293732672639534286.Spec : Prop :=
  ∀ n, P10293732672639534286.a n = A153776 (n + 1)

theorem P10293732672639534286.correct : P10293732672639534286.Spec := by
  intro n
  simp only [A153776, Nat.add_sub_cancel]

end A153776

/-! ## A153776.P12963522038328431632

`A057427(n)+A032912(A028310(n))`
-/

namespace A153776.P12963522038328431632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032912 (A028310 n).toNat

end

end A153776.P12963522038328431632

namespace A153776

/-- `A057427(n)+A032912(A028310(n))` -/
def P12963522038328431632.Spec : Prop :=
  ∀ n, P12963522038328431632.a n = A153776 (n + 1)

end A153776

/-! ## A153776.P8583553480011019056

`A032912(A028310(n))-A057428(n)`
-/

namespace A153776.P8583553480011019056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032912 (A028310 n).toNat - A057428 n

end

end A153776.P8583553480011019056

namespace A153776

/-- `A032912(A028310(n))-A057428(n)` -/
def P8583553480011019056.Spec : Prop :=
  ∀ n, P8583553480011019056.a n = A153776 (n + 1)

end A153776

/-! ## A153776.P11698907299710709617

`round(A000007(n)+A032912(A103517(n))/5)`
-/

namespace A153776.P11698907299710709617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A032912 (A103517 n).toNat : ℚ) / 5)

end

end A153776.P11698907299710709617

namespace A153776

/-- `round(A000007(n)+A032912(A103517(n))/5)` -/
def P11698907299710709617.Spec : Prop :=
  ∀ n, P11698907299710709617.a n = A153776 (n + 1)

end A153776

/-! ## A153776.P8388674356599239425

`floor(A057427(2*(n+1))+A032912(A103517(n))/5)`
-/

namespace A153776.P8388674356599239425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (2 * (n + 1)) : ℚ) + (A032912 (A103517 n).toNat : ℚ) / 5⌋

end

end A153776.P8388674356599239425

namespace A153776

/-- `floor(A057427(2*(n+1))+A032912(A103517(n))/5)` -/
def P8388674356599239425.Spec : Prop :=
  ∀ n, P8388674356599239425.a n = A153776 (n + 1)

end A153776

/-!
# A153777: Sequence S such that 1 is in S and if x is in S, then 5x-1 and 5x+1 are in S.

The programs for A153777, the canonical program `A153777.P14713501118659462030` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153777 has offset 1).

The definition of A153777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153777.P14713501118659462030

`A033042(n+1)-A033042(n+1-A006257(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153777

/-- `A033042(n+1)-A033042(n+1-A006257(n+1))` -/
def P14713501118659462030.Spec : Prop :=
  ∀ n, P14713501118659462030.a n = A153777 (n + 1)

theorem P14713501118659462030.correct : P14713501118659462030.Spec := by
  intro n
  simp only [A153777, Nat.add_sub_cancel]

end A153777

/-! ## A153777.P2650947836153353128

`record[A032817(n+2)-A032805(n+2)]`
-/

namespace A153777.P2650947836153353128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032817 (n + 2) - A032805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153777.P2650947836153353128

namespace A153777

/-- `record[A032817(n+2)-A032805(n+2)]` -/
def P2650947836153353128.Spec : Prop :=
  ∀ n, P2650947836153353128.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P3798163689273571958

`∑[A294566(A127750(n))]`
-/

namespace A153777.P3798163689273571958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (A127750 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153777.P3798163689273571958

namespace A153777

/-- `∑[A294566(A127750(n))]` -/
def P3798163689273571958.Spec : Prop :=
  ∀ n, P3798163689273571958.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P15594753562666954779

`A360099(Δ[A023551(n+2)])`
-/

namespace A153777.P15594753562666954779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (f1 (n + 1) - f1 n).toNat

end

end A153777.P15594753562666954779

namespace A153777

/-- `A360099(Δ[A023551(n+2)])` -/
def P15594753562666954779.Spec : Prop :=
  ∀ n, P15594753562666954779.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P10670116033806716151

`A360099(A052905(n+4)-1)`
-/

namespace A153777.P10670116033806716151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A052905 (n + 4) - 1).toNat

end

end A153777.P10670116033806716151

namespace A153777

/-- `A360099(A052905(n+4)-1)` -/
def P10670116033806716151.Spec : Prop :=
  ∀ n, P10670116033806716151.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P1360940255545821128

`A360099(A056000(n+3)+4)`
-/

namespace A153777.P1360940255545821128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A056000 (n + 3) + 4).toNat

end

end A153777.P1360940255545821128

namespace A153777

/-- `A360099(A056000(n+3)+4)` -/
def P1360940255545821128.Spec : Prop :=
  ∀ n, P1360940255545821128.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P5363004915157501876

`A023729(A147992(n+1)+1)`
-/

namespace A153777.P5363004915157501876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A147992 (n + 1) + 1).toNat

end

end A153777.P5363004915157501876

namespace A153777

/-- `A023729(A147992(n+1)+1)` -/
def P5363004915157501876.Spec : Prop :=
  ∀ n, P5363004915157501876.a n = A153777 (n + 1)

end A153777

/-! ## A153777.P2765304170678605159

`A303788(A032927(2*(n+1))/2)`
-/

namespace A153777.P2765304170678605159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (SequenceMachineLib.roundAway ((A032927 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A153777.P2765304170678605159

namespace A153777

/-- `A303788(A032927(2*(n+1))/2)` -/
def P2765304170678605159.Spec : Prop :=
  ∀ n, P2765304170678605159.a n = A153777 (n + 1)

end A153777

/-!
# A153778: Binary sequence constructed like a Stern-Brocot tree between 0 and 1, where XOR is applied instead of the mediant operation.

The programs for A153778, the canonical program `A153778.P12263127560007309379` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153778 has offset 1).

The definition of A153778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153778.P12263127560007309379

`(gcd(2, floor(log2(n+1)))+n)²%3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153778

/-- `(gcd(2, floor(log2(n+1)))+n)²%3` -/
def P12263127560007309379.Spec : Prop :=
  ∀ n, (P12263127560007309379.a n : ℤ) = A153778 (n + 1)

theorem P12263127560007309379.correct : P12263127560007309379.Spec := by
  intro n
  simp only [A153778, Nat.add_sub_cancel]

end A153778

/-! ## A153778.P17099386401253608061

`((n-2^floor(log2(n+1)))^4)%3`
-/

namespace A153778.P17099386401253608061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ)) ^ 4) 3

end

end A153778.P17099386401253608061

namespace A153778

/-- `((n-2^floor(log2(n+1)))^4)%3` -/
def P17099386401253608061.Spec : Prop :=
  ∀ n, P17099386401253608061.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P9171164829541313362

`abs(1-lt[xor(n, floor(n/2)), n]%3)`
-/

namespace A153778.P9171164829541313362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 3 : ℕ) : ℤ)|

end

end A153778.P9171164829541313362

namespace A153778

/-- `abs(1-lt[xor(n, floor(n/2)), n]%3)` -/
def P9171164829541313362.Spec : Prop :=
  ∀ n, P9171164829541313362.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P6297674448087110008

`abs((floor(log2(n+1))%2-n)%3+1)`
-/

namespace A153778.P6297674448087110008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (((Nat.log 2 (n + 1) % 2 : ℕ) : ℤ) - (n : ℤ)) 3 + 1|

end

end A153778.P6297674448087110008

namespace A153778

/-- `abs((floor(log2(n+1))%2-n)%3+1)` -/
def P6297674448087110008.Spec : Prop :=
  ∀ n, P6297674448087110008.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P10061932715290977102

`abs(1-lt[n, 2*and(n, 2*n)]%3)`
-/

namespace A153778.P10061932715290977102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 3 : ℕ) : ℤ)|

end

end A153778.P10061932715290977102

namespace A153778

/-- `abs(1-lt[n, 2*and(n, 2*n)]%3)` -/
def P10061932715290977102.Spec : Prop :=
  ∀ n, P10061932715290977102.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P8044393444689721765

`abs(A065251(n+1))`
-/

namespace A153778.P8044393444689721765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065251 (n + 1)|

end

end A153778.P8044393444689721765

namespace A153778

/-- `abs(A065251(n+1))` -/
def P8044393444689721765.Spec : Prop :=
  ∀ n, P8044393444689721765.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P13601603203726568403

`and(1, A007305(n+2))`
-/

namespace A153778.P13601603203726568403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007305 (n + 2))

end

end A153778.P13601603203726568403

namespace A153778

/-- `and(1, A007305(n+2))` -/
def P13601603203726568403.Spec : Prop :=
  ∀ n, P13601603203726568403.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P17049305731707359696

`floor(sqrt(A065252(n+1)))`
-/

namespace A153778.P17049305731707359696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065252 (n + 1))

end

end A153778.P17049305731707359696

namespace A153778

/-- `floor(sqrt(A065252(n+1)))` -/
def P17049305731707359696.Spec : Prop :=
  ∀ n, P17049305731707359696.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P14390060811162886899

`A065251(4*(n+1))²`
-/

namespace A153778.P14390060811162886899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065251 (4 * (n + 1)) ^ 2

end

end A153778.P14390060811162886899

namespace A153778

/-- `A065251(4*(n+1))²` -/
def P14390060811162886899.Spec : Prop :=
  ∀ n, P14390060811162886899.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P8744086635380573509

`2-gcd(2, A293722(n+1))`
-/

namespace A153778.P8744086635380573509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A293722 (n + 1)) : ℤ)

end

end A153778.P8744086635380573509

namespace A153778

/-- `2-gcd(2, A293722(n+1))` -/
def P8744086635380573509.Spec : Prop :=
  ∀ n, P8744086635380573509.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P10927320163983806898

`abs(1-A004755(n+1)%3)`
-/

namespace A153778.P10927320163983806898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod (A004755 (n + 1)) 3|

end

end A153778.P10927320163983806898

namespace A153778

/-- `abs(1-A004755(n+1)%3)` -/
def P10927320163983806898.Spec : Prop :=
  ∀ n, P10927320163983806898.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P10634834029336819048

`abs(1-A004758(n+1)%3)`
-/

namespace A153778.P10634834029336819048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod (A004758 (n + 1)) 3|

end

end A153778.P10634834029336819048

namespace A153778

/-- `abs(1-A004758(n+1)%3)` -/
def P10634834029336819048.Spec : Prop :=
  ∀ n, P10634834029336819048.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P768785986656767433

`abs(1-A004760(n+3)%3)`
-/

namespace A153778.P768785986656767433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod (A004760 (n + 3)) 3|

end

end A153778.P768785986656767433

namespace A153778

/-- `abs(1-A004760(n+3)%3)` -/
def P768785986656767433.Spec : Prop :=
  ∀ n, P768785986656767433.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P8263525359465267817

`(1-A053645(n+1)%3)²`
-/

namespace A153778.P8263525359465267817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (A053645 (n + 1)) 3) ^ 2

end

end A153778.P8263525359465267817

namespace A153778

/-- `(1-A053645(n+1)%3)²` -/
def P8263525359465267817.Spec : Prop :=
  ∀ n, P8263525359465267817.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P7328230011321125426

`char[lcm(n+1, A065251(n+2))]`
-/

namespace A153778.P7328230011321125426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A065251 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A153778.P7328230011321125426

namespace A153778

/-- `char[lcm(n+1, A065251(n+2))]` -/
def P7328230011321125426.Spec : Prop :=
  ∀ n, (P7328230011321125426.a n : ℤ) = A153778 (n + 1)

end A153778

/-! ## A153778.P13184039627002889675

`A065251(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A153778.P13184039627002889675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065251 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A153778.P13184039627002889675

namespace A153778

/-- `A065251(n*a(n-1)+1)` -/
def P13184039627002889675.Spec : Prop :=
  ∀ n, P13184039627002889675.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P9044722005395180878

`A065252(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A153778.P9044722005395180878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065252 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A153778.P9044722005395180878

namespace A153778

/-- `A065252(n*a(n-1)+1)` -/
def P9044722005395180878.Spec : Prop :=
  ∀ n, P9044722005395180878.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P4486195718848051300

`A065251((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A153778.P4486195718848051300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A153778.P4486195718848051300

namespace A153778

/-- `A065251((n+1)^a(n-1))` -/
def P4486195718848051300.Spec : Prop :=
  ∀ n, P4486195718848051300.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P16629112084742283926

`A065252((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A153778.P16629112084742283926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065252 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A153778.P16629112084742283926

namespace A153778

/-- `A065252((n+1)^a(n-1))` -/
def P16629112084742283926.Spec : Prop :=
  ∀ n, P16629112084742283926.a n = A153778 (n + 1)

end A153778

/-! ## A153778.P12644432644144587585

`A130630(A256255(n))`
-/

namespace A153778.P12644432644144587585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130630 (A256255 n).toNat

end

end A153778.P12644432644144587585

namespace A153778

/-- `A130630(A256255(n))` -/
def P12644432644144587585.Spec : Prop :=
  ∀ n, P12644432644144587585.a n = A153778 (n + 1)

end A153778

/-!
# A153780: 10 times pentagonal numbers: a(n) = 5*n*(3*n-1).

The programs for A153780, the canonical program `A153780.P13444899708151239759` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153780 has offset 0).

The definition of A153780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(3*n-1)` (program `A153780.P13444899708151239759`, by `A153780.P13444899708151239759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153780.P1784783793896016624

`15*n²-5*n`
-/

namespace A153780.P1784783793896016624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 : ℤ) - (5 * n : ℤ)

end

end A153780.P1784783793896016624

namespace A153780

/-- `15*n²-5*n` -/
def P1784783793896016624.Spec : Prop :=
  ∀ n, P1784783793896016624.a n = A153780 n

theorem P1784783793896016624.correct : P1784783793896016624.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P1784783793896016624.a, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153780

/-! ## A153780.P13444899708151239759

`5*n*(3*n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153780

/-- `5*n*(3*n-1)` -/
def P13444899708151239759.Spec : Prop :=
  ∀ n, P13444899708151239759.a n = A153780 n

theorem P13444899708151239759.correct : P13444899708151239759.Spec := by
  intro n
  simp only [A153780]

end A153780

/-! ## A153780.P16120546297401774005

`ogf((10x+20x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153780.P16120546297401774005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 20] [1, -3, 3, -1] n

end

end A153780.P16120546297401774005

namespace A153780

/-- `ogf((10x+20x^2)/(1-3x+3x^2-x^3))` -/
def P16120546297401774005.Spec : Prop :=
  ∀ n, P16120546297401774005.a n = A153780 n

end A153780

/-! ## A153780.P808191986520728966

`10*(C(n, 2)+n²)`
-/

namespace A153780.P808191986520728966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (Nat.choose n 2 + n ^ 2)

end

end A153780.P808191986520728966

namespace A153780

/-- `10*(C(n, 2)+n²)` -/
def P808191986520728966.Spec : Prop :=
  ∀ n, (P808191986520728966.a n : ℤ) = A153780 n

theorem P808191986520728966.correct : P808191986520728966.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P808191986520728966.a, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P12181052465103038041

`10*C(3*n, 2)/3`
-/

namespace A153780.P12181052465103038041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((Nat.choose (3 * n) 2 : ℚ) / 3)

end

end A153780.P12181052465103038041

namespace A153780

/-- `10*C(3*n, 2)/3` -/
def P12181052465103038041.Spec : Prop :=
  ∀ n, P12181052465103038041.a n = (A153780 n : ℚ)

theorem P12181052465103038041.correct : P12181052465103038041.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P12181052465103038041.a, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P4809187100652965418

`∑[a(n-1)+30]` with `a(0)=0, a(1)=10`
-/

namespace A153780.P4809187100652965418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153780.P4809187100652965418

namespace A153780

/-- `∑[a(n-1)+30]` -/
def P4809187100652965418.Spec : Prop :=
  ∀ n, (P4809187100652965418.a n : ℤ) = A153780 n

end A153780

/-! ## A153780.P3345032525237052347

`5*A033579(n)/2`
-/

namespace A153780.P3345032525237052347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A033579 n : ℚ) / 2

end

end A153780.P3345032525237052347

namespace A153780

/-- `5*A033579(n)/2` -/
def P3345032525237052347.Spec : Prop :=
  ∀ n, P3345032525237052347.a n = (A153780 n : ℚ)

theorem P3345032525237052347.correct : P3345032525237052347.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P3345032525237052347.a, A153780.P13444899708151239759.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P9805310738839161311

`5*A152743(n)/3`
-/

namespace A153780.P9805310738839161311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A152743 n : ℚ) / 3

end

end A153780.P9805310738839161311

namespace A153780

/-- `5*A152743(n)/3` -/
def P9805310738839161311.Spec : Prop :=
  ∀ n, P9805310738839161311.a n = (A153780 n : ℚ)

theorem P9805310738839161311.correct : P9805310738839161311.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P9805310738839161311.a, A153780.P13444899708151239759.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P9772246848565867117

`5*A014642(n)/4`
-/

namespace A153780.P9772246848565867117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A014642 n : ℚ) / 4

end

end A153780.P9772246848565867117

namespace A153780

/-- `5*A014642(n)/4` -/
def P9772246848565867117.Spec : Prop :=
  ∀ n, P9772246848565867117.a n = (A153780 n : ℚ)

theorem P9772246848565867117.correct : P9772246848565867117.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P9772246848565867117.a, A153780.P13444899708151239759.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P12430655679727505896

`lcm(A049450(n), A152734(n))`
-/

namespace A153780.P12430655679727505896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049450 n) (A152734 n)

end

end A153780.P12430655679727505896

namespace A153780

/-- `lcm(A049450(n), A152734(n))` -/
def P12430655679727505896.Spec : Prop :=
  ∀ n, (P12430655679727505896.a n : ℤ) = A153780 n

end A153780

/-! ## A153780.P6877672400475704531

`A247155(n)%A143838(n+1)`
-/

namespace A153780.P6877672400475704531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247155 n) (A143838 (n + 1))

end

end A153780.P6877672400475704531

namespace A153780

/-- `A247155(n)%A143838(n+1)` -/
def P6877672400475704531.Spec : Prop :=
  ∀ n, P6877672400475704531.a n = A153780 n

end A153780

/-! ## A153780.P10965603703863398106

`A153795(2*n)/4`
-/

namespace A153780.P10965603703863398106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153795 (2 * n) : ℚ) / 4

end

end A153780.P10965603703863398106

namespace A153780

/-- `A153795(2*n)/4` -/
def P10965603703863398106.Spec : Prop :=
  ∀ n, P10965603703863398106.a n = (A153780 n : ℚ)

theorem P10965603703863398106.correct : P10965603703863398106.Spec := by
  intro n
  simp only [A153780, Nat.add_sub_cancel, A153780.P10965603703863398106.a, A153780.P13444899708151239759.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153780

/-! ## A153780.P14612866724456619223

`A033438(A101328(n+2))`
-/

namespace A153780.P14612866724456619223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033438 (A101328 (n + 2)).toNat

end

end A153780.P14612866724456619223

namespace A153780

/-- `A033438(A101328(n+2))` -/
def P14612866724456619223.Spec : Prop :=
  ∀ n, P14612866724456619223.a n = A153780 n

end A153780

/-!
# A153781: Numbers n such that n^2+13n+23 is prime.

The programs for A153781, there is no canonical definition to state claims against.
-/

/-! ## A153781.P6746111132269939382

`eq[1, A001222((n+2)*(n+11)+1)]`
-/

namespace A153781.P6746111132269939382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) * (n + 11) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153781.P6746111132269939382

/-! ## A153781.P903131418786708807

`eq[1, A033273((n+2)*(n+11)+1)]`
-/

namespace A153781.P903131418786708807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 ((n + 2) * (n + 11) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153781.P903131418786708807

/-! ## A153781.P6791264780077904821

`eq[2, A000005((n+2)*(n+11)+1)]`
-/

namespace A153781.P6791264780077904821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) * (n + 11) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153781.P6791264780077904821

/-! ## A153781.P12365773827395146049

`lt[A001222((n+11)*(n+2)+1), 2]`
-/

namespace A153781.P12365773827395146049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 11) * (n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153781.P12365773827395146049

/-! ## A153781.P10160274413802304578

`eq[1, A101264(A056000(n+2))]`
-/

namespace A153781.P10160274413802304578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A056000 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153781.P10160274413802304578

/-! ## A153781.P16745234224708185701

`lt[A000005(A275591(n+2)), 3]`
-/

namespace A153781.P16745234224708185701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A275591 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153781.P16745234224708185701

/-! ## A153781.P11424744614280079986

`lt[A275591(n), A006530(A275591(n+2))]`
-/

namespace A153781.P11424744614280079986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A275591 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153781.P11424744614280079986

/-! ## A153781.P18116359547593175021

`lt[A003842(n)/9, A101264(A056000(n+2))]`
-/

namespace A153781.P18116359547593175021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003842 n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A056000 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A153781.P18116359547593175021

/-! ## A153781.P9542161125296017158

`lt[A004547(n+1)/9, A101264(A056000(n+2))]`
-/

namespace A153781.P9542161125296017158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004547 (n + 1) : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A056000 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A153781.P9542161125296017158

/-! ## A153781.P14516375580485346804

`lt[A000005(A056000(n+2)+A056000(n+2)+1), 3]`
-/

namespace A153781.P14516375580485346804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056000 (n + 2) + (A056000 (n + 2) + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153781.P14516375580485346804

/-!
# A153783: 3 times 11-gonal (or hendecagonal) numbers: a(n) = 3*n*(9*n-7)/2.

The programs for A153783, the canonical program `A153783.P13852090379155657572` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153783 has offset 0).

The definition of A153783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(9*n-7)/2` (program `A153783.P12297271167709050130`, by `A153783.P12297271167709050130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153783.P15549594620800793167

`ogf((3x+24x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153783.P15549594620800793167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 24] [1, -3, 3, -1] n

end

end A153783.P15549594620800793167

namespace A153783

/-- `ogf((3x+24x^2)/(1-3x+3x^2-x^3))` -/
def P15549594620800793167.Spec : Prop :=
  ∀ n, P15549594620800793167.a n = A153783 n

end A153783

/-! ## A153783.P4432231907660822254

`(27*n²-21*n)/2`
-/

namespace A153783.P4432231907660822254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 * n ^ 2 : ℤ) - (21 * n : ℤ) : ℚ) / 2

end

end A153783.P4432231907660822254

namespace A153783

/-- `(27*n²-21*n)/2` -/
def P4432231907660822254.Spec : Prop :=
  ∀ n, P4432231907660822254.a n = (A153783 n : ℚ)

theorem P4432231907660822254.correct : P4432231907660822254.Spec := by
  intro n
  induction n with
  | zero => simp [A153783, A153783.P4432231907660822254.a, A153783.P13852090379155657572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153783, Nat.add_sub_cancel, A153783.P4432231907660822254.a, A153783.P13852090379155657572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153783

/-! ## A153783.P12297271167709050130

`3*n*(9*n-7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153783.P12297271167709050130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * ((9 * n : ℤ) - 7) : ℚ) / 2

end

end A153783.P12297271167709050130

namespace A153783

/-- `3*n*(9*n-7)/2` -/
def P12297271167709050130.Spec : Prop :=
  ∀ n, P12297271167709050130.a n = (A153783 n : ℚ)

theorem P12297271167709050130.correct : P12297271167709050130.Spec := by
  intro n
  induction n with
  | zero => simp [A153783, A153783.P12297271167709050130.a, A153783.P13852090379155657572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153783, Nat.add_sub_cancel, A153783.P12297271167709050130.a, A153783.P13852090379155657572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153783

/-! ## A153783.P13852090379155657572

`27*n+a(n-1)-24` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153783

/-- `27*n+a(n-1)-24` -/
def P13852090379155657572.Spec : Prop :=
  ∀ n, P13852090379155657572.a n = A153783 n

theorem P13852090379155657572.correct : P13852090379155657572.Spec := by
  intro n
  simp only [A153783]

end A153783

/-! ## A153783.P9463973451134807603

`A051682(n)*3`
-/

namespace A153783.P9463973451134807603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n * 3

end

end A153783.P9463973451134807603

namespace A153783

/-- `A051682(n)*3` -/
def P9463973451134807603.Spec : Prop :=
  ∀ n, P9463973451134807603.a n = A153783 n

end A153783

/-! ## A153783.P16265359944345652490

`∑[a(n-1)+27]` with `a(0)=0, a(1)=3`
-/

namespace A153783.P16265359944345652490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153783.P16265359944345652490

namespace A153783

/-- `∑[a(n-1)+27]` -/
def P16265359944345652490.Spec : Prop :=
  ∀ n, (P16265359944345652490.a n : ℤ) = A153783 n

end A153783

/-! ## A153783.P10740929819859557983

`3*A051682(n)`
-/

namespace A153783.P10740929819859557983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051682 n

end

end A153783.P10740929819859557983

namespace A153783

/-- `3*A051682(n)` -/
def P10740929819859557983.Spec : Prop :=
  ∀ n, P10740929819859557983.a n = A153783 n

end A153783

/-! ## A153783.P15916805035847973819

`A152760(n)-∑[n]`
-/

namespace A153783.P15916805035847973819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153783.P15916805035847973819

namespace A153783

/-- `A152760(n)-∑[n]` -/
def P15916805035847973819.Spec : Prop :=
  ∀ n, P15916805035847973819.a n = A153783 n

end A153783

/-! ## A153783.P16764565952670352988

`3*(A117625(n)-1)`
-/

namespace A153783.P16764565952670352988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A117625 n - 1)

end

end A153783.P16764565952670352988

namespace A153783

/-- `3*(A117625(n)-1)` -/
def P16764565952670352988.Spec : Prop :=
  ∀ n, P16764565952670352988.a n = A153783 n

end A153783

/-! ## A153783.P5471687341724072382

`3/2*A152995(n)`
-/

namespace A153783.P5471687341724072382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A152995 n : ℚ)

end

end A153783.P5471687341724072382

namespace A153783

/-- `3/2*A152995(n)` -/
def P5471687341724072382.Spec : Prop :=
  ∀ n, P5471687341724072382.a n = (A153783 n : ℚ)

theorem P5471687341724072382.correct : P5471687341724072382.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153783, Nat.add_sub_cancel, A153783.P5471687341724072382.a, A153783.P13852090379155657572.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153783, Nat.add_sub_cancel, A153783.P5471687341724072382.a, A153783.P13852090379155657572.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153783

/-! ## A153783.P14851846426991057709

`A255187(n)+2*n`
-/

namespace A153783.P14851846426991057709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n + (2 * n : ℤ)

end

end A153783.P14851846426991057709

namespace A153783

/-- `A255187(n)+2*n` -/
def P14851846426991057709.Spec : Prop :=
  ∀ n, P14851846426991057709.a n = A153783 n

end A153783

/-! ## A153783.P13156089908389027696

`3*(A062708(n)-n)`
-/

namespace A153783.P13156089908389027696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A062708 n - (n : ℤ))

end

end A153783.P13156089908389027696

namespace A153783

/-- `3*(A062708(n)-n)` -/
def P13156089908389027696.Spec : Prop :=
  ∀ n, P13156089908389027696.a n = A153783 n

end A153783

/-! ## A153783.P7407895037360417481

`A255184(n)+2*n²`
-/

namespace A153783.P7407895037360417481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 n + (2 * n ^ 2 : ℤ)

end

end A153783.P7407895037360417481

namespace A153783

/-- `A255184(n)+2*n²` -/
def P7407895037360417481.Spec : Prop :=
  ∀ n, P7407895037360417481.a n = A153783 n

end A153783

/-! ## A153783.P14706024392700884360

`A152777(n)-(2*n)²`
-/

namespace A153783.P14706024392700884360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - ((2 * n) ^ 2 : ℤ)

end

end A153783.P14706024392700884360

namespace A153783

/-- `A152777(n)-(2*n)²` -/
def P14706024392700884360.Spec : Prop :=
  ∀ n, P14706024392700884360.a n = A153783 n

end A153783

/-! ## A153783.P15160995027909229023

`∑[n]+2*A051867(n)`
-/

namespace A153783.P15160995027909229023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A051867 n

end

end A153783.P15160995027909229023

namespace A153783

/-- `∑[n]+2*A051867(n)` -/
def P15160995027909229023.Spec : Prop :=
  ∀ n, P15160995027909229023.a n = A153783 n

end A153783

/-! ## A153783.P1907711529251121974

`A255186(n)+∑[2*n]`
-/

namespace A153783.P1907711529251121974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153783.P1907711529251121974

namespace A153783

/-- `A255186(n)+∑[2*n]` -/
def P1907711529251121974.Spec : Prop :=
  ∀ n, P1907711529251121974.a n = A153783 n

end A153783

/-! ## A153783.P4627416631776591380

`A064200(n)+∑[3*n]`
-/

namespace A153783.P4627416631776591380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153783.P4627416631776591380

namespace A153783

/-- `A064200(n)+∑[3*n]` -/
def P4627416631776591380.Spec : Prop :=
  ∀ n, P4627416631776591380.a n = A153783 n

end A153783

/-! ## A153783.P16519630547280308237

`2*A139268(n)-∑[n]`
-/

namespace A153783.P16519630547280308237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139268 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153783.P16519630547280308237

namespace A153783

/-- `2*A139268(n)-∑[n]` -/
def P16519630547280308237.Spec : Prop :=
  ∀ n, P16519630547280308237.a n = A153783 n

end A153783

/-! ## A153783.P3098290509603626192

`∑[n]+A161935(n)+n`
-/

namespace A153783.P3098290509603626192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A161935 n + (n : ℤ))

end

end A153783.P3098290509603626192

namespace A153783

/-- `∑[n]+A161935(n)+n` -/
def P3098290509603626192.Spec : Prop :=
  ∀ n, P3098290509603626192.a n = A153783 n

end A153783

/-! ## A153783.P5421331978929229210

`A195021(n)+n-∑[n]`
-/

namespace A153783.P5421331978929229210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A153783.P5421331978929229210

namespace A153783

/-- `A195021(n)+n-∑[n]` -/
def P5421331978929229210.Spec : Prop :=
  ∀ n, P5421331978929229210.a n = A153783 n

end A153783

/-!
# A153784: 4 times heptagonal numbers: a(n) = 2*n*(5*n-3).

The programs for A153784, the canonical program `A153784.P16889375824211601871` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153784 has offset 0).

The definition of A153784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(5*n-3)` (program `A153784.P16889375824211601871`, by `A153784.P16889375824211601871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153784.P17388329899855850561

`10*n²-6*n`
-/

namespace A153784.P17388329899855850561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A153784.P17388329899855850561

namespace A153784

/-- `10*n²-6*n` -/
def P17388329899855850561.Spec : Prop :=
  ∀ n, P17388329899855850561.a n = A153784 n

theorem P17388329899855850561.correct : P17388329899855850561.Spec := by
  intro n
  simp only [A153784, Nat.add_sub_cancel, A153784.P17388329899855850561.a, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153784

/-! ## A153784.P16889375824211601871

`2*n*(5*n-3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153784

/-- `2*n*(5*n-3)` -/
def P16889375824211601871.Spec : Prop :=
  ∀ n, P16889375824211601871.a n = A153784 n

theorem P16889375824211601871.correct : P16889375824211601871.Spec := by
  intro n
  simp only [A153784]

end A153784

/-! ## A153784.P1342205962952664948

`ogf((4x+16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153784.P1342205962952664948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 16] [1, -3, 3, -1] n

end

end A153784.P1342205962952664948

namespace A153784

/-- `ogf((4x+16x^2)/(1-3x+3x^2-x^3))` -/
def P1342205962952664948.Spec : Prop :=
  ∀ n, P1342205962952664948.a n = A153784 n

end A153784

/-! ## A153784.P10694228043259370590

`∑[a(n-1)+20]` with `a(0)=0, a(1)=4`
-/

namespace A153784.P10694228043259370590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153784.P10694228043259370590

namespace A153784

/-- `∑[a(n-1)+20]` -/
def P10694228043259370590.Spec : Prop :=
  ∀ n, (P10694228043259370590.a n : ℤ) = A153784 n

end A153784

/-! ## A153784.P13331709914309214002

`abs(A152745(n)-n)`
-/

namespace A153784.P13331709914309214002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152745 n - (n : ℤ)|

end

end A153784.P13331709914309214002

namespace A153784

/-- `abs(A152745(n)-n)` -/
def P13331709914309214002.Spec : Prop :=
  ∀ n, P13331709914309214002.a n = A153784 n

end A153784

/-! ## A153784.P4865183575232798179

`2*A153786(n)/3`
-/

namespace A153784.P4865183575232798179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A153786 n : ℚ) / 3

end

end A153784.P4865183575232798179

namespace A153784

/-- `2*A153786(n)/3` -/
def P4865183575232798179.Spec : Prop :=
  ∀ n, P4865183575232798179.a n = (A153784 n : ℚ)

theorem P4865183575232798179.correct : P4865183575232798179.Spec := by
  intro n
  simp only [A153784, Nat.add_sub_cancel, A153784.P4865183575232798179.a, A153784.P16889375824211601871.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153784

/-! ## A153784.P7876996590871809251

`4*A152773(n)/3`
-/

namespace A153784.P7876996590871809251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A152773 n : ℚ) / 3

end

end A153784.P7876996590871809251

namespace A153784

/-- `4*A152773(n)/3` -/
def P7876996590871809251.Spec : Prop :=
  ∀ n, P7876996590871809251.a n = (A153784 n : ℚ)

end A153784

/-! ## A153784.P7900802521825399286

`4*A153785(n)/5`
-/

namespace A153784.P7900802521825399286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A153785 n : ℚ) / 5

end

end A153784.P7900802521825399286

namespace A153784

/-- `4*A153785(n)/5` -/
def P7900802521825399286.Spec : Prop :=
  ∀ n, P7900802521825399286.a n = (A153784 n : ℚ)

end A153784

/-! ## A153784.P5743192655909779237

`A158556(n)%A081272(n)`
-/

namespace A153784.P5743192655909779237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158556 n) (A081272 n)

end

end A153784.P5743192655909779237

namespace A153784

/-- `A158556(n)%A081272(n)` -/
def P5743192655909779237.Spec : Prop :=
  ∀ n, P5743192655909779237.a n = A153784 n

end A153784

/-! ## A153784.P12141014245335267093

`A158586(n)%A381424(n)`
-/

namespace A153784.P12141014245335267093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158586 n) (A381424 n)

end

end A153784.P12141014245335267093

namespace A153784

/-- `A158586(n)%A381424(n)` -/
def P12141014245335267093.Spec : Prop :=
  ∀ n, P12141014245335267093.a n = A153784 n

end A153784

/-! ## A153784.P2647562671133496996

`A010023(n)%A143854(n+1)`
-/

namespace A153784.P2647562671133496996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 n) (A143854 (n + 1))

end

end A153784.P2647562671133496996

namespace A153784

/-- `A010023(n)%A143854(n+1)` -/
def P2647562671133496996.Spec : Prop :=
  ∀ n, P2647562671133496996.a n = A153784 n

end A153784

/-! ## A153784.P17761556803354926591

`A200431(n+1)%A008412(n)`
-/

namespace A153784.P17761556803354926591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200431 (n + 1)) (A008412 n)

end

end A153784.P17761556803354926591

namespace A153784

/-- `A200431(n+1)%A008412(n)` -/
def P17761556803354926591.Spec : Prop :=
  ∀ n, P17761556803354926591.a n = A153784 n

end A153784

/-! ## A153784.P3954306595684733725

`A158547(n)%A389928(n+1)`
-/

namespace A153784.P3954306595684733725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158547 n) (A389928 (n + 1))

end

end A153784.P3954306595684733725

namespace A153784

/-- `A158547(n)%A389928(n+1)` -/
def P3954306595684733725.Spec : Prop :=
  ∀ n, P3954306595684733725.a n = A153784 n

end A153784

/-! ## A153784.P18316154144351309151

`A292345(n+1)%A304375(n+1)`
-/

namespace A153784.P18316154144351309151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292345 (n + 1)) (A304375 (n + 1))

end

end A153784.P18316154144351309151

namespace A153784

/-- `A292345(n+1)%A304375(n+1)` -/
def P18316154144351309151.Spec : Prop :=
  ∀ n, P18316154144351309151.a n = A153784 n

end A153784

/-! ## A153784.P9124635416699069404

`A273368(A004273(n))`
-/

namespace A153784.P9124635416699069404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 (A004273 n).toNat

end

end A153784.P9124635416699069404

namespace A153784

/-- `A273368(A004273(n))` -/
def P9124635416699069404.Spec : Prop :=
  ∀ n, P9124635416699069404.a n = A153784 n

end A153784

/-! ## A153784.P8325886228019197299

`A056865(A160912(n+1))`
-/

namespace A153784.P8325886228019197299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (A160912 (n + 1)).toNat

end

end A153784.P8325886228019197299

namespace A153784

/-- `A056865(A160912(n+1))` -/
def P8325886228019197299.Spec : Prop :=
  ∀ n, P8325886228019197299.a n = A153784 n

end A153784

/-!
# A153785: 5 times heptagonal numbers: a(n) = 5*n*(5*n-3)/2.

The programs for A153785, the canonical program `A153785.P13366704032253032705` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153785 has offset 0).

The definition of A153785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(5*n-3)/2` (program `A153785.P642623510224603734`, by `A153785.P642623510224603734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153785.P4381356450692589601

`ogf((5x+20x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153785.P4381356450692589601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 20] [1, -3, 3, -1] n

end

end A153785.P4381356450692589601

namespace A153785

/-- `ogf((5x+20x^2)/(1-3x+3x^2-x^3))` -/
def P4381356450692589601.Spec : Prop :=
  ∀ n, P4381356450692589601.a n = A153785 n

end A153785

/-! ## A153785.P8658940651469346760

`(25*n²-15*n)/2`
-/

namespace A153785.P8658940651469346760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * n ^ 2 : ℤ) - (15 * n : ℤ) : ℚ) / 2

end

end A153785.P8658940651469346760

namespace A153785

/-- `(25*n²-15*n)/2` -/
def P8658940651469346760.Spec : Prop :=
  ∀ n, P8658940651469346760.a n = (A153785 n : ℚ)

theorem P8658940651469346760.correct : P8658940651469346760.Spec := by
  intro n
  induction n with
  | zero => simp [A153785, A153785.P8658940651469346760.a, A153785.P13366704032253032705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153785, Nat.add_sub_cancel, A153785.P8658940651469346760.a, A153785.P13366704032253032705.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153785

/-! ## A153785.P642623510224603734

`5*n*(5*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153785.P642623510224603734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) * ((5 * n : ℤ) - 3) : ℚ) / 2

end

end A153785.P642623510224603734

namespace A153785

/-- `5*n*(5*n-3)/2` -/
def P642623510224603734.Spec : Prop :=
  ∀ n, P642623510224603734.a n = (A153785 n : ℚ)

theorem P642623510224603734.correct : P642623510224603734.Spec := by
  intro n
  induction n with
  | zero => simp [A153785, A153785.P642623510224603734.a, A153785.P13366704032253032705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153785, Nat.add_sub_cancel, A153785.P642623510224603734.a, A153785.P13366704032253032705.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153785

/-! ## A153785.P13366704032253032705

`25*n+a(n-1)-20` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153785

/-- `25*n+a(n-1)-20` -/
def P13366704032253032705.Spec : Prop :=
  ∀ n, P13366704032253032705.a n = A153785 n

theorem P13366704032253032705.correct : P13366704032253032705.Spec := by
  intro n
  simp only [A153785]

end A153785

/-! ## A153785.P6373541786039391880

`A000566(n)*5`
-/

namespace A153785.P6373541786039391880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n * 5

end

end A153785.P6373541786039391880

namespace A153785

/-- `A000566(n)*5` -/
def P6373541786039391880.Spec : Prop :=
  ∀ n, P6373541786039391880.a n = A153785 n

end A153785

/-! ## A153785.P8993140273320003327

`∑[a(n-1)+25]` with `a(0)=0, a(1)=5`
-/

namespace A153785.P8993140273320003327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153785.P8993140273320003327

namespace A153785

/-- `∑[a(n-1)+25]` -/
def P8993140273320003327.Spec : Prop :=
  ∀ n, (P8993140273320003327.a n : ℤ) = A153785 n

end A153785

/-! ## A153785.P4109326649167708342

`C(5*n, 2)-5*n`
-/

namespace A153785.P4109326649167708342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℤ) - (5 * n : ℤ)

end

end A153785.P4109326649167708342

namespace A153785

/-- `C(5*n, 2)-5*n` -/
def P4109326649167708342.Spec : Prop :=
  ∀ n, P4109326649167708342.a n = A153785 n

end A153785

/-! ## A153785.P10310581044118699025

`5*(4-∑[a(n-1)-5])` with `a(0)=4`
-/

namespace A153785.P10310581044118699025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (4 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153785.P10310581044118699025

namespace A153785

/-- `5*(4-∑[a(n-1)-5])` -/
def P10310581044118699025.Spec : Prop :=
  ∀ n, P10310581044118699025.a n = A153785 n

end A153785

/-! ## A153785.P8489554188173908611

`A080857(n)-1`
-/

namespace A153785.P8489554188173908611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n - 1

end

end A153785.P8489554188173908611

namespace A153785

/-- `A080857(n)-1` -/
def P8489554188173908611.Spec : Prop :=
  ∀ n, P8489554188173908611.a n = A153785 n

end A153785

/-! ## A153785.P3114256487260004888

`5*A000566(n)`
-/

namespace A153785.P3114256487260004888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000566 n

end

end A153785.P3114256487260004888

namespace A153785

/-- `5*A000566(n)` -/
def P3114256487260004888.Spec : Prop :=
  ∀ n, P3114256487260004888.a n = A153785 n

end A153785

/-! ## A153785.P3069436377458699279

`A153794(n)+∑[n]`
-/

namespace A153785.P3069436377458699279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153785.P3069436377458699279

namespace A153785

/-- `A153794(n)+∑[n]` -/
def P3069436377458699279.Spec : Prop :=
  ∀ n, P3069436377458699279.a n = A153785 n

end A153785

/-! ## A153785.P14892924584643452825

`5*(A192136(n)-1)`
-/

namespace A153785.P14892924584643452825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A192136 n - 1)

end

end A153785.P14892924584643452825

namespace A153785

/-- `5*(A192136(n)-1)` -/
def P14892924584643452825.Spec : Prop :=
  ∀ n, P14892924584643452825.a n = A153785 n

end A153785

/-! ## A153785.P8445964058708561550

`5/2*A135706(n)`
-/

namespace A153785.P8445964058708561550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A135706 n : ℚ)

end

end A153785.P8445964058708561550

namespace A153785

/-- `5/2*A135706(n)` -/
def P8445964058708561550.Spec : Prop :=
  ∀ n, P8445964058708561550.a n = (A153785 n : ℚ)

theorem P8445964058708561550.correct : P8445964058708561550.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153785, Nat.add_sub_cancel, A153785.P8445964058708561550.a, A153785.P13366704032253032705.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153785, Nat.add_sub_cancel, A153785.P8445964058708561550.a, A153785.P13366704032253032705.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153785

/-! ## A153785.P15903598406700796172

`5/3*A152773(n)`
-/

namespace A153785.P15903598406700796172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A152773 n : ℚ)

end

end A153785.P15903598406700796172

namespace A153785

/-- `5/3*A152773(n)` -/
def P15903598406700796172.Spec : Prop :=
  ∀ n, P15903598406700796172.a n = (A153785 n : ℚ)

end A153785

/-! ## A153785.P10351494102668434837

`5/4*A153784(n)`
-/

namespace A153785.P10351494102668434837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A153784 n : ℚ)

end

end A153785.P10351494102668434837

namespace A153785

/-- `5/4*A153784(n)` -/
def P10351494102668434837.Spec : Prop :=
  ∀ n, P10351494102668434837.a n = (A153785 n : ℚ)

theorem P10351494102668434837.correct : P10351494102668434837.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153785, Nat.add_sub_cancel, A153785.P10351494102668434837.a, A153785.P13366704032253032705.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153785, Nat.add_sub_cancel, A153785.P10351494102668434837.a, A153785.P13366704032253032705.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153785

/-! ## A153785.P994743655444426023

`A255186(n)+4*n`
-/

namespace A153785.P994743655444426023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n + (4 * n : ℤ)

end

end A153785.P994743655444426023

namespace A153785

/-- `A255186(n)+4*n` -/
def P994743655444426023.Spec : Prop :=
  ∀ n, P994743655444426023.a n = A153785 n

end A153785

/-! ## A153785.P7297435625392611249

`5*(A005476(n)-n)`
-/

namespace A153785.P7297435625392611249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A005476 n - (n : ℤ))

end

end A153785.P7297435625392611249

namespace A153785

/-- `5*(A005476(n)-n)` -/
def P7297435625392611249.Spec : Prop :=
  ∀ n, P7297435625392611249.a n = A153785 n

end A153785

/-! ## A153785.P13079475039716962052

`A383465(n)-Δ[n²]`
-/

namespace A153785.P13079475039716962052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383465 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A153785.P13079475039716962052

namespace A153785

/-- `A383465(n)-Δ[n²]` -/
def P13079475039716962052.Spec : Prop :=
  ∀ n, P13079475039716962052.a n = A153785 n

end A153785

/-! ## A153785.P1644262910550954963

`A051871(n)+(2*n)²`
-/

namespace A153785.P1644262910550954963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + ((2 * n) ^ 2 : ℤ)

end

end A153785.P1644262910550954963

namespace A153785

/-- `A051871(n)+(2*n)²` -/
def P1644262910550954963.Spec : Prop :=
  ∀ n, P1644262910550954963.a n = A153785 n

end A153785

/-! ## A153785.P3026939746767513607

`A152759(n)+2*n²`
-/

namespace A153785.P3026939746767513607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n + (2 * n ^ 2 : ℤ)

end

end A153785.P3026939746767513607

namespace A153785

/-- `A152759(n)+2*n²` -/
def P3026939746767513607.Spec : Prop :=
  ∀ n, P3026939746767513607.a n = A153785 n

end A153785

/-!
# A153786: 6 times heptagonal numbers: a(n) = 3*n*(5*n-3).

The programs for A153786, the canonical program `A153786.P15842201399555844801` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153786 has offset 0).

The definition of A153786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(5*n-3)` (program `A153786.P15842201399555844801`, by `A153786.P15842201399555844801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153786.P10964187700300092121

`15*n²-9*n`
-/

namespace A153786.P10964187700300092121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 : ℤ) - (9 * n : ℤ)

end

end A153786.P10964187700300092121

namespace A153786

/-- `15*n²-9*n` -/
def P10964187700300092121.Spec : Prop :=
  ∀ n, P10964187700300092121.a n = A153786 n

theorem P10964187700300092121.correct : P10964187700300092121.Spec := by
  intro n
  simp only [A153786, Nat.add_sub_cancel, A153786.P10964187700300092121.a, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153786

/-! ## A153786.P15842201399555844801

`3*n*(5*n-3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153786

/-- `3*n*(5*n-3)` -/
def P15842201399555844801.Spec : Prop :=
  ∀ n, P15842201399555844801.a n = A153786 n

theorem P15842201399555844801.correct : P15842201399555844801.Spec := by
  intro n
  simp only [A153786]

end A153786

/-! ## A153786.P3091545427770304122

`ogf((6x+24x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153786.P3091545427770304122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 24] [1, -3, 3, -1] n

end

end A153786.P3091545427770304122

namespace A153786

/-- `ogf((6x+24x^2)/(1-3x+3x^2-x^3))` -/
def P3091545427770304122.Spec : Prop :=
  ∀ n, P3091545427770304122.a n = A153786 n

end A153786

/-! ## A153786.P6510547506897351484

`∑[a(n-1)+30]` with `a(0)=0, a(1)=6`
-/

namespace A153786.P6510547506897351484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153786.P6510547506897351484

namespace A153786

/-- `∑[a(n-1)+30]` -/
def P6510547506897351484.Spec : Prop :=
  ∀ n, (P6510547506897351484.a n : ℤ) = A153786 n

end A153786

/-! ## A153786.P13100345401427736648

`xor(1, A134154(n))`
-/

namespace A153786.P13100345401427736648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A134154 n)

end

end A153786.P13100345401427736648

namespace A153786

/-- `xor(1, A134154(n))` -/
def P13100345401427736648.Spec : Prop :=
  ∀ n, P13100345401427736648.a n = A153786 n

end A153786

/-! ## A153786.P15892894245689673393

`3*A153784(n)/2`
-/

namespace A153786.P15892894245689673393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A153784 n : ℚ) / 2

end

end A153786.P15892894245689673393

namespace A153786

/-- `3*A153784(n)/2` -/
def P15892894245689673393.Spec : Prop :=
  ∀ n, P15892894245689673393.a n = (A153786 n : ℚ)

theorem P15892894245689673393.correct : P15892894245689673393.Spec := by
  intro n
  simp only [A153786, Nat.add_sub_cancel, A153786.P15892894245689673393.a, A153786.P15842201399555844801.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153786

/-! ## A153786.P6607928354603436415

`A158558(n)%A134153(n)`
-/

namespace A153786.P6607928354603436415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A134153 n)

end

end A153786.P6607928354603436415

namespace A153786

/-- `A158558(n)%A134153(n)` -/
def P6607928354603436415.Spec : Prop :=
  ∀ n, P6607928354603436415.a n = A153786 n

end A153786

/-! ## A153786.P13127836574941497593

`lcm(A135706(n), A152773(n))`
-/

namespace A153786.P13127836574941497593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135706 n) (A152773 n)

end

end A153786.P13127836574941497593

namespace A153786

/-- `lcm(A135706(n), A152773(n))` -/
def P13127836574941497593.Spec : Prop :=
  ∀ n, (P13127836574941497593.a n : ℤ) = A153786 n

end A153786

/-! ## A153786.P12155912296699323753

`A158591(n)%A289134(n+1)`
-/

namespace A153786.P12155912296699323753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158591 n) (A289134 (n + 1))

end

end A153786.P12155912296699323753

namespace A153786

/-- `A158591(n)%A289134(n+1)` -/
def P12155912296699323753.Spec : Prop :=
  ∀ n, P12155912296699323753.a n = A153786 n

end A153786

/-! ## A153786.P130470964298406361

`A008588(A000566(n))`
-/

namespace A153786.P130470964298406361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A000566 n).toNat

end

end A153786.P130470964298406361

namespace A153786

/-- `A008588(A000566(n))` -/
def P130470964298406361.Spec : Prop :=
  ∀ n, P130470964298406361.a n = A153786 n

end A153786

/-!
# A153787: Largest proper divisor of Motzkin number A001006(n).

The programs for A153787, there is no canonical definition to state claims against.
-/

/-! ## A153787.P1261693741744631667

`A001006(n+2)/A020639(A001006(n+2))`
-/

namespace A153787.P1261693741744631667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 (n + 2) : ℚ) / (A020639 (A001006 (n + 2)).toNat : ℚ)

end

end A153787.P1261693741744631667

/-! ## A153787.P11133944000467622306

`A086246(n+4)/A020639(A086246(n+4))`
-/

namespace A153787.P11133944000467622306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086246 (n + 4) : ℚ) / (A020639 (A086246 (n + 4)).toNat : ℚ)

end

end A153787.P11133944000467622306

/-! ## A153787.P14077980547846417504

`A168049(n+4)/A020639(A168049(n+4))`
-/

namespace A153787.P14077980547846417504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168049 (n + 4) : ℚ) / (A020639 (A168049 (n + 4)).toNat : ℚ)

end

end A153787.P14077980547846417504

/-! ## A153787.P9993233877718428573

`A032742(A001006(n+2))`
-/

namespace A153787.P9993233877718428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001006 (n + 2)).toNat

end

end A153787.P9993233877718428573

/-! ## A153787.P3000543533957830984

`A032742(A094287(n+2))`
-/

namespace A153787.P3000543533957830984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A094287 (n + 2)).toNat

end

end A153787.P3000543533957830984

/-!
# A153788: Number of proper divisors of the Catalan number A000108(n).

The programs for A153788, the canonical program `A153788.P4198305978530068517` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153788 has offset 0).

The definition of A153788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153788.P4198305978530068517

`A152763(n)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153788

/-- `A152763(n)-1` -/
def P4198305978530068517.Spec : Prop :=
  ∀ n, P4198305978530068517.a n = A153788 n

theorem P4198305978530068517.correct : P4198305978530068517.Spec := by
  intro n
  simp only [A153788]

end A153788

/-! ## A153788.P10448053550534854235

`A000005(C(2*n, n)/(n+1))-1`
-/

namespace A153788.P10448053550534854235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat - 1

end

end A153788.P10448053550534854235

namespace A153788

/-- `A000005(C(2*n, n)/(n+1))-1` -/
def P10448053550534854235.Spec : Prop :=
  ∀ n, P10448053550534854235.a n = A153788 n

end A153788

/-! ## A153788.P4229197185412640405

`A244895(5*n+3)+A152763(n)`
-/

namespace A153788.P4229197185412640405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (5 * n + 3) + A152763 n

end

end A153788.P4229197185412640405

namespace A153788

/-- `A244895(5*n+3)+A152763(n)` -/
def P4229197185412640405.Spec : Prop :=
  ∀ n, P4229197185412640405.a n = A153788 n

end A153788

/-! ## A153788.P3500133960382837204

`A295731(C(2, n+2))+A152763(n)`
-/

namespace A153788.P3500133960382837204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (Nat.choose 2 (n + 2)) + A152763 n

end

end A153788.P3500133960382837204

namespace A153788

/-- `A295731(C(2, n+2))+A152763(n)` -/
def P3500133960382837204.Spec : Prop :=
  ∀ n, P3500133960382837204.a n = A153788 n

end A153788

/-! ## A153788.P4963143266335239340

`A232500(gcd(n, n+1))+A152763(n)`
-/

namespace A153788.P4963143266335239340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (Nat.gcd n (n + 1)) + A152763 n

end

end A153788.P4963143266335239340

namespace A153788

/-- `A232500(gcd(n, n+1))+A152763(n)` -/
def P4963143266335239340.Spec : Prop :=
  ∀ n, P4963143266335239340.a n = A153788 n

end A153788

/-! ## A153788.P16670206118733093563

`A166698(A166681(n+1))+A152763(n)`
-/

namespace A153788.P16670206118733093563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A166681 (n + 1)).toNat + A152763 n

end

end A153788.P16670206118733093563

namespace A153788

/-- `A166698(A166681(n+1))+A152763(n)` -/
def P16670206118733093563.Spec : Prop :=
  ∀ n, P16670206118733093563.a n = A153788 n

end A153788

/-! ## A153788.P4312082748609259124

`A330025(A063118(2*(n+1)))+A152763(n)`
-/

namespace A153788.P4312082748609259124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A063118 (2 * (n + 1))).toNat + A152763 n

end

end A153788.P4312082748609259124

namespace A153788

/-- `A330025(A063118(2*(n+1)))+A152763(n)` -/
def P4312082748609259124.Spec : Prop :=
  ∀ n, P4312082748609259124.a n = A153788 n

end A153788

/-! ## A153788.P8862046842990364111

`A152762(n)-A152988(n)`
-/

namespace A153788.P8862046842990364111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n - A152988 n

end

end A153788.P8862046842990364111

namespace A153788

/-- `A152762(n)-A152988(n)` -/
def P8862046842990364111.Spec : Prop :=
  ∀ n, P8862046842990364111.a n = A153788 n

theorem P8862046842990364111.correct : P8862046842990364111.Spec := by
  intro n
  simp only [A153788, Nat.add_sub_cancel, A153788.P8862046842990364111.a, A153788.P4198305978530068517.a, A152762, A152762.P705449962660149675.a, A152763, A152763.P4357628965309988966.a, A152988, A152988.P2080984935002552249.a, A000005, A000005.P16091521709108585461.a, A000108, A000108.P17551949696095299361.a, A001065, A001065.P4097147489331274860.a, A152770, A152770.P4996422170920482869.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A062249, A062249.P5473932307129171226.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153788

/-! ## A153788.P18300867907439681890

`A158387(A135556(n+1))+A152763(n)`
-/

namespace A153788.P18300867907439681890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A135556 (n + 1)).toNat + A152763 n

end

end A153788.P18300867907439681890

namespace A153788

/-- `A158387(A135556(n+1))+A152763(n)` -/
def P18300867907439681890.Spec : Prop :=
  ∀ n, P18300867907439681890.a n = A153788 n

end A153788

/-! ## A153788.P13127831304012519805

`A030494(n+1)%A152763(n)`
-/

namespace A153788.P13127831304012519805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A152763 n)

end

end A153788.P13127831304012519805

namespace A153788

/-- `A030494(n+1)%A152763(n)` -/
def P13127831304012519805.Spec : Prop :=
  ∀ n, P13127831304012519805.a n = A153788 n

end A153788

/-! ## A153788.P10827073744788710551

`A165326(A030511(n+3))+A152763(n)`
-/

namespace A153788.P10827073744788710551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A030511 (n + 3)).toNat + A152763 n

end

end A153788.P10827073744788710551

namespace A153788

/-- `A165326(A030511(n+3))+A152763(n)` -/
def P10827073744788710551.Spec : Prop :=
  ∀ n, P10827073744788710551.a n = A153788 n

end A153788

/-!
# A153789: First differences of harmonic (or Ore) numbers A001599.

The programs for A153789, there is no canonical definition to state claims against.
-/

/-! ## A153789.P4236026354849644084

`Δ[A001599(1+n)]`
-/

namespace A153789.P4236026354849644084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P4236026354849644084

/-! ## A153789.P13950053115005624654

`Δ[record[A001599(A133310(n))]]`
-/

namespace A153789.P13950053115005624654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P13950053115005624654

/-! ## A153789.P10730600155570083435

`Δ[record[A001599(A152271(n))]]`
-/

namespace A153789.P10730600155570083435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P10730600155570083435

/-! ## A153789.P8991447343290047002

`Δ[record[A001599(A286558(n))]]`
-/

namespace A153789.P8991447343290047002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P8991447343290047002

/-! ## A153789.P16329777810571646158

`Δ[record[A001599(A324347(n))]]`
-/

namespace A153789.P16329777810571646158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P16329777810571646158

/-! ## A153789.P17233781937342558695

`Δ[record[A001599(A344180(n))]]`
-/

namespace A153789.P17233781937342558695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153789.P17233781937342558695

/-! ## A153789.P10082724265087384645

`A001599(n+2)-A001599(n+1)`
-/

namespace A153789.P10082724265087384645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 2) - A001599 (n + 1)

end

end A153789.P10082724265087384645

/-!
# A153792: 12 times pentagonal numbers: a(n) = 6*n*(3*n-1).

The programs for A153792, the canonical program `A153792.P13758873412561183293` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153792 has offset 0).

The definition of A153792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(3*n-1)` (program `A153792.P13758873412561183293`, by `A153792.P13758873412561183293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153792.P6369629247126125265

`18*n²-6*n`
-/

namespace A153792.P6369629247126125265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A153792.P6369629247126125265

namespace A153792

/-- `18*n²-6*n` -/
def P6369629247126125265.Spec : Prop :=
  ∀ n, P6369629247126125265.a n = A153792 n

theorem P6369629247126125265.correct : P6369629247126125265.Spec := by
  intro n
  simp only [A153792, Nat.add_sub_cancel, A153792.P6369629247126125265.a, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153792

/-! ## A153792.P13758873412561183293

`6*n*(3*n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153792

/-- `6*n*(3*n-1)` -/
def P13758873412561183293.Spec : Prop :=
  ∀ n, P13758873412561183293.a n = A153792 n

theorem P13758873412561183293.correct : P13758873412561183293.Spec := by
  intro n
  simp only [A153792]

end A153792

/-! ## A153792.P8746320567068632885

`ogf((12x+24x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153792.P8746320567068632885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 24] [1, -3, 3, -1] n

end

end A153792.P8746320567068632885

namespace A153792

/-- `ogf((12x+24x^2)/(1-3x+3x^2-x^3))` -/
def P8746320567068632885.Spec : Prop :=
  ∀ n, P8746320567068632885.a n = A153792 n

end A153792

/-! ## A153792.P2335642663059417621

`4*C(3*n, 2)`
-/

namespace A153792.P2335642663059417621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (3 * n) 2

end

end A153792.P2335642663059417621

namespace A153792

/-- `4*C(3*n, 2)` -/
def P2335642663059417621.Spec : Prop :=
  ∀ n, (P2335642663059417621.a n : ℤ) = A153792 n

theorem P2335642663059417621.correct : P2335642663059417621.Spec := by
  intro n
  simp only [A153792, Nat.add_sub_cancel, A153792.P2335642663059417621.a, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153792

/-! ## A153792.P4666099458248931575

`∑[a(n-1)+36]` with `a(0)=0, a(1)=12`
-/

namespace A153792.P4666099458248931575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153792.P4666099458248931575

namespace A153792

/-- `∑[a(n-1)+36]` -/
def P4666099458248931575.Spec : Prop :=
  ∀ n, (P4666099458248931575.a n : ℤ) = A153792 n

end A153792

/-! ## A153792.P11599951589676411691

`record[(n+1)*3^(n%2)*ceil(3*n/2)]`
-/

namespace A153792.P11599951589676411691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 3 ^ (n % 2) : ℤ) * ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153792.P11599951589676411691

namespace A153792

/-- `record[(n+1)*3^(n%2)*ceil(3*n/2)]` -/
def P11599951589676411691.Spec : Prop :=
  ∀ n, P11599951589676411691.a n = A153792 n

end A153792

/-! ## A153792.P6607877889837798817

`floor(A174371(n)/2)`
-/

namespace A153792.P6607877889837798817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174371 n : ℚ) / 2⌋

end

end A153792.P6607877889837798817

namespace A153792

/-- `floor(A174371(n)/2)` -/
def P6607877889837798817.Spec : Prop :=
  ∀ n, P6607877889837798817.a n = A153792 n

end A153792

/-! ## A153792.P139002620503231663

`3*A014642(n)/2`
-/

namespace A153792.P139002620503231663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A014642 n : ℚ) / 2

end

end A153792.P139002620503231663

namespace A153792

/-- `3*A014642(n)/2` -/
def P139002620503231663.Spec : Prop :=
  ∀ n, P139002620503231663.a n = (A153792 n : ℚ)

theorem P139002620503231663.correct : P139002620503231663.Spec := by
  intro n
  simp only [A153792, Nat.add_sub_cancel, A153792.P139002620503231663.a, A153792.P13758873412561183293.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153792

/-! ## A153792.P14675519716558065789

`4*A152996(n)/3`
-/

namespace A153792.P14675519716558065789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A152996 n : ℚ) / 3

end

end A153792.P14675519716558065789

namespace A153792

/-- `4*A152996(n)/3` -/
def P14675519716558065789.Spec : Prop :=
  ∀ n, P14675519716558065789.a n = (A153792 n : ℚ)

end A153792

/-! ## A153792.P17001179792339008104

`∑[A277984(n)]/(n+1)`
-/

namespace A153792.P17001179792339008104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277984 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A153792.P17001179792339008104

namespace A153792

/-- `∑[A277984(n)]/(n+1)` -/
def P17001179792339008104.Spec : Prop :=
  ∀ n, P17001179792339008104.a n = (A153792 n : ℚ)

end A153792

/-! ## A153792.P4761912962932076789

`floor(A101328(n+2)²/2)`
-/

namespace A153792.P4761912962932076789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101328 (n + 2) ^ 2 : ℚ) / 2⌋

end

end A153792.P4761912962932076789

namespace A153792

/-- `floor(A101328(n+2)²/2)` -/
def P4761912962932076789.Spec : Prop :=
  ∀ n, P4761912962932076789.a n = A153792 n

end A153792

/-! ## A153792.P18195833900003936735

`xor(1, 6*(A000567(n)+n)+1)`
-/

namespace A153792.P18195833900003936735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (A000567 n + (n : ℤ)) + 1)

end

end A153792.P18195833900003936735

namespace A153792

/-- `xor(1, 6*(A000567(n)+n)+1)` -/
def P18195833900003936735.Spec : Prop :=
  ∀ n, P18195833900003936735.a n = A153792 n

end A153792

/-! ## A153792.P4112804199119174029

`A158591(n)%A081272(n)`
-/

namespace A153792.P4112804199119174029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158591 n) (A081272 n)

end

end A153792.P4112804199119174029

namespace A153792

/-- `A158591(n)%A081272(n)` -/
def P4112804199119174029.Spec : Prop :=
  ∀ n, P4112804199119174029.a n = A153792 n

end A153792

/-! ## A153792.P2863228416952665966

`A174371(n)%A081589(n)`
-/

namespace A153792.P2863228416952665966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174371 n) (A081589 n)

end

end A153792.P2863228416952665966

namespace A153792

/-- `A174371(n)%A081589(n)` -/
def P2863228416952665966.Spec : Prop :=
  ∀ n, P2863228416952665966.a n = A153792 n

end A153792

/-! ## A153792.P2848351597314344716

`A158604(n)%A381424(n)`
-/

namespace A153792.P2848351597314344716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158604 n) (A381424 n)

end

end A153792.P2848351597314344716

namespace A153792

/-- `A158604(n)%A381424(n)` -/
def P2848351597314344716.Spec : Prop :=
  ∀ n, P2848351597314344716.a n = A153792 n

end A153792

/-! ## A153792.P10451098545317648970

`lcm(A008588(n), A019557(n))`
-/

namespace A153792.P10451098545317648970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008588 n) (A019557 n)

end

end A153792.P10451098545317648970

namespace A153792

/-- `lcm(A008588(n), A019557(n))` -/
def P10451098545317648970.Spec : Prop :=
  ∀ n, (P10451098545317648970.a n : ℤ) = A153792 n

end A153792

/-! ## A153792.P7457181422931481933

`lcm(A008458(n), A033579(n))`
-/

namespace A153792.P7457181422931481933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008458 n) (A033579 n)

end

end A153792.P7457181422931481933

namespace A153792

/-- `lcm(A008458(n), A033579(n))` -/
def P7457181422931481933.Spec : Prop :=
  ∀ n, (P7457181422931481933.a n : ℤ) = A153792 n

end A153792

/-! ## A153792.P259975656862415889

`A016922(n)%A195316(n+1)`
-/

namespace A153792.P259975656862415889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016922 n) (A195316 (n + 1))

end

end A153792.P259975656862415889

namespace A153792

/-- `A016922(n)%A195316(n+1)` -/
def P259975656862415889.Spec : Prop :=
  ∀ n, P259975656862415889.a n = A153792 n

end A153792

/-! ## A153792.P4187494751702328728

`Δ[2*A270205(n)]`
-/

namespace A153792.P4187494751702328728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153792.P4187494751702328728

namespace A153792

/-- `Δ[2*A270205(n)]` -/
def P4187494751702328728.Spec : Prop :=
  ∀ n, P4187494751702328728.a n = A153792 n

theorem P4187494751702328728.correct : P4187494751702328728.Spec := by
  intro n
  simp only [A153792, Nat.add_sub_cancel, A153792.P4187494751702328728.f1, A153792.P4187494751702328728.a, A153792.P13758873412561183293.a, A270205, A270205.P4965580866994252023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153792

/-! ## A153792.P7319226447732192602

`A152751(2*n)/2`
-/

namespace A153792.P7319226447732192602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152751 (2 * n) : ℚ) / 2

end

end A153792.P7319226447732192602

namespace A153792

/-- `A152751(2*n)/2` -/
def P7319226447732192602.Spec : Prop :=
  ∀ n, P7319226447732192602.a n = (A153792 n : ℚ)

theorem P7319226447732192602.correct : P7319226447732192602.Spec := by
  intro n
  simp only [A153792, Nat.add_sub_cancel, A153792.P7319226447732192602.a, A153792.P13758873412561183293.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153792

/-!
# A153793: 13 times pentagonal numbers: a(n) = 13*n*(3*n-1)/2.

The programs for A153793, the canonical program `A153793.P5885785447232662250` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153793 has offset 0).

The definition of A153793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n*(3*n-1)/2` (program `A153793.P10044518812760952857`, by `A153793.P10044518812760952857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153793.P996880816866475763

`ogf((13x+26x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153793.P996880816866475763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, 26] [1, -3, 3, -1] n

end

end A153793.P996880816866475763

namespace A153793

/-- `ogf((13x+26x^2)/(1-3x+3x^2-x^3))` -/
def P996880816866475763.Spec : Prop :=
  ∀ n, P996880816866475763.a n = A153793 n

end A153793

/-! ## A153793.P5153588972331065250

`(39*n²-13*n)/2`
-/

namespace A153793.P5153588972331065250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((39 * n ^ 2 : ℤ) - (13 * n : ℤ) : ℚ) / 2

end

end A153793.P5153588972331065250

namespace A153793

/-- `(39*n²-13*n)/2` -/
def P5153588972331065250.Spec : Prop :=
  ∀ n, P5153588972331065250.a n = (A153793 n : ℚ)

theorem P5153588972331065250.correct : P5153588972331065250.Spec := by
  intro n
  induction n with
  | zero => simp [A153793, A153793.P5153588972331065250.a, A153793.P5885785447232662250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153793, Nat.add_sub_cancel, A153793.P5153588972331065250.a, A153793.P5885785447232662250.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153793

/-! ## A153793.P10044518812760952857

`13*n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153793.P10044518812760952857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 2

end

end A153793.P10044518812760952857

namespace A153793

/-- `13*n*(3*n-1)/2` -/
def P10044518812760952857.Spec : Prop :=
  ∀ n, P10044518812760952857.a n = (A153793 n : ℚ)

theorem P10044518812760952857.correct : P10044518812760952857.Spec := by
  intro n
  induction n with
  | zero => simp [A153793, A153793.P10044518812760952857.a, A153793.P5885785447232662250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153793, Nat.add_sub_cancel, A153793.P10044518812760952857.a, A153793.P5885785447232662250.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153793

/-! ## A153793.P5885785447232662250

`39*n+a(n-1)-26` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153793

/-- `39*n+a(n-1)-26` -/
def P5885785447232662250.Spec : Prop :=
  ∀ n, P5885785447232662250.a n = A153793 n

theorem P5885785447232662250.correct : P5885785447232662250.Spec := by
  intro n
  simp only [A153793]

end A153793

/-! ## A153793.P5001291501765121771

`13*A000326(n)`
-/

namespace A153793.P5001291501765121771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000326 n

end

end A153793.P5001291501765121771

namespace A153793

/-- `13*A000326(n)` -/
def P5001291501765121771.Spec : Prop :=
  ∀ n, P5001291501765121771.a n = A153793 n

end A153793

/-! ## A153793.P13333185826417069242

`∑[a(n-1)+39]` with `a(0)=0, a(1)=13`
-/

namespace A153793.P13333185826417069242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 39

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153793.P13333185826417069242

namespace A153793

/-- `∑[a(n-1)+39]` -/
def P13333185826417069242.Spec : Prop :=
  ∀ n, (P13333185826417069242.a n : ℤ) = A153793 n

end A153793

/-! ## A153793.P8124673046545481934

`Δ[(n-1)*13*C(n, 2)]`
-/

namespace A153793.P8124673046545481934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (13 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153793.P8124673046545481934

namespace A153793

/-- `Δ[(n-1)*13*C(n, 2)]` -/
def P8124673046545481934.Spec : Prop :=
  ∀ n, P8124673046545481934.a n = A153793 n

end A153793

/-! ## A153793.P13647950691591982829

`2*A195018(n)-∑[n]`
-/

namespace A153793.P13647950691591982829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195018 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153793.P13647950691591982829

namespace A153793

/-- `2*A195018(n)-∑[n]` -/
def P13647950691591982829.Spec : Prop :=
  ∀ n, P13647950691591982829.a n = A153793 n

end A153793

/-! ## A153793.P15032199481490853824

`A028994(n)+A022264(n)`
-/

namespace A153793.P15032199481490853824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A022264 n

end

end A153793.P15032199481490853824

namespace A153793

/-- `A028994(n)+A022264(n)` -/
def P15032199481490853824.Spec : Prop :=
  ∀ n, P15032199481490853824.a n = A153793 n

end A153793

/-! ## A153793.P9380953460771202672

`A051868(n)+A022282(n)`
-/

namespace A153793.P9380953460771202672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A022282 n

end

end A153793.P9380953460771202672

namespace A153793

/-- `A051868(n)+A022282(n)` -/
def P9380953460771202672.Spec : Prop :=
  ∀ n, P9380953460771202672.a n = A153793 n

end A153793

/-! ## A153793.P6112257548100087260

`A051870(n)+A022281(n)`
-/

namespace A153793.P6112257548100087260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + A022281 n

end

end A153793.P6112257548100087260

namespace A153793

/-- `A051870(n)+A022281(n)` -/
def P6112257548100087260.Spec : Prop :=
  ∀ n, P6112257548100087260.a n = A153793 n

end A153793

/-! ## A153793.P8776285673711713574

`A051875(n)+A045945(n)`
-/

namespace A153793.P8776285673711713574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + A045945 n

end

end A153793.P8776285673711713574

namespace A153793

/-- `A051875(n)+A045945(n)` -/
def P8776285673711713574.Spec : Prop :=
  ∀ n, P8776285673711713574.a n = A153793 n

end A153793

/-! ## A153793.P15642572107633384989

`A104188(n)+A001106(n)`
-/

namespace A153793.P15642572107633384989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + A001106 n

end

end A153793.P15642572107633384989

namespace A153793

/-- `A104188(n)+A001106(n)` -/
def P15642572107633384989.Spec : Prop :=
  ∀ n, P15642572107633384989.a n = A153793 n

end A153793

/-! ## A153793.P7050895144717523218

`A153792(n)+A000326(n)`
-/

namespace A153793.P7050895144717523218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n + A000326 n

end

end A153793.P7050895144717523218

namespace A153793

/-- `A153792(n)+A000326(n)` -/
def P7050895144717523218.Spec : Prop :=
  ∀ n, P7050895144717523218.a n = A153793 n

end A153793

/-! ## A153793.P5239749852725801427

`A139271(n)+A022280(n)`
-/

namespace A153793.P5239749852725801427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + A022280 n

end

end A153793.P5239749852725801427

namespace A153793

/-- `A139271(n)+A022280(n)` -/
def P5239749852725801427.Spec : Prop :=
  ∀ n, P5239749852725801427.a n = A153793 n

end A153793

/-! ## A153793.P2954900943005833578

`A152734(n)+A014642(n)`
-/

namespace A153793.P2954900943005833578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n + A014642 n

end

end A153793.P2954900943005833578

namespace A153793

/-- `A152734(n)+A014642(n)` -/
def P2954900943005833578.Spec : Prop :=
  ∀ n, P2954900943005833578.a n = A153793 n

end A153793

/-! ## A153793.P7473157531836827949

`A152746(n)+A022272(n)`
-/

namespace A153793.P7473157531836827949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + A022272 n

end

end A153793.P7473157531836827949

namespace A153793

/-- `A152746(n)+A022272(n)` -/
def P7473157531836827949.Spec : Prop :=
  ∀ n, P7473157531836827949.a n = A153793 n

end A153793

/-! ## A153793.P3000016100966881992

`A152751(n)+A022278(n)`
-/

namespace A153793.P3000016100966881992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + A022278 n

end

end A153793.P3000016100966881992

namespace A153793

/-- `A152751(n)+A022278(n)` -/
def P3000016100966881992.Spec : Prop :=
  ∀ n, P3000016100966881992.a n = A153793 n

end A153793

/-! ## A153793.P6557547976800119130

`A152995(n)+A022279(n)`
-/

namespace A153793.P6557547976800119130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + A022279 n

end

end A153793.P6557547976800119130

namespace A153793

/-- `A152995(n)+A022279(n)` -/
def P6557547976800119130.Spec : Prop :=
  ∀ n, P6557547976800119130.a n = A153793 n

end A153793

/-! ## A153793.P11368084234416999352

`A153784(n)+A022276(n)`
-/

namespace A153793.P11368084234416999352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n + A022276 n

end

end A153793.P11368084234416999352

namespace A153793

/-- `A153784(n)+A022276(n)` -/
def P11368084234416999352.Spec : Prop :=
  ∀ n, P11368084234416999352.a n = A153793 n

end A153793

/-!
# A153794: 4 times octagonal numbers: a(n) = 4*n*(3*n-2).

The programs for A153794, the canonical program `A153794.P7722697537094786455` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153794 has offset 0).

The definition of A153794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(3*n-2)` (program `A153794.P7722697537094786455`, by `A153794.P7722697537094786455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153794.P9393946993132685265

`12*n²-8*n`
-/

namespace A153794.P9393946993132685265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - (8 * n : ℤ)

end

end A153794.P9393946993132685265

namespace A153794

/-- `12*n²-8*n` -/
def P9393946993132685265.Spec : Prop :=
  ∀ n, P9393946993132685265.a n = A153794 n

theorem P9393946993132685265.correct : P9393946993132685265.Spec := by
  intro n
  simp only [A153794, Nat.add_sub_cancel, A153794.P9393946993132685265.a, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153794

/-! ## A153794.P7722697537094786455

`4*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153794

/-- `4*n*(3*n-2)` -/
def P7722697537094786455.Spec : Prop :=
  ∀ n, P7722697537094786455.a n = A153794 n

theorem P7722697537094786455.correct : P7722697537094786455.Spec := by
  intro n
  simp only [A153794]

end A153794

/-! ## A153794.P13236623258487347827

`ogf((4x+20x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153794.P13236623258487347827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 20] [1, -3, 3, -1] n

end

end A153794.P13236623258487347827

namespace A153794

/-- `ogf((4x+20x^2)/(1-3x+3x^2-x^3))` -/
def P13236623258487347827.Spec : Prop :=
  ∀ n, P13236623258487347827.a n = A153794 n

end A153794

/-! ## A153794.P6758593501106230718

`∑[a(n-1)+24]` with `a(0)=0, a(1)=4`
-/

namespace A153794.P6758593501106230718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153794.P6758593501106230718

namespace A153794

/-- `∑[a(n-1)+24]` -/
def P6758593501106230718.Spec : Prop :=
  ∀ n, (P6758593501106230718.a n : ℤ) = A153794 n

end A153794

/-! ## A153794.P12064651655685551519

`A153808(n)/2`
-/

namespace A153794.P12064651655685551519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n : ℚ) / 2

end

end A153794.P12064651655685551519

namespace A153794

/-- `A153808(n)/2` -/
def P12064651655685551519.Spec : Prop :=
  ∀ n, P12064651655685551519.a n = (A153794 n : ℚ)

theorem P12064651655685551519.correct : P12064651655685551519.Spec := by
  intro n
  simp only [A153794, Nat.add_sub_cancel, A153794.P12064651655685551519.a, A153794.P7722697537094786455.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153794

/-! ## A153794.P6441440059209590142

`2*A153796(n)/3`
-/

namespace A153794.P6441440059209590142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A153796 n : ℚ) / 3

end

end A153794.P6441440059209590142

namespace A153794

/-- `2*A153796(n)/3` -/
def P6441440059209590142.Spec : Prop :=
  ∀ n, P6441440059209590142.a n = (A153794 n : ℚ)

theorem P6441440059209590142.correct : P6441440059209590142.Spec := by
  intro n
  simp only [A153794, Nat.add_sub_cancel, A153794.P6441440059209590142.a, A153794.P7722697537094786455.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153794

/-! ## A153794.P32823984174797945

`4*A152751(n)/3`
-/

namespace A153794.P32823984174797945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A152751 n : ℚ) / 3

end

end A153794.P32823984174797945

namespace A153794

/-- `4*A152751(n)/3` -/
def P32823984174797945.Spec : Prop :=
  ∀ n, P32823984174797945.a n = (A153794 n : ℚ)

theorem P32823984174797945.correct : P32823984174797945.Spec := by
  intro n
  simp only [A153794, Nat.add_sub_cancel, A153794.P32823984174797945.a, A153794.P7722697537094786455.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153794

/-! ## A153794.P3802237203529115787

`4*A153795(n)/5`
-/

namespace A153794.P3802237203529115787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A153795 n : ℚ) / 5

end

end A153794.P3802237203529115787

namespace A153794

/-- `4*A153795(n)/5` -/
def P3802237203529115787.Spec : Prop :=
  ∀ n, P3802237203529115787.a n = (A153794 n : ℚ)

theorem P3802237203529115787.correct : P3802237203529115787.Spec := by
  intro n
  simp only [A153794, Nat.add_sub_cancel, A153794.P3802237203529115787.a, A153794.P7722697537094786455.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153794

/-! ## A153794.P8674071865037762706

`A081591(n)%A081587(n)`
-/

namespace A153794.P8674071865037762706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081591 n) (A081587 n)

end

end A153794.P8674071865037762706

namespace A153794

/-- `A081591(n)%A081587(n)` -/
def P8674071865037762706.Spec : Prop :=
  ∀ n, P8674071865037762706.a n = A153794 n

end A153794

/-! ## A153794.P2898790659382582437

`A158547(n)%A014641(n)`
-/

namespace A153794.P2898790659382582437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158547 n) (A014641 n)

end

end A153794.P2898790659382582437

namespace A153794

/-- `A158547(n)%A014641(n)` -/
def P2898790659382582437.Spec : Prop :=
  ∀ n, P2898790659382582437.a n = A153794 n

end A153794

/-! ## A153794.P4110762655116076922

`A158556(n)%A016814(n)`
-/

namespace A153794.P4110762655116076922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158556 n) (A016814 n)

end

end A153794.P4110762655116076922

namespace A153794

/-- `A158556(n)%A016814(n)` -/
def P4110762655116076922.Spec : Prop :=
  ∀ n, P4110762655116076922.a n = A153794 n

end A153794

/-! ## A153794.P3389120036960920147

`A017090(n)%A161587(n)`
-/

namespace A153794.P3389120036960920147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017090 n) (A161587 n)

end

end A153794.P3389120036960920147

namespace A153794

/-- `A017090(n)%A161587(n)` -/
def P3389120036960920147.Spec : Prop :=
  ∀ n, P3389120036960920147.a n = A153794 n

end A153794

/-! ## A153794.P16564312234119170602

`A158575(n)%A381196(n)`
-/

namespace A153794.P16564312234119170602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158575 n) (A381196 n)

end

end A153794.P16564312234119170602

namespace A153794

/-- `A158575(n)%A381196(n)` -/
def P16564312234119170602.Spec : Prop :=
  ∀ n, P16564312234119170602.a n = A153794 n

end A153794

/-! ## A153794.P194608916495829927

`A064763(n)%A068379(n+1)`
-/

namespace A153794.P194608916495829927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064763 n) (A068379 (n + 1))

end

end A153794.P194608916495829927

namespace A153794

/-- `A064763(n)%A068379(n+1)` -/
def P194608916495829927.Spec : Prop :=
  ∀ n, P194608916495829927.a n = A153794 n

end A153794

/-! ## A153794.P9630261933863190146

`A069140(n)%A143861(n+1)`
-/

namespace A153794.P9630261933863190146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069140 n) (A143861 (n + 1))

end

end A153794.P9630261933863190146

namespace A153794

/-- `A069140(n)%A143861(n+1)` -/
def P9630261933863190146.Spec : Prop :=
  ∀ n, P9630261933863190146.a n = A153794 n

end A153794

/-! ## A153794.P1065401711303535453

`A271675(A111284(n+1))`
-/

namespace A153794.P1065401711303535453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (A111284 (n + 1)).toNat

end

end A153794.P1065401711303535453

namespace A153794

/-- `A271675(A111284(n+1))` -/
def P1065401711303535453.Spec : Prop :=
  ∀ n, P1065401711303535453.a n = A153794 n

end A153794

/-! ## A153794.P1557066716313011640

`record[A269879(abs(1-n))]`
-/

namespace A153794.P1557066716313011640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269879 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153794.P1557066716313011640

namespace A153794

/-- `record[A269879(abs(1-n))]` -/
def P1557066716313011640.Spec : Prop :=
  ∀ n, P1557066716313011640.a n = A153794 n

end A153794

/-! ## A153794.P18385925948802086113

`and(A185212(n), A226264(n+1))`
-/

namespace A153794.P18385925948802086113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185212 n) (A226264 (n + 1))

end

end A153794.P18385925948802086113

namespace A153794

/-- `and(A185212(n), A226264(n+1))` -/
def P18385925948802086113.Spec : Prop :=
  ∀ n, P18385925948802086113.a n = A153794 n

end A153794

/-! ## A153794.P10932203261829943843

`and(A181358(n), A185212(n))`
-/

namespace A153794.P10932203261829943843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181358 n) (A185212 n)

end

end A153794.P10932203261829943843

namespace A153794

/-- `and(A181358(n), A185212(n))` -/
def P10932203261829943843.Spec : Prop :=
  ∀ n, P10932203261829943843.a n = A153794 n

end A153794

/-!
# A153795: 5 times octagonal numbers: a(n) = 5*n*(3*n-2).

The programs for A153795, the canonical program `A153795.P4253151262494616072` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153795 has offset 0).

The definition of A153795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(3*n-2)` (program `A153795.P4253151262494616072`, by `A153795.P4253151262494616072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153795.P16351430043501789446

`15*n²-10*n`
-/

namespace A153795.P16351430043501789446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 : ℤ) - (10 * n : ℤ)

end

end A153795.P16351430043501789446

namespace A153795

/-- `15*n²-10*n` -/
def P16351430043501789446.Spec : Prop :=
  ∀ n, P16351430043501789446.a n = A153795 n

theorem P16351430043501789446.correct : P16351430043501789446.Spec := by
  intro n
  simp only [A153795, Nat.add_sub_cancel, A153795.P16351430043501789446.a, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153795

/-! ## A153795.P4253151262494616072

`5*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153795

/-- `5*n*(3*n-2)` -/
def P4253151262494616072.Spec : Prop :=
  ∀ n, P4253151262494616072.a n = A153795 n

theorem P4253151262494616072.correct : P4253151262494616072.Spec := by
  intro n
  simp only [A153795]

end A153795

/-! ## A153795.P14607428512736548338

`ogf((5x+25x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153795.P14607428512736548338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 25] [1, -3, 3, -1] n

end

end A153795.P14607428512736548338

namespace A153795

/-- `ogf((5x+25x^2)/(1-3x+3x^2-x^3))` -/
def P14607428512736548338.Spec : Prop :=
  ∀ n, P14607428512736548338.a n = A153795 n

end A153795

/-! ## A153795.P4336520222342680061

`∑[a(n-1)+30]` with `a(0)=0, a(1)=5`
-/

namespace A153795.P4336520222342680061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153795.P4336520222342680061

namespace A153795

/-- `∑[a(n-1)+30]` -/
def P4336520222342680061.Spec : Prop :=
  ∀ n, (P4336520222342680061.a n : ℤ) = A153795 n

end A153795

/-! ## A153795.P5526705551613261381

`5*A139267(n)/2`
-/

namespace A153795.P5526705551613261381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A139267 n : ℚ) / 2

end

end A153795.P5526705551613261381

namespace A153795

/-- `5*A139267(n)/2` -/
def P5526705551613261381.Spec : Prop :=
  ∀ n, P5526705551613261381.a n = (A153795 n : ℚ)

theorem P5526705551613261381.correct : P5526705551613261381.Spec := by
  intro n
  simp only [A153795, Nat.add_sub_cancel, A153795.P5526705551613261381.a, A153795.P4253151262494616072.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153795

/-! ## A153795.P8148608432402549276

`5*A152751(n)/3`
-/

namespace A153795.P8148608432402549276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A152751 n : ℚ) / 3

end

end A153795.P8148608432402549276

namespace A153795

/-- `5*A152751(n)/3` -/
def P8148608432402549276.Spec : Prop :=
  ∀ n, P8148608432402549276.a n = (A153795 n : ℚ)

theorem P8148608432402549276.correct : P8148608432402549276.Spec := by
  intro n
  simp only [A153795, Nat.add_sub_cancel, A153795.P8148608432402549276.a, A153795.P4253151262494616072.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153795

/-! ## A153795.P8347248938303242735

`5*A153794(n)/4`
-/

namespace A153795.P8347248938303242735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A153794 n : ℚ) / 4

end

end A153795.P8347248938303242735

namespace A153795

/-- `5*A153794(n)/4` -/
def P8347248938303242735.Spec : Prop :=
  ∀ n, P8347248938303242735.a n = (A153795 n : ℚ)

theorem P8347248938303242735.correct : P8347248938303242735.Spec := by
  intro n
  simp only [A153795, Nat.add_sub_cancel, A153795.P8347248938303242735.a, A153795.P4253151262494616072.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153795

/-! ## A153795.P16511944572949187439

`A158602(n)%A016862(n)`
-/

namespace A153795.P16511944572949187439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158602 n) (A016862 n)

end

end A153795.P16511944572949187439

namespace A153795

/-- `A158602(n)%A016862(n)` -/
def P16511944572949187439.Spec : Prop :=
  ∀ n, P16511944572949187439.a n = A153795 n

end A153795

/-! ## A153795.P4629876414517527920

`A247155(n)%A028993(n)`
-/

namespace A153795.P4629876414517527920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247155 n) (A028993 n)

end

end A153795.P4629876414517527920

namespace A153795

/-- `A247155(n)%A028993(n)` -/
def P4629876414517527920.Spec : Prop :=
  ∀ n, P4629876414517527920.a n = A153795 n

end A153795

/-! ## A153795.P13861286359645973546

`A008587(A000567(n))`
-/

namespace A153795.P13861286359645973546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A000567 n).toNat

end

end A153795.P13861286359645973546

namespace A153795

/-- `A008587(A000567(n))` -/
def P13861286359645973546.Spec : Prop :=
  ∀ n, P13861286359645973546.a n = A153795 n

end A153795

/-!
# A153796: 6 times octagonal numbers: a(n) = 6*n*(3*n-2).

The programs for A153796, the canonical program `A153796.P2544292493987041900` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153796 has offset 0).

The definition of A153796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(3*n-2)` (program `A153796.P2544292493987041900`, by `A153796.P2544292493987041900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153796.P7390764509670869533

`18*n²-12*n`
-/

namespace A153796.P7390764509670869533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n ^ 2 : ℤ) - (12 * n : ℤ)

end

end A153796.P7390764509670869533

namespace A153796

/-- `18*n²-12*n` -/
def P7390764509670869533.Spec : Prop :=
  ∀ n, P7390764509670869533.a n = A153796 n

theorem P7390764509670869533.correct : P7390764509670869533.Spec := by
  intro n
  simp only [A153796, Nat.add_sub_cancel, A153796.P7390764509670869533.a, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153796

/-! ## A153796.P2544292493987041900

`6*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153796

/-- `6*n*(3*n-2)` -/
def P2544292493987041900.Spec : Prop :=
  ∀ n, P2544292493987041900.a n = A153796 n

theorem P2544292493987041900.correct : P2544292493987041900.Spec := by
  intro n
  simp only [A153796]

end A153796

/-! ## A153796.P9229806648364436413

`ogf((6x+30x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153796.P9229806648364436413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 30] [1, -3, 3, -1] n

end

end A153796.P9229806648364436413

namespace A153796

/-- `ogf((6x+30x^2)/(1-3x+3x^2-x^3))` -/
def P9229806648364436413.Spec : Prop :=
  ∀ n, P9229806648364436413.a n = A153796 n

end A153796

/-! ## A153796.P6617458140246308847

`∑[a(n-1)+36]` with `a(0)=0, a(1)=6`
-/

namespace A153796.P6617458140246308847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153796.P6617458140246308847

namespace A153796

/-- `∑[a(n-1)+36]` -/
def P6617458140246308847.Spec : Prop :=
  ∀ n, (P6617458140246308847.a n : ℤ) = A153796 n

end A153796

/-! ## A153796.P6773630193532139171

`2*A064201(n)/3`
-/

namespace A153796.P6773630193532139171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A064201 n : ℚ) / 3

end

end A153796.P6773630193532139171

namespace A153796

/-- `2*A064201(n)/3` -/
def P6773630193532139171.Spec : Prop :=
  ∀ n, P6773630193532139171.a n = (A153796 n : ℚ)

theorem P6773630193532139171.correct : P6773630193532139171.Spec := by
  intro n
  simp only [A153796, Nat.add_sub_cancel, A153796.P6773630193532139171.a, A153796.P2544292493987041900.a, A064201, A064201.P17766213775117600719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153796

/-! ## A153796.P1088402611191071311

`3*A153794(n)/2`
-/

namespace A153796.P1088402611191071311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A153794 n : ℚ) / 2

end

end A153796.P1088402611191071311

namespace A153796

/-- `3*A153794(n)/2` -/
def P1088402611191071311.Spec : Prop :=
  ∀ n, P1088402611191071311.a n = (A153796 n : ℚ)

theorem P1088402611191071311.correct : P1088402611191071311.Spec := by
  intro n
  simp only [A153796, Nat.add_sub_cancel, A153796.P1088402611191071311.a, A153796.P2544292493987041900.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153796

/-! ## A153796.P10243388759200876215

`3*A153808(n)/4`
-/

namespace A153796.P10243388759200876215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A153808 n : ℚ) / 4

end

end A153796.P10243388759200876215

namespace A153796

/-- `3*A153808(n)/4` -/
def P10243388759200876215.Spec : Prop :=
  ∀ n, P10243388759200876215.a n = (A153796 n : ℚ)

theorem P10243388759200876215.correct : P10243388759200876215.Spec := by
  intro n
  simp only [A153796, Nat.add_sub_cancel, A153796.P10243388759200876215.a, A153796.P2544292493987041900.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153796

/-! ## A153796.P12260715155000068103

`A158646(n)%A016922(n)`
-/

namespace A153796.P12260715155000068103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158646 n) (A016922 n)

end

end A153796.P12260715155000068103

namespace A153796

/-- `A158646(n)%A016922(n)` -/
def P12260715155000068103.Spec : Prop :=
  ∀ n, P12260715155000068103.a n = A153796 n

end A153796

/-! ## A153796.P14650528346881700486

`A158593(n)%A033574(n)`
-/

namespace A153796.P14650528346881700486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158593 n) (A033574 n)

end

end A153796.P14650528346881700486

namespace A153796

/-- `A158593(n)%A033574(n)` -/
def P14650528346881700486.Spec : Prop :=
  ∀ n, P14650528346881700486.a n = A153796 n

end A153796

/-! ## A153796.P15525828961522700028

`A158591(n)%A081275(n)`
-/

namespace A153796.P15525828961522700028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158591 n) (A081275 n)

end

end A153796.P15525828961522700028

namespace A153796

/-- `A158591(n)%A081275(n)` -/
def P15525828961522700028.Spec : Prop :=
  ∀ n, P15525828961522700028.a n = A153796 n

end A153796

/-! ## A153796.P3202499502088972334

`lcm(A008458(n), A139267(n))`
-/

namespace A153796.P3202499502088972334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008458 n) (A139267 n)

end

end A153796.P3202499502088972334

namespace A153796

/-- `lcm(A008458(n), A139267(n))` -/
def P3202499502088972334.Spec : Prop :=
  ∀ n, (P3202499502088972334.a n : ℤ) = A153796 n

end A153796

/-! ## A153796.P254198359112923611

`A277990(n)%A068380(n+1)`
-/

namespace A153796.P254198359112923611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277990 n) (A068380 (n + 1))

end

end A153796.P254198359112923611

namespace A153796

/-- `A277990(n)%A068380(n+1)` -/
def P254198359112923611.Spec : Prop :=
  ∀ n, P254198359112923611.a n = A153796 n

end A153796

/-! ## A153796.P15094365936671347636

`A325686(A016921(n))`
-/

namespace A153796.P15094365936671347636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325686 (A016921 n).toNat

end

end A153796.P15094365936671347636

namespace A153796

/-- `A325686(A016921(n))` -/
def P15094365936671347636.Spec : Prop :=
  ∀ n, P15094365936671347636.a n = A153796 n

end A153796

/-! ## A153796.P6200304010425189300

`A325686(A271114(n))`
-/

namespace A153796.P6200304010425189300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325686 (A271114 n).toNat

end

end A153796.P6200304010425189300

namespace A153796

/-- `A325686(A271114(n))` -/
def P6200304010425189300.Spec : Prop :=
  ∀ n, P6200304010425189300.a n = A153796 n

end A153796

/-!
# A153797: 7 times octagonal numbers: a(n) = 7*n*(3*n-2).

The programs for A153797, the canonical program `A153797.P1020360065334955704` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153797 has offset 0).

The definition of A153797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n*(3*n-2)` (program `A153797.P1020360065334955704`, by `A153797.P1020360065334955704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153797.P1003470506516156333

`21*n²-14*n`
-/

namespace A153797.P1003470506516156333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n ^ 2 : ℤ) - (14 * n : ℤ)

end

end A153797.P1003470506516156333

namespace A153797

/-- `21*n²-14*n` -/
def P1003470506516156333.Spec : Prop :=
  ∀ n, P1003470506516156333.a n = A153797 n

theorem P1003470506516156333.correct : P1003470506516156333.Spec := by
  intro n
  simp only [A153797, Nat.add_sub_cancel, A153797.P1003470506516156333.a, A153797.P1020360065334955704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153797

/-! ## A153797.P1020360065334955704

`7*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153797

/-- `7*n*(3*n-2)` -/
def P1020360065334955704.Spec : Prop :=
  ∀ n, P1020360065334955704.a n = A153797 n

theorem P1020360065334955704.correct : P1020360065334955704.Spec := by
  intro n
  simp only [A153797]

end A153797

/-! ## A153797.P14167149717671672142

`ogf((7x+35x^2)/(1-3x+3x^2-x^3))`
-/

namespace A153797.P14167149717671672142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 35] [1, -3, 3, -1] n

end

end A153797.P14167149717671672142

namespace A153797

/-- `ogf((7x+35x^2)/(1-3x+3x^2-x^3))` -/
def P14167149717671672142.Spec : Prop :=
  ∀ n, P14167149717671672142.a n = A153797 n

end A153797

/-! ## A153797.P13877282072843845274

`∑[a(n-1)+42]` with `a(0)=0, a(1)=7`
-/

namespace A153797.P13877282072843845274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153797.P13877282072843845274

namespace A153797

/-- `∑[a(n-1)+42]` -/
def P13877282072843845274.Spec : Prop :=
  ∀ n, (P13877282072843845274.a n : ℤ) = A153797 n

end A153797

/-! ## A153797.P1072624076059567872

`A158734(n)%A016994(n)`
-/

namespace A153797.P1072624076059567872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158734 n) (A016994 n)

end

end A153797.P1072624076059567872

namespace A153797

/-- `A158734(n)%A016994(n)` -/
def P1072624076059567872.Spec : Prop :=
  ∀ n, P1072624076059567872.a n = A153797 n

end A153797

/-! ## A153797.P9004808285951500268

`A008589(A000567(n))`
-/

namespace A153797.P9004808285951500268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A000567 n).toNat

end

end A153797.P9004808285951500268

namespace A153797

/-- `A008589(A000567(n))` -/
def P9004808285951500268.Spec : Prop :=
  ∀ n, P9004808285951500268.a n = A153797 n

end A153797

/-! ## A153797.P7650689288388248615

`A008589(A033428(n)-2*n)`
-/

namespace A153797.P7650689288388248615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A033428 n - (2 * n : ℤ)).toNat

end

end A153797.P7650689288388248615

namespace A153797

/-- `A008589(A033428(n)-2*n)` -/
def P7650689288388248615.Spec : Prop :=
  ∀ n, P7650689288388248615.a n = A153797 n

end A153797

/-!
# A153798: a(n) = A000043(n)-2.

The programs for A153798, there is no canonical definition to state claims against.
-/

/-! ## A153798.P12152294781737894239

`A000043(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153798.P12152294781737894239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - 2

end

end A153798.P12152294781737894239

/-! ## A153798.P10536661500486047900

`A090748(1+n)-1`
-/

namespace A153798.P10536661500486047900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (1 + n) - 1

end

end A153798.P10536661500486047900

/-! ## A153798.P15380979958680971728

`A134712(n+1)+n`
-/

namespace A153798.P15380979958680971728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134712 (n + 1) + (n : ℤ)

end

end A153798.P15380979958680971728

/-! ## A153798.P7437570498706875263

`sqrt(A395178(1+n))-2`
-/

namespace A153798.P7437570498706875263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A395178 (1 + n) : ℝ) - 2

end

end A153798.P7437570498706875263

/-! ## A153798.P9521168287194089756

`col(A139116(n+1)-1)`
-/

namespace A153798.P9521168287194089756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A139116 (n + 1) - 1).toNat

end

end A153798.P9521168287194089756

/-! ## A153798.P9473222965281302200

`A061645(n+1)/2-2`
-/

namespace A153798.P9473222965281302200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2 - 2

end

end A153798.P9473222965281302200

/-! ## A153798.P8110238266100713918

`(A133033(n+1)-3)/2`
-/

namespace A153798.P8110238266100713918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133033 (n + 1) - 3 : ℚ) / 2

end

end A153798.P8110238266100713918

/-! ## A153798.P7035197161176700600

`A134713(n+1)+n-1`
-/

namespace A153798.P7035197161176700600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134713 (n + 1) + ((n : ℤ) - 1)

end

end A153798.P7035197161176700600

/-! ## A153798.P5658325463454730328

`A153801(n+1)+A040976(n+1)`
-/

namespace A153798.P5658325463454730328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153801 (n + 1) + A040976 (n + 1)

end

end A153798.P5658325463454730328

/-!
# A153799: Decimal expansion of 4 - Pi.

The programs for A153799, there is no canonical definition to state claims against.
-/

/-! ## A153799.P1857336403133162305

`9-A000796(n+1)`
-/

namespace A153799.P1857336403133162305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A000796 (n + 1 + 1)

end

end A153799.P1857336403133162305

/-! ## A153799.P12437144688583636033

`10-A123152(n+2)`
-/

namespace A153799.P12437144688583636033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A123152 (n + 2)

end

end A153799.P12437144688583636033

/-! ## A153799.P3811543228601069983

`6-∑[A095916(n+1)]`
-/

namespace A153799.P3811543228601069983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153799.P3811543228601069983

/-! ## A153799.P15368703214037460776

`A030644(n)-Δ[A000796(n)]`
-/

namespace A153799.P15368703214037460776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - (f1 (n + 1) - f1 n)

end

end A153799.P15368703214037460776

/-! ## A153799.P8653612608574277254

`A030644(n)-A095916(n+1)`
-/

namespace A153799.P8653612608574277254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - A095916 (n + 1)

end

end A153799.P8653612608574277254

/-! ## A153799.P16975790030504832557

`A153805(n)-A187747(n+1)`
-/

namespace A153799.P16975790030504832557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n - A187747 (n + 1)

end

end A153799.P16975790030504832557

/-! ## A153799.P5362618621360651541

`A030644(n)-Δ[A187747(n)+A001113(n)]`
-/

namespace A153799.P5362618621360651541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - (f1 (n + 1) - f1 n)

end

end A153799.P5362618621360651541

/-! ## A153799.P15808152497124077532

`A030644(n+1)`
-/

namespace A153799.P15808152497124077532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1 + 1)

end

end A153799.P15808152497124077532

/-! ## A153799.P7772278300502856933

`9-Δ[A046974(n)]`
-/

namespace A153799.P7772278300502856933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A153799.P7772278300502856933

/-! ## A153799.P10687437080735593295

`A010733(n+1)-A054249(n+2)`
-/

namespace A153799.P10687437080735593295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010733 (n + 1) - A054249 (n + 2)

end

end A153799.P10687437080735593295

/-! ## A153799.P2122986687565793875

`A010729(n+1)+1-A054249(n+2)`
-/

namespace A153799.P2122986687565793875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (n + 1) + (1 - A054249 (n + 2))

end

end A153799.P2122986687565793875

/-! ## A153799.P6838647583987573729

`A010724(n+1)+2-A054249(n+2)`
-/

namespace A153799.P6838647583987573729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 (n + 1) + (2 - A054249 (n + 2))

end

end A153799.P6838647583987573729

/-! ## A153799.P14363243231848794175

`4+A010711(n+1)-A054249(n+2)`
-/

namespace A153799.P14363243231848794175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A010711 (n + 1) - A054249 (n + 2))

end

end A153799.P14363243231848794175

/-! ## A153799.P13168398901737666153

`5+A010703(n+1)-A054249(n+2)`
-/

namespace A153799.P13168398901737666153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + (A010703 (n + 1) - A054249 (n + 2))

end

end A153799.P13168398901737666153

/-! ## A153799.P7466799074402032299

`9-A001355(2*n+3)`
-/

namespace A153799.P7466799074402032299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001355 (2 * n + 3)

end

end A153799.P7466799074402032299

/-! ## A153799.P14991256622544454507

`a(n-1)-Δ[A110766(2*n+1)]` with `a(0)=8`
-/

namespace A153799.P14991256622544454507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A153799.P14991256622544454507

/-! ## A153799.P14980339676056496868

`9-Δ[A059582(n+1)]`
-/

namespace A153799.P14980339676056496868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A153799.P14980339676056496868

/-! ## A153799.P9202501399124790878

`A140353(n+1)-A109635(n+1)`
-/

namespace A153799.P9202501399124790878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - A109635 (n + 1)

end

end A153799.P9202501399124790878

