import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A138401: a(n) = prime(n)^4 - prime(n).

The programs for A138401, the canonical program `A138401.P13607620194093775953` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138401 has offset 1).

The definition of A138401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138401.P13607620194093775953

`A030514(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138401

/-- `A030514(n+1)-A000040(n+1)` -/
def P13607620194093775953.Spec : Prop :=
  ∀ n, P13607620194093775953.a n = A138401 (n + 1)

theorem P13607620194093775953.correct : P13607620194093775953.Spec := by
  intro n
  simp only [A138401, Nat.add_sub_cancel]

end A138401

/-! ## A138401.P16658704721799955840

`2*A138417(n+1)`
-/

namespace A138401.P16658704721799955840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138417 (n + 1)

end

end A138401.P16658704721799955840

namespace A138401

/-- `2*A138417(n+1)` -/
def P16658704721799955840.Spec : Prop :=
  ∀ n, P16658704721799955840.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P11056928393056347010

`A138402(n+1)+A036689(n+1)`
-/

namespace A138401.P11056928393056347010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138402 (n + 1) + A036689 (n + 1)

end

end A138401.P11056928393056347010

namespace A138401

/-- `A138402(n+1)+A036689(n+1)` -/
def P11056928393056347010.Spec : Prop :=
  ∀ n, P11056928393056347010.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P5570571216932462532

`A138403(n+1)+A127917(n+1)`
-/

namespace A138401.P5570571216932462532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138403 (n + 1) + A127917 (n + 1)

end

end A138401.P5570571216932462532

namespace A138401

/-- `A138403(n+1)+A127917(n+1)` -/
def P5570571216932462532.Spec : Prop :=
  ∀ n, P5570571216932462532.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P18396480154385467175

`A138404(n+1)-A138407(n+1)`
-/

namespace A138401.P18396480154385467175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) - A138407 (n + 1)

end

end A138401.P18396480154385467175

namespace A138401

/-- `A138404(n+1)-A138407(n+1)` -/
def P18396480154385467175.Spec : Prop :=
  ∀ n, P18396480154385467175.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P14568753296691169902

`A138408(n+1)-A138411(n+1)`
-/

namespace A138401.P14568753296691169902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A138411 (n + 1)

end

end A138401.P14568753296691169902

namespace A138401

/-- `A138408(n+1)-A138411(n+1)` -/
def P14568753296691169902.Spec : Prop :=
  ∀ n, P14568753296691169902.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P16122251474084111312

`A036689(n+1)*A060800(n+1)`
-/

namespace A138401.P16122251474084111312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A060800 (n + 1)

end

end A138401.P16122251474084111312

namespace A138401

/-- `A036689(n+1)*A060800(n+1)` -/
def P16122251474084111312.Spec : Prop :=
  ∀ n, P16122251474084111312.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P16629051411329525508

`A006093(n+1)*A181149(n+1)`
-/

namespace A138401.P16629051411329525508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A181149 (n + 1)

end

end A138401.P16629051411329525508

namespace A138401

/-- `A006093(n+1)*A181149(n+1)` -/
def P16629051411329525508.Spec : Prop :=
  ∀ n, P16629051411329525508.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P15778347611678531371

`A138405(n+1)/A000040(n+1)`
-/

namespace A138401.P15778347611678531371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138401.P15778347611678531371

namespace A138401

/-- `A138405(n+1)/A000040(n+1)` -/
def P15778347611678531371.Spec : Prop :=
  ∀ n, P15778347611678531371.a n = (A138401 (n + 1) : ℚ)

end A138401

/-! ## A138401.P8131985687721007498

`A138410(n+1)/A001248(n+1)`
-/

namespace A138401.P8131985687721007498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138401.P8131985687721007498

namespace A138401

/-- `A138410(n+1)/A001248(n+1)` -/
def P8131985687721007498.Spec : Prop :=
  ∀ n, P8131985687721007498.a n = (A138401 (n + 1) : ℚ)

end A138401

/-! ## A138401.P8756494714518121820

`A138404(n+1)%A030514(n+1)`
-/

namespace A138401.P8756494714518121820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138404 (n + 1)) (A030514 (n + 1))

end

end A138401.P8756494714518121820

namespace A138401

/-- `A138404(n+1)%A030514(n+1)` -/
def P8756494714518121820.Spec : Prop :=
  ∀ n, P8756494714518121820.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P6014283697830771057

`A138408(n+1)%A030514(n+1)`
-/

namespace A138401.P6014283697830771057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138408 (n + 1)) (A030514 (n + 1))

end

end A138401.P6014283697830771057

namespace A138401

/-- `A138408(n+1)%A030514(n+1)` -/
def P6014283697830771057.Spec : Prop :=
  ∀ n, P6014283697830771057.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P6087590802691171502

`lcm(A036689(n+1), A138417(n+1))`
-/

namespace A138401.P6087590802691171502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036689 (n + 1)) (A138417 (n + 1))

end

end A138401.P6087590802691171502

namespace A138401

/-- `lcm(A036689(n+1), A138417(n+1))` -/
def P6087590802691171502.Spec : Prop :=
  ∀ n, (P6087590802691171502.a n : ℤ) = A138401 (n + 1)

end A138401

/-! ## A138401.P4868752925466870970

`A001248(n+1)²-Δ[A007504(n)]`
-/

namespace A138401.P4868752925466870970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A138401.P4868752925466870970

namespace A138401

/-- `A001248(n+1)²-Δ[A007504(n)]` -/
def P4868752925466870970.Spec : Prop :=
  ∀ n, P4868752925466870970.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P12726841819714803490

`A001248(n+1)²-p?[A259153(n)]`
-/

namespace A138401.P12726841819714803490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138401.P12726841819714803490

namespace A138401

/-- `A001248(n+1)²-p?[A259153(n)]` -/
def P12726841819714803490.Spec : Prop :=
  ∀ n, P12726841819714803490.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P2243686861601710435

`A001248(n+1)²-A000040(n+1)`
-/

namespace A138401.P2243686861601710435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - A000040 (n + 1)

end

end A138401.P2243686861601710435

namespace A138401

/-- `A001248(n+1)²-A000040(n+1)` -/
def P2243686861601710435.Spec : Prop :=
  ∀ n, P2243686861601710435.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P4117554132998589661

`A138410(n+1)/A000040(n+1)²`
-/

namespace A138401.P4117554132998589661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A138401.P4117554132998589661

namespace A138401

/-- `A138410(n+1)/A000040(n+1)²` -/
def P4117554132998589661.Spec : Prop :=
  ∀ n, P4117554132998589661.a n = (A138401 (n + 1) : ℚ)

end A138401

/-! ## A138401.P11542618897820531948

`A000040(n+1)²²-Δ[A007504(n)]`
-/

namespace A138401.P11542618897820531948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2 - (f1 (n + 1) - f1 n)

end

end A138401.P11542618897820531948

namespace A138401

/-- `A000040(n+1)²²-Δ[A007504(n)]` -/
def P11542618897820531948.Spec : Prop :=
  ∀ n, P11542618897820531948.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P4452601231859802730

`Δ[A022837(n)]²²-A000040(n+1)`
-/

namespace A138401.P4452601231859802730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 - A000040 (n + 1)

end

end A138401.P4452601231859802730

namespace A138401

/-- `Δ[A022837(n)]²²-A000040(n+1)` -/
def P4452601231859802730.Spec : Prop :=
  ∀ n, P4452601231859802730.a n = A138401 (n + 1)

end A138401

/-! ## A138401.P14536251922430403014

`A008837(n+1)+A138402(n+1)+A008837(n+1)`
-/

namespace A138401.P14536251922430403014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + (A138402 (n + 1) + A008837 (n + 1))

end

end A138401.P14536251922430403014

namespace A138401

/-- `A008837(n+1)+A138402(n+1)+A008837(n+1)` -/
def P14536251922430403014.Spec : Prop :=
  ∀ n, P14536251922430403014.a n = A138401 (n + 1)

end A138401

/-!
# A138402: a(n) = (n-th prime)^4-(n-th prime)^2.

The programs for A138402, the canonical program `A138402.P2862729920963490813` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138402 has offset 1).

The definition of A138402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A036690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138402.P2862729920963490813

`A036689(n+1)*A036690(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138402

/-- `A036689(n+1)*A036690(n+1)` -/
def P2862729920963490813.Spec : Prop :=
  ∀ n, P2862729920963490813.a n = A138402 (n + 1)

theorem P2862729920963490813.correct : P2862729920963490813.Spec := by
  intro n
  simp only [A138402, Nat.add_sub_cancel]

end A138402

/-! ## A138402.P10645699974048253540

`A001248(n+1)*A084920(n+1)`
-/

namespace A138402.P10645699974048253540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A084920 (n + 1)

end

end A138402.P10645699974048253540

namespace A138402

/-- `A001248(n+1)*A084920(n+1)` -/
def P10645699974048253540.Spec : Prop :=
  ∀ n, P10645699974048253540.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P6102127638601630330

`2*A138418(n+1)`
-/

namespace A138402.P6102127638601630330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138418 (n + 1)

end

end A138402.P6102127638601630330

namespace A138402

/-- `2*A138418(n+1)` -/
def P6102127638601630330.Spec : Prop :=
  ∀ n, P6102127638601630330.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P17499073351046122692

`3*A138419(n+1)`
-/

namespace A138402.P17499073351046122692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138419 (n + 1)

end

end A138402.P17499073351046122692

namespace A138402

/-- `3*A138419(n+1)` -/
def P17499073351046122692.Spec : Prop :=
  ∀ n, P17499073351046122692.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P13009133566413552023

`4*A138420(n+1)`
-/

namespace A138402.P13009133566413552023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138420 (n + 1)

end

end A138402.P13009133566413552023

namespace A138402

/-- `4*A138420(n+1)` -/
def P13009133566413552023.Spec : Prop :=
  ∀ n, P13009133566413552023.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P4158842451011657371

`6*A138421(n+1)`
-/

namespace A138402.P4158842451011657371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138421 (n + 1)

end

end A138402.P4158842451011657371

namespace A138402

/-- `6*A138421(n+1)` -/
def P4158842451011657371.Spec : Prop :=
  ∀ n, P4158842451011657371.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P8860498341280851438

`3*4*A138422(n+1)`
-/

namespace A138402.P8860498341280851438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A138422 (n + 1))

end

end A138402.P8860498341280851438

namespace A138402

/-- `3*4*A138422(n+1)` -/
def P8860498341280851438.Spec : Prop :=
  ∀ n, P8860498341280851438.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P16487766161535763340

`2*C(A001248(n+1), 2)`
-/

namespace A138402.P16487766161535763340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001248 (n + 1)).toNat 2

end

end A138402.P16487766161535763340

namespace A138402

/-- `2*C(A001248(n+1), 2)` -/
def P16487766161535763340.Spec : Prop :=
  ∀ n, (P16487766161535763340.a n : ℤ) = A138402 (n + 1)

end A138402

/-! ## A138402.P16779202514885804882

`floor((A179262(n+1)/2)²)`
-/

namespace A138402.P16779202514885804882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A179262 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A138402.P16779202514885804882

namespace A138402

/-- `floor((A179262(n+1)/2)²)` -/
def P16779202514885804882.Spec : Prop :=
  ∀ n, P16779202514885804882.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P9462179671554322194

`2*C(A000040(n+1)², 2)`
-/

namespace A138402.P9462179671554322194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1) ^ 2).toNat 2

end

end A138402.P9462179671554322194

namespace A138402

/-- `2*C(A000040(n+1)², 2)` -/
def P9462179671554322194.Spec : Prop :=
  ∀ n, (P9462179671554322194.a n : ℤ) = A138402 (n + 1)

end A138402

/-! ## A138402.P5222910473639379003

`A138403(n+1)+A135177(n+1)`
-/

namespace A138402.P5222910473639379003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138403 (n + 1) + A135177 (n + 1)

end

end A138402.P5222910473639379003

namespace A138402

/-- `A138403(n+1)+A135177(n+1)` -/
def P5222910473639379003.Spec : Prop :=
  ∀ n, P5222910473639379003.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P572292495190051471

`A244509(n+1)+A127917(n+1)`
-/

namespace A138402.P572292495190051471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244509 (n + 1) + A127917 (n + 1)

end

end A138402.P572292495190051471

namespace A138402

/-- `A244509(n+1)+A127917(n+1)` -/
def P572292495190051471.Spec : Prop :=
  ∀ n, P572292495190051471.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P4525460320282857954

`A030514(n+1)-A001248(n+1)`
-/

namespace A138402.P4525460320282857954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - A001248 (n + 1)

end

end A138402.P4525460320282857954

namespace A138402

/-- `A030514(n+1)-A001248(n+1)` -/
def P4525460320282857954.Spec : Prop :=
  ∀ n, P4525460320282857954.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P3138362167359170517

`A138401(n+1)-A036689(n+1)`
-/

namespace A138402.P3138362167359170517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138401 (n + 1) - A036689 (n + 1)

end

end A138402.P3138362167359170517

namespace A138402

/-- `A138401(n+1)-A036689(n+1)` -/
def P3138362167359170517.Spec : Prop :=
  ∀ n, P3138362167359170517.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P2092575586677566910

`A138405(n+1)-A138407(n+1)`
-/

namespace A138402.P2092575586677566910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) - A138407 (n + 1)

end

end A138402.P2092575586677566910

namespace A138402

/-- `A138405(n+1)-A138407(n+1)` -/
def P2092575586677566910.Spec : Prop :=
  ∀ n, P2092575586677566910.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P11069739570484090239

`A138409(n+1)-A138411(n+1)`
-/

namespace A138402.P11069739570484090239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A138411 (n + 1)

end

end A138402.P11069739570484090239

namespace A138402

/-- `A138409(n+1)-A138411(n+1)` -/
def P11069739570484090239.Spec : Prop :=
  ∀ n, P11069739570484090239.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P2427256271709057721

`A000040(n+1)*A127917(n+1)`
-/

namespace A138402.P2427256271709057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A127917 (n + 1)

end

end A138402.P2427256271709057721

namespace A138402

/-- `A000040(n+1)*A127917(n+1)` -/
def P2427256271709057721.Spec : Prop :=
  ∀ n, P2427256271709057721.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P15595512762482926381

`A001748(n+1)*A127919(n+1)`
-/

namespace A138402.P15595512762482926381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A127919 (n + 1)

end

end A138402.P15595512762482926381

namespace A138402

/-- `A001748(n+1)*A127919(n+1)` -/
def P15595512762482926381.Spec : Prop :=
  ∀ n, P15595512762482926381.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P10146495192602673434

`A006093(n+1)*A135178(n+1)`
-/

namespace A138402.P10146495192602673434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A135178 (n + 1)

end

end A138402.P10146495192602673434

namespace A138402

/-- `A006093(n+1)*A135178(n+1)` -/
def P10146495192602673434.Spec : Prop :=
  ∀ n, P10146495192602673434.a n = A138402 (n + 1)

end A138402

/-! ## A138402.P16727690611876048114

`A008864(n+1)*A135177(n+1)`
-/

namespace A138402.P16727690611876048114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A135177 (n + 1)

end

end A138402.P16727690611876048114

namespace A138402

/-- `A008864(n+1)*A135177(n+1)` -/
def P16727690611876048114.Spec : Prop :=
  ∀ n, P16727690611876048114.a n = A138402 (n + 1)

end A138402

/-!
# A138403: a(n) = p^3*(p-1), where p = prime(n).

The programs for A138403, the canonical program `A138403.P9837002245501069480` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138403 has offset 1).

The definition of A138403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A030514, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138403.P9837002245501069480

`A030514(n+1)-A030078(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138403

/-- `A030514(n+1)-A030078(n+1)` -/
def P9837002245501069480.Spec : Prop :=
  ∀ n, P9837002245501069480.a n = A138403 (n + 1)

theorem P9837002245501069480.correct : P9837002245501069480.Spec := by
  intro n
  simp only [A138403, Nat.add_sub_cancel]

end A138403

/-! ## A138403.P15550841068667812519

`2*A138423(n+1)`
-/

namespace A138403.P15550841068667812519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138423 (n + 1)

end

end A138403.P15550841068667812519

namespace A138403

/-- `2*A138423(n+1)` -/
def P15550841068667812519.Spec : Prop :=
  ∀ n, P15550841068667812519.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P5651288885225707503

`A244509(n+1)+A036689(n+1)`
-/

namespace A138403.P5651288885225707503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244509 (n + 1) + A036689 (n + 1)

end

end A138403.P5651288885225707503

namespace A138403

/-- `A244509(n+1)+A036689(n+1)` -/
def P5651288885225707503.Spec : Prop :=
  ∀ n, P5651288885225707503.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P5153640135202154802

`A138401(n+1)-A127917(n+1)`
-/

namespace A138403.P5153640135202154802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138401 (n + 1) - A127917 (n + 1)

end

end A138403.P5153640135202154802

namespace A138403

/-- `A138401(n+1)-A127917(n+1)` -/
def P5153640135202154802.Spec : Prop :=
  ∀ n, P5153640135202154802.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P10661563575637043161

`A138402(n+1)-A135177(n+1)`
-/

namespace A138403.P10661563575637043161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138402 (n + 1) - A135177 (n + 1)

end

end A138403.P10661563575637043161

namespace A138403

/-- `A138402(n+1)-A135177(n+1)` -/
def P10661563575637043161.Spec : Prop :=
  ∀ n, P10661563575637043161.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P16925191451767719979

`A138406(n+1)-A138407(n+1)`
-/

namespace A138403.P16925191451767719979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) - A138407 (n + 1)

end

end A138403.P16925191451767719979

namespace A138403

/-- `A138406(n+1)-A138407(n+1)` -/
def P16925191451767719979.Spec : Prop :=
  ∀ n, P16925191451767719979.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P11663171645066317879

`A138410(n+1)-A138411(n+1)`
-/

namespace A138403.P11663171645066317879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) - A138411 (n + 1)

end

end A138403.P11663171645066317879

namespace A138403

/-- `A138410(n+1)-A138411(n+1)` -/
def P11663171645066317879.Spec : Prop :=
  ∀ n, P11663171645066317879.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P8032244854206858935

`A006093(n+1)*A030078(n+1)`
-/

namespace A138403.P8032244854206858935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A030078 (n + 1)

end

end A138403.P8032244854206858935

namespace A138403

/-- `A006093(n+1)*A030078(n+1)` -/
def P8032244854206858935.Spec : Prop :=
  ∀ n, P8032244854206858935.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P8376805418464375312

`A001248(n+1)*A036689(n+1)`
-/

namespace A138403.P8376805418464375312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A036689 (n + 1)

end

end A138403.P8376805418464375312

namespace A138403

/-- `A001248(n+1)*A036689(n+1)` -/
def P8376805418464375312.Spec : Prop :=
  ∀ n, P8376805418464375312.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P16511860579937265351

`A008837(n+1)*A079704(n+1)`
-/

namespace A138403.P16511860579937265351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A079704 (n + 1)

end

end A138403.P16511860579937265351

namespace A138403

/-- `A008837(n+1)*A079704(n+1)` -/
def P16511860579937265351.Spec : Prop :=
  ∀ n, P16511860579937265351.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P14278559906037981626

`A000040(n+1)*A135177(n+1)`
-/

namespace A138403.P14278559906037981626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A135177 (n + 1)

end

end A138403.P14278559906037981626

namespace A138403

/-- `A000040(n+1)*A135177(n+1)` -/
def P14278559906037981626.Spec : Prop :=
  ∀ n, P14278559906037981626.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P1598453221573979501

`A100484(n+1)*A138416(n+1)`
-/

namespace A138403.P1598453221573979501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138416 (n + 1)

end

end A138403.P1598453221573979501

namespace A138403

/-- `A100484(n+1)*A138416(n+1)` -/
def P1598453221573979501.Spec : Prop :=
  ∀ n, P1598453221573979501.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P1585481519211139754

`A138407(n+1)/A000040(n+1)`
-/

namespace A138403.P1585481519211139754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138403.P1585481519211139754

namespace A138403

/-- `A138407(n+1)/A000040(n+1)` -/
def P1585481519211139754.Spec : Prop :=
  ∀ n, P1585481519211139754.a n = (A138403 (n + 1) : ℚ)

end A138403

/-! ## A138403.P12531546763226628816

`A138412(n+1)/A001248(n+1)`
-/

namespace A138403.P12531546763226628816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138403.P12531546763226628816

namespace A138403

/-- `A138412(n+1)/A001248(n+1)` -/
def P12531546763226628816.Spec : Prop :=
  ∀ n, P12531546763226628816.a n = (A138403 (n + 1) : ℚ)

end A138403

/-! ## A138403.P3974372131186898950

`A138406(n+1)/A008864(n+1)`
-/

namespace A138403.P3974372131186898950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)

end

end A138403.P3974372131186898950

namespace A138403

/-- `A138406(n+1)/A008864(n+1)` -/
def P3974372131186898950.Spec : Prop :=
  ∀ n, P3974372131186898950.a n = (A138403 (n + 1) : ℚ)

end A138403

/-! ## A138403.P2863488057051459614

`A030516(n+1)%A135180(n+1)`
-/

namespace A138403.P2863488057051459614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030516 (n + 1)) (A135180 (n + 1))

end

end A138403.P2863488057051459614

namespace A138403

/-- `A030516(n+1)%A135180(n+1)` -/
def P2863488057051459614.Spec : Prop :=
  ∀ n, P2863488057051459614.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P10719126886453745581

`A138406(n+1)%A030514(n+1)`
-/

namespace A138403.P10719126886453745581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138406 (n + 1)) (A030514 (n + 1))

end

end A138403.P10719126886453745581

namespace A138403

/-- `A138406(n+1)%A030514(n+1)` -/
def P10719126886453745581.Spec : Prop :=
  ∀ n, P10719126886453745581.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P14300305526401040718

`A138410(n+1)%A030514(n+1)`
-/

namespace A138403.P14300305526401040718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138410 (n + 1)) (A030514 (n + 1))

end

end A138403.P14300305526401040718

namespace A138403

/-- `A138410(n+1)%A030514(n+1)` -/
def P14300305526401040718.Spec : Prop :=
  ∀ n, P14300305526401040718.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P7435954365243047751

`A138412(n+1)%A138402(n+1)`
-/

namespace A138403.P7435954365243047751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138412 (n + 1)) (A138402 (n + 1))

end

end A138403.P7435954365243047751

namespace A138403

/-- `A138412(n+1)%A138402(n+1)` -/
def P7435954365243047751.Spec : Prop :=
  ∀ n, P7435954365243047751.a n = A138403 (n + 1)

end A138403

/-! ## A138403.P1318559634513419338

`gcd(A138406(n+1), A138410(n+1))`
-/

namespace A138403.P1318559634513419338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138406 (n + 1)) (A138410 (n + 1))

end

end A138403.P1318559634513419338

namespace A138403

/-- `gcd(A138406(n+1), A138410(n+1))` -/
def P1318559634513419338.Spec : Prop :=
  ∀ n, (P1318559634513419338.a n : ℤ) = A138403 (n + 1)

end A138403

/-!
# A138404: a(n) = prime(n)^5 - prime(n).

The programs for A138404, the canonical program `A138404.P18212954728452226427` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138404 has offset 1).

The definition of A138404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138404.P18017528405451182933

`30*A138430(n+1)`
-/

namespace A138404.P18017528405451182933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A138430 (n + 1)

end

end A138404.P18017528405451182933

namespace A138404

/-- `30*A138430(n+1)` -/
def P18017528405451182933.Spec : Prop :=
  ∀ n, P18017528405451182933.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P18212954728452226427

`A050997(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138404

/-- `A050997(n+1)-A000040(n+1)` -/
def P18212954728452226427.Spec : Prop :=
  ∀ n, P18212954728452226427.a n = A138404 (n + 1)

theorem P18212954728452226427.correct : P18212954728452226427.Spec := by
  intro n
  simp only [A138404, Nat.add_sub_cancel]

end A138404

/-! ## A138404.P2344109858715761563

`A000040(n+1)*A006093(n+1)*A008864(n+1)*A066872(n+1)`
-/

namespace A138404.P2344109858715761563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006093 (n + 1) * A008864 (n + 1) * A066872 (n + 1)

end

end A138404.P2344109858715761563

namespace A138404

/-- `A000040(n+1)*A006093(n+1)*A008864(n+1)*A066872(n+1)` -/
def P2344109858715761563.Spec : Prop :=
  ∀ n, P2344109858715761563.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P13329446485835449632

`A061167(A000040(n+1))`
-/

namespace A138404.P13329446485835449632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 (A000040 (n + 1)).toNat

end

end A138404.P13329446485835449632

namespace A138404

/-- `A061167(A000040(n+1))` -/
def P13329446485835449632.Spec : Prop :=
  ∀ n, P13329446485835449632.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P10110903509503837203

`2*A138424(n+1)`
-/

namespace A138404.P10110903509503837203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138424 (n + 1)

end

end A138404.P10110903509503837203

namespace A138404

/-- `2*A138424(n+1)` -/
def P10110903509503837203.Spec : Prop :=
  ∀ n, P10110903509503837203.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P13682233591742436556

`3*A138425(n+1)`
-/

namespace A138404.P13682233591742436556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138425 (n + 1)

end

end A138404.P13682233591742436556

namespace A138404

/-- `3*A138425(n+1)` -/
def P13682233591742436556.Spec : Prop :=
  ∀ n, P13682233591742436556.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P7869369566277831754

`5*A138426(n+1)`
-/

namespace A138404.P7869369566277831754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138426 (n + 1)

end

end A138404.P7869369566277831754

namespace A138404

/-- `5*A138426(n+1)` -/
def P7869369566277831754.Spec : Prop :=
  ∀ n, P7869369566277831754.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P4265489055577908344

`6*A138427(n+1)`
-/

namespace A138404.P4265489055577908344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138427 (n + 1)

end

end A138404.P4265489055577908344

namespace A138404

/-- `6*A138427(n+1)` -/
def P4265489055577908344.Spec : Prop :=
  ∀ n, P4265489055577908344.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P8702556878975931096

`2*5*A138428(n+1)`
-/

namespace A138404.P8702556878975931096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A138428 (n + 1))

end

end A138404.P8702556878975931096

namespace A138404

/-- `2*5*A138428(n+1)` -/
def P8702556878975931096.Spec : Prop :=
  ∀ n, P8702556878975931096.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P11081577531376833222

`3*5*A138429(n+1)`
-/

namespace A138404.P11081577531376833222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A138429 (n + 1))

end

end A138404.P11081577531376833222

namespace A138404

/-- `3*5*A138429(n+1)` -/
def P11081577531376833222.Spec : Prop :=
  ∀ n, P11081577531376833222.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P1746264728485819461

`A138405(n+1)+A036689(n+1)`
-/

namespace A138404.P1746264728485819461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) + A036689 (n + 1)

end

end A138404.P1746264728485819461

namespace A138404

/-- `A138405(n+1)+A036689(n+1)` -/
def P1746264728485819461.Spec : Prop :=
  ∀ n, P1746264728485819461.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P1873854660912432421

`A138406(n+1)+A127917(n+1)`
-/

namespace A138404.P1873854660912432421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A127917 (n + 1)

end

end A138404.P1873854660912432421

namespace A138404

/-- `A138406(n+1)+A127917(n+1)` -/
def P1873854660912432421.Spec : Prop :=
  ∀ n, P1873854660912432421.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P8994778351458706022

`A138407(n+1)+A138401(n+1)`
-/

namespace A138404.P8994778351458706022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138407 (n + 1) + A138401 (n + 1)

end

end A138404.P8994778351458706022

namespace A138404

/-- `A138407(n+1)+A138401(n+1)` -/
def P8994778351458706022.Spec : Prop :=
  ∀ n, P8994778351458706022.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P3941801683449873712

`A135181(n+1)-A083558(n+1)`
-/

namespace A138404.P3941801683449873712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A083558 (n + 1)

end

end A138404.P3941801683449873712

namespace A138404

/-- `A135181(n+1)-A083558(n+1)` -/
def P3941801683449873712.Spec : Prop :=
  ∀ n, P3941801683449873712.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P41311897077197983

`A138408(n+1)-A138412(n+1)`
-/

namespace A138404.P41311897077197983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A138412 (n + 1)

end

end A138404.P41311897077197983

namespace A138404

/-- `A138408(n+1)-A138412(n+1)` -/
def P41311897077197983.Spec : Prop :=
  ∀ n, P41311897077197983.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P7938853553195361834

`A135182(n+1)-A181149(n+1)`
-/

namespace A138404.P7938853553195361834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A181149 (n + 1)

end

end A138404.P7938853553195361834

namespace A138404

/-- `A135182(n+1)-A181149(n+1)` -/
def P7938853553195361834.Spec : Prop :=
  ∀ n, P7938853553195361834.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P1299471499187740840

`A036689(n+1)*A131991(n+1)`
-/

namespace A138404.P1299471499187740840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A131991 (n + 1)

end

end A138404.P1299471499187740840

namespace A138404

/-- `A036689(n+1)*A131991(n+1)` -/
def P1299471499187740840.Spec : Prop :=
  ∀ n, P1299471499187740840.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P342373098475924704

`A066872(n+1)*A127917(n+1)`
-/

namespace A138404.P342373098475924704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A127917 (n + 1)

end

end A138404.P342373098475924704

namespace A138404

/-- `A066872(n+1)*A127917(n+1)` -/
def P342373098475924704.Spec : Prop :=
  ∀ n, P342373098475924704.a n = A138404 (n + 1)

end A138404

/-! ## A138404.P11142992381052790055

`A138409(n+1)/A000040(n+1)`
-/

namespace A138404.P11142992381052790055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138404.P11142992381052790055

namespace A138404

/-- `A138409(n+1)/A000040(n+1)` -/
def P11142992381052790055.Spec : Prop :=
  ∀ n, P11142992381052790055.a n = (A138404 (n + 1) : ℚ)

end A138404

/-! ## A138404.P14506751800412338154

`A138408(n+1)%A050997(n+1)`
-/

namespace A138404.P14506751800412338154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138408 (n + 1)) (A050997 (n + 1))

end

end A138404.P14506751800412338154

namespace A138404

/-- `A138408(n+1)%A050997(n+1)` -/
def P14506751800412338154.Spec : Prop :=
  ∀ n, P14506751800412338154.a n = A138404 (n + 1)

end A138404

/-!
# A138405: a(n) = prime(n)^5 - prime(n)^2.

The programs for A138405, the canonical program `A138405.P13221542276001064548` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138405 has offset 1).

The definition of A138405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138405.P16391894627210316925

`2*A138431(n+1)`
-/

namespace A138405.P16391894627210316925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138431 (n + 1)

end

end A138405.P16391894627210316925

namespace A138405

/-- `2*A138431(n+1)` -/
def P16391894627210316925.Spec : Prop :=
  ∀ n, P16391894627210316925.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P13221542276001064548

`A050997(n+1)-A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138405

/-- `A050997(n+1)-A001248(n+1)` -/
def P13221542276001064548.Spec : Prop :=
  ∀ n, P13221542276001064548.a n = A138405 (n + 1)

theorem P13221542276001064548.correct : P13221542276001064548.Spec := by
  intro n
  simp only [A138405, Nat.add_sub_cancel]

end A138405

/-! ## A138405.P13746782803271673430

`A001248(n+1)*(A030078(n+1)-1)`
-/

namespace A138405.P13746782803271673430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * (A030078 (n + 1) - 1)

end

end A138405.P13746782803271673430

namespace A138405

/-- `A001248(n+1)*(A030078(n+1)-1)` -/
def P13746782803271673430.Spec : Prop :=
  ∀ n, P13746782803271673430.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P7360734570069568862

`A135179(n+1)+A030078(n+1)`
-/

namespace A138405.P7360734570069568862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + A030078 (n + 1)

end

end A138405.P7360734570069568862

namespace A138405

/-- `A135179(n+1)+A030078(n+1)` -/
def P7360734570069568862.Spec : Prop :=
  ∀ n, P7360734570069568862.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P2526859498080201357

`A138406(n+1)+A135177(n+1)`
-/

namespace A138405.P2526859498080201357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A135177 (n + 1)

end

end A138405.P2526859498080201357

namespace A138405

/-- `A138406(n+1)+A135177(n+1)` -/
def P2526859498080201357.Spec : Prop :=
  ∀ n, P2526859498080201357.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P5626615002607548469

`A138407(n+1)+A138402(n+1)`
-/

namespace A138405.P5626615002607548469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138407 (n + 1) + A138402 (n + 1)

end

end A138405.P5626615002607548469

namespace A138405

/-- `A138407(n+1)+A138402(n+1)` -/
def P5626615002607548469.Spec : Prop :=
  ∀ n, P5626615002607548469.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P4736764707204503566

`A135181(n+1)-A030078(n+1)`
-/

namespace A138405.P4736764707204503566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A030078 (n + 1)

end

end A138405.P4736764707204503566

namespace A138405

/-- `A135181(n+1)-A030078(n+1)` -/
def P4736764707204503566.Spec : Prop :=
  ∀ n, P4736764707204503566.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P9969364697902607737

`A138404(n+1)-A036689(n+1)`
-/

namespace A138405.P9969364697902607737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) - A036689 (n + 1)

end

end A138405.P9969364697902607737

namespace A138405

/-- `A138404(n+1)-A036689(n+1)` -/
def P9969364697902607737.Spec : Prop :=
  ∀ n, P9969364697902607737.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P16378040188339682115

`A138409(n+1)-A138412(n+1)`
-/

namespace A138405.P16378040188339682115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A138412 (n + 1)

end

end A138405.P16378040188339682115

namespace A138405

/-- `A138409(n+1)-A138412(n+1)` -/
def P16378040188339682115.Spec : Prop :=
  ∀ n, P16378040188339682115.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P4374105304932427327

`A000040(n+1)*A138401(n+1)`
-/

namespace A138405.P4374105304932427327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138401 (n + 1)

end

end A138405.P4374105304932427327

namespace A138405

/-- `A000040(n+1)*A138401(n+1)` -/
def P4374105304932427327.Spec : Prop :=
  ∀ n, P4374105304932427327.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P12530118699659109034

`A060800(n+1)*A135177(n+1)`
-/

namespace A138405.P12530118699659109034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) * A135177 (n + 1)

end

end A138405.P12530118699659109034

namespace A138405

/-- `A060800(n+1)*A135177(n+1)` -/
def P12530118699659109034.Spec : Prop :=
  ∀ n, P12530118699659109034.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P11260893205304726458

`A036689(n+1)*A181149(n+1)`
-/

namespace A138405.P11260893205304726458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A181149 (n + 1)

end

end A138405.P11260893205304726458

namespace A138405

/-- `A036689(n+1)*A181149(n+1)` -/
def P11260893205304726458.Spec : Prop :=
  ∀ n, P11260893205304726458.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P2103440407839220951

`A100484(n+1)*A138417(n+1)`
-/

namespace A138405.P2103440407839220951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138417 (n + 1)

end

end A138405.P2103440407839220951

namespace A138405

/-- `A100484(n+1)*A138417(n+1)` -/
def P2103440407839220951.Spec : Prop :=
  ∀ n, P2103440407839220951.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P12910768051520602012

`A138410(n+1)/A000040(n+1)`
-/

namespace A138405.P12910768051520602012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138405.P12910768051520602012

namespace A138405

/-- `A138410(n+1)/A000040(n+1)` -/
def P12910768051520602012.Spec : Prop :=
  ∀ n, P12910768051520602012.a n = (A138405 (n + 1) : ℚ)

end A138405

/-! ## A138405.P3689131891778029392

`A138409(n+1)%A050997(n+1)`
-/

namespace A138405.P3689131891778029392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138409 (n + 1)) (A050997 (n + 1))

end

end A138405.P3689131891778029392

namespace A138405

/-- `A138409(n+1)%A050997(n+1)` -/
def P3689131891778029392.Spec : Prop :=
  ∀ n, P3689131891778029392.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P7580415265883133453

`lcm(A001248(n+1), A138401(n+1))`
-/

namespace A138405.P7580415265883133453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001248 (n + 1)) (A138401 (n + 1))

end

end A138405.P7580415265883133453

namespace A138405

/-- `lcm(A001248(n+1), A138401(n+1))` -/
def P7580415265883133453.Spec : Prop :=
  ∀ n, (P7580415265883133453.a n : ℤ) = A138405 (n + 1)

end A138405

/-! ## A138405.P16623063851889475365

`lcm(A135177(n+1), A138417(n+1))`
-/

namespace A138405.P16623063851889475365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135177 (n + 1)) (A138417 (n + 1))

end

end A138405.P16623063851889475365

namespace A138405

/-- `lcm(A135177(n+1), A138417(n+1))` -/
def P16623063851889475365.Spec : Prop :=
  ∀ n, (P16623063851889475365.a n : ℤ) = A138405 (n + 1)

end A138405

/-! ## A138405.P13964466995212792220

`A050997(n+1)-A000040(n+1)²`
-/

namespace A138405.P13964466995212792220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A000040 (n + 1) ^ 2

end

end A138405.P13964466995212792220

namespace A138405

/-- `A050997(n+1)-A000040(n+1)²` -/
def P13964466995212792220.Spec : Prop :=
  ∀ n, P13964466995212792220.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P2620124957767834679

`(A036690(n+1)+1)*A135177(n+1)`
-/

namespace A138405.P2620124957767834679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) + 1) * A135177 (n + 1)

end

end A138405.P2620124957767834679

namespace A138405

/-- `(A036690(n+1)+1)*A135177(n+1)` -/
def P2620124957767834679.Spec : Prop :=
  ∀ n, P2620124957767834679.a n = A138405 (n + 1)

end A138405

/-! ## A138405.P5541854098108849088

`(A131991(n+1)-1)*A036689(n+1)`
-/

namespace A138405.P5541854098108849088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131991 (n + 1) - 1) * A036689 (n + 1)

end

end A138405.P5541854098108849088

namespace A138405

/-- `(A131991(n+1)-1)*A036689(n+1)` -/
def P5541854098108849088.Spec : Prop :=
  ∀ n, P5541854098108849088.a n = A138405 (n + 1)

end A138405

/-!
# A138406: a(n) = prime(n)^5 - prime(n)^3.

The programs for A138406, the canonical program `A138406.P9529549165846394037` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138406 has offset 1).

The definition of A138406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138406.P14233285650387185393

`2*A138432(n+1)`
-/

namespace A138406.P14233285650387185393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138432 (n + 1)

end

end A138406.P14233285650387185393

namespace A138406

/-- `2*A138432(n+1)` -/
def P14233285650387185393.Spec : Prop :=
  ∀ n, P14233285650387185393.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P17462498917920029387

`3*A138433(n+1)`
-/

namespace A138406.P17462498917920029387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138433 (n + 1)

end

end A138406.P17462498917920029387

namespace A138406

/-- `3*A138433(n+1)` -/
def P17462498917920029387.Spec : Prop :=
  ∀ n, P17462498917920029387.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P10892163253068974519

`4*A138434(n+1)`
-/

namespace A138406.P10892163253068974519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138434 (n + 1)

end

end A138406.P10892163253068974519

namespace A138406

/-- `4*A138434(n+1)` -/
def P10892163253068974519.Spec : Prop :=
  ∀ n, P10892163253068974519.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P13480950058123545926

`6*A138435(n+1)`
-/

namespace A138406.P13480950058123545926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138435 (n + 1)

end

end A138406.P13480950058123545926

namespace A138406

/-- `6*A138435(n+1)` -/
def P13480950058123545926.Spec : Prop :=
  ∀ n, P13480950058123545926.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P16589388759320020929

`8*A138436(n+1)`
-/

namespace A138406.P16589388759320020929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A138436 (n + 1)

end

end A138406.P16589388759320020929

namespace A138406

/-- `8*A138436(n+1)` -/
def P16589388759320020929.Spec : Prop :=
  ∀ n, P16589388759320020929.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P8022061806214074446

`3*4*A138437(n+1)`
-/

namespace A138406.P8022061806214074446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A138437 (n + 1))

end

end A138406.P8022061806214074446

namespace A138406

/-- `3*4*A138437(n+1)` -/
def P8022061806214074446.Spec : Prop :=
  ∀ n, P8022061806214074446.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P9529549165846394037

`A135179(n+1)+A001248(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138406

/-- `A135179(n+1)+A001248(n+1)` -/
def P9529549165846394037.Spec : Prop :=
  ∀ n, P9529549165846394037.a n = A138406 (n + 1)

theorem P9529549165846394037.correct : P9529549165846394037.Spec := by
  intro n
  simp only [A138406, Nat.add_sub_cancel]

end A138406

/-! ## A138406.P1780251267338298568

`A138407(n+1)+A138403(n+1)`
-/

namespace A138406.P1780251267338298568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138407 (n + 1) + A138403 (n + 1)

end

end A138406.P1780251267338298568

namespace A138406

/-- `A138407(n+1)+A138403(n+1)` -/
def P1780251267338298568.Spec : Prop :=
  ∀ n, P1780251267338298568.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P15431567431581320254

`A050997(n+1)-A030078(n+1)`
-/

namespace A138406.P15431567431581320254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030078 (n + 1)

end

end A138406.P15431567431581320254

namespace A138406

/-- `A050997(n+1)-A030078(n+1)` -/
def P15431567431581320254.Spec : Prop :=
  ∀ n, P15431567431581320254.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P11141291854559155514

`A135180(n+1)-A001248(n+1)`
-/

namespace A138406.P11141291854559155514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) - A001248 (n + 1)

end

end A138406.P11141291854559155514

namespace A138406

/-- `A135180(n+1)-A001248(n+1)` -/
def P11141291854559155514.Spec : Prop :=
  ∀ n, P11141291854559155514.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P13760515915242278376

`A138404(n+1)-A127917(n+1)`
-/

namespace A138406.P13760515915242278376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) - A127917 (n + 1)

end

end A138406.P13760515915242278376

namespace A138406

/-- `A138404(n+1)-A127917(n+1)` -/
def P13760515915242278376.Spec : Prop :=
  ∀ n, P13760515915242278376.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P2149830809239911363

`A138405(n+1)-A135177(n+1)`
-/

namespace A138406.P2149830809239911363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) - A135177 (n + 1)

end

end A138406.P2149830809239911363

namespace A138406

/-- `A138405(n+1)-A135177(n+1)` -/
def P2149830809239911363.Spec : Prop :=
  ∀ n, P2149830809239911363.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P8113130133758066538

`A138410(n+1)-A138412(n+1)`
-/

namespace A138406.P8113130133758066538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) - A138412 (n + 1)

end

end A138406.P8113130133758066538

namespace A138406

/-- `A138410(n+1)-A138412(n+1)` -/
def P8113130133758066538.Spec : Prop :=
  ∀ n, P8113130133758066538.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P3975665024764988807

`A030078(n+1)*A084920(n+1)`
-/

namespace A138406.P3975665024764988807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A084920 (n + 1)

end

end A138406.P3975665024764988807

namespace A138406

/-- `A030078(n+1)*A084920(n+1)` -/
def P3975665024764988807.Spec : Prop :=
  ∀ n, P3975665024764988807.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P10589355900861373930

`A001248(n+1)*A127917(n+1)`
-/

namespace A138406.P10589355900861373930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A127917 (n + 1)

end

end A138406.P10589355900861373930

namespace A138406

/-- `A001248(n+1)*A127917(n+1)` -/
def P10589355900861373930.Spec : Prop :=
  ∀ n, P10589355900861373930.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P8410798077011453602

`A000040(n+1)*A138402(n+1)`
-/

namespace A138406.P8410798077011453602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138402 (n + 1)

end

end A138406.P8410798077011453602

namespace A138406

/-- `A000040(n+1)*A138402(n+1)` -/
def P8410798077011453602.Spec : Prop :=
  ∀ n, P8410798077011453602.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P10363843981305782912

`A001748(n+1)*A138419(n+1)`
-/

namespace A138406.P10363843981305782912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138419 (n + 1)

end

end A138406.P10363843981305782912

namespace A138406

/-- `A001748(n+1)*A138419(n+1)` -/
def P10363843981305782912.Spec : Prop :=
  ∀ n, P10363843981305782912.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P12178279988381833306

`A001749(n+1)*A138420(n+1)`
-/

namespace A138406.P12178279988381833306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138420 (n + 1)

end

end A138406.P12178279988381833306

namespace A138406

/-- `A001749(n+1)*A138420(n+1)` -/
def P12178279988381833306.Spec : Prop :=
  ∀ n, P12178279988381833306.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P9101243654776907636

`A008864(n+1)*A138403(n+1)`
-/

namespace A138406.P9101243654776907636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A138403 (n + 1)

end

end A138406.P9101243654776907636

namespace A138406

/-- `A008864(n+1)*A138403(n+1)` -/
def P9101243654776907636.Spec : Prop :=
  ∀ n, P9101243654776907636.a n = A138406 (n + 1)

end A138406

/-! ## A138406.P3086748893414241209

`A036689(n+1)*A135178(n+1)`
-/

namespace A138406.P3086748893414241209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A135178 (n + 1)

end

end A138406.P3086748893414241209

namespace A138406

/-- `A036689(n+1)*A135178(n+1)` -/
def P3086748893414241209.Spec : Prop :=
  ∀ n, P3086748893414241209.a n = A138406 (n + 1)

end A138406

/-!
# A138407: a(n) = p^4*(p-1), where p = prime(n).

The programs for A138407, the canonical program `A138407.P5183959354295253319` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138407 has offset 1).

The definition of A138407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138407.P5183959354295253319

`A050997(n+1)-A030514(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138407

/-- `A050997(n+1)-A030514(n+1)` -/
def P5183959354295253319.Spec : Prop :=
  ∀ n, P5183959354295253319.a n = A138407 (n + 1)

theorem P5183959354295253319.correct : P5183959354295253319.Spec := by
  intro n
  simp only [A138407, Nat.add_sub_cancel]

end A138407

/-! ## A138407.P9454220418986145320

`2*A138439(n+1)`
-/

namespace A138407.P9454220418986145320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138439 (n + 1)

end

end A138407.P9454220418986145320

namespace A138407

/-- `2*A138439(n+1)` -/
def P9454220418986145320.Spec : Prop :=
  ∀ n, P9454220418986145320.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P14160690640864599291

`A138404(n+1)-A138401(n+1)`
-/

namespace A138407.P14160690640864599291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) - A138401 (n + 1)

end

end A138407.P14160690640864599291

namespace A138407

/-- `A138404(n+1)-A138401(n+1)` -/
def P14160690640864599291.Spec : Prop :=
  ∀ n, P14160690640864599291.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P10051574517679350463

`A138405(n+1)-A138402(n+1)`
-/

namespace A138407.P10051574517679350463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) - A138402 (n + 1)

end

end A138407.P10051574517679350463

namespace A138407

/-- `A138405(n+1)-A138402(n+1)` -/
def P10051574517679350463.Spec : Prop :=
  ∀ n, P10051574517679350463.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P3976335720755563322

`A138406(n+1)-A138403(n+1)`
-/

namespace A138407.P3976335720755563322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) - A138403 (n + 1)

end

end A138407.P3976335720755563322

namespace A138407

/-- `A138406(n+1)-A138403(n+1)` -/
def P3976335720755563322.Spec : Prop :=
  ∀ n, P3976335720755563322.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P8879117018236519027

`A138411(n+1)-A138412(n+1)`
-/

namespace A138407.P8879117018236519027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) - A138412 (n + 1)

end

end A138407.P8879117018236519027

namespace A138407

/-- `A138411(n+1)-A138412(n+1)` -/
def P8879117018236519027.Spec : Prop :=
  ∀ n, P8879117018236519027.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P8008638855031736096

`A006093(n+1)*A030514(n+1)`
-/

namespace A138407.P8008638855031736096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A030514 (n + 1)

end

end A138407.P8008638855031736096

namespace A138407

/-- `A006093(n+1)*A030514(n+1)` -/
def P8008638855031736096.Spec : Prop :=
  ∀ n, P8008638855031736096.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P3705416768310398744

`A030078(n+1)*A036689(n+1)`
-/

namespace A138407.P3705416768310398744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A036689 (n + 1)

end

end A138407.P3705416768310398744

namespace A138407

/-- `A030078(n+1)*A036689(n+1)` -/
def P3705416768310398744.Spec : Prop :=
  ∀ n, P3705416768310398744.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P14416274444799894229

`A001248(n+1)*A135177(n+1)`
-/

namespace A138407.P14416274444799894229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A135177 (n + 1)

end

end A138407.P14416274444799894229

namespace A138407

/-- `A001248(n+1)*A135177(n+1)` -/
def P14416274444799894229.Spec : Prop :=
  ∀ n, P14416274444799894229.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P6855963920179696363

`A000040(n+1)*A138403(n+1)`
-/

namespace A138407.P6855963920179696363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138403 (n + 1)

end

end A138407.P6855963920179696363

namespace A138407

/-- `A000040(n+1)*A138403(n+1)` -/
def P6855963920179696363.Spec : Prop :=
  ∀ n, P6855963920179696363.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P14428822867062250613

`A008837(n+1)*A172190(n+1)`
-/

namespace A138407.P14428822867062250613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A172190 (n + 1)

end

end A138407.P14428822867062250613

namespace A138407

/-- `A008837(n+1)*A172190(n+1)` -/
def P14428822867062250613.Spec : Prop :=
  ∀ n, P14428822867062250613.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P9580740893204172580

`A079704(n+1)*A138416(n+1)`
-/

namespace A138407.P9580740893204172580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A138416 (n + 1)

end

end A138407.P9580740893204172580

namespace A138407

/-- `A079704(n+1)*A138416(n+1)` -/
def P9580740893204172580.Spec : Prop :=
  ∀ n, P9580740893204172580.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P4773156417714995053

`A100484(n+1)*A138423(n+1)`
-/

namespace A138407.P4773156417714995053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138423 (n + 1)

end

end A138407.P4773156417714995053

namespace A138407

/-- `A100484(n+1)*A138423(n+1)` -/
def P4773156417714995053.Spec : Prop :=
  ∀ n, P4773156417714995053.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P5089118912828053763

`A138412(n+1)/A000040(n+1)`
-/

namespace A138407.P5089118912828053763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138407.P5089118912828053763

namespace A138407

/-- `A138412(n+1)/A000040(n+1)` -/
def P5089118912828053763.Spec : Prop :=
  ∀ n, P5089118912828053763.a n = (A138407 (n + 1) : ℚ)

end A138407

/-! ## A138407.P3493738705505524407

`A138411(n+1)%A050997(n+1)`
-/

namespace A138407.P3493738705505524407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138411 (n + 1)) (A050997 (n + 1))

end

end A138407.P3493738705505524407

namespace A138407

/-- `A138411(n+1)%A050997(n+1)` -/
def P3493738705505524407.Spec : Prop :=
  ∀ n, P3493738705505524407.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P7121113761885706458

`A092759(n+1)%A135180(n+1)`
-/

namespace A138407.P7121113761885706458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A135180 (n + 1))

end

end A138407.P7121113761885706458

namespace A138407

/-- `A092759(n+1)%A135180(n+1)` -/
def P7121113761885706458.Spec : Prop :=
  ∀ n, P7121113761885706458.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P1378557867488979407

`A138409(n+1)%A135182(n+1)`
-/

namespace A138407.P1378557867488979407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138409 (n + 1)) (A135182 (n + 1))

end

end A138407.P1378557867488979407

namespace A138407

/-- `A138409(n+1)%A135182(n+1)` -/
def P1378557867488979407.Spec : Prop :=
  ∀ n, P1378557867488979407.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P480027932465640629

`A050997(n+1)-A001248(n+1)²`
-/

namespace A138407.P480027932465640629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A001248 (n + 1) ^ 2

end

end A138407.P480027932465640629

namespace A138407

/-- `A050997(n+1)-A001248(n+1)²` -/
def P480027932465640629.Spec : Prop :=
  ∀ n, P480027932465640629.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P16932684579004060695

`A001248(n+1)²*A006093(n+1)`
-/

namespace A138407.P16932684579004060695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A006093 (n + 1)

end

end A138407.P16932684579004060695

namespace A138407

/-- `A001248(n+1)²*A006093(n+1)` -/
def P16932684579004060695.Spec : Prop :=
  ∀ n, P16932684579004060695.a n = A138407 (n + 1)

end A138407

/-! ## A138407.P12421662039027872455

`A000040(n+1)²*A135177(n+1)`
-/

namespace A138407.P12421662039027872455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A135177 (n + 1)

end

end A138407.P12421662039027872455

namespace A138407

/-- `A000040(n+1)²*A135177(n+1)` -/
def P12421662039027872455.Spec : Prop :=
  ∀ n, P12421662039027872455.a n = A138407 (n + 1)

end A138407

/-!
# A138408: a(n) = prime(n)^6 - prime(n).

The programs for A138408, the canonical program `A138408.P11008888213463207663` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138408 has offset 1).

The definition of A138408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138408.P11008888213463207663

`A030516(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138408

/-- `A030516(n+1)-A000040(n+1)` -/
def P11008888213463207663.Spec : Prop :=
  ∀ n, P11008888213463207663.a n = A138408 (n + 1)

theorem P11008888213463207663.correct : P11008888213463207663.Spec := by
  intro n
  simp only [A138408, Nat.add_sub_cancel]

end A138408

/-! ## A138408.P14926120379628575044

`2*A138440(n+1)`
-/

namespace A138408.P14926120379628575044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138440 (n + 1)

end

end A138408.P14926120379628575044

namespace A138408

/-- `2*A138440(n+1)` -/
def P14926120379628575044.Spec : Prop :=
  ∀ n, P14926120379628575044.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P8904969520499296357

`A138409(n+1)+A036689(n+1)`
-/

namespace A138408.P8904969520499296357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) + A036689 (n + 1)

end

end A138408.P8904969520499296357

namespace A138408

/-- `A138409(n+1)+A036689(n+1)` -/
def P8904969520499296357.Spec : Prop :=
  ∀ n, P8904969520499296357.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P13308521176466999585

`A138410(n+1)+A127917(n+1)`
-/

namespace A138408.P13308521176466999585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) + A127917 (n + 1)

end

end A138408.P13308521176466999585

namespace A138408

/-- `A138410(n+1)+A127917(n+1)` -/
def P13308521176466999585.Spec : Prop :=
  ∀ n, P13308521176466999585.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P13243612346306311395

`A138411(n+1)+A138401(n+1)`
-/

namespace A138408.P13243612346306311395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) + A138401 (n + 1)

end

end A138408.P13243612346306311395

namespace A138408

/-- `A138411(n+1)+A138401(n+1)` -/
def P13243612346306311395.Spec : Prop :=
  ∀ n, P13243612346306311395.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P17474267172453849699

`A138412(n+1)+A138404(n+1)`
-/

namespace A138408.P17474267172453849699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + A138404 (n + 1)

end

end A138408.P17474267172453849699

namespace A138408

/-- `A138412(n+1)+A138404(n+1)` -/
def P17474267172453849699.Spec : Prop :=
  ∀ n, P17474267172453849699.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P6436909392828516781

`A036689(n+1)*A131992(n+1)`
-/

namespace A138408.P6436909392828516781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A131992 (n + 1)

end

end A138408.P6436909392828516781

namespace A138408

/-- `A036689(n+1)*A131992(n+1)` -/
def P6436909392828516781.Spec : Prop :=
  ∀ n, P6436909392828516781.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P17722864295706256476

`lcm(A036689(n+1), A138440(n+1))`
-/

namespace A138408.P17722864295706256476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036689 (n + 1)) (A138440 (n + 1))

end

end A138408.P17722864295706256476

namespace A138408

/-- `lcm(A036689(n+1), A138440(n+1))` -/
def P17722864295706256476.Spec : Prop :=
  ∀ n, (P17722864295706256476.a n : ℤ) = A138408 (n + 1)

end A138408

/-! ## A138408.P6511521839043214445

`A030078(n+1)²-Δ[A007504(n)]`
-/

namespace A138408.P6511521839043214445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A138408.P6511521839043214445

namespace A138408

/-- `A030078(n+1)²-Δ[A007504(n)]` -/
def P6511521839043214445.Spec : Prop :=
  ∀ n, P6511521839043214445.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P1081098287369443716

`A030078(n+1)²-A000040(n+1)`
-/

namespace A138408.P1081098287369443716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 - A000040 (n + 1)

end

end A138408.P1081098287369443716

namespace A138408

/-- `A030078(n+1)²-A000040(n+1)` -/
def P1081098287369443716.Spec : Prop :=
  ∀ n, P1081098287369443716.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P3620059722220740751

`(A050997(n+1)-1)*A000040(n+1)`
-/

namespace A138408.P3620059722220740751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - 1) * A000040 (n + 1)

end

end A138408.P3620059722220740751

namespace A138408

/-- `(A050997(n+1)-1)*A000040(n+1)` -/
def P3620059722220740751.Spec : Prop :=
  ∀ n, P3620059722220740751.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P274181653772779068

`(A131993(n+1)-1)*A006093(n+1)`
-/

namespace A138408.P274181653772779068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131993 (n + 1) - 1) * A006093 (n + 1)

end

end A138408.P274181653772779068

namespace A138408

/-- `(A131993(n+1)-1)*A006093(n+1)` -/
def P274181653772779068.Spec : Prop :=
  ∀ n, P274181653772779068.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P10152684563817391939

`2*(A138441(n+1)+A008837(n+1))`
-/

namespace A138408.P10152684563817391939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138441 (n + 1) + A008837 (n + 1))

end

end A138408.P10152684563817391939

namespace A138408

/-- `2*(A138441(n+1)+A008837(n+1))` -/
def P10152684563817391939.Spec : Prop :=
  ∀ n, P10152684563817391939.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P18052605689182391945

`2*(A138452(n+1)+A127918(n+1))`
-/

namespace A138408.P18052605689182391945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138452 (n + 1) + A127918 (n + 1))

end

end A138408.P18052605689182391945

namespace A138408

/-- `2*(A138452(n+1)+A127918(n+1))` -/
def P18052605689182391945.Spec : Prop :=
  ∀ n, P18052605689182391945.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P3885273394658913327

`A138412(n+1)+2*A138424(n+1)`
-/

namespace A138408.P3885273394658913327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + 2 * A138424 (n + 1)

end

end A138408.P3885273394658913327

namespace A138408

/-- `A138412(n+1)+2*A138424(n+1)` -/
def P3885273394658913327.Spec : Prop :=
  ∀ n, P3885273394658913327.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P15066022801802545282

`2*(A138453(n+1)+A138417(n+1))`
-/

namespace A138408.P15066022801802545282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138453 (n + 1) + A138417 (n + 1))

end

end A138408.P15066022801802545282

namespace A138408

/-- `2*(A138453(n+1)+A138417(n+1))` -/
def P15066022801802545282.Spec : Prop :=
  ∀ n, P15066022801802545282.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P9190858652384283774

`2*(A138460(n+1)+A138424(n+1))`
-/

namespace A138408.P9190858652384283774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138460 (n + 1) + A138424 (n + 1))

end

end A138408.P9190858652384283774

namespace A138408

/-- `2*(A138460(n+1)+A138424(n+1))` -/
def P9190858652384283774.Spec : Prop :=
  ∀ n, P9190858652384283774.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P18077638722574935628

`2*A008837(n+1)*A131992(n+1)`
-/

namespace A138408.P18077638722574935628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008837 (n + 1) * A131992 (n + 1))

end

end A138408.P18077638722574935628

namespace A138408

/-- `2*A008837(n+1)*A131992(n+1)` -/
def P18077638722574935628.Spec : Prop :=
  ∀ n, P18077638722574935628.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P5459848999169374586

`(A153481(n+1)+2)²-A000040(n+1)`
-/

namespace A138408.P5459848999169374586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153481 (n + 1) + 2) ^ 2 - A000040 (n + 1)

end

end A138408.P5459848999169374586

namespace A138408

/-- `(A153481(n+1)+2)²-A000040(n+1)` -/
def P5459848999169374586.Spec : Prop :=
  ∀ n, P5459848999169374586.a n = A138408 (n + 1)

end A138408

/-! ## A138408.P3127801956725866456

`A001248(n+1)*A030514(n+1)-A000040(n+1)`
-/

namespace A138408.P3127801956725866456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030514 (n + 1) - A000040 (n + 1)

end

end A138408.P3127801956725866456

namespace A138408

/-- `A001248(n+1)*A030514(n+1)-A000040(n+1)` -/
def P3127801956725866456.Spec : Prop :=
  ∀ n, P3127801956725866456.a n = A138408 (n + 1)

end A138408

/-!
# A138409: a(n) = prime(n)^6 - prime(n)^2.

The programs for A138409, the canonical program `A138409.P6579586944619133022` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138409 has offset 1).

The definition of A138409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138409.P1527024642779510522

`2*A138441(n+1)`
-/

namespace A138409.P1527024642779510522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138441 (n + 1)

end

end A138409.P1527024642779510522

namespace A138409

/-- `2*A138441(n+1)` -/
def P1527024642779510522.Spec : Prop :=
  ∀ n, P1527024642779510522.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P6579586944619133022

`A030516(n+1)-A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138409

/-- `A030516(n+1)-A001248(n+1)` -/
def P6579586944619133022.Spec : Prop :=
  ∀ n, P6579586944619133022.a n = A138409 (n + 1)

theorem P6579586944619133022.correct : P6579586944619133022.Spec := by
  intro n
  simp only [A138409, Nat.add_sub_cancel]

end A138409

/-! ## A138409.P14797772008961864331

`A001248(n+1)*(A030514(n+1)-1)`
-/

namespace A138409.P14797772008961864331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * (A030514 (n + 1) - 1)

end

end A138409.P14797772008961864331

namespace A138409

/-- `A001248(n+1)*(A030514(n+1)-1)` -/
def P14797772008961864331.Spec : Prop :=
  ∀ n, P14797772008961864331.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P6617759250027813810

`3*A138442(n+1)`
-/

namespace A138409.P6617759250027813810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138442 (n + 1)

end

end A138409.P6617759250027813810

namespace A138409

/-- `3*A138442(n+1)` -/
def P6617759250027813810.Spec : Prop :=
  ∀ n, P6617759250027813810.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P2841234403356329536

`4*A138443(n+1)`
-/

namespace A138409.P2841234403356329536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138443 (n + 1)

end

end A138409.P2841234403356329536

namespace A138409

/-- `4*A138443(n+1)` -/
def P2841234403356329536.Spec : Prop :=
  ∀ n, P2841234403356329536.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P2083787787511875314

`5*A138444(n+1)`
-/

namespace A138409.P2083787787511875314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138444 (n + 1)

end

end A138409.P2083787787511875314

namespace A138409

/-- `5*A138444(n+1)` -/
def P2083787787511875314.Spec : Prop :=
  ∀ n, P2083787787511875314.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P12934675741395149716

`6*A138445(n+1)`
-/

namespace A138409.P12934675741395149716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138445 (n + 1)

end

end A138409.P12934675741395149716

namespace A138409

/-- `6*A138445(n+1)` -/
def P12934675741395149716.Spec : Prop :=
  ∀ n, P12934675741395149716.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P13198712124190872822

`10*A138446(n+1)`
-/

namespace A138409.P13198712124190872822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A138446 (n + 1)

end

end A138409.P13198712124190872822

namespace A138409

/-- `10*A138446(n+1)` -/
def P13198712124190872822.Spec : Prop :=
  ∀ n, P13198712124190872822.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P5230668308089840857

`60*A138451(n+1)`
-/

namespace A138409.P5230668308089840857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A138451 (n + 1)

end

end A138409.P5230668308089840857

namespace A138409

/-- `60*A138451(n+1)` -/
def P5230668308089840857.Spec : Prop :=
  ∀ n, P5230668308089840857.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P16634386993241037024

`3*4*A138447(n+1)`
-/

namespace A138409.P16634386993241037024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A138447 (n + 1))

end

end A138409.P16634386993241037024

namespace A138409

/-- `3*4*A138447(n+1)` -/
def P16634386993241037024.Spec : Prop :=
  ∀ n, P16634386993241037024.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P6162483873389789523

`3*5*A138448(n+1)`
-/

namespace A138409.P6162483873389789523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A138448 (n + 1))

end

end A138409.P6162483873389789523

namespace A138409

/-- `3*5*A138448(n+1)` -/
def P6162483873389789523.Spec : Prop :=
  ∀ n, P6162483873389789523.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P7978118403825889877

`4*5*A122220(n+1)`
-/

namespace A138409.P7978118403825889877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (5 * A122220 (n + 1))

end

end A138409.P7978118403825889877

namespace A138409

/-- `4*5*A122220(n+1)` -/
def P7978118403825889877.Spec : Prop :=
  ∀ n, P7978118403825889877.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P4524443328647529995

`6*C(A000040(n+1)²+1, 3)`
-/

namespace A138409.P4524443328647529995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3

end

end A138409.P4524443328647529995

namespace A138409

/-- `6*C(A000040(n+1)²+1, 3)` -/
def P4524443328647529995.Spec : Prop :=
  ∀ n, (P4524443328647529995.a n : ℤ) = A138409 (n + 1)

end A138409

/-! ## A138409.P6835051918487712346

`A138410(n+1)+A135177(n+1)`
-/

namespace A138409.P6835051918487712346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) + A135177 (n + 1)

end

end A138409.P6835051918487712346

namespace A138409

/-- `A138410(n+1)+A135177(n+1)` -/
def P6835051918487712346.Spec : Prop :=
  ∀ n, P6835051918487712346.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P9494559482619224662

`A138411(n+1)+A138402(n+1)`
-/

namespace A138409.P9494559482619224662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) + A138402 (n + 1)

end

end A138409.P9494559482619224662

namespace A138409

/-- `A138411(n+1)+A138402(n+1)` -/
def P9494559482619224662.Spec : Prop :=
  ∀ n, P9494559482619224662.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P6591332572865369633

`A138412(n+1)+A138405(n+1)`
-/

namespace A138409.P6591332572865369633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + A138405 (n + 1)

end

end A138409.P6591332572865369633

namespace A138409

/-- `A138412(n+1)+A138405(n+1)` -/
def P6591332572865369633.Spec : Prop :=
  ∀ n, P6591332572865369633.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P12675430718507147235

`A138408(n+1)-A036689(n+1)`
-/

namespace A138409.P12675430718507147235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A036689 (n + 1)

end

end A138409.P12675430718507147235

namespace A138409

/-- `A138408(n+1)-A036689(n+1)` -/
def P12675430718507147235.Spec : Prop :=
  ∀ n, P12675430718507147235.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P1623229141608979128

`A000040(n+1)*A138404(n+1)`
-/

namespace A138409.P1623229141608979128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138404 (n + 1)

end

end A138409.P1623229141608979128

namespace A138409

/-- `A000040(n+1)*A138404(n+1)` -/
def P1623229141608979128.Spec : Prop :=
  ∀ n, P1623229141608979128.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P3116944824360886180

`A001748(n+1)*A138425(n+1)`
-/

namespace A138409.P3116944824360886180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138425 (n + 1)

end

end A138409.P3116944824360886180

namespace A138409

/-- `A001748(n+1)*A138425(n+1)` -/
def P3116944824360886180.Spec : Prop :=
  ∀ n, P3116944824360886180.a n = A138409 (n + 1)

end A138409

/-! ## A138409.P7829262971399079653

`A001750(n+1)*A138426(n+1)`
-/

namespace A138409.P7829262971399079653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) * A138426 (n + 1)

end

end A138409.P7829262971399079653

namespace A138409

/-- `A001750(n+1)*A138426(n+1)` -/
def P7829262971399079653.Spec : Prop :=
  ∀ n, P7829262971399079653.a n = A138409 (n + 1)

end A138409

/-!
# A138410: a(n) = prime(n)^6 - prime(n)^3.

The programs for A138410, the canonical program `A138410.P8096708165835411234` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138410 has offset 1).

The definition of A138410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138410.P14405761795433793966

`2*A138452(n+1)`
-/

namespace A138410.P14405761795433793966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138452 (n + 1)

end

end A138410.P14405761795433793966

namespace A138410

/-- `2*A138452(n+1)` -/
def P14405761795433793966.Spec : Prop :=
  ∀ n, P14405761795433793966.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P8096708165835411234

`2*C(A030078(n+1), 2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138410

/-- `2*C(A030078(n+1), 2)` -/
def P8096708165835411234.Spec : Prop :=
  ∀ n, (P8096708165835411234.a n : ℤ) = A138410 (n + 1)

theorem P8096708165835411234.correct : P8096708165835411234.Spec := by
  intro n
  simp only [A138410, Nat.add_sub_cancel]

end A138410

/-! ## A138410.P4231505561517581470

`2*C(A000040(n+1)^3, 2)`
-/

namespace A138410.P4231505561517581470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1) ^ 3).toNat 2

end

end A138410.P4231505561517581470

namespace A138410

/-- `2*C(A000040(n+1)^3, 2)` -/
def P4231505561517581470.Spec : Prop :=
  ∀ n, (P4231505561517581470.a n : ℤ) = A138410 (n + 1)

end A138410

/-! ## A138410.P7275021744490844744

`A138411(n+1)+A138403(n+1)`
-/

namespace A138410.P7275021744490844744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) + A138403 (n + 1)

end

end A138410.P7275021744490844744

namespace A138410

/-- `A138411(n+1)+A138403(n+1)` -/
def P7275021744490844744.Spec : Prop :=
  ∀ n, P7275021744490844744.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P12630532654673339267

`A138412(n+1)+A138406(n+1)`
-/

namespace A138410.P12630532654673339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + A138406 (n + 1)

end

end A138410.P12630532654673339267

namespace A138410

/-- `A138412(n+1)+A138406(n+1)` -/
def P12630532654673339267.Spec : Prop :=
  ∀ n, P12630532654673339267.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P17373627334583868575

`A030516(n+1)-A030078(n+1)`
-/

namespace A138410.P17373627334583868575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A030078 (n + 1)

end

end A138410.P17373627334583868575

namespace A138410

/-- `A030516(n+1)-A030078(n+1)` -/
def P17373627334583868575.Spec : Prop :=
  ∀ n, P17373627334583868575.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P17232576656177807665

`A138408(n+1)-A127917(n+1)`
-/

namespace A138410.P17232576656177807665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A127917 (n + 1)

end

end A138410.P17232576656177807665

namespace A138410

/-- `A138408(n+1)-A127917(n+1)` -/
def P17232576656177807665.Spec : Prop :=
  ∀ n, P17232576656177807665.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P4444838460454957092

`A138409(n+1)-A135177(n+1)`
-/

namespace A138410.P4444838460454957092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A135177 (n + 1)

end

end A138410.P4444838460454957092

namespace A138410

/-- `A138409(n+1)-A135177(n+1)` -/
def P4444838460454957092.Spec : Prop :=
  ∀ n, P4444838460454957092.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P14778727320549932177

`A000040(n+1)*A138405(n+1)`
-/

namespace A138410.P14778727320549932177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138405 (n + 1)

end

end A138410.P14778727320549932177

namespace A138410

/-- `A000040(n+1)*A138405(n+1)` -/
def P14778727320549932177.Spec : Prop :=
  ∀ n, P14778727320549932177.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P15803167775872716522

`A001248(n+1)*A138401(n+1)`
-/

namespace A138410.P15803167775872716522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138401 (n + 1)

end

end A138410.P15803167775872716522

namespace A138410

/-- `A001248(n+1)*A138401(n+1)` -/
def P15803167775872716522.Spec : Prop :=
  ∀ n, P15803167775872716522.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P117030026370869396

`A060800(n+1)*A138403(n+1)`
-/

namespace A138410.P117030026370869396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) * A138403 (n + 1)

end

end A138410.P117030026370869396

namespace A138410

/-- `A060800(n+1)*A138403(n+1)` -/
def P117030026370869396.Spec : Prop :=
  ∀ n, P117030026370869396.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P16180343607444272369

`A079704(n+1)*A138417(n+1)`
-/

namespace A138410.P16180343607444272369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A138417 (n + 1)

end

end A138410.P16180343607444272369

namespace A138410

/-- `A079704(n+1)*A138417(n+1)` -/
def P16180343607444272369.Spec : Prop :=
  ∀ n, P16180343607444272369.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P17424618551293133930

`A100484(n+1)*A138431(n+1)`
-/

namespace A138410.P17424618551293133930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138431 (n + 1)

end

end A138410.P17424618551293133930

namespace A138410

/-- `A100484(n+1)*A138431(n+1)` -/
def P17424618551293133930.Spec : Prop :=
  ∀ n, P17424618551293133930.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P8692594782105798187

`A135177(n+1)*A181149(n+1)`
-/

namespace A138410.P8692594782105798187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) * A181149 (n + 1)

end

end A138410.P8692594782105798187

namespace A138410

/-- `A135177(n+1)*A181149(n+1)` -/
def P8692594782105798187.Spec : Prop :=
  ∀ n, P8692594782105798187.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P1655360129554757

`lcm(A030078(n+1), A138401(n+1))`
-/

namespace A138410.P1655360129554757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030078 (n + 1)) (A138401 (n + 1))

end

end A138410.P1655360129554757

namespace A138410

/-- `lcm(A030078(n+1), A138401(n+1))` -/
def P1655360129554757.Spec : Prop :=
  ∀ n, (P1655360129554757.a n : ℤ) = A138410 (n + 1)

end A138410

/-! ## A138410.P11329904120006953822

`lcm(A138403(n+1), A138405(n+1))`
-/

namespace A138410.P11329904120006953822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138403 (n + 1)) (A138405 (n + 1))

end

end A138410.P11329904120006953822

namespace A138410

/-- `lcm(A138403(n+1), A138405(n+1))` -/
def P11329904120006953822.Spec : Prop :=
  ∀ n, (P11329904120006953822.a n : ℤ) = A138410 (n + 1)

end A138410

/-! ## A138410.P9890953098381585624

`A000040(n+1)²*A138401(n+1)`
-/

namespace A138410.P9890953098381585624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138401 (n + 1)

end

end A138410.P9890953098381585624

namespace A138410

/-- `A000040(n+1)²*A138401(n+1)` -/
def P9890953098381585624.Spec : Prop :=
  ∀ n, P9890953098381585624.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P15703661464791487157

`(A036690(n+1)+1)*A138403(n+1)`
-/

namespace A138410.P15703661464791487157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) + 1) * A138403 (n + 1)

end

end A138410.P15703661464791487157

namespace A138410

/-- `(A036690(n+1)+1)*A138403(n+1)` -/
def P15703661464791487157.Spec : Prop :=
  ∀ n, P15703661464791487157.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P8951974436658003913

`2*(A138453(n+1)+A138423(n+1))`
-/

namespace A138410.P8951974436658003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138453 (n + 1) + A138423 (n + 1))

end

end A138410.P8951974436658003913

namespace A138410

/-- `2*(A138453(n+1)+A138423(n+1))` -/
def P8951974436658003913.Spec : Prop :=
  ∀ n, P8951974436658003913.a n = A138410 (n + 1)

end A138410

/-! ## A138410.P16511335761748596024

`2*(A138460(n+1)+A138432(n+1))`
-/

namespace A138410.P16511335761748596024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138460 (n + 1) + A138432 (n + 1))

end

end A138410.P16511335761748596024

namespace A138410

/-- `2*(A138460(n+1)+A138432(n+1))` -/
def P16511335761748596024.Spec : Prop :=
  ∀ n, P16511335761748596024.a n = A138410 (n + 1)

end A138410

/-!
# A138411: a(n) = prime(n)^6 - prime(n)^4.

The programs for A138411, the canonical program `A138411.P5116142193877252063` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138411 has offset 1).

The definition of A138411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138411.P17885800893431947444

`2*A138453(n+1)`
-/

namespace A138411.P17885800893431947444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138453 (n + 1)

end

end A138411.P17885800893431947444

namespace A138411

/-- `2*A138453(n+1)` -/
def P17885800893431947444.Spec : Prop :=
  ∀ n, P17885800893431947444.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P5348943578014078372

`3*A138454(n+1)`
-/

namespace A138411.P5348943578014078372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138454 (n + 1)

end

end A138411.P5348943578014078372

namespace A138411

/-- `3*A138454(n+1)` -/
def P5348943578014078372.Spec : Prop :=
  ∀ n, P5348943578014078372.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P18096209799911813463

`4*A138455(n+1)`
-/

namespace A138411.P18096209799911813463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138455 (n + 1)

end

end A138411.P18096209799911813463

namespace A138411

/-- `4*A138455(n+1)` -/
def P18096209799911813463.Spec : Prop :=
  ∀ n, P18096209799911813463.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P10374352043153582977

`6*A138456(n+1)`
-/

namespace A138411.P10374352043153582977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138456 (n + 1)

end

end A138411.P10374352043153582977

namespace A138411

/-- `6*A138456(n+1)` -/
def P10374352043153582977.Spec : Prop :=
  ∀ n, P10374352043153582977.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P12350880784962092207

`8*A138457(n+1)`
-/

namespace A138411.P12350880784962092207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A138457 (n + 1)

end

end A138411.P12350880784962092207

namespace A138411

/-- `8*A138457(n+1)` -/
def P12350880784962092207.Spec : Prop :=
  ∀ n, P12350880784962092207.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P12799285112932501924

`12*A138459(n+1)`
-/

namespace A138411.P12799285112932501924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A138459 (n + 1)

end

end A138411.P12799285112932501924

namespace A138411

/-- `12*A138459(n+1)` -/
def P12799285112932501924.Spec : Prop :=
  ∀ n, P12799285112932501924.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P11586095467669867573

`A138412(n+1)+A138407(n+1)`
-/

namespace A138411.P11586095467669867573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + A138407 (n + 1)

end

end A138411.P11586095467669867573

namespace A138411

/-- `A138412(n+1)+A138407(n+1)` -/
def P11586095467669867573.Spec : Prop :=
  ∀ n, P11586095467669867573.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P5116142193877252063

`A030516(n+1)-A030514(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138411

/-- `A030516(n+1)-A030514(n+1)` -/
def P5116142193877252063.Spec : Prop :=
  ∀ n, P5116142193877252063.a n = A138411 (n + 1)

theorem P5116142193877252063.correct : P5116142193877252063.Spec := by
  intro n
  simp only [A138411, Nat.add_sub_cancel]

end A138411

/-! ## A138411.P18107491284185761962

`A138408(n+1)-A138401(n+1)`
-/

namespace A138411.P18107491284185761962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A138401 (n + 1)

end

end A138411.P18107491284185761962

namespace A138411

/-- `A138408(n+1)-A138401(n+1)` -/
def P18107491284185761962.Spec : Prop :=
  ∀ n, P18107491284185761962.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P12091711678597808337

`A138409(n+1)-A138402(n+1)`
-/

namespace A138411.P12091711678597808337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A138402 (n + 1)

end

end A138411.P12091711678597808337

namespace A138411

/-- `A138409(n+1)-A138402(n+1)` -/
def P12091711678597808337.Spec : Prop :=
  ∀ n, P12091711678597808337.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P10968207371245417093

`A138410(n+1)-A138403(n+1)`
-/

namespace A138411.P10968207371245417093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) - A138403 (n + 1)

end

end A138411.P10968207371245417093

namespace A138411

/-- `A138410(n+1)-A138403(n+1)` -/
def P10968207371245417093.Spec : Prop :=
  ∀ n, P10968207371245417093.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P6461946099973467736

`A030514(n+1)*A084920(n+1)`
-/

namespace A138411.P6461946099973467736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A084920 (n + 1)

end

end A138411.P6461946099973467736

namespace A138411

/-- `A030514(n+1)*A084920(n+1)` -/
def P6461946099973467736.Spec : Prop :=
  ∀ n, P6461946099973467736.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P18409508590222140172

`A000040(n+1)*A138406(n+1)`
-/

namespace A138411.P18409508590222140172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138406 (n + 1)

end

end A138411.P18409508590222140172

namespace A138411

/-- `A000040(n+1)*A138406(n+1)` -/
def P18409508590222140172.Spec : Prop :=
  ∀ n, P18409508590222140172.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P12003909646398305487

`A001248(n+1)*A138402(n+1)`
-/

namespace A138411.P12003909646398305487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138402 (n + 1)

end

end A138411.P12003909646398305487

namespace A138411

/-- `A001248(n+1)*A138402(n+1)` -/
def P12003909646398305487.Spec : Prop :=
  ∀ n, P12003909646398305487.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P1895713677418077317

`A001748(n+1)*A138433(n+1)`
-/

namespace A138411.P1895713677418077317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138433 (n + 1)

end

end A138411.P1895713677418077317

namespace A138411

/-- `A001748(n+1)*A138433(n+1)` -/
def P1895713677418077317.Spec : Prop :=
  ∀ n, P1895713677418077317.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P15063878684598009398

`A001749(n+1)*A138434(n+1)`
-/

namespace A138411.P15063878684598009398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138434 (n + 1)

end

end A138411.P15063878684598009398

namespace A138411

/-- `A001749(n+1)*A138434(n+1)` -/
def P15063878684598009398.Spec : Prop :=
  ∀ n, P15063878684598009398.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P3336563433912462728

`A008864(n+1)*A138407(n+1)`
-/

namespace A138411.P3336563433912462728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A138407 (n + 1)

end

end A138411.P3336563433912462728

namespace A138411

/-- `A008864(n+1)*A138407(n+1)` -/
def P3336563433912462728.Spec : Prop :=
  ∀ n, P3336563433912462728.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P4013591206163659948

`A030078(n+1)*A127917(n+1)`
-/

namespace A138411.P4013591206163659948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A127917 (n + 1)

end

end A138411.P4013591206163659948

namespace A138411

/-- `A030078(n+1)*A127917(n+1)` -/
def P4013591206163659948.Spec : Prop :=
  ∀ n, P4013591206163659948.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P10131595901459227784

`A036690(n+1)*A138403(n+1)`
-/

namespace A138411.P10131595901459227784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A138403 (n + 1)

end

end A138411.P10131595901459227784

namespace A138411

/-- `A036690(n+1)*A138403(n+1)` -/
def P10131595901459227784.Spec : Prop :=
  ∀ n, P10131595901459227784.a n = A138411 (n + 1)

end A138411

/-! ## A138411.P8327465800296692209

`A069262(n+1)*A138420(n+1)`
-/

namespace A138411.P8327465800296692209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069262 (n + 1) * A138420 (n + 1)

end

end A138411.P8327465800296692209

namespace A138411

/-- `A069262(n+1)*A138420(n+1)` -/
def P8327465800296692209.Spec : Prop :=
  ∀ n, P8327465800296692209.a n = A138411 (n + 1)

end A138411

/-!
# A138412: a(n) = p^5*(p-1) where p = prime(n).

The programs for A138412, the canonical program `A138412.P9166921573337738631` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138412 has offset 1).

The definition of A138412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138412.P10056134319514850192

`2*A138460(n+1)`
-/

namespace A138412.P10056134319514850192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138460 (n + 1)

end

end A138412.P10056134319514850192

namespace A138412

/-- `2*A138460(n+1)` -/
def P10056134319514850192.Spec : Prop :=
  ∀ n, P10056134319514850192.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P9166921573337738631

`A030516(n+1)-A050997(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138412

/-- `A030516(n+1)-A050997(n+1)` -/
def P9166921573337738631.Spec : Prop :=
  ∀ n, P9166921573337738631.a n = A138412 (n + 1)

theorem P9166921573337738631.correct : P9166921573337738631.Spec := by
  intro n
  simp only [A138412, Nat.add_sub_cancel]

end A138412

/-! ## A138412.P2871014514543743361

`A138408(n+1)-A138404(n+1)`
-/

namespace A138412.P2871014514543743361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A138404 (n + 1)

end

end A138412.P2871014514543743361

namespace A138412

/-- `A138408(n+1)-A138404(n+1)` -/
def P2871014514543743361.Spec : Prop :=
  ∀ n, P2871014514543743361.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P3647398417874285599

`A138409(n+1)-A138405(n+1)`
-/

namespace A138412.P3647398417874285599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A138405 (n + 1)

end

end A138412.P3647398417874285599

namespace A138412

/-- `A138409(n+1)-A138405(n+1)` -/
def P3647398417874285599.Spec : Prop :=
  ∀ n, P3647398417874285599.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P6774519954721252674

`A138410(n+1)-A138406(n+1)`
-/

namespace A138412.P6774519954721252674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) - A138406 (n + 1)

end

end A138412.P6774519954721252674

namespace A138412

/-- `A138410(n+1)-A138406(n+1)` -/
def P6774519954721252674.Spec : Prop :=
  ∀ n, P6774519954721252674.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P14674620218966513402

`A138411(n+1)-A138407(n+1)`
-/

namespace A138412.P14674620218966513402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) - A138407 (n + 1)

end

end A138412.P14674620218966513402

namespace A138412

/-- `A138411(n+1)-A138407(n+1)` -/
def P14674620218966513402.Spec : Prop :=
  ∀ n, P14674620218966513402.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P2017667579903024035

`A006093(n+1)*A050997(n+1)`
-/

namespace A138412.P2017667579903024035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A050997 (n + 1)

end

end A138412.P2017667579903024035

namespace A138412

/-- `A006093(n+1)*A050997(n+1)` -/
def P2017667579903024035.Spec : Prop :=
  ∀ n, P2017667579903024035.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P11202239120295399417

`A030514(n+1)*A036689(n+1)`
-/

namespace A138412.P11202239120295399417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A036689 (n + 1)

end

end A138412.P11202239120295399417

namespace A138412

/-- `A030514(n+1)*A036689(n+1)` -/
def P11202239120295399417.Spec : Prop :=
  ∀ n, P11202239120295399417.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P9004331093316063062

`A000040(n+1)*A138407(n+1)`
-/

namespace A138412.P9004331093316063062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138407 (n + 1)

end

end A138412.P9004331093316063062

namespace A138412

/-- `A000040(n+1)*A138407(n+1)` -/
def P9004331093316063062.Spec : Prop :=
  ∀ n, P9004331093316063062.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P6893372623769709967

`A001248(n+1)*A138403(n+1)`
-/

namespace A138412.P6893372623769709967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138403 (n + 1)

end

end A138412.P6893372623769709967

namespace A138412

/-- `A001248(n+1)*A138403(n+1)` -/
def P6893372623769709967.Spec : Prop :=
  ∀ n, P6893372623769709967.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P17283617564895358722

`A030078(n+1)*A135177(n+1)`
-/

namespace A138412.P17283617564895358722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A135177 (n + 1)

end

end A138412.P17283617564895358722

namespace A138412

/-- `A030078(n+1)*A135177(n+1)` -/
def P17283617564895358722.Spec : Prop :=
  ∀ n, P17283617564895358722.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P15408757757633565521

`A008837(n+1)*A172191(n+1)`
-/

namespace A138412.P15408757757633565521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A172191 (n + 1)

end

end A138412.P15408757757633565521

namespace A138412

/-- `A008837(n+1)*A172191(n+1)` -/
def P15408757757633565521.Spec : Prop :=
  ∀ n, P15408757757633565521.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P15356851271286060531

`A079704(n+1)*A138423(n+1)`
-/

namespace A138412.P15356851271286060531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A138423 (n + 1)

end

end A138412.P15356851271286060531

namespace A138412

/-- `A079704(n+1)*A138423(n+1)` -/
def P15356851271286060531.Spec : Prop :=
  ∀ n, P15356851271286060531.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P7268777202463876409

`A100484(n+1)*A138439(n+1)`
-/

namespace A138412.P7268777202463876409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138439 (n + 1)

end

end A138412.P7268777202463876409

namespace A138412

/-- `A100484(n+1)*A138439(n+1)` -/
def P7268777202463876409.Spec : Prop :=
  ∀ n, P7268777202463876409.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P799100966271454092

`A138416(n+1)*A172190(n+1)`
-/

namespace A138412.P799100966271454092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) * A172190 (n + 1)

end

end A138412.P799100966271454092

namespace A138412

/-- `A138416(n+1)*A172190(n+1)` -/
def P799100966271454092.Spec : Prop :=
  ∀ n, P799100966271454092.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P4659246441064803066

`A030078(n+1)²-A050997(n+1)`
-/

namespace A138412.P4659246441064803066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 - A050997 (n + 1)

end

end A138412.P4659246441064803066

namespace A138412

/-- `A030078(n+1)²-A050997(n+1)` -/
def P4659246441064803066.Spec : Prop :=
  ∀ n, P4659246441064803066.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P2410929844668542387

`A001248(n+1)²*A036689(n+1)`
-/

namespace A138412.P2410929844668542387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A036689 (n + 1)

end

end A138412.P2410929844668542387

namespace A138412

/-- `A001248(n+1)²*A036689(n+1)` -/
def P2410929844668542387.Spec : Prop :=
  ∀ n, P2410929844668542387.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P8052199229801996942

`A000040(n+1)²*A138403(n+1)`
-/

namespace A138412.P8052199229801996942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138403 (n + 1)

end

end A138412.P8052199229801996942

namespace A138412

/-- `A000040(n+1)²*A138403(n+1)` -/
def P8052199229801996942.Spec : Prop :=
  ∀ n, P8052199229801996942.a n = A138412 (n + 1)

end A138412

/-! ## A138412.P1819625898506364675

`A138403(n+1)²/A036689(n+1)`
-/

namespace A138412.P1819625898506364675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138403 (n + 1) ^ 2 : ℚ) / (A036689 (n + 1) : ℚ)

end

end A138412.P1819625898506364675

namespace A138412

/-- `A138403(n+1)²/A036689(n+1)` -/
def P1819625898506364675.Spec : Prop :=
  ∀ n, P1819625898506364675.a n = (A138412 (n + 1) : ℚ)

end A138412

/-! ## A138412.P8732270933552956562

`A138407(n+1)²/A138403(n+1)`
-/

namespace A138412.P8732270933552956562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) ^ 2 : ℚ) / (A138403 (n + 1) : ℚ)

end

end A138412.P8732270933552956562

namespace A138412

/-- `A138407(n+1)²/A138403(n+1)` -/
def P8732270933552956562.Spec : Prop :=
  ∀ n, P8732270933552956562.a n = (A138412 (n + 1) : ℚ)

end A138412

/-!
# A138413: A bisection of A000957.

The programs for A138413, there is no canonical definition to state claims against.
-/

/-! ## A138413.P15231524423145740726

`A000957(2*n)`
-/

namespace A138413.P15231524423145740726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (2 * n)

end

end A138413.P15231524423145740726

/-! ## A138413.P11946705744312924219

`floor(acot(n)-A064310(2*n))`
-/

namespace A138413.P11946705744312924219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A064310 (2 * n) : ℝ)⌋

end

end A138413.P11946705744312924219

/-! ## A138413.P1768965271561111430

`floor(acot(n)-A126983(2*n))`
-/

namespace A138413.P1768965271561111430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A126983 (2 * n) : ℝ)⌋

end

end A138413.P1768965271561111430

/-! ## A138413.P17312941017976503728

`lcm(2, A000957(A005843(n)))`
-/

namespace A138413.P17312941017976503728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000957 (A005843 n).toNat)

end

end A138413.P17312941017976503728

/-! ## A138413.P890182563044633125

`A065600(A004277(n²)-n)`
-/

namespace A138413.P890182563044633125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A004277 (n ^ 2) - (n : ℤ)).toNat

end

end A138413.P890182563044633125

/-! ## A138413.P2809013307304596763

`A000007(n)-A064310(2*n)`
-/

namespace A138413.P2809013307304596763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A064310 (2 * n)

end

end A138413.P2809013307304596763

/-! ## A138413.P10406664046337887194

`A000007(n)-A126983(2*n)`
-/

namespace A138413.P10406664046337887194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A126983 (2 * n)

end

end A138413.P10406664046337887194

/-! ## A138413.P11522872930560395416

`A057428(n)*A126983(2*n)`
-/

namespace A138413.P11522872930560395416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A126983 (2 * n)

end

end A138413.P11522872930560395416

/-! ## A138413.P17863516653935254241

`lcm(A062157(n), A064310(2*n))`
-/

namespace A138413.P17863516653935254241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A064310 (2 * n))

end

end A138413.P17863516653935254241

/-! ## A138413.P15020064096412969989

`lcm(A011621(n), A126983(2*n))`
-/

namespace A138413.P15020064096412969989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011621 n) (A126983 (2 * n))

end

end A138413.P15020064096412969989

/-!
# A138414: A bisection of A000957.

The programs for A138414, the canonical program `A138414.P15952755572868005210` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138414 has offset 0).

The definition of A138414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138414.P15952755572868005210

`A000957(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138414

/-- `A000957(2*n+1)` -/
def P15952755572868005210.Spec : Prop :=
  ∀ n, P15952755572868005210.a n = A138414 n

theorem P15952755572868005210.correct : P15952755572868005210.Spec := by
  intro n
  simp only [A138414]

end A138414

/-! ## A138414.P6405207365560041276

`A064310(Δ[n²])`
-/

namespace A138414.P6405207365560041276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138414.P6405207365560041276

namespace A138414

/-- `A064310(Δ[n²])` -/
def P6405207365560041276.Spec : Prop :=
  ∀ n, P6405207365560041276.a n = A138414 n

end A138414

/-! ## A138414.P3133657316187791942

`abs(A126983(Δ[n²]))`
-/

namespace A138414.P3133657316187791942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A138414.P3133657316187791942

namespace A138414

/-- `abs(A126983(Δ[n²]))` -/
def P3133657316187791942.Spec : Prop :=
  ∀ n, P3133657316187791942.a n = A138414 n

end A138414

/-! ## A138414.P3926611316411659199

`A065600(n*Δ[n²])`
-/

namespace A138414.P3926611316411659199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A138414.P3926611316411659199

namespace A138414

/-- `A065600(n*Δ[n²])` -/
def P3926611316411659199.Spec : Prop :=
  ∀ n, P3926611316411659199.a n = A138414 n

end A138414

/-! ## A138414.P8621091096758213602

`abs(A064310(2*n+1))`
-/

namespace A138414.P8621091096758213602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064310 (2 * n + 1)|

end

end A138414.P8621091096758213602

namespace A138414

/-- `abs(A064310(2*n+1))` -/
def P8621091096758213602.Spec : Prop :=
  ∀ n, P8621091096758213602.a n = A138414 n

end A138414

/-! ## A138414.P3822533619716247469

`(1-4/2)*A126983(2*n+1)`
-/

namespace A138414.P3822533619716247469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) * (A126983 (2 * n + 1) : ℚ)

end

end A138414.P3822533619716247469

namespace A138414

/-- `(1-4/2)*A126983(2*n+1)` -/
def P3822533619716247469.Spec : Prop :=
  ∀ n, P3822533619716247469.a n = (A138414 n : ℚ)

end A138414

/-! ## A138414.P16808662219477939123

`A289447(2*n)-A065601(2*n)`
-/

namespace A138414.P16808662219477939123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289447 (2 * n) - A065601 (2 * n)

end

end A138414.P16808662219477939123

namespace A138414

/-- `A289447(2*n)-A065601(2*n)` -/
def P16808662219477939123.Spec : Prop :=
  ∀ n, P16808662219477939123.a n = A138414 n

end A138414

/-! ## A138414.P15104051887933475637

`A033999(n)²*A064310(2*n+1)`
-/

namespace A138414.P15104051887933475637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A064310 (2 * n + 1)

end

end A138414.P15104051887933475637

namespace A138414

/-- `A033999(n)²*A064310(2*n+1)` -/
def P15104051887933475637.Spec : Prop :=
  ∀ n, P15104051887933475637.a n = A138414 n

end A138414

/-! ## A138414.P12055552514556115474

`A064310(2*n+1)+A000007(n+1)`
-/

namespace A138414.P12055552514556115474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 (2 * n + 1) + A000007 (n + 1)

end

end A138414.P12055552514556115474

namespace A138414

/-- `A064310(2*n+1)+A000007(n+1)` -/
def P12055552514556115474.Spec : Prop :=
  ∀ n, P12055552514556115474.a n = A138414 n

end A138414

/-! ## A138414.P12528336335975616359

`A000007(n+1)-A126983(2*n+1)`
-/

namespace A138414.P12528336335975616359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A126983 (2 * n + 1)

end

end A138414.P12528336335975616359

namespace A138414

/-- `A000007(n+1)-A126983(2*n+1)` -/
def P12528336335975616359.Spec : Prop :=
  ∀ n, P12528336335975616359.a n = A138414 n

end A138414

/-!
# A138415: Binomial transform of A000957.

The programs for A138415, the canonical program `A138415.P3566733532317934836` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138415 has offset 0).

The definition of A138415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138415.P3566733532317934836

`∑[A033321(abs(1-n))]-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138415

/-- `∑[A033321(abs(1-n))]-1` -/
def P3566733532317934836.Spec : Prop :=
  ∀ n, P3566733532317934836.a n = A138415 n

theorem P3566733532317934836.correct : P3566733532317934836.Spec := by
  intro n
  simp only [A138415]

end A138415

/-! ## A138415.P16805287755856613750

`abs(A033999(n)-A091699(n))`
-/

namespace A138415.P16805287755856613750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A091699 n|

end

end A138415.P16805287755856613750

namespace A138415

/-- `abs(A033999(n)-A091699(n))` -/
def P16805287755856613750.Spec : Prop :=
  ∀ n, P16805287755856613750.a n = A138415 n

end A138415

/-! ## A138415.P17410492824537274942

`A033999(n+1)*A091699(n)+1`
-/

namespace A138415.P17410492824537274942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A091699 n + 1

end

end A138415.P17410492824537274942

namespace A138415

/-- `A033999(n+1)*A091699(n)+1` -/
def P17410492824537274942.Spec : Prop :=
  ∀ n, P17410492824537274942.a n = A138415 n

end A138415

/-! ## A138415.P14519539962557987737

`lcm(A033999(n)-A091699(n), A000034(n+1))`
-/

namespace A138415.P14519539962557987737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n - A091699 n) (A000034 (n + 1))

end

end A138415.P14519539962557987737

namespace A138415

/-- `lcm(A033999(n)-A091699(n), A000034(n+1))` -/
def P14519539962557987737.Spec : Prop :=
  ∀ n, (P14519539962557987737.a n : ℤ) = A138415 n

end A138415

/-! ## A138415.P1932950136423032109

`lcm(A033999(n+6)-A091699(n), A033999(n))`
-/

namespace A138415.P1932950136423032109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 6) - A091699 n) (A033999 n)

end

end A138415.P1932950136423032109

namespace A138415

/-- `lcm(A033999(n+6)-A091699(n), A033999(n))` -/
def P1932950136423032109.Spec : Prop :=
  ∀ n, (P1932950136423032109.a n : ℤ) = A138415 n

end A138415

/-! ## A138415.P6531201352679440769

`A129167(n)-∑[A128714(n)]`
-/

namespace A138415.P6531201352679440769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138415.P6531201352679440769

namespace A138415

/-- `A129167(n)-∑[A128714(n)]` -/
def P6531201352679440769.Spec : Prop :=
  ∀ n, P6531201352679440769.a n = A138415 n

end A138415

/-! ## A138415.P17930586662708521455

`A129167(n)+1-A033321(n)`
-/

namespace A138415.P17930586662708521455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n + (1 - A033321 n)

end

end A138415.P17930586662708521455

namespace A138415

/-- `A129167(n)+1-A033321(n)` -/
def P17930586662708521455.Spec : Prop :=
  ∀ n, P17930586662708521455.a n = A138415 n

end A138415

/-! ## A138415.P17535414046928902951

`A033999(n)²-(A033321(n)-A129167(n))`
-/

namespace A138415.P17535414046928902951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 - (A033321 n - A129167 n)

end

end A138415.P17535414046928902951

namespace A138415

/-- `A033999(n)²-(A033321(n)-A129167(n))` -/
def P17535414046928902951.Spec : Prop :=
  ∀ n, P17535414046928902951.a n = A138415 n

end A138415

/-! ## A138415.P1193766527832982672

`A303952(n)-A262664(n)`
-/

namespace A138415.P1193766527832982672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303952 n - A262664 n

end

end A138415.P1193766527832982672

namespace A138415

/-- `A303952(n)-A262664(n)` -/
def P1193766527832982672.Spec : Prop :=
  ∀ n, P1193766527832982672.a n = A138415 n

end A138415

/-! ## A138415.P279153253745745727

`∑[A126568(n)-A128732(n)]-A126568(n)`
-/

namespace A138415.P279153253745745727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n - A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126568 n

end

end A138415.P279153253745745727

namespace A138415

/-- `∑[A126568(n)-A128732(n)]-A126568(n)` -/
def P279153253745745727.Spec : Prop :=
  ∀ n, P279153253745745727.a n = A138415 n

end A138415

/-! ## A138415.P8214325713917544086

`∑[A110877(A161680(n))]-1`
-/

namespace A138415.P8214325713917544086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A138415.P8214325713917544086

namespace A138415

/-- `∑[A110877(A161680(n))]-1` -/
def P8214325713917544086.Spec : Prop :=
  ∀ n, P8214325713917544086.a n = A138415 n

end A138415

/-!
# A138416: a(n) = (p^3 - p^2)/2, where p = prime(n).

The programs for A138416, the canonical program `A138416.P16017585133365700482` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138416 has offset 1).

The definition of A138416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138416.P11749618373167240499

`A135177(n+1)/2`
-/

namespace A138416.P11749618373167240499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135177 (n + 1) : ℚ) / 2

end

end A138416.P11749618373167240499

namespace A138416

/-- `A135177(n+1)/2` -/
def P11749618373167240499.Spec : Prop :=
  ∀ n, P11749618373167240499.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P3911077797021330845

`A066886(n+1)-A034953(n+1)`
-/

namespace A138416.P3911077797021330845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) - A034953 (n + 1)

end

end A138416.P3911077797021330845

namespace A138416

/-- `A066886(n+1)-A034953(n+1)` -/
def P3911077797021330845.Spec : Prop :=
  ∀ n, P3911077797021330845.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P16017585133365700482

`A127918(n+1)-A008837(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138416

/-- `A127918(n+1)-A008837(n+1)` -/
def P16017585133365700482.Spec : Prop :=
  ∀ n, P16017585133365700482.a n = A138416 (n + 1)

theorem P16017585133365700482.correct : P16017585133365700482.Spec := by
  intro n
  simp only [A138416, Nat.add_sub_cancel]

end A138416

/-! ## A138416.P9768505599182288833

`A179546(n+1)-A079704(n+1)`
-/

namespace A138416.P9768505599182288833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179546 (n + 1) - A079704 (n + 1)

end

end A138416.P9768505599182288833

namespace A138416

/-- `A179546(n+1)-A079704(n+1)` -/
def P9768505599182288833.Spec : Prop :=
  ∀ n, P9768505599182288833.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P16355196579661287834

`A138418(n+1)-A138423(n+1)`
-/

namespace A138416.P16355196579661287834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A138423 (n + 1)

end

end A138416.P16355196579661287834

namespace A138416

/-- `A138418(n+1)-A138423(n+1)` -/
def P16355196579661287834.Spec : Prop :=
  ∀ n, P16355196579661287834.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P6810269733052554342

`A138431(n+1)-A138432(n+1)`
-/

namespace A138416.P6810269733052554342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138431 (n + 1) - A138432 (n + 1)

end

end A138416.P6810269733052554342

namespace A138416

/-- `A138431(n+1)-A138432(n+1)` -/
def P6810269733052554342.Spec : Prop :=
  ∀ n, P6810269733052554342.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P1194414372518238312

`A138441(n+1)-A138452(n+1)`
-/

namespace A138416.P1194414372518238312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138452 (n + 1)

end

end A138416.P1194414372518238312

namespace A138416

/-- `A138441(n+1)-A138452(n+1)` -/
def P1194414372518238312.Spec : Prop :=
  ∀ n, P1194414372518238312.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P1900484035929597064

`A135178(n+1)-A179546(n+1)`
-/

namespace A138416.P1900484035929597064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A179546 (n + 1)

end

end A138416.P1900484035929597064

namespace A138416

/-- `A135178(n+1)-A179546(n+1)` -/
def P1900484035929597064.Spec : Prop :=
  ∀ n, P1900484035929597064.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P1812731465533197159

`A000040(n+1)*A008837(n+1)`
-/

namespace A138416.P1812731465533197159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008837 (n + 1)

end

end A138416.P1812731465533197159

namespace A138416

/-- `A000040(n+1)*A008837(n+1)` -/
def P1812731465533197159.Spec : Prop :=
  ∀ n, P1812731465533197159.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P1901789214544545208

`A138423(n+1)/A000040(n+1)`
-/

namespace A138416.P1901789214544545208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138423 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138416.P1901789214544545208

namespace A138416

/-- `A138423(n+1)/A000040(n+1)` -/
def P1901789214544545208.Spec : Prop :=
  ∀ n, P1901789214544545208.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P13235460078915217836

`A138439(n+1)/A001248(n+1)`
-/

namespace A138416.P13235460078915217836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138439 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138416.P13235460078915217836

namespace A138416

/-- `A138439(n+1)/A001248(n+1)` -/
def P13235460078915217836.Spec : Prop :=
  ∀ n, P13235460078915217836.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P2944137808919720947

`A138418(n+1)/A008864(n+1)`
-/

namespace A138416.P2944137808919720947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)

end

end A138416.P2944137808919720947

namespace A138416

/-- `A138418(n+1)/A008864(n+1)` -/
def P2944137808919720947.Spec : Prop :=
  ∀ n, P2944137808919720947.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P13499659017294912015

`A138460(n+1)/A030078(n+1)`
-/

namespace A138416.P13499659017294912015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138460 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A138416.P13499659017294912015

namespace A138416

/-- `A138460(n+1)/A030078(n+1)` -/
def P13499659017294912015.Spec : Prop :=
  ∀ n, P13499659017294912015.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P12251914157386226841

`A138434(n+1)/A034953(n+1)`
-/

namespace A138416.P12251914157386226841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / (A034953 (n + 1) : ℚ)

end

end A138416.P12251914157386226841

namespace A138416

/-- `A138434(n+1)/A034953(n+1)` -/
def P12251914157386226841.Spec : Prop :=
  ∀ n, P12251914157386226841.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P11481764679931605415

`A138407(n+1)/A079704(n+1)`
-/

namespace A138416.P11481764679931605415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138416.P11481764679931605415

namespace A138416

/-- `A138407(n+1)/A079704(n+1)` -/
def P11481764679931605415.Spec : Prop :=
  ∀ n, P11481764679931605415.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P11836156836108936148

`A138453(n+1)/A135178(n+1)`
-/

namespace A138416.P11836156836108936148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A135178 (n + 1) : ℚ)

end

end A138416.P11836156836108936148

namespace A138416

/-- `A138453(n+1)/A135178(n+1)` -/
def P11836156836108936148.Spec : Prop :=
  ∀ n, P11836156836108936148.a n = (A138416 (n + 1) : ℚ)

end A138416

/-! ## A138416.P16539923404237979435

`A138417(n+1)%A066886(n+1)`
-/

namespace A138416.P16539923404237979435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138417 (n + 1)) (A066886 (n + 1))

end

end A138416.P16539923404237979435

namespace A138416

/-- `A138417(n+1)%A066886(n+1)` -/
def P16539923404237979435.Spec : Prop :=
  ∀ n, P16539923404237979435.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P5416238082985908514

`A138431(n+1)%A117762(n+1)`
-/

namespace A138416.P5416238082985908514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138431 (n + 1)) (A117762 (n + 1))

end

end A138416.P5416238082985908514

namespace A138416

/-- `A138431(n+1)%A117762(n+1)` -/
def P5416238082985908514.Spec : Prop :=
  ∀ n, P5416238082985908514.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P13631778338087674136

`A138439(n+1)%A117762(n+1)`
-/

namespace A138416.P13631778338087674136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138439 (n + 1)) (A117762 (n + 1))

end

end A138416.P13631778338087674136

namespace A138416

/-- `A138439(n+1)%A117762(n+1)` -/
def P13631778338087674136.Spec : Prop :=
  ∀ n, P13631778338087674136.a n = A138416 (n + 1)

end A138416

/-! ## A138416.P10135309731217453492

`A138441(n+1)%A138417(n+1)`
-/

namespace A138416.P10135309731217453492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138441 (n + 1)) (A138417 (n + 1))

end

end A138416.P10135309731217453492

namespace A138416

/-- `A138441(n+1)%A138417(n+1)` -/
def P10135309731217453492.Spec : Prop :=
  ∀ n, P10135309731217453492.a n = A138416 (n + 1)

end A138416

/-!
# A138417: a(n) = (prime(n)^4 - prime(n))/2.

The programs for A138417, the canonical program `A138417.P6610939322627036311` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138417 has offset 1).

The definition of A138417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138417.P6610939322627036311

`A138401(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138417

/-- `A138401(n+1)/2` -/
def P6610939322627036311.Spec : Prop :=
  ∀ n, P6610939322627036311.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P12811168579263239201

`∑{d}[A000040(n+1), #^4-#]/2`
-/

namespace A138417.P12811168579263239201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 4 : ℤ) - (d : ℤ)) : ℤ) : ℚ) / 2

end

end A138417.P12811168579263239201

namespace A138417

/-- `∑{d}[A000040(n+1), #^4-#]/2` -/
def P12811168579263239201.Spec : Prop :=
  ∀ n, P12811168579263239201.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P14731450593461604161

`A138418(n+1)+A008837(n+1)`
-/

namespace A138417.P14731450593461604161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + A008837 (n + 1)

end

end A138417.P14731450593461604161

namespace A138417

/-- `A138418(n+1)+A008837(n+1)` -/
def P14731450593461604161.Spec : Prop :=
  ∀ n, P14731450593461604161.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P18303361766298802132

`A138423(n+1)+A127918(n+1)`
-/

namespace A138417.P18303361766298802132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138423 (n + 1) + A127918 (n + 1)

end

end A138417.P18303361766298802132

namespace A138417

/-- `A138423(n+1)+A127918(n+1)` -/
def P18303361766298802132.Spec : Prop :=
  ∀ n, P18303361766298802132.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P5696402813108011054

`A138424(n+1)-A138439(n+1)`
-/

namespace A138417.P5696402813108011054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A138439 (n + 1)

end

end A138417.P5696402813108011054

namespace A138417

/-- `A138424(n+1)-A138439(n+1)` -/
def P5696402813108011054.Spec : Prop :=
  ∀ n, P5696402813108011054.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P3752028599968504356

`A138440(n+1)-A138453(n+1)`
-/

namespace A138417.P3752028599968504356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138453 (n + 1)

end

end A138417.P3752028599968504356

namespace A138417

/-- `A138440(n+1)-A138453(n+1)` -/
def P3752028599968504356.Spec : Prop :=
  ∀ n, P3752028599968504356.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P8002319001771613599

`A008837(n+1)*A060800(n+1)`
-/

namespace A138417.P8002319001771613599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A060800 (n + 1)

end

end A138417.P8002319001771613599

namespace A138417

/-- `A008837(n+1)*A060800(n+1)` -/
def P8002319001771613599.Spec : Prop :=
  ∀ n, P8002319001771613599.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P3420001405104428007

`A138431(n+1)/A000040(n+1)`
-/

namespace A138417.P3420001405104428007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138431 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138417.P3420001405104428007

namespace A138417

/-- `A138431(n+1)/A000040(n+1)` -/
def P3420001405104428007.Spec : Prop :=
  ∀ n, P3420001405104428007.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P7518045210348439889

`A138452(n+1)/A001248(n+1)`
-/

namespace A138417.P7518045210348439889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138417.P7518045210348439889

namespace A138417

/-- `A138452(n+1)/A001248(n+1)` -/
def P7518045210348439889.Spec : Prop :=
  ∀ n, P7518045210348439889.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P18397976450004068248

`A138410(n+1)/A079704(n+1)`
-/

namespace A138417.P18397976450004068248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138417.P18397976450004068248

namespace A138417

/-- `A138410(n+1)/A079704(n+1)` -/
def P18397976450004068248.Spec : Prop :=
  ∀ n, P18397976450004068248.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P7652055846415652587

`A138405(n+1)/A100484(n+1)`
-/

namespace A138417.P7652055846415652587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138417.P7652055846415652587

namespace A138417

/-- `A138405(n+1)/A100484(n+1)` -/
def P7652055846415652587.Spec : Prop :=
  ∀ n, P7652055846415652587.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P17540202223484494560

`A138440(n+1)%A138403(n+1)`
-/

namespace A138417.P17540202223484494560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138440 (n + 1)) (A138403 (n + 1))

end

end A138417.P17540202223484494560

namespace A138417

/-- `A138440(n+1)%A138403(n+1)` -/
def P17540202223484494560.Spec : Prop :=
  ∀ n, P17540202223484494560.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P11543512016603749129

`A138452(n+1)/A000040(n+1)²`
-/

namespace A138417.P11543512016603749129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A138417.P11543512016603749129

namespace A138417

/-- `A138452(n+1)/A000040(n+1)²` -/
def P11543512016603749129.Spec : Prop :=
  ∀ n, P11543512016603749129.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P6675496272936835387

`A008837(n+1)+2*A138420(n+1)`
-/

namespace A138417.P6675496272936835387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + 2 * A138420 (n + 1)

end

end A138417.P6675496272936835387

namespace A138417

/-- `A008837(n+1)+2*A138420(n+1)` -/
def P6675496272936835387.Spec : Prop :=
  ∀ n, P6675496272936835387.a n = A138417 (n + 1)

end A138417

/-! ## A138417.P9016028610900298460

`(A138402(n+1)+A036689(n+1))/2`
-/

namespace A138417.P9016028610900298460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) + A036689 (n + 1) : ℚ) / 2

end

end A138417.P9016028610900298460

namespace A138417

/-- `(A138402(n+1)+A036689(n+1))/2` -/
def P9016028610900298460.Spec : Prop :=
  ∀ n, P9016028610900298460.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P15743830109650824637

`(A138403(n+1)+A127917(n+1))/2`
-/

namespace A138417.P15743830109650824637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138403 (n + 1) + A127917 (n + 1) : ℚ) / 2

end

end A138417.P15743830109650824637

namespace A138417

/-- `(A138403(n+1)+A127917(n+1))/2` -/
def P15743830109650824637.Spec : Prop :=
  ∀ n, P15743830109650824637.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P16298827506755262439

`(A030514(n+1)-A000040(n+1))/2`
-/

namespace A138417.P16298827506755262439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A138417.P16298827506755262439

namespace A138417

/-- `(A030514(n+1)-A000040(n+1))/2` -/
def P16298827506755262439.Spec : Prop :=
  ∀ n, P16298827506755262439.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P17892631958287850177

`(A138404(n+1)-A138407(n+1))/2`
-/

namespace A138417.P17892631958287850177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) - A138407 (n + 1) : ℚ) / 2

end

end A138417.P17892631958287850177

namespace A138417

/-- `(A138404(n+1)-A138407(n+1))/2` -/
def P17892631958287850177.Spec : Prop :=
  ∀ n, P17892631958287850177.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P17466133611375001356

`(A138408(n+1)-A138411(n+1))/2`
-/

namespace A138417.P17466133611375001356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) - A138411 (n + 1) : ℚ) / 2

end

end A138417.P17466133611375001356

namespace A138417

/-- `(A138408(n+1)-A138411(n+1))/2` -/
def P17466133611375001356.Spec : Prop :=
  ∀ n, P17466133611375001356.a n = (A138417 (n + 1) : ℚ)

end A138417

/-! ## A138417.P5704259109583747243

`A036689(n+1)/2*A060800(n+1)`
-/

namespace A138417.P5704259109583747243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) / 2 * (A060800 (n + 1) : ℚ)

end

end A138417.P5704259109583747243

namespace A138417

/-- `A036689(n+1)/2*A060800(n+1)` -/
def P5704259109583747243.Spec : Prop :=
  ∀ n, P5704259109583747243.a n = (A138417 (n + 1) : ℚ)

end A138417

/-!
# A138418: a(n) = ((n-th prime)^4-(n-th prime)^2)/2.

The programs for A138418, the canonical program `A138418.P2359058537116539460` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138418 has offset 1).

The definition of A138418 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138418.P2359058537116539460

`A138402(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138418

/-- `A138402(n+1)/2` -/
def P2359058537116539460.Spec : Prop :=
  ∀ n, P2359058537116539460.a n = (A138418 (n + 1) : ℚ)

end A138418

/-! ## A138418.P5821903773913478388

`2*A138420(n+1)`
-/

namespace A138418.P5821903773913478388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138420 (n + 1)

end

end A138418.P5821903773913478388

namespace A138418

/-- `2*A138420(n+1)` -/
def P5821903773913478388.Spec : Prop :=
  ∀ n, P5821903773913478388.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P13307657363701962130

`3*A138421(n+1)`
-/

namespace A138418.P13307657363701962130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138421 (n + 1)

end

end A138418.P13307657363701962130

namespace A138418

/-- `3*A138421(n+1)` -/
def P13307657363701962130.Spec : Prop :=
  ∀ n, P13307657363701962130.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P6716263561743621261

`6*A138422(n+1)`
-/

namespace A138418.P6716263561743621261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138422 (n + 1)

end

end A138418.P6716263561743621261

namespace A138418

/-- `6*A138422(n+1)` -/
def P6716263561743621261.Spec : Prop :=
  ∀ n, P6716263561743621261.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P7509443752609130217

`C(A001248(n+1), 2)`
-/

namespace A138418.P7509443752609130217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001248 (n + 1)).toNat 2

end

end A138418.P7509443752609130217

namespace A138418

/-- `C(A001248(n+1), 2)` -/
def P7509443752609130217.Spec : Prop :=
  ∀ n, (P7509443752609130217.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P8765533611912204693

`C(Δ[A007504(n)]², 2)`
-/

namespace A138418.P8765533611912204693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) - f1 n) ^ 2).toNat 2

end

end A138418.P8765533611912204693

namespace A138418

/-- `C(Δ[A007504(n)]², 2)` -/
def P8765533611912204693.Spec : Prop :=
  ∀ n, (P8765533611912204693.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P13410800644449124992

`C(p?[A259153(n)]², 2)`
-/

namespace A138418.P13410800644449124992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat 2

end

end A138418.P13410800644449124992

namespace A138418

/-- `C(p?[A259153(n)]², 2)` -/
def P13410800644449124992.Spec : Prop :=
  ∀ n, (P13410800644449124992.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P14614905961653765988

`C(A000040(n+1)², 2)`
-/

namespace A138418.P14614905961653765988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) ^ 2).toNat 2

end

end A138418.P14614905961653765988

namespace A138418

/-- `C(A000040(n+1)², 2)` -/
def P14614905961653765988.Spec : Prop :=
  ∀ n, (P14614905961653765988.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P2429393082750865707

`3/2*A138419(n+1)`
-/

namespace A138418.P2429393082750865707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138419 (n + 1) : ℚ)

end

end A138418.P2429393082750865707

namespace A138418

/-- `3/2*A138419(n+1)` -/
def P2429393082750865707.Spec : Prop :=
  ∀ n, P2429393082750865707.a n = (A138418 (n + 1) : ℚ)

end A138418

/-! ## A138418.P17356208894835224350

`C(A066872(n+1)-1, 2)`
-/

namespace A138418.P17356208894835224350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066872 (n + 1) - 1).toNat 2

end

end A138418.P17356208894835224350

namespace A138418

/-- `C(A066872(n+1)-1, 2)` -/
def P17356208894835224350.Spec : Prop :=
  ∀ n, (P17356208894835224350.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P4293597463204139477

`C(∑[A054541(n+1)]², 2)`
-/

namespace A138418.P4293597463204139477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat 2

end

end A138418.P4293597463204139477

namespace A138418

/-- `C(∑[A054541(n+1)]², 2)` -/
def P4293597463204139477.Spec : Prop :=
  ∀ n, (P4293597463204139477.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P13973566767439854165

`C((A006093(n+1)+1)², 2)`
-/

namespace A138418.P13973566767439854165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A006093 (n + 1) + 1) ^ 2).toNat 2

end

end A138418.P13973566767439854165

namespace A138418

/-- `C((A006093(n+1)+1)², 2)` -/
def P13973566767439854165.Spec : Prop :=
  ∀ n, (P13973566767439854165.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P5989149359110340678

`C((1-A008864(n+1))², 2)`
-/

namespace A138418.P5989149359110340678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - A008864 (n + 1)) ^ 2).toNat 2

end

end A138418.P5989149359110340678

namespace A138418

/-- `C((1-A008864(n+1))², 2)` -/
def P5989149359110340678.Spec : Prop :=
  ∀ n, (P5989149359110340678.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P7188451341011542750

`C((2-A052147(n+1))², 2)`
-/

namespace A138418.P7188451341011542750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 - A052147 (n + 1)) ^ 2).toNat 2

end

end A138418.P7188451341011542750

namespace A138418

/-- `C((2-A052147(n+1))², 2)` -/
def P7188451341011542750.Spec : Prop :=
  ∀ n, (P7188451341011542750.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P7826483581107154536

`C((A014692(n+1)+n)², 2)`
-/

namespace A138418.P7826483581107154536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A014692 (n + 1) + (n : ℤ)) ^ 2).toNat 2

end

end A138418.P7826483581107154536

namespace A138418

/-- `C((A014692(n+1)+n)², 2)` -/
def P7826483581107154536.Spec : Prop :=
  ∀ n, (P7826483581107154536.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P4820562906996274801

`lcm(2, C(A000040(2*n-(n-1))², 2))`
-/

namespace A138418.P4820562906996274801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2).toNat 2)

end

end A138418.P4820562906996274801

namespace A138418

/-- `lcm(2, C(A000040(2*n-(n-1))², 2))` -/
def P4820562906996274801.Spec : Prop :=
  ∀ n, (P4820562906996274801.a n : ℤ) = A138418 (n + 1)

end A138418

/-! ## A138418.P17863303942742719240

`A138421(n+1)+A138419(n+1)`
-/

namespace A138418.P17863303942742719240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138421 (n + 1) + A138419 (n + 1)

end

end A138418.P17863303942742719240

namespace A138418

/-- `A138421(n+1)+A138419(n+1)` -/
def P17863303942742719240.Spec : Prop :=
  ∀ n, P17863303942742719240.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P4794177457138047973

`A138423(n+1)+A138416(n+1)`
-/

namespace A138418.P4794177457138047973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138423 (n + 1) + A138416 (n + 1)

end

end A138418.P4794177457138047973

namespace A138418

/-- `A138423(n+1)+A138416(n+1)` -/
def P4794177457138047973.Spec : Prop :=
  ∀ n, P4794177457138047973.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P17633435401960505021

`A230325(n+1)+A127918(n+1)`
-/

namespace A138418.P17633435401960505021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230325 (n + 1) + A127918 (n + 1)

end

end A138418.P17633435401960505021

namespace A138418

/-- `A230325(n+1)+A127918(n+1)` -/
def P17633435401960505021.Spec : Prop :=
  ∀ n, P17633435401960505021.a n = A138418 (n + 1)

end A138418

/-! ## A138418.P4437905986218899601

`A138417(n+1)-A008837(n+1)`
-/

namespace A138418.P4437905986218899601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138417 (n + 1) - A008837 (n + 1)

end

end A138418.P4437905986218899601

namespace A138418

/-- `A138417(n+1)-A008837(n+1)` -/
def P4437905986218899601.Spec : Prop :=
  ∀ n, P4437905986218899601.a n = A138418 (n + 1)

end A138418

/-!
# A138419: a(n) = (prime(n)^4 - prime(n)^2)/3.

The programs for A138419, the canonical program `A138419.P4878153572182925303` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138419 has offset 1).

The definition of A138419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138419.P4878153572182925303

`A138402(n+1)/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138419

/-- `A138402(n+1)/3` -/
def P4878153572182925303.Spec : Prop :=
  ∀ n, P4878153572182925303.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P14574045929170283977

`2*A138421(n+1)`
-/

namespace A138419.P14574045929170283977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138421 (n + 1)

end

end A138419.P14574045929170283977

namespace A138419

/-- `2*A138421(n+1)` -/
def P14574045929170283977.Spec : Prop :=
  ∀ n, P14574045929170283977.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P7840442675542324707

`4*A138422(n+1)`
-/

namespace A138419.P7840442675542324707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138422 (n + 1)

end

end A138419.P7840442675542324707

namespace A138419

/-- `4*A138422(n+1)` -/
def P7840442675542324707.Spec : Prop :=
  ∀ n, P7840442675542324707.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P7966721128380975979

`2/3*A138418(n+1)`
-/

namespace A138419.P7966721128380975979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138418 (n + 1) : ℚ)

end

end A138419.P7966721128380975979

namespace A138419

/-- `2/3*A138418(n+1)` -/
def P7966721128380975979.Spec : Prop :=
  ∀ n, P7966721128380975979.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P2880767799409698905

`4/3*A138420(n+1)`
-/

namespace A138419.P2880767799409698905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138420 (n + 1) : ℚ)

end

end A138419.P2880767799409698905

namespace A138419

/-- `4/3*A138420(n+1)` -/
def P2880767799409698905.Spec : Prop :=
  ∀ n, P2880767799409698905.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P15413954943486641283

`2/3*C(A000040(n+1)², 2)`
-/

namespace A138419.P15413954943486641283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (Nat.choose (A000040 (n + 1) ^ 2).toNat 2 : ℚ)

end

end A138419.P15413954943486641283

namespace A138419

/-- `2/3*C(A000040(n+1)², 2)` -/
def P15413954943486641283.Spec : Prop :=
  ∀ n, P15413954943486641283.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P598645114407062459

`A138422(n+1)+A138420(n+1)`
-/

namespace A138419.P598645114407062459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138422 (n + 1) + A138420 (n + 1)

end

end A138419.P598645114407062459

namespace A138419

/-- `A138422(n+1)+A138420(n+1)` -/
def P598645114407062459.Spec : Prop :=
  ∀ n, P598645114407062459.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P16987914980456323416

`A138418(n+1)-A138421(n+1)`
-/

namespace A138419.P16987914980456323416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A138421 (n + 1)

end

end A138419.P16987914980456323416

namespace A138419

/-- `A138418(n+1)-A138421(n+1)` -/
def P16987914980456323416.Spec : Prop :=
  ∀ n, P16987914980456323416.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P15866922719405388718

`A138442(n+1)-A138454(n+1)`
-/

namespace A138419.P15866922719405388718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138454 (n + 1)

end

end A138419.P15866922719405388718

namespace A138419

/-- `A138442(n+1)-A138454(n+1)` -/
def P15866922719405388718.Spec : Prop :=
  ∀ n, P15866922719405388718.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P1774023202729166163

`A000040(n+1)*A127919(n+1)`
-/

namespace A138419.P1774023202729166163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A127919 (n + 1)

end

end A138419.P1774023202729166163

namespace A138419

/-- `A000040(n+1)*A127919(n+1)` -/
def P1774023202729166163.Spec : Prop :=
  ∀ n, P1774023202729166163.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P9878243453736098817

`A100484(n+1)*A127920(n+1)`
-/

namespace A138419.P9878243453736098817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A127920 (n + 1)

end

end A138419.P9878243453736098817

namespace A138419

/-- `A100484(n+1)*A127920(n+1)` -/
def P9878243453736098817.Spec : Prop :=
  ∀ n, P9878243453736098817.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P11641916199704373766

`A138433(n+1)/A000040(n+1)`
-/

namespace A138419.P11641916199704373766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138419.P11641916199704373766

namespace A138419

/-- `A138433(n+1)/A000040(n+1)` -/
def P11641916199704373766.Spec : Prop :=
  ∀ n, P11641916199704373766.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P15898397797245088952

`A138454(n+1)/A001248(n+1)`
-/

namespace A138419.P15898397797245088952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138419.P15898397797245088952

namespace A138419

/-- `A138454(n+1)/A001248(n+1)` -/
def P15898397797245088952.Spec : Prop :=
  ∀ n, P15898397797245088952.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P13792368508782728617

`A138406(n+1)/A001748(n+1)`
-/

namespace A138419.P13792368508782728617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138419.P13792368508782728617

namespace A138419

/-- `A138406(n+1)/A001748(n+1)` -/
def P13792368508782728617.Spec : Prop :=
  ∀ n, P13792368508782728617.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P3281002719645180780

`A138442(n+1)/A066872(n+1)`
-/

namespace A138419.P3281002719645180780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A138419.P3281002719645180780

namespace A138419

/-- `A138442(n+1)/A066872(n+1)` -/
def P3281002719645180780.Spec : Prop :=
  ∀ n, P3281002719645180780.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P8228168381127912521

`A138411(n+1)/A079705(n+1)`
-/

namespace A138419.P8228168381127912521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A079705 (n + 1) : ℚ)

end

end A138419.P8228168381127912521

namespace A138419

/-- `A138411(n+1)/A079705(n+1)` -/
def P8228168381127912521.Spec : Prop :=
  ∀ n, P8228168381127912521.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P12424432841587586083

`A138442(n+1)%A138433(n+1)`
-/

namespace A138419.P12424432841587586083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138442 (n + 1)) (A138433 (n + 1))

end

end A138419.P12424432841587586083

namespace A138419

/-- `A138442(n+1)%A138433(n+1)` -/
def P12424432841587586083.Spec : Prop :=
  ∀ n, P12424432841587586083.a n = A138419 (n + 1)

end A138419

/-! ## A138419.P15475345427100793782

`gcd(A138402(n+1), A138442(n+1))`
-/

namespace A138419.P15475345427100793782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138402 (n + 1)) (A138442 (n + 1))

end

end A138419.P15475345427100793782

namespace A138419

/-- `gcd(A138402(n+1), A138442(n+1))` -/
def P15475345427100793782.Spec : Prop :=
  ∀ n, (P15475345427100793782.a n : ℤ) = A138419 (n + 1)

end A138419

/-! ## A138419.P4062151631634815047

`A138454(n+1)/A000040(n+1)²`
-/

namespace A138419.P4062151631634815047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A138419.P4062151631634815047

namespace A138419

/-- `A138454(n+1)/A000040(n+1)²` -/
def P4062151631634815047.Spec : Prop :=
  ∀ n, P4062151631634815047.a n = (A138419 (n + 1) : ℚ)

end A138419

/-! ## A138419.P11345825976328314928

`A138421(n+1)²/A138422(n+1)`
-/

namespace A138419.P11345825976328314928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 1) ^ 2 : ℚ) / (A138422 (n + 1) : ℚ)

end

end A138419.P11345825976328314928

namespace A138419

/-- `A138421(n+1)²/A138422(n+1)` -/
def P11345825976328314928.Spec : Prop :=
  ∀ n, P11345825976328314928.a n = (A138419 (n + 1) : ℚ)

end A138419

/-!
# A138420: a(n) = ((prime(n))^4-(prime(n))^2)/4.

The programs for A138420, the canonical program `A138420.P16878004512610673702` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138420 has offset 1).

The definition of A138420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138420.P16878004512610673702

`A138402(n+1)/4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138420

/-- `A138402(n+1)/4` -/
def P16878004512610673702.Spec : Prop :=
  ∀ n, P16878004512610673702.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P9167630253738661066

`A138418(n+1)/2`
-/

namespace A138420.P9167630253738661066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / 2

end

end A138420.P9167630253738661066

namespace A138420

/-- `A138418(n+1)/2` -/
def P9167630253738661066.Spec : Prop :=
  ∀ n, P9167630253738661066.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P9345247239719576572

`3*A138422(n+1)`
-/

namespace A138420.P9345247239719576572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138422 (n + 1)

end

end A138420.P9345247239719576572

namespace A138420

/-- `3*A138422(n+1)` -/
def P9345247239719576572.Spec : Prop :=
  ∀ n, P9345247239719576572.a n = A138420 (n + 1)

end A138420

/-! ## A138420.P6769356151886984350

`3/2*A138421(n+1)`
-/

namespace A138420.P6769356151886984350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138421 (n + 1) : ℚ)

end

end A138420.P6769356151886984350

namespace A138420

/-- `3/2*A138421(n+1)` -/
def P6769356151886984350.Spec : Prop :=
  ∀ n, P6769356151886984350.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P10051331905565677974

`3/4*A138419(n+1)`
-/

namespace A138420.P10051331905565677974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138419 (n + 1) : ℚ)

end

end A138420.P10051331905565677974

namespace A138420

/-- `3/4*A138419(n+1)` -/
def P10051331905565677974.Spec : Prop :=
  ∀ n, P10051331905565677974.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P10610138757799675775

`C(A001248(n+1), 2)/2`
-/

namespace A138420.P10610138757799675775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001248 (n + 1)).toNat 2 : ℚ) / 2

end

end A138420.P10610138757799675775

namespace A138420

/-- `C(A001248(n+1), 2)/2` -/
def P10610138757799675775.Spec : Prop :=
  ∀ n, P10610138757799675775.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P16914338242909964089

`C(A000040(n+1)², 2)/2`
-/

namespace A138420.P16914338242909964089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A138420.P16914338242909964089

namespace A138420

/-- `C(A000040(n+1)², 2)/2` -/
def P16914338242909964089.Spec : Prop :=
  ∀ n, P16914338242909964089.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P11506085619456533835

`C((A006093(n+1)+1)², 2)/2`
-/

namespace A138420.P11506085619456533835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((A006093 (n + 1) + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A138420.P11506085619456533835

namespace A138420

/-- `C((A006093(n+1)+1)², 2)/2` -/
def P11506085619456533835.Spec : Prop :=
  ∀ n, P11506085619456533835.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P3027316449038676681

`C((A040976(n+1)+2)², 2)/2`
-/

namespace A138420.P3027316449038676681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((A040976 (n + 1) + 2) ^ 2).toNat 2 : ℚ) / 2

end

end A138420.P3027316449038676681

namespace A138420

/-- `C((A040976(n+1)+2)², 2)/2` -/
def P3027316449038676681.Spec : Prop :=
  ∀ n, P3027316449038676681.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P7132637720782284713

`A138422(n+1)+A138421(n+1)`
-/

namespace A138420.P7132637720782284713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138422 (n + 1) + A138421 (n + 1)

end

end A138420.P7132637720782284713

namespace A138420

/-- `A138422(n+1)+A138421(n+1)` -/
def P7132637720782284713.Spec : Prop :=
  ∀ n, P7132637720782284713.a n = A138420 (n + 1)

end A138420

/-! ## A138420.P18235818098676960221

`A138419(n+1)-A138422(n+1)`
-/

namespace A138420.P18235818098676960221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138419 (n + 1) - A138422 (n + 1)

end

end A138420.P18235818098676960221

namespace A138420

/-- `A138419(n+1)-A138422(n+1)` -/
def P18235818098676960221.Spec : Prop :=
  ∀ n, P18235818098676960221.a n = A138420 (n + 1)

end A138420

/-! ## A138420.P16377883535306660811

`A138443(n+1)-A138455(n+1)`
-/

namespace A138420.P16377883535306660811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138455 (n + 1)

end

end A138420.P16377883535306660811

namespace A138420

/-- `A138443(n+1)-A138455(n+1)` -/
def P16377883535306660811.Spec : Prop :=
  ∀ n, P16377883535306660811.a n = A138420 (n + 1)

end A138420

/-! ## A138420.P16176094488600431798

`A008837(n+1)*A034953(n+1)`
-/

namespace A138420.P16176094488600431798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A034953 (n + 1)

end

end A138420.P16176094488600431798

namespace A138420

/-- `A008837(n+1)*A034953(n+1)` -/
def P16176094488600431798.Spec : Prop :=
  ∀ n, P16176094488600431798.a n = A138420 (n + 1)

end A138420

/-! ## A138420.P7564783143147005630

`A138434(n+1)/A000040(n+1)`
-/

namespace A138420.P7564783143147005630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138420.P7564783143147005630

namespace A138420

/-- `A138434(n+1)/A000040(n+1)` -/
def P7564783143147005630.Spec : Prop :=
  ∀ n, P7564783143147005630.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P7080779537615966413

`A138455(n+1)/A001248(n+1)`
-/

namespace A138420.P7080779537615966413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138420.P7080779537615966413

namespace A138420

/-- `A138455(n+1)/A001248(n+1)` -/
def P7080779537615966413.Spec : Prop :=
  ∀ n, P7080779537615966413.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P519243746179706007

`A138406(n+1)/A001749(n+1)`
-/

namespace A138420.P519243746179706007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138420.P519243746179706007

namespace A138420

/-- `A138406(n+1)/A001749(n+1)` -/
def P519243746179706007.Spec : Prop :=
  ∀ n, P519243746179706007.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P2215887875374071366

`A138443(n+1)/A066872(n+1)`
-/

namespace A138420.P2215887875374071366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A138420.P2215887875374071366

namespace A138420

/-- `A138443(n+1)/A066872(n+1)` -/
def P2215887875374071366.Spec : Prop :=
  ∀ n, P2215887875374071366.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P2567004642778308512

`A138411(n+1)/A069262(n+1)`
-/

namespace A138420.P2567004642778308512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A069262 (n + 1) : ℚ)

end

end A138420.P2567004642778308512

namespace A138420

/-- `A138411(n+1)/A069262(n+1)` -/
def P2567004642778308512.Spec : Prop :=
  ∀ n, P2567004642778308512.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P774668996274991081

`A138453(n+1)/A079704(n+1)`
-/

namespace A138420.P774668996274991081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138420.P774668996274991081

namespace A138420

/-- `A138453(n+1)/A079704(n+1)` -/
def P774668996274991081.Spec : Prop :=
  ∀ n, P774668996274991081.a n = (A138420 (n + 1) : ℚ)

end A138420

/-! ## A138420.P8958307880715707932

`A138432(n+1)/A100484(n+1)`
-/

namespace A138420.P8958307880715707932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138420.P8958307880715707932

namespace A138420

/-- `A138432(n+1)/A100484(n+1)` -/
def P8958307880715707932.Spec : Prop :=
  ∀ n, P8958307880715707932.a n = (A138420 (n + 1) : ℚ)

end A138420

/-!
# A138421: a(n) = (prime(n)^4 - prime(n)^2)/6.

The programs for A138421, the canonical program `A138421.P8558237801673403202` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138421 has offset 1).

The definition of A138421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138421.P8558237801673403202

`A138402(n+1)/6`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138421

/-- `A138402(n+1)/6` -/
def P8558237801673403202.Spec : Prop :=
  ∀ n, P8558237801673403202.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P3190220551161869879

`2*A138422(n+1)`
-/

namespace A138421.P3190220551161869879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138422 (n + 1)

end

end A138421.P3190220551161869879

namespace A138421

/-- `2*A138422(n+1)` -/
def P3190220551161869879.Spec : Prop :=
  ∀ n, P3190220551161869879.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P6448225658898605031

`A138419(n+1)/2`
-/

namespace A138421.P6448225658898605031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138419 (n + 1) : ℚ) / 2

end

end A138421.P6448225658898605031

namespace A138421

/-- `A138419(n+1)/2` -/
def P6448225658898605031.Spec : Prop :=
  ∀ n, P6448225658898605031.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P639629395333748817

`A138418(n+1)/3`
-/

namespace A138421.P639629395333748817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / 3

end

end A138421.P639629395333748817

namespace A138421

/-- `A138418(n+1)/3` -/
def P639629395333748817.Spec : Prop :=
  ∀ n, P639629395333748817.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P16109947242511386049

`2/3*A138420(n+1)`
-/

namespace A138421.P16109947242511386049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138420 (n + 1) : ℚ)

end

end A138421.P16109947242511386049

namespace A138421

/-- `2/3*A138420(n+1)` -/
def P16109947242511386049.Spec : Prop :=
  ∀ n, P16109947242511386049.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P4156207856490996736

`C(A000040(n+1)², 2)/3`
-/

namespace A138421.P4156207856490996736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) ^ 2).toNat 2 : ℚ) / 3

end

end A138421.P4156207856490996736

namespace A138421

/-- `C(A000040(n+1)², 2)/3` -/
def P4156207856490996736.Spec : Prop :=
  ∀ n, P4156207856490996736.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P17226165660925614023

`A138418(n+1)-A138419(n+1)`
-/

namespace A138421.P17226165660925614023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A138419 (n + 1)

end

end A138421.P17226165660925614023

namespace A138421

/-- `A138418(n+1)-A138419(n+1)` -/
def P17226165660925614023.Spec : Prop :=
  ∀ n, P17226165660925614023.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P11429770682248638918

`A138420(n+1)-A138422(n+1)`
-/

namespace A138421.P11429770682248638918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138420 (n + 1) - A138422 (n + 1)

end

end A138421.P11429770682248638918

namespace A138421

/-- `A138420(n+1)-A138422(n+1)` -/
def P11429770682248638918.Spec : Prop :=
  ∀ n, P11429770682248638918.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P14655798310146843811

`A138445(n+1)-A138456(n+1)`
-/

namespace A138421.P14655798310146843811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138456 (n + 1)

end

end A138421.P14655798310146843811

namespace A138421

/-- `A138445(n+1)-A138456(n+1)` -/
def P14655798310146843811.Spec : Prop :=
  ∀ n, P14655798310146843811.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P3536401756840274870

`A000040(n+1)*A127920(n+1)`
-/

namespace A138421.P3536401756840274870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A127920 (n + 1)

end

end A138421.P3536401756840274870

namespace A138421

/-- `A000040(n+1)*A127920(n+1)` -/
def P3536401756840274870.Spec : Prop :=
  ∀ n, P3536401756840274870.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P16653434832781445134

`A138435(n+1)/A000040(n+1)`
-/

namespace A138421.P16653434832781445134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138421.P16653434832781445134

namespace A138421

/-- `A138435(n+1)/A000040(n+1)` -/
def P16653434832781445134.Spec : Prop :=
  ∀ n, P16653434832781445134.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P320598817691689361

`A138456(n+1)/A001248(n+1)`
-/

namespace A138421.P320598817691689361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138421.P320598817691689361

namespace A138421

/-- `A138456(n+1)/A001248(n+1)` -/
def P320598817691689361.Spec : Prop :=
  ∀ n, P320598817691689361.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P6145817528628868159

`A138432(n+1)/A001748(n+1)`
-/

namespace A138421.P6145817528628868159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138421.P6145817528628868159

namespace A138421

/-- `A138432(n+1)/A001748(n+1)` -/
def P6145817528628868159.Spec : Prop :=
  ∀ n, P6145817528628868159.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P10926603092087245125

`A138445(n+1)/A066872(n+1)`
-/

namespace A138421.P10926603092087245125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A138421.P10926603092087245125

namespace A138421

/-- `A138445(n+1)/A066872(n+1)` -/
def P10926603092087245125.Spec : Prop :=
  ∀ n, P10926603092087245125.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P18249522756863822027

`A138453(n+1)/A079705(n+1)`
-/

namespace A138421.P18249522756863822027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A079705 (n + 1) : ℚ)

end

end A138421.P18249522756863822027

namespace A138421

/-- `A138453(n+1)/A079705(n+1)` -/
def P18249522756863822027.Spec : Prop :=
  ∀ n, P18249522756863822027.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P12541321337339559107

`A138454(n+1)/A079704(n+1)`
-/

namespace A138421.P12541321337339559107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138421.P12541321337339559107

namespace A138421

/-- `A138454(n+1)/A079704(n+1)` -/
def P12541321337339559107.Spec : Prop :=
  ∀ n, P12541321337339559107.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P11176539147468051061

`A138433(n+1)/A100484(n+1)`
-/

namespace A138421.P11176539147468051061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138421.P11176539147468051061

namespace A138421

/-- `A138433(n+1)/A100484(n+1)` -/
def P11176539147468051061.Spec : Prop :=
  ∀ n, P11176539147468051061.a n = (A138421 (n + 1) : ℚ)

end A138421

/-! ## A138421.P1964097363981302012

`A138445(n+1)%A138435(n+1)`
-/

namespace A138421.P1964097363981302012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138445 (n + 1)) (A138435 (n + 1))

end

end A138421.P1964097363981302012

namespace A138421

/-- `A138445(n+1)%A138435(n+1)` -/
def P1964097363981302012.Spec : Prop :=
  ∀ n, P1964097363981302012.a n = A138421 (n + 1)

end A138421

/-! ## A138421.P6353245766226584239

`gcd(A138418(n+1), A138442(n+1))`
-/

namespace A138421.P6353245766226584239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138418 (n + 1)) (A138442 (n + 1))

end

end A138421.P6353245766226584239

namespace A138421

/-- `gcd(A138418(n+1), A138442(n+1))` -/
def P6353245766226584239.Spec : Prop :=
  ∀ n, (P6353245766226584239.a n : ℤ) = A138421 (n + 1)

end A138421

/-! ## A138421.P2654846279856424279

`gcd(A138432(n+1), A138445(n+1))`
-/

namespace A138421.P2654846279856424279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138432 (n + 1)) (A138445 (n + 1))

end

end A138421.P2654846279856424279

namespace A138421

/-- `gcd(A138432(n+1), A138445(n+1))` -/
def P2654846279856424279.Spec : Prop :=
  ∀ n, (P2654846279856424279.a n : ℤ) = A138421 (n + 1)

end A138421

/-!
# A138422: a(n) = (prime(n)^4 - prime(n)^2)/12.

The programs for A138422, the canonical program `A138422.P7361952017647566611` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138422 has offset 1).

The definition of A138422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138422.P7361952017647566611

`A138402(n+1)/12`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138422

/-- `A138402(n+1)/12` -/
def P7361952017647566611.Spec : Prop :=
  ∀ n, P7361952017647566611.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P2743693876554979984

`A138421(n+1)/2`
-/

namespace A138422.P2743693876554979984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 1) : ℚ) / 2

end

end A138422.P2743693876554979984

namespace A138422

/-- `A138421(n+1)/2` -/
def P2743693876554979984.Spec : Prop :=
  ∀ n, P2743693876554979984.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P4287828633392637649

`A138420(n+1)/3`
-/

namespace A138422.P4287828633392637649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138420 (n + 1) : ℚ) / 3

end

end A138422.P4287828633392637649

namespace A138422

/-- `A138420(n+1)/3` -/
def P4287828633392637649.Spec : Prop :=
  ∀ n, P4287828633392637649.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P16233455551097764609

`A138419(n+1)/4`
-/

namespace A138422.P16233455551097764609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138419 (n + 1) : ℚ) / 4

end

end A138422.P16233455551097764609

namespace A138422

/-- `A138419(n+1)/4` -/
def P16233455551097764609.Spec : Prop :=
  ∀ n, P16233455551097764609.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P18070627657658059826

`A138418(n+1)/6`
-/

namespace A138422.P18070627657658059826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / 6

end

end A138422.P18070627657658059826

namespace A138422

/-- `A138418(n+1)/6` -/
def P18070627657658059826.Spec : Prop :=
  ∀ n, P18070627657658059826.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P9959992995340760013

`C(A000040(n+1)², 2)/6`
-/

namespace A138422.P9959992995340760013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) ^ 2).toNat 2 : ℚ) / 6

end

end A138422.P9959992995340760013

namespace A138422

/-- `C(A000040(n+1)², 2)/6` -/
def P9959992995340760013.Spec : Prop :=
  ∀ n, P9959992995340760013.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P4429235501455379498

`A138419(n+1)-A138420(n+1)`
-/

namespace A138422.P4429235501455379498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138419 (n + 1) - A138420 (n + 1)

end

end A138422.P4429235501455379498

namespace A138422

/-- `A138419(n+1)-A138420(n+1)` -/
def P4429235501455379498.Spec : Prop :=
  ∀ n, P4429235501455379498.a n = A138422 (n + 1)

end A138422

/-! ## A138422.P4146623060313238565

`A138420(n+1)-A138421(n+1)`
-/

namespace A138422.P4146623060313238565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138420 (n + 1) - A138421 (n + 1)

end

end A138422.P4146623060313238565

namespace A138422

/-- `A138420(n+1)-A138421(n+1)` -/
def P4146623060313238565.Spec : Prop :=
  ∀ n, P4146623060313238565.a n = A138422 (n + 1)

end A138422

/-! ## A138422.P3679109875678472298

`A138447(n+1)-A138459(n+1)`
-/

namespace A138422.P3679109875678472298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A138459 (n + 1)

end

end A138422.P3679109875678472298

namespace A138422

/-- `A138447(n+1)-A138459(n+1)` -/
def P3679109875678472298.Spec : Prop :=
  ∀ n, P3679109875678472298.a n = A138422 (n + 1)

end A138422

/-! ## A138422.P12546564811147675426

`A138437(n+1)/A000040(n+1)`
-/

namespace A138422.P12546564811147675426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138422.P12546564811147675426

namespace A138422

/-- `A138437(n+1)/A000040(n+1)` -/
def P12546564811147675426.Spec : Prop :=
  ∀ n, P12546564811147675426.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P1235875768818253054

`A138459(n+1)/A001248(n+1)`
-/

namespace A138422.P1235875768818253054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138422.P1235875768818253054

namespace A138422

/-- `A138459(n+1)/A001248(n+1)` -/
def P1235875768818253054.Spec : Prop :=
  ∀ n, P1235875768818253054.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P4668861235609563752

`A138433(n+1)/A001749(n+1)`
-/

namespace A138422.P4668861235609563752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138422.P4668861235609563752

namespace A138422

/-- `A138433(n+1)/A001749(n+1)` -/
def P4668861235609563752.Spec : Prop :=
  ∀ n, P4668861235609563752.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P15231962255455768568

`A138434(n+1)/A001748(n+1)`
-/

namespace A138422.P15231962255455768568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138422.P15231962255455768568

namespace A138422

/-- `A138434(n+1)/A001748(n+1)` -/
def P15231962255455768568.Spec : Prop :=
  ∀ n, P15231962255455768568.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P4368724652237358940

`A138447(n+1)/A066872(n+1)`
-/

namespace A138422.P4368724652237358940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138447 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A138422.P4368724652237358940

namespace A138422

/-- `A138447(n+1)/A066872(n+1)` -/
def P4368724652237358940.Spec : Prop :=
  ∀ n, P4368724652237358940.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P8353977395387422841

`A138454(n+1)/A069262(n+1)`
-/

namespace A138422.P8353977395387422841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A069262 (n + 1) : ℚ)

end

end A138422.P8353977395387422841

namespace A138422

/-- `A138454(n+1)/A069262(n+1)` -/
def P8353977395387422841.Spec : Prop :=
  ∀ n, P8353977395387422841.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P16992945819922393957

`A138455(n+1)/A079705(n+1)`
-/

namespace A138422.P16992945819922393957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A079705 (n + 1) : ℚ)

end

end A138422.P16992945819922393957

namespace A138422

/-- `A138455(n+1)/A079705(n+1)` -/
def P16992945819922393957.Spec : Prop :=
  ∀ n, P16992945819922393957.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P3508251352754756879

`A138456(n+1)/A079704(n+1)`
-/

namespace A138422.P3508251352754756879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138422.P3508251352754756879

namespace A138422

/-- `A138456(n+1)/A079704(n+1)` -/
def P3508251352754756879.Spec : Prop :=
  ∀ n, P3508251352754756879.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P10495881476649451407

`A138435(n+1)/A100484(n+1)`
-/

namespace A138422.P10495881476649451407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138422.P10495881476649451407

namespace A138422

/-- `A138435(n+1)/A100484(n+1)` -/
def P10495881476649451407.Spec : Prop :=
  ∀ n, P10495881476649451407.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P4776138438258805729

`A138432(n+1)/A138636(n+1)`
-/

namespace A138422.P4776138438258805729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138422.P4776138438258805729

namespace A138422

/-- `A138432(n+1)/A138636(n+1)` -/
def P4776138438258805729.Spec : Prop :=
  ∀ n, P4776138438258805729.a n = (A138422 (n + 1) : ℚ)

end A138422

/-! ## A138422.P11970232289474746723

`A138447(n+1)%A138437(n+1)`
-/

namespace A138422.P11970232289474746723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138447 (n + 1)) (A138437 (n + 1))

end

end A138422.P11970232289474746723

namespace A138422

/-- `A138447(n+1)%A138437(n+1)` -/
def P11970232289474746723.Spec : Prop :=
  ∀ n, P11970232289474746723.a n = A138422 (n + 1)

end A138422

/-!
# A138423: a(n) = (prime(n)^4 - prime(n)^3)/2.

The programs for A138423, the canonical program `A138423.P15059397808005163054` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138423 has offset 1).

The definition of A138423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138403, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138423.P15059397808005163054

`A138403(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138423

/-- `A138403(n+1)/2` -/
def P15059397808005163054.Spec : Prop :=
  ∀ n, P15059397808005163054.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P8837981704612586200

`A230325(n+1)+A008837(n+1)`
-/

namespace A138423.P8837981704612586200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230325 (n + 1) + A008837 (n + 1)

end

end A138423.P8837981704612586200

namespace A138423

/-- `A230325(n+1)+A008837(n+1)` -/
def P8837981704612586200.Spec : Prop :=
  ∀ n, P8837981704612586200.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P13992861035544809444

`A138417(n+1)-A127918(n+1)`
-/

namespace A138423.P13992861035544809444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138417 (n + 1) - A127918 (n + 1)

end

end A138423.P13992861035544809444

namespace A138423

/-- `A138417(n+1)-A127918(n+1)` -/
def P13992861035544809444.Spec : Prop :=
  ∀ n, P13992861035544809444.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P8351479744269875653

`A138418(n+1)-A138416(n+1)`
-/

namespace A138423.P8351479744269875653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A138416 (n + 1)

end

end A138423.P8351479744269875653

namespace A138423

/-- `A138418(n+1)-A138416(n+1)` -/
def P8351479744269875653.Spec : Prop :=
  ∀ n, P8351479744269875653.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P7792905194680688121

`A138432(n+1)-A138439(n+1)`
-/

namespace A138423.P7792905194680688121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) - A138439 (n + 1)

end

end A138423.P7792905194680688121

namespace A138423

/-- `A138432(n+1)-A138439(n+1)` -/
def P7792905194680688121.Spec : Prop :=
  ∀ n, P7792905194680688121.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P16977598899787712669

`A138452(n+1)-A138453(n+1)`
-/

namespace A138423.P16977598899787712669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) - A138453 (n + 1)

end

end A138423.P16977598899787712669

namespace A138423

/-- `A138452(n+1)-A138453(n+1)` -/
def P16977598899787712669.Spec : Prop :=
  ∀ n, P16977598899787712669.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P6482002824873255869

`A001248(n+1)*A008837(n+1)`
-/

namespace A138423.P6482002824873255869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A008837 (n + 1)

end

end A138423.P6482002824873255869

namespace A138423

/-- `A001248(n+1)*A008837(n+1)` -/
def P6482002824873255869.Spec : Prop :=
  ∀ n, P6482002824873255869.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P12954956873501411720

`A000040(n+1)*A138416(n+1)`
-/

namespace A138423.P12954956873501411720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138416 (n + 1)

end

end A138423.P12954956873501411720

namespace A138423

/-- `A000040(n+1)*A138416(n+1)` -/
def P12954956873501411720.Spec : Prop :=
  ∀ n, P12954956873501411720.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P3040838322842597070

`A138439(n+1)/A000040(n+1)`
-/

namespace A138423.P3040838322842597070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138439 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138423.P3040838322842597070

namespace A138423

/-- `A138439(n+1)/A000040(n+1)` -/
def P3040838322842597070.Spec : Prop :=
  ∀ n, P3040838322842597070.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P12912970306552831019

`A138460(n+1)/A001248(n+1)`
-/

namespace A138423.P12912970306552831019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138460 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A138423.P12912970306552831019

namespace A138423

/-- `A138460(n+1)/A001248(n+1)` -/
def P12912970306552831019.Spec : Prop :=
  ∀ n, P12912970306552831019.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P4937482217604432175

`A138432(n+1)/A008864(n+1)`
-/

namespace A138423.P4937482217604432175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)

end

end A138423.P4937482217604432175

namespace A138423

/-- `A138432(n+1)/A008864(n+1)` -/
def P4937482217604432175.Spec : Prop :=
  ∀ n, P4937482217604432175.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P10021781085558064788

`A138455(n+1)/A034953(n+1)`
-/

namespace A138423.P10021781085558064788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A034953 (n + 1) : ℚ)

end

end A138423.P10021781085558064788

namespace A138423

/-- `A138455(n+1)/A034953(n+1)` -/
def P10021781085558064788.Spec : Prop :=
  ∀ n, P10021781085558064788.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P12360888928981299925

`A138453(n+1)/A036690(n+1)`
-/

namespace A138423.P12360888928981299925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A036690 (n + 1) : ℚ)

end

end A138423.P12360888928981299925

namespace A138423

/-- `A138453(n+1)/A036690(n+1)` -/
def P12360888928981299925.Spec : Prop :=
  ∀ n, P12360888928981299925.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P13363159439793664495

`A138452(n+1)/A060800(n+1)`
-/

namespace A138423.P13363159439793664495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℚ) / (A060800 (n + 1) : ℚ)

end

end A138423.P13363159439793664495

namespace A138423

/-- `A138452(n+1)/A060800(n+1)` -/
def P13363159439793664495.Spec : Prop :=
  ∀ n, P13363159439793664495.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P6309825973168727867

`A138412(n+1)/A079704(n+1)`
-/

namespace A138423.P6309825973168727867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A138423.P6309825973168727867

namespace A138423

/-- `A138412(n+1)/A079704(n+1)` -/
def P6309825973168727867.Spec : Prop :=
  ∀ n, P6309825973168727867.a n = (A138423 (n + 1) : ℚ)

end A138423

/-! ## A138423.P4669451294538586153

`A138452(n+1)%A138403(n+1)`
-/

namespace A138423.P4669451294538586153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138452 (n + 1)) (A138403 (n + 1))

end

end A138423.P4669451294538586153

namespace A138423

/-- `A138452(n+1)%A138403(n+1)` -/
def P4669451294538586153.Spec : Prop :=
  ∀ n, P4669451294538586153.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P8093734639600879578

`A138460(n+1)%A138402(n+1)`
-/

namespace A138423.P8093734639600879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138460 (n + 1)) (A138402 (n + 1))

end

end A138423.P8093734639600879578

namespace A138423

/-- `A138460(n+1)%A138402(n+1)` -/
def P8093734639600879578.Spec : Prop :=
  ∀ n, P8093734639600879578.a n = A138423 (n + 1)

end A138423

/-! ## A138423.P14767993485761240227

`gcd(A138406(n+1), A138452(n+1))`
-/

namespace A138423.P14767993485761240227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138406 (n + 1)) (A138452 (n + 1))

end

end A138423.P14767993485761240227

namespace A138423

/-- `gcd(A138406(n+1), A138452(n+1))` -/
def P14767993485761240227.Spec : Prop :=
  ∀ n, (P14767993485761240227.a n : ℤ) = A138423 (n + 1)

end A138423

/-! ## A138423.P14781468606531775021

`gcd(A138432(n+1), A138460(n+1))`
-/

namespace A138423.P14781468606531775021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138432 (n + 1)) (A138460 (n + 1))

end

end A138423.P14781468606531775021

namespace A138423

/-- `gcd(A138432(n+1), A138460(n+1))` -/
def P14781468606531775021.Spec : Prop :=
  ∀ n, (P14781468606531775021.a n : ℤ) = A138423 (n + 1)

end A138423

/-! ## A138423.P11822286530078652251

`A138420(n+1)+A008837(n+1)²`
-/

namespace A138423.P11822286530078652251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138420 (n + 1) + A008837 (n + 1) ^ 2

end

end A138423.P11822286530078652251

namespace A138423

/-- `A138420(n+1)+A008837(n+1)²` -/
def P11822286530078652251.Spec : Prop :=
  ∀ n, P11822286530078652251.a n = A138423 (n + 1)

end A138423

/-!
# A138424: a(n) = (prime(n)^5 - prime(n))/2.

The programs for A138424, the canonical program `A138424.P9846473390818304069` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138424 has offset 1).

The definition of A138424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138424.P9846473390818304069

`A138404(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138424

/-- `A138404(n+1)/2` -/
def P9846473390818304069.Spec : Prop :=
  ∀ n, P9846473390818304069.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P3477893709287376764

`3*A138427(n+1)`
-/

namespace A138424.P3477893709287376764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138427 (n + 1)

end

end A138424.P3477893709287376764

namespace A138424

/-- `3*A138427(n+1)` -/
def P3477893709287376764.Spec : Prop :=
  ∀ n, P3477893709287376764.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P7326089920489142007

`5*A138428(n+1)`
-/

namespace A138424.P7326089920489142007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138428 (n + 1)

end

end A138424.P7326089920489142007

namespace A138424

/-- `5*A138428(n+1)` -/
def P7326089920489142007.Spec : Prop :=
  ∀ n, P7326089920489142007.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P17687989749063192648

`15*A138430(n+1)`
-/

namespace A138424.P17687989749063192648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A138430 (n + 1)

end

end A138424.P17687989749063192648

namespace A138424

/-- `15*A138430(n+1)` -/
def P17687989749063192648.Spec : Prop :=
  ∀ n, P17687989749063192648.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P7899253623314566345

`3/2*A138425(n+1)`
-/

namespace A138424.P7899253623314566345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138425 (n + 1) : ℚ)

end

end A138424.P7899253623314566345

namespace A138424

/-- `3/2*A138425(n+1)` -/
def P7899253623314566345.Spec : Prop :=
  ∀ n, P7899253623314566345.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P6759457205113047779

`5/2*A138426(n+1)`
-/

namespace A138424.P6759457205113047779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138426 (n + 1) : ℚ)

end

end A138424.P6759457205113047779

namespace A138424

/-- `5/2*A138426(n+1)` -/
def P6759457205113047779.Spec : Prop :=
  ∀ n, P6759457205113047779.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P10480773793315148201

`∑{d}[A000040(n+1), (#^5-#)/2]`
-/

namespace A138424.P10480773793315148201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ) : ℚ) / 2

end

end A138424.P10480773793315148201

namespace A138424

/-- `∑{d}[A000040(n+1), (#^5-#)/2]` -/
def P10480773793315148201.Spec : Prop :=
  ∀ n, P10480773793315148201.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P6975933134925680731

`A138431(n+1)+A008837(n+1)`
-/

namespace A138424.P6975933134925680731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138431 (n + 1) + A008837 (n + 1)

end

end A138424.P6975933134925680731

namespace A138424

/-- `A138431(n+1)+A008837(n+1)` -/
def P6975933134925680731.Spec : Prop :=
  ∀ n, P6975933134925680731.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P6025055266595500266

`A138432(n+1)+A127918(n+1)`
-/

namespace A138424.P6025055266595500266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) + A127918 (n + 1)

end

end A138424.P6025055266595500266

namespace A138424

/-- `A138432(n+1)+A127918(n+1)` -/
def P6025055266595500266.Spec : Prop :=
  ∀ n, P6025055266595500266.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P12039504635195777932

`A138427(n+1)+A138425(n+1)`
-/

namespace A138424.P12039504635195777932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) + A138425 (n + 1)

end

end A138424.P12039504635195777932

namespace A138424

/-- `A138427(n+1)+A138425(n+1)` -/
def P12039504635195777932.Spec : Prop :=
  ∀ n, P12039504635195777932.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P14341876102892343415

`A138439(n+1)+A138417(n+1)`
-/

namespace A138424.P14341876102892343415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138439 (n + 1) + A138417 (n + 1)

end

end A138424.P14341876102892343415

namespace A138424

/-- `A138439(n+1)+A138417(n+1)` -/
def P14341876102892343415.Spec : Prop :=
  ∀ n, P14341876102892343415.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P12484599532271213190

`A138440(n+1)-A138460(n+1)`
-/

namespace A138424.P12484599532271213190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138460 (n + 1)

end

end A138424.P12484599532271213190

namespace A138424

/-- `A138440(n+1)-A138460(n+1)` -/
def P12484599532271213190.Spec : Prop :=
  ∀ n, P12484599532271213190.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P16297952147845509405

`A008837(n+1)*A131991(n+1)`
-/

namespace A138424.P16297952147845509405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A131991 (n + 1)

end

end A138424.P16297952147845509405

namespace A138424

/-- `A008837(n+1)*A131991(n+1)` -/
def P16297952147845509405.Spec : Prop :=
  ∀ n, P16297952147845509405.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P12133798721241645453

`A066886(n+1)*A084920(n+1)`
-/

namespace A138424.P12133798721241645453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) * A084920 (n + 1)

end

end A138424.P12133798721241645453

namespace A138424

/-- `A066886(n+1)*A084920(n+1)` -/
def P12133798721241645453.Spec : Prop :=
  ∀ n, P12133798721241645453.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P13154298048011490425

`A066872(n+1)*A127918(n+1)`
-/

namespace A138424.P13154298048011490425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A127918 (n + 1)

end

end A138424.P13154298048011490425

namespace A138424

/-- `A066872(n+1)*A127918(n+1)` -/
def P13154298048011490425.Spec : Prop :=
  ∀ n, P13154298048011490425.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P4132986311956361227

`A138441(n+1)/A000040(n+1)`
-/

namespace A138424.P4132986311956361227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138424.P4132986311956361227

namespace A138424

/-- `A138441(n+1)/A000040(n+1)` -/
def P4132986311956361227.Spec : Prop :=
  ∀ n, P4132986311956361227.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P13490440756248729774

`A138409(n+1)/A100484(n+1)`
-/

namespace A138424.P13490440756248729774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138424.P13490440756248729774

namespace A138424

/-- `A138409(n+1)/A100484(n+1)` -/
def P13490440756248729774.Spec : Prop :=
  ∀ n, P13490440756248729774.a n = (A138424 (n + 1) : ℚ)

end A138424

/-! ## A138424.P6812938620482501183

`lcm(A127918(n+1), A138427(n+1))`
-/

namespace A138424.P6812938620482501183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A127918 (n + 1)) (A138427 (n + 1))

end

end A138424.P6812938620482501183

namespace A138424

/-- `lcm(A127918(n+1), A138427(n+1))` -/
def P6812938620482501183.Spec : Prop :=
  ∀ n, (P6812938620482501183.a n : ℤ) = A138424 (n + 1)

end A138424

/-! ## A138424.P16806975051452590740

`(A001248(n+1)+1)*A127918(n+1)`
-/

namespace A138424.P16806975051452590740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + 1) * A127918 (n + 1)

end

end A138424.P16806975051452590740

namespace A138424

/-- `(A001248(n+1)+1)*A127918(n+1)` -/
def P16806975051452590740.Spec : Prop :=
  ∀ n, P16806975051452590740.a n = A138424 (n + 1)

end A138424

/-! ## A138424.P3837593621026910632

`(A181149(n+1)+1)*A008837(n+1)`
-/

namespace A138424.P3837593621026910632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181149 (n + 1) + 1) * A008837 (n + 1)

end

end A138424.P3837593621026910632

namespace A138424

/-- `(A181149(n+1)+1)*A008837(n+1)` -/
def P3837593621026910632.Spec : Prop :=
  ∀ n, P3837593621026910632.a n = A138424 (n + 1)

end A138424

/-!
# A138425: a(n) = (prime(n)^5 - prime(n))/3.

The programs for A138425, the canonical program `A138425.P15250996574324139531` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138425 has offset 1).

The definition of A138425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138425.P15250996574324139531

`A138404(n+1)/3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138425

/-- `A138404(n+1)/3` -/
def P15250996574324139531.Spec : Prop :=
  ∀ n, P15250996574324139531.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P3885614363400672081

`2*A138427(n+1)`
-/

namespace A138425.P3885614363400672081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138427 (n + 1)

end

end A138425.P3885614363400672081

namespace A138425

/-- `2*A138427(n+1)` -/
def P3885614363400672081.Spec : Prop :=
  ∀ n, P3885614363400672081.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P2773826199379808120

`5*A138429(n+1)`
-/

namespace A138425.P2773826199379808120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138429 (n + 1)

end

end A138425.P2773826199379808120

namespace A138425

/-- `5*A138429(n+1)` -/
def P2773826199379808120.Spec : Prop :=
  ∀ n, P2773826199379808120.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P14643974041907220494

`10*A138430(n+1)`
-/

namespace A138425.P14643974041907220494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A138430 (n + 1)

end

end A138425.P14643974041907220494

namespace A138425

/-- `10*A138430(n+1)` -/
def P14643974041907220494.Spec : Prop :=
  ∀ n, P14643974041907220494.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P9645162236006143953

`2/3*A138424(n+1)`
-/

namespace A138425.P9645162236006143953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138424 (n + 1) : ℚ)

end

end A138425.P9645162236006143953

namespace A138425

/-- `2/3*A138424(n+1)` -/
def P9645162236006143953.Spec : Prop :=
  ∀ n, P9645162236006143953.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P16150625992287629732

`5/3*A138426(n+1)`
-/

namespace A138425.P16150625992287629732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A138426 (n + 1) : ℚ)

end

end A138425.P16150625992287629732

namespace A138425

/-- `5/3*A138426(n+1)` -/
def P16150625992287629732.Spec : Prop :=
  ∀ n, P16150625992287629732.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P15898557843536584825

`∑{d}[A000040(n+1), #^5-#]/3`
-/

namespace A138425.P15898557843536584825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ)) : ℤ) : ℚ) / 3

end

end A138425.P15898557843536584825

namespace A138425

/-- `∑{d}[A000040(n+1), #^5-#]/3` -/
def P15898557843536584825.Spec : Prop :=
  ∀ n, P15898557843536584825.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P9219770057318886049

`A138433(n+1)+A127919(n+1)`
-/

namespace A138425.P9219770057318886049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138433 (n + 1) + A127919 (n + 1)

end

end A138425.P9219770057318886049

namespace A138425

/-- `A138433(n+1)+A127919(n+1)` -/
def P9219770057318886049.Spec : Prop :=
  ∀ n, P9219770057318886049.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P4777380622704538757

`A138424(n+1)-A138427(n+1)`
-/

namespace A138425.P4777380622704538757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A138427 (n + 1)

end

end A138425.P4777380622704538757

namespace A138425

/-- `A138424(n+1)-A138427(n+1)` -/
def P4777380622704538757.Spec : Prop :=
  ∀ n, P4777380622704538757.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P5268552029652953837

`A066872(n+1)*A127919(n+1)`
-/

namespace A138425.P5268552029652953837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A127919 (n + 1)

end

end A138425.P5268552029652953837

namespace A138425

/-- `A066872(n+1)*A127919(n+1)` -/
def P5268552029652953837.Spec : Prop :=
  ∀ n, P5268552029652953837.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P9159996229729107187

`A138442(n+1)/A000040(n+1)`
-/

namespace A138425.P9159996229729107187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138425.P9159996229729107187

namespace A138425

/-- `A138442(n+1)/A000040(n+1)` -/
def P9159996229729107187.Spec : Prop :=
  ∀ n, P9159996229729107187.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P16427363768648753283

`A138409(n+1)/A001748(n+1)`
-/

namespace A138425.P16427363768648753283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138425.P16427363768648753283

namespace A138425

/-- `A138409(n+1)/A001748(n+1)` -/
def P16427363768648753283.Spec : Prop :=
  ∀ n, P16427363768648753283.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P11251020775678847073

`lcm(A138427(n+1), A138429(n+1))`
-/

namespace A138425.P11251020775678847073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138427 (n + 1)) (A138429 (n + 1))

end

end A138425.P11251020775678847073

namespace A138425

/-- `lcm(A138427(n+1), A138429(n+1))` -/
def P11251020775678847073.Spec : Prop :=
  ∀ n, (P11251020775678847073.a n : ℤ) = A138425 (n + 1)

end A138425

/-! ## A138425.P7896867454964909871

`A138442(n+1)/sqrt(A001248(n+1))`
-/

namespace A138425.P7896867454964909871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A138425.P7896867454964909871

namespace A138425

/-- `A138442(n+1)/sqrt(A001248(n+1))` -/
def P7896867454964909871.Spec : Prop :=
  ∀ n, P7896867454964909871.a n = (A138425 (n + 1) : ℝ)

end A138425

/-! ## A138425.P5326087784240437379

`(A001248(n+1)+1)*A127919(n+1)`
-/

namespace A138425.P5326087784240437379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + 1) * A127919 (n + 1)

end

end A138425.P5326087784240437379

namespace A138425

/-- `(A001248(n+1)+1)*A127919(n+1)` -/
def P5326087784240437379.Spec : Prop :=
  ∀ n, P5326087784240437379.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P10819672654238417971

`(A079704(n+1)+2)*A127920(n+1)`
-/

namespace A138425.P10819672654238417971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) + 2) * A127920 (n + 1)

end

end A138425.P10819672654238417971

namespace A138425

/-- `(A079704(n+1)+2)*A127920(n+1)` -/
def P10819672654238417971.Spec : Prop :=
  ∀ n, P10819672654238417971.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P9248874021358197939

`2*(A138435(n+1)+A127920(n+1))`
-/

namespace A138425.P9248874021358197939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138435 (n + 1) + A127920 (n + 1))

end

end A138425.P9248874021358197939

namespace A138425

/-- `2*(A138435(n+1)+A127920(n+1))` -/
def P9248874021358197939.Spec : Prop :=
  ∀ n, P9248874021358197939.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P6253998656542927876

`A127919(n+1)+2*A138435(n+1)`
-/

namespace A138425.P6253998656542927876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127919 (n + 1) + 2 * A138435 (n + 1)

end

end A138425.P6253998656542927876

namespace A138425

/-- `A127919(n+1)+2*A138435(n+1)` -/
def P6253998656542927876.Spec : Prop :=
  ∀ n, P6253998656542927876.a n = A138425 (n + 1)

end A138425

/-! ## A138425.P3090600143053461812

`A138442(n+1)/(A040976(n+1)+2)`
-/

namespace A138425.P3090600143053461812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A040976 (n + 1) + 2 : ℚ)

end

end A138425.P3090600143053461812

namespace A138425

/-- `A138442(n+1)/(A040976(n+1)+2)` -/
def P3090600143053461812.Spec : Prop :=
  ∀ n, P3090600143053461812.a n = (A138425 (n + 1) : ℚ)

end A138425

/-! ## A138425.P16690227544385503828

`2*A066872(n+1)*A127920(n+1)`
-/

namespace A138425.P16690227544385503828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066872 (n + 1) * A127920 (n + 1))

end

end A138425.P16690227544385503828

namespace A138425

/-- `2*A066872(n+1)*A127920(n+1)` -/
def P16690227544385503828.Spec : Prop :=
  ∀ n, P16690227544385503828.a n = A138425 (n + 1)

end A138425

/-!
# A138426: a(n) = ((prime(n))^5-prime(n))/5.

The programs for A138426, the canonical program `A138426.P573586868514180922` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138426 has offset 1).

The definition of A138426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138426.P573586868514180922

`A138404(n+1)/5`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138426

/-- `A138404(n+1)/5` -/
def P573586868514180922.Spec : Prop :=
  ∀ n, P573586868514180922.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P8247882339487073026

`2*A138428(n+1)`
-/

namespace A138426.P8247882339487073026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138428 (n + 1)

end

end A138426.P8247882339487073026

namespace A138426

/-- `2*A138428(n+1)` -/
def P8247882339487073026.Spec : Prop :=
  ∀ n, P8247882339487073026.a n = A138426 (n + 1)

end A138426

/-! ## A138426.P8463241540074271662

`3*A138429(n+1)`
-/

namespace A138426.P8463241540074271662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138429 (n + 1)

end

end A138426.P8463241540074271662

namespace A138426

/-- `3*A138429(n+1)` -/
def P8463241540074271662.Spec : Prop :=
  ∀ n, P8463241540074271662.a n = A138426 (n + 1)

end A138426

/-! ## A138426.P7324794287397154973

`6*A138430(n+1)`
-/

namespace A138426.P7324794287397154973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138430 (n + 1)

end

end A138426.P7324794287397154973

namespace A138426

/-- `6*A138430(n+1)` -/
def P7324794287397154973.Spec : Prop :=
  ∀ n, P7324794287397154973.a n = A138426 (n + 1)

end A138426

/-! ## A138426.P12387252016051874683

`2/5*A138424(n+1)`
-/

namespace A138426.P12387252016051874683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138424 (n + 1) : ℚ)

end

end A138426.P12387252016051874683

namespace A138426

/-- `2/5*A138424(n+1)` -/
def P12387252016051874683.Spec : Prop :=
  ∀ n, P12387252016051874683.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P11723768337889152519

`3/5*A138425(n+1)`
-/

namespace A138426.P11723768337889152519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A138425 (n + 1) : ℚ)

end

end A138426.P11723768337889152519

namespace A138426

/-- `3/5*A138425(n+1)` -/
def P11723768337889152519.Spec : Prop :=
  ∀ n, P11723768337889152519.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P10764793819061275225

`∑{d}[A000040(n+1), (#^5-#)/5]`
-/

namespace A138426.P10764793819061275225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ) : ℚ) / 5

end

end A138426.P10764793819061275225

namespace A138426

/-- `∑{d}[A000040(n+1), (#^5-#)/5]` -/
def P10764793819061275225.Spec : Prop :=
  ∀ n, P10764793819061275225.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P14747622922028623031

`A138430(n+1)+A138427(n+1)`
-/

namespace A138426.P14747622922028623031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138430 (n + 1) + A138427 (n + 1)

end

end A138426.P14747622922028623031

namespace A138426

/-- `A138430(n+1)+A138427(n+1)` -/
def P14747622922028623031.Spec : Prop :=
  ∀ n, P14747622922028623031.a n = A138426 (n + 1)

end A138426

/-! ## A138426.P13091610073106316470

`A138444(n+1)/A000040(n+1)`
-/

namespace A138426.P13091610073106316470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138426.P13091610073106316470

namespace A138426

/-- `A138444(n+1)/A000040(n+1)` -/
def P13091610073106316470.Spec : Prop :=
  ∀ n, P13091610073106316470.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P6486616444138861196

`A138409(n+1)/A001750(n+1)`
-/

namespace A138426.P6486616444138861196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A001750 (n + 1) : ℚ)

end

end A138426.P6486616444138861196

namespace A138426

/-- `A138409(n+1)/A001750(n+1)` -/
def P6486616444138861196.Spec : Prop :=
  ∀ n, P6486616444138861196.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P18103045862309749597

`lcm(A138428(n+1), A138429(n+1))`
-/

namespace A138426.P18103045862309749597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138428 (n + 1)) (A138429 (n + 1))

end

end A138426.P18103045862309749597

namespace A138426

/-- `lcm(A138428(n+1), A138429(n+1))` -/
def P18103045862309749597.Spec : Prop :=
  ∀ n, (P18103045862309749597.a n : ℤ) = A138426 (n + 1)

end A138426

/-! ## A138426.P12711677490314211688

`A138427(n+1)+A138429(n+1)/2`
-/

namespace A138426.P12711677490314211688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138427 (n + 1) : ℚ) + (A138429 (n + 1) : ℚ) / 2

end

end A138426.P12711677490314211688

namespace A138426

/-- `A138427(n+1)+A138429(n+1)/2` -/
def P12711677490314211688.Spec : Prop :=
  ∀ n, P12711677490314211688.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P9728837247550450056

`(A138424(n+1)-A138428(n+1))/2`
-/

namespace A138426.P9728837247550450056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) - A138428 (n + 1) : ℚ) / 2

end

end A138426.P9728837247550450056

namespace A138426

/-- `(A138424(n+1)-A138428(n+1))/2` -/
def P9728837247550450056.Spec : Prop :=
  ∀ n, P9728837247550450056.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P8287765671912261172

`2/A000040(n+1)*A138446(n+1)`
-/

namespace A138426.P8287765671912261172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000040 (n + 1) : ℚ) * (A138446 (n + 1) : ℚ)

end

end A138426.P8287765671912261172

namespace A138426

/-- `2/A000040(n+1)*A138446(n+1)` -/
def P8287765671912261172.Spec : Prop :=
  ∀ n, P8287765671912261172.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P16874234387158025055

`2/A001750(n+1)*A138441(n+1)`
-/

namespace A138426.P16874234387158025055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001750 (n + 1) : ℚ) * (A138441 (n + 1) : ℚ)

end

end A138426.P16874234387158025055

namespace A138426

/-- `2/A001750(n+1)*A138441(n+1)` -/
def P16874234387158025055.Spec : Prop :=
  ∀ n, P16874234387158025055.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P6843155096723857350

`2/A100484(n+1)*A138444(n+1)`
-/

namespace A138426.P6843155096723857350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A100484 (n + 1) : ℚ) * (A138444 (n + 1) : ℚ)

end

end A138426.P6843155096723857350

namespace A138426

/-- `2/A100484(n+1)*A138444(n+1)` -/
def P6843155096723857350.Spec : Prop :=
  ∀ n, P6843155096723857350.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P628009636915572914

`2*A138409(n+1)/A142342(n+1)`
-/

namespace A138426.P628009636915572914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A138409 (n + 1) : ℚ) / (A142342 (n + 1) : ℚ))

end

end A138426.P628009636915572914

namespace A138426

/-- `2*A138409(n+1)/A142342(n+1)` -/
def P628009636915572914.Spec : Prop :=
  ∀ n, P628009636915572914.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P826311255541653786

`2/sqrt(A001248(n+1))*A138446(n+1)`
-/

namespace A138426.P826311255541653786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.sqrt (A001248 (n + 1) : ℝ) * (A138446 (n + 1) : ℝ)

end

end A138426.P826311255541653786

namespace A138426

/-- `2/sqrt(A001248(n+1))*A138446(n+1)` -/
def P826311255541653786.Spec : Prop :=
  ∀ n, P826311255541653786.a n = (A138426 (n + 1) : ℝ)

end A138426

/-! ## A138426.P11164416903721905591

`2/∑[A054541(n+1)]*A138446(n+1)`
-/

namespace A138426.P11164416903721905591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A138446 (n + 1) : ℚ)

end

end A138426.P11164416903721905591

namespace A138426

/-- `2/∑[A054541(n+1)]*A138446(n+1)` -/
def P11164416903721905591.Spec : Prop :=
  ∀ n, P11164416903721905591.a n = (A138426 (n + 1) : ℚ)

end A138426

/-! ## A138426.P4936178545991564294

`A138427(n+1)+A138428(n+1)-A138429(n+1)`
-/

namespace A138426.P4936178545991564294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) + (A138428 (n + 1) - A138429 (n + 1))

end

end A138426.P4936178545991564294

namespace A138426

/-- `A138427(n+1)+A138428(n+1)-A138429(n+1)` -/
def P4936178545991564294.Spec : Prop :=
  ∀ n, P4936178545991564294.a n = A138426 (n + 1)

end A138426

/-!
# A138427: a(n) = (prime(n)^5 - prime(n))/6.

The programs for A138427, the canonical program `A138427.P16097215975981541627` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138427 has offset 1).

The definition of A138427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138427.P16097215975981541627

`A138404(n+1)/6`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138427

/-- `A138404(n+1)/6` -/
def P16097215975981541627.Spec : Prop :=
  ∀ n, P16097215975981541627.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P11818578730490368766

`A138425(n+1)/2`
-/

namespace A138427.P11818578730490368766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138425 (n + 1) : ℚ) / 2

end

end A138427.P11818578730490368766

namespace A138427

/-- `A138425(n+1)/2` -/
def P11818578730490368766.Spec : Prop :=
  ∀ n, P11818578730490368766.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P3396512579050477408

`A138424(n+1)/3`
-/

namespace A138427.P3396512579050477408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) : ℚ) / 3

end

end A138427.P3396512579050477408

namespace A138427

/-- `A138424(n+1)/3` -/
def P3396512579050477408.Spec : Prop :=
  ∀ n, P3396512579050477408.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P4489794873563038561

`5*A138430(n+1)`
-/

namespace A138427.P4489794873563038561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138430 (n + 1)

end

end A138427.P4489794873563038561

namespace A138427

/-- `5*A138430(n+1)` -/
def P4489794873563038561.Spec : Prop :=
  ∀ n, P4489794873563038561.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P1236946207975256872

`5/2*A138429(n+1)`
-/

namespace A138427.P1236946207975256872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138429 (n + 1) : ℚ)

end

end A138427.P1236946207975256872

namespace A138427

/-- `5/2*A138429(n+1)` -/
def P1236946207975256872.Spec : Prop :=
  ∀ n, P1236946207975256872.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P12894680038959255674

`5/3*A138428(n+1)`
-/

namespace A138427.P12894680038959255674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A138428 (n + 1) : ℚ)

end

end A138427.P12894680038959255674

namespace A138427

/-- `5/3*A138428(n+1)` -/
def P12894680038959255674.Spec : Prop :=
  ∀ n, P12894680038959255674.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P9455774902664634230

`5/2*A138426(n+1)/3`
-/

namespace A138427.P9455774902664634230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * ((A138426 (n + 1) : ℚ) / 3)

end

end A138427.P9455774902664634230

namespace A138427

/-- `5/2*A138426(n+1)/3` -/
def P9455774902664634230.Spec : Prop :=
  ∀ n, P9455774902664634230.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P15970400409952519062

`∑{d}[A000040(n+1), #^5-#]/6`
-/

namespace A138427.P15970400409952519062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ)) : ℤ) : ℚ) / 6

end

end A138427.P15970400409952519062

namespace A138427

/-- `∑{d}[A000040(n+1), #^5-#]/6` -/
def P15970400409952519062.Spec : Prop :=
  ∀ n, P15970400409952519062.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P10968024161652770801

`A138435(n+1)+A127920(n+1)`
-/

namespace A138427.P10968024161652770801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138435 (n + 1) + A127920 (n + 1)

end

end A138427.P10968024161652770801

namespace A138427

/-- `A138435(n+1)+A127920(n+1)` -/
def P10968024161652770801.Spec : Prop :=
  ∀ n, P10968024161652770801.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P4270751717338797491

`A138429(n+1)+A138428(n+1)`
-/

namespace A138427.P4270751717338797491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138429 (n + 1) + A138428 (n + 1)

end

end A138427.P4270751717338797491

namespace A138427

/-- `A138429(n+1)+A138428(n+1)` -/
def P4270751717338797491.Spec : Prop :=
  ∀ n, P4270751717338797491.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P90897540949055269

`A138424(n+1)-A138425(n+1)`
-/

namespace A138427.P90897540949055269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A138425 (n + 1)

end

end A138427.P90897540949055269

namespace A138427

/-- `A138424(n+1)-A138425(n+1)` -/
def P90897540949055269.Spec : Prop :=
  ∀ n, P90897540949055269.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P13293685027032932310

`A138426(n+1)-A138430(n+1)`
-/

namespace A138427.P13293685027032932310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138426 (n + 1) - A138430 (n + 1)

end

end A138427.P13293685027032932310

namespace A138427

/-- `A138426(n+1)-A138430(n+1)` -/
def P13293685027032932310.Spec : Prop :=
  ∀ n, P13293685027032932310.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P5582859316586079983

`A066872(n+1)*A127920(n+1)`
-/

namespace A138427.P5582859316586079983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A127920 (n + 1)

end

end A138427.P5582859316586079983

namespace A138427

/-- `A066872(n+1)*A127920(n+1)` -/
def P5582859316586079983.Spec : Prop :=
  ∀ n, P5582859316586079983.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P10041425038122663632

`A138445(n+1)/A000040(n+1)`
-/

namespace A138427.P10041425038122663632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138427.P10041425038122663632

namespace A138427

/-- `A138445(n+1)/A000040(n+1)` -/
def P10041425038122663632.Spec : Prop :=
  ∀ n, P10041425038122663632.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P6296565643842719818

`A138441(n+1)/A001748(n+1)`
-/

namespace A138427.P6296565643842719818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138427.P6296565643842719818

namespace A138427

/-- `A138441(n+1)/A001748(n+1)` -/
def P6296565643842719818.Spec : Prop :=
  ∀ n, P6296565643842719818.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P367515475034940470

`A138442(n+1)/A100484(n+1)`
-/

namespace A138427.P367515475034940470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138427.P367515475034940470

namespace A138427

/-- `A138442(n+1)/A100484(n+1)` -/
def P367515475034940470.Spec : Prop :=
  ∀ n, P367515475034940470.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P1242038110101743156

`A138409(n+1)/A138636(n+1)`
-/

namespace A138427.P1242038110101743156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138427.P1242038110101743156

namespace A138427

/-- `A138409(n+1)/A138636(n+1)` -/
def P1242038110101743156.Spec : Prop :=
  ∀ n, P1242038110101743156.a n = (A138427 (n + 1) : ℚ)

end A138427

/-! ## A138427.P18410509412545246820

`(A001248(n+1)+1)*A127920(n+1)`
-/

namespace A138427.P18410509412545246820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + 1) * A127920 (n + 1)

end

end A138427.P18410509412545246820

namespace A138427

/-- `(A001248(n+1)+1)*A127920(n+1)` -/
def P18410509412545246820.Spec : Prop :=
  ∀ n, P18410509412545246820.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P9203717118456704996

`(A084920(n+1)+2)*A127920(n+1)`
-/

namespace A138427.P9203717118456704996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 1) + 2) * A127920 (n + 1)

end

end A138427.P9203717118456704996

namespace A138427

/-- `(A084920(n+1)+2)*A127920(n+1)` -/
def P9203717118456704996.Spec : Prop :=
  ∀ n, P9203717118456704996.a n = A138427 (n + 1)

end A138427

/-! ## A138427.P10035763383244147690

`(A138433(n+1)+A127919(n+1))/2`
-/

namespace A138427.P10035763383244147690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) + A127919 (n + 1) : ℚ) / 2

end

end A138427.P10035763383244147690

namespace A138427

/-- `(A138433(n+1)+A127919(n+1))/2` -/
def P10035763383244147690.Spec : Prop :=
  ∀ n, P10035763383244147690.a n = (A138427 (n + 1) : ℚ)

end A138427

/-!
# A138428: a(n) = (prime(n)^5 - prime(n))/10.

The programs for A138428, the canonical program `A138428.P16215702972878224398` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138428 has offset 1).

The definition of A138428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138428.P16215702972878224398

`A138404(n+1)/10`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138428

/-- `A138404(n+1)/10` -/
def P16215702972878224398.Spec : Prop :=
  ∀ n, P16215702972878224398.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P12962052655252708136

`A138426(n+1)/2`
-/

namespace A138428.P12962052655252708136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138426 (n + 1) : ℚ) / 2

end

end A138428.P12962052655252708136

namespace A138428

/-- `A138426(n+1)/2` -/
def P12962052655252708136.Spec : Prop :=
  ∀ n, P12962052655252708136.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P1088603773950294957

`3*A138430(n+1)`
-/

namespace A138428.P1088603773950294957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138430 (n + 1)

end

end A138428.P1088603773950294957

namespace A138428

/-- `3*A138430(n+1)` -/
def P1088603773950294957.Spec : Prop :=
  ∀ n, P1088603773950294957.a n = A138428 (n + 1)

end A138428

/-! ## A138428.P12482930449906507179

`A138424(n+1)/5`
-/

namespace A138428.P12482930449906507179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) : ℚ) / 5

end

end A138428.P12482930449906507179

namespace A138428

/-- `A138424(n+1)/5` -/
def P12482930449906507179.Spec : Prop :=
  ∀ n, P12482930449906507179.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P314437423492865516

`3/2*A138429(n+1)`
-/

namespace A138428.P314437423492865516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138429 (n + 1) : ℚ)

end

end A138428.P314437423492865516

namespace A138428

/-- `3/2*A138429(n+1)` -/
def P314437423492865516.Spec : Prop :=
  ∀ n, P314437423492865516.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P975328170673990905

`3/5*A138427(n+1)`
-/

namespace A138428.P975328170673990905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A138427 (n + 1) : ℚ)

end

end A138428.P975328170673990905

namespace A138428

/-- `3/5*A138427(n+1)` -/
def P975328170673990905.Spec : Prop :=
  ∀ n, P975328170673990905.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P8250983472516318512

`A138430(n+1)+A138429(n+1)`
-/

namespace A138428.P8250983472516318512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138430 (n + 1) + A138429 (n + 1)

end

end A138428.P8250983472516318512

namespace A138428

/-- `A138430(n+1)+A138429(n+1)` -/
def P8250983472516318512.Spec : Prop :=
  ∀ n, P8250983472516318512.a n = A138428 (n + 1)

end A138428

/-! ## A138428.P1814387493538343832

`A138427(n+1)-A138429(n+1)`
-/

namespace A138428.P1814387493538343832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) - A138429 (n + 1)

end

end A138428.P1814387493538343832

namespace A138428

/-- `A138427(n+1)-A138429(n+1)` -/
def P1814387493538343832.Spec : Prop :=
  ∀ n, P1814387493538343832.a n = A138428 (n + 1)

end A138428

/-! ## A138428.P1675497543655511965

`A138446(n+1)/A000040(n+1)`
-/

namespace A138428.P1675497543655511965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138428.P1675497543655511965

namespace A138428

/-- `A138446(n+1)/A000040(n+1)` -/
def P1675497543655511965.Spec : Prop :=
  ∀ n, P1675497543655511965.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P11547234795785902844

`A138441(n+1)/A001750(n+1)`
-/

namespace A138428.P11547234795785902844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A001750 (n + 1) : ℚ)

end

end A138428.P11547234795785902844

namespace A138428

/-- `A138441(n+1)/A001750(n+1)` -/
def P11547234795785902844.Spec : Prop :=
  ∀ n, P11547234795785902844.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P10391298906538637866

`A138444(n+1)/A100484(n+1)`
-/

namespace A138428.P10391298906538637866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138428.P10391298906538637866

namespace A138428

/-- `A138444(n+1)/A100484(n+1)` -/
def P10391298906538637866.Spec : Prop :=
  ∀ n, P10391298906538637866.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P6615166346249943586

`A138409(n+1)/A142342(n+1)`
-/

namespace A138428.P6615166346249943586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A142342 (n + 1) : ℚ)

end

end A138428.P6615166346249943586

namespace A138428

/-- `A138409(n+1)/A142342(n+1)` -/
def P6615166346249943586.Spec : Prop :=
  ∀ n, P6615166346249943586.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P13442155432233914701

`A138424(n+1)%A138426(n+1)`
-/

namespace A138428.P13442155432233914701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138424 (n + 1)) (A138426 (n + 1))

end

end A138428.P13442155432233914701

namespace A138428

/-- `A138424(n+1)%A138426(n+1)` -/
def P13442155432233914701.Spec : Prop :=
  ∀ n, P13442155432233914701.a n = A138428 (n + 1)

end A138428

/-! ## A138428.P13856470826084578091

`A138446(n+1)/sqrt(A001248(n+1))`
-/

namespace A138428.P13856470826084578091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A138428.P13856470826084578091

namespace A138428

/-- `A138446(n+1)/sqrt(A001248(n+1))` -/
def P13856470826084578091.Spec : Prop :=
  ∀ n, P13856470826084578091.a n = (A138428 (n + 1) : ℝ)

end A138428

/-! ## A138428.P6312613448491424392

`A138446(n+1)/∑[A054541(n+1)]`
-/

namespace A138428.P6312613448491424392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A138428.P6312613448491424392

namespace A138428

/-- `A138446(n+1)/∑[A054541(n+1)]` -/
def P6312613448491424392.Spec : Prop :=
  ∀ n, P6312613448491424392.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P16438698054485331466

`(A138430(n+1)+A138427(n+1))/2`
-/

namespace A138428.P16438698054485331466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138430 (n + 1) + A138427 (n + 1) : ℚ) / 2

end

end A138428.P16438698054485331466

namespace A138428

/-- `(A138430(n+1)+A138427(n+1))/2` -/
def P16438698054485331466.Spec : Prop :=
  ∀ n, P16438698054485331466.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P898652994281122748

`A138444(n+1)/(2*A000040(n+1))`
-/

namespace A138428.P898652994281122748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / (2 * A000040 (n + 1) : ℚ)

end

end A138428.P898652994281122748

namespace A138428

/-- `A138444(n+1)/(2*A000040(n+1))` -/
def P898652994281122748.Spec : Prop :=
  ∀ n, P898652994281122748.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P18318478739392979541

`A138409(n+1)/(2*A001750(n+1))`
-/

namespace A138428.P18318478739392979541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (2 * A001750 (n + 1) : ℚ)

end

end A138428.P18318478739392979541

namespace A138428

/-- `A138409(n+1)/(2*A001750(n+1))` -/
def P18318478739392979541.Spec : Prop :=
  ∀ n, P18318478739392979541.a n = (A138428 (n + 1) : ℚ)

end A138428

/-! ## A138428.P5423101224051417531

`A138424(n+1)-(A138429(n+1)+A138425(n+1))`
-/

namespace A138428.P5423101224051417531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - (A138429 (n + 1) + A138425 (n + 1))

end

end A138428.P5423101224051417531

namespace A138428

/-- `A138424(n+1)-(A138429(n+1)+A138425(n+1))` -/
def P5423101224051417531.Spec : Prop :=
  ∀ n, P5423101224051417531.a n = A138428 (n + 1)

end A138428

/-! ## A138428.P6043621998705738942

`A164938(A000040(n+1))`
-/

namespace A138428.P6043621998705738942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (A000040 (n + 1)).toNat

end

end A138428.P6043621998705738942

namespace A138428

/-- `A164938(A000040(n+1))` -/
def P6043621998705738942.Spec : Prop :=
  ∀ n, P6043621998705738942.a n = A138428 (n + 1)

end A138428

/-!
# A138429: a(n) = (prime(n)^5 - prime(n))/15.

The programs for A138429, the canonical program `A138429.P2386023419108001403` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138429 has offset 1).

The definition of A138429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138429.P2386023419108001403

`A138404(n+1)/15`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138429

/-- `A138404(n+1)/15` -/
def P2386023419108001403.Spec : Prop :=
  ∀ n, P2386023419108001403.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P12166858552061319058

`2*A138430(n+1)`
-/

namespace A138429.P12166858552061319058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138430 (n + 1)

end

end A138429.P12166858552061319058

namespace A138429

/-- `2*A138430(n+1)` -/
def P12166858552061319058.Spec : Prop :=
  ∀ n, P12166858552061319058.a n = A138429 (n + 1)

end A138429

/-! ## A138429.P11155171214696945346

`A138426(n+1)/3`
-/

namespace A138429.P11155171214696945346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138426 (n + 1) : ℚ) / 3

end

end A138429.P11155171214696945346

namespace A138429

/-- `A138426(n+1)/3` -/
def P11155171214696945346.Spec : Prop :=
  ∀ n, P11155171214696945346.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P5967968226880771444

`A138425(n+1)/5`
-/

namespace A138429.P5967968226880771444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138425 (n + 1) : ℚ) / 5

end

end A138429.P5967968226880771444

namespace A138429

/-- `A138425(n+1)/5` -/
def P5967968226880771444.Spec : Prop :=
  ∀ n, P5967968226880771444.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P2083272992567490569

`2/3*A138428(n+1)`
-/

namespace A138429.P2083272992567490569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138428 (n + 1) : ℚ)

end

end A138429.P2083272992567490569

namespace A138429

/-- `2/3*A138428(n+1)` -/
def P2083272992567490569.Spec : Prop :=
  ∀ n, P2083272992567490569.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P3529101095539630539

`2/5*A138427(n+1)`
-/

namespace A138429.P3529101095539630539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138427 (n + 1) : ℚ)

end

end A138429.P3529101095539630539

namespace A138429

/-- `2/5*A138427(n+1)` -/
def P3529101095539630539.Spec : Prop :=
  ∀ n, P3529101095539630539.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P18143492891532704599

`∑{d}[A000040(n+1), (#^5-#)/5]/3`
-/

namespace A138429.P18143492891532704599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ) : ℚ) / 5) / 3

end

end A138429.P18143492891532704599

namespace A138429

/-- `∑{d}[A000040(n+1), (#^5-#)/5]/3` -/
def P18143492891532704599.Spec : Prop :=
  ∀ n, P18143492891532704599.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P15443099903204473175

`A138427(n+1)-A138428(n+1)`
-/

namespace A138429.P15443099903204473175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) - A138428 (n + 1)

end

end A138429.P15443099903204473175

namespace A138429

/-- `A138427(n+1)-A138428(n+1)` -/
def P15443099903204473175.Spec : Prop :=
  ∀ n, P15443099903204473175.a n = A138429 (n + 1)

end A138429

/-! ## A138429.P218761696193151254

`A138428(n+1)-A138430(n+1)`
-/

namespace A138429.P218761696193151254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138428 (n + 1) - A138430 (n + 1)

end

end A138429.P218761696193151254

namespace A138429

/-- `A138428(n+1)-A138430(n+1)` -/
def P218761696193151254.Spec : Prop :=
  ∀ n, P218761696193151254.a n = A138429 (n + 1)

end A138429

/-! ## A138429.P3246257211252155960

`A138448(n+1)/A000040(n+1)`
-/

namespace A138429.P3246257211252155960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138448 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138429.P3246257211252155960

namespace A138429

/-- `A138448(n+1)/A000040(n+1)` -/
def P3246257211252155960.Spec : Prop :=
  ∀ n, P3246257211252155960.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P17006272594814276315

`A138442(n+1)/A001750(n+1)`
-/

namespace A138429.P17006272594814276315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A001750 (n + 1) : ℚ)

end

end A138429.P17006272594814276315

namespace A138429

/-- `A138442(n+1)/A001750(n+1)` -/
def P17006272594814276315.Spec : Prop :=
  ∀ n, P17006272594814276315.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P3624615449607600912

`A138444(n+1)/A001748(n+1)`
-/

namespace A138429.P3624615449607600912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138429.P3624615449607600912

namespace A138429

/-- `A138444(n+1)/A001748(n+1)` -/
def P3624615449607600912.Spec : Prop :=
  ∀ n, P3624615449607600912.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P16306322238529642895

`gcd(A138425(n+1), A138426(n+1))`
-/

namespace A138429.P16306322238529642895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138425 (n + 1)) (A138426 (n + 1))

end

end A138429.P16306322238529642895

namespace A138429

/-- `gcd(A138425(n+1), A138426(n+1))` -/
def P16306322238529642895.Spec : Prop :=
  ∀ n, (P16306322238529642895.a n : ℤ) = A138429 (n + 1)

end A138429

/-! ## A138429.P1927450162825192449

`2*(A138426(n+1)-A138427(n+1))`
-/

namespace A138429.P1927450162825192449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138426 (n + 1) - A138427 (n + 1))

end

end A138429.P1927450162825192449

namespace A138429

/-- `2*(A138426(n+1)-A138427(n+1))` -/
def P1927450162825192449.Spec : Prop :=
  ∀ n, P1927450162825192449.a n = A138429 (n + 1)

end A138429

/-! ## A138429.P3303026787258191092

`(A138427(n+1)-A138430(n+1))/2`
-/

namespace A138429.P3303026787258191092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138427 (n + 1) - A138430 (n + 1) : ℚ) / 2

end

end A138429.P3303026787258191092

namespace A138429

/-- `(A138427(n+1)-A138430(n+1))/2` -/
def P3303026787258191092.Spec : Prop :=
  ∀ n, P3303026787258191092.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P8659503967271924362

`2/A000040(n+1)*A138450(n+1)`
-/

namespace A138429.P8659503967271924362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000040 (n + 1) : ℚ) * (A138450 (n + 1) : ℚ)

end

end A138429.P8659503967271924362

namespace A138429

/-- `2/A000040(n+1)*A138450(n+1)` -/
def P8659503967271924362.Spec : Prop :=
  ∀ n, P8659503967271924362.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P5912418637711142357

`2/A001748(n+1)*A138446(n+1)`
-/

namespace A138429.P5912418637711142357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001748 (n + 1) : ℚ) * (A138446 (n + 1) : ℚ)

end

end A138429.P5912418637711142357

namespace A138429

/-- `2/A001748(n+1)*A138446(n+1)` -/
def P5912418637711142357.Spec : Prop :=
  ∀ n, P5912418637711142357.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P12492777141940970199

`2/A001750(n+1)*A138445(n+1)`
-/

namespace A138429.P12492777141940970199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001750 (n + 1) : ℚ) * (A138445 (n + 1) : ℚ)

end

end A138429.P12492777141940970199

namespace A138429

/-- `2/A001750(n+1)*A138445(n+1)` -/
def P12492777141940970199.Spec : Prop :=
  ∀ n, P12492777141940970199.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P7134443527083460741

`2/A100484(n+1)*A138448(n+1)`
-/

namespace A138429.P7134443527083460741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A100484 (n + 1) : ℚ) * (A138448 (n + 1) : ℚ)

end

end A138429.P7134443527083460741

namespace A138429

/-- `2/A100484(n+1)*A138448(n+1)` -/
def P7134443527083460741.Spec : Prop :=
  ∀ n, P7134443527083460741.a n = (A138429 (n + 1) : ℚ)

end A138429

/-! ## A138429.P17063119729729425812

`2*A138444(n+1)/A138636(n+1)`
-/

namespace A138429.P17063119729729425812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A138444 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ))

end

end A138429.P17063119729729425812

namespace A138429

/-- `2*A138444(n+1)/A138636(n+1)` -/
def P17063119729729425812.Spec : Prop :=
  ∀ n, P17063119729729425812.a n = (A138429 (n + 1) : ℚ)

end A138429

/-!
# A138430: a(n) = (prime(n)^5 - prime(n))/30.

The programs for A138430, the canonical program `A138430.P16083689388291153445` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138430 has offset 1).

The definition of A138430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138430.P16083689388291153445

`A138426(n+1)/6`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138430

/-- `A138426(n+1)/6` -/
def P16083689388291153445.Spec : Prop :=
  ∀ n, P16083689388291153445.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P17569948403720878189

`A138404(n+1)/30`
-/

namespace A138430.P17569948403720878189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 30

end

end A138430.P17569948403720878189

namespace A138430

/-- `A138404(n+1)/30` -/
def P17569948403720878189.Spec : Prop :=
  ∀ n, P17569948403720878189.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P7960435471255445893

`A138429(n+1)/2`
-/

namespace A138430.P7960435471255445893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138429 (n + 1) : ℚ) / 2

end

end A138430.P7960435471255445893

namespace A138430

/-- `A138429(n+1)/2` -/
def P7960435471255445893.Spec : Prop :=
  ∀ n, P7960435471255445893.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P6054773132789517918

`A138428(n+1)/3`
-/

namespace A138430.P6054773132789517918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138428 (n + 1) : ℚ) / 3

end

end A138430.P6054773132789517918

namespace A138430

/-- `A138428(n+1)/3` -/
def P6054773132789517918.Spec : Prop :=
  ∀ n, P6054773132789517918.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P3546558317364670584

`A138427(n+1)/5`
-/

namespace A138430.P3546558317364670584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138427 (n + 1) : ℚ) / 5

end

end A138430.P3546558317364670584

namespace A138430

/-- `A138427(n+1)/5` -/
def P3546558317364670584.Spec : Prop :=
  ∀ n, P3546558317364670584.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P5084846713914086047

`∑{d}[A000040(n+1), (#^5-#)/5]/6`
-/

namespace A138430.P5084846713914086047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 5 : ℤ) - (d : ℤ) : ℚ) / 5) / 6

end

end A138430.P5084846713914086047

namespace A138430

/-- `∑{d}[A000040(n+1), (#^5-#)/5]/6` -/
def P5084846713914086047.Spec : Prop :=
  ∀ n, P5084846713914086047.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P3500613253158282830

`A138426(n+1)-A138427(n+1)`
-/

namespace A138430.P3500613253158282830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138426 (n + 1) - A138427 (n + 1)

end

end A138430.P3500613253158282830

namespace A138430

/-- `A138426(n+1)-A138427(n+1)` -/
def P3500613253158282830.Spec : Prop :=
  ∀ n, P3500613253158282830.a n = A138430 (n + 1)

end A138430

/-! ## A138430.P14683963779723016450

`A138428(n+1)-A138429(n+1)`
-/

namespace A138430.P14683963779723016450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138428 (n + 1) - A138429 (n + 1)

end

end A138430.P14683963779723016450

namespace A138430

/-- `A138428(n+1)-A138429(n+1)` -/
def P14683963779723016450.Spec : Prop :=
  ∀ n, P14683963779723016450.a n = A138430 (n + 1)

end A138430

/-! ## A138430.P417519318969135471

`A138450(n+1)/A000040(n+1)`
-/

namespace A138430.P417519318969135471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138450 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138430.P417519318969135471

namespace A138430

/-- `A138450(n+1)/A000040(n+1)` -/
def P417519318969135471.Spec : Prop :=
  ∀ n, P417519318969135471.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P12721581814310302024

`A138445(n+1)/A001750(n+1)`
-/

namespace A138430.P12721581814310302024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / (A001750 (n + 1) : ℚ)

end

end A138430.P12721581814310302024

namespace A138430

/-- `A138445(n+1)/A001750(n+1)` -/
def P12721581814310302024.Spec : Prop :=
  ∀ n, P12721581814310302024.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P1980302791354584241

`A138446(n+1)/A001748(n+1)`
-/

namespace A138430.P1980302791354584241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138430.P1980302791354584241

namespace A138430

/-- `A138446(n+1)/A001748(n+1)` -/
def P1980302791354584241.Spec : Prop :=
  ∀ n, P1980302791354584241.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P13400881223604409059

`A138448(n+1)/A100484(n+1)`
-/

namespace A138430.P13400881223604409059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138448 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138430.P13400881223604409059

namespace A138430

/-- `A138448(n+1)/A100484(n+1)` -/
def P13400881223604409059.Spec : Prop :=
  ∀ n, P13400881223604409059.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P2680749292053449457

`A138444(n+1)/A138636(n+1)`
-/

namespace A138430.P2680749292053449457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138430.P2680749292053449457

namespace A138430

/-- `A138444(n+1)/A138636(n+1)` -/
def P2680749292053449457.Spec : Prop :=
  ∀ n, P2680749292053449457.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P6478346581382495014

`A138442(n+1)/A142342(n+1)`
-/

namespace A138430.P6478346581382495014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (A142342 (n + 1) : ℚ)

end

end A138430.P6478346581382495014

namespace A138430

/-- `A138442(n+1)/A142342(n+1)` -/
def P6478346581382495014.Spec : Prop :=
  ∀ n, P6478346581382495014.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P11414169244961994060

`A138424(n+1)%A138429(n+1)`
-/

namespace A138430.P11414169244961994060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138424 (n + 1)) (A138429 (n + 1))

end

end A138430.P11414169244961994060

namespace A138430

/-- `A138424(n+1)%A138429(n+1)` -/
def P11414169244961994060.Spec : Prop :=
  ∀ n, P11414169244961994060.a n = A138430 (n + 1)

end A138430

/-! ## A138430.P1615044049483300586

`A138425(n+1)%A138428(n+1)`
-/

namespace A138430.P1615044049483300586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138425 (n + 1)) (A138428 (n + 1))

end

end A138430.P1615044049483300586

namespace A138430

/-- `A138425(n+1)%A138428(n+1)` -/
def P1615044049483300586.Spec : Prop :=
  ∀ n, P1615044049483300586.a n = A138430 (n + 1)

end A138430

/-! ## A138430.P16721767580307191080

`A138427(n+1)%A138429(n+1)`
-/

namespace A138430.P16721767580307191080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138427 (n + 1)) (A138429 (n + 1))

end

end A138430.P16721767580307191080

namespace A138430

/-- `A138427(n+1)%A138429(n+1)` -/
def P16721767580307191080.Spec : Prop :=
  ∀ n, P16721767580307191080.a n = A138430 (n + 1)

end A138430

/-! ## A138430.P6122698266178278337

`gcd(A138427(n+1), A138428(n+1))`
-/

namespace A138430.P6122698266178278337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138427 (n + 1)) (A138428 (n + 1))

end

end A138430.P6122698266178278337

namespace A138430

/-- `gcd(A138427(n+1), A138428(n+1))` -/
def P6122698266178278337.Spec : Prop :=
  ∀ n, (P6122698266178278337.a n : ℤ) = A138430 (n + 1)

end A138430

/-! ## A138430.P9697448451492283644

`2/A000040(n+1)*A138451(n+1)`
-/

namespace A138430.P9697448451492283644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000040 (n + 1) : ℚ) * (A138451 (n + 1) : ℚ)

end

end A138430.P9697448451492283644

namespace A138430

/-- `2/A000040(n+1)*A138451(n+1)` -/
def P9697448451492283644.Spec : Prop :=
  ∀ n, P9697448451492283644.a n = (A138430 (n + 1) : ℚ)

end A138430

/-! ## A138430.P10095374656655618402

`A138442(n+1)/(2*A001750(n+1))`
-/

namespace A138430.P10095374656655618402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / (2 * A001750 (n + 1) : ℚ)

end

end A138430.P10095374656655618402

namespace A138430

/-- `A138442(n+1)/(2*A001750(n+1))` -/
def P10095374656655618402.Spec : Prop :=
  ∀ n, P10095374656655618402.a n = (A138430 (n + 1) : ℚ)

end A138430

/-!
# A138431: a(n) = ((n-th prime)^5-(n-th prime)^2)/2.

The programs for A138431, the canonical program `A138431.P2547013115861901951` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138431 has offset 1).

The definition of A138431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138405, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138431.P2547013115861901951

`A138405(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138431

/-- `A138405(n+1)/2` -/
def P2547013115861901951.Spec : Prop :=
  ∀ n, P2547013115861901951.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P18164693463047336944

`A138432(n+1)+A138416(n+1)`
-/

namespace A138431.P18164693463047336944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) + A138416 (n + 1)

end

end A138431.P18164693463047336944

namespace A138431

/-- `A138432(n+1)+A138416(n+1)` -/
def P18164693463047336944.Spec : Prop :=
  ∀ n, P18164693463047336944.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P8665906823164525762

`A138439(n+1)+A138418(n+1)`
-/

namespace A138431.P8665906823164525762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138439 (n + 1) + A138418 (n + 1)

end

end A138431.P8665906823164525762

namespace A138431

/-- `A138439(n+1)+A138418(n+1)` -/
def P8665906823164525762.Spec : Prop :=
  ∀ n, P8665906823164525762.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P17459845526434160643

`A138424(n+1)-A008837(n+1)`
-/

namespace A138431.P17459845526434160643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A008837 (n + 1)

end

end A138431.P17459845526434160643

namespace A138431

/-- `A138424(n+1)-A008837(n+1)` -/
def P17459845526434160643.Spec : Prop :=
  ∀ n, P17459845526434160643.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P15644818800684413674

`A138441(n+1)-A138460(n+1)`
-/

namespace A138431.P15644818800684413674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138460 (n + 1)

end

end A138431.P15644818800684413674

namespace A138431

/-- `A138441(n+1)-A138460(n+1)` -/
def P15644818800684413674.Spec : Prop :=
  ∀ n, P15644818800684413674.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P17646245964832595624

`A000040(n+1)*A138417(n+1)`
-/

namespace A138431.P17646245964832595624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138417 (n + 1)

end

end A138431.P17646245964832595624

namespace A138431

/-- `A000040(n+1)*A138417(n+1)` -/
def P17646245964832595624.Spec : Prop :=
  ∀ n, P17646245964832595624.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P13280062642203485255

`A008837(n+1)*A181149(n+1)`
-/

namespace A138431.P13280062642203485255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A181149 (n + 1)

end

end A138431.P13280062642203485255

namespace A138431

/-- `A008837(n+1)*A181149(n+1)` -/
def P13280062642203485255.Spec : Prop :=
  ∀ n, P13280062642203485255.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P8627546980966782997

`A060800(n+1)*A138416(n+1)`
-/

namespace A138431.P8627546980966782997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) * A138416 (n + 1)

end

end A138431.P8627546980966782997

namespace A138431

/-- `A060800(n+1)*A138416(n+1)` -/
def P8627546980966782997.Spec : Prop :=
  ∀ n, P8627546980966782997.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P14883670099624760334

`A138452(n+1)/A000040(n+1)`
-/

namespace A138431.P14883670099624760334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138431.P14883670099624760334

namespace A138431

/-- `A138452(n+1)/A000040(n+1)` -/
def P14883670099624760334.Spec : Prop :=
  ∀ n, P14883670099624760334.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P8979272408453738517

`A138410(n+1)/A100484(n+1)`
-/

namespace A138431.P8979272408453738517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138431.P8979272408453738517

namespace A138431

/-- `A138410(n+1)/A100484(n+1)` -/
def P8979272408453738517.Spec : Prop :=
  ∀ n, P8979272408453738517.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P12012822509300876173

`lcm(A138416(n+1), A138417(n+1))`
-/

namespace A138431.P12012822509300876173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138416 (n + 1)) (A138417 (n + 1))

end

end A138431.P12012822509300876173

namespace A138431

/-- `lcm(A138416(n+1), A138417(n+1))` -/
def P12012822509300876173.Spec : Prop :=
  ∀ n, (P12012822509300876173.a n : ℤ) = A138431 (n + 1)

end A138431

/-! ## A138431.P12349125844320738754

`A138452(n+1)/sqrt(A001248(n+1))`
-/

namespace A138431.P12349125844320738754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A138431.P12349125844320738754

namespace A138431

/-- `A138452(n+1)/sqrt(A001248(n+1))` -/
def P12349125844320738754.Spec : Prop :=
  ∀ n, P12349125844320738754.a n = (A138431 (n + 1) : ℝ)

end A138431

/-! ## A138431.P11864778554147902942

`(A036690(n+1)+1)*A138416(n+1)`
-/

namespace A138431.P11864778554147902942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) + 1) * A138416 (n + 1)

end

end A138431.P11864778554147902942

namespace A138431

/-- `(A036690(n+1)+1)*A138416(n+1)` -/
def P11864778554147902942.Spec : Prop :=
  ∀ n, P11864778554147902942.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P5632281370023341179

`(A131991(n+1)-1)*A008837(n+1)`
-/

namespace A138431.P5632281370023341179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131991 (n + 1) - 1) * A008837 (n + 1)

end

end A138431.P5632281370023341179

namespace A138431

/-- `(A131991(n+1)-1)*A008837(n+1)` -/
def P5632281370023341179.Spec : Prop :=
  ∀ n, P5632281370023341179.a n = A138431 (n + 1)

end A138431

/-! ## A138431.P8249847611971475357

`(A135179(n+1)+A030078(n+1))/2`
-/

namespace A138431.P8249847611971475357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135179 (n + 1) + A030078 (n + 1) : ℚ) / 2

end

end A138431.P8249847611971475357

namespace A138431

/-- `(A135179(n+1)+A030078(n+1))/2` -/
def P8249847611971475357.Spec : Prop :=
  ∀ n, P8249847611971475357.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P7755014962416375984

`(A138406(n+1)+A135177(n+1))/2`
-/

namespace A138431.P7755014962416375984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) + A135177 (n + 1) : ℚ) / 2

end

end A138431.P7755014962416375984

namespace A138431

/-- `(A138406(n+1)+A135177(n+1))/2` -/
def P7755014962416375984.Spec : Prop :=
  ∀ n, P7755014962416375984.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P14279540386712631860

`(A138407(n+1)+A138402(n+1))/2`
-/

namespace A138431.P14279540386712631860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) + A138402 (n + 1) : ℚ) / 2

end

end A138431.P14279540386712631860

namespace A138431

/-- `(A138407(n+1)+A138402(n+1))/2` -/
def P14279540386712631860.Spec : Prop :=
  ∀ n, P14279540386712631860.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P1693646395152559906

`(A050997(n+1)-A001248(n+1))/2`
-/

namespace A138431.P1693646395152559906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - A001248 (n + 1) : ℚ) / 2

end

end A138431.P1693646395152559906

namespace A138431

/-- `(A050997(n+1)-A001248(n+1))/2` -/
def P1693646395152559906.Spec : Prop :=
  ∀ n, P1693646395152559906.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P6811289638327176950

`(A138404(n+1)-A036689(n+1))/2`
-/

namespace A138431.P6811289638327176950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) - A036689 (n + 1) : ℚ) / 2

end

end A138431.P6811289638327176950

namespace A138431

/-- `(A138404(n+1)-A036689(n+1))/2` -/
def P6811289638327176950.Spec : Prop :=
  ∀ n, P6811289638327176950.a n = (A138431 (n + 1) : ℚ)

end A138431

/-! ## A138431.P13056570239569691041

`(A138409(n+1)-A138412(n+1))/2`
-/

namespace A138431.P13056570239569691041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) - A138412 (n + 1) : ℚ) / 2

end

end A138431.P13056570239569691041

namespace A138431

/-- `(A138409(n+1)-A138412(n+1))/2` -/
def P13056570239569691041.Spec : Prop :=
  ∀ n, P13056570239569691041.a n = (A138431 (n + 1) : ℚ)

end A138431

/-!
# A138432: a(n) = ((n-th prime)^5-(n-th prime)^3)/2.

The programs for A138432, the canonical program `A138432.P6840818557510149970` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138432 has offset 1).

The definition of A138432 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138432.P6840818557510149970

`A138406(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138432

/-- `A138406(n+1)/2` -/
def P6840818557510149970.Spec : Prop :=
  ∀ n, P6840818557510149970.a n = (A138432 (n + 1) : ℚ)

end A138432

/-! ## A138432.P18330582007732584834

`2*A138434(n+1)`
-/

namespace A138432.P18330582007732584834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138434 (n + 1)

end

end A138432.P18330582007732584834

namespace A138432

/-- `2*A138434(n+1)` -/
def P18330582007732584834.Spec : Prop :=
  ∀ n, P18330582007732584834.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P15109493661669727875

`3*A138435(n+1)`
-/

namespace A138432.P15109493661669727875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138435 (n + 1)

end

end A138432.P15109493661669727875

namespace A138432

/-- `3*A138435(n+1)` -/
def P15109493661669727875.Spec : Prop :=
  ∀ n, P15109493661669727875.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P15828614410110070245

`4*A138436(n+1)`
-/

namespace A138432.P15828614410110070245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138436 (n + 1)

end

end A138432.P15828614410110070245

namespace A138432

/-- `4*A138436(n+1)` -/
def P15828614410110070245.Spec : Prop :=
  ∀ n, P15828614410110070245.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P6051559444449777922

`6*A138437(n+1)`
-/

namespace A138432.P6051559444449777922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138437 (n + 1)

end

end A138432.P6051559444449777922

namespace A138432

/-- `6*A138437(n+1)` -/
def P6051559444449777922.Spec : Prop :=
  ∀ n, P6051559444449777922.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P5083281826752349835

`3/2*A138433(n+1)`
-/

namespace A138432.P5083281826752349835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138433 (n + 1) : ℚ)

end

end A138432.P5083281826752349835

namespace A138432

/-- `3/2*A138433(n+1)` -/
def P5083281826752349835.Spec : Prop :=
  ∀ n, P5083281826752349835.a n = (A138432 (n + 1) : ℚ)

end A138432

/-! ## A138432.P15485352575199052546

`3*4*A138438(n+1)`
-/

namespace A138432.P15485352575199052546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A138438 (n + 1))

end

end A138432.P15485352575199052546

namespace A138432

/-- `3*4*A138438(n+1)` -/
def P15485352575199052546.Spec : Prop :=
  ∀ n, P15485352575199052546.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P16302214543059508295

`A138435(n+1)+A138433(n+1)`
-/

namespace A138432.P16302214543059508295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138435 (n + 1) + A138433 (n + 1)

end

end A138432.P16302214543059508295

namespace A138432

/-- `A138435(n+1)+A138433(n+1)` -/
def P16302214543059508295.Spec : Prop :=
  ∀ n, P16302214543059508295.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P12346308901899661015

`A138439(n+1)+A138423(n+1)`
-/

namespace A138432.P12346308901899661015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138439 (n + 1) + A138423 (n + 1)

end

end A138432.P12346308901899661015

namespace A138432

/-- `A138439(n+1)+A138423(n+1)` -/
def P12346308901899661015.Spec : Prop :=
  ∀ n, P12346308901899661015.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P17794956794311725524

`A138424(n+1)-A127918(n+1)`
-/

namespace A138432.P17794956794311725524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A127918 (n + 1)

end

end A138432.P17794956794311725524

namespace A138432

/-- `A138424(n+1)-A127918(n+1)` -/
def P17794956794311725524.Spec : Prop :=
  ∀ n, P17794956794311725524.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P12850396948264821673

`A138431(n+1)-A138416(n+1)`
-/

namespace A138432.P12850396948264821673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138431 (n + 1) - A138416 (n + 1)

end

end A138432.P12850396948264821673

namespace A138432

/-- `A138431(n+1)-A138416(n+1)` -/
def P12850396948264821673.Spec : Prop :=
  ∀ n, P12850396948264821673.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P16515215418512324139

`A138452(n+1)-A138460(n+1)`
-/

namespace A138432.P16515215418512324139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) - A138460 (n + 1)

end

end A138432.P16515215418512324139

namespace A138432

/-- `A138452(n+1)-A138460(n+1)` -/
def P16515215418512324139.Spec : Prop :=
  ∀ n, P16515215418512324139.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P7721916390677822994

`A001248(n+1)*A127918(n+1)`
-/

namespace A138432.P7721916390677822994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A127918 (n + 1)

end

end A138432.P7721916390677822994

namespace A138432

/-- `A001248(n+1)*A127918(n+1)` -/
def P7721916390677822994.Spec : Prop :=
  ∀ n, P7721916390677822994.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P11761415944056544451

`A000040(n+1)*A138418(n+1)`
-/

namespace A138432.P11761415944056544451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138418 (n + 1)

end

end A138432.P11761415944056544451

namespace A138432

/-- `A000040(n+1)*A138418(n+1)` -/
def P11761415944056544451.Spec : Prop :=
  ∀ n, P11761415944056544451.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P8197274855077729514

`A001748(n+1)*A138421(n+1)`
-/

namespace A138432.P8197274855077729514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138421 (n + 1)

end

end A138432.P8197274855077729514

namespace A138432

/-- `A001748(n+1)*A138421(n+1)` -/
def P8197274855077729514.Spec : Prop :=
  ∀ n, P8197274855077729514.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P2393349432630764785

`A008837(n+1)*A135178(n+1)`
-/

namespace A138432.P2393349432630764785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A135178 (n + 1)

end

end A138432.P2393349432630764785

namespace A138432

/-- `A008837(n+1)*A135178(n+1)` -/
def P2393349432630764785.Spec : Prop :=
  ∀ n, P2393349432630764785.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P12077514763620408193

`A008864(n+1)*A138423(n+1)`
-/

namespace A138432.P12077514763620408193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A138423 (n + 1)

end

end A138432.P12077514763620408193

namespace A138432

/-- `A008864(n+1)*A138423(n+1)` -/
def P12077514763620408193.Spec : Prop :=
  ∀ n, P12077514763620408193.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P4630836423561270377

`A034953(n+1)*A135177(n+1)`
-/

namespace A138432.P4630836423561270377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A135177 (n + 1)

end

end A138432.P4630836423561270377

namespace A138432

/-- `A034953(n+1)*A135177(n+1)` -/
def P4630836423561270377.Spec : Prop :=
  ∀ n, P4630836423561270377.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P9521616786622902901

`A036690(n+1)*A138416(n+1)`
-/

namespace A138432.P9521616786622902901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A138416 (n + 1)

end

end A138432.P9521616786622902901

namespace A138432

/-- `A036690(n+1)*A138416(n+1)` -/
def P9521616786622902901.Spec : Prop :=
  ∀ n, P9521616786622902901.a n = A138432 (n + 1)

end A138432

/-! ## A138432.P16137106714675746768

`A079705(n+1)*A127920(n+1)`
-/

namespace A138432.P16137106714675746768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) * A127920 (n + 1)

end

end A138432.P16137106714675746768

namespace A138432

/-- `A079705(n+1)*A127920(n+1)` -/
def P16137106714675746768.Spec : Prop :=
  ∀ n, P16137106714675746768.a n = A138432 (n + 1)

end A138432

/-!
# A138433: a(n) = ((n-th prime)^5-(n-th prime)^3)/3.

The programs for A138433, the canonical program `A138433.P5772360468710814788` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138433 has offset 1).

The definition of A138433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138433.P5772360468710814788

`A138406(n+1)/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138433

/-- `A138406(n+1)/3` -/
def P5772360468710814788.Spec : Prop :=
  ∀ n, P5772360468710814788.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P7966521443062007260

`2*A138435(n+1)`
-/

namespace A138433.P7966521443062007260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138435 (n + 1)

end

end A138433.P7966521443062007260

namespace A138433

/-- `2*A138435(n+1)` -/
def P7966521443062007260.Spec : Prop :=
  ∀ n, P7966521443062007260.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P18336183528487658350

`4*A138437(n+1)`
-/

namespace A138433.P18336183528487658350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138437 (n + 1)

end

end A138433.P18336183528487658350

namespace A138433

/-- `4*A138437(n+1)` -/
def P18336183528487658350.Spec : Prop :=
  ∀ n, P18336183528487658350.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P15666434082197701940

`8*A138438(n+1)`
-/

namespace A138433.P15666434082197701940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A138438 (n + 1)

end

end A138433.P15666434082197701940

namespace A138433

/-- `8*A138438(n+1)` -/
def P15666434082197701940.Spec : Prop :=
  ∀ n, P15666434082197701940.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P10575440926921300143

`2/3*A138432(n+1)`
-/

namespace A138433.P10575440926921300143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138432 (n + 1) : ℚ)

end

end A138433.P10575440926921300143

namespace A138433

/-- `2/3*A138432(n+1)` -/
def P10575440926921300143.Spec : Prop :=
  ∀ n, P10575440926921300143.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P3275855234154407431

`4/3*A138434(n+1)`
-/

namespace A138433.P3275855234154407431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138434 (n + 1) : ℚ)

end

end A138433.P3275855234154407431

namespace A138433

/-- `4/3*A138434(n+1)` -/
def P3275855234154407431.Spec : Prop :=
  ∀ n, P3275855234154407431.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P699571382988426966

`A138437(n+1)+A138434(n+1)`
-/

namespace A138433.P699571382988426966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138437 (n + 1) + A138434 (n + 1)

end

end A138433.P699571382988426966

namespace A138433

/-- `A138437(n+1)+A138434(n+1)` -/
def P699571382988426966.Spec : Prop :=
  ∀ n, P699571382988426966.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P7800491125841666730

`A138425(n+1)-A127919(n+1)`
-/

namespace A138433.P7800491125841666730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138425 (n + 1) - A127919 (n + 1)

end

end A138433.P7800491125841666730

namespace A138433

/-- `A138425(n+1)-A127919(n+1)` -/
def P7800491125841666730.Spec : Prop :=
  ∀ n, P7800491125841666730.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P10495170808039053956

`A138432(n+1)-A138435(n+1)`
-/

namespace A138433.P10495170808039053956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) - A138435 (n + 1)

end

end A138433.P10495170808039053956

namespace A138433

/-- `A138432(n+1)-A138435(n+1)` -/
def P10495170808039053956.Spec : Prop :=
  ∀ n, P10495170808039053956.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P5724674116414721210

`A001248(n+1)*A127919(n+1)`
-/

namespace A138433.P5724674116414721210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A127919 (n + 1)

end

end A138433.P5724674116414721210

namespace A138433

/-- `A001248(n+1)*A127919(n+1)` -/
def P5724674116414721210.Spec : Prop :=
  ∀ n, P5724674116414721210.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P17891909206336379591

`A000040(n+1)*A138419(n+1)`
-/

namespace A138433.P17891909206336379591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138419 (n + 1)

end

end A138433.P17891909206336379591

namespace A138433

/-- `A000040(n+1)*A138419(n+1)` -/
def P17891909206336379591.Spec : Prop :=
  ∀ n, P17891909206336379591.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P16242641895553153520

`A001749(n+1)*A138422(n+1)`
-/

namespace A138433.P16242641895553153520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138422 (n + 1)

end

end A138433.P16242641895553153520

namespace A138433

/-- `A001749(n+1)*A138422(n+1)` -/
def P16242641895553153520.Spec : Prop :=
  ∀ n, P16242641895553153520.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P11574088004193463761

`A079704(n+1)*A127920(n+1)`
-/

namespace A138433.P11574088004193463761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A127920 (n + 1)

end

end A138433.P11574088004193463761

namespace A138433

/-- `A079704(n+1)*A127920(n+1)` -/
def P11574088004193463761.Spec : Prop :=
  ∀ n, P11574088004193463761.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P14848442072997308996

`A100484(n+1)*A138421(n+1)`
-/

namespace A138433.P14848442072997308996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138421 (n + 1)

end

end A138433.P14848442072997308996

namespace A138433

/-- `A100484(n+1)*A138421(n+1)` -/
def P14848442072997308996.Spec : Prop :=
  ∀ n, P14848442072997308996.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P6550459002952883167

`A138454(n+1)/A000040(n+1)`
-/

namespace A138433.P6550459002952883167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138433.P6550459002952883167

namespace A138433

/-- `A138454(n+1)/A000040(n+1)` -/
def P6550459002952883167.Spec : Prop :=
  ∀ n, P6550459002952883167.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P5533956709635886459

`A138411(n+1)/A001748(n+1)`
-/

namespace A138433.P5533956709635886459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138433.P5533956709635886459

namespace A138433

/-- `A138411(n+1)/A001748(n+1)` -/
def P5533956709635886459.Spec : Prop :=
  ∀ n, P5533956709635886459.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P9325288458041888136

`A000040(n+1)²*A127919(n+1)`
-/

namespace A138433.P9325288458041888136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A127919 (n + 1)

end

end A138433.P9325288458041888136

namespace A138433

/-- `A000040(n+1)²*A127919(n+1)` -/
def P9325288458041888136.Spec : Prop :=
  ∀ n, P9325288458041888136.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P7714686467447904329

`A138435(n+1)²/A138437(n+1)`
-/

namespace A138433.P7714686467447904329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) ^ 2 : ℚ) / (A138437 (n + 1) : ℚ)

end

end A138433.P7714686467447904329

namespace A138433

/-- `A138435(n+1)²/A138437(n+1)` -/
def P7714686467447904329.Spec : Prop :=
  ∀ n, P7714686467447904329.a n = (A138433 (n + 1) : ℚ)

end A138433

/-! ## A138433.P8131163079917995300

`(A066872(n+1)-1)*A127919(n+1)`
-/

namespace A138433.P8131163079917995300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) - 1) * A127919 (n + 1)

end

end A138433.P8131163079917995300

namespace A138433

/-- `(A066872(n+1)-1)*A127919(n+1)` -/
def P8131163079917995300.Spec : Prop :=
  ∀ n, P8131163079917995300.a n = A138433 (n + 1)

end A138433

/-! ## A138433.P2157888110848509211

`2*(A138427(n+1)-A127920(n+1))`
-/

namespace A138433.P2157888110848509211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138427 (n + 1) - A127920 (n + 1))

end

end A138433.P2157888110848509211

namespace A138433

/-- `2*(A138427(n+1)-A127920(n+1))` -/
def P2157888110848509211.Spec : Prop :=
  ∀ n, P2157888110848509211.a n = A138433 (n + 1)

end A138433

/-!
# A138434: a(n) = ((n-th prime)^5-(n-th prime)^3)/4.

The programs for A138434, the canonical program `A138434.P7976038697840491430` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138434 has offset 1).

The definition of A138434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138434.P7976038697840491430

`A138406(n+1)/4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138434

/-- `A138406(n+1)/4` -/
def P7976038697840491430.Spec : Prop :=
  ∀ n, P7976038697840491430.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P3689314530271682610

`2*A138436(n+1)`
-/

namespace A138434.P3689314530271682610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138436 (n + 1)

end

end A138434.P3689314530271682610

namespace A138434

/-- `2*A138436(n+1)` -/
def P3689314530271682610.Spec : Prop :=
  ∀ n, P3689314530271682610.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P1297286226311299991

`A138432(n+1)/2`
-/

namespace A138434.P1297286226311299991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / 2

end

end A138434.P1297286226311299991

namespace A138434

/-- `A138432(n+1)/2` -/
def P1297286226311299991.Spec : Prop :=
  ∀ n, P1297286226311299991.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P9688175437997823392

`3*A138437(n+1)`
-/

namespace A138434.P9688175437997823392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138437 (n + 1)

end

end A138434.P9688175437997823392

namespace A138434

/-- `3*A138437(n+1)` -/
def P9688175437997823392.Spec : Prop :=
  ∀ n, P9688175437997823392.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P319802319448159608

`6*A138438(n+1)`
-/

namespace A138434.P319802319448159608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138438 (n + 1)

end

end A138434.P319802319448159608

namespace A138434

/-- `6*A138438(n+1)` -/
def P319802319448159608.Spec : Prop :=
  ∀ n, P319802319448159608.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P11949621181420854615

`3/2*A138435(n+1)`
-/

namespace A138434.P11949621181420854615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138435 (n + 1) : ℚ)

end

end A138434.P11949621181420854615

namespace A138434

/-- `3/2*A138435(n+1)` -/
def P11949621181420854615.Spec : Prop :=
  ∀ n, P11949621181420854615.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P17264646066144120194

`3/4*A138433(n+1)`
-/

namespace A138434.P17264646066144120194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138433 (n + 1) : ℚ)

end

end A138434.P17264646066144120194

namespace A138434

/-- `3/4*A138433(n+1)` -/
def P17264646066144120194.Spec : Prop :=
  ∀ n, P17264646066144120194.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P3463207771589017179

`A138437(n+1)+A138435(n+1)`
-/

namespace A138434.P3463207771589017179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138437 (n + 1) + A138435 (n + 1)

end

end A138434.P3463207771589017179

namespace A138434

/-- `A138437(n+1)+A138435(n+1)` -/
def P3463207771589017179.Spec : Prop :=
  ∀ n, P3463207771589017179.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P14566727871276466432

`A138433(n+1)-A138437(n+1)`
-/

namespace A138434.P14566727871276466432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138433 (n + 1) - A138437 (n + 1)

end

end A138434.P14566727871276466432

namespace A138434

/-- `A138433(n+1)-A138437(n+1)` -/
def P14566727871276466432.Spec : Prop :=
  ∀ n, P14566727871276466432.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P7603055250140439067

`A000040(n+1)*A138420(n+1)`
-/

namespace A138434.P7603055250140439067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138420 (n + 1)

end

end A138434.P7603055250140439067

namespace A138434

/-- `A000040(n+1)*A138420(n+1)` -/
def P7603055250140439067.Spec : Prop :=
  ∀ n, P7603055250140439067.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P14175147379466251424

`A001748(n+1)*A138422(n+1)`
-/

namespace A138434.P14175147379466251424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138422 (n + 1)

end

end A138434.P14175147379466251424

namespace A138434

/-- `A001748(n+1)*A138422(n+1)` -/
def P14175147379466251424.Spec : Prop :=
  ∀ n, P14175147379466251424.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P6455924553135857426

`A034953(n+1)*A138416(n+1)`
-/

namespace A138434.P6455924553135857426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A138416 (n + 1)

end

end A138434.P6455924553135857426

namespace A138434

/-- `A034953(n+1)*A138416(n+1)` -/
def P6455924553135857426.Spec : Prop :=
  ∀ n, P6455924553135857426.a n = A138434 (n + 1)

end A138434

/-! ## A138434.P16631398288132379900

`A138455(n+1)/A000040(n+1)`
-/

namespace A138434.P16631398288132379900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138434.P16631398288132379900

namespace A138434

/-- `A138455(n+1)/A000040(n+1)` -/
def P16631398288132379900.Spec : Prop :=
  ∀ n, P16631398288132379900.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P12964465462023348196

`A138411(n+1)/A001749(n+1)`
-/

namespace A138434.P12964465462023348196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138434.P12964465462023348196

namespace A138434

/-- `A138411(n+1)/A001749(n+1)` -/
def P12964465462023348196.Spec : Prop :=
  ∀ n, P12964465462023348196.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P14245277294689056809

`A138453(n+1)/A100484(n+1)`
-/

namespace A138434.P14245277294689056809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138434.P14245277294689056809

namespace A138434

/-- `A138453(n+1)/A100484(n+1)` -/
def P14245277294689056809.Spec : Prop :=
  ∀ n, P14245277294689056809.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P2126284368522385071

`lcm(A138436(n+1), A138437(n+1))`
-/

namespace A138434.P2126284368522385071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138436 (n + 1)) (A138437 (n + 1))

end

end A138434.P2126284368522385071

namespace A138434

/-- `lcm(A138436(n+1), A138437(n+1))` -/
def P2126284368522385071.Spec : Prop :=
  ∀ n, (P2126284368522385071.a n : ℤ) = A138434 (n + 1)

end A138434

/-! ## A138434.P3302751188938033463

`A138418(n+1)²/A127917(n+1)`
-/

namespace A138434.P3302751188938033463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) ^ 2 : ℚ) / (A127917 (n + 1) : ℚ)

end

end A138434.P3302751188938033463

namespace A138434

/-- `A138418(n+1)²/A127917(n+1)` -/
def P3302751188938033463.Spec : Prop :=
  ∀ n, P3302751188938033463.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P6817078522407516089

`(A138435(n+1)+A138433(n+1))/2`
-/

namespace A138434.P6817078522407516089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) + A138433 (n + 1) : ℚ) / 2

end

end A138434.P6817078522407516089

namespace A138434

/-- `(A138435(n+1)+A138433(n+1))/2` -/
def P6817078522407516089.Spec : Prop :=
  ∀ n, P6817078522407516089.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P7650548884378211413

`(A138439(n+1)+A138423(n+1))/2`
-/

namespace A138434.P7650548884378211413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138439 (n + 1) + A138423 (n + 1) : ℚ) / 2

end

end A138434.P7650548884378211413

namespace A138434

/-- `(A138439(n+1)+A138423(n+1))/2` -/
def P7650548884378211413.Spec : Prop :=
  ∀ n, P7650548884378211413.a n = (A138434 (n + 1) : ℚ)

end A138434

/-! ## A138434.P15719762655610099546

`(A138424(n+1)-A127918(n+1))/2`
-/

namespace A138434.P15719762655610099546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) - A127918 (n + 1) : ℚ) / 2

end

end A138434.P15719762655610099546

namespace A138434

/-- `(A138424(n+1)-A127918(n+1))/2` -/
def P15719762655610099546.Spec : Prop :=
  ∀ n, P15719762655610099546.a n = (A138434 (n + 1) : ℚ)

end A138434

/-!
# A138435: a(n) = ((n-th prime)^5-(n-th prime)^3)/6.

The programs for A138435, the canonical program `A138435.P16662900395581282620` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138435 has offset 1).

The definition of A138435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138435.P16662900395581282620

`A138406(n+1)/6`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138435

/-- `A138406(n+1)/6` -/
def P16662900395581282620.Spec : Prop :=
  ∀ n, P16662900395581282620.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P695621216281020468

`2*A138437(n+1)`
-/

namespace A138435.P695621216281020468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138437 (n + 1)

end

end A138435.P695621216281020468

namespace A138435

/-- `2*A138437(n+1)` -/
def P695621216281020468.Spec : Prop :=
  ∀ n, P695621216281020468.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P16238391913362460258

`A138433(n+1)/2`
-/

namespace A138435.P16238391913362460258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / 2

end

end A138435.P16238391913362460258

namespace A138435

/-- `A138433(n+1)/2` -/
def P16238391913362460258.Spec : Prop :=
  ∀ n, P16238391913362460258.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P3457693633783141537

`A138432(n+1)/3`
-/

namespace A138435.P3457693633783141537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / 3

end

end A138435.P3457693633783141537

namespace A138435

/-- `A138432(n+1)/3` -/
def P3457693633783141537.Spec : Prop :=
  ∀ n, P3457693633783141537.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P9803756540588323510

`4*A138438(n+1)`
-/

namespace A138435.P9803756540588323510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138438 (n + 1)

end

end A138435.P9803756540588323510

namespace A138435

/-- `4*A138438(n+1)` -/
def P9803756540588323510.Spec : Prop :=
  ∀ n, P9803756540588323510.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P2018519032777350686

`2/3*A138434(n+1)`
-/

namespace A138435.P2018519032777350686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138434 (n + 1) : ℚ)

end

end A138435.P2018519032777350686

namespace A138435

/-- `2/3*A138434(n+1)` -/
def P2018519032777350686.Spec : Prop :=
  ∀ n, P2018519032777350686.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P1485909249494565359

`4/3*A138436(n+1)`
-/

namespace A138435.P1485909249494565359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138436 (n + 1) : ℚ)

end

end A138435.P1485909249494565359

namespace A138435

/-- `4/3*A138436(n+1)` -/
def P1485909249494565359.Spec : Prop :=
  ∀ n, P1485909249494565359.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P18380389772829890912

`A138438(n+1)+A138436(n+1)`
-/

namespace A138435.P18380389772829890912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138438 (n + 1) + A138436 (n + 1)

end

end A138435.P18380389772829890912

namespace A138435

/-- `A138438(n+1)+A138436(n+1)` -/
def P18380389772829890912.Spec : Prop :=
  ∀ n, P18380389772829890912.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P16672384996535970578

`A138427(n+1)-A127920(n+1)`
-/

namespace A138435.P16672384996535970578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) - A127920 (n + 1)

end

end A138435.P16672384996535970578

namespace A138435

/-- `A138427(n+1)-A127920(n+1)` -/
def P16672384996535970578.Spec : Prop :=
  ∀ n, P16672384996535970578.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P7244161446235521665

`A138432(n+1)-A138433(n+1)`
-/

namespace A138435.P7244161446235521665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) - A138433 (n + 1)

end

end A138435.P7244161446235521665

namespace A138435

/-- `A138432(n+1)-A138433(n+1)` -/
def P7244161446235521665.Spec : Prop :=
  ∀ n, P7244161446235521665.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P7263618464830664850

`A138434(n+1)-A138437(n+1)`
-/

namespace A138435.P7263618464830664850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138434 (n + 1) - A138437 (n + 1)

end

end A138435.P7263618464830664850

namespace A138435

/-- `A138434(n+1)-A138437(n+1)` -/
def P7263618464830664850.Spec : Prop :=
  ∀ n, P7263618464830664850.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P6913817399570307035

`A001248(n+1)*A127920(n+1)`
-/

namespace A138435.P6913817399570307035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A127920 (n + 1)

end

end A138435.P6913817399570307035

namespace A138435

/-- `A001248(n+1)*A127920(n+1)` -/
def P6913817399570307035.Spec : Prop :=
  ∀ n, P6913817399570307035.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P2428651558965916086

`A000040(n+1)*A138421(n+1)`
-/

namespace A138435.P2428651558965916086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138421 (n + 1)

end

end A138435.P2428651558965916086

namespace A138435

/-- `A000040(n+1)*A138421(n+1)` -/
def P2428651558965916086.Spec : Prop :=
  ∀ n, P2428651558965916086.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P18315150096241109642

`A100484(n+1)*A138422(n+1)`
-/

namespace A138435.P18315150096241109642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138422 (n + 1)

end

end A138435.P18315150096241109642

namespace A138435

/-- `A100484(n+1)*A138422(n+1)` -/
def P18315150096241109642.Spec : Prop :=
  ∀ n, P18315150096241109642.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P12796673803239590855

`A138456(n+1)/A000040(n+1)`
-/

namespace A138435.P12796673803239590855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138435.P12796673803239590855

namespace A138435

/-- `A138456(n+1)/A000040(n+1)` -/
def P12796673803239590855.Spec : Prop :=
  ∀ n, P12796673803239590855.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P9590462557356295474

`A138453(n+1)/A001748(n+1)`
-/

namespace A138435.P9590462557356295474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138435.P9590462557356295474

namespace A138435

/-- `A138453(n+1)/A001748(n+1)` -/
def P9590462557356295474.Spec : Prop :=
  ∀ n, P9590462557356295474.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P9112559953125902273

`A138454(n+1)/A100484(n+1)`
-/

namespace A138435.P9112559953125902273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138435.P9112559953125902273

namespace A138435

/-- `A138454(n+1)/A100484(n+1)` -/
def P9112559953125902273.Spec : Prop :=
  ∀ n, P9112559953125902273.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P12065648948904871563

`A138411(n+1)/A138636(n+1)`
-/

namespace A138435.P12065648948904871563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138435.P12065648948904871563

namespace A138435

/-- `A138411(n+1)/A138636(n+1)` -/
def P12065648948904871563.Spec : Prop :=
  ∀ n, P12065648948904871563.a n = (A138435 (n + 1) : ℚ)

end A138435

/-! ## A138435.P8118968893957155705

`A253655(n+1)%A138427(n+1)`
-/

namespace A138435.P8118968893957155705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253655 (n + 1)) (A138427 (n + 1))

end

end A138435.P8118968893957155705

namespace A138435

/-- `A253655(n+1)%A138427(n+1)` -/
def P8118968893957155705.Spec : Prop :=
  ∀ n, P8118968893957155705.a n = A138435 (n + 1)

end A138435

/-! ## A138435.P2486892806077364321

`A000040(n+1)²*A127920(n+1)`
-/

namespace A138435.P2486892806077364321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A127920 (n + 1)

end

end A138435.P2486892806077364321

namespace A138435

/-- `A000040(n+1)²*A127920(n+1)` -/
def P2486892806077364321.Spec : Prop :=
  ∀ n, P2486892806077364321.a n = A138435 (n + 1)

end A138435

/-!
# A138436: a(n) = ((n-th prime)^5-(n-th prime)^3)/8.

The programs for A138436, the canonical program `A138436.P8959698969068807926` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138436 has offset 1).

The definition of A138436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138436.P8959698969068807926

`A138406(n+1)/8`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138436

/-- `A138406(n+1)/8` -/
def P8959698969068807926.Spec : Prop :=
  ∀ n, P8959698969068807926.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P17900767894170228374

`A138434(n+1)/2`
-/

namespace A138436.P17900767894170228374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / 2

end

end A138436.P17900767894170228374

namespace A138436

/-- `A138434(n+1)/2` -/
def P17900767894170228374.Spec : Prop :=
  ∀ n, P17900767894170228374.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P2900087793646505560

`3*A138438(n+1)`
-/

namespace A138436.P2900087793646505560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138438 (n + 1)

end

end A138436.P2900087793646505560

namespace A138436

/-- `3*A138438(n+1)` -/
def P2900087793646505560.Spec : Prop :=
  ∀ n, P2900087793646505560.a n = A138436 (n + 1)

end A138436

/-! ## A138436.P16202510119430456349

`A138432(n+1)/4`
-/

namespace A138436.P16202510119430456349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / 4

end

end A138436.P16202510119430456349

namespace A138436

/-- `A138432(n+1)/4` -/
def P16202510119430456349.Spec : Prop :=
  ∀ n, P16202510119430456349.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P5276417613118115333

`3/2*A138437(n+1)`
-/

namespace A138436.P5276417613118115333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138437 (n + 1) : ℚ)

end

end A138436.P5276417613118115333

namespace A138436

/-- `3/2*A138437(n+1)` -/
def P5276417613118115333.Spec : Prop :=
  ∀ n, P5276417613118115333.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P5158890413961162116

`3/4*A138435(n+1)`
-/

namespace A138436.P5158890413961162116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138435 (n + 1) : ℚ)

end

end A138436.P5158890413961162116

namespace A138436

/-- `3/4*A138435(n+1)` -/
def P5158890413961162116.Spec : Prop :=
  ∀ n, P5158890413961162116.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P2214670138691681506

`A138438(n+1)+A138437(n+1)`
-/

namespace A138436.P2214670138691681506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138438 (n + 1) + A138437 (n + 1)

end

end A138436.P2214670138691681506

namespace A138436

/-- `A138438(n+1)+A138437(n+1)` -/
def P2214670138691681506.Spec : Prop :=
  ∀ n, P2214670138691681506.a n = A138436 (n + 1)

end A138436

/-! ## A138436.P16151774186035184987

`A138435(n+1)-A138438(n+1)`
-/

namespace A138436.P16151774186035184987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138435 (n + 1) - A138438 (n + 1)

end

end A138436.P16151774186035184987

namespace A138436

/-- `A138435(n+1)-A138438(n+1)` -/
def P16151774186035184987.Spec : Prop :=
  ∀ n, P16151774186035184987.a n = A138436 (n + 1)

end A138436

/-! ## A138436.P3930948483521608962

`A138457(n+1)/A000040(n+1)`
-/

namespace A138436.P3930948483521608962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138457 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138436.P3930948483521608962

namespace A138436

/-- `A138457(n+1)/A000040(n+1)` -/
def P3930948483521608962.Spec : Prop :=
  ∀ n, P3930948483521608962.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P353505853238670966

`A138453(n+1)/A001749(n+1)`
-/

namespace A138436.P353505853238670966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138436.P353505853238670966

namespace A138436

/-- `A138453(n+1)/A001749(n+1)` -/
def P353505853238670966.Spec : Prop :=
  ∀ n, P353505853238670966.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P4011113159636731521

`A138455(n+1)/A100484(n+1)`
-/

namespace A138436.P4011113159636731521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138436.P4011113159636731521

namespace A138436

/-- `A138455(n+1)/A100484(n+1)` -/
def P4011113159636731521.Spec : Prop :=
  ∀ n, P4011113159636731521.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P1386597359953996494

`A138457(n+1)/sqrt(A001248(n+1))`
-/

namespace A138436.P1386597359953996494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138457 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A138436.P1386597359953996494

namespace A138436

/-- `A138457(n+1)/sqrt(A001248(n+1))` -/
def P1386597359953996494.Spec : Prop :=
  ∀ n, P1386597359953996494.a n = (A138436 (n + 1) : ℝ)

end A138436

/-! ## A138436.P6909349496868414200

`A138457(n+1)/(A040976(n+1)+2)`
-/

namespace A138436.P6909349496868414200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138457 (n + 1) : ℚ) / (A040976 (n + 1) + 2 : ℚ)

end

end A138436.P6909349496868414200

namespace A138436

/-- `A138457(n+1)/(A040976(n+1)+2)` -/
def P6909349496868414200.Spec : Prop :=
  ∀ n, P6909349496868414200.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P9209679143848595060

`(A138437(n+1)+A138435(n+1))/2`
-/

namespace A138436.P9209679143848595060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 1) + A138435 (n + 1) : ℚ) / 2

end

end A138436.P9209679143848595060

namespace A138436

/-- `(A138437(n+1)+A138435(n+1))/2` -/
def P9209679143848595060.Spec : Prop :=
  ∀ n, P9209679143848595060.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P14885562500183513012

`A138433(n+1)/2-A138438(n+1)`
-/

namespace A138436.P14885562500183513012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / 2 - (A138438 (n + 1) : ℚ)

end

end A138436.P14885562500183513012

namespace A138436

/-- `A138433(n+1)/2-A138438(n+1)` -/
def P14885562500183513012.Spec : Prop :=
  ∀ n, P14885562500183513012.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P5382234541564661156

`A000040(n+1)/2*A138420(n+1)`
-/

namespace A138436.P5382234541564661156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A138420 (n + 1) : ℚ)

end

end A138436.P5382234541564661156

namespace A138436

/-- `A000040(n+1)/2*A138420(n+1)` -/
def P5382234541564661156.Spec : Prop :=
  ∀ n, P5382234541564661156.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P16555079039402745642

`A138455(n+1)/(2*A000040(n+1))`
-/

namespace A138436.P16555079039402745642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (2 * A000040 (n + 1) : ℚ)

end

end A138436.P16555079039402745642

namespace A138436

/-- `A138455(n+1)/(2*A000040(n+1))` -/
def P16555079039402745642.Spec : Prop :=
  ∀ n, P16555079039402745642.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P14483447580482487918

`A138411(n+1)/(2*A001749(n+1))`
-/

namespace A138436.P14483447580482487918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (2 * A001749 (n + 1) : ℚ)

end

end A138436.P14483447580482487918

namespace A138436

/-- `A138411(n+1)/(2*A001749(n+1))` -/
def P14483447580482487918.Spec : Prop :=
  ∀ n, P14483447580482487918.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P3591847154988438587

`A001748(n+1)/2*A138422(n+1)`
-/

namespace A138436.P3591847154988438587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 2 * (A138422 (n + 1) : ℚ)

end

end A138436.P3591847154988438587

namespace A138436

/-- `A001748(n+1)/2*A138422(n+1)` -/
def P3591847154988438587.Spec : Prop :=
  ∀ n, P3591847154988438587.a n = (A138436 (n + 1) : ℚ)

end A138436

/-! ## A138436.P5187792068698062438

`A034953(n+1)/2*A138416(n+1)`
-/

namespace A138436.P5187792068698062438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034953 (n + 1) : ℚ) / 2 * (A138416 (n + 1) : ℚ)

end

end A138436.P5187792068698062438

namespace A138436

/-- `A034953(n+1)/2*A138416(n+1)` -/
def P5187792068698062438.Spec : Prop :=
  ∀ n, P5187792068698062438.a n = (A138436 (n + 1) : ℚ)

end A138436

/-!
# A138437: a(n) = ((n-th prime)^5-(n-th prime)^3)/12.

The programs for A138437, the canonical program `A138437.P12080558741332099424` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138437 has offset 1).

The definition of A138437 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138437.P12080558741332099424

`A138406(n+1)/12`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138437

/-- `A138406(n+1)/12` -/
def P12080558741332099424.Spec : Prop :=
  ∀ n, P12080558741332099424.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P10632098827869854178

`2*A138438(n+1)`
-/

namespace A138437.P10632098827869854178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138438 (n + 1)

end

end A138437.P10632098827869854178

namespace A138437

/-- `2*A138438(n+1)` -/
def P10632098827869854178.Spec : Prop :=
  ∀ n, P10632098827869854178.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P12934818222774263062

`A138435(n+1)/2`
-/

namespace A138437.P12934818222774263062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) : ℚ) / 2

end

end A138437.P12934818222774263062

namespace A138437

/-- `A138435(n+1)/2` -/
def P12934818222774263062.Spec : Prop :=
  ∀ n, P12934818222774263062.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P12168361282856418804

`A138434(n+1)/3`
-/

namespace A138437.P12168361282856418804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / 3

end

end A138437.P12168361282856418804

namespace A138437

/-- `A138434(n+1)/3` -/
def P12168361282856418804.Spec : Prop :=
  ∀ n, P12168361282856418804.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P4025120072304215885

`A138433(n+1)/4`
-/

namespace A138437.P4025120072304215885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / 4

end

end A138437.P4025120072304215885

namespace A138437

/-- `A138433(n+1)/4` -/
def P4025120072304215885.Spec : Prop :=
  ∀ n, P4025120072304215885.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P4224353487363351903

`A138432(n+1)/6`
-/

namespace A138437.P4224353487363351903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / 6

end

end A138437.P4224353487363351903

namespace A138437

/-- `A138432(n+1)/6` -/
def P4224353487363351903.Spec : Prop :=
  ∀ n, P4224353487363351903.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P7937768251408685181

`2/3*A138436(n+1)`
-/

namespace A138437.P7937768251408685181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138436 (n + 1) : ℚ)

end

end A138437.P7937768251408685181

namespace A138437

/-- `2/3*A138436(n+1)` -/
def P7937768251408685181.Spec : Prop :=
  ∀ n, P7937768251408685181.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P16090900600891295309

`A138433(n+1)-A138434(n+1)`
-/

namespace A138437.P16090900600891295309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138433 (n + 1) - A138434 (n + 1)

end

end A138437.P16090900600891295309

namespace A138437

/-- `A138433(n+1)-A138434(n+1)` -/
def P16090900600891295309.Spec : Prop :=
  ∀ n, P16090900600891295309.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P11305755449204502959

`A138434(n+1)-A138435(n+1)`
-/

namespace A138437.P11305755449204502959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138434 (n + 1) - A138435 (n + 1)

end

end A138437.P11305755449204502959

namespace A138437

/-- `A138434(n+1)-A138435(n+1)` -/
def P11305755449204502959.Spec : Prop :=
  ∀ n, P11305755449204502959.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P18207969819019926486

`A138436(n+1)-A138438(n+1)`
-/

namespace A138437.P18207969819019926486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138436 (n + 1) - A138438 (n + 1)

end

end A138437.P18207969819019926486

namespace A138437

/-- `A138436(n+1)-A138438(n+1)` -/
def P18207969819019926486.Spec : Prop :=
  ∀ n, P18207969819019926486.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P2249439457381841552

`A000040(n+1)*A138422(n+1)`
-/

namespace A138437.P2249439457381841552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138422 (n + 1)

end

end A138437.P2249439457381841552

namespace A138437

/-- `A000040(n+1)*A138422(n+1)` -/
def P2249439457381841552.Spec : Prop :=
  ∀ n, P2249439457381841552.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P2990045972975003306

`A138459(n+1)/A000040(n+1)`
-/

namespace A138437.P2990045972975003306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138437.P2990045972975003306

namespace A138437

/-- `A138459(n+1)/A000040(n+1)` -/
def P2990045972975003306.Spec : Prop :=
  ∀ n, P2990045972975003306.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P13666709293716705134

`A138454(n+1)/A001749(n+1)`
-/

namespace A138437.P13666709293716705134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138437.P13666709293716705134

namespace A138437

/-- `A138454(n+1)/A001749(n+1)` -/
def P13666709293716705134.Spec : Prop :=
  ∀ n, P13666709293716705134.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P6930811528279297545

`A138455(n+1)/A001748(n+1)`
-/

namespace A138437.P6930811528279297545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138437.P6930811528279297545

namespace A138437

/-- `A138455(n+1)/A001748(n+1)` -/
def P6930811528279297545.Spec : Prop :=
  ∀ n, P6930811528279297545.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P5580211568840806865

`A138456(n+1)/A100484(n+1)`
-/

namespace A138437.P5580211568840806865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138437.P5580211568840806865

namespace A138437

/-- `A138456(n+1)/A100484(n+1)` -/
def P5580211568840806865.Spec : Prop :=
  ∀ n, P5580211568840806865.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P7527431857922688881

`A138453(n+1)/A138636(n+1)`
-/

namespace A138437.P7527431857922688881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138437.P7527431857922688881

namespace A138437

/-- `A138453(n+1)/A138636(n+1)` -/
def P7527431857922688881.Spec : Prop :=
  ∀ n, P7527431857922688881.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P13515469827524029317

`A138421(n+1)²/A127919(n+1)`
-/

namespace A138437.P13515469827524029317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 1) ^ 2 : ℚ) / (A127919 (n + 1) : ℚ)

end

end A138437.P13515469827524029317

namespace A138437

/-- `A138421(n+1)²/A127919(n+1)` -/
def P13515469827524029317.Spec : Prop :=
  ∀ n, P13515469827524029317.a n = (A138437 (n + 1) : ℚ)

end A138437

/-! ## A138437.P9091618026011506071

`2*(A138435(n+1)-A138436(n+1))`
-/

namespace A138437.P9091618026011506071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138435 (n + 1) - A138436 (n + 1))

end

end A138437.P9091618026011506071

namespace A138437

/-- `2*(A138435(n+1)-A138436(n+1))` -/
def P9091618026011506071.Spec : Prop :=
  ∀ n, P9091618026011506071.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P8582695146045736137

`A138433(n+1)-2*A138436(n+1)`
-/

namespace A138437.P8582695146045736137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138433 (n + 1) - 2 * A138436 (n + 1)

end

end A138437.P8582695146045736137

namespace A138437

/-- `A138433(n+1)-2*A138436(n+1)` -/
def P8582695146045736137.Spec : Prop :=
  ∀ n, P8582695146045736137.a n = A138437 (n + 1)

end A138437

/-! ## A138437.P12566985403937000246

`(A138427(n+1)-A127920(n+1))/2`
-/

namespace A138437.P12566985403937000246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138427 (n + 1) - A127920 (n + 1) : ℚ) / 2

end

end A138437.P12566985403937000246

namespace A138437

/-- `(A138427(n+1)-A127920(n+1))/2` -/
def P12566985403937000246.Spec : Prop :=
  ∀ n, P12566985403937000246.a n = (A138437 (n + 1) : ℚ)

end A138437

/-!
# A138438: a(n) = ((n-th prime)^5-(n-th prime)^3)/24.

The programs for A138438, the canonical program `A138438.P2811468712399639268` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138438 has offset 1).

The definition of A138438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138437, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138438.P2811468712399639268

`A138437(n+1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138438

/-- `A138437(n+1)/2` -/
def P2811468712399639268.Spec : Prop :=
  ∀ n, P2811468712399639268.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P10386559983507856626

`A138406(n+1)/24`
-/

namespace A138438.P10386559983507856626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 24

end

end A138438.P10386559983507856626

namespace A138438

/-- `A138406(n+1)/24` -/
def P10386559983507856626.Spec : Prop :=
  ∀ n, P10386559983507856626.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P5368571422542812659

`A138436(n+1)/3`
-/

namespace A138438.P5368571422542812659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138436 (n + 1) : ℚ) / 3

end

end A138438.P5368571422542812659

namespace A138438

/-- `A138436(n+1)/3` -/
def P5368571422542812659.Spec : Prop :=
  ∀ n, P5368571422542812659.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P2505473522674920131

`A138435(n+1)/4`
-/

namespace A138438.P2505473522674920131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) : ℚ) / 4

end

end A138438.P2505473522674920131

namespace A138438

/-- `A138435(n+1)/4` -/
def P2505473522674920131.Spec : Prop :=
  ∀ n, P2505473522674920131.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P14264959977190807748

`A138434(n+1)/6`
-/

namespace A138438.P14264959977190807748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138434 (n + 1) : ℚ) / 6

end

end A138438.P14264959977190807748

namespace A138438

/-- `A138434(n+1)/6` -/
def P14264959977190807748.Spec : Prop :=
  ∀ n, P14264959977190807748.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P10385418913744712277

`A138433(n+1)/8`
-/

namespace A138438.P10385418913744712277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / 8

end

end A138438.P10385418913744712277

namespace A138438

/-- `A138433(n+1)/8` -/
def P10385418913744712277.Spec : Prop :=
  ∀ n, P10385418913744712277.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P1269298493418301998

`A138435(n+1)-A138436(n+1)`
-/

namespace A138438.P1269298493418301998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138435 (n + 1) - A138436 (n + 1)

end

end A138438.P1269298493418301998

namespace A138438

/-- `A138435(n+1)-A138436(n+1)` -/
def P1269298493418301998.Spec : Prop :=
  ∀ n, P1269298493418301998.a n = A138438 (n + 1)

end A138438

/-! ## A138438.P7418354948586534534

`A138436(n+1)-A138437(n+1)`
-/

namespace A138438.P7418354948586534534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138436 (n + 1) - A138437 (n + 1)

end

end A138438.P7418354948586534534

namespace A138438

/-- `A138436(n+1)-A138437(n+1)` -/
def P7418354948586534534.Spec : Prop :=
  ∀ n, P7418354948586534534.a n = A138438 (n + 1)

end A138438

/-! ## A138438.P10910444414952008569

`A138458(n+1)/A000040(n+1)`
-/

namespace A138438.P10910444414952008569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138458 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138438.P10910444414952008569

namespace A138438

/-- `A138458(n+1)/A000040(n+1)` -/
def P10910444414952008569.Spec : Prop :=
  ∀ n, P10910444414952008569.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P6816472333391737463

`A138456(n+1)/A001749(n+1)`
-/

namespace A138438.P6816472333391737463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A001749 (n + 1) : ℚ)

end

end A138438.P6816472333391737463

namespace A138438

/-- `A138456(n+1)/A001749(n+1)` -/
def P6816472333391737463.Spec : Prop :=
  ∀ n, P6816472333391737463.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P1856722266697374887

`A138457(n+1)/A001748(n+1)`
-/

namespace A138438.P1856722266697374887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138457 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A138438.P1856722266697374887

namespace A138438

/-- `A138457(n+1)/A001748(n+1)` -/
def P1856722266697374887.Spec : Prop :=
  ∀ n, P1856722266697374887.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P8221936695399775721

`A138459(n+1)/A100484(n+1)`
-/

namespace A138438.P8221936695399775721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138438.P8221936695399775721

namespace A138438

/-- `A138459(n+1)/A100484(n+1)` -/
def P8221936695399775721.Spec : Prop :=
  ∀ n, P8221936695399775721.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P5851548312886048619

`A138455(n+1)/A138636(n+1)`
-/

namespace A138438.P5851548312886048619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (A138636 (n + 1) : ℚ)

end

end A138438.P5851548312886048619

namespace A138438

/-- `A138455(n+1)/A138636(n+1)` -/
def P5851548312886048619.Spec : Prop :=
  ∀ n, P5851548312886048619.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P6937187333169847297

`gcd(A138433(n+1), A138436(n+1))`
-/

namespace A138438.P6937187333169847297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138433 (n + 1)) (A138436 (n + 1))

end

end A138438.P6937187333169847297

namespace A138438

/-- `gcd(A138433(n+1), A138436(n+1))` -/
def P6937187333169847297.Spec : Prop :=
  ∀ n, (P6937187333169847297.a n : ℤ) = A138438 (n + 1)

end A138438

/-! ## A138438.P16521315615904657671

`A000040(n+1)/2*A138422(n+1)`
-/

namespace A138438.P16521315615904657671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A138422 (n + 1) : ℚ)

end

end A138438.P16521315615904657671

namespace A138438

/-- `A000040(n+1)/2*A138422(n+1)` -/
def P16521315615904657671.Spec : Prop :=
  ∀ n, P16521315615904657671.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P9392524550174382718

`A138459(n+1)/(2*A000040(n+1))`
-/

namespace A138438.P9392524550174382718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) : ℚ) / (2 * A000040 (n + 1) : ℚ)

end

end A138438.P9392524550174382718

namespace A138438

/-- `A138459(n+1)/(2*A000040(n+1))` -/
def P9392524550174382718.Spec : Prop :=
  ∀ n, P9392524550174382718.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P502919666758967214

`A138454(n+1)/(2*A001749(n+1))`
-/

namespace A138438.P502919666758967214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (2 * A001749 (n + 1) : ℚ)

end

end A138438.P502919666758967214

namespace A138438

/-- `A138454(n+1)/(2*A001749(n+1))` -/
def P502919666758967214.Spec : Prop :=
  ∀ n, P502919666758967214.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P17294119941140894401

`A138455(n+1)/(2*A001748(n+1))`
-/

namespace A138438.P17294119941140894401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / (2 * A001748 (n + 1) : ℚ)

end

end A138438.P17294119941140894401

namespace A138438

/-- `A138455(n+1)/(2*A001748(n+1))` -/
def P17294119941140894401.Spec : Prop :=
  ∀ n, P17294119941140894401.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P17540850904768992949

`A138456(n+1)/(2*A100484(n+1))`
-/

namespace A138438.P17540850904768992949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (2 * A100484 (n + 1) : ℚ)

end

end A138438.P17540850904768992949

namespace A138438

/-- `A138456(n+1)/(2*A100484(n+1))` -/
def P17540850904768992949.Spec : Prop :=
  ∀ n, P17540850904768992949.a n = (A138438 (n + 1) : ℚ)

end A138438

/-! ## A138438.P15982146640806077817

`A138453(n+1)/(2*A138636(n+1))`
-/

namespace A138438.P15982146640806077817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (2 * A138636 (n + 1) : ℚ)

end

end A138438.P15982146640806077817

namespace A138438

/-- `A138453(n+1)/(2*A138636(n+1))` -/
def P15982146640806077817.Spec : Prop :=
  ∀ n, P15982146640806077817.a n = (A138438 (n + 1) : ℚ)

end A138438

/-!
# A138439: a(n) = (prime(n)^5 - prime(n)^4)/2.

The programs for A138439, the canonical program `A138439.P6352298735939435582` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138439 has offset 1).

The definition of A138439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138439.P6352298735939435582

`A138407(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138439

/-- `A138407(n+1)/2` -/
def P6352298735939435582.Spec : Prop :=
  ∀ n, P6352298735939435582.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P12171077796695928701

`A138424(n+1)-A138417(n+1)`
-/

namespace A138439.P12171077796695928701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A138417 (n + 1)

end

end A138439.P12171077796695928701

namespace A138439

/-- `A138424(n+1)-A138417(n+1)` -/
def P12171077796695928701.Spec : Prop :=
  ∀ n, P12171077796695928701.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P2076099990058138129

`A138431(n+1)-A138418(n+1)`
-/

namespace A138439.P2076099990058138129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138431 (n + 1) - A138418 (n + 1)

end

end A138439.P2076099990058138129

namespace A138439

/-- `A138431(n+1)-A138418(n+1)` -/
def P2076099990058138129.Spec : Prop :=
  ∀ n, P2076099990058138129.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P18221996255247917526

`A138432(n+1)-A138423(n+1)`
-/

namespace A138439.P18221996255247917526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138432 (n + 1) - A138423 (n + 1)

end

end A138439.P18221996255247917526

namespace A138439

/-- `A138432(n+1)-A138423(n+1)` -/
def P18221996255247917526.Spec : Prop :=
  ∀ n, P18221996255247917526.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P8390248692612861574

`A138453(n+1)-A138460(n+1)`
-/

namespace A138439.P8390248692612861574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) - A138460 (n + 1)

end

end A138439.P8390248692612861574

namespace A138439

/-- `A138453(n+1)-A138460(n+1)` -/
def P8390248692612861574.Spec : Prop :=
  ∀ n, P8390248692612861574.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P13411561318204642971

`A008837(n+1)*A030078(n+1)`
-/

namespace A138439.P13411561318204642971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A030078 (n + 1)

end

end A138439.P13411561318204642971

namespace A138439

/-- `A008837(n+1)*A030078(n+1)` -/
def P13411561318204642971.Spec : Prop :=
  ∀ n, P13411561318204642971.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P6956261632299715756

`A000040(n+1)*A138423(n+1)`
-/

namespace A138439.P6956261632299715756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138423 (n + 1)

end

end A138439.P6956261632299715756

namespace A138439

/-- `A000040(n+1)*A138423(n+1)` -/
def P6956261632299715756.Spec : Prop :=
  ∀ n, P6956261632299715756.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P9778602592160070687

`A001248(n+1)*A138416(n+1)`
-/

namespace A138439.P9778602592160070687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138416 (n + 1)

end

end A138439.P9778602592160070687

namespace A138439

/-- `A001248(n+1)*A138416(n+1)` -/
def P9778602592160070687.Spec : Prop :=
  ∀ n, P9778602592160070687.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P4214865830102686193

`A138460(n+1)/A000040(n+1)`
-/

namespace A138439.P4214865830102686193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138460 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138439.P4214865830102686193

namespace A138439

/-- `A138460(n+1)/A000040(n+1)` -/
def P4214865830102686193.Spec : Prop :=
  ∀ n, P4214865830102686193.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P13130685763486061312

`A138453(n+1)/A008864(n+1)`
-/

namespace A138439.P13130685763486061312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)

end

end A138439.P13130685763486061312

namespace A138439

/-- `A138453(n+1)/A008864(n+1)` -/
def P13130685763486061312.Spec : Prop :=
  ∀ n, P13130685763486061312.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P11670579429748140241

`A138411(n+1)/A089241(n+1)`
-/

namespace A138439.P11670579429748140241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A089241 (n + 1) : ℚ)

end

end A138439.P11670579429748140241

namespace A138439

/-- `A138411(n+1)/A089241(n+1)` -/
def P11670579429748140241.Spec : Prop :=
  ∀ n, P11670579429748140241.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P18048841833717880109

`A138412(n+1)/A100484(n+1)`
-/

namespace A138439.P18048841833717880109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A138439.P18048841833717880109

namespace A138439

/-- `A138412(n+1)/A100484(n+1)` -/
def P18048841833717880109.Spec : Prop :=
  ∀ n, P18048841833717880109.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P11086692096243682320

`A138455(n+1)-A138416(n+1)²`
-/

namespace A138439.P11086692096243682320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138455 (n + 1) - A138416 (n + 1) ^ 2

end

end A138439.P11086692096243682320

namespace A138439

/-- `A138455(n+1)-A138416(n+1)²` -/
def P11086692096243682320.Spec : Prop :=
  ∀ n, P11086692096243682320.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P3657908192873395889

`A000040(n+1)²*A138416(n+1)`
-/

namespace A138439.P3657908192873395889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138416 (n + 1)

end

end A138439.P3657908192873395889

namespace A138439

/-- `A000040(n+1)²*A138416(n+1)` -/
def P3657908192873395889.Spec : Prop :=
  ∀ n, P3657908192873395889.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P12421629733611281937

`A138423(n+1)²/A138416(n+1)`
-/

namespace A138439.P12421629733611281937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138423 (n + 1) ^ 2 : ℚ) / (A138416 (n + 1) : ℚ)

end

end A138439.P12421629733611281937

namespace A138439

/-- `A138423(n+1)²/A138416(n+1)` -/
def P12421629733611281937.Spec : Prop :=
  ∀ n, P12421629733611281937.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P2081664641440484619

`A138453(n+1)/(A000040(n+1)+1)`
-/

namespace A138439.P2081664641440484619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / (A000040 (n + 1) + 1 : ℚ)

end

end A138439.P2081664641440484619

namespace A138439

/-- `A138453(n+1)/(A000040(n+1)+1)` -/
def P2081664641440484619.Spec : Prop :=
  ∀ n, P2081664641440484619.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P2206360254664205558

`(A008864(n+1)-1)*A138423(n+1)`
-/

namespace A138439.P2206360254664205558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A138423 (n + 1)

end

end A138439.P2206360254664205558

namespace A138439

/-- `(A008864(n+1)-1)*A138423(n+1)` -/
def P2206360254664205558.Spec : Prop :=
  ∀ n, P2206360254664205558.a n = A138439 (n + 1)

end A138439

/-! ## A138439.P5050929317950184611

`(A050997(n+1)-A030514(n+1))/2`
-/

namespace A138439.P5050929317950184611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - A030514 (n + 1) : ℚ) / 2

end

end A138439.P5050929317950184611

namespace A138439

/-- `(A050997(n+1)-A030514(n+1))/2` -/
def P5050929317950184611.Spec : Prop :=
  ∀ n, P5050929317950184611.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P15585687375333297472

`(A138404(n+1)-A138401(n+1))/2`
-/

namespace A138439.P15585687375333297472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) - A138401 (n + 1) : ℚ) / 2

end

end A138439.P15585687375333297472

namespace A138439

/-- `(A138404(n+1)-A138401(n+1))/2` -/
def P15585687375333297472.Spec : Prop :=
  ∀ n, P15585687375333297472.a n = (A138439 (n + 1) : ℚ)

end A138439

/-! ## A138439.P6737589740753521493

`(A138405(n+1)-A138402(n+1))/2`
-/

namespace A138439.P6737589740753521493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) - A138402 (n + 1) : ℚ) / 2

end

end A138439.P6737589740753521493

namespace A138439

/-- `(A138405(n+1)-A138402(n+1))/2` -/
def P6737589740753521493.Spec : Prop :=
  ∀ n, P6737589740753521493.a n = (A138439 (n + 1) : ℚ)

end A138439

/-!
# A138440: a(n) = ((n-th prime)^6-(n-th prime))/2.

The programs for A138440, the canonical program `A138440.P18082488222228574981` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138440 has offset 1).

The definition of A138440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138408, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138440.P18082488222228574981

`A138408(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138440

/-- `A138408(n+1)/2` -/
def P18082488222228574981.Spec : Prop :=
  ∀ n, P18082488222228574981.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P2342520511680029130

`∑{d}[A000040(n+1), #^6-#]/2`
-/

namespace A138440.P2342520511680029130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 6 : ℤ) - (d : ℤ)) : ℤ) : ℚ) / 2

end

end A138440.P2342520511680029130

namespace A138440

/-- `∑{d}[A000040(n+1), #^6-#]/2` -/
def P2342520511680029130.Spec : Prop :=
  ∀ n, P2342520511680029130.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P429901785361030376

`A138441(n+1)+A008837(n+1)`
-/

namespace A138440.P429901785361030376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) + A008837 (n + 1)

end

end A138440.P429901785361030376

namespace A138440

/-- `A138441(n+1)+A008837(n+1)` -/
def P429901785361030376.Spec : Prop :=
  ∀ n, P429901785361030376.a n = A138440 (n + 1)

end A138440

/-! ## A138440.P4055808914188821459

`A138452(n+1)+A127918(n+1)`
-/

namespace A138440.P4055808914188821459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) + A127918 (n + 1)

end

end A138440.P4055808914188821459

namespace A138440

/-- `A138452(n+1)+A127918(n+1)` -/
def P4055808914188821459.Spec : Prop :=
  ∀ n, P4055808914188821459.a n = A138440 (n + 1)

end A138440

/-! ## A138440.P3609930512213525638

`A138453(n+1)+A138417(n+1)`
-/

namespace A138440.P3609930512213525638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) + A138417 (n + 1)

end

end A138440.P3609930512213525638

namespace A138440

/-- `A138453(n+1)+A138417(n+1)` -/
def P3609930512213525638.Spec : Prop :=
  ∀ n, P3609930512213525638.a n = A138440 (n + 1)

end A138440

/-! ## A138440.P3619844695767013248

`A138460(n+1)+A138424(n+1)`
-/

namespace A138440.P3619844695767013248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138460 (n + 1) + A138424 (n + 1)

end

end A138440.P3619844695767013248

namespace A138440

/-- `A138460(n+1)+A138424(n+1)` -/
def P3619844695767013248.Spec : Prop :=
  ∀ n, P3619844695767013248.a n = A138440 (n + 1)

end A138440

/-! ## A138440.P9419329776750222376

`A008837(n+1)*A131992(n+1)`
-/

namespace A138440.P9419329776750222376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A131992 (n + 1)

end

end A138440.P9419329776750222376

namespace A138440

/-- `A008837(n+1)*A131992(n+1)` -/
def P9419329776750222376.Spec : Prop :=
  ∀ n, P9419329776750222376.a n = A138440 (n + 1)

end A138440

/-! ## A138440.P5249868573315000421

`(A138409(n+1)+A036689(n+1))/2`
-/

namespace A138440.P5249868573315000421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) + A036689 (n + 1) : ℚ) / 2

end

end A138440.P5249868573315000421

namespace A138440

/-- `(A138409(n+1)+A036689(n+1))/2` -/
def P5249868573315000421.Spec : Prop :=
  ∀ n, P5249868573315000421.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P17540657755438781587

`(A138410(n+1)+A127917(n+1))/2`
-/

namespace A138440.P17540657755438781587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) + A127917 (n + 1) : ℚ) / 2

end

end A138440.P17540657755438781587

namespace A138440

/-- `(A138410(n+1)+A127917(n+1))/2` -/
def P17540657755438781587.Spec : Prop :=
  ∀ n, P17540657755438781587.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P16264735451964041624

`(A138411(n+1)+A138401(n+1))/2`
-/

namespace A138440.P16264735451964041624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) + A138401 (n + 1) : ℚ) / 2

end

end A138440.P16264735451964041624

namespace A138440

/-- `(A138411(n+1)+A138401(n+1))/2` -/
def P16264735451964041624.Spec : Prop :=
  ∀ n, P16264735451964041624.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P15692807735605171884

`(A138412(n+1)+A138404(n+1))/2`
-/

namespace A138440.P15692807735605171884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) + A138404 (n + 1) : ℚ) / 2

end

end A138440.P15692807735605171884

namespace A138440

/-- `(A138412(n+1)+A138404(n+1))/2` -/
def P15692807735605171884.Spec : Prop :=
  ∀ n, P15692807735605171884.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P16435162607835974813

`A138424(n+1)+A138412(n+1)/2`
-/

namespace A138440.P16435162607835974813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) : ℚ) + (A138412 (n + 1) : ℚ) / 2

end

end A138440.P16435162607835974813

namespace A138440

/-- `A138424(n+1)+A138412(n+1)/2` -/
def P16435162607835974813.Spec : Prop :=
  ∀ n, P16435162607835974813.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P2174072850768287116

`(A030516(n+1)-A000040(n+1))/2`
-/

namespace A138440.P2174072850768287116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A138440.P2174072850768287116

namespace A138440

/-- `(A030516(n+1)-A000040(n+1))/2` -/
def P2174072850768287116.Spec : Prop :=
  ∀ n, P2174072850768287116.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P12505489578088054317

`A036689(n+1)/2*A131992(n+1)`
-/

namespace A138440.P12505489578088054317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) / 2 * (A131992 (n + 1) : ℚ)

end

end A138440.P12505489578088054317

namespace A138440

/-- `A036689(n+1)/2*A131992(n+1)` -/
def P12505489578088054317.Spec : Prop :=
  ∀ n, P12505489578088054317.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P12101007583916810335

`(A030078(n+1)²-A000040(n+1))/2`
-/

namespace A138440.P12101007583916810335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) ^ 2 - A000040 (n + 1) : ℚ) / 2

end

end A138440.P12101007583916810335

namespace A138440

/-- `(A030078(n+1)²-A000040(n+1))/2` -/
def P12101007583916810335.Spec : Prop :=
  ∀ n, P12101007583916810335.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P18313833904197502651

`A131473(A000040(n+1))/2`
-/

namespace A138440.P18313833904197502651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A138440.P18313833904197502651

namespace A138440

/-- `A131473(A000040(n+1))/2` -/
def P18313833904197502651.Spec : Prop :=
  ∀ n, P18313833904197502651.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P9859291610308355586

`A131473(A008578(n+2))/2`
-/

namespace A138440.P9859291610308355586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (A008578 (n + 2)).toNat : ℚ) / 2

end

end A138440.P9859291610308355586

namespace A138440

/-- `A131473(A008578(n+2))/2` -/
def P9859291610308355586.Spec : Prop :=
  ∀ n, P9859291610308355586.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P3004622181727256896

`A131473(record[A006530(n+2)])/2`
-/

namespace A138440.P3004622181727256896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A138440.P3004622181727256896

namespace A138440

/-- `A131473(record[A006530(n+2)])/2` -/
def P3004622181727256896.Spec : Prop :=
  ∀ n, P3004622181727256896.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P6571705520331669488

`A131473(record[A014963(n+2)])/2`
-/

namespace A138440.P6571705520331669488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A138440.P6571705520331669488

namespace A138440

/-- `A131473(record[A014963(n+2)])/2` -/
def P6571705520331669488.Spec : Prop :=
  ∀ n, P6571705520331669488.a n = (A138440 (n + 1) : ℚ)

end A138440

/-! ## A138440.P2429040089932247503

`A131473(record[A020639(n+2)])/2`
-/

namespace A138440.P2429040089932247503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A138440.P2429040089932247503

namespace A138440

/-- `A131473(record[A020639(n+2)])/2` -/
def P2429040089932247503.Spec : Prop :=
  ∀ n, P2429040089932247503.a n = (A138440 (n + 1) : ℚ)

end A138440

/-!
# A138441: a(n) = ((n-th prime)^6-(n-th prime^2))/2.

The programs for A138441, the canonical program `A138441.P11845817333899223938` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138441 has offset 1).

The definition of A138441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138441.P11845817333899223938

`A138409(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138441

/-- `A138409(n+1)/2` -/
def P11845817333899223938.Spec : Prop :=
  ∀ n, P11845817333899223938.a n = (A138441 (n + 1) : ℚ)

end A138441

/-! ## A138441.P6916493617618398747

`2*A138443(n+1)`
-/

namespace A138441.P6916493617618398747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138443 (n + 1)

end

end A138441.P6916493617618398747

namespace A138441

/-- `2*A138443(n+1)` -/
def P6916493617618398747.Spec : Prop :=
  ∀ n, P6916493617618398747.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P3062484473197052189

`3*A138445(n+1)`
-/

namespace A138441.P3062484473197052189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138445 (n + 1)

end

end A138441.P3062484473197052189

namespace A138441

/-- `3*A138445(n+1)` -/
def P3062484473197052189.Spec : Prop :=
  ∀ n, P3062484473197052189.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P2460077096771335950

`5*A138446(n+1)`
-/

namespace A138441.P2460077096771335950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138446 (n + 1)

end

end A138441.P2460077096771335950

namespace A138441

/-- `5*A138446(n+1)` -/
def P2460077096771335950.Spec : Prop :=
  ∀ n, P2460077096771335950.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P6460198673155875707

`6*A138447(n+1)`
-/

namespace A138441.P6460198673155875707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138447 (n + 1)

end

end A138441.P6460198673155875707

namespace A138441

/-- `6*A138447(n+1)` -/
def P6460198673155875707.Spec : Prop :=
  ∀ n, P6460198673155875707.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P15273717637710936669

`10*A122220(n+1)`
-/

namespace A138441.P15273717637710936669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A122220 (n + 1)

end

end A138441.P15273717637710936669

namespace A138441

/-- `10*A122220(n+1)` -/
def P15273717637710936669.Spec : Prop :=
  ∀ n, P15273717637710936669.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P8188820413449103195

`3/2*A138442(n+1)`
-/

namespace A138441.P8188820413449103195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138442 (n + 1) : ℚ)

end

end A138441.P8188820413449103195

namespace A138441

/-- `3/2*A138442(n+1)` -/
def P8188820413449103195.Spec : Prop :=
  ∀ n, P8188820413449103195.a n = (A138441 (n + 1) : ℚ)

end A138441

/-! ## A138441.P16322785219385215854

`5/2*A138444(n+1)`
-/

namespace A138441.P16322785219385215854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138444 (n + 1) : ℚ)

end

end A138441.P16322785219385215854

namespace A138441

/-- `5/2*A138444(n+1)` -/
def P16322785219385215854.Spec : Prop :=
  ∀ n, P16322785219385215854.a n = (A138441 (n + 1) : ℚ)

end A138441

/-! ## A138441.P4020057550776358674

`3*5*A138450(n+1)`
-/

namespace A138441.P4020057550776358674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A138450 (n + 1))

end

end A138441.P4020057550776358674

namespace A138441

/-- `3*5*A138450(n+1)` -/
def P4020057550776358674.Spec : Prop :=
  ∀ n, P4020057550776358674.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P1322785555224284342

`3*C(A066872(n+1), 3)`
-/

namespace A138441.P1322785555224284342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A066872 (n + 1)).toNat 3

end

end A138441.P1322785555224284342

namespace A138441

/-- `3*C(A066872(n+1), 3)` -/
def P1322785555224284342.Spec : Prop :=
  ∀ n, (P1322785555224284342.a n : ℤ) = A138441 (n + 1)

end A138441

/-! ## A138441.P8477416153792458109

`3*C(A000040(n+1)²+1, 3)`
-/

namespace A138441.P8477416153792458109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3

end

end A138441.P8477416153792458109

namespace A138441

/-- `3*C(A000040(n+1)²+1, 3)` -/
def P8477416153792458109.Spec : Prop :=
  ∀ n, (P8477416153792458109.a n : ℤ) = A138441 (n + 1)

end A138441

/-! ## A138441.P15112367155474614464

`A138452(n+1)+A138416(n+1)`
-/

namespace A138441.P15112367155474614464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) + A138416 (n + 1)

end

end A138441.P15112367155474614464

namespace A138441

/-- `A138452(n+1)+A138416(n+1)` -/
def P15112367155474614464.Spec : Prop :=
  ∀ n, P15112367155474614464.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P8460078996415092279

`A138453(n+1)+A138418(n+1)`
-/

namespace A138441.P8460078996415092279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) + A138418 (n + 1)

end

end A138441.P8460078996415092279

namespace A138441

/-- `A138453(n+1)+A138418(n+1)` -/
def P8460078996415092279.Spec : Prop :=
  ∀ n, P8460078996415092279.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P18314435534348410924

`A138445(n+1)+A138442(n+1)`
-/

namespace A138441.P18314435534348410924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) + A138442 (n + 1)

end

end A138441.P18314435534348410924

namespace A138441

/-- `A138445(n+1)+A138442(n+1)` -/
def P18314435534348410924.Spec : Prop :=
  ∀ n, P18314435534348410924.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P13513781935194064109

`A138460(n+1)+A138431(n+1)`
-/

namespace A138441.P13513781935194064109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138460 (n + 1) + A138431 (n + 1)

end

end A138441.P13513781935194064109

namespace A138441

/-- `A138460(n+1)+A138431(n+1)` -/
def P13513781935194064109.Spec : Prop :=
  ∀ n, P13513781935194064109.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P4076332570704638996

`A138440(n+1)-A008837(n+1)`
-/

namespace A138441.P4076332570704638996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A008837 (n + 1)

end

end A138441.P4076332570704638996

namespace A138441

/-- `A138440(n+1)-A008837(n+1)` -/
def P4076332570704638996.Spec : Prop :=
  ∀ n, P4076332570704638996.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P3268941549319280165

`A000040(n+1)*A138424(n+1)`
-/

namespace A138441.P3268941549319280165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138424 (n + 1)

end

end A138441.P3268941549319280165

namespace A138441

/-- `A000040(n+1)*A138424(n+1)` -/
def P3268941549319280165.Spec : Prop :=
  ∀ n, P3268941549319280165.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P15848935192308077438

`A001748(n+1)*A138427(n+1)`
-/

namespace A138441.P15848935192308077438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138427 (n + 1)

end

end A138441.P15848935192308077438

namespace A138441

/-- `A001748(n+1)*A138427(n+1)` -/
def P15848935192308077438.Spec : Prop :=
  ∀ n, P15848935192308077438.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P828054758498245093

`A001750(n+1)*A138428(n+1)`
-/

namespace A138441.P828054758498245093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) * A138428 (n + 1)

end

end A138441.P828054758498245093

namespace A138441

/-- `A001750(n+1)*A138428(n+1)` -/
def P828054758498245093.Spec : Prop :=
  ∀ n, P828054758498245093.a n = A138441 (n + 1)

end A138441

/-! ## A138441.P7753824002106341412

`A066886(n+1)*A127917(n+1)`
-/

namespace A138441.P7753824002106341412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) * A127917 (n + 1)

end

end A138441.P7753824002106341412

namespace A138441

/-- `A066886(n+1)*A127917(n+1)` -/
def P7753824002106341412.Spec : Prop :=
  ∀ n, P7753824002106341412.a n = A138441 (n + 1)

end A138441

/-!
# A138442: a(n) = ((n-th prime)^6-(n-th prime^2))/3.

The programs for A138442, the canonical program `A138442.P6492284779242872051` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138442 has offset 1).

The definition of A138442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138442.P6492284779242872051

`A138409(n+1)/3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138442

/-- `A138409(n+1)/3` -/
def P6492284779242872051.Spec : Prop :=
  ∀ n, P6492284779242872051.a n = (A138442 (n + 1) : ℚ)

end A138442

/-! ## A138442.P2386778518818314539

`2*A138445(n+1)`
-/

namespace A138442.P2386778518818314539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138445 (n + 1)

end

end A138442.P2386778518818314539

namespace A138442

/-- `2*A138445(n+1)` -/
def P2386778518818314539.Spec : Prop :=
  ∀ n, P2386778518818314539.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P703591666732996379

`4*A138447(n+1)`
-/

namespace A138442.P703591666732996379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138447 (n + 1)

end

end A138442.P703591666732996379

namespace A138442

/-- `4*A138447(n+1)` -/
def P703591666732996379.Spec : Prop :=
  ∀ n, P703591666732996379.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P17816165646923296053

`5*A138448(n+1)`
-/

namespace A138442.P17816165646923296053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138448 (n + 1)

end

end A138442.P17816165646923296053

namespace A138442

/-- `5*A138448(n+1)` -/
def P17816165646923296053.Spec : Prop :=
  ∀ n, P17816165646923296053.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P6539816479511458971

`2/3*A138441(n+1)`
-/

namespace A138442.P6539816479511458971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138441 (n + 1) : ℚ)

end

end A138442.P6539816479511458971

namespace A138442

/-- `2/3*A138441(n+1)` -/
def P6539816479511458971.Spec : Prop :=
  ∀ n, P6539816479511458971.a n = (A138442 (n + 1) : ℚ)

end A138442

/-! ## A138442.P13545900422089758814

`2*5*A138450(n+1)`
-/

namespace A138442.P13545900422089758814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A138450 (n + 1))

end

end A138442.P13545900422089758814

namespace A138442

/-- `2*5*A138450(n+1)` -/
def P13545900422089758814.Spec : Prop :=
  ∀ n, P13545900422089758814.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P12021374495106859699

`4/3*A138443(n+1)`
-/

namespace A138442.P12021374495106859699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138443 (n + 1) : ℚ)

end

end A138442.P12021374495106859699

namespace A138442

/-- `4/3*A138443(n+1)` -/
def P12021374495106859699.Spec : Prop :=
  ∀ n, P12021374495106859699.a n = (A138442 (n + 1) : ℚ)

end A138442

/-! ## A138442.P17322403288434142109

`5/3*A138444(n+1)`
-/

namespace A138442.P17322403288434142109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A138444 (n + 1) : ℚ)

end

end A138442.P17322403288434142109

namespace A138442

/-- `5/3*A138444(n+1)` -/
def P17322403288434142109.Spec : Prop :=
  ∀ n, P17322403288434142109.a n = (A138442 (n + 1) : ℚ)

end A138442

/-! ## A138442.P7897284801986746237

`4*5*A138451(n+1)`
-/

namespace A138442.P7897284801986746237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (5 * A138451 (n + 1))

end

end A138442.P7897284801986746237

namespace A138442

/-- `4*5*A138451(n+1)` -/
def P7897284801986746237.Spec : Prop :=
  ∀ n, P7897284801986746237.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P15655547145949089931

`2*C(A066872(n+1), 3)`
-/

namespace A138442.P15655547145949089931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A066872 (n + 1)).toNat 3

end

end A138442.P15655547145949089931

namespace A138442

/-- `2*C(A066872(n+1), 3)` -/
def P15655547145949089931.Spec : Prop :=
  ∀ n, (P15655547145949089931.a n : ℤ) = A138442 (n + 1)

end A138442

/-! ## A138442.P3360972563043914216

`4*5/3*A122220(n+1)`
-/

namespace A138442.P3360972563043914216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((5 : ℚ) / 3 * (A122220 (n + 1) : ℚ))

end

end A138442.P3360972563043914216

namespace A138442

/-- `4*5/3*A122220(n+1)` -/
def P3360972563043914216.Spec : Prop :=
  ∀ n, P3360972563043914216.a n = (A138442 (n + 1) : ℚ)

end A138442

/-! ## A138442.P13412692725075943681

`2*C(A000040(n+1)²+1, 3)`
-/

namespace A138442.P13412692725075943681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3

end

end A138442.P13412692725075943681

namespace A138442

/-- `2*C(A000040(n+1)²+1, 3)` -/
def P13412692725075943681.Spec : Prop :=
  ∀ n, (P13412692725075943681.a n : ℤ) = A138442 (n + 1)

end A138442

/-! ## A138442.P13314762472400107860

`A138454(n+1)+A138419(n+1)`
-/

namespace A138442.P13314762472400107860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138454 (n + 1) + A138419 (n + 1)

end

end A138442.P13314762472400107860

namespace A138442

/-- `A138454(n+1)+A138419(n+1)` -/
def P13314762472400107860.Spec : Prop :=
  ∀ n, P13314762472400107860.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P11486195044055363728

`A138447(n+1)+A138443(n+1)`
-/

namespace A138442.P11486195044055363728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) + A138443 (n + 1)

end

end A138442.P11486195044055363728

namespace A138442

/-- `A138447(n+1)+A138443(n+1)` -/
def P11486195044055363728.Spec : Prop :=
  ∀ n, P11486195044055363728.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P3717136915308227989

`A138441(n+1)-A138445(n+1)`
-/

namespace A138442.P3717136915308227989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138445 (n + 1)

end

end A138442.P3717136915308227989

namespace A138442

/-- `A138441(n+1)-A138445(n+1)` -/
def P3717136915308227989.Spec : Prop :=
  ∀ n, P3717136915308227989.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P13494215514644599582

`A000040(n+1)*A138425(n+1)`
-/

namespace A138442.P13494215514644599582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138425 (n + 1)

end

end A138442.P13494215514644599582

namespace A138442

/-- `A000040(n+1)*A138425(n+1)` -/
def P13494215514644599582.Spec : Prop :=
  ∀ n, P13494215514644599582.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P827989526870675991

`A001750(n+1)*A138429(n+1)`
-/

namespace A138442.P827989526870675991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) * A138429 (n + 1)

end

end A138442.P827989526870675991

namespace A138442

/-- `A001750(n+1)*A138429(n+1)` -/
def P827989526870675991.Spec : Prop :=
  ∀ n, P827989526870675991.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P8864157448162656715

`A066872(n+1)*A138419(n+1)`
-/

namespace A138442.P8864157448162656715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A138419 (n + 1)

end

end A138442.P8864157448162656715

namespace A138442

/-- `A066872(n+1)*A138419(n+1)` -/
def P8864157448162656715.Spec : Prop :=
  ∀ n, P8864157448162656715.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P9268544439080586837

`A100484(n+1)*A138427(n+1)`
-/

namespace A138442.P9268544439080586837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138427 (n + 1)

end

end A138442.P9268544439080586837

namespace A138442

/-- `A100484(n+1)*A138427(n+1)` -/
def P9268544439080586837.Spec : Prop :=
  ∀ n, P9268544439080586837.a n = A138442 (n + 1)

end A138442

/-! ## A138442.P12736848281958797631

`A138430(n+1)*A142342(n+1)`
-/

namespace A138442.P12736848281958797631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138430 (n + 1) * A142342 (n + 1)

end

end A138442.P12736848281958797631

namespace A138442

/-- `A138430(n+1)*A142342(n+1)` -/
def P12736848281958797631.Spec : Prop :=
  ∀ n, P12736848281958797631.a n = A138442 (n + 1)

end A138442

/-!
# A138443: a(n) = ((n-th prime)^6-(n-th prime^2))/4.

The programs for A138443, the canonical program `A138443.P2759808841860568747` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138443 has offset 1).

The definition of A138443 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138443.P2759808841860568747

`A138409(n+1)/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138443

/-- `A138409(n+1)/4` -/
def P2759808841860568747.Spec : Prop :=
  ∀ n, P2759808841860568747.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P4593529537093616981

`A138441(n+1)/2`
-/

namespace A138443.P4593529537093616981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / 2

end

end A138443.P4593529537093616981

namespace A138443

/-- `A138441(n+1)/2` -/
def P4593529537093616981.Spec : Prop :=
  ∀ n, P4593529537093616981.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P5643371404829448218

`3*A138447(n+1)`
-/

namespace A138443.P5643371404829448218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138447 (n + 1)

end

end A138443.P5643371404829448218

namespace A138443

/-- `3*A138447(n+1)` -/
def P5643371404829448218.Spec : Prop :=
  ∀ n, P5643371404829448218.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P10325920344576670655

`5*A122220(n+1)`
-/

namespace A138443.P10325920344576670655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122220 (n + 1)

end

end A138443.P10325920344576670655

namespace A138443

/-- `5*A122220(n+1)` -/
def P10325920344576670655.Spec : Prop :=
  ∀ n, P10325920344576670655.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P9070568431085041325

`15*A138451(n+1)`
-/

namespace A138443.P9070568431085041325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A138451 (n + 1)

end

end A138443.P9070568431085041325

namespace A138443

/-- `15*A138451(n+1)` -/
def P9070568431085041325.Spec : Prop :=
  ∀ n, P9070568431085041325.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P13168859659174610173

`3/2*A138445(n+1)`
-/

namespace A138443.P13168859659174610173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138445 (n + 1) : ℚ)

end

end A138443.P13168859659174610173

namespace A138443

/-- `3/2*A138445(n+1)` -/
def P13168859659174610173.Spec : Prop :=
  ∀ n, P13168859659174610173.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P14191771046935201387

`3/4*A138442(n+1)`
-/

namespace A138443.P14191771046935201387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138442 (n + 1) : ℚ)

end

end A138443.P14191771046935201387

namespace A138443

/-- `3/4*A138442(n+1)` -/
def P14191771046935201387.Spec : Prop :=
  ∀ n, P14191771046935201387.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P15313888246579448934

`5/2*A138446(n+1)`
-/

namespace A138443.P15313888246579448934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138446 (n + 1) : ℚ)

end

end A138443.P15313888246579448934

namespace A138443

/-- `5/2*A138446(n+1)` -/
def P15313888246579448934.Spec : Prop :=
  ∀ n, P15313888246579448934.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P2662123750649960172

`5/4*A138444(n+1)`
-/

namespace A138443.P2662123750649960172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A138444 (n + 1) : ℚ)

end

end A138443.P2662123750649960172

namespace A138443

/-- `5/4*A138444(n+1)` -/
def P2662123750649960172.Spec : Prop :=
  ∀ n, P2662123750649960172.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P1581970160399346029

`3/2*C(A000040(n+1)²+1, 3)`
-/

namespace A138443.P1581970160399346029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3 : ℚ)

end

end A138443.P1581970160399346029

namespace A138443

/-- `3/2*C(A000040(n+1)²+1, 3)` -/
def P1581970160399346029.Spec : Prop :=
  ∀ n, P1581970160399346029.a n = (A138443 (n + 1) : ℚ)

end A138443

/-! ## A138443.P10861845122602372116

`A138444(n+1)+A122220(n+1)`
-/

namespace A138443.P10861845122602372116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138444 (n + 1) + A122220 (n + 1)

end

end A138443.P10861845122602372116

namespace A138443

/-- `A138444(n+1)+A122220(n+1)` -/
def P10861845122602372116.Spec : Prop :=
  ∀ n, P10861845122602372116.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P13462383994908270331

`A138455(n+1)+A138420(n+1)`
-/

namespace A138443.P13462383994908270331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138455 (n + 1) + A138420 (n + 1)

end

end A138443.P13462383994908270331

namespace A138443

/-- `A138455(n+1)+A138420(n+1)` -/
def P13462383994908270331.Spec : Prop :=
  ∀ n, P13462383994908270331.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P5216585053632187933

`A138447(n+1)+A138445(n+1)`
-/

namespace A138443.P5216585053632187933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) + A138445 (n + 1)

end

end A138443.P5216585053632187933

namespace A138443

/-- `A138447(n+1)+A138445(n+1)` -/
def P5216585053632187933.Spec : Prop :=
  ∀ n, P5216585053632187933.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P17177783591830308870

`A138442(n+1)-A138447(n+1)`
-/

namespace A138443.P17177783591830308870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138447 (n + 1)

end

end A138443.P17177783591830308870

namespace A138443

/-- `A138442(n+1)-A138447(n+1)` -/
def P17177783591830308870.Spec : Prop :=
  ∀ n, P17177783591830308870.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P4412801501439236630

`A066886(n+1)*A127918(n+1)`
-/

namespace A138443.P4412801501439236630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) * A127918 (n + 1)

end

end A138443.P4412801501439236630

namespace A138443

/-- `A066886(n+1)*A127918(n+1)` -/
def P4412801501439236630.Spec : Prop :=
  ∀ n, P4412801501439236630.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P9626108674216739145

`A066872(n+1)*A138420(n+1)`
-/

namespace A138443.P9626108674216739145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A138420 (n + 1)

end

end A138443.P9626108674216739145

namespace A138443

/-- `A066872(n+1)*A138420(n+1)` -/
def P9626108674216739145.Spec : Prop :=
  ∀ n, P9626108674216739145.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P14562334925076214997

`lcm(A122220(n+1), A138447(n+1))`
-/

namespace A138443.P14562334925076214997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122220 (n + 1)) (A138447 (n + 1))

end

end A138443.P14562334925076214997

namespace A138443

/-- `lcm(A122220(n+1), A138447(n+1))` -/
def P14562334925076214997.Spec : Prop :=
  ∀ n, (P14562334925076214997.a n : ℤ) = A138443 (n + 1)

end A138443

/-! ## A138443.P12525698834682969975

`A138418(n+1)+A127918(n+1)²`
-/

namespace A138443.P12525698834682969975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + A127918 (n + 1) ^ 2

end

end A138443.P12525698834682969975

namespace A138443

/-- `A138418(n+1)+A127918(n+1)²` -/
def P12525698834682969975.Spec : Prop :=
  ∀ n, P12525698834682969975.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P15619002015871687309

`(A001248(n+1)+1)*A138420(n+1)`
-/

namespace A138443.P15619002015871687309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + 1) * A138420 (n + 1)

end

end A138443.P15619002015871687309

namespace A138443

/-- `(A001248(n+1)+1)*A138420(n+1)` -/
def P15619002015871687309.Spec : Prop :=
  ∀ n, P15619002015871687309.a n = A138443 (n + 1)

end A138443

/-! ## A138443.P8268384538175384408

`(A138452(n+1)+A138416(n+1))/2`
-/

namespace A138443.P8268384538175384408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) + A138416 (n + 1) : ℚ) / 2

end

end A138443.P8268384538175384408

namespace A138443

/-- `(A138452(n+1)+A138416(n+1))/2` -/
def P8268384538175384408.Spec : Prop :=
  ∀ n, P8268384538175384408.a n = (A138443 (n + 1) : ℚ)

end A138443

/-!
# A138444: a(n) = ((n-th prime)^6-(n-th prime^2))/5.

The programs for A138444, the canonical program `A138444.P17809889728788974870` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138444 has offset 1).

The definition of A138444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138444.P17809889728788974870

`A138409(n+1)/5`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138444

/-- `A138409(n+1)/5` -/
def P17809889728788974870.Spec : Prop :=
  ∀ n, P17809889728788974870.a n = (A138444 (n + 1) : ℚ)

end A138444

/-! ## A138444.P9969325764068684674

`2*A138446(n+1)`
-/

namespace A138444.P9969325764068684674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138446 (n + 1)

end

end A138444.P9969325764068684674

namespace A138444

/-- `2*A138446(n+1)` -/
def P9969325764068684674.Spec : Prop :=
  ∀ n, P9969325764068684674.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P3537773259488097937

`3*A138448(n+1)`
-/

namespace A138444.P3537773259488097937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138448 (n + 1)

end

end A138444.P3537773259488097937

namespace A138444

/-- `3*A138448(n+1)` -/
def P3537773259488097937.Spec : Prop :=
  ∀ n, P3537773259488097937.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P10073950108649200494

`4*A122220(n+1)`
-/

namespace A138444.P10073950108649200494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122220 (n + 1)

end

end A138444.P10073950108649200494

namespace A138444

/-- `4*A122220(n+1)` -/
def P10073950108649200494.Spec : Prop :=
  ∀ n, P10073950108649200494.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P11774366692381958406

`6*A138450(n+1)`
-/

namespace A138444.P11774366692381958406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138450 (n + 1)

end

end A138444.P11774366692381958406

namespace A138444

/-- `6*A138450(n+1)` -/
def P11774366692381958406.Spec : Prop :=
  ∀ n, P11774366692381958406.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P14136808106861392902

`12*A138451(n+1)`
-/

namespace A138444.P14136808106861392902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A138451 (n + 1)

end

end A138444.P14136808106861392902

namespace A138444

/-- `12*A138451(n+1)` -/
def P14136808106861392902.Spec : Prop :=
  ∀ n, P14136808106861392902.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P4423145977341406948

`2/5*A138441(n+1)`
-/

namespace A138444.P4423145977341406948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138441 (n + 1) : ℚ)

end

end A138444.P4423145977341406948

namespace A138444

/-- `2/5*A138441(n+1)` -/
def P4423145977341406948.Spec : Prop :=
  ∀ n, P4423145977341406948.a n = (A138444 (n + 1) : ℚ)

end A138444

/-! ## A138444.P13395135396123231976

`3/5*A138442(n+1)`
-/

namespace A138444.P13395135396123231976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A138442 (n + 1) : ℚ)

end

end A138444.P13395135396123231976

namespace A138444

/-- `3/5*A138442(n+1)` -/
def P13395135396123231976.Spec : Prop :=
  ∀ n, P13395135396123231976.a n = (A138444 (n + 1) : ℚ)

end A138444

/-! ## A138444.P12894545374090636599

`4/5*A138443(n+1)`
-/

namespace A138444.P12894545374090636599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A138443 (n + 1) : ℚ)

end

end A138444.P12894545374090636599

namespace A138444

/-- `4/5*A138443(n+1)` -/
def P12894545374090636599.Spec : Prop :=
  ∀ n, P12894545374090636599.a n = (A138444 (n + 1) : ℚ)

end A138444

/-! ## A138444.P9189854576739500956

`A138450(n+1)+A138445(n+1)`
-/

namespace A138444.P9189854576739500956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138450 (n + 1) + A138445 (n + 1)

end

end A138444.P9189854576739500956

namespace A138444

/-- `A138450(n+1)+A138445(n+1)` -/
def P9189854576739500956.Spec : Prop :=
  ∀ n, P9189854576739500956.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P585193452062465295

`A138443(n+1)-A122220(n+1)`
-/

namespace A138444.P585193452062465295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A122220 (n + 1)

end

end A138444.P585193452062465295

namespace A138444

/-- `A138443(n+1)-A122220(n+1)` -/
def P585193452062465295.Spec : Prop :=
  ∀ n, P585193452062465295.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P4056448337915054519

`A000040(n+1)*A138426(n+1)`
-/

namespace A138444.P4056448337915054519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138426 (n + 1)

end

end A138444.P4056448337915054519

namespace A138444

/-- `A000040(n+1)*A138426(n+1)` -/
def P4056448337915054519.Spec : Prop :=
  ∀ n, P4056448337915054519.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P14953108211060065488

`A001748(n+1)*A138429(n+1)`
-/

namespace A138444.P14953108211060065488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138429 (n + 1)

end

end A138444.P14953108211060065488

namespace A138444

/-- `A001748(n+1)*A138429(n+1)` -/
def P14953108211060065488.Spec : Prop :=
  ∀ n, P14953108211060065488.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P12248007314332524209

`A100484(n+1)*A138428(n+1)`
-/

namespace A138444.P12248007314332524209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138428 (n + 1)

end

end A138444.P12248007314332524209

namespace A138444

/-- `A100484(n+1)*A138428(n+1)` -/
def P12248007314332524209.Spec : Prop :=
  ∀ n, P12248007314332524209.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P82927277721424615

`A138430(n+1)*A138636(n+1)`
-/

namespace A138444.P82927277721424615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138430 (n + 1) * A138636 (n + 1)

end

end A138444.P82927277721424615

namespace A138444

/-- `A138430(n+1)*A138636(n+1)` -/
def P82927277721424615.Spec : Prop :=
  ∀ n, P82927277721424615.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P64674784614568267

`lcm(A122220(n+1), A138448(n+1))`
-/

namespace A138444.P64674784614568267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122220 (n + 1)) (A138448 (n + 1))

end

end A138444.P64674784614568267

namespace A138444

/-- `lcm(A122220(n+1), A138448(n+1))` -/
def P64674784614568267.Spec : Prop :=
  ∀ n, (P64674784614568267.a n : ℤ) = A138444 (n + 1)

end A138444

/-! ## A138444.P12734621003134691177

`∑[A054541(n+1)]*A138426(n+1)`
-/

namespace A138444.P12734621003134691177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A138426 (n + 1)

end

end A138444.P12734621003134691177

namespace A138444

/-- `∑[A054541(n+1)]*A138426(n+1)` -/
def P12734621003134691177.Spec : Prop :=
  ∀ n, P12734621003134691177.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P15720956952823781940

`A138445(n+1)+A138448(n+1)/2`
-/

namespace A138444.P15720956952823781940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) + (A138448 (n + 1) : ℚ) / 2

end

end A138444.P15720956952823781940

namespace A138444

/-- `A138445(n+1)+A138448(n+1)/2` -/
def P15720956952823781940.Spec : Prop :=
  ∀ n, P15720956952823781940.a n = (A138444 (n + 1) : ℚ)

end A138444

/-! ## A138444.P3866063909299396602

`2*A000040(n+1)*A138428(n+1)`
-/

namespace A138444.P3866063909299396602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A138428 (n + 1))

end

end A138444.P3866063909299396602

namespace A138444

/-- `2*A000040(n+1)*A138428(n+1)` -/
def P3866063909299396602.Spec : Prop :=
  ∀ n, P3866063909299396602.a n = A138444 (n + 1)

end A138444

/-! ## A138444.P10211315905515329719

`2*A001748(n+1)*A138430(n+1)`
-/

namespace A138444.P10211315905515329719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001748 (n + 1) * A138430 (n + 1))

end

end A138444.P10211315905515329719

namespace A138444

/-- `2*A001748(n+1)*A138430(n+1)` -/
def P10211315905515329719.Spec : Prop :=
  ∀ n, P10211315905515329719.a n = A138444 (n + 1)

end A138444

/-!
# A138445: a(n) = ((n-th prime)^6-(n-th prime^2))/6.

The programs for A138445, the canonical program `A138445.P4192572878039783319` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138445 has offset 1).

The definition of A138445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138445.P4192572878039783319

`A138409(n+1)/6`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138445

/-- `A138409(n+1)/6` -/
def P4192572878039783319.Spec : Prop :=
  ∀ n, P4192572878039783319.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P11669179020884235996

`2*A138447(n+1)`
-/

namespace A138445.P11669179020884235996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138447 (n + 1)

end

end A138445.P11669179020884235996

namespace A138445

/-- `2*A138447(n+1)` -/
def P11669179020884235996.Spec : Prop :=
  ∀ n, P11669179020884235996.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P14043611144308746504

`A138442(n+1)/2`
-/

namespace A138445.P14043611144308746504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / 2

end

end A138445.P14043611144308746504

namespace A138445

/-- `A138442(n+1)/2` -/
def P14043611144308746504.Spec : Prop :=
  ∀ n, P14043611144308746504.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P14625344893282197862

`A138441(n+1)/3`
-/

namespace A138445.P14625344893282197862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / 3

end

end A138445.P14625344893282197862

namespace A138445

/-- `A138441(n+1)/3` -/
def P14625344893282197862.Spec : Prop :=
  ∀ n, P14625344893282197862.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P14589042230859487758

`5*A138450(n+1)`
-/

namespace A138445.P14589042230859487758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138450 (n + 1)

end

end A138445.P14589042230859487758

namespace A138445

/-- `5*A138450(n+1)` -/
def P14589042230859487758.Spec : Prop :=
  ∀ n, P14589042230859487758.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P14558349939254093913

`C(A066872(n+1), 3)`
-/

namespace A138445.P14558349939254093913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066872 (n + 1)).toNat 3

end

end A138445.P14558349939254093913

namespace A138445

/-- `C(A066872(n+1), 3)` -/
def P14558349939254093913.Spec : Prop :=
  ∀ n, (P14558349939254093913.a n : ℤ) = A138445 (n + 1)

end A138445

/-! ## A138445.P16758028947802644352

`2/3*A138443(n+1)`
-/

namespace A138445.P16758028947802644352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138443 (n + 1) : ℚ)

end

end A138445.P16758028947802644352

namespace A138445

/-- `2/3*A138443(n+1)` -/
def P16758028947802644352.Spec : Prop :=
  ∀ n, P16758028947802644352.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P8367619018818072053

`2*5*A138451(n+1)`
-/

namespace A138445.P8367619018818072053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A138451 (n + 1))

end

end A138445.P8367619018818072053

namespace A138445

/-- `2*5*A138451(n+1)` -/
def P8367619018818072053.Spec : Prop :=
  ∀ n, P8367619018818072053.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P7304799671163082438

`5/2*A138448(n+1)`
-/

namespace A138445.P7304799671163082438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138448 (n + 1) : ℚ)

end

end A138445.P7304799671163082438

namespace A138445

/-- `5/2*A138448(n+1)` -/
def P7304799671163082438.Spec : Prop :=
  ∀ n, P7304799671163082438.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P2192306309190954268

`5/3*A138446(n+1)`
-/

namespace A138445.P2192306309190954268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A138446 (n + 1) : ℚ)

end

end A138445.P2192306309190954268

namespace A138445

/-- `5/3*A138446(n+1)` -/
def P2192306309190954268.Spec : Prop :=
  ∀ n, P2192306309190954268.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P13772275373905894420

`C(A001248(n+1)+1, 3)`
-/

namespace A138445.P13772275373905894420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001248 (n + 1) + 1).toNat 3

end

end A138445.P13772275373905894420

namespace A138445

/-- `C(A001248(n+1)+1, 3)` -/
def P13772275373905894420.Spec : Prop :=
  ∀ n, (P13772275373905894420.a n : ℤ) = A138445 (n + 1)

end A138445

/-! ## A138445.P10273070077181519394

`C(A000040(n+1)²+1, 3)`
-/

namespace A138445.P10273070077181519394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3

end

end A138445.P10273070077181519394

namespace A138445

/-- `C(A000040(n+1)²+1, 3)` -/
def P10273070077181519394.Spec : Prop :=
  ∀ n, (P10273070077181519394.a n : ℤ) = A138445 (n + 1)

end A138445

/-! ## A138445.P2033875245234085639

`2*5/3*A122220(n+1)`
-/

namespace A138445.P2033875245234085639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((5 : ℚ) / 3 * (A122220 (n + 1) : ℚ))

end

end A138445.P2033875245234085639

namespace A138445

/-- `2*5/3*A122220(n+1)` -/
def P2033875245234085639.Spec : Prop :=
  ∀ n, P2033875245234085639.a n = (A138445 (n + 1) : ℚ)

end A138445

/-! ## A138445.P5005845087470430200

`A138456(n+1)+A138421(n+1)`
-/

namespace A138445.P5005845087470430200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) + A138421 (n + 1)

end

end A138445.P5005845087470430200

namespace A138445

/-- `A138456(n+1)+A138421(n+1)` -/
def P5005845087470430200.Spec : Prop :=
  ∀ n, P5005845087470430200.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P12974016070475492328

`A138448(n+1)+A138446(n+1)`
-/

namespace A138445.P12974016070475492328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138448 (n + 1) + A138446 (n + 1)

end

end A138445.P12974016070475492328

namespace A138445

/-- `A138448(n+1)+A138446(n+1)` -/
def P12974016070475492328.Spec : Prop :=
  ∀ n, P12974016070475492328.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P9890596550517461661

`A253655(n+1)+A127920(n+1)`
-/

namespace A138445.P9890596550517461661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253655 (n + 1) + A127920 (n + 1)

end

end A138445.P9890596550517461661

namespace A138445

/-- `A253655(n+1)+A127920(n+1)` -/
def P9890596550517461661.Spec : Prop :=
  ∀ n, P9890596550517461661.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P13077088540610700358

`A138441(n+1)-A138442(n+1)`
-/

namespace A138445.P13077088540610700358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138442 (n + 1)

end

end A138445.P13077088540610700358

namespace A138445

/-- `A138441(n+1)-A138442(n+1)` -/
def P13077088540610700358.Spec : Prop :=
  ∀ n, P13077088540610700358.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P17593230091903171777

`A138443(n+1)-A138447(n+1)`
-/

namespace A138445.P17593230091903171777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138447 (n + 1)

end

end A138445.P17593230091903171777

namespace A138445

/-- `A138443(n+1)-A138447(n+1)` -/
def P17593230091903171777.Spec : Prop :=
  ∀ n, P17593230091903171777.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P10058638026171607454

`A138444(n+1)-A138450(n+1)`
-/

namespace A138445.P10058638026171607454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138444 (n + 1) - A138450 (n + 1)

end

end A138445.P10058638026171607454

namespace A138445

/-- `A138444(n+1)-A138450(n+1)` -/
def P10058638026171607454.Spec : Prop :=
  ∀ n, P10058638026171607454.a n = A138445 (n + 1)

end A138445

/-! ## A138445.P18379214017331208418

`A000040(n+1)*A138427(n+1)`
-/

namespace A138445.P18379214017331208418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138427 (n + 1)

end

end A138445.P18379214017331208418

namespace A138445

/-- `A000040(n+1)*A138427(n+1)` -/
def P18379214017331208418.Spec : Prop :=
  ∀ n, P18379214017331208418.a n = A138445 (n + 1)

end A138445

/-!
# A138446: a(n) = ((n-th prime)^6-(n-th prime)^2)/10.

The programs for A138446, the canonical program `A138446.P14776877047564728891` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138446 has offset 1).

The definition of A138446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138446.P14776877047564728891

`2*A122220(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138446

/-- `2*A122220(n+1)` -/
def P14776877047564728891.Spec : Prop :=
  ∀ n, P14776877047564728891.a n = A138446 (n + 1)

theorem P14776877047564728891.correct : P14776877047564728891.Spec := by
  intro n
  simp only [A138446, Nat.add_sub_cancel]

end A138446

/-! ## A138446.P1560347505611383662

`A138444(n+1)/2`
-/

namespace A138446.P1560347505611383662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / 2

end

end A138446.P1560347505611383662

namespace A138446

/-- `A138444(n+1)/2` -/
def P1560347505611383662.Spec : Prop :=
  ∀ n, P1560347505611383662.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P15831372434887603375

`3*A138450(n+1)`
-/

namespace A138446.P15831372434887603375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138450 (n + 1)

end

end A138446.P15831372434887603375

namespace A138446

/-- `3*A138450(n+1)` -/
def P15831372434887603375.Spec : Prop :=
  ∀ n, P15831372434887603375.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P9156044294772968199

`A138441(n+1)/5`
-/

namespace A138446.P9156044294772968199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / 5

end

end A138446.P9156044294772968199

namespace A138446

/-- `A138441(n+1)/5` -/
def P9156044294772968199.Spec : Prop :=
  ∀ n, P9156044294772968199.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P9355673924212741351

`6*A138451(n+1)`
-/

namespace A138446.P9355673924212741351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138451 (n + 1)

end

end A138446.P9355673924212741351

namespace A138446

/-- `6*A138451(n+1)` -/
def P9355673924212741351.Spec : Prop :=
  ∀ n, P9355673924212741351.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P7401058847661040270

`A138409(n+1)/10`
-/

namespace A138446.P7401058847661040270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 10

end

end A138446.P7401058847661040270

namespace A138446

/-- `A138409(n+1)/10` -/
def P7401058847661040270.Spec : Prop :=
  ∀ n, P7401058847661040270.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P7312293755965871078

`3/2*A138448(n+1)`
-/

namespace A138446.P7312293755965871078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138448 (n + 1) : ℚ)

end

end A138446.P7312293755965871078

namespace A138446

/-- `3/2*A138448(n+1)` -/
def P7312293755965871078.Spec : Prop :=
  ∀ n, P7312293755965871078.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P14451263709310916250

`2/5*A138443(n+1)`
-/

namespace A138446.P14451263709310916250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138443 (n + 1) : ℚ)

end

end A138446.P14451263709310916250

namespace A138446

/-- `2/5*A138443(n+1)` -/
def P14451263709310916250.Spec : Prop :=
  ∀ n, P14451263709310916250.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P7400216495069626351

`3/5*A138445(n+1)`
-/

namespace A138446.P7400216495069626351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A138445 (n + 1) : ℚ)

end

end A138446.P7400216495069626351

namespace A138446

/-- `3/5*A138445(n+1)` -/
def P7400216495069626351.Spec : Prop :=
  ∀ n, P7400216495069626351.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P8531505641236040578

`3/5*C(A066872(n+1), 3)`
-/

namespace A138446.P8531505641236040578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (Nat.choose (A066872 (n + 1)).toNat 3 : ℚ)

end

end A138446.P8531505641236040578

namespace A138446

/-- `3/5*C(A066872(n+1), 3)` -/
def P8531505641236040578.Spec : Prop :=
  ∀ n, P8531505641236040578.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P12047689191060700110

`3/5*C(A000040(n+1)²+1, 3)`
-/

namespace A138446.P12047689191060700110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3 : ℚ)

end

end A138446.P12047689191060700110

namespace A138446

/-- `3/5*C(A000040(n+1)²+1, 3)` -/
def P12047689191060700110.Spec : Prop :=
  ∀ n, P12047689191060700110.a n = (A138446 (n + 1) : ℚ)

end A138446

/-! ## A138446.P2758927315531642387

`A138450(n+1)+A138448(n+1)`
-/

namespace A138446.P2758927315531642387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138450 (n + 1) + A138448 (n + 1)

end

end A138446.P2758927315531642387

namespace A138446

/-- `A138450(n+1)+A138448(n+1)` -/
def P2758927315531642387.Spec : Prop :=
  ∀ n, P2758927315531642387.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P2709056259254340773

`A138451(n+1)+A138447(n+1)`
-/

namespace A138446.P2709056259254340773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138451 (n + 1) + A138447 (n + 1)

end

end A138446.P2709056259254340773

namespace A138446

/-- `A138451(n+1)+A138447(n+1)` -/
def P2709056259254340773.Spec : Prop :=
  ∀ n, P2709056259254340773.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P18031224710963699603

`A138445(n+1)-A138448(n+1)`
-/

namespace A138446.P18031224710963699603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138448 (n + 1)

end

end A138446.P18031224710963699603

namespace A138446

/-- `A138445(n+1)-A138448(n+1)` -/
def P18031224710963699603.Spec : Prop :=
  ∀ n, P18031224710963699603.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P6415033967197270513

`A000040(n+1)*A138428(n+1)`
-/

namespace A138446.P6415033967197270513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138428 (n + 1)

end

end A138446.P6415033967197270513

namespace A138446

/-- `A000040(n+1)*A138428(n+1)` -/
def P6415033967197270513.Spec : Prop :=
  ∀ n, P6415033967197270513.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P17483906154717574601

`A001748(n+1)*A138430(n+1)`
-/

namespace A138446.P17483906154717574601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138430 (n + 1)

end

end A138446.P17483906154717574601

namespace A138446

/-- `A001748(n+1)*A138430(n+1)` -/
def P17483906154717574601.Spec : Prop :=
  ∀ n, P17483906154717574601.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P16384586224170296725

`A138441(n+1)%A138444(n+1)`
-/

namespace A138446.P16384586224170296725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138441 (n + 1)) (A138444 (n + 1))

end

end A138446.P16384586224170296725

namespace A138446

/-- `A138441(n+1)%A138444(n+1)` -/
def P16384586224170296725.Spec : Prop :=
  ∀ n, P16384586224170296725.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P14326583791524710772

`lcm(A122220(n+1), A138450(n+1))`
-/

namespace A138446.P14326583791524710772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122220 (n + 1)) (A138450 (n + 1))

end

end A138446.P14326583791524710772

namespace A138446

/-- `lcm(A122220(n+1), A138450(n+1))` -/
def P14326583791524710772.Spec : Prop :=
  ∀ n, (P14326583791524710772.a n : ℤ) = A138446 (n + 1)

end A138446

/-! ## A138446.P13775644560033209640

`2*(A138443(n+1)-A138444(n+1))`
-/

namespace A138446.P13775644560033209640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138443 (n + 1) - A138444 (n + 1))

end

end A138446.P13775644560033209640

namespace A138446

/-- `2*(A138443(n+1)-A138444(n+1))` -/
def P13775644560033209640.Spec : Prop :=
  ∀ n, P13775644560033209640.a n = A138446 (n + 1)

end A138446

/-! ## A138446.P9635135164621337117

`(A138443(n+1)-A122220(n+1))/2`
-/

namespace A138446.P9635135164621337117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) - A122220 (n + 1) : ℚ) / 2

end

end A138446.P9635135164621337117

namespace A138446

/-- `(A138443(n+1)-A122220(n+1))/2` -/
def P9635135164621337117.Spec : Prop :=
  ∀ n, P9635135164621337117.a n = (A138446 (n + 1) : ℚ)

end A138446

/-!
# A138447: a(n) = ((n-th prime)^6-(n-th prime)^2)/12.

The programs for A138447, the canonical program `A138447.P3322787018046642282` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138447 has offset 1).

The definition of A138447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138447.P4674265702241621008

`A138445(n+1)/2`
-/

namespace A138447.P4674265702241621008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / 2

end

end A138447.P4674265702241621008

namespace A138447

/-- `A138445(n+1)/2` -/
def P4674265702241621008.Spec : Prop :=
  ∀ n, P4674265702241621008.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P2331870328099428754

`A138443(n+1)/3`
-/

namespace A138447.P2331870328099428754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) : ℚ) / 3

end

end A138447.P2331870328099428754

namespace A138447

/-- `A138443(n+1)/3` -/
def P2331870328099428754.Spec : Prop :=
  ∀ n, P2331870328099428754.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P1403267307658294062

`A138442(n+1)/4`
-/

namespace A138447.P1403267307658294062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / 4

end

end A138447.P1403267307658294062

namespace A138447

/-- `A138442(n+1)/4` -/
def P1403267307658294062.Spec : Prop :=
  ∀ n, P1403267307658294062.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P9522699123826946653

`5*A138451(n+1)`
-/

namespace A138447.P9522699123826946653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138451 (n + 1)

end

end A138447.P9522699123826946653

namespace A138447

/-- `5*A138451(n+1)` -/
def P9522699123826946653.Spec : Prop :=
  ∀ n, P9522699123826946653.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P4959742544309546928

`A138441(n+1)/6`
-/

namespace A138447.P4959742544309546928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / 6

end

end A138447.P4959742544309546928

namespace A138447

/-- `A138441(n+1)/6` -/
def P4959742544309546928.Spec : Prop :=
  ∀ n, P4959742544309546928.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P7076362579469477612

`5/2*A138450(n+1)`
-/

namespace A138447.P7076362579469477612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A138450 (n + 1) : ℚ)

end

end A138447.P7076362579469477612

namespace A138447

/-- `5/2*A138450(n+1)` -/
def P7076362579469477612.Spec : Prop :=
  ∀ n, P7076362579469477612.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P9065239027728499648

`5/3*A122220(n+1)`
-/

namespace A138447.P9065239027728499648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A122220 (n + 1) : ℚ)

end

end A138447.P9065239027728499648

namespace A138447

/-- `5/3*A122220(n+1)` -/
def P9065239027728499648.Spec : Prop :=
  ∀ n, P9065239027728499648.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P7592399826001608541

`5/4*A138448(n+1)`
-/

namespace A138447.P7592399826001608541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A138448 (n + 1) : ℚ)

end

end A138447.P7592399826001608541

namespace A138447

/-- `5/4*A138448(n+1)` -/
def P7592399826001608541.Spec : Prop :=
  ∀ n, P7592399826001608541.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P17090031119125358387

`C(A066872(n+1), 3)/2`
-/

namespace A138447.P17090031119125358387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A066872 (n + 1)).toNat 3 : ℚ) / 2

end

end A138447.P17090031119125358387

namespace A138447

/-- `C(A066872(n+1), 3)/2` -/
def P17090031119125358387.Spec : Prop :=
  ∀ n, P17090031119125358387.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P9593542326532852819

`C(A000040(n+1)²+1, 3)/2`
-/

namespace A138447.P9593542326532852819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3 : ℚ) / 2

end

end A138447.P9593542326532852819

namespace A138447

/-- `C(A000040(n+1)²+1, 3)/2` -/
def P9593542326532852819.Spec : Prop :=
  ∀ n, P9593542326532852819.a n = (A138447 (n + 1) : ℚ)

end A138447

/-! ## A138447.P12943521783584104032

`A138450(n+1)+A122220(n+1)`
-/

namespace A138447.P12943521783584104032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138450 (n + 1) + A122220 (n + 1)

end

end A138447.P12943521783584104032

namespace A138447

/-- `A138450(n+1)+A122220(n+1)` -/
def P12943521783584104032.Spec : Prop :=
  ∀ n, P12943521783584104032.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P3356155151088388545

`A138459(n+1)+A138422(n+1)`
-/

namespace A138447.P3356155151088388545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138459 (n + 1) + A138422 (n + 1)

end

end A138447.P3356155151088388545

namespace A138447

/-- `A138459(n+1)+A138422(n+1)` -/
def P3356155151088388545.Spec : Prop :=
  ∀ n, P3356155151088388545.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P12258299567035803845

`A138451(n+1)+A138448(n+1)`
-/

namespace A138447.P12258299567035803845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138451 (n + 1) + A138448 (n + 1)

end

end A138447.P12258299567035803845

namespace A138447

/-- `A138451(n+1)+A138448(n+1)` -/
def P12258299567035803845.Spec : Prop :=
  ∀ n, P12258299567035803845.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P3322787018046642282

`A138442(n+1)-A138443(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138447

/-- `A138442(n+1)-A138443(n+1)` -/
def P3322787018046642282.Spec : Prop :=
  ∀ n, P3322787018046642282.a n = A138447 (n + 1)

theorem P3322787018046642282.correct : P3322787018046642282.Spec := by
  intro n
  simp only [A138447, Nat.add_sub_cancel]

end A138447

/-! ## A138447.P4428104183799108560

`A138443(n+1)-A138445(n+1)`
-/

namespace A138447.P4428104183799108560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138445 (n + 1)

end

end A138447.P4428104183799108560

namespace A138447

/-- `A138443(n+1)-A138445(n+1)` -/
def P4428104183799108560.Spec : Prop :=
  ∀ n, P4428104183799108560.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P13529574659479604724

`A138446(n+1)-A138451(n+1)`
-/

namespace A138447.P13529574659479604724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138446 (n + 1) - A138451 (n + 1)

end

end A138447.P13529574659479604724

namespace A138447

/-- `A138446(n+1)-A138451(n+1)` -/
def P13529574659479604724.Spec : Prop :=
  ∀ n, P13529574659479604724.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P18008758304168344619

`A066886(n+1)*A127920(n+1)`
-/

namespace A138447.P18008758304168344619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) * A127920 (n + 1)

end

end A138447.P18008758304168344619

namespace A138447

/-- `A066886(n+1)*A127920(n+1)` -/
def P18008758304168344619.Spec : Prop :=
  ∀ n, P18008758304168344619.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P9873959399214853359

`A066872(n+1)*A138422(n+1)`
-/

namespace A138447.P9873959399214853359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) * A138422 (n + 1)

end

end A138447.P9873959399214853359

namespace A138447

/-- `A066872(n+1)*A138422(n+1)` -/
def P9873959399214853359.Spec : Prop :=
  ∀ n, P9873959399214853359.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P14342886444553652264

`(A001248(n+1)+1)*A138422(n+1)`
-/

namespace A138447.P14342886444553652264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) + 1) * A138422 (n + 1)

end

end A138447.P14342886444553652264

namespace A138447

/-- `(A001248(n+1)+1)*A138422(n+1)` -/
def P14342886444553652264.Spec : Prop :=
  ∀ n, P14342886444553652264.a n = A138447 (n + 1)

end A138447

/-! ## A138447.P15854214282464113415

`2*A138448(n+1)-A122220(n+1)`
-/

namespace A138447.P15854214282464113415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138448 (n + 1) - A122220 (n + 1)

end

end A138447.P15854214282464113415

namespace A138447

/-- `2*A138448(n+1)-A122220(n+1)` -/
def P15854214282464113415.Spec : Prop :=
  ∀ n, P15854214282464113415.a n = A138447 (n + 1)

end A138447

/-!
# A138448: a(n) = (prime(n)^6 - prime(n)^2)/15.

The programs for A138448, the canonical program `A138448.P10621642085581528040` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138448 has offset 1).

The definition of A138448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138448.P10621642085581528040

`2*A138441(n+1)/15`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138448

/-- `2*A138441(n+1)/15` -/
def P10621642085581528040.Spec : Prop :=
  ∀ n, P10621642085581528040.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P2217971513116553997

`(A030516(n+1)-A001248(n+1))/15`
-/

namespace A138448.P2217971513116553997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A001248 (n + 1) : ℚ) / 15

end

end A138448.P2217971513116553997

namespace A138448

/-- `(A030516(n+1)-A001248(n+1))/15` -/
def P2217971513116553997.Spec : Prop :=
  ∀ n, P2217971513116553997.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P9906493455947578598

`A001248(n+1)*(A030514(n+1)-1)/15`
-/

namespace A138448.P9906493455947578598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) * (A030514 (n + 1) - 1) : ℚ) / 15

end

end A138448.P9906493455947578598

namespace A138448

/-- `A001248(n+1)*(A030514(n+1)-1)/15` -/
def P9906493455947578598.Spec : Prop :=
  ∀ n, P9906493455947578598.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P11422944983028703409

`2*A138450(n+1)`
-/

namespace A138448.P11422944983028703409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138450 (n + 1)

end

end A138448.P11422944983028703409

namespace A138448

/-- `2*A138450(n+1)` -/
def P11422944983028703409.Spec : Prop :=
  ∀ n, P11422944983028703409.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P1583637673276423951

`A138444(n+1)/3`
-/

namespace A138448.P1583637673276423951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / 3

end

end A138448.P1583637673276423951

namespace A138448

/-- `A138444(n+1)/3` -/
def P1583637673276423951.Spec : Prop :=
  ∀ n, P1583637673276423951.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P4594414577355508522

`4*A138451(n+1)`
-/

namespace A138448.P4594414577355508522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138451 (n + 1)

end

end A138448.P4594414577355508522

namespace A138448

/-- `4*A138451(n+1)` -/
def P4594414577355508522.Spec : Prop :=
  ∀ n, P4594414577355508522.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P1252179278956245985

`A138442(n+1)/5`
-/

namespace A138448.P1252179278956245985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138442 (n + 1) : ℚ) / 5

end

end A138448.P1252179278956245985

namespace A138448

/-- `A138442(n+1)/5` -/
def P1252179278956245985.Spec : Prop :=
  ∀ n, P1252179278956245985.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P4082452302001155640

`A138409(n+1)/15`
-/

namespace A138448.P4082452302001155640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 15

end

end A138448.P4082452302001155640

namespace A138448

/-- `A138409(n+1)/15` -/
def P4082452302001155640.Spec : Prop :=
  ∀ n, P4082452302001155640.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P4654422051453034532

`2/3*A138446(n+1)`
-/

namespace A138448.P4654422051453034532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138446 (n + 1) : ℚ)

end

end A138448.P4654422051453034532

namespace A138448

/-- `2/3*A138446(n+1)` -/
def P4654422051453034532.Spec : Prop :=
  ∀ n, P4654422051453034532.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P2019987720603451139

`4/3*A122220(n+1)`
-/

namespace A138448.P2019987720603451139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A122220 (n + 1) : ℚ)

end

end A138448.P2019987720603451139

namespace A138448

/-- `4/3*A122220(n+1)` -/
def P2019987720603451139.Spec : Prop :=
  ∀ n, P2019987720603451139.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P14899448953758932853

`2/5*A138445(n+1)`
-/

namespace A138448.P14899448953758932853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138445 (n + 1) : ℚ)

end

end A138448.P14899448953758932853

namespace A138448

/-- `2/5*A138445(n+1)` -/
def P14899448953758932853.Spec : Prop :=
  ∀ n, P14899448953758932853.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P7627796581509401755

`4/5*A138447(n+1)`
-/

namespace A138448.P7627796581509401755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A138447 (n + 1) : ℚ)

end

end A138448.P7627796581509401755

namespace A138448

/-- `4/5*A138447(n+1)` -/
def P7627796581509401755.Spec : Prop :=
  ∀ n, P7627796581509401755.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P1377220817507759377

`2/5*C(A000040(n+1)²+1, 3)`
-/

namespace A138448.P1377220817507759377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3 : ℚ)

end

end A138448.P1377220817507759377

namespace A138448

/-- `2/5*C(A000040(n+1)²+1, 3)` -/
def P1377220817507759377.Spec : Prop :=
  ∀ n, P1377220817507759377.a n = (A138448 (n + 1) : ℚ)

end A138448

/-! ## A138448.P15812237632859715199

`A138451(n+1)+A122220(n+1)`
-/

namespace A138448.P15812237632859715199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138451 (n + 1) + A122220 (n + 1)

end

end A138448.P15812237632859715199

namespace A138448

/-- `A138451(n+1)+A122220(n+1)` -/
def P15812237632859715199.Spec : Prop :=
  ∀ n, P15812237632859715199.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P6147636893101642595

`A138445(n+1)-A138446(n+1)`
-/

namespace A138448.P6147636893101642595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138446 (n + 1)

end

end A138448.P6147636893101642595

namespace A138448

/-- `A138445(n+1)-A138446(n+1)` -/
def P6147636893101642595.Spec : Prop :=
  ∀ n, P6147636893101642595.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P8778510748115312826

`A138446(n+1)-A138450(n+1)`
-/

namespace A138448.P8778510748115312826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138446 (n + 1) - A138450 (n + 1)

end

end A138448.P8778510748115312826

namespace A138448

/-- `A138446(n+1)-A138450(n+1)` -/
def P8778510748115312826.Spec : Prop :=
  ∀ n, P8778510748115312826.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P8974346606233476295

`A138447(n+1)-A138451(n+1)`
-/

namespace A138448.P8974346606233476295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A138451 (n + 1)

end

end A138448.P8974346606233476295

namespace A138448

/-- `A138447(n+1)-A138451(n+1)` -/
def P8974346606233476295.Spec : Prop :=
  ∀ n, P8974346606233476295.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P1027138414011080701

`A000040(n+1)*A138429(n+1)`
-/

namespace A138448.P1027138414011080701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138429 (n + 1)

end

end A138448.P1027138414011080701

namespace A138448

/-- `A000040(n+1)*A138429(n+1)` -/
def P1027138414011080701.Spec : Prop :=
  ∀ n, P1027138414011080701.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P16037751223558402641

`A100484(n+1)*A138430(n+1)`
-/

namespace A138448.P16037751223558402641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138430 (n + 1)

end

end A138448.P16037751223558402641

namespace A138448

/-- `A100484(n+1)*A138430(n+1)` -/
def P16037751223558402641.Spec : Prop :=
  ∀ n, P16037751223558402641.a n = A138448 (n + 1)

end A138448

/-! ## A138448.P10032939549257997377

`gcd(A138442(n+1), A138444(n+1))`
-/

namespace A138448.P10032939549257997377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138442 (n + 1)) (A138444 (n + 1))

end

end A138448.P10032939549257997377

namespace A138448

/-- `gcd(A138442(n+1), A138444(n+1))` -/
def P10032939549257997377.Spec : Prop :=
  ∀ n, (P10032939549257997377.a n : ℤ) = A138448 (n + 1)

end A138448

/-!
# A138450: a(n) = ((n-th prime)^6-(n-th prime)^2)/30.

The programs for A138450, the canonical program `A138450.P12019756699312526863` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138450 has offset 1).

The definition of A138450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138450.P2134087622515279942

`2*A138451(n+1)`
-/

namespace A138450.P2134087622515279942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138451 (n + 1)

end

end A138450.P2134087622515279942

namespace A138450

/-- `2*A138451(n+1)` -/
def P2134087622515279942.Spec : Prop :=
  ∀ n, P2134087622515279942.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P500640537615442230

`A138448(n+1)/2`
-/

namespace A138450.P500640537615442230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138448 (n + 1) : ℚ) / 2

end

end A138450.P500640537615442230

namespace A138450

/-- `A138448(n+1)/2` -/
def P500640537615442230.Spec : Prop :=
  ∀ n, P500640537615442230.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P7892951349616776836

`A138446(n+1)/3`
-/

namespace A138450.P7892951349616776836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / 3

end

end A138450.P7892951349616776836

namespace A138450

/-- `A138446(n+1)/3` -/
def P7892951349616776836.Spec : Prop :=
  ∀ n, P7892951349616776836.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P14027507205050966014

`A138445(n+1)/5`
-/

namespace A138450.P14027507205050966014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / 5

end

end A138450.P14027507205050966014

namespace A138450

/-- `A138445(n+1)/5` -/
def P14027507205050966014.Spec : Prop :=
  ∀ n, P14027507205050966014.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P852496346752345777

`A138444(n+1)/6`
-/

namespace A138450.P852496346752345777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / 6

end

end A138450.P852496346752345777

namespace A138450

/-- `A138444(n+1)/6` -/
def P852496346752345777.Spec : Prop :=
  ∀ n, P852496346752345777.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P16061150401758696428

`A138409(n+1)/30`
-/

namespace A138450.P16061150401758696428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 30

end

end A138450.P16061150401758696428

namespace A138450

/-- `A138409(n+1)/30` -/
def P16061150401758696428.Spec : Prop :=
  ∀ n, P16061150401758696428.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P119559679302977932

`2/3*A122220(n+1)`
-/

namespace A138450.P119559679302977932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A122220 (n + 1) : ℚ)

end

end A138450.P119559679302977932

namespace A138450

/-- `2/3*A122220(n+1)` -/
def P119559679302977932.Spec : Prop :=
  ∀ n, P119559679302977932.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P11995578260546660802

`2/5*A138447(n+1)`
-/

namespace A138450.P11995578260546660802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A138447 (n + 1) : ℚ)

end

end A138450.P11995578260546660802

namespace A138450

/-- `2/5*A138447(n+1)` -/
def P11995578260546660802.Spec : Prop :=
  ∀ n, P11995578260546660802.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P12215409957309967271

`C(A066872(n+1), 3)/5`
-/

namespace A138450.P12215409957309967271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A066872 (n + 1)).toNat 3 : ℚ) / 5

end

end A138450.P12215409957309967271

namespace A138450

/-- `C(A066872(n+1), 3)/5` -/
def P12215409957309967271.Spec : Prop :=
  ∀ n, P12215409957309967271.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P17097390292617512575

`C(A000040(n+1)²+1, 3)/5`
-/

namespace A138450.P17097390292617512575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) ^ 2 + 1).toNat 3 : ℚ) / 5

end

end A138450.P17097390292617512575

namespace A138450

/-- `C(A000040(n+1)²+1, 3)/5` -/
def P17097390292617512575.Spec : Prop :=
  ∀ n, P17097390292617512575.a n = (A138450 (n + 1) : ℚ)

end A138450

/-! ## A138450.P17022846182790601320

`A122220(n+1)-A138451(n+1)`
-/

namespace A138450.P17022846182790601320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122220 (n + 1) - A138451 (n + 1)

end

end A138450.P17022846182790601320

namespace A138450

/-- `A122220(n+1)-A138451(n+1)` -/
def P17022846182790601320.Spec : Prop :=
  ∀ n, P17022846182790601320.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P12019756699312526863

`A138447(n+1)-A122220(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138450

/-- `A138447(n+1)-A122220(n+1)` -/
def P12019756699312526863.Spec : Prop :=
  ∀ n, P12019756699312526863.a n = A138450 (n + 1)

theorem P12019756699312526863.correct : P12019756699312526863.Spec := by
  intro n
  simp only [A138450, Nat.add_sub_cancel]

end A138450

/-! ## A138450.P8411523771368555583

`A138444(n+1)-A138445(n+1)`
-/

namespace A138450.P8411523771368555583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138444 (n + 1) - A138445 (n + 1)

end

end A138450.P8411523771368555583

namespace A138450

/-- `A138444(n+1)-A138445(n+1)` -/
def P8411523771368555583.Spec : Prop :=
  ∀ n, P8411523771368555583.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P9669395860691672169

`A138446(n+1)-A138448(n+1)`
-/

namespace A138450.P9669395860691672169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138446 (n + 1) - A138448 (n + 1)

end

end A138450.P9669395860691672169

namespace A138450

/-- `A138446(n+1)-A138448(n+1)` -/
def P9669395860691672169.Spec : Prop :=
  ∀ n, P9669395860691672169.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P14381080371928297050

`A000040(n+1)*A138430(n+1)`
-/

namespace A138450.P14381080371928297050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138430 (n + 1)

end

end A138450.P14381080371928297050

namespace A138450

/-- `A000040(n+1)*A138430(n+1)` -/
def P14381080371928297050.Spec : Prop :=
  ∀ n, P14381080371928297050.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P11545053670561968074

`A138442(n+1)%A122220(n+1)`
-/

namespace A138450.P11545053670561968074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138442 (n + 1)) (A122220 (n + 1))

end

end A138450.P11545053670561968074

namespace A138450

/-- `A138442(n+1)%A122220(n+1)` -/
def P11545053670561968074.Spec : Prop :=
  ∀ n, P11545053670561968074.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P1920493603892205060

`A138441(n+1)%A138448(n+1)`
-/

namespace A138450.P1920493603892205060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138441 (n + 1)) (A138448 (n + 1))

end

end A138450.P1920493603892205060

namespace A138450

/-- `A138441(n+1)%A138448(n+1)` -/
def P1920493603892205060.Spec : Prop :=
  ∀ n, P1920493603892205060.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P4808704360905594535

`A138445(n+1)%A138448(n+1)`
-/

namespace A138450.P4808704360905594535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138445 (n + 1)) (A138448 (n + 1))

end

end A138450.P4808704360905594535

namespace A138450

/-- `A138445(n+1)%A138448(n+1)` -/
def P4808704360905594535.Spec : Prop :=
  ∀ n, P4808704360905594535.a n = A138450 (n + 1)

end A138450

/-! ## A138450.P4301101710729379830

`gcd(A138442(n+1), A138446(n+1))`
-/

namespace A138450.P4301101710729379830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138442 (n + 1)) (A138446 (n + 1))

end

end A138450.P4301101710729379830

namespace A138450

/-- `gcd(A138442(n+1), A138446(n+1))` -/
def P4301101710729379830.Spec : Prop :=
  ∀ n, (P4301101710729379830.a n : ℤ) = A138450 (n + 1)

end A138450

/-! ## A138450.P818446790478150391

`2*A122220(n+1)-A138448(n+1)`
-/

namespace A138450.P818446790478150391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122220 (n + 1) - A138448 (n + 1)

end

end A138450.P818446790478150391

namespace A138450

/-- `2*A122220(n+1)-A138448(n+1)` -/
def P818446790478150391.Spec : Prop :=
  ∀ n, P818446790478150391.a n = A138450 (n + 1)

end A138450

/-!
# A138451: a(n) = (prime(n)^6-prime(n)^2)/60.

The programs for A138451, the canonical program `A138451.P15770755837948932279` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138451 has offset 1).

The definition of A138451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138451.P3813451046440070723

`A138450(n+1)/2`
-/

namespace A138451.P3813451046440070723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138450 (n + 1) : ℚ) / 2

end

end A138451.P3813451046440070723

namespace A138451

/-- `A138450(n+1)/2` -/
def P3813451046440070723.Spec : Prop :=
  ∀ n, P3813451046440070723.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P13414147313025122496

`A122220(n+1)/3`
-/

namespace A138451.P13414147313025122496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122220 (n + 1) : ℚ) / 3

end

end A138451.P13414147313025122496

namespace A138451

/-- `A122220(n+1)/3` -/
def P13414147313025122496.Spec : Prop :=
  ∀ n, P13414147313025122496.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P9315654508307570535

`A138448(n+1)/4`
-/

namespace A138451.P9315654508307570535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138448 (n + 1) : ℚ) / 4

end

end A138451.P9315654508307570535

namespace A138451

/-- `A138448(n+1)/4` -/
def P9315654508307570535.Spec : Prop :=
  ∀ n, P9315654508307570535.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P18157887597750795822

`A138447(n+1)/5`
-/

namespace A138451.P18157887597750795822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138447 (n + 1) : ℚ) / 5

end

end A138451.P18157887597750795822

namespace A138451

/-- `A138447(n+1)/5` -/
def P18157887597750795822.Spec : Prop :=
  ∀ n, P18157887597750795822.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P3626525586961363012

`A138446(n+1)/6`
-/

namespace A138451.P3626525586961363012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / 6

end

end A138451.P3626525586961363012

namespace A138451

/-- `A138446(n+1)/6` -/
def P3626525586961363012.Spec : Prop :=
  ∀ n, P3626525586961363012.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P2343855657154350542

`floor(A138409(n+1)/15)/4`
-/

namespace A138451.P2343855657154350542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A138409 (n + 1) : ℚ) / 15⌋ : ℚ) / 4

end

end A138451.P2343855657154350542

namespace A138451

/-- `floor(A138409(n+1)/15)/4` -/
def P2343855657154350542.Spec : Prop :=
  ∀ n, P2343855657154350542.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P15770755837948932279

`A122220(n+1)-A138450(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A138451

/-- `A122220(n+1)-A138450(n+1)` -/
def P15770755837948932279.Spec : Prop :=
  ∀ n, P15770755837948932279.a n = A138451 (n + 1)

theorem P15770755837948932279.correct : P15770755837948932279.Spec := by
  intro n
  simp only [A138451, Nat.add_sub_cancel]

end A138451

/-! ## A138451.P5261096254401182059

`A138448(n+1)-A122220(n+1)`
-/

namespace A138451.P5261096254401182059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138448 (n + 1) - A122220 (n + 1)

end

end A138451.P5261096254401182059

namespace A138451

/-- `A138448(n+1)-A122220(n+1)` -/
def P5261096254401182059.Spec : Prop :=
  ∀ n, P5261096254401182059.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P9716746689481669014

`A138446(n+1)-A138447(n+1)`
-/

namespace A138451.P9716746689481669014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138446 (n + 1) - A138447 (n + 1)

end

end A138451.P9716746689481669014

namespace A138451

/-- `A138446(n+1)-A138447(n+1)` -/
def P9716746689481669014.Spec : Prop :=
  ∀ n, P9716746689481669014.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P17874394308836188851

`A138447(n+1)-A138448(n+1)`
-/

namespace A138451.P17874394308836188851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A138448 (n + 1)

end

end A138451.P17874394308836188851

namespace A138451

/-- `A138447(n+1)-A138448(n+1)` -/
def P17874394308836188851.Spec : Prop :=
  ∀ n, P17874394308836188851.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P8577353052560977443

`A138445(n+1)%A122220(n+1)`
-/

namespace A138451.P8577353052560977443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138445 (n + 1)) (A122220 (n + 1))

end

end A138451.P8577353052560977443

namespace A138451

/-- `A138445(n+1)%A122220(n+1)` -/
def P8577353052560977443.Spec : Prop :=
  ∀ n, P8577353052560977443.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P2581583573685080513

`A138443(n+1)%A138450(n+1)`
-/

namespace A138451.P2581583573685080513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138443 (n + 1)) (A138450 (n + 1))

end

end A138451.P2581583573685080513

namespace A138451

/-- `A138443(n+1)%A138450(n+1)` -/
def P2581583573685080513.Spec : Prop :=
  ∀ n, P2581583573685080513.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P2065690563363284596

`A138447(n+1)%A138450(n+1)`
-/

namespace A138451.P2065690563363284596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138447 (n + 1)) (A138450 (n + 1))

end

end A138451.P2065690563363284596

namespace A138451

/-- `A138447(n+1)%A138450(n+1)` -/
def P2065690563363284596.Spec : Prop :=
  ∀ n, P2065690563363284596.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P16670979374752748254

`gcd(A122220(n+1), A138442(n+1))`
-/

namespace A138451.P16670979374752748254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122220 (n + 1)) (A138442 (n + 1))

end

end A138451.P16670979374752748254

namespace A138451

/-- `gcd(A122220(n+1), A138442(n+1))` -/
def P16670979374752748254.Spec : Prop :=
  ∀ n, (P16670979374752748254.a n : ℤ) = A138451 (n + 1)

end A138451

/-! ## A138451.P4151315544153368049

`gcd(A138443(n+1), A138448(n+1))`
-/

namespace A138451.P4151315544153368049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138443 (n + 1)) (A138448 (n + 1))

end

end A138451.P4151315544153368049

namespace A138451

/-- `gcd(A138443(n+1), A138448(n+1))` -/
def P4151315544153368049.Spec : Prop :=
  ∀ n, (P4151315544153368049.a n : ℤ) = A138451 (n + 1)

end A138451

/-! ## A138451.P5461749136830890374

`gcd(A138444(n+1), A138447(n+1))`
-/

namespace A138451.P5461749136830890374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138444 (n + 1)) (A138447 (n + 1))

end

end A138451.P5461749136830890374

namespace A138451

/-- `gcd(A138444(n+1), A138447(n+1))` -/
def P5461749136830890374.Spec : Prop :=
  ∀ n, (P5461749136830890374.a n : ℤ) = A138451 (n + 1)

end A138451

/-! ## A138451.P1385349520734815220

`2*A122220(n+1)-A138447(n+1)`
-/

namespace A138451.P1385349520734815220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122220 (n + 1) - A138447 (n + 1)

end

end A138451.P1385349520734815220

namespace A138451

/-- `2*A122220(n+1)-A138447(n+1)` -/
def P1385349520734815220.Spec : Prop :=
  ∀ n, P1385349520734815220.a n = A138451 (n + 1)

end A138451

/-! ## A138451.P5240750419865162419

`(A138444(n+1)-A138445(n+1))/2`
-/

namespace A138451.P5240750419865162419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) - A138445 (n + 1) : ℚ) / 2

end

end A138451.P5240750419865162419

namespace A138451

/-- `(A138444(n+1)-A138445(n+1))/2` -/
def P5240750419865162419.Spec : Prop :=
  ∀ n, P5240750419865162419.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P13562546034974198776

`A000040(n+1)/2*A138430(n+1)`
-/

namespace A138451.P13562546034974198776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A138430 (n + 1) : ℚ)

end

end A138451.P13562546034974198776

namespace A138451

/-- `A000040(n+1)/2*A138430(n+1)` -/
def P13562546034974198776.Spec : Prop :=
  ∀ n, P13562546034974198776.a n = (A138451 (n + 1) : ℚ)

end A138451

/-! ## A138451.P15805560845058706161

`A000040(n+1)*A138429(n+1)/4`
-/

namespace A138451.P15805560845058706161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A138429 (n + 1) : ℚ) / 4

end

end A138451.P15805560845058706161

namespace A138451

/-- `A000040(n+1)*A138429(n+1)/4` -/
def P15805560845058706161.Spec : Prop :=
  ∀ n, P15805560845058706161.a n = (A138451 (n + 1) : ℚ)

end A138451

/-!
# A138452: a(n) = ((n-th prime)^6-(n-th prime)^3)/2.

The programs for A138452, the canonical program `A138452.P14547516998140644137` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138452 has offset 1).

The definition of A138452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A030078, A060800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138452.P14547516998140644137

`A030078(n+1)*A006093(n+1)*A060800(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138452

/-- `A030078(n+1)*A006093(n+1)*A060800(n+1)/2` -/
def P14547516998140644137.Spec : Prop :=
  ∀ n, P14547516998140644137.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P3606753481216100086

`A138410(n+1)/2`
-/

namespace A138452.P3606753481216100086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / 2

end

end A138452.P3606753481216100086

namespace A138452

/-- `A138410(n+1)/2` -/
def P3606753481216100086.Spec : Prop :=
  ∀ n, P3606753481216100086.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P12299212706551778383

`C(A030078(n+1), 2)`
-/

namespace A138452.P12299212706551778383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030078 (n + 1)).toNat 2

end

end A138452.P12299212706551778383

namespace A138452

/-- `C(A030078(n+1), 2)` -/
def P12299212706551778383.Spec : Prop :=
  ∀ n, (P12299212706551778383.a n : ℤ) = A138452 (n + 1)

end A138452

/-! ## A138452.P1366836480213646380

`C(A000040(n+1)^3, 2)`
-/

namespace A138452.P1366836480213646380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) ^ 3).toNat 2

end

end A138452.P1366836480213646380

namespace A138452

/-- `C(A000040(n+1)^3, 2)` -/
def P1366836480213646380.Spec : Prop :=
  ∀ n, (P1366836480213646380.a n : ℤ) = A138452 (n + 1)

end A138452

/-! ## A138452.P6995143254419809122

`A138453(n+1)+A138423(n+1)`
-/

namespace A138452.P6995143254419809122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) + A138423 (n + 1)

end

end A138452.P6995143254419809122

namespace A138452

/-- `A138453(n+1)+A138423(n+1)` -/
def P6995143254419809122.Spec : Prop :=
  ∀ n, P6995143254419809122.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P8433575907863331811

`A138460(n+1)+A138432(n+1)`
-/

namespace A138452.P8433575907863331811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138460 (n + 1) + A138432 (n + 1)

end

end A138452.P8433575907863331811

namespace A138452

/-- `A138460(n+1)+A138432(n+1)` -/
def P8433575907863331811.Spec : Prop :=
  ∀ n, P8433575907863331811.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P11127885225724961999

`A138440(n+1)-A127918(n+1)`
-/

namespace A138452.P11127885225724961999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A127918 (n + 1)

end

end A138452.P11127885225724961999

namespace A138452

/-- `A138440(n+1)-A127918(n+1)` -/
def P11127885225724961999.Spec : Prop :=
  ∀ n, P11127885225724961999.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P9245313410941650746

`A138441(n+1)-A138416(n+1)`
-/

namespace A138452.P9245313410941650746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138416 (n + 1)

end

end A138452.P9245313410941650746

namespace A138452

/-- `A138441(n+1)-A138416(n+1)` -/
def P9245313410941650746.Spec : Prop :=
  ∀ n, P9245313410941650746.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P8869925091563953100

`A000040(n+1)*A138431(n+1)`
-/

namespace A138452.P8869925091563953100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138431 (n + 1)

end

end A138452.P8869925091563953100

namespace A138452

/-- `A000040(n+1)*A138431(n+1)` -/
def P8869925091563953100.Spec : Prop :=
  ∀ n, P8869925091563953100.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P16881853826642764267

`A001248(n+1)*A138417(n+1)`
-/

namespace A138452.P16881853826642764267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138417 (n + 1)

end

end A138452.P16881853826642764267

namespace A138452

/-- `A001248(n+1)*A138417(n+1)` -/
def P16881853826642764267.Spec : Prop :=
  ∀ n, P16881853826642764267.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P2056803567659655619

`A060800(n+1)*A138423(n+1)`
-/

namespace A138452.P2056803567659655619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) * A138423 (n + 1)

end

end A138452.P2056803567659655619

namespace A138452

/-- `A060800(n+1)*A138423(n+1)` -/
def P2056803567659655619.Spec : Prop :=
  ∀ n, P2056803567659655619.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P5993677745878203032

`A138416(n+1)*A181149(n+1)`
-/

namespace A138452.P5993677745878203032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) * A181149 (n + 1)

end

end A138452.P5993677745878203032

namespace A138452

/-- `A138416(n+1)*A181149(n+1)` -/
def P5993677745878203032.Spec : Prop :=
  ∀ n, P5993677745878203032.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P579356710774511506

`lcm(A138417(n+1), A138423(n+1))`
-/

namespace A138452.P579356710774511506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138417 (n + 1)) (A138423 (n + 1))

end

end A138452.P579356710774511506

namespace A138452

/-- `lcm(A138417(n+1), A138423(n+1))` -/
def P579356710774511506.Spec : Prop :=
  ∀ n, (P579356710774511506.a n : ℤ) = A138452 (n + 1)

end A138452

/-! ## A138452.P17996815596596357507

`A000040(n+1)²*A138417(n+1)`
-/

namespace A138452.P17996815596596357507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138417 (n + 1)

end

end A138452.P17996815596596357507

namespace A138452

/-- `A000040(n+1)²*A138417(n+1)` -/
def P17996815596596357507.Spec : Prop :=
  ∀ n, P17996815596596357507.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P12912286537963284802

`(A036690(n+1)+1)*A138423(n+1)`
-/

namespace A138452.P12912286537963284802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) + 1) * A138423 (n + 1)

end

end A138452.P12912286537963284802

namespace A138452

/-- `(A036690(n+1)+1)*A138423(n+1)` -/
def P12912286537963284802.Spec : Prop :=
  ∀ n, P12912286537963284802.a n = A138452 (n + 1)

end A138452

/-! ## A138452.P18073848796324310488

`(A138411(n+1)+A138403(n+1))/2`
-/

namespace A138452.P18073848796324310488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) + A138403 (n + 1) : ℚ) / 2

end

end A138452.P18073848796324310488

namespace A138452

/-- `(A138411(n+1)+A138403(n+1))/2` -/
def P18073848796324310488.Spec : Prop :=
  ∀ n, P18073848796324310488.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P8329765375166529778

`(A138412(n+1)+A138406(n+1))/2`
-/

namespace A138452.P8329765375166529778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) + A138406 (n + 1) : ℚ) / 2

end

end A138452.P8329765375166529778

namespace A138452

/-- `(A138412(n+1)+A138406(n+1))/2` -/
def P8329765375166529778.Spec : Prop :=
  ∀ n, P8329765375166529778.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P16430097851306782725

`(A030516(n+1)-A030078(n+1))/2`
-/

namespace A138452.P16430097851306782725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A030078 (n + 1) : ℚ) / 2

end

end A138452.P16430097851306782725

namespace A138452

/-- `(A030516(n+1)-A030078(n+1))/2` -/
def P16430097851306782725.Spec : Prop :=
  ∀ n, P16430097851306782725.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P16865919251812108977

`(A138408(n+1)-A127917(n+1))/2`
-/

namespace A138452.P16865919251812108977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) - A127917 (n + 1) : ℚ) / 2

end

end A138452.P16865919251812108977

namespace A138452

/-- `(A138408(n+1)-A127917(n+1))/2` -/
def P16865919251812108977.Spec : Prop :=
  ∀ n, P16865919251812108977.a n = (A138452 (n + 1) : ℚ)

end A138452

/-! ## A138452.P12174687470917767192

`(A138409(n+1)-A135177(n+1))/2`
-/

namespace A138452.P12174687470917767192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) - A135177 (n + 1) : ℚ) / 2

end

end A138452.P12174687470917767192

namespace A138452

/-- `(A138409(n+1)-A135177(n+1))/2` -/
def P12174687470917767192.Spec : Prop :=
  ∀ n, P12174687470917767192.a n = (A138452 (n + 1) : ℚ)

end A138452

/-!
# A138453: a(n) = ((n-th prime)^6-(n-th prime)^4)/2.

The programs for A138453, the canonical program `A138453.P1680090917158117575` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138453 has offset 1).

The definition of A138453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138453.P842901886700892736

`2*A138455(n+1)`
-/

namespace A138453.P842901886700892736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138455 (n + 1)

end

end A138453.P842901886700892736

namespace A138453

/-- `2*A138455(n+1)` -/
def P842901886700892736.Spec : Prop :=
  ∀ n, P842901886700892736.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P1347142386865246241

`A138411(n+1)/2`
-/

namespace A138453.P1347142386865246241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 2

end

end A138453.P1347142386865246241

namespace A138453

/-- `A138411(n+1)/2` -/
def P1347142386865246241.Spec : Prop :=
  ∀ n, P1347142386865246241.a n = (A138453 (n + 1) : ℚ)

end A138453

/-! ## A138453.P10494117725477829895

`3*A138456(n+1)`
-/

namespace A138453.P10494117725477829895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138456 (n + 1)

end

end A138453.P10494117725477829895

namespace A138453

/-- `3*A138456(n+1)` -/
def P10494117725477829895.Spec : Prop :=
  ∀ n, P10494117725477829895.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P3206600786290271686

`4*A138457(n+1)`
-/

namespace A138453.P3206600786290271686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138457 (n + 1)

end

end A138453.P3206600786290271686

namespace A138453

/-- `4*A138457(n+1)` -/
def P3206600786290271686.Spec : Prop :=
  ∀ n, P3206600786290271686.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P10687079703199547042

`6*A138459(n+1)`
-/

namespace A138453.P10687079703199547042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138459 (n + 1)

end

end A138453.P10687079703199547042

namespace A138453

/-- `6*A138459(n+1)` -/
def P10687079703199547042.Spec : Prop :=
  ∀ n, P10687079703199547042.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P1368261543437452848

`3/2*A138454(n+1)`
-/

namespace A138453.P1368261543437452848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138454 (n + 1) : ℚ)

end

end A138453.P1368261543437452848

namespace A138453

/-- `3/2*A138454(n+1)` -/
def P1368261543437452848.Spec : Prop :=
  ∀ n, P1368261543437452848.a n = (A138453 (n + 1) : ℚ)

end A138453

/-! ## A138453.P5766676317330731202

`3*4*A138458(n+1)`
-/

namespace A138453.P5766676317330731202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A138458 (n + 1))

end

end A138453.P5766676317330731202

namespace A138453

/-- `3*4*A138458(n+1)` -/
def P5766676317330731202.Spec : Prop :=
  ∀ n, P5766676317330731202.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P11166631203365787670

`A138460(n+1)+A138439(n+1)`
-/

namespace A138453.P11166631203365787670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138460 (n + 1) + A138439 (n + 1)

end

end A138453.P11166631203365787670

namespace A138453

/-- `A138460(n+1)+A138439(n+1)` -/
def P11166631203365787670.Spec : Prop :=
  ∀ n, P11166631203365787670.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P14269581205713873181

`A138456(n+1)+A138454(n+1)`
-/

namespace A138453.P14269581205713873181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) + A138454 (n + 1)

end

end A138453.P14269581205713873181

namespace A138453

/-- `A138456(n+1)+A138454(n+1)` -/
def P14269581205713873181.Spec : Prop :=
  ∀ n, P14269581205713873181.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P1680090917158117575

`A138440(n+1)-A138417(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138453

/-- `A138440(n+1)-A138417(n+1)` -/
def P1680090917158117575.Spec : Prop :=
  ∀ n, P1680090917158117575.a n = A138453 (n + 1)

theorem P1680090917158117575.correct : P1680090917158117575.Spec := by
  intro n
  simp only [A138453, Nat.add_sub_cancel]

end A138453

/-! ## A138453.P2056592583166085941

`A138441(n+1)-A138418(n+1)`
-/

namespace A138453.P2056592583166085941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138418 (n + 1)

end

end A138453.P2056592583166085941

namespace A138453

/-- `A138441(n+1)-A138418(n+1)` -/
def P2056592583166085941.Spec : Prop :=
  ∀ n, P2056592583166085941.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P6290715600484858132

`A138452(n+1)-A138423(n+1)`
-/

namespace A138453.P6290715600484858132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) - A138423 (n + 1)

end

end A138453.P6290715600484858132

namespace A138453

/-- `A138452(n+1)-A138423(n+1)` -/
def P6290715600484858132.Spec : Prop :=
  ∀ n, P6290715600484858132.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P7300465754824033870

`A000040(n+1)*A138432(n+1)`
-/

namespace A138453.P7300465754824033870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138432 (n + 1)

end

end A138453.P7300465754824033870

namespace A138453

/-- `A000040(n+1)*A138432(n+1)` -/
def P7300465754824033870.Spec : Prop :=
  ∀ n, P7300465754824033870.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P10424230198658483156

`A001248(n+1)*A138418(n+1)`
-/

namespace A138453.P10424230198658483156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138418 (n + 1)

end

end A138453.P10424230198658483156

namespace A138453

/-- `A001248(n+1)*A138418(n+1)` -/
def P10424230198658483156.Spec : Prop :=
  ∀ n, P10424230198658483156.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P14678352861019754174

`A001748(n+1)*A138435(n+1)`
-/

namespace A138453.P14678352861019754174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138435 (n + 1)

end

end A138453.P14678352861019754174

namespace A138453

/-- `A001748(n+1)*A138435(n+1)` -/
def P14678352861019754174.Spec : Prop :=
  ∀ n, P14678352861019754174.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P13510484061478223576

`A001749(n+1)*A138436(n+1)`
-/

namespace A138453.P13510484061478223576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138436 (n + 1)

end

end A138453.P13510484061478223576

namespace A138453

/-- `A001749(n+1)*A138436(n+1)` -/
def P13510484061478223576.Spec : Prop :=
  ∀ n, P13510484061478223576.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P10431523779307068618

`A008864(n+1)*A138439(n+1)`
-/

namespace A138453.P10431523779307068618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A138439 (n + 1)

end

end A138453.P10431523779307068618

namespace A138453

/-- `A008864(n+1)*A138439(n+1)` -/
def P10431523779307068618.Spec : Prop :=
  ∀ n, P10431523779307068618.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P9842975728440436660

`A030078(n+1)*A127918(n+1)`
-/

namespace A138453.P9842975728440436660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A127918 (n + 1)

end

end A138453.P9842975728440436660

namespace A138453

/-- `A030078(n+1)*A127918(n+1)` -/
def P9842975728440436660.Spec : Prop :=
  ∀ n, P9842975728440436660.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P5439132467945749494

`A034953(n+1)*A138403(n+1)`
-/

namespace A138453.P5439132467945749494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A138403 (n + 1)

end

end A138453.P5439132467945749494

namespace A138453

/-- `A034953(n+1)*A138403(n+1)` -/
def P5439132467945749494.Spec : Prop :=
  ∀ n, P5439132467945749494.a n = A138453 (n + 1)

end A138453

/-! ## A138453.P3088641139367967658

`A036690(n+1)*A138423(n+1)`
-/

namespace A138453.P3088641139367967658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A138423 (n + 1)

end

end A138453.P3088641139367967658

namespace A138453

/-- `A036690(n+1)*A138423(n+1)` -/
def P3088641139367967658.Spec : Prop :=
  ∀ n, P3088641139367967658.a n = A138453 (n + 1)

end A138453

/-!
# A138454: a(n) = ((n-th prime)^6-(n-th prime)^4)/3.

The programs for A138454, the canonical program `A138454.P7090914024500942586` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138454 has offset 1).

The definition of A138454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138454.P14748046824173599228

`2*A138456(n+1)`
-/

namespace A138454.P14748046824173599228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138456 (n + 1)

end

end A138454.P14748046824173599228

namespace A138454

/-- `2*A138456(n+1)` -/
def P14748046824173599228.Spec : Prop :=
  ∀ n, P14748046824173599228.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P6649041331751377735

`A138411(n+1)/3`
-/

namespace A138454.P6649041331751377735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 3

end

end A138454.P6649041331751377735

namespace A138454

/-- `A138411(n+1)/3` -/
def P6649041331751377735.Spec : Prop :=
  ∀ n, P6649041331751377735.a n = (A138454 (n + 1) : ℚ)

end A138454

/-! ## A138454.P4156476692407354151

`4*A138459(n+1)`
-/

namespace A138454.P4156476692407354151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138459 (n + 1)

end

end A138454.P4156476692407354151

namespace A138454

/-- `4*A138459(n+1)` -/
def P4156476692407354151.Spec : Prop :=
  ∀ n, P4156476692407354151.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P16670902624570331282

`8*A138458(n+1)`
-/

namespace A138454.P16670902624570331282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A138458 (n + 1)

end

end A138454.P16670902624570331282

namespace A138454

/-- `8*A138458(n+1)` -/
def P16670902624570331282.Spec : Prop :=
  ∀ n, P16670902624570331282.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P11603784635607865048

`2/3*A138453(n+1)`
-/

namespace A138454.P11603784635607865048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138453 (n + 1) : ℚ)

end

end A138454.P11603784635607865048

namespace A138454

/-- `2/3*A138453(n+1)` -/
def P11603784635607865048.Spec : Prop :=
  ∀ n, P11603784635607865048.a n = (A138454 (n + 1) : ℚ)

end A138454

/-! ## A138454.P11157580955921815472

`4/3*A138455(n+1)`
-/

namespace A138454.P11157580955921815472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138455 (n + 1) : ℚ)

end

end A138454.P11157580955921815472

namespace A138454

/-- `4/3*A138455(n+1)` -/
def P11157580955921815472.Spec : Prop :=
  ∀ n, P11157580955921815472.a n = (A138454 (n + 1) : ℚ)

end A138454

/-! ## A138454.P16422838673638700760

`A138459(n+1)+A138455(n+1)`
-/

namespace A138454.P16422838673638700760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138459 (n + 1) + A138455 (n + 1)

end

end A138454.P16422838673638700760

namespace A138454

/-- `A138459(n+1)+A138455(n+1)` -/
def P16422838673638700760.Spec : Prop :=
  ∀ n, P16422838673638700760.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P7090914024500942586

`A138442(n+1)-A138419(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138454

/-- `A138442(n+1)-A138419(n+1)` -/
def P7090914024500942586.Spec : Prop :=
  ∀ n, P7090914024500942586.a n = A138454 (n + 1)

theorem P7090914024500942586.correct : P7090914024500942586.Spec := by
  intro n
  simp only [A138454, Nat.add_sub_cancel]

end A138454

/-! ## A138454.P4951185704611548250

`A138453(n+1)-A138456(n+1)`
-/

namespace A138454.P4951185704611548250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) - A138456 (n + 1)

end

end A138454.P4951185704611548250

namespace A138454

/-- `A138453(n+1)-A138456(n+1)` -/
def P4951185704611548250.Spec : Prop :=
  ∀ n, P4951185704611548250.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P14990848504504193849

`A000040(n+1)*A138433(n+1)`
-/

namespace A138454.P14990848504504193849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138433 (n + 1)

end

end A138454.P14990848504504193849

namespace A138454

/-- `A000040(n+1)*A138433(n+1)` -/
def P14990848504504193849.Spec : Prop :=
  ∀ n, P14990848504504193849.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P264222449186261567

`A001248(n+1)*A138419(n+1)`
-/

namespace A138454.P264222449186261567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138419 (n + 1)

end

end A138454.P264222449186261567

namespace A138454

/-- `A001248(n+1)*A138419(n+1)` -/
def P264222449186261567.Spec : Prop :=
  ∀ n, P264222449186261567.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P74349641614409947

`A001749(n+1)*A138437(n+1)`
-/

namespace A138454.P74349641614409947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138437 (n + 1)

end

end A138454.P74349641614409947

namespace A138454

/-- `A001749(n+1)*A138437(n+1)` -/
def P74349641614409947.Spec : Prop :=
  ∀ n, P74349641614409947.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P9194718730587241803

`A030078(n+1)*A127919(n+1)`
-/

namespace A138454.P9194718730587241803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A127919 (n + 1)

end

end A138454.P9194718730587241803

namespace A138454

/-- `A030078(n+1)*A127919(n+1)` -/
def P9194718730587241803.Spec : Prop :=
  ∀ n, P9194718730587241803.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P4152672891975666581

`A069262(n+1)*A138422(n+1)`
-/

namespace A138454.P4152672891975666581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069262 (n + 1) * A138422 (n + 1)

end

end A138454.P4152672891975666581

namespace A138454

/-- `A069262(n+1)*A138422(n+1)` -/
def P4152672891975666581.Spec : Prop :=
  ∀ n, P4152672891975666581.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P15555297607120585796

`A079704(n+1)*A138421(n+1)`
-/

namespace A138454.P15555297607120585796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A138421 (n + 1)

end

end A138454.P15555297607120585796

namespace A138454

/-- `A079704(n+1)*A138421(n+1)` -/
def P15555297607120585796.Spec : Prop :=
  ∀ n, P15555297607120585796.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P13691995876918237324

`A100484(n+1)*A138435(n+1)`
-/

namespace A138454.P13691995876918237324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138435 (n + 1)

end

end A138454.P13691995876918237324

namespace A138454

/-- `A100484(n+1)*A138435(n+1)` -/
def P13691995876918237324.Spec : Prop :=
  ∀ n, P13691995876918237324.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P14020227297665430190

`A127920(n+1)*A172190(n+1)`
-/

namespace A138454.P14020227297665430190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127920 (n + 1) * A172190 (n + 1)

end

end A138454.P14020227297665430190

namespace A138454

/-- `A127920(n+1)*A172190(n+1)` -/
def P14020227297665430190.Spec : Prop :=
  ∀ n, P14020227297665430190.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P16753210245761544550

`A000040(n+1)²*A138419(n+1)`
-/

namespace A138454.P16753210245761544550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138419 (n + 1)

end

end A138454.P16753210245761544550

namespace A138454

/-- `A000040(n+1)²*A138419(n+1)` -/
def P16753210245761544550.Spec : Prop :=
  ∀ n, P16753210245761544550.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P4079409589691381413

`A100484(n+1)²*A138422(n+1)`
-/

namespace A138454.P4079409589691381413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) ^ 2 * A138422 (n + 1)

end

end A138454.P4079409589691381413

namespace A138454

/-- `A100484(n+1)²*A138422(n+1)` -/
def P4079409589691381413.Spec : Prop :=
  ∀ n, P4079409589691381413.a n = A138454 (n + 1)

end A138454

/-! ## A138454.P12794625629955102828

`A138435(n+1)²/A138422(n+1)`
-/

namespace A138454.P12794625629955102828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) ^ 2 : ℚ) / (A138422 (n + 1) : ℚ)

end

end A138454.P12794625629955102828

namespace A138454

/-- `A138435(n+1)²/A138422(n+1)` -/
def P12794625629955102828.Spec : Prop :=
  ∀ n, P12794625629955102828.a n = (A138454 (n + 1) : ℚ)

end A138454

/-!
# A138455: a(n) = ((n-th prime)^6-(n-th prime)^4)/4.

The programs for A138455, the canonical program `A138455.P8102202229354700522` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138455 has offset 1).

The definition of A138455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138455.P3580962423777574722

`2*A138457(n+1)`
-/

namespace A138455.P3580962423777574722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138457 (n + 1)

end

end A138455.P3580962423777574722

namespace A138455

/-- `2*A138457(n+1)` -/
def P3580962423777574722.Spec : Prop :=
  ∀ n, P3580962423777574722.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P8720205236371178337

`A138453(n+1)/2`
-/

namespace A138455.P8720205236371178337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / 2

end

end A138455.P8720205236371178337

namespace A138455

/-- `A138453(n+1)/2` -/
def P8720205236371178337.Spec : Prop :=
  ∀ n, P8720205236371178337.a n = (A138455 (n + 1) : ℚ)

end A138455

/-! ## A138455.P15297328354216954717

`3*A138459(n+1)`
-/

namespace A138455.P15297328354216954717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138459 (n + 1)

end

end A138455.P15297328354216954717

namespace A138455

/-- `3*A138459(n+1)` -/
def P15297328354216954717.Spec : Prop :=
  ∀ n, P15297328354216954717.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P11926375913360516621

`A138411(n+1)/4`
-/

namespace A138455.P11926375913360516621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 4

end

end A138455.P11926375913360516621

namespace A138455

/-- `A138411(n+1)/4` -/
def P11926375913360516621.Spec : Prop :=
  ∀ n, P11926375913360516621.a n = (A138455 (n + 1) : ℚ)

end A138455

/-! ## A138455.P10678058904423864258

`6*A138458(n+1)`
-/

namespace A138455.P10678058904423864258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138458 (n + 1)

end

end A138455.P10678058904423864258

namespace A138455

/-- `6*A138458(n+1)` -/
def P10678058904423864258.Spec : Prop :=
  ∀ n, P10678058904423864258.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P12034809949361834773

`3/2*A138456(n+1)`
-/

namespace A138455.P12034809949361834773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138456 (n + 1) : ℚ)

end

end A138455.P12034809949361834773

namespace A138455

/-- `3/2*A138456(n+1)` -/
def P12034809949361834773.Spec : Prop :=
  ∀ n, P12034809949361834773.a n = (A138455 (n + 1) : ℚ)

end A138455

/-! ## A138455.P10524086627223247499

`3/4*A138454(n+1)`
-/

namespace A138455.P10524086627223247499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138454 (n + 1) : ℚ)

end

end A138455.P10524086627223247499

namespace A138455

/-- `3/4*A138454(n+1)` -/
def P10524086627223247499.Spec : Prop :=
  ∀ n, P10524086627223247499.a n = (A138455 (n + 1) : ℚ)

end A138455

/-! ## A138455.P2924823551045950153

`A138459(n+1)+A138456(n+1)`
-/

namespace A138455.P2924823551045950153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138459 (n + 1) + A138456 (n + 1)

end

end A138455.P2924823551045950153

namespace A138455

/-- `A138459(n+1)+A138456(n+1)` -/
def P2924823551045950153.Spec : Prop :=
  ∀ n, P2924823551045950153.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P8102202229354700522

`A138443(n+1)-A138420(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138455

/-- `A138443(n+1)-A138420(n+1)` -/
def P8102202229354700522.Spec : Prop :=
  ∀ n, P8102202229354700522.a n = A138455 (n + 1)

theorem P8102202229354700522.correct : P8102202229354700522.Spec := by
  intro n
  simp only [A138455, Nat.add_sub_cancel]

end A138455

/-! ## A138455.P10970202940583415808

`A138454(n+1)-A138459(n+1)`
-/

namespace A138455.P10970202940583415808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138454 (n + 1) - A138459 (n + 1)

end

end A138455.P10970202940583415808

namespace A138455

/-- `A138454(n+1)-A138459(n+1)` -/
def P10970202940583415808.Spec : Prop :=
  ∀ n, P10970202940583415808.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P12458182225271030388

`A000040(n+1)*A138434(n+1)`
-/

namespace A138455.P12458182225271030388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138434 (n + 1)

end

end A138455.P12458182225271030388

namespace A138455

/-- `A000040(n+1)*A138434(n+1)` -/
def P12458182225271030388.Spec : Prop :=
  ∀ n, P12458182225271030388.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P2243306421961227897

`A001248(n+1)*A138420(n+1)`
-/

namespace A138455.P2243306421961227897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138420 (n + 1)

end

end A138455.P2243306421961227897

namespace A138455

/-- `A001248(n+1)*A138420(n+1)` -/
def P2243306421961227897.Spec : Prop :=
  ∀ n, P2243306421961227897.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P9852280745005974082

`A001748(n+1)*A138437(n+1)`
-/

namespace A138455.P9852280745005974082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138437 (n + 1)

end

end A138455.P9852280745005974082

namespace A138455

/-- `A001748(n+1)*A138437(n+1)` -/
def P9852280745005974082.Spec : Prop :=
  ∀ n, P9852280745005974082.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P13463324261371096268

`A034953(n+1)*A138423(n+1)`
-/

namespace A138455.P13463324261371096268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A138423 (n + 1)

end

end A138455.P13463324261371096268

namespace A138455

/-- `A034953(n+1)*A138423(n+1)` -/
def P13463324261371096268.Spec : Prop :=
  ∀ n, P13463324261371096268.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P10580139257374360247

`A079705(n+1)*A138422(n+1)`
-/

namespace A138455.P10580139257374360247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) * A138422 (n + 1)

end

end A138455.P10580139257374360247

namespace A138455

/-- `A079705(n+1)*A138422(n+1)` -/
def P10580139257374360247.Spec : Prop :=
  ∀ n, P10580139257374360247.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P15611079562733287352

`A100484(n+1)*A138436(n+1)`
-/

namespace A138455.P15611079562733287352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138436 (n + 1)

end

end A138455.P15611079562733287352

namespace A138455

/-- `A100484(n+1)*A138436(n+1)` -/
def P15611079562733287352.Spec : Prop :=
  ∀ n, P15611079562733287352.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P8850628364077705673

`A138438(n+1)*A138636(n+1)`
-/

namespace A138455.P8850628364077705673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138438 (n + 1) * A138636 (n + 1)

end

end A138455.P8850628364077705673

namespace A138455

/-- `A138438(n+1)*A138636(n+1)` -/
def P8850628364077705673.Spec : Prop :=
  ∀ n, P8850628364077705673.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P7174174330325768510

`lcm(A138457(n+1), A138459(n+1))`
-/

namespace A138455.P7174174330325768510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138457 (n + 1)) (A138459 (n + 1))

end

end A138455.P7174174330325768510

namespace A138455

/-- `lcm(A138457(n+1), A138459(n+1))` -/
def P7174174330325768510.Spec : Prop :=
  ∀ n, (P7174174330325768510.a n : ℤ) = A138455 (n + 1)

end A138455

/-! ## A138455.P17333965167222121722

`A138439(n+1)+A138416(n+1)²`
-/

namespace A138455.P17333965167222121722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138439 (n + 1) + A138416 (n + 1) ^ 2

end

end A138455.P17333965167222121722

namespace A138455

/-- `A138439(n+1)+A138416(n+1)²` -/
def P17333965167222121722.Spec : Prop :=
  ∀ n, P17333965167222121722.a n = A138455 (n + 1)

end A138455

/-! ## A138455.P6345714243652499554

`A138460(n+1)-A138416(n+1)²`
-/

namespace A138455.P6345714243652499554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138460 (n + 1) - A138416 (n + 1) ^ 2

end

end A138455.P6345714243652499554

namespace A138455

/-- `A138460(n+1)-A138416(n+1)²` -/
def P6345714243652499554.Spec : Prop :=
  ∀ n, P6345714243652499554.a n = A138455 (n + 1)

end A138455

/-!
# A138456: a(n) = ((n-th prime)^6-(n-th prime)^4)/6.

The programs for A138456, the canonical program `A138456.P16217539803196154374` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138456 has offset 1).

The definition of A138456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138456.P15447703437500661840

`2*A138459(n+1)`
-/

namespace A138456.P15447703437500661840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138459 (n + 1)

end

end A138456.P15447703437500661840

namespace A138456

/-- `2*A138459(n+1)` -/
def P15447703437500661840.Spec : Prop :=
  ∀ n, P15447703437500661840.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P2846972905107004116

`A138454(n+1)/2`
-/

namespace A138456.P2846972905107004116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / 2

end

end A138456.P2846972905107004116

namespace A138456

/-- `A138454(n+1)/2` -/
def P2846972905107004116.Spec : Prop :=
  ∀ n, P2846972905107004116.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P5691861751990532773

`A138453(n+1)/3`
-/

namespace A138456.P5691861751990532773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / 3

end

end A138456.P5691861751990532773

namespace A138456

/-- `A138453(n+1)/3` -/
def P5691861751990532773.Spec : Prop :=
  ∀ n, P5691861751990532773.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P6528143176948004447

`4*A138458(n+1)`
-/

namespace A138456.P6528143176948004447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138458 (n + 1)

end

end A138456.P6528143176948004447

namespace A138456

/-- `4*A138458(n+1)` -/
def P6528143176948004447.Spec : Prop :=
  ∀ n, P6528143176948004447.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P13117456266952391857

`A138411(n+1)/6`
-/

namespace A138456.P13117456266952391857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 6

end

end A138456.P13117456266952391857

namespace A138456

/-- `A138411(n+1)/6` -/
def P13117456266952391857.Spec : Prop :=
  ∀ n, P13117456266952391857.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P7098178646530060464

`2/3*A138455(n+1)`
-/

namespace A138456.P7098178646530060464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138455 (n + 1) : ℚ)

end

end A138456.P7098178646530060464

namespace A138456

/-- `2/3*A138455(n+1)` -/
def P7098178646530060464.Spec : Prop :=
  ∀ n, P7098178646530060464.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P2948557370409428475

`4/3*A138457(n+1)`
-/

namespace A138456.P2948557370409428475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A138457 (n + 1) : ℚ)

end

end A138456.P2948557370409428475

namespace A138456

/-- `4/3*A138457(n+1)` -/
def P2948557370409428475.Spec : Prop :=
  ∀ n, P2948557370409428475.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P8085866620142300003

`A138458(n+1)+A138457(n+1)`
-/

namespace A138456.P8085866620142300003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138458 (n + 1) + A138457 (n + 1)

end

end A138456.P8085866620142300003

namespace A138456

/-- `A138458(n+1)+A138457(n+1)` -/
def P8085866620142300003.Spec : Prop :=
  ∀ n, P8085866620142300003.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P16217539803196154374

`A138445(n+1)-A138421(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138456

/-- `A138445(n+1)-A138421(n+1)` -/
def P16217539803196154374.Spec : Prop :=
  ∀ n, P16217539803196154374.a n = A138456 (n + 1)

theorem P16217539803196154374.correct : P16217539803196154374.Spec := by
  intro n
  simp only [A138456, Nat.add_sub_cancel]

end A138456

/-! ## A138456.P4866541206182410154

`A138453(n+1)-A138454(n+1)`
-/

namespace A138456.P4866541206182410154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) - A138454 (n + 1)

end

end A138456.P4866541206182410154

namespace A138456

/-- `A138453(n+1)-A138454(n+1)` -/
def P4866541206182410154.Spec : Prop :=
  ∀ n, P4866541206182410154.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P14904730339181897215

`A138455(n+1)-A138459(n+1)`
-/

namespace A138456.P14904730339181897215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138455 (n + 1) - A138459 (n + 1)

end

end A138456.P14904730339181897215

namespace A138456

/-- `A138455(n+1)-A138459(n+1)` -/
def P14904730339181897215.Spec : Prop :=
  ∀ n, P14904730339181897215.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P10549442784263185386

`A000040(n+1)*A138435(n+1)`
-/

namespace A138456.P10549442784263185386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138435 (n + 1)

end

end A138456.P10549442784263185386

namespace A138456

/-- `A000040(n+1)*A138435(n+1)` -/
def P10549442784263185386.Spec : Prop :=
  ∀ n, P10549442784263185386.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P14888255050264071137

`A001248(n+1)*A138421(n+1)`
-/

namespace A138456.P14888255050264071137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138421 (n + 1)

end

end A138456.P14888255050264071137

namespace A138456

/-- `A001248(n+1)*A138421(n+1)` -/
def P14888255050264071137.Spec : Prop :=
  ∀ n, P14888255050264071137.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P6673863463496202002

`A001749(n+1)*A138438(n+1)`
-/

namespace A138456.P6673863463496202002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A138438 (n + 1)

end

end A138456.P6673863463496202002

namespace A138456

/-- `A001749(n+1)*A138438(n+1)` -/
def P6673863463496202002.Spec : Prop :=
  ∀ n, P6673863463496202002.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P5886077069621479732

`A030078(n+1)*A127920(n+1)`
-/

namespace A138456.P5886077069621479732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A127920 (n + 1)

end

end A138456.P5886077069621479732

namespace A138456

/-- `A030078(n+1)*A127920(n+1)` -/
def P5886077069621479732.Spec : Prop :=
  ∀ n, P5886077069621479732.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P11698566019404893959

`A079704(n+1)*A138422(n+1)`
-/

namespace A138456.P11698566019404893959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) * A138422 (n + 1)

end

end A138456.P11698566019404893959

namespace A138456

/-- `A079704(n+1)*A138422(n+1)` -/
def P11698566019404893959.Spec : Prop :=
  ∀ n, P11698566019404893959.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P2847837807209520196

`A100484(n+1)*A138437(n+1)`
-/

namespace A138456.P2847837807209520196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138437 (n + 1)

end

end A138456.P2847837807209520196

namespace A138456

/-- `A100484(n+1)*A138437(n+1)` -/
def P2847837807209520196.Spec : Prop :=
  ∀ n, P2847837807209520196.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P16766224941219355148

`A000040(n+1)²*A138421(n+1)`
-/

namespace A138456.P16766224941219355148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138421 (n + 1)

end

end A138456.P16766224941219355148

namespace A138456

/-- `A000040(n+1)²*A138421(n+1)` -/
def P16766224941219355148.Spec : Prop :=
  ∀ n, P16766224941219355148.a n = A138456 (n + 1)

end A138456

/-! ## A138456.P5342908833621688004

`A138435(n+1)²/A138421(n+1)`
-/

namespace A138456.P5342908833621688004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) ^ 2 : ℚ) / (A138421 (n + 1) : ℚ)

end

end A138456.P5342908833621688004

namespace A138456

/-- `A138435(n+1)²/A138421(n+1)` -/
def P5342908833621688004.Spec : Prop :=
  ∀ n, P5342908833621688004.a n = (A138456 (n + 1) : ℚ)

end A138456

/-! ## A138456.P11396625027510722164

`A138459(n+1)²/A138458(n+1)`
-/

namespace A138456.P11396625027510722164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) ^ 2 : ℚ) / (A138458 (n + 1) : ℚ)

end

end A138456.P11396625027510722164

namespace A138456

/-- `A138459(n+1)²/A138458(n+1)` -/
def P11396625027510722164.Spec : Prop :=
  ∀ n, P11396625027510722164.a n = (A138456 (n + 1) : ℚ)

end A138456

/-!
# A138457: a(n) = ((n-th prime)^6-(n-th prime)^4)/8.

The programs for A138457, the canonical program `A138457.P7138522454749224645` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138457 has offset 1).

The definition of A138457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138457.P18146404471282426582

`3*A138458(n+1)`
-/

namespace A138457.P18146404471282426582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138458 (n + 1)

end

end A138457.P18146404471282426582

namespace A138457

/-- `3*A138458(n+1)` -/
def P18146404471282426582.Spec : Prop :=
  ∀ n, P18146404471282426582.a n = A138457 (n + 1)

end A138457

/-! ## A138457.P11475143012218804446

`A138455(n+1)/2`
-/

namespace A138457.P11475143012218804446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / 2

end

end A138457.P11475143012218804446

namespace A138457

/-- `A138455(n+1)/2` -/
def P11475143012218804446.Spec : Prop :=
  ∀ n, P11475143012218804446.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P2939462779712325852

`A138453(n+1)/4`
-/

namespace A138457.P2939462779712325852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / 4

end

end A138457.P2939462779712325852

namespace A138457

/-- `A138453(n+1)/4` -/
def P2939462779712325852.Spec : Prop :=
  ∀ n, P2939462779712325852.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P8082834078485953501

`A138411(n+1)/8`
-/

namespace A138457.P8082834078485953501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 8

end

end A138457.P8082834078485953501

namespace A138457

/-- `A138411(n+1)/8` -/
def P8082834078485953501.Spec : Prop :=
  ∀ n, P8082834078485953501.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P14704105592143647226

`3/2*A138459(n+1)`
-/

namespace A138457.P14704105592143647226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138459 (n + 1) : ℚ)

end

end A138457.P14704105592143647226

namespace A138457

/-- `3/2*A138459(n+1)` -/
def P14704105592143647226.Spec : Prop :=
  ∀ n, P14704105592143647226.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P10393303730010314052

`3/4*A138456(n+1)`
-/

namespace A138457.P10393303730010314052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138456 (n + 1) : ℚ)

end

end A138457.P10393303730010314052

namespace A138457

/-- `3/4*A138456(n+1)` -/
def P10393303730010314052.Spec : Prop :=
  ∀ n, P10393303730010314052.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P2336505168227594503

`A138459(n+1)+A138458(n+1)`
-/

namespace A138457.P2336505168227594503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138459 (n + 1) + A138458 (n + 1)

end

end A138457.P2336505168227594503

namespace A138457

/-- `A138459(n+1)+A138458(n+1)` -/
def P2336505168227594503.Spec : Prop :=
  ∀ n, P2336505168227594503.a n = A138457 (n + 1)

end A138457

/-! ## A138457.P16584791732669909985

`A138456(n+1)-A138458(n+1)`
-/

namespace A138457.P16584791732669909985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) - A138458 (n + 1)

end

end A138457.P16584791732669909985

namespace A138457

/-- `A138456(n+1)-A138458(n+1)` -/
def P16584791732669909985.Spec : Prop :=
  ∀ n, P16584791732669909985.a n = A138457 (n + 1)

end A138457

/-! ## A138457.P7138522454749224645

`A000040(n+1)*A138436(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138457

/-- `A000040(n+1)*A138436(n+1)` -/
def P7138522454749224645.Spec : Prop :=
  ∀ n, P7138522454749224645.a n = A138457 (n + 1)

theorem P7138522454749224645.correct : P7138522454749224645.Spec := by
  intro n
  simp only [A138457, Nat.add_sub_cancel]

end A138457

/-! ## A138457.P883767909303084152

`A001748(n+1)*A138438(n+1)`
-/

namespace A138457.P883767909303084152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) * A138438 (n + 1)

end

end A138457.P883767909303084152

namespace A138457

/-- `A001748(n+1)*A138438(n+1)` -/
def P883767909303084152.Spec : Prop :=
  ∀ n, P883767909303084152.a n = A138457 (n + 1)

end A138457

/-! ## A138457.P8149386677263618170

`(A138459(n+1)+A138456(n+1))/2`
-/

namespace A138457.P8149386677263618170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) + A138456 (n + 1) : ℚ) / 2

end

end A138457.P8149386677263618170

namespace A138457

/-- `(A138459(n+1)+A138456(n+1))/2` -/
def P8149386677263618170.Spec : Prop :=
  ∀ n, P8149386677263618170.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P13656204439050349994

`(A138443(n+1)-A138420(n+1))/2`
-/

namespace A138457.P13656204439050349994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) - A138420 (n + 1) : ℚ) / 2

end

end A138457.P13656204439050349994

namespace A138457

/-- `(A138443(n+1)-A138420(n+1))/2` -/
def P13656204439050349994.Spec : Prop :=
  ∀ n, P13656204439050349994.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P2464939897553645608

`A000040(n+1)/2*A138434(n+1)`
-/

namespace A138457.P2464939897553645608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A138434 (n + 1) : ℚ)

end

end A138457.P2464939897553645608

namespace A138457

/-- `A000040(n+1)/2*A138434(n+1)` -/
def P2464939897553645608.Spec : Prop :=
  ∀ n, P2464939897553645608.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P17504057209163721895

`A001248(n+1)/2*A138420(n+1)`
-/

namespace A138457.P17504057209163721895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) / 2 * (A138420 (n + 1) : ℚ)

end

end A138457.P17504057209163721895

namespace A138457

/-- `A001248(n+1)/2*A138420(n+1)` -/
def P17504057209163721895.Spec : Prop :=
  ∀ n, P17504057209163721895.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P9341062208965303041

`A001748(n+1)/2*A138437(n+1)`
-/

namespace A138457.P9341062208965303041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 2 * (A138437 (n + 1) : ℚ)

end

end A138457.P9341062208965303041

namespace A138457

/-- `A001748(n+1)/2*A138437(n+1)` -/
def P9341062208965303041.Spec : Prop :=
  ∀ n, P9341062208965303041.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P14390424731364269206

`A034953(n+1)/2*A138423(n+1)`
-/

namespace A138457.P14390424731364269206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034953 (n + 1) : ℚ) / 2 * (A138423 (n + 1) : ℚ)

end

end A138457.P14390424731364269206

namespace A138457

/-- `A034953(n+1)/2*A138423(n+1)` -/
def P14390424731364269206.Spec : Prop :=
  ∀ n, P14390424731364269206.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P3723930520557843620

`A079705(n+1)/2*A138422(n+1)`
-/

namespace A138457.P3723930520557843620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 2 * (A138422 (n + 1) : ℚ)

end

end A138457.P3723930520557843620

namespace A138457

/-- `A079705(n+1)/2*A138422(n+1)` -/
def P3723930520557843620.Spec : Prop :=
  ∀ n, P3723930520557843620.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P4391713146135343443

`A100484(n+1)/2*A138436(n+1)`
-/

namespace A138457.P4391713146135343443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 * (A138436 (n + 1) : ℚ)

end

end A138457.P4391713146135343443

namespace A138457

/-- `A100484(n+1)/2*A138436(n+1)` -/
def P4391713146135343443.Spec : Prop :=
  ∀ n, P4391713146135343443.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P10755408941622505138

`A138438(n+1)/2*A138636(n+1)`
-/

namespace A138457.P10755408941622505138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138438 (n + 1) : ℚ) / 2 * (A138636 (n + 1) : ℚ)

end

end A138457.P10755408941622505138

namespace A138457

/-- `A138438(n+1)/2*A138636(n+1)` -/
def P10755408941622505138.Spec : Prop :=
  ∀ n, P10755408941622505138.a n = (A138457 (n + 1) : ℚ)

end A138457

/-! ## A138457.P124317782350479490

`(A000040(n+1)/2)²*A138418(n+1)`
-/

namespace A138457.P124317782350479490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) : ℚ) / 2) ^ 2 * (A138418 (n + 1) : ℚ)

end

end A138457.P124317782350479490

namespace A138457

/-- `(A000040(n+1)/2)²*A138418(n+1)` -/
def P124317782350479490.Spec : Prop :=
  ∀ n, P124317782350479490.a n = (A138457 (n + 1) : ℚ)

end A138457

/-!
# A138458: a(n) = ((n-th prime)^6-(n-th prime)^4)/24.

The programs for A138458, the canonical program `A138458.P4441180293552606245` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138458 has offset 1).

The definition of A138458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138458.P10993466499334353168

`A138459(n+1)/2`
-/

namespace A138458.P10993466499334353168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) : ℚ) / 2

end

end A138458.P10993466499334353168

namespace A138458

/-- `A138459(n+1)/2` -/
def P10993466499334353168.Spec : Prop :=
  ∀ n, P10993466499334353168.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P4314417968229694678

`A138457(n+1)/3`
-/

namespace A138458.P4314417968229694678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138457 (n + 1) : ℚ) / 3

end

end A138458.P4314417968229694678

namespace A138458

/-- `A138457(n+1)/3` -/
def P4314417968229694678.Spec : Prop :=
  ∀ n, P4314417968229694678.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P10240811176644519381

`A138456(n+1)/4`
-/

namespace A138458.P10240811176644519381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / 4

end

end A138458.P10240811176644519381

namespace A138458

/-- `A138456(n+1)/4` -/
def P10240811176644519381.Spec : Prop :=
  ∀ n, P10240811176644519381.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P18047907365966258114

`A138455(n+1)/6`
-/

namespace A138458.P18047907365966258114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / 6

end

end A138458.P18047907365966258114

namespace A138458

/-- `A138455(n+1)/6` -/
def P18047907365966258114.Spec : Prop :=
  ∀ n, P18047907365966258114.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P17210405662316612223

`A138454(n+1)/8`
-/

namespace A138458.P17210405662316612223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / 8

end

end A138458.P17210405662316612223

namespace A138458

/-- `A138454(n+1)/8` -/
def P17210405662316612223.Spec : Prop :=
  ∀ n, P17210405662316612223.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P7115493873197546781

`A138411(n+1)/24`
-/

namespace A138458.P7115493873197546781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 24

end

end A138458.P7115493873197546781

namespace A138458

/-- `A138411(n+1)/24` -/
def P7115493873197546781.Spec : Prop :=
  ∀ n, P7115493873197546781.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P4441180293552606245

`A138456(n+1)-A138457(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A138458

/-- `A138456(n+1)-A138457(n+1)` -/
def P4441180293552606245.Spec : Prop :=
  ∀ n, P4441180293552606245.a n = A138458 (n + 1)

theorem P4441180293552606245.correct : P4441180293552606245.Spec := by
  intro n
  simp only [A138458, Nat.add_sub_cancel]

end A138458

/-! ## A138458.P6019828207111370286

`A138457(n+1)-A138459(n+1)`
-/

namespace A138458.P6019828207111370286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138457 (n + 1) - A138459 (n + 1)

end

end A138458.P6019828207111370286

namespace A138458

/-- `A138457(n+1)-A138459(n+1)` -/
def P6019828207111370286.Spec : Prop :=
  ∀ n, P6019828207111370286.a n = A138458 (n + 1)

end A138458

/-! ## A138458.P3988412991603505120

`A000040(n+1)*A138438(n+1)`
-/

namespace A138458.P3988412991603505120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138438 (n + 1)

end

end A138458.P3988412991603505120

namespace A138458

/-- `A000040(n+1)*A138438(n+1)` -/
def P3988412991603505120.Spec : Prop :=
  ∀ n, P3988412991603505120.a n = A138458 (n + 1)

end A138458

/-! ## A138458.P15233961629733441880

`gcd(A138454(n+1), A138457(n+1))`
-/

namespace A138458.P15233961629733441880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138454 (n + 1)) (A138457 (n + 1))

end

end A138458.P15233961629733441880

namespace A138458

/-- `gcd(A138454(n+1), A138457(n+1))` -/
def P15233961629733441880.Spec : Prop :=
  ∀ n, (P15233961629733441880.a n : ℤ) = A138458 (n + 1)

end A138458

/-! ## A138458.P10153196479580588831

`(A138447(n+1)-A138422(n+1))/2`
-/

namespace A138458.P10153196479580588831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138447 (n + 1) - A138422 (n + 1) : ℚ) / 2

end

end A138458.P10153196479580588831

namespace A138458

/-- `(A138447(n+1)-A138422(n+1))/2` -/
def P10153196479580588831.Spec : Prop :=
  ∀ n, P10153196479580588831.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P13099903408683033653

`A000040(n+1)/2*A138437(n+1)`
-/

namespace A138458.P13099903408683033653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A138437 (n + 1) : ℚ)

end

end A138458.P13099903408683033653

namespace A138458

/-- `A000040(n+1)/2*A138437(n+1)` -/
def P13099903408683033653.Spec : Prop :=
  ∀ n, P13099903408683033653.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P9858277748408834381

`A001248(n+1)/2*A138422(n+1)`
-/

namespace A138458.P9858277748408834381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) / 2 * (A138422 (n + 1) : ℚ)

end

end A138458.P9858277748408834381

namespace A138458

/-- `A001248(n+1)/2*A138422(n+1)` -/
def P9858277748408834381.Spec : Prop :=
  ∀ n, P9858277748408834381.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P2343840718723763104

`A100484(n+1)/2*A138438(n+1)`
-/

namespace A138458.P2343840718723763104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 * (A138438 (n + 1) : ℚ)

end

end A138458.P2343840718723763104

namespace A138458

/-- `A100484(n+1)/2*A138438(n+1)` -/
def P2343840718723763104.Spec : Prop :=
  ∀ n, P2343840718723763104.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P8762882836981356379

`(A000040(n+1)/2)²*A138421(n+1)`
-/

namespace A138458.P8762882836981356379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) : ℚ) / 2) ^ 2 * (A138421 (n + 1) : ℚ)

end

end A138458.P8762882836981356379

namespace A138458

/-- `(A000040(n+1)/2)²*A138421(n+1)` -/
def P8762882836981356379.Spec : Prop :=
  ∀ n, P8762882836981356379.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P15277100496008947148

`A000040(n+1)²/2*A138422(n+1)`
-/

namespace A138458.P15277100496008947148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 : ℚ) / 2 * (A138422 (n + 1) : ℚ)

end

end A138458.P15277100496008947148

namespace A138458

/-- `A000040(n+1)²/2*A138422(n+1)` -/
def P15277100496008947148.Spec : Prop :=
  ∀ n, P15277100496008947148.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P1356849941030345399

`(A138435(n+1)/2)²/A138421(n+1)`
-/

namespace A138458.P1356849941030345399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A138435 (n + 1) : ℚ) / 2) ^ 2 / (A138421 (n + 1) : ℚ)

end

end A138458.P1356849941030345399

namespace A138458

/-- `(A138435(n+1)/2)²/A138421(n+1)` -/
def P1356849941030345399.Spec : Prop :=
  ∀ n, P1356849941030345399.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P1068298919821020653

`A138422(n+1)/A127919(n+1)*A138435(n+1)`
-/

namespace A138458.P1068298919821020653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 1) : ℚ) / (A127919 (n + 1) : ℚ) * (A138435 (n + 1) : ℚ)

end

end A138458.P1068298919821020653

namespace A138458

/-- `A138422(n+1)/A127919(n+1)*A138435(n+1)` -/
def P1068298919821020653.Spec : Prop :=
  ∀ n, P1068298919821020653.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P532564966382329616

`A208954(A000040(n+1))/2`
-/

namespace A138458.P532564966382329616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208954 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A138458.P532564966382329616

namespace A138458

/-- `A208954(A000040(n+1))/2` -/
def P532564966382329616.Spec : Prop :=
  ∀ n, P532564966382329616.a n = (A138458 (n + 1) : ℚ)

end A138458

/-! ## A138458.P10034743324050336339

`A208954(record[A006530(n+2)])/2`
-/

namespace A138458.P10034743324050336339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A138458.P10034743324050336339

namespace A138458

/-- `A208954(record[A006530(n+2)])/2` -/
def P10034743324050336339.Spec : Prop :=
  ∀ n, P10034743324050336339.a n = (A138458 (n + 1) : ℚ)

end A138458

/-!
# A138459: a(n) = ((n-th prime)^6-(n-th prime)^4)/12.

The programs for A138459, the canonical program `A138459.P17480034057079694095` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138459 has offset 1).

The definition of A138459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138459.P17480034057079694095

`2*A138458(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138459

/-- `2*A138458(n+1)` -/
def P17480034057079694095.Spec : Prop :=
  ∀ n, P17480034057079694095.a n = A138459 (n + 1)

theorem P17480034057079694095.correct : P17480034057079694095.Spec := by
  intro n
  simp only [A138459, Nat.add_sub_cancel]

end A138459

/-! ## A138459.P14341377384016452785

`A138456(n+1)/2`
-/

namespace A138459.P14341377384016452785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / 2

end

end A138459.P14341377384016452785

namespace A138459

/-- `A138456(n+1)/2` -/
def P14341377384016452785.Spec : Prop :=
  ∀ n, P14341377384016452785.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P17448331799671108023

`A138455(n+1)/3`
-/

namespace A138459.P17448331799671108023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138455 (n + 1) : ℚ) / 3

end

end A138459.P17448331799671108023

namespace A138459

/-- `A138455(n+1)/3` -/
def P17448331799671108023.Spec : Prop :=
  ∀ n, P17448331799671108023.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P8443279557464129144

`A138454(n+1)/4`
-/

namespace A138459.P8443279557464129144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / 4

end

end A138459.P8443279557464129144

namespace A138459

/-- `A138454(n+1)/4` -/
def P8443279557464129144.Spec : Prop :=
  ∀ n, P8443279557464129144.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P12116622355100851640

`A138453(n+1)/6`
-/

namespace A138459.P12116622355100851640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138453 (n + 1) : ℚ) / 6

end

end A138459.P12116622355100851640

namespace A138459

/-- `A138453(n+1)/6` -/
def P12116622355100851640.Spec : Prop :=
  ∀ n, P12116622355100851640.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P3431126269971464023

`A138411(n+1)/12`
-/

namespace A138459.P3431126269971464023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / 12

end

end A138459.P3431126269971464023

namespace A138459

/-- `A138411(n+1)/12` -/
def P3431126269971464023.Spec : Prop :=
  ∀ n, P3431126269971464023.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P2393219531523204311

`2/3*A138457(n+1)`
-/

namespace A138459.P2393219531523204311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A138457 (n + 1) : ℚ)

end

end A138459.P2393219531523204311

namespace A138459

/-- `2/3*A138457(n+1)` -/
def P2393219531523204311.Spec : Prop :=
  ∀ n, P2393219531523204311.a n = (A138459 (n + 1) : ℚ)

end A138459

/-! ## A138459.P10791348127698638335

`A138447(n+1)-A138422(n+1)`
-/

namespace A138459.P10791348127698638335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A138422 (n + 1)

end

end A138459.P10791348127698638335

namespace A138459

/-- `A138447(n+1)-A138422(n+1)` -/
def P10791348127698638335.Spec : Prop :=
  ∀ n, P10791348127698638335.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P5973736533356200117

`A138454(n+1)-A138455(n+1)`
-/

namespace A138459.P5973736533356200117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138454 (n + 1) - A138455 (n + 1)

end

end A138459.P5973736533356200117

namespace A138459

/-- `A138454(n+1)-A138455(n+1)` -/
def P5973736533356200117.Spec : Prop :=
  ∀ n, P5973736533356200117.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P15408179931251895561

`A138455(n+1)-A138456(n+1)`
-/

namespace A138459.P15408179931251895561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138455 (n + 1) - A138456 (n + 1)

end

end A138459.P15408179931251895561

namespace A138459

/-- `A138455(n+1)-A138456(n+1)` -/
def P15408179931251895561.Spec : Prop :=
  ∀ n, P15408179931251895561.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P14470859580429686041

`A138457(n+1)-A138458(n+1)`
-/

namespace A138459.P14470859580429686041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138457 (n + 1) - A138458 (n + 1)

end

end A138459.P14470859580429686041

namespace A138459

/-- `A138457(n+1)-A138458(n+1)` -/
def P14470859580429686041.Spec : Prop :=
  ∀ n, P14470859580429686041.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P9835752968599513908

`A000040(n+1)*A138437(n+1)`
-/

namespace A138459.P9835752968599513908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138437 (n + 1)

end

end A138459.P9835752968599513908

namespace A138459

/-- `A000040(n+1)*A138437(n+1)` -/
def P9835752968599513908.Spec : Prop :=
  ∀ n, P9835752968599513908.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P14117504391017157201

`A001248(n+1)*A138422(n+1)`
-/

namespace A138459.P14117504391017157201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138422 (n + 1)

end

end A138459.P14117504391017157201

namespace A138459

/-- `A001248(n+1)*A138422(n+1)` -/
def P14117504391017157201.Spec : Prop :=
  ∀ n, P14117504391017157201.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P11887502403287171164

`A100484(n+1)*A138438(n+1)`
-/

namespace A138459.P11887502403287171164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A138438 (n + 1)

end

end A138459.P11887502403287171164

namespace A138459

/-- `A100484(n+1)*A138438(n+1)` -/
def P11887502403287171164.Spec : Prop :=
  ∀ n, P11887502403287171164.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P16973525590534420770

`A000040(n+1)²*A138422(n+1)`
-/

namespace A138459.P16973525590534420770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138422 (n + 1)

end

end A138459.P16973525590534420770

namespace A138459

/-- `A000040(n+1)²*A138422(n+1)` -/
def P16973525590534420770.Spec : Prop :=
  ∀ n, P16973525590534420770.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P7779106474373956865

`(A066872(n+1)-1)*A138422(n+1)`
-/

namespace A138459.P7779106474373956865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) - 1) * A138422 (n + 1)

end

end A138459.P7779106474373956865

namespace A138459

/-- `(A066872(n+1)-1)*A138422(n+1)` -/
def P7779106474373956865.Spec : Prop :=
  ∀ n, P7779106474373956865.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P16688177485494818201

`2*(A138456(n+1)-A138457(n+1))`
-/

namespace A138459.P16688177485494818201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138456 (n + 1) - A138457 (n + 1))

end

end A138459.P16688177485494818201

namespace A138459

/-- `2*(A138456(n+1)-A138457(n+1))` -/
def P16688177485494818201.Spec : Prop :=
  ∀ n, P16688177485494818201.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P17759361175535741128

`A138454(n+1)-2*A138457(n+1)`
-/

namespace A138459.P17759361175535741128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138454 (n + 1) - 2 * A138457 (n + 1)

end

end A138459.P17759361175535741128

namespace A138459

/-- `A138454(n+1)-2*A138457(n+1)` -/
def P17759361175535741128.Spec : Prop :=
  ∀ n, P17759361175535741128.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P2217317439503741023

`2*A000040(n+1)*A138438(n+1)`
-/

namespace A138459.P2217317439503741023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A138438 (n + 1))

end

end A138459.P2217317439503741023

namespace A138459

/-- `2*A000040(n+1)*A138438(n+1)` -/
def P2217317439503741023.Spec : Prop :=
  ∀ n, P2217317439503741023.a n = A138459 (n + 1)

end A138459

/-! ## A138459.P16561270051561581769

`(A138445(n+1)-A138421(n+1))/2`
-/

namespace A138459.P16561270051561581769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) - A138421 (n + 1) : ℚ) / 2

end

end A138459.P16561270051561581769

namespace A138459

/-- `(A138445(n+1)-A138421(n+1))/2` -/
def P16561270051561581769.Spec : Prop :=
  ∀ n, P16561270051561581769.a n = (A138459 (n + 1) : ℚ)

end A138459

/-!
# A138460: a(n) = ((n-th prime)^6-(n-th prime)^5)/2.

The programs for A138460, the canonical program `A138460.P7852437336812005660` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138460 has offset 1).

The definition of A138460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138460.P12418771055154311160

`A138412(n+1)/2`
-/

namespace A138460.P12418771055154311160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / 2

end

end A138460.P12418771055154311160

namespace A138460

/-- `A138412(n+1)/2` -/
def P12418771055154311160.Spec : Prop :=
  ∀ n, P12418771055154311160.a n = (A138460 (n + 1) : ℚ)

end A138460

/-! ## A138460.P7852437336812005660

`A138440(n+1)-A138424(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138460

/-- `A138440(n+1)-A138424(n+1)` -/
def P7852437336812005660.Spec : Prop :=
  ∀ n, P7852437336812005660.a n = A138460 (n + 1)

theorem P7852437336812005660.correct : P7852437336812005660.Spec := by
  intro n
  simp only [A138460, Nat.add_sub_cancel]

end A138460

/-! ## A138460.P15091191050424833403

`A138441(n+1)-A138431(n+1)`
-/

namespace A138460.P15091191050424833403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138441 (n + 1) - A138431 (n + 1)

end

end A138460.P15091191050424833403

namespace A138460

/-- `A138441(n+1)-A138431(n+1)` -/
def P15091191050424833403.Spec : Prop :=
  ∀ n, P15091191050424833403.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P10612812020776269538

`A138452(n+1)-A138432(n+1)`
-/

namespace A138460.P10612812020776269538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138452 (n + 1) - A138432 (n + 1)

end

end A138460.P10612812020776269538

namespace A138460

/-- `A138452(n+1)-A138432(n+1)` -/
def P10612812020776269538.Spec : Prop :=
  ∀ n, P10612812020776269538.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P13386392225394583300

`A138453(n+1)-A138439(n+1)`
-/

namespace A138460.P13386392225394583300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138453 (n + 1) - A138439 (n + 1)

end

end A138460.P13386392225394583300

namespace A138460

/-- `A138453(n+1)-A138439(n+1)` -/
def P13386392225394583300.Spec : Prop :=
  ∀ n, P13386392225394583300.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P9515393373424529877

`A008837(n+1)*A030514(n+1)`
-/

namespace A138460.P9515393373424529877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A030514 (n + 1)

end

end A138460.P9515393373424529877

namespace A138460

/-- `A008837(n+1)*A030514(n+1)` -/
def P9515393373424529877.Spec : Prop :=
  ∀ n, P9515393373424529877.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P9677110995932988547

`A000040(n+1)*A138439(n+1)`
-/

namespace A138460.P9677110995932988547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138439 (n + 1)

end

end A138460.P9677110995932988547

namespace A138460

/-- `A000040(n+1)*A138439(n+1)` -/
def P9677110995932988547.Spec : Prop :=
  ∀ n, P9677110995932988547.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P4194190555991052549

`A001248(n+1)*A138423(n+1)`
-/

namespace A138460.P4194190555991052549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A138423 (n + 1)

end

end A138460.P4194190555991052549

namespace A138460

/-- `A001248(n+1)*A138423(n+1)` -/
def P4194190555991052549.Spec : Prop :=
  ∀ n, P4194190555991052549.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P15349151602199908830

`A030078(n+1)*A138416(n+1)`
-/

namespace A138460.P15349151602199908830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A138416 (n + 1)

end

end A138460.P15349151602199908830

namespace A138460

/-- `A030078(n+1)*A138416(n+1)` -/
def P15349151602199908830.Spec : Prop :=
  ∀ n, P15349151602199908830.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P12568218174045466664

`A138455(n+1)+A138416(n+1)²`
-/

namespace A138460.P12568218174045466664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138455 (n + 1) + A138416 (n + 1) ^ 2

end

end A138460.P12568218174045466664

namespace A138460

/-- `A138455(n+1)+A138416(n+1)²` -/
def P12568218174045466664.Spec : Prop :=
  ∀ n, P12568218174045466664.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P14528051895884701251

`A001248(n+1)²*A008837(n+1)`
-/

namespace A138460.P14528051895884701251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A008837 (n + 1)

end

end A138460.P14528051895884701251

namespace A138460

/-- `A001248(n+1)²*A008837(n+1)` -/
def P14528051895884701251.Spec : Prop :=
  ∀ n, P14528051895884701251.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P1994922916185721459

`A000040(n+1)²*A138423(n+1)`
-/

namespace A138460.P1994922916185721459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A138423 (n + 1)

end

end A138460.P1994922916185721459

namespace A138460

/-- `A000040(n+1)²*A138423(n+1)` -/
def P1994922916185721459.Spec : Prop :=
  ∀ n, P1994922916185721459.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P441851886721416613

`sqrt(A001248(n+1))*A138439(n+1)`
-/

namespace A138460.P441851886721416613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A138439 (n + 1) : ℝ)

end

end A138460.P441851886721416613

namespace A138460

/-- `sqrt(A001248(n+1))*A138439(n+1)` -/
def P441851886721416613.Spec : Prop :=
  ∀ n, P441851886721416613.a n = (A138460 (n + 1) : ℝ)

end A138460

/-! ## A138460.P11884320808376313722

`A138423(n+1)²/A008837(n+1)`
-/

namespace A138460.P11884320808376313722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138423 (n + 1) ^ 2 : ℚ) / (A008837 (n + 1) : ℚ)

end

end A138460.P11884320808376313722

namespace A138460

/-- `A138423(n+1)²/A008837(n+1)` -/
def P11884320808376313722.Spec : Prop :=
  ∀ n, P11884320808376313722.a n = (A138460 (n + 1) : ℚ)

end A138460

/-! ## A138460.P14180064042038480489

`A138439(n+1)²/A138423(n+1)`
-/

namespace A138460.P14180064042038480489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138439 (n + 1) ^ 2 : ℚ) / (A138423 (n + 1) : ℚ)

end

end A138460.P14180064042038480489

namespace A138460

/-- `A138439(n+1)²/A138423(n+1)` -/
def P14180064042038480489.Spec : Prop :=
  ∀ n, P14180064042038480489.a n = (A138460 (n + 1) : ℚ)

end A138460

/-! ## A138460.P2134498047831733191

`(A008864(n+1)-1)*A138439(n+1)`
-/

namespace A138460.P2134498047831733191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A138439 (n + 1)

end

end A138460.P2134498047831733191

namespace A138460

/-- `(A008864(n+1)-1)*A138439(n+1)` -/
def P2134498047831733191.Spec : Prop :=
  ∀ n, P2134498047831733191.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P15096664965165662096

`2*A138455(n+1)-A138439(n+1)`
-/

namespace A138460.P15096664965165662096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138455 (n + 1) - A138439 (n + 1)

end

end A138460.P15096664965165662096

namespace A138460

/-- `2*A138455(n+1)-A138439(n+1)` -/
def P15096664965165662096.Spec : Prop :=
  ∀ n, P15096664965165662096.a n = A138460 (n + 1)

end A138460

/-! ## A138460.P16473722480999406620

`(A030516(n+1)-A050997(n+1))/2`
-/

namespace A138460.P16473722480999406620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A050997 (n + 1) : ℚ) / 2

end

end A138460.P16473722480999406620

namespace A138460

/-- `(A030516(n+1)-A050997(n+1))/2` -/
def P16473722480999406620.Spec : Prop :=
  ∀ n, P16473722480999406620.a n = (A138460 (n + 1) : ℚ)

end A138460

/-! ## A138460.P2203435981527821442

`(A138408(n+1)-A138404(n+1))/2`
-/

namespace A138460.P2203435981527821442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) - A138404 (n + 1) : ℚ) / 2

end

end A138460.P2203435981527821442

namespace A138460

/-- `(A138408(n+1)-A138404(n+1))/2` -/
def P2203435981527821442.Spec : Prop :=
  ∀ n, P2203435981527821442.a n = (A138460 (n + 1) : ℚ)

end A138460

/-! ## A138460.P16310843193545549007

`(A138409(n+1)-A138405(n+1))/2`
-/

namespace A138460.P16310843193545549007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) - A138405 (n + 1) : ℚ) / 2

end

end A138460.P16310843193545549007

namespace A138460

/-- `(A138409(n+1)-A138405(n+1))/2` -/
def P16310843193545549007.Spec : Prop :=
  ∀ n, P16310843193545549007.a n = (A138460 (n + 1) : ℚ)

end A138460

/-!
# A138462: A bisection of A006318.

The programs for A138462, the canonical program `A138462.P1509641166466070185` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138462 has offset 0).

The definition of A138462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138462.P1509641166466070185

`A006318(2*n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138462

/-- `A006318(2*n)` -/
def P1509641166466070185.Spec : Prop :=
  ∀ n, P1509641166466070185.a n = A138462 n

theorem P1509641166466070185.correct : P1509641166466070185.Spec := by
  intro n
  simp only [A138462]

end A138462

/-! ## A138462.P2932583735080726535

`A155069(Δ[n²])`
-/

namespace A138462.P2932583735080726535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138462.P2932583735080726535

namespace A138462

/-- `A155069(Δ[n²])` -/
def P2932583735080726535.Spec : Prop :=
  ∀ n, P2932583735080726535.a n = A138462 n

end A138462

/-! ## A138462.P2927042256791046941

`record[A080245(∑[n])]`
-/

namespace A138462.P2927042256791046941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080245 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138462.P2927042256791046941

namespace A138462

/-- `record[A080245(∑[n])]` -/
def P2927042256791046941.Spec : Prop :=
  ∀ n, P2927042256791046941.a n = A138462 n

end A138462

/-! ## A138462.P15622606138747825404

`record[A112477(∑[n])]`
-/

namespace A138462.P15622606138747825404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138462.P15622606138747825404

namespace A138462

/-- `record[A112477(∑[n])]` -/
def P15622606138747825404.Spec : Prop :=
  ∀ n, P15622606138747825404.a n = A138462 n

end A138462

/-! ## A138462.P4787628522474842737

`record[ratio[A112477(n)]]`
-/

namespace A138462.P4787628522474842737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138462.P4787628522474842737

namespace A138462

/-- `record[ratio[A112477(n)]]` -/
def P4787628522474842737.Spec : Prop :=
  ∀ n, P4787628522474842737.a n = (A138462 n : ℚ)

end A138462

/-! ## A138462.P1117149398531903337

`abs(A086456(Δ[n²]))`
-/

namespace A138462.P1117149398531903337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A138462.P1117149398531903337

namespace A138462

/-- `abs(A086456(Δ[n²]))` -/
def P1117149398531903337.Spec : Prop :=
  ∀ n, P1117149398531903337.a n = A138462 n

end A138462

/-! ## A138462.P7000089779411197537

`abs(A103137(Δ[n²]))`
-/

namespace A138462.P7000089779411197537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A138462.P7000089779411197537

namespace A138462

/-- `abs(A103137(Δ[n²]))` -/
def P7000089779411197537.Spec : Prop :=
  ∀ n, P7000089779411197537.a n = A138462 n

end A138462

/-! ## A138462.P5882362725826735021

`A035011(2*n)+1`
-/

namespace A138462.P5882362725826735021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 (2 * n) + 1

end

end A138462.P5882362725826735021

namespace A138462

/-- `A035011(2*n)+1` -/
def P5882362725826735021.Spec : Prop :=
  ∀ n, P5882362725826735021.a n = A138462 n

end A138462

/-! ## A138462.P18394704576854471481

`A238111(2*n)/2`
-/

namespace A138462.P18394704576854471481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 (2 * n) : ℚ) / 2

end

end A138462.P18394704576854471481

namespace A138462

/-- `A238111(2*n)/2` -/
def P18394704576854471481.Spec : Prop :=
  ∀ n, P18394704576854471481.a n = (A138462 n : ℚ)

end A138462

/-! ## A138462.P3905552378068010017

`record[-A103137(n+1)]`
-/

namespace A138462.P3905552378068010017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138462.P3905552378068010017

namespace A138462

/-- `record[-A103137(n+1)]` -/
def P3905552378068010017.Spec : Prop :=
  ∀ n, P3905552378068010017.a n = A138462 n

end A138462

/-!
# A138463: A bisection of A006318.

The programs for A138463, the canonical program `A138463.P11537261983961229773` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138463 has offset 0).

The definition of A138463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138463.P11537261983961229773

`A006318(2*n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138463

/-- `A006318(2*n+1)` -/
def P11537261983961229773.Spec : Prop :=
  ∀ n, P11537261983961229773.a n = A138463 n

theorem P11537261983961229773.correct : P11537261983961229773.Spec := by
  intro n
  simp only [A138463]

end A138463

/-! ## A138463.P16465234914298720268

`record[A103137(n+2)]`
-/

namespace A138463.P16465234914298720268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138463.P16465234914298720268

namespace A138463

/-- `record[A103137(n+2)]` -/
def P16465234914298720268.Spec : Prop :=
  ∀ n, P16465234914298720268.a n = A138463 n

end A138463

/-! ## A138463.P8942261304663141096

`A025240(2*(n+1))`
-/

namespace A138463.P8942261304663141096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025240 (2 * (n + 1))

end

end A138463.P8942261304663141096

namespace A138463

/-- `A025240(2*(n+1))` -/
def P8942261304663141096.Spec : Prop :=
  ∀ n, P8942261304663141096.a n = A138463 n

end A138463

/-! ## A138463.P4717048332889006758

`A103137(2*(n+1))`
-/

namespace A138463.P4717048332889006758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (2 * (n + 1))

end

end A138463.P4717048332889006758

namespace A138463

/-- `A103137(2*(n+1))` -/
def P4717048332889006758.Spec : Prop :=
  ∀ n, P4717048332889006758.a n = A138463 n

end A138463

/-! ## A138463.P16912643789434112756

`A155069(2*(n+1))`
-/

namespace A138463.P16912643789434112756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (2 * (n + 1))

end

end A138463.P16912643789434112756

namespace A138463

/-- `A155069(2*(n+1))` -/
def P16912643789434112756.Spec : Prop :=
  ∀ n, P16912643789434112756.a n = A138463 n

end A138463

/-! ## A138463.P3392112221579921393

`A035011(Δ[n²])+1`
-/

namespace A138463.P3392112221579921393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A138463.P3392112221579921393

namespace A138463

/-- `A035011(Δ[n²])+1` -/
def P3392112221579921393.Spec : Prop :=
  ∀ n, P3392112221579921393.a n = A138463 n

end A138463

/-! ## A138463.P15201264863742532008

`2*A001003(Δ[n²])`
-/

namespace A138463.P15201264863742532008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001003 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138463.P15201264863742532008

namespace A138463

/-- `2*A001003(Δ[n²])` -/
def P15201264863742532008.Spec : Prop :=
  ∀ n, P15201264863742532008.a n = A138463 n

end A138463

/-! ## A138463.P12674361167139908742

`record[-A112478(n+2)]`
-/

namespace A138463.P12674361167139908742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138463.P12674361167139908742

namespace A138463

/-- `record[-A112478(n+2)]` -/
def P12674361167139908742.Spec : Prop :=
  ∀ n, P12674361167139908742.a n = A138463 n

end A138463

/-! ## A138463.P15181287408881876239

`A238111(2*n+1)/2`
-/

namespace A138463.P15181287408881876239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 (2 * n + 1) : ℚ) / 2

end

end A138463.P15181287408881876239

namespace A138463

/-- `A238111(2*n+1)/2` -/
def P15181287408881876239.Spec : Prop :=
  ∀ n, P15181287408881876239.a n = (A138463 n : ℚ)

end A138463

/-! ## A138463.P17122089574726762429

`lcm(2, A080243(2*n+1))`
-/

namespace A138463.P17122089574726762429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080243 (2 * n + 1))

end

end A138463.P17122089574726762429

namespace A138463

/-- `lcm(2, A080243(2*n+1))` -/
def P17122089574726762429.Spec : Prop :=
  ∀ n, (P17122089574726762429.a n : ℤ) = A138463 n

end A138463

/-!
# A138464: Triangle read by rows: T(n, k) is the number of forests on n labeled nodes with k edges. T(n, k) for n >= 1 and 0 <= k <= n-1.

The programs for A138464, there is no canonical definition to state claims against.
-/

/-! ## A138464.P5804691152221410855

`A105599(∑[char[∑[n]]]²-n)`
-/

namespace A138464.P5804691152221410855
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A138464.P5804691152221410855

/-! ## A138464.P9548683279937258941

`A105599(A038722(n+1))+C(n, n+1)`
-/

namespace A138464.P9548683279937258941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A038722 (n + 1)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A138464.P9548683279937258941

/-! ## A138464.P11778803989192774661

`gcd(A000038(n), A105599(A038722(n+1)))`
-/

namespace A138464.P11778803989192774661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A105599 (A038722 (n + 1)).toNat)

end

end A138464.P11778803989192774661

/-! ## A138464.P13007765075624967400

`lcm(A033999(n), A105599(A038722(n+1)))`
-/

namespace A138464.P13007765075624967400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A105599 (A038722 (n + 1)).toNat)

end

end A138464.P13007765075624967400

/-! ## A138464.P8709864129857064197

`or(A000007(n), A105599(A038722(n+1)))`
-/

namespace A138464.P8709864129857064197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A105599 (A038722 (n + 1)).toNat)

end

end A138464.P8709864129857064197

/-! ## A138464.P7349143544436318927

`or(A000007(n), A105599(A061579(n)+1))`
-/

namespace A138464.P7349143544436318927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A105599 (A061579 n + 1).toNat)

end

end A138464.P7349143544436318927

/-! ## A138464.P6899573706534008895

`or(A073424(n), A105599(A038722(n+1)))`
-/

namespace A138464.P6899573706534008895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A105599 (A038722 (n + 1)).toNat)

end

end A138464.P6899573706534008895

/-! ## A138464.P6536820011507053705

`char[A027656(n)]*A105599(A038722(n+1))`
-/

namespace A138464.P6536820011507053705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A105599 (A038722 (n + 1)).toNat

end

end A138464.P6536820011507053705

/-! ## A138464.P10130528998803025019

`A105599(A038722(n+1))+A000007(n+1)`
-/

namespace A138464.P10130528998803025019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A138464.P10130528998803025019

/-! ## A138464.P12784412865593471094

`A105599(A038722(n+1))+A000038(n+1)`
-/

namespace A138464.P12784412865593471094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A038722 (n + 1)).toNat + A000038 (n + 1)

end

end A138464.P12784412865593471094

/-! ## A138464.P9256517234181506421

`A105599(A038722(n+1))+A000035(2*n)`
-/

namespace A138464.P9256517234181506421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A038722 (n + 1)).toNat + A000035 (2 * n)

end

end A138464.P9256517234181506421

/-! ## A138464.P4074341725969787044

`A014963(A315727(n))*A105599(A038722(n+1))`
-/

namespace A138464.P4074341725969787044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315727 n).toNat * A105599 (A038722 (n + 1)).toNat

end

end A138464.P4074341725969787044

/-! ## A138464.P206169189075540670

`A105599(A038722(n+1))^A001222(A008578(n+1))`
-/

namespace A138464.P206169189075540670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105599 (A038722 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A138464.P206169189075540670

/-! ## A138464.P12612959556896038058

`A105599(A093995(n+1)-n)%A287381(n)`
-/

namespace A138464.P12612959556896038058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105599 (A093995 (n + 1) - (n : ℤ)).toNat) (A287381 n)

end

end A138464.P12612959556896038058

/-! ## A138464.P13434297584620225722

`A105599(A038722(n+1))%A104080(n)`
-/

namespace A138464.P13434297584620225722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105599 (A038722 (n + 1)).toNat) (A104080 n)

end

end A138464.P13434297584620225722

/-! ## A138464.P984150058725112134

`A105599(A061579(n)+1)%A026085(n+4)`
-/

namespace A138464.P984150058725112134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105599 (A061579 n + 1).toNat) (A026085 (n + 4))

end

end A138464.P984150058725112134

/-!
# A138465: Non-optimus primes.

The programs for A138465, there is no canonical definition to state claims against.
-/

/-! ## A138465.P10034771197703013171

`A156284(A099572(n+1))`
-/

namespace A138465.P10034771197703013171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A099572 (n + 1)).toNat

end

end A138465.P10034771197703013171

/-!
# A138466: a(1)=1; for n >= 2, a(n) = n - floor((1/2)*a(a(n-1))).

The programs for A138466, the canonical program `A138466.P11022994535953407151` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138466 has offset 1).

The definition of A138466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-floor(1/2*a(a(n-1)-1))` (program `A138466.P11022994535953407151`, by `A138466.P11022994535953407151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138466.P16493635604321211640

`floor((sqrt(3)-1)*(n+2))`
-/

namespace A138466.P16493635604321211640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) - 1) * (n + 2 : ℝ)⌋

end

end A138466.P16493635604321211640

namespace A138466

/-- `floor((sqrt(3)-1)*(n+2))` -/
def P16493635604321211640.Spec : Prop :=
  ∀ n, P16493635604321211640.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P11022994535953407151

`n+1-floor(1/2*a(a(n-1)-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138466

/-- `n+1-floor(1/2*a(a(n-1)-1))` -/
def P11022994535953407151.Spec : Prop :=
  ∀ n, P11022994535953407151.a n = A138466 (n + 1)

theorem P11022994535953407151.correct : P11022994535953407151.Spec := by
  intro n
  simp only [A138466, Nat.add_sub_cancel]

end A138466

/-! ## A138466.P10773971896743784204

`floor((n+2)*sqrt(3))%(n+2)`
-/

namespace A138466.P10773971896743784204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 2 : ℝ) * Real.sqrt (3 : ℝ)⌋ (n + 2 : ℤ)

end

end A138466.P10773971896743784204

namespace A138466

/-- `floor((n+2)*sqrt(3))%(n+2)` -/
def P10773971896743784204.Spec : Prop :=
  ∀ n, P10773971896743784204.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P2657960466909288845

`1-floor(a(a(n-2))/2)+n` with `a(0)=1, a(1)=2`
-/

namespace A138466.P2657960466909288845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ⌊(a (a (n - 2)).toNat : ℚ) / 2⌋ + (n : ℤ)

end

end A138466.P2657960466909288845

namespace A138466

/-- `1-floor(a(a(n-2))/2)+n` -/
def P2657960466909288845.Spec : Prop :=
  ∀ n, P2657960466909288845.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P10284229651234268478

`1-floor(a(a(n-2))/2-n)` with `a(0)=1, a(1)=2`
-/

namespace A138466.P10284229651234268478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ⌊(a (a (n - 2)).toNat : ℚ) / 2 - (n : ℚ)⌋

end

end A138466.P10284229651234268478

namespace A138466

/-- `1-floor(a(a(n-2))/2-n)` -/
def P10284229651234268478.Spec : Prop :=
  ∀ n, P10284229651234268478.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P86438853752515544

`∑[A188082(n+1)]`
-/

namespace A138466.P86438853752515544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P86438853752515544

namespace A138466

/-- `∑[A188082(n+1)]` -/
def P86438853752515544.Spec : Prop :=
  ∀ n, P86438853752515544.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P17407543532109207090

`∑[char[A003511(n+1)-1]]`
-/

namespace A138466.P17407543532109207090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P17407543532109207090

namespace A138466

/-- `∑[char[A003511(n+1)-1]]` -/
def P17407543532109207090.Spec : Prop :=
  ∀ n, (P17407543532109207090.a n : ℤ) = A138466 (n + 1)

end A138466

/-! ## A138466.P7070309901603626762

`∑[A188068(n+2)]`
-/

namespace A138466.P7070309901603626762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P7070309901603626762

namespace A138466

/-- `∑[A188068(n+2)]` -/
def P7070309901603626762.Spec : Prop :=
  ∀ n, P7070309901603626762.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P6177363336198036561

`∑[log2(A080757(n+1))]`
-/

namespace A138466.P6177363336198036561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080757 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P6177363336198036561

namespace A138466

/-- `∑[log2(A080757(n+1))]` -/
def P6177363336198036561.Spec : Prop :=
  ∀ n, P6177363336198036561.a n = (A138466 (n + 1) : ℝ)

end A138466

/-! ## A138466.P16355661682983082769

`∑[1-A275855(n+2)]`
-/

namespace A138466.P16355661682983082769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P16355661682983082769

namespace A138466

/-- `∑[1-A275855(n+2)]` -/
def P16355661682983082769.Spec : Prop :=
  ∀ n, P16355661682983082769.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P14207876698621616617

`∑[A007538(n+2)-2]`
-/

namespace A138466.P14207876698621616617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138466.P14207876698621616617

namespace A138466

/-- `∑[A007538(n+2)-2]` -/
def P14207876698621616617.Spec : Prop :=
  ∀ n, P14207876698621616617.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P14878625766331597503

`A022838(n+2)-(n+2)`
-/

namespace A138466.P14878625766331597503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 2) - (n + 2 : ℤ)

end

end A138466.P14878625766331597503

namespace A138466

/-- `A022838(n+2)-(n+2)` -/
def P14878625766331597503.Spec : Prop :=
  ∀ n, P14878625766331597503.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P16856171354103085027

`n+2-A195120(n+2)`
-/

namespace A138466.P16856171354103085027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A195120 (n + 2)

end

end A138466.P16856171354103085027

namespace A138466

/-- `n+2-A195120(n+2)` -/
def P16856171354103085027.Spec : Prop :=
  ∀ n, P16856171354103085027.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P17121053381908824835

`A198081(n+2)-(n+3)`
-/

namespace A138466.P17121053381908824835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 2) - (n + 3 : ℤ)

end

end A138466.P17121053381908824835

namespace A138466

/-- `A198081(n+2)-(n+3)` -/
def P17121053381908824835.Spec : Prop :=
  ∀ n, P17121053381908824835.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P14493097611563878046

`Δ[(n+1)²-A194142(n+1)]`
-/

namespace A138466.P14493097611563878046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A194142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138466.P14493097611563878046

namespace A138466

/-- `Δ[(n+1)²-A194142(n+1)]` -/
def P14493097611563878046.Spec : Prop :=
  ∀ n, P14493097611563878046.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P13699477268996692644

`A215781(A188082(n+1)+n)`
-/

namespace A138466.P13699477268996692644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A188082 (n + 1) + (n : ℤ)).toNat

end

end A138466.P13699477268996692644

namespace A138466

/-- `A215781(A188082(n+1)+n)` -/
def P13699477268996692644.Spec : Prop :=
  ∀ n, P13699477268996692644.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P15348958890303642139

`A215781(A188068(n+2)+n)`
-/

namespace A138466.P15348958890303642139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A188068 (n + 2) + (n : ℤ)).toNat

end

end A138466.P15348958890303642139

namespace A138466

/-- `A215781(A188068(n+2)+n)` -/
def P15348958890303642139.Spec : Prop :=
  ∀ n, P15348958890303642139.a n = A138466 (n + 1)

end A138466

/-! ## A138466.P15016605719277725748

`A215781(n+1-A275855(n+2))`
-/

namespace A138466.P15016605719277725748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 ((n + 1 : ℤ) - A275855 (n + 2)).toNat

end

end A138466.P15016605719277725748

namespace A138466

/-- `A215781(n+1-A275855(n+2))` -/
def P15016605719277725748.Spec : Prop :=
  ∀ n, P15016605719277725748.a n = A138466 (n + 1)

end A138466

/-!
# A138467: a(1)=1, then for n>=2 a(n) = n - floor((1/3)*a(a(n-1))).

The programs for A138467, the canonical program `A138467.P8919542475333347013` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138467 has offset 1).

The definition of A138467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-floor(1/3*a(a(n-1)-1))` (program `A138467.P8919542475333347013`, by `A138467.P8919542475333347013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138467.P1906576723518962345

`floor(3/2*(sqrt(7/3)-1)*(n+2))`
-/

namespace A138467.P1906576723518962345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 : ℝ) * (Real.sqrt ((7 : ℚ) / 3 : ℝ) - 1) * (n + 2 : ℝ)⌋

end

end A138467.P1906576723518962345

namespace A138467

/-- `floor(3/2*(sqrt(7/3)-1)*(n+2))` -/
def P1906576723518962345.Spec : Prop :=
  ∀ n, P1906576723518962345.a n = A138467 (n + 1)

end A138467

/-! ## A138467.P8919542475333347013

`n+1-floor(1/3*a(a(n-1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138467

/-- `n+1-floor(1/3*a(a(n-1)-1))` -/
def P8919542475333347013.Spec : Prop :=
  ∀ n, P8919542475333347013.a n = A138467 (n + 1)

theorem P8919542475333347013.correct : P8919542475333347013.Spec := by
  intro n
  simp only [A138467, Nat.add_sub_cancel]

end A138467

/-! ## A138467.P13792363898526966233

`1-floor(a(a(n-2))/3)+n` with `a(0)=1, a(1)=2`
-/

namespace A138467.P13792363898526966233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ⌊(a (a (n - 2)).toNat : ℚ) / 3⌋ + (n : ℤ)

end

end A138467.P13792363898526966233

namespace A138467

/-- `1-floor(a(a(n-2))/3)+n` -/
def P13792363898526966233.Spec : Prop :=
  ∀ n, P13792363898526966233.a n = A138467 (n + 1)

end A138467

/-! ## A138467.P17267562370635544820

`1-floor(a(a(n-2))/3-n)` with `a(0)=1, a(1)=2`
-/

namespace A138467.P17267562370635544820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ⌊(a (a (n - 2)).toNat : ℚ) / 3 - (n : ℚ)⌋

end

end A138467.P17267562370635544820

namespace A138467

/-- `1-floor(a(a(n-2))/3-n)` -/
def P17267562370635544820.Spec : Prop :=
  ∀ n, P17267562370635544820.a n = A138467 (n + 1)

end A138467

/-!
# A138468: Number of even digits in Fibonacci numbers.

The programs for A138468, the canonical program `A138468.P4815621809690206900` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138468 has offset 0).

The definition of A138468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138468.P12150943898235802367

`A060384(n)-A136610(n)`
-/

namespace A138468.P12150943898235802367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n - A136610 n

end

end A138468.P12150943898235802367

namespace A138468

/-- `A060384(n)-A136610(n)` -/
def P12150943898235802367.Spec : Prop :=
  ∀ n, P12150943898235802367.a n = A138468 n

end A138468

/-! ## A138468.P4815621809690206900

`∑{digits}[A000045(n), (#+1)%2]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138468

/-- `∑{digits}[A000045(n), (#+1)%2]` -/
def P4815621809690206900.Spec : Prop :=
  ∀ n, (P4815621809690206900.a n : ℤ) = A138468 n

theorem P4815621809690206900.correct : P4815621809690206900.Spec := by
  intro n
  simp only [A138468]

end A138468

/-! ## A138468.P3940010174812794509

`∑{digits}[A000045(n), A059841(#)]`
-/

namespace A138468.P3940010174812794509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 x).sum

end

end A138468.P3940010174812794509

namespace A138468

/-- `∑{digits}[A000045(n), A059841(#)]` -/
def P3940010174812794509.Spec : Prop :=
  ∀ n, P3940010174812794509.a n = A138468 n

end A138468

/-! ## A138468.P3515643094886843885

`∑{digits}[A000045(n), A000035(#+1)]`
-/

namespace A138468.P3515643094886843885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 (x + 1)).sum

end

end A138468.P3515643094886843885

namespace A138468

/-- `∑{digits}[A000045(n), A000035(#+1)]` -/
def P3515643094886843885.Spec : Prop :=
  ∀ n, P3515643094886843885.a n = A138468 n

end A138468

/-! ## A138468.P16654405918663632112

`∑{digits}[A000045(n), A098800(#+1)]`
-/

namespace A138468.P16654405918663632112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A098800 (x + 1)).sum

end

end A138468.P16654405918663632112

namespace A138468

/-- `∑{digits}[A000045(n), A098800(#+1)]` -/
def P16654405918663632112.Spec : Prop :=
  ∀ n, P16654405918663632112.a n = A138468 n

end A138468

/-! ## A138468.P7157208211466588610

`∑{digits}[A000045(n), 1-A000035(#)]`
-/

namespace A138468.P7157208211466588610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000035 x).sum

end

end A138468.P7157208211466588610

namespace A138468

/-- `∑{digits}[A000045(n), 1-A000035(#)]` -/
def P7157208211466588610.Spec : Prop :=
  ∀ n, P7157208211466588610.a n = A138468 n

end A138468

/-! ## A138468.P13313775389334533226

`∑{digits}[A000045(n), 1-A196564(#)]`
-/

namespace A138468.P13313775389334533226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A196564 x).sum

end

end A138468.P13313775389334533226

namespace A138468

/-- `∑{digits}[A000045(n), 1-A196564(#)]` -/
def P13313775389334533226.Spec : Prop :=
  ∀ n, P13313775389334533226.a n = A138468 n

end A138468

/-! ## A138468.P13022400275705299501

`∑{digits}[A000045(n), and(1, A017473(#))]`
-/

namespace A138468.P13022400275705299501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A017473 x)).sum

end

end A138468.P13022400275705299501

namespace A138468

/-- `∑{digits}[A000045(n), and(1, A017473(#))]` -/
def P13022400275705299501.Spec : Prop :=
  ∀ n, P13022400275705299501.a n = A138468 n

end A138468

/-! ## A138468.P1248304496181668146

`∑{digits}[A000045(n), and(1, A216913(#+1))]`
-/

namespace A138468.P1248304496181668146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A216913 (x + 1))).sum

end

end A138468.P1248304496181668146

namespace A138468

/-- `∑{digits}[A000045(n), and(1, A216913(#+1))]` -/
def P1248304496181668146.Spec : Prop :=
  ∀ n, P1248304496181668146.a n = A138468 n

end A138468

/-! ## A138468.P10154158720131698728

`∑{digits}[A000045(n), A178226(#)+A017909(#)]`
-/

namespace A138468.P10154158720131698728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178226 x + A017909 x).sum

end

end A138468.P10154158720131698728

namespace A138468

/-- `∑{digits}[A000045(n), A178226(#)+A017909(#)]` -/
def P10154158720131698728.Spec : Prop :=
  ∀ n, P10154158720131698728.a n = A138468 n

end A138468

/-!
# A138469: Atomic numbers of p-block elements.

The programs for A138469, there is no canonical definition to state claims against.
-/

/-! ## A138469.P15757454038053772039

`lt[2, dr(A080915(n))]+1`
-/

namespace A138469.P15757454038053772039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A080915 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A138469.P15757454038053772039

/-! ## A138469.P2791501661428731288

`eq[5, A178668(A136548(n+1))]`
-/

namespace A138469.P2791501661428731288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178668 (A136548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138469.P2791501661428731288

/-! ## A138469.P16204641277718342993

`eq[2, ∑{e}[A352878(A230980(n)), #]]`
-/

namespace A138469.P16204641277718342993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352878 (A230980 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138469.P16204641277718342993

/-! ## A138469.P14607036693291900480

`lt[A117135(A093466(n+1))+1, n]`
-/

namespace A138469.P14607036693291900480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117135 (A093466 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138469.P14607036693291900480

/-! ## A138469.P12929981027629875237

`lt[A113940(A093466(n+1)), A060533(n)]`
-/

namespace A138469.P12929981027629875237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113940 (A093466 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138469.P12929981027629875237

/-!
# A138471: Number of numbers less than n having the same sum of digits.

The programs for A138471, there is no canonical definition to state claims against.
-/

/-! ## A138471.P9556514771665623986

`A254524(abs(1-n)+1)-1`
-/

namespace A138471.P9556514771665623986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A138471.P9556514771665623986

/-! ## A138471.P10967368338733477127

`A023443(A254524(round(acot(n)+n)))`
-/

namespace A138471.P10967368338733477127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A254524 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A138471.P10967368338733477127

/-! ## A138471.P17648743730390251201

`n-(A138472(n)+A138470(n))`
-/

namespace A138471.P17648743730390251201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A138472 n + A138470 n)

end

end A138471.P17648743730390251201

/-! ## A138471.P13629172547755675023

`A001489(A138472(n)+A138470(n))+n`
-/

namespace A138471.P13629172547755675023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A138472 n + A138470 n).toNat + (n : ℤ)

end

end A138471.P13629172547755675023

/-! ## A138471.P1677874503854289967

`A001478(A138472(n)+A138470(n)+1)+n+1`
-/

namespace A138471.P1677874503854289967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A138472 n + A138470 n + 1).toNat + (n + 1 : ℤ)

end

end A138471.P1677874503854289967

/-! ## A138471.P12633564151126916962

`dr(A087052(A087052(n)-A247796(n)))`
-/

namespace A138471.P12633564151126916962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087052 (A087052 n - A247796 n).toNat)

end

end A138471.P12633564151126916962

/-! ## A138471.P12199896043416081824

`A059995(n)-A053392(log2(A113010(n)))`
-/

namespace A138471.P12199896043416081824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n - A053392 (SequenceMachineLib.roundAway (Real.logb 2 (A113010 n : ℝ))).toNat

end

end A138471.P12199896043416081824

/-!
# A138472: Number of numbers less than n having a greater sum of digits.

The programs for A138472, there is no canonical definition to state claims against.
-/

/-! ## A138472.P17918056904716628511

`n-(A138471(n)+A138470(n))`
-/

namespace A138472.P17918056904716628511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A138471 n + A138470 n)

end

end A138472.P17918056904716628511

/-! ## A138472.P14522394298816744792

`(A138471(n)+A138470(n))*A057428(n)+n`
-/

namespace A138472.P14522394298816744792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138471 n + A138470 n) * A057428 n + (n : ℤ)

end

end A138472.P14522394298816744792

/-! ## A138472.P14248891855358596470

`A005408(n)%(n+1+A138471(n)+A138470(n))`
-/

namespace A138472.P14248891855358596470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) ((n + 1 : ℤ) + (A138471 n + A138470 n))

end

end A138472.P14248891855358596470

/-! ## A138472.P17772954635375715056

`(A138471(n)+A138470(n))*A118830(A017653(n))+n`
-/

namespace A138472.P17772954635375715056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138471 n + A138470 n) * A118830 (A017653 n).toNat + (n : ℤ)

end

end A138472.P17772954635375715056

/-! ## A138472.P9904902219264734197

`A199344(n)-A138470(A199344(n))`
-/

namespace A138472.P9904902219264734197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 n - A138470 (A199344 n).toNat

end

end A138472.P9904902219264734197

/-! ## A138472.P4574701444521247618

`A025581(A000217(n)+A138471(n)+A138470(n))`
-/

namespace A138472.P4574701444521247618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000217 n + (A138471 n + A138470 n)).toNat

end

end A138472.P4574701444521247618

/-!
# A138473: a(n) = Fibonacci(8*n).

The programs for A138473, the canonical program `A138473.P13160370205739834756` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138473 has offset 0).

The definition of A138473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138473.P13160370205739834756

`47*a(n-1)-a(n-2)` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138473

/-- `47*a(n-1)-a(n-2)` -/
def P13160370205739834756.Spec : Prop :=
  ∀ n, P13160370205739834756.a n = A138473 n

theorem P13160370205739834756.correct : P13160370205739834756.Spec := by
  intro n
  simp only [A138473]

end A138473

/-! ## A138473.P5296121095554835186

`21*A049668(n)`
-/

namespace A138473.P5296121095554835186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A049668 n

end

end A138473.P5296121095554835186

namespace A138473

/-- `21*A049668(n)` -/
def P5296121095554835186.Spec : Prop :=
  ∀ n, P5296121095554835186.a n = A138473 n

end A138473

/-! ## A138473.P9758756352813978869

`A033888(2*n)`
-/

namespace A138473.P9758756352813978869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 (2 * n)

end

end A138473.P9758756352813978869

namespace A138473

/-- `A033888(2*n)` -/
def P9758756352813978869.Spec : Prop :=
  ∀ n, P9758756352813978869.a n = A138473 n

end A138473

/-! ## A138473.P16327381933988799072

`3*A049686(n)`
-/

namespace A138473.P16327381933988799072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049686 n

end

end A138473.P16327381933988799072

namespace A138473

/-- `3*A049686(n)` -/
def P16327381933988799072.Spec : Prop :=
  ∀ n, P16327381933988799072.a n = A138473 n

end A138473

/-! ## A138473.P5676709855866474254

`A001906(4*n)`
-/

namespace A138473.P5676709855866474254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (4 * n)

end

end A138473.P5676709855866474254

namespace A138473

/-- `A001906(4*n)` -/
def P5676709855866474254.Spec : Prop :=
  ∀ n, P5676709855866474254.a n = A138473 n

end A138473

/-! ## A138473.P7394986955604936051

`A254884(4*n)`
-/

namespace A138473.P7394986955604936051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (4 * n)

end

end A138473.P7394986955604936051

namespace A138473

/-- `A254884(4*n)` -/
def P7394986955604936051.Spec : Prop :=
  ∀ n, P7394986955604936051.a n = A138473 n

end A138473

/-! ## A138473.P9687416494137767278

`A142880(6*n)`
-/

namespace A138473.P9687416494137767278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (6 * n)

end

end A138473.P9687416494137767278

namespace A138473

/-- `A142880(6*n)` -/
def P9687416494137767278.Spec : Prop :=
  ∀ n, P9687416494137767278.a n = A138473 n

end A138473

/-! ## A138473.P2706895259367134706

`A142881(6*n)`
-/

namespace A138473.P2706895259367134706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (6 * n)

end

end A138473.P2706895259367134706

namespace A138473

/-- `A142881(6*n)` -/
def P2706895259367134706.Spec : Prop :=
  ∀ n, P2706895259367134706.a n = A138473 n

end A138473

/-! ## A138473.P7704855992867114814

`A000045(8*n)`
-/

namespace A138473.P7704855992867114814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (8 * n)

end

end A138473.P7704855992867114814

namespace A138473

/-- `A000045(8*n)` -/
def P7704855992867114814.Spec : Prop :=
  ∀ n, P7704855992867114814.a n = A138473 n

end A138473

/-! ## A138473.P3541647021490933782

`A094966(8*n)`
-/

namespace A138473.P3541647021490933782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (8 * n)

end

end A138473.P3541647021490933782

namespace A138473

/-- `A094966(8*n)` -/
def P3541647021490933782.Spec : Prop :=
  ∀ n, P3541647021490933782.a n = A138473 n

end A138473

/-!
# A138475: Least k such that the x^n coefficient of cyclotomic polynomial Phi(k,x) has the largest possible magnitude.

The programs for A138475, there is no canonical definition to state claims against.
-/

/-! ## A138475.P13649431224320720376

`or(3^C(a(n-1), 68)+n, A322836(3*n+4))` with `a(0)=0, a(1)=1`
-/

namespace A138475.P13649431224320720376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (3 ^ Nat.choose (a (n - 1)).toNat 68 + n : ℤ) (A322836 (3 * n + 4))

end

end A138475.P13649431224320720376

/-! ## A138475.P18013175320644945482

`or(A184985(n+1), A240874(A331951(n)))`
-/

namespace A138475.P18013175320644945482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184985 (n + 1)) (A240874 (A331951 n).toNat)

end

end A138475.P18013175320644945482

/-! ## A138475.P4901089559077402982

`A359888(A191739(3*n+5))*A360635(n)`
-/

namespace A138475.P4901089559077402982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359888 (A191739 (3 * n + 5)).toNat * A360635 n

end

end A138475.P4901089559077402982

/-!
# A138476: Triangle read by rows: expansion of (1 + 3*x^2)/(1 - x*(2*y-x)).

The programs for A138476, there is no canonical definition to state claims against.
-/

/-! ## A138476.P2425715557303201762

`A059268(n)*A137276(n)`
-/

namespace A138476.P2425715557303201762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A137276 n

end

end A138476.P2425715557303201762

/-! ## A138476.P10667414745450901874

`A130125(n)*A137276(n)`
-/

namespace A138476.P10667414745450901874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A137276 n

end

end A138476.P10667414745450901874

/-!
# A138477: A084175 interleaved with 2*A084175.

The programs for A138477, the canonical program `A138477.P6950816637406160227` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138477 has offset 0).

The definition of A138477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138477.P6950816637406160227

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138477

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-4*a(n-5)` -/
def P6950816637406160227.Spec : Prop :=
  ∀ n, P6950816637406160227.a n = A138477 n

theorem P6950816637406160227.correct : P6950816637406160227.Spec := by
  intro n
  simp only [A138477]

end A138477

/-! ## A138477.P8360917274825371614

`A138495(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A138477.P8360917274825371614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138495 (n - 1) + a (n - 1)

end

end A138477.P8360917274825371614

namespace A138477

/-- `A138495(n-1)+a(n-1)` -/
def P8360917274825371614.Spec : Prop :=
  ∀ n, P8360917274825371614.a n = A138477 n

end A138477

/-! ## A138477.P3825043915381701815

`∑[A138495(A289207(n+1))]`
-/

namespace A138477.P3825043915381701815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P3825043915381701815

namespace A138477

/-- `∑[A138495(A289207(n+1))]` -/
def P3825043915381701815.Spec : Prop :=
  ∀ n, P3825043915381701815.a n = A138477 n

end A138477

/-! ## A138477.P12072059865843860860

`∑[A138495(A028310(n)-1)]`
-/

namespace A138477.P12072059865843860860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P12072059865843860860

namespace A138477

/-- `∑[A138495(A028310(n)-1)]` -/
def P12072059865843860860.Spec : Prop :=
  ∀ n, P12072059865843860860.a n = A138477 n

end A138477

/-! ## A138477.P348655017440792812

`∑[A138495(A004273(n)-n)]`
-/

namespace A138477.P348655017440792812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P348655017440792812

namespace A138477

/-- `∑[A138495(A004273(n)-n)]` -/
def P348655017440792812.Spec : Prop :=
  ∀ n, P348655017440792812.a n = A138477 n

end A138477

/-! ## A138477.P5101280517330358715

`∑[A138495(A289207(2*n)/2)]`
-/

namespace A138477.P5101280517330358715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P5101280517330358715

namespace A138477

/-- `∑[A138495(A289207(2*n)/2)]` -/
def P5101280517330358715.Spec : Prop :=
  ∀ n, P5101280517330358715.a n = A138477 n

end A138477

/-! ## A138477.P1093134730737581129

`∑[A138495(A004524(A004273(n)))]`
-/

namespace A138477.P1093134730737581129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P1093134730737581129

namespace A138477

/-- `∑[A138495(A004524(A004273(n)))]` -/
def P1093134730737581129.Spec : Prop :=
  ∀ n, P1093134730737581129.a n = A138477 n

end A138477

/-! ## A138477.P4991901156910916555

`A000034(n)*A084152(A008619(n))`
-/

namespace A138477.P4991901156910916555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A084152 (A008619 n).toNat

end

end A138477.P4991901156910916555

namespace A138477

/-- `A000034(n)*A084152(A008619(n))` -/
def P4991901156910916555.Spec : Prop :=
  ∀ n, P4991901156910916555.a n = A138477 n

end A138477

/-! ## A138477.P3157136770982151949

`A136401(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A138477.P3157136770982151949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A136401 (n + 1) - a (n - 1)

end

end A138477.P3157136770982151949

namespace A138477

/-- `A136401(n+1)-a(n-1)` -/
def P3157136770982151949.Spec : Prop :=
  ∀ n, P3157136770982151949.a n = A138477 n

end A138477

/-! ## A138477.P13008910031485914389

`∑[A138495(log2(A011782(n)))]`
-/

namespace A138477.P13008910031485914389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P13008910031485914389

namespace A138477

/-- `∑[A138495(log2(A011782(n)))]` -/
def P13008910031485914389.Spec : Prop :=
  ∀ n, P13008910031485914389.a n = A138477 n

end A138477

/-! ## A138477.P10223019163998736571

`∑[A138495(n)]-A138495(n)`
-/

namespace A138477.P10223019163998736571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138495 n

end

end A138477.P10223019163998736571

namespace A138477

/-- `∑[A138495(n)]-A138495(n)` -/
def P10223019163998736571.Spec : Prop :=
  ∀ n, P10223019163998736571.a n = A138477 n

end A138477

/-! ## A138477.P15273900376489799646

`∑[A138495(A004247(A000124(n)))]`
-/

namespace A138477.P15273900376489799646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (A004247 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138477.P15273900376489799646

namespace A138477

/-- `∑[A138495(A004247(A000124(n)))]` -/
def P15273900376489799646.Spec : Prop :=
  ∀ n, P15273900376489799646.a n = A138477 n

end A138477

/-!
# A138479: a(n) = smallest prime p such that 2*n + p^2 is another prime, or 0 if no such prime exists.

The programs for A138479, there is no canonical definition to state claims against.
-/

/-! ## A138479.P9991386365751213873

`A107286(A232009(2*(n+1)))`
-/

namespace A138479.P9991386365751213873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A232009 (2 * (n + 1))).toNat

end

end A138479.P9991386365751213873

/-! ## A138479.P25698502171172080

`A088212(2*(n+1))%A104224(A008833(n+1))`
-/

namespace A138479.P25698502171172080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088212 (2 * (n + 1))) (A104224 (A008833 (n + 1)).toNat)

end

end A138479.P25698502171172080

/-! ## A138479.P2374202793084296347

`A061397(A088212(∏{e}[2^n, 2*#+1]+1))`
-/

namespace A138479.P2374202793084296347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A088212 (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) + 1)).toNat

end

end A138479.P2374202793084296347

/-!
# A138481: Mutually-praising pairs excluding autobiographical numbers A046043. Version 1: both numbers in a pair have at most 10 digits.

The programs for A138481, there is no canonical definition to state claims against.
-/

/-! ## A138481.P6343399468468689137

`filter[A138482(n+1), A263428(#)]`
-/

namespace A138481.P6343399468468689137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263428 (f1 j).toNat = 1) n)

end

end A138481.P6343399468468689137

/-! ## A138481.P3250465232918572137

`filter[A138482(n+1), A266441(#)]`
-/

namespace A138481.P3250465232918572137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266441 (f1 j).toNat = 1) n)

end

end A138481.P3250465232918572137

/-! ## A138481.P4960551446672612667

`filter[A138482(n+1), A266459(#)]`
-/

namespace A138481.P4960551446672612667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266459 (f1 j).toNat = 1) n)

end

end A138481.P4960551446672612667

/-! ## A138481.P15709279999237998257

`filter[A138482(n+1), A266605(#)]`
-/

namespace A138481.P15709279999237998257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266605 (f1 j).toNat = 1) n)

end

end A138481.P15709279999237998257

/-!
# A138483: Expansion of (phi(q)^3 * phi(q^5) - phi(q) * phi(q^5)^3) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A138483, the canonical program `A138483.P1315469439001257354` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138483 has offset 1).

The definition of A138483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110712, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138483.P1315469439001257354

`(-1)^n*A110712(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A138483

/-- `(-1)^n*A110712(n+1)` -/
def P1315469439001257354.Spec : Prop :=
  ∀ n, P1315469439001257354.a n = A138483 (n + 1)

theorem P1315469439001257354.correct : P1315469439001257354.Spec := by
  intro n
  simp only [A138483, Nat.add_sub_cancel]

end A138483

/-! ## A138483.P273389448890037901

`abs(A110712(n+1))`
-/

namespace A138483.P273389448890037901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110712 (n + 1)|

end

end A138483.P273389448890037901

namespace A138483

/-- `abs(A110712(n+1))` -/
def P273389448890037901.Spec : Prop :=
  ∀ n, P273389448890037901.a n = A138483 (n + 1)

end A138483

/-! ## A138483.P4399350352461924202

`gcd(A000038(n), A110712(n+1))`
-/

namespace A138483.P4399350352461924202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110712 (n + 1))

end

end A138483.P4399350352461924202

namespace A138483

/-- `gcd(A000038(n), A110712(n+1))` -/
def P4399350352461924202.Spec : Prop :=
  ∀ n, (P4399350352461924202.a n : ℤ) = A138483 (n + 1)

end A138483

/-! ## A138483.P12018890117661267546

`lcm(A014709(n), A110712(n+1))`
-/

namespace A138483.P12018890117661267546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A110712 (n + 1))

end

end A138483.P12018890117661267546

namespace A138483

/-- `lcm(A014709(n), A110712(n+1))` -/
def P12018890117661267546.Spec : Prop :=
  ∀ n, (P12018890117661267546.a n : ℤ) = A138483 (n + 1)

end A138483

/-! ## A138483.P16143883559531296408

`abs(∑{d}[n+1, A138557(#)*A154269((n+1)/#)])`
-/

namespace A138483.P16143883559531296408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A138557 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A138483.P16143883559531296408

namespace A138483

/-- `abs(∑{d}[n+1, A138557(#)*A154269((n+1)/#)])` -/
def P16143883559531296408.Spec : Prop :=
  ∀ n, P16143883559531296408.a n = A138483 (n + 1)

end A138483

/-! ## A138483.P7304945140648674435

`A129303(n+1)+A138557(n+1)-A110712(n+1)`
-/

namespace A138483.P7304945140648674435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1) + (A138557 (n + 1) - A110712 (n + 1))

end

end A138483.P7304945140648674435

namespace A138483

/-- `A129303(n+1)+A138557(n+1)-A110712(n+1)` -/
def P7304945140648674435.Spec : Prop :=
  ∀ n, P7304945140648674435.a n = A138483 (n + 1)

end A138483

/-! ## A138483.P4469356167842786209

`A113185(n+1)*A138557(n+1)/A138558(n+1)`
-/

namespace A138483.P4469356167842786209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113185 (n + 1) * A138557 (n + 1) : ℚ) / (A138558 (n + 1) : ℚ)

end

end A138483.P4469356167842786209

namespace A138483

/-- `A113185(n+1)*A138557(n+1)/A138558(n+1)` -/
def P4469356167842786209.Spec : Prop :=
  ∀ n, P4469356167842786209.a n = (A138483 (n + 1) : ℚ)

end A138483

/-! ## A138483.P3356118827453992294

`A129303(2*(n+1))/A138558(2*(n+1))*A113185(n+1)`
-/

namespace A138483.P3356118827453992294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129303 (2 * (n + 1)) : ℚ) / (A138558 (2 * (n + 1)) : ℚ) * (A113185 (n + 1) : ℚ)

end

end A138483.P3356118827453992294

namespace A138483

/-- `A129303(2*(n+1))/A138558(2*(n+1))*A113185(n+1)` -/
def P3356118827453992294.Spec : Prop :=
  ∀ n, P3356118827453992294.a n = (A138483 (n + 1) : ℚ)

end A138483

/-! ## A138483.P5176284143365564333

`sqrt(A110712(n+1)²%A339736(n+2)²)`
-/

namespace A138483.P5176284143365564333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A110712 (n + 1) ^ 2) (A339736 (n + 2) ^ 2) : ℝ)

end

end A138483.P5176284143365564333

namespace A138483

/-- `sqrt(A110712(n+1)²%A339736(n+2)²)` -/
def P5176284143365564333.Spec : Prop :=
  ∀ n, P5176284143365564333.a n = (A138483 (n + 1) : ℝ)

end A138483

/-!
# A138484: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 0.

The programs for A138484, there is no canonical definition to state claims against.
-/

/-! ## A138484.P7201232723936800761

`(3*A138490(n))%A138493(n)`
-/

namespace A138484.P7201232723936800761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A138490 n) (A138493 n)

end

end A138484.P7201232723936800761

/-!
# A138489: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 5.

The programs for A138489, there is no canonical definition to state claims against.
-/

/-! ## A138489.P8134913039677631522

`2*A138490(n)-A138491(n)`
-/

namespace A138489.P8134913039677631522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138490 n - A138491 n

end

end A138489.P8134913039677631522

/-!
# A138490: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 6.

The programs for A138490, there is no canonical definition to state claims against.
-/

/-! ## A138490.P594580287064594901

`2*A138491(n)-A138492(n)`
-/

namespace A138490.P594580287064594901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138491 n - A138492 n

end

end A138490.P594580287064594901

/-!
# A138491: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 7.

The programs for A138491, there is no canonical definition to state claims against.
-/

/-! ## A138491.P3528193855139184348

`2*A138490(n)-A138489(n)`
-/

namespace A138491.P3528193855139184348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138490 n - A138489 n

end

end A138491.P3528193855139184348

/-!
# A138492: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 8.

The programs for A138492, there is no canonical definition to state claims against.
-/

/-! ## A138492.P11845147103167175788

`2*A138491(n)-A138490(n)`
-/

namespace A138492.P11845147103167175788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138491 n - A138490 n

end

end A138492.P11845147103167175788

/-!
# A138493: Say what you see in previous term, from the right, reporting total number for each digit encountered. Initial term is 9.

The programs for A138493, there is no canonical definition to state claims against.
-/

/-! ## A138493.P12329648690804945578

`2*A138491(n)-A138489(n)`
-/

namespace A138493.P12329648690804945578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138491 n - A138489 n

end

end A138493.P12329648690804945578

/-!
# A138494: a and b are integers > 0 satisfying a^2 + b^2 = c^2. Sequence gives the number of choices for a and b between successive values of c. (Integer solutions for c (Pythagorean triples) are not included.)

The programs for A138494, the canonical program `A138494.P12398084663385786614` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138494 has offset 1).

The definition of A138494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138494.P12398084663385786614

`A077770(n+1)/4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A138494

/-- `A077770(n+1)/4` -/
def P12398084663385786614.Spec : Prop :=
  ∀ n, P12398084663385786614.a n = (A138494 (n + 1) : ℚ)

end A138494

/-! ## A138494.P3981460007640643187

`A036694(n+2)-A256452(n+2)`
-/

namespace A138494.P3981460007640643187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (n + 2) - A256452 (n + 2)

end

end A138494.P3981460007640643187

namespace A138494

/-- `A036694(n+2)-A256452(n+2)` -/
def P3981460007640643187.Spec : Prop :=
  ∀ n, P3981460007640643187.a n = A138494 (n + 1)

end A138494

/-! ## A138494.P11552495190639977312

`(Δ[A051132(n+1)]-A046109(n+1))/4`
-/

namespace A138494.P11552495190639977312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A046109 (n + 1) : ℚ) / 4

end

end A138494.P11552495190639977312

namespace A138494

/-- `(Δ[A051132(n+1)]-A046109(n+1))/4` -/
def P11552495190639977312.Spec : Prop :=
  ∀ n, P11552495190639977312.a n = (A138494 (n + 1) : ℚ)

end A138494

/-! ## A138494.P13119385970976524350

`∑[Δ[A077770(n)]/4]`
-/

namespace A138494.P13119385970976524350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077770 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138494.P13119385970976524350

namespace A138494

/-- `∑[Δ[A077770(n)]/4]` -/
def P13119385970976524350.Spec : Prop :=
  ∀ n, P13119385970976524350.a n = (A138494 (n + 1) : ℚ)

end A138494

/-! ## A138494.P6186154089403057179

`A002265(A077770(n+1))`
-/

namespace A138494.P6186154089403057179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A077770 (n + 1)).toNat

end

end A138494.P6186154089403057179

namespace A138494

/-- `A002265(A077770(n+1))` -/
def P6186154089403057179.Spec : Prop :=
  ∀ n, P6186154089403057179.a n = A138494 (n + 1)

end A138494

/-! ## A138494.P17671734011938144682

`A110656(2*A077770(n+1))`
-/

namespace A138494.P17671734011938144682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * A077770 (n + 1)).toNat

end

end A138494.P17671734011938144682

namespace A138494

/-- `A110656(2*A077770(n+1))` -/
def P17671734011938144682.Spec : Prop :=
  ∀ n, P17671734011938144682.a n = A138494 (n + 1)

end A138494

/-! ## A138494.P1081509134077050512

`Δ[A014200(A005563(n))]-A256452(n+1)`
-/

namespace A138494.P1081509134077050512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A256452 (n + 1)

end

end A138494.P1081509134077050512

namespace A138494

/-- `Δ[A014200(A005563(n))]-A256452(n+1)` -/
def P1081509134077050512.Spec : Prop :=
  ∀ n, P1081509134077050512.a n = A138494 (n + 1)

end A138494

/-!
# A138495: First differences of A138477.

The programs for A138495, the canonical program `A138495.P3554219175569116323` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138495 has offset 0).

The definition of A138495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138495.P3554219175569116323

`a(n-1)+2*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138495

/-- `a(n-1)+2*a(n-3)+4*a(n-4)` -/
def P3554219175569116323.Spec : Prop :=
  ∀ n, (P3554219175569116323.a n : ℤ) = A138495 n

theorem P3554219175569116323.correct : P3554219175569116323.Spec := by
  intro n
  simp only [A138495]

end A138495

/-! ## A138495.P656218147523214367

`ogf(-x/(-1+x+2x^3+4x^4))`
-/

namespace A138495.P656218147523214367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 0, -2, -4] n

end

end A138495.P656218147523214367

namespace A138495

/-- `ogf(-x/(-1+x+2x^3+4x^4))` -/
def P656218147523214367.Spec : Prop :=
  ∀ n, P656218147523214367.a n = A138495 n

end A138495

/-! ## A138495.P17820933378951647123

`∑[A133684(n+1)*A133684(n)]`
-/

namespace A138495.P17820933378951647123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (n + 1) * A133684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138495.P17820933378951647123

namespace A138495

/-- `∑[A133684(n+1)*A133684(n)]` -/
def P17820933378951647123.Spec : Prop :=
  ∀ n, P17820933378951647123.a n = A138495 n

end A138495

/-! ## A138495.P14982453329516902570

`(A077980(n)-A078052(n))*A077953(n)`
-/

namespace A138495.P14982453329516902570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077980 n - A078052 n) * A077953 n

end

end A138495.P14982453329516902570

namespace A138495

/-- `(A077980(n)-A078052(n))*A077953(n)` -/
def P14982453329516902570.Spec : Prop :=
  ∀ n, P14982453329516902570.a n = A138495 n

end A138495

/-! ## A138495.P14006756515873378419

`A001045(A004526(n+1))*A001045(A110654(n+1))`
-/

namespace A138495.P14006756515873378419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004526 (n + 1)).toNat * A001045 (A110654 (n + 1)).toNat

end

end A138495.P14006756515873378419

namespace A138495

/-- `A001045(A004526(n+1))*A001045(A110654(n+1))` -/
def P14006756515873378419.Spec : Prop :=
  ∀ n, P14006756515873378419.a n = A138495 n

end A138495

/-! ## A138495.P4846098902453458688

`A001045(A008624(2*n))*A001045(A004526(n+1))`
-/

namespace A138495.P4846098902453458688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A008624 (2 * n)).toNat * A001045 (A004526 (n + 1)).toNat

end

end A138495.P4846098902453458688

namespace A138495

/-- `A001045(A008624(2*n))*A001045(A004526(n+1))` -/
def P4846098902453458688.Spec : Prop :=
  ∀ n, P4846098902453458688.a n = A138495 n

end A138495

/-! ## A138495.P1155575681869504721

`A001045(A008624(2*n+1))*A001045(A008624(2*n))`
-/

namespace A138495.P1155575681869504721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A008624 (2 * n + 1)).toNat * A001045 (A008624 (2 * n)).toNat

end

end A138495.P1155575681869504721

namespace A138495

/-- `A001045(A008624(2*n+1))*A001045(A008624(2*n))` -/
def P1155575681869504721.Spec : Prop :=
  ∀ n, P1155575681869504721.a n = A138495 n

end A138495

/-! ## A138495.P12574317574693789351

`Δ[A138477(n)]`
-/

namespace A138495.P12574317574693789351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138495.P12574317574693789351

namespace A138495

/-- `Δ[A138477(n)]` -/
def P12574317574693789351.Spec : Prop :=
  ∀ n, P12574317574693789351.a n = A138495 n

end A138495

/-! ## A138495.P7156953360579622074

`A001045(n)-2*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A138495.P7156953360579622074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001045 n - 2 * a (n - 2)

end

end A138495.P7156953360579622074

namespace A138495

/-- `A001045(n)-2*a(n-2)` -/
def P7156953360579622074.Spec : Prop :=
  ∀ n, P7156953360579622074.a n = A138495 n

end A138495

/-! ## A138495.P2594395226796331766

`A138477(n+1)-A138477(n)`
-/

namespace A138495.P2594395226796331766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (n + 1) - A138477 n

end

end A138495.P2594395226796331766

namespace A138495

/-- `A138477(n+1)-A138477(n)` -/
def P2594395226796331766.Spec : Prop :=
  ∀ n, P2594395226796331766.a n = A138495 n

end A138495

/-! ## A138495.P5383747459669285123

`Δ[Δ[A136401(n)+a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A138495.P5383747459669285123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A136401 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138495.P5383747459669285123

namespace A138495

/-- `Δ[Δ[A136401(n)+a(n-2)]]` -/
def P5383747459669285123.Spec : Prop :=
  ∀ n, P5383747459669285123.a n = A138495 n

end A138495

/-!
# A138496: Where record values occur in A003016.

The programs for A138496, there is no canonical definition to state claims against.
-/

/-! ## A138496.P5066957831535729159

`C(∑[xor(1, n+1)], or(2, n))`
-/

namespace A138496.P5066957831535729159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.lor 2 n)

end

end A138496.P5066957831535729159

