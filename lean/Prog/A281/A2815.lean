import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A281500: Reduced denominators of f(n) = (n+1)/(2^(2+n)-2) with A026741(n+1) as numerators.

The programs for A281500, the canonical program `A281500.P2681938232247418297` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281500 has offset 0).

The definition of A281500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281500.P2681938232247418297

`a(n-2)+A117856(n+1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A281500

/-- `a(n-2)+A117856(n+1)` -/
def P2681938232247418297.Spec : Prop :=
  ∀ n, P2681938232247418297.a n = A281500 n

theorem P2681938232247418297.correct : P2681938232247418297.Spec := by
  intro n
  simp only [A281500]

end A281500

/-! ## A281500.P11644058893969574025

`(3+(-1)^n)*(2^(n+1)-1)/2`
-/

namespace A281500.P11644058893969574025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + (-1) ^ n) * ((2 ^ (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A281500.P11644058893969574025

namespace A281500

/-- `(3+(-1)^n)*(2^(n+1)-1)/2` -/
def P11644058893969574025.Spec : Prop :=
  ∀ n, P11644058893969574025.a n = (A281500 n : ℚ)

end A281500

/-! ## A281500.P5709219938024740757

`5*a(n-2)-4*a(n-4)` with `a(0)=2, a(1)=3, a(2)=14, a(3)=15`
-/

namespace A281500.P5709219938024740757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 14, 15] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A281500.P5709219938024740757

namespace A281500

/-- `5*a(n-2)-4*a(n-4)` -/
def P5709219938024740757.Spec : Prop :=
  ∀ n, P5709219938024740757.a n = A281500 n

end A281500

/-! ## A281500.P13064766958092835412

`gcd(2, n)*∑[2^n]`
-/

namespace A281500.P13064766958092835412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281500.P13064766958092835412

namespace A281500

/-- `gcd(2, n)*∑[2^n]` -/
def P13064766958092835412.Spec : Prop :=
  ∀ n, (P13064766958092835412.a n : ℤ) = A281500 n

end A281500

/-! ## A281500.P701481248915423138

`ogf((2+3x+4x^2)/(1-5x^2+4x^4))`
-/

namespace A281500.P701481248915423138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 4] [1, 0, -5, 0, 4] n

end

end A281500.P701481248915423138

namespace A281500

/-- `ogf((2+3x+4x^2)/(1-5x^2+4x^4))` -/
def P701481248915423138.Spec : Prop :=
  ∀ n, P701481248915423138.a n = A281500 n

end A281500

/-! ## A281500.P17746855329049939868

`∑[floor(∑[4*a(n-2)]/a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A281500.P17746855329049939868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  4 * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281500.P17746855329049939868

namespace A281500

/-- `∑[floor(∑[4*a(n-2)]/a(n-1))]` -/
def P17746855329049939868.Spec : Prop :=
  ∀ n, P17746855329049939868.a n = A281500 n

end A281500

/-! ## A281500.P747111647119152364

`A285475(n+1)-1`
-/

namespace A281500.P747111647119152364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (n + 1) - 1

end

end A281500.P747111647119152364

namespace A281500

/-- `A285475(n+1)-1` -/
def P747111647119152364.Spec : Prop :=
  ∀ n, P747111647119152364.a n = A281500 n

end A281500

/-! ## A281500.P866759179317974971

`A075427(or(1, n)+n)`
-/

namespace A281500.P866759179317974971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (Nat.lor 1 n + n)

end

end A281500.P866759179317974971

namespace A281500

/-- `A075427(or(1, n)+n)` -/
def P866759179317974971.Spec : Prop :=
  ∀ n, P866759179317974971.a n = A281500 n

end A281500

/-! ## A281500.P2524861023074526077

`or(n, A060590(or(1, n)))`
-/

namespace A281500.P2524861023074526077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A060590 (Nat.lor 1 n))

end

end A281500.P2524861023074526077

namespace A281500

/-- `or(n, A060590(or(1, n)))` -/
def P2524861023074526077.Spec : Prop :=
  ∀ n, P2524861023074526077.a n = A281500 n

end A281500

/-! ## A281500.P14004122754634294857

`or(n, A095121(or(1, n)))`
-/

namespace A281500.P14004122754634294857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A095121 (Nat.lor 1 n))

end

end A281500.P14004122754634294857

namespace A281500

/-- `or(n, A095121(or(1, n)))` -/
def P14004122754634294857.Spec : Prop :=
  ∀ n, P14004122754634294857.a n = A281500 n

end A281500

/-! ## A281500.P8770489382049056366

`or(n, A280412(or(1, n)))`
-/

namespace A281500.P8770489382049056366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A280412 (Nat.lor 1 n))

end

end A281500.P8770489382049056366

namespace A281500

/-- `or(n, A280412(or(1, n)))` -/
def P8770489382049056366.Spec : Prop :=
  ∀ n, P8770489382049056366.a n = A281500 n

end A281500

/-! ## A281500.P13069533661700240816

`or(n, A282004(or(1, n)))`
-/

namespace A281500.P13069533661700240816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A282004 (Nat.lor 1 n))

end

end A281500.P13069533661700240816

namespace A281500

/-- `or(n, A282004(or(1, n)))` -/
def P13069533661700240816.Spec : Prop :=
  ∀ n, P13069533661700240816.a n = A281500 n

end A281500

/-! ## A281500.P1214553002220868586

`or(n, A283353(or(1, n)))`
-/

namespace A281500.P1214553002220868586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A283353 (Nat.lor 1 n))

end

end A281500.P1214553002220868586

namespace A281500

/-- `or(n, A283353(or(1, n)))` -/
def P1214553002220868586.Spec : Prop :=
  ∀ n, P1214553002220868586.a n = A281500 n

end A281500

/-! ## A281500.P11037668585255223024

`or(n, A286772(or(1, n)))`
-/

namespace A281500.P11037668585255223024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A286772 (Nat.lor 1 n))

end

end A281500.P11037668585255223024

namespace A281500

/-- `or(n, A286772(or(1, n)))` -/
def P11037668585255223024.Spec : Prop :=
  ∀ n, P11037668585255223024.a n = A281500 n

end A281500

/-! ## A281500.P10232288881332662591

`or(n, A288770(or(1, n)))`
-/

namespace A281500.P10232288881332662591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A288770 (Nat.lor 1 n))

end

end A281500.P10232288881332662591

namespace A281500

/-- `or(n, A288770(or(1, n)))` -/
def P10232288881332662591.Spec : Prop :=
  ∀ n, P10232288881332662591.a n = A281500 n

end A281500

/-! ## A281500.P1350627810207320392

`or(n, A289098(or(1, n)))`
-/

namespace A281500.P1350627810207320392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A289098 (Nat.lor 1 n))

end

end A281500.P1350627810207320392

namespace A281500

/-- `or(n, A289098(or(1, n)))` -/
def P1350627810207320392.Spec : Prop :=
  ∀ n, P1350627810207320392.a n = A281500 n

end A281500

/-! ## A281500.P13800001270676461363

`or(n, A289268(or(1, n)))`
-/

namespace A281500.P13800001270676461363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A289268 (Nat.lor 1 n))

end

end A281500.P13800001270676461363

namespace A281500

/-- `or(n, A289268(or(1, n)))` -/
def P13800001270676461363.Spec : Prop :=
  ∀ n, P13800001270676461363.a n = A281500 n

end A281500

/-! ## A281500.P17896050863184362553

`or(n, A056450(n+1)-2)`
-/

namespace A281500.P17896050863184362553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A056450 (n + 1) - 2)

end

end A281500.P17896050863184362553

namespace A281500

/-- `or(n, A056450(n+1)-2)` -/
def P17896050863184362553.Spec : Prop :=
  ∀ n, P17896050863184362553.a n = A281500 n

end A281500

/-! ## A281500.P15789292183828360044

`or(n, 2*A140252(n+1))`
-/

namespace A281500.P15789292183828360044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A140252 (n + 1))

end

end A281500.P15789292183828360044

namespace A281500

/-- `or(n, 2*A140252(n+1))` -/
def P15789292183828360044.Spec : Prop :=
  ∀ n, P15789292183828360044.a n = A281500 n

end A281500

/-! ## A281500.P4982240211147182406

`A066880(A042963(n+1))`
-/

namespace A281500.P4982240211147182406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (A042963 (n + 1)).toNat

end

end A281500.P4982240211147182406

namespace A281500

/-- `A066880(A042963(n+1))` -/
def P4982240211147182406.Spec : Prop :=
  ∀ n, P4982240211147182406.a n = A281500 n

end A281500

/-!
# A281501: Number of partitions of n^3 into distinct parts.

The programs for A281501, there is no canonical definition to state claims against.
-/

/-! ## A281501.P11587788830268675850

`A000009(A000578(n))`
-/

namespace A281501.P11587788830268675850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000578 n).toNat

end

end A281501.P11587788830268675850

/-! ## A281501.P7313450819118802045

`A000009(n^3)`
-/

namespace A281501.P7313450819118802045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n ^ 3)

end

end A281501.P7313450819118802045

/-! ## A281501.P14955772752429799044

`abs(A081360(n^3))`
-/

namespace A281501.P14955772752429799044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (n ^ 3)|

end

end A281501.P14955772752429799044

/-! ## A281501.P779313114297599349

`A111133(n^3)+1`
-/

namespace A281501.P779313114297599349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n ^ 3) + 1

end

end A281501.P779313114297599349

/-! ## A281501.P11000910222949917863

`A035457(2*n^3)`
-/

namespace A281501.P11000910222949917863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n ^ 3)

end

end A281501.P11000910222949917863

/-!
# A281502: Numbers m such that the numerator of Bernoulli(2m) is divisible by 691.

The programs for A281502, there is no canonical definition to state claims against.
-/

/-! ## A281502.P14718160535834363199

`A119864(n+1)/2`
-/

namespace A281502.P14718160535834363199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119864 (n + 1) : ℚ) / 2

end

end A281502.P14718160535834363199

/-! ## A281502.P8515792527656277917

`A014682(A119864(n+1))`
-/

namespace A281502.P8515792527656277917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A119864 (n + 1)).toNat

end

end A281502.P8515792527656277917

/-! ## A281502.P7132253624404524235

`A103391(A119864(n+1)-2)`
-/

namespace A281502.P7132253624404524235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A119864 (n + 1) - 2).toNat

end

end A281502.P7132253624404524235

/-! ## A281502.P5045010012407609008

`A328399(A119864(n+1)-2)`
-/

namespace A281502.P5045010012407609008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A119864 (n + 1) - 2).toNat

end

end A281502.P5045010012407609008

/-! ## A281502.P15480549010743113944

`A117358(4*A119864(n+1))`
-/

namespace A281502.P15480549010743113944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A119864 (n + 1)).toNat

end

end A281502.P15480549010743113944

/-!
# A281503: Solutions x to the negative Pell equation y^2 = 33*x^2 - 8 with x,y >= 0.

The programs for A281503, the canonical program `A281503.P9134184356396671799` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281503 has offset 1).

The definition of A281503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281503.P9134184356396671799

`46*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=43, a(3)=137`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281503

/-- `46*a(n-2)-a(n-4)` -/
def P9134184356396671799.Spec : Prop :=
  ∀ n, P9134184356396671799.a n = A281503 (n + 1)

theorem P9134184356396671799.correct : P9134184356396671799.Spec := by
  intro n
  simp only [A281503, Nat.add_sub_cancel]

end A281503

/-! ## A281503.P5572739569976175143

`A041055(2*n)`
-/

namespace A281503.P5572739569976175143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (2 * n)

end

end A281503.P5572739569976175143

namespace A281503

/-- `A041055(2*n)` -/
def P5572739569976175143.Spec : Prop :=
  ∀ n, P5572739569976175143.a n = A281503 (n + 1)

end A281503

/-! ## A281503.P2729520695970090330

`record[A041055(A005131(n))]`
-/

namespace A281503.P2729520695970090330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281503.P2729520695970090330

namespace A281503

/-- `record[A041055(A005131(n))]` -/
def P2729520695970090330.Spec : Prop :=
  ∀ n, P2729520695970090330.a n = A281503 (n + 1)

end A281503

/-! ## A281503.P14108815136382773338

`record[A041055(A014681(n))]`
-/

namespace A281503.P14108815136382773338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281503.P14108815136382773338

namespace A281503

/-- `record[A041055(A014681(n))]` -/
def P14108815136382773338.Spec : Prop :=
  ∀ n, P14108815136382773338.a n = A281503 (n + 1)

end A281503

/-! ## A281503.P4047034286371670117

`record[A041055(n-A255327(n))]`
-/

namespace A281503.P4047034286371670117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 ((n : ℤ) - A255327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281503.P4047034286371670117

namespace A281503

/-- `record[A041055(n-A255327(n))]` -/
def P4047034286371670117.Spec : Prop :=
  ∀ n, P4047034286371670117.a n = A281503 (n + 1)

end A281503

/-! ## A281503.P7659082595134016314

`record[A041055(n)/A000034(n)]`
-/

namespace A281503.P7659082595134016314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041055 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281503.P7659082595134016314

namespace A281503

/-- `record[A041055(n)/A000034(n)]` -/
def P7659082595134016314.Spec : Prop :=
  ∀ n, P7659082595134016314.a n = (A281503 (n + 1) : ℚ)

end A281503

/-! ## A281503.P4336381455506724692

`record[A041055(n)/A006519(n+1)]`
-/

namespace A281503.P4336381455506724692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041055 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281503.P4336381455506724692

namespace A281503

/-- `record[A041055(n)/A006519(n+1)]` -/
def P4336381455506724692.Spec : Prop :=
  ∀ n, P4336381455506724692.a n = (A281503 (n + 1) : ℚ)

end A281503

/-!
# A281504: Solutions y to the negative Pell equation y^2 = 33*x^2 - 8 with x,y >= 0.

The programs for A281504, the canonical program `A281504.P14833276301261138524` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281504 has offset 1).

The definition of A281504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281504.P14833276301261138524

`46*a(n-2)-a(n-4)` with `a(0)=5, a(1)=17, a(2)=247, a(3)=787`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281504

/-- `46*a(n-2)-a(n-4)` -/
def P14833276301261138524.Spec : Prop :=
  ∀ n, P14833276301261138524.a n = A281504 (n + 1)

theorem P14833276301261138524.correct : P14833276301261138524.Spec := by
  intro n
  simp only [A281504, Nat.add_sub_cancel]

end A281504

/-! ## A281504.P10874737875507692436

`A041054(2*n)`
-/

namespace A281504.P10874737875507692436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041054 (2 * n)

end

end A281504.P10874737875507692436

namespace A281504

/-- `A041054(2*n)` -/
def P10874737875507692436.Spec : Prop :=
  ∀ n, P10874737875507692436.a n = A281504 (n + 1)

end A281504

/-! ## A281504.P9688174608958851925

`record[A041054(A237420(n))]`
-/

namespace A281504.P9688174608958851925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041054 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P9688174608958851925

namespace A281504

/-- `record[A041054(A237420(n))]` -/
def P9688174608958851925.Spec : Prop :=
  ∀ n, P9688174608958851925.a n = A281504 (n + 1)

end A281504

/-! ## A281504.P5530966545222056289

`record[A041054(n)/A000034(n)]`
-/

namespace A281504.P5530966545222056289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041054 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P5530966545222056289

namespace A281504

/-- `record[A041054(n)/A000034(n)]` -/
def P5530966545222056289.Spec : Prop :=
  ∀ n, P5530966545222056289.a n = (A281504 (n + 1) : ℚ)

end A281504

/-! ## A281504.P5700786106018630602

`record[A041054(n)/A056753(n)]`
-/

namespace A281504.P5700786106018630602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041054 n : ℚ) / (A056753 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P5700786106018630602

namespace A281504

/-- `record[A041054(n)/A056753(n)]` -/
def P5700786106018630602.Spec : Prop :=
  ∀ n, P5700786106018630602.a n = (A281504 (n + 1) : ℚ)

end A281504

/-! ## A281504.P6681868176127405649

`record[gcd(A007814(n+1), A041054(n))]`
-/

namespace A281504.P6681868176127405649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A041054 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P6681868176127405649

namespace A281504

/-- `record[gcd(A007814(n+1), A041054(n))]` -/
def P6681868176127405649.Spec : Prop :=
  ∀ n, (P6681868176127405649.a n : ℤ) = A281504 (n + 1)

end A281504

/-! ## A281504.P9084654359983264530

`record[A041054(A008611(A230424(n)))]`
-/

namespace A281504.P9084654359983264530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041054 (A008611 (A230424 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P9084654359983264530

namespace A281504

/-- `record[A041054(A008611(A230424(n)))]` -/
def P9084654359983264530.Spec : Prop :=
  ∀ n, P9084654359983264530.a n = A281504 (n + 1)

end A281504

/-! ## A281504.P16869432995119081938

`record[A041054(A008611(A000265(n+1)))]`
-/

namespace A281504.P16869432995119081938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041054 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281504.P16869432995119081938

namespace A281504

/-- `record[A041054(A008611(A000265(n+1)))]` -/
def P16869432995119081938.Spec : Prop :=
  ∀ n, P16869432995119081938.a n = A281504 (n + 1)

end A281504

/-!
# A281505: Numbers of the form y^2 - x^2 such that x^2 + y^2 is a prime and 0 < x < y.

The programs for A281505, there is no canonical definition to state claims against.
-/

/-! ## A281505.P13248463420386853824

`A045954(n+1)+A038500(A107035(n+1))`
-/

namespace A281505.P13248463420386853824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + A038500 (A107035 (n + 1)).toNat

end

end A281505.P13248463420386853824

/-! ## A281505.P3836043413276275210

`or(A085824(3*n+2), A326073(A227502(n+1)))`
-/

namespace A281505.P3836043413276275210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085824 (3 * n + 2)) (A326073 (A227502 (n + 1)).toNat)

end

end A281505.P3836043413276275210

/-! ## A281505.P16641220725177242801

`A002328(2*n+3)-A001285(A268658(n+1))`
-/

namespace A281505.P16641220725177242801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (2 * n + 3) - A001285 (A268658 (n + 1)).toNat

end

end A281505.P16641220725177242801

/-! ## A281505.P6047032194474083771

`or(A085824(3*n+2), A326073(A229209(n+1)))`
-/

namespace A281505.P6047032194474083771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085824 (3 * n + 2)) (A326073 (A229209 (n + 1)).toNat)

end

end A281505.P6047032194474083771

/-!
# A281510: a(n) = n! * Sum_{k=1..n} A008836(k)/k.

The programs for A281510, there is no canonical definition to state claims against.
-/

/-! ## A281510.P17049103320255837302

`(a(n-1)+n²*a(n-2))^a(∑[n%4-1])` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A281510.P17049103320255837302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 4 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + n ^ 2 * a (n - 2)) ^ a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281510.P17049103320255837302

/-! ## A281510.P4666034833852511984

`A024168((n+1)*a(ceil(n/2)-1))` with `a(0)=1`
-/

namespace A281510.P4666034833852511984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024168 ((n + 1 : ℤ) * a (⌈(n : ℚ) / 2⌉ - 1).toNat).toNat

end

end A281510.P4666034833852511984

/-! ## A281510.P10116601596342379732

`A048671(a(n-1)+n²*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A281510.P10116601596342379732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A048671 (a (n - 1) + (n ^ 2 : ℤ) * a (n - 2)).toNat

end

end A281510.P10116601596342379732

/-!
# A281511: The lexicographically earliest sequence of positive integers such that for all k >= j >= 1, if a(n) = a(n + j) = a(n + k) then a(n + j + k) != a(n).

The programs for A281511, there is no canonical definition to state claims against.
-/

/-! ## A281511.P8593746701298763941

`A001227(A331562(3*n)+A007953(n))`
-/

namespace A281511.P8593746701298763941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A331562 (3 * n) + A007953 n).toNat

end

end A281511.P8593746701298763941

/-! ## A281511.P15685909369919979319

`A001227(A331562(3*n)+A010888(n))`
-/

namespace A281511.P15685909369919979319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A331562 (3 * n) + A010888 n).toNat

end

end A281511.P15685909369919979319

/-! ## A281511.P8950850848840476174

`A000120(A083434(n+2)-1)`
-/

namespace A281511.P8950850848840476174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A083434 (n + 2) - 1).toNat

end

end A281511.P8950850848840476174

/-! ## A281511.P13940574268988857275

`A001221(A127727(n+1)*A342382(n)+4)`
-/

namespace A281511.P13940574268988857275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127727 (n + 1) * A342382 n + 4).toNat

end

end A281511.P13940574268988857275

/-! ## A281511.P11473514919207997766

`A198333(A075551(n+2))`
-/

namespace A281511.P11473514919207997766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198333 (A075551 (n + 2)).toNat

end

end A281511.P11473514919207997766

/-!
# A281514: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A281514, there is no canonical definition to state claims against.
-/

/-! ## A281514.P2684754271812728674

`A007088(A281516(n))`
-/

namespace A281514.P2684754271812728674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281516 n).toNat

end

end A281514.P2684754271812728674

/-! ## A281514.P15759763219170485436

`A185544(2*A281516(n))`
-/

namespace A281514.P15759763219170485436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281516 n).toNat

end

end A281514.P15759763219170485436

/-! ## A281514.P3263065826573730770

`A278904(n)+A185264(A326248(n))`
-/

namespace A281514.P3263065826573730770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278904 n + A185264 (A326248 n).toNat

end

end A281514.P3263065826573730770

/-!
# A281515: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A281515, there is no canonical definition to state claims against.
-/

/-! ## A281515.P1331274179513815429

`A007088(A281517(n))`
-/

namespace A281515.P1331274179513815429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281517 n).toNat

end

end A281515.P1331274179513815429

/-! ## A281515.P6926873252642733453

`A185544(2*A281517(n))`
-/

namespace A281515.P6926873252642733453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281517 n).toNat

end

end A281515.P6926873252642733453

/-!
# A281518: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A281518, there is no canonical definition to state claims against.
-/

/-! ## A281518.P5726539533540013564

`A007088(A281520(n))`
-/

namespace A281518.P5726539533540013564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281520 n).toNat

end

end A281518.P5726539533540013564

/-! ## A281518.P6077674940019304708

`A185544(2*A281520(n))`
-/

namespace A281518.P6077674940019304708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281520 n).toNat

end

end A281518.P6077674940019304708

/-! ## A281518.P5364507103325112154

`A281632(A073789(n))`
-/

namespace A281518.P5364507103325112154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281632 (A073789 n).toNat

end

end A281518.P5364507103325112154

/-! ## A281518.P4355606555198016876

`A281632(A018799(n!))`
-/

namespace A281518.P4355606555198016876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281632 (A018799 (Nat.factorial n)).toNat

end

end A281518.P4355606555198016876

/-!
# A281519: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A281519, there is no canonical definition to state claims against.
-/

/-! ## A281519.P8515804144928005842

`A007088(A281521(n))`
-/

namespace A281519.P8515804144928005842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281521 n).toNat

end

end A281519.P8515804144928005842

/-! ## A281519.P12827924966214755170

`A185544(2*A281521(n))`
-/

namespace A281519.P12827924966214755170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281521 n).toNat

end

end A281519.P12827924966214755170

/-! ## A281519.P3891462096207264827

`A281633(A073789(n))`
-/

namespace A281519.P3891462096207264827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281633 (A073789 n).toNat

end

end A281519.P3891462096207264827

/-! ## A281519.P10736421839458044482

`A281633(A004891(n+1))`
-/

namespace A281519.P10736421839458044482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281633 (A004891 (n + 1)).toNat

end

end A281519.P10736421839458044482

/-!
# A281520: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A281520, there is no canonical definition to state claims against.
-/

/-! ## A281520.P6350793299868489363

`∏{e}[7^n, A281634(#)]`
-/

namespace A281520.P6350793299868489363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A281634 (Nat.factorization (f1 n) p)

end

end A281520.P6350793299868489363

/-! ## A281520.P890029434343059943

`A281634(A304036(n!))`
-/

namespace A281520.P890029434343059943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281634 (A304036 (Nat.factorial n)).toNat

end

end A281520.P890029434343059943

/-! ## A281520.P13957209984804986842

`A281634(A004891(n+1))`
-/

namespace A281520.P13957209984804986842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281634 (A004891 (n + 1)).toNat

end

end A281520.P13957209984804986842

/-! ## A281520.P17269963092550928482

`A281634(A004902(n+1))`
-/

namespace A281520.P17269963092550928482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281634 (A004902 (n + 1)).toNat

end

end A281520.P17269963092550928482

/-!
# A281521: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A281521, there is no canonical definition to state claims against.
-/

/-! ## A281521.P8326264334582009279

`A030109(A281520(n)+A000079(n+1))`
-/

namespace A281521.P8326264334582009279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A281520 n + A000079 (n + 1)).toNat

end

end A281521.P8326264334582009279

/-! ## A281521.P1486975241674392324

`A281635(A004891(n+1))`
-/

namespace A281521.P1486975241674392324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281635 (A004891 (n + 1)).toNat

end

end A281521.P1486975241674392324

/-! ## A281521.P13868544722512774896

`A281635(A004902(n+1))`
-/

namespace A281521.P13868544722512774896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281635 (A004902 (n + 1)).toNat

end

end A281521.P13868544722512774896

/-! ## A281521.P10626602956682846625

`A281635(A004913(n+1))`
-/

namespace A281521.P10626602956682846625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281635 (A004913 (n + 1)).toNat

end

end A281521.P10626602956682846625

/-!
# A281522: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A281522, there is no canonical definition to state claims against.
-/

/-! ## A281522.P8379399226765329852

`A007088(A281524(n))`
-/

namespace A281522.P8379399226765329852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281524 n).toNat

end

end A281522.P8379399226765329852

/-! ## A281522.P9802163491364242424

`A007088(A000225(n+2)-A283134(n+1))`
-/

namespace A281522.P9802163491364242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283134 (n + 1)).toNat

end

end A281522.P9802163491364242424

/-! ## A281522.P12358458326939952435

`A007088(A000225((2*(n+1))%2+2+n)%A283134(n+1))`
-/

namespace A281522.P12358458326939952435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000225 (2 * (n + 1) % 2 + 2 + n)) (A283134 (n + 1))).toNat

end

end A281522.P12358458326939952435

/-! ## A281522.P13405490804600967359

`A256078(A283134(n+1))`
-/

namespace A281522.P13405490804600967359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A283134 (n + 1)).toNat

end

end A281522.P13405490804600967359

/-!
# A281523: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A281523, there is no canonical definition to state claims against.
-/

/-! ## A281523.P18250757942109453123

`A007088(A281525(n))`
-/

namespace A281523.P18250757942109453123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281525 n).toNat

end

end A281523.P18250757942109453123

/-! ## A281523.P9435942913553861885

`A305989(A281524(n))`
-/

namespace A281523.P9435942913553861885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281524 n).toNat

end

end A281523.P9435942913553861885

/-! ## A281523.P13530954573009253774

`A305989(A000225(n+2)-A283134(n+1))`
-/

namespace A281523.P13530954573009253774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A000225 (n + 2) - A283134 (n + 1)).toNat

end

end A281523.P13530954573009253774

/-! ## A281523.P4953227550736314472

`A305989(A000225((2*(n+1))%2+2+n)%A283134(n+1))`
-/

namespace A281523.P4953227550736314472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.tmod (A000225 (2 * (n + 1) % 2 + 2 + n)) (A283134 (n + 1))).toNat

end

end A281523.P4953227550736314472

/-!
# A281524: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A281524, there is no canonical definition to state claims against.
-/

/-! ## A281524.P16312806610888002665

`A000225(n+2)-A283134(n+1)`
-/

namespace A281524.P16312806610888002665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283134 (n + 1)

end

end A281524.P16312806610888002665

/-! ## A281524.P11066346697710308927

`A000225(round(acot(n)+n)+2)%A283134(n+1)`
-/

namespace A281524.P11066346697710308927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 2).toNat) (A283134 (n + 1))

end

end A281524.P11066346697710308927

/-! ## A281524.P16103377156752059564

`xor(A000225(floor((2*n+5)/2)), A283134(n+1))`
-/

namespace A281524.P16103377156752059564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 ⌊(2 * n + 5 : ℚ) / 2⌋.toNat) (A283134 (n + 1))

end

end A281524.P16103377156752059564

/-! ## A281524.P1302853658049672734

`A000225((2*(n+1))%2+2+n)%A283134(n+1)`
-/

namespace A281524.P1302853658049672734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (2 * (n + 1) % 2 + 2 + n)) (A283134 (n + 1))

end

end A281524.P1302853658049672734

/-!
# A281525: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A281525, there is no canonical definition to state claims against.
-/

/-! ## A281525.P8550018653093136104

`A057889(A000265(A281524(n)))`
-/

namespace A281525.P8550018653093136104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A281524 n).toNat).toNat

end

end A281525.P8550018653093136104

/-! ## A281525.P4541226371796559290

`A281589(lcm(2, A281524(n)))`
-/

namespace A281525.P4541226371796559290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A281524 n))

end

end A281525.P4541226371796559290

/-! ## A281525.P6207320995090557915

`A281589(lcm(4, A000225(n+2)-A283134(n+1)))`
-/

namespace A281525.P6207320995090557915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 4 (A000225 (n + 2) - A283134 (n + 1)))

end

end A281525.P6207320995090557915

/-! ## A281525.P5278949035547851365

`A030101(A281524(n))`
-/

namespace A281525.P5278949035547851365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281524 n).toNat

end

end A281525.P5278949035547851365

/-! ## A281525.P12230424785900727775

`A281589(2*A281524(n))`
-/

namespace A281525.P12230424785900727775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A281524 n).toNat

end

end A281525.P12230424785900727775

/-!
# A281527: Triangle read by rows: T(n,k) = minimal number of terms needed to write k/n as a signed sum of distinct unit fractions, 1 <= k < n.

The programs for A281527, there is no canonical definition to state claims against.
-/

/-! ## A281527.P9718402472312968762

`gcd(A001221(A097785(n+1)), A123163(n))`
-/

namespace A281527.P9718402472312968762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A097785 (n + 1)).toNat) (A123163 n)

end

end A281527.P9718402472312968762

/-! ## A281527.P35726811313302256

`A020639(A320893(n+1))-A077049(n+1)`
-/

namespace A281527.P35726811313302256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A320893 (n + 1)).toNat - A077049 (n + 1)

end

end A281527.P35726811313302256

/-! ## A281527.P6730669729329419866

`A050205(n+2)-A122726(n+1)%A050205(n+2)`
-/

namespace A281527.P6730669729329419866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) - Int.tmod (A122726 (n + 1)) (A050205 (n + 2))

end

end A281527.P6730669729329419866

/-! ## A281527.P9829184127455631228

`A141256(A141256(n))/A000034(A123163(n))`
-/

namespace A281527.P9829184127455631228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141256 (A141256 n).toNat : ℚ) / (A000034 (A123163 n).toNat : ℚ)

end

end A281527.P9829184127455631228

/-! ## A281527.P470800141660800022

`ceil(A051127(n+1)/A011776(A061511(n+1)+1))+1`
-/

namespace A281527.P470800141660800022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051127 (n + 1) : ℚ) / (A011776 (A061511 (n + 1) + 1).toNat : ℚ)⌉ + 1

end

end A281527.P470800141660800022

/-!
# A281529: a(n) = least denominator Y of any proper fraction X/Y which needs n or more terms to be written as a signed sum of distinct unit fractions.

The programs for A281529, there is no canonical definition to state claims against.
-/

/-! ## A281529.P16068985777048070943

`p?[floor(atan(11)^n)]`
-/

namespace A281529.P16068985777048070943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (11 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281529.P16068985777048070943

/-!
# A281530: Triangle read by rows: T(n,k) = number of terms for the shortest Egyptian fraction representation of k/n, 1 <= k < n.

The programs for A281530, there is no canonical definition to state claims against.
-/

/-! ## A281530.P15797654147997144316

`A050205(n+2)%5`
-/

namespace A281530.P15797654147997144316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050205 (n + 2)) 5

end

end A281530.P15797654147997144316

/-! ## A281530.P17998754575451257398

`gcd(A006352(n), A050205(n+2))`
-/

namespace A281530.P17998754575451257398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006352 n) (A050205 (n + 2))

end

end A281530.P17998754575451257398

/-! ## A281530.P14891486618113048506

`C(A050205(n+2), A178334(n))`
-/

namespace A281530.P14891486618113048506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050205 (n + 2)).toNat (A178334 n).toNat

end

end A281530.P14891486618113048506

/-! ## A281530.P7123225124716073021

`A050205(n+2)+char[A080529(n)]`
-/

namespace A281530.P7123225124716073021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080529 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P7123225124716073021

/-! ## A281530.P12353475813880189394

`A050205(n+2)+char[A105943(n)]`
-/

namespace A281530.P12353475813880189394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P12353475813880189394

/-! ## A281530.P9029876190650476816

`or(char[A029840(n)], A050205(n+2))`
-/

namespace A281530.P9029876190650476816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029840 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A050205 (n + 2))

end

end A281530.P9029876190650476816

/-! ## A281530.P1453428643447894636

`or(char[A048556(n)], A050205(n+2))`
-/

namespace A281530.P1453428643447894636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048556 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A050205 (n + 2))

end

end A281530.P1453428643447894636

/-! ## A281530.P7973403384716050632

`or(char[A350312(n)], A050205(n+2))`
-/

namespace A281530.P7973403384716050632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350312 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A050205 (n + 2))

end

end A281530.P7973403384716050632

/-! ## A281530.P10926181288988796895

`and(A050205(n+2), A140632(n+1))`
-/

namespace A281530.P10926181288988796895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050205 (n + 2)) (A140632 (n + 1))

end

end A281530.P10926181288988796895

/-! ## A281530.P4950376726463897253

`A050205(n+2)+char[A050209(n+1)]`
-/

namespace A281530.P4950376726463897253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050209 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P4950376726463897253

/-! ## A281530.P13266358409718202571

`A050205(n+2)+char[A050215(n+1)]`
-/

namespace A281530.P13266358409718202571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050215 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P13266358409718202571

/-! ## A281530.P7363012925309417912

`A050205(n+2)+char[A050238(n+1)]`
-/

namespace A281530.P7363012925309417912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050238 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P7363012925309417912

/-! ## A281530.P14499298728662253800

`A050205(n+2)+char[A050241(n+1)]`
-/

namespace A281530.P14499298728662253800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050241 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P14499298728662253800

/-! ## A281530.P8625155519955703268

`A050205(n+2)+char[A050245(n+1)]`
-/

namespace A281530.P8625155519955703268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050245 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P8625155519955703268

/-! ## A281530.P5000347508534085408

`A050205(n+2)+char[A050212(n+6)]`
-/

namespace A281530.P5000347508534085408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050212 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P5000347508534085408

/-! ## A281530.P16331209292561104174

`A050205(n+2)+char[A210362(2*n+3)]`
-/

namespace A281530.P16331209292561104174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210362 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P16331209292561104174

/-! ## A281530.P5816822784820071837

`A050205(n+2)+char[A210360(2*n+5)]`
-/

namespace A281530.P5816822784820071837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281530.P5816822784820071837

/-! ## A281530.P4722533871160076780

`and(A050205(n+2), A274381(A100678(n+1)))`
-/

namespace A281530.P4722533871160076780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050205 (n + 2)) (A274381 (A100678 (n + 1)).toNat)

end

end A281530.P4722533871160076780

/-!
# A281532: a(n) = least numerator X such that the proper fraction X/A281529(n) needs n or more terms to be written as a signed sum of distinct unit fractions.

The programs for A281532, there is no canonical definition to state claims against.
-/

/-! ## A281532.P8880703071386085551

`floor(∑[(4/3)^n²])`
-/

namespace A281532.P8880703071386085551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) / 3) ^ n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A281532.P8880703071386085551

/-!
# A281533: Numbers such that A279967(n) = 0.

The programs for A281533, there is no canonical definition to state claims against.
-/

/-! ## A281533.P17681733156865267736

`lt[A279967(n+1), 1]+1`
-/

namespace A281533.P17681733156865267736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279967 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A281533.P17681733156865267736

/-! ## A281533.P6743361964056076205

`eq[0, A279967(A028310(n))]`
-/

namespace A281533.P6743361964056076205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281533.P6743361964056076205

/-! ## A281533.P10196925822852033350

`A153152(eq[0, A279967(n+1)])`
-/

namespace A281533.P10196925822852033350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281533.P10196925822852033350

/-! ## A281533.P11385652119206972968

`C(lt[0, A334720(n+1)], 2)+2`
-/

namespace A281533.P11385652119206972968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2 + 2

end

end A281533.P11385652119206972968

/-! ## A281533.P8043594718029127219

`A014493(n+3)+A180230(3*(n+1))%4`
-/

namespace A281533.P8043594718029127219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 3) + Int.tmod (A180230 (3 * (n + 1))) 4

end

end A281533.P8043594718029127219

/-!
# A281534: Number of n X 2 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281534, there is no canonical definition to state claims against.
-/

/-! ## A281534.P14500194437058968837

`A281540(∑[n+1]+2)`
-/

namespace A281534.P14500194437058968837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281534.P14500194437058968837

/-! ## A281534.P11679269441744904998

`lcm(2, A281540(A133263(n+1)))`
-/

namespace A281534.P11679269441744904998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281540 (A133263 (n + 1)).toNat)

end

end A281534.P11679269441744904998

/-! ## A281534.P154184683110813802

`char[A007318(n)]*A281540(A133263(n+1))`
-/

namespace A281534.P154184683110813802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281540 (A133263 (n + 1)).toNat

end

end A281534.P154184683110813802

/-! ## A281534.P10538253370643472116

`A000041(C(2, n))*A281540(A133263(n+1))`
-/

namespace A281534.P10538253370643472116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A281540 (A133263 (n + 1)).toNat

end

end A281534.P10538253370643472116

/-! ## A281534.P7018697540340861240

`A007318(C(2, n))*A281540(A133263(n+1))`
-/

namespace A281534.P7018697540340861240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281540 (A133263 (n + 1)).toNat

end

end A281534.P7018697540340861240

/-!
# A281535: Number of nX3 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281535, there is no canonical definition to state claims against.
-/

/-! ## A281535.P4310986589049647192

`A281540(∑[n+2]+4)`
-/

namespace A281535.P4310986589049647192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281535.P4310986589049647192

/-! ## A281535.P17728629496202580335

`or(char[3], A281540(A167614(n+1)))`
-/

namespace A281535.P17728629496202580335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281540 (A167614 (n + 1)).toNat)

end

end A281535.P17728629496202580335

/-! ## A281535.P16845611467450974370

`lcm((-1)^n, A281540(A152950(n+3)))`
-/

namespace A281535.P16845611467450974370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281540 (A152950 (n + 3)).toNat)

end

end A281535.P16845611467450974370

/-! ## A281535.P17219554203071226141

`A326678(n)+A281540(A167614(n+1))`
-/

namespace A281535.P17219554203071226141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A281540 (A167614 (n + 1)).toNat

end

end A281535.P17219554203071226141

/-! ## A281535.P18306605572752528023

`A326679(n)+A281540(A167614(n+1))`
-/

namespace A281535.P18306605572752528023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A281540 (A167614 (n + 1)).toNat

end

end A281535.P18306605572752528023

/-!
# A281536: Number of nX4 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281536, there is no canonical definition to state claims against.
-/

/-! ## A281536.P3448444240530282770

`A281540(A141214(n)+7)`
-/

namespace A281536.P3448444240530282770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A141214 n + 7).toNat

end

end A281536.P3448444240530282770

/-! ## A281536.P7780268030139748660

`A281540(A052905(n)+9)`
-/

namespace A281536.P7780268030139748660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A052905 n + 9).toNat

end

end A281536.P7780268030139748660

/-! ## A281536.P8818381864810393373

`A281540(A055999(n)+10)`
-/

namespace A281536.P8818381864810393373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A055999 n + 10).toNat

end

end A281536.P8818381864810393373

/-! ## A281536.P6734138446425752585

`A281540(Δ[A008778(n)]+6)`
-/

namespace A281536.P6734138446425752585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (f1 (n + 1) - f1 n + 6).toNat

end

end A281536.P6734138446425752585

/-! ## A281536.P14532344035755156025

`A281540(A167614(n+2)+1)`
-/

namespace A281536.P14532344035755156025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167614 (n + 2) + 1).toNat

end

end A281536.P14532344035755156025

/-!
# A281537: Number of nX5 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281537, there is no canonical definition to state claims against.
-/

/-! ## A281537.P11269927069012299792

`A281540(A167499(n+3))`
-/

namespace A281537.P11269927069012299792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167499 (n + 3)).toNat

end

end A281537.P11269927069012299792

/-! ## A281537.P2654291471255323357

`A281540(A155212(n)+13)`
-/

namespace A281537.P2654291471255323357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A155212 n + 13).toNat

end

end A281537.P2654291471255323357

/-! ## A281537.P4177206454918622997

`A281540(A056000(n)+15)`
-/

namespace A281537.P4177206454918622997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A056000 n + 15).toNat

end

end A281537.P4177206454918622997

/-! ## A281537.P3804464765503615000

`A281540(eq[7, A066657(n)])`
-/

namespace A281537.P3804464765503615000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281537.P3804464765503615000

/-! ## A281537.P3879739128134580924

`A281540(A000124(n+4)+4)`
-/

namespace A281537.P3879739128134580924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A000124 (n + 4) + 4).toNat

end

end A281537.P3879739128134580924

/-!
# A281538: Number of nX6 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281538, there is no canonical definition to state claims against.
-/

/-! ## A281538.P408854595924449275

`A281540(C(n+7, 2)-n)`
-/

namespace A281538.P408854595924449275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (Nat.choose (n + 7) 2 - n)

end

end A281538.P408854595924449275

/-! ## A281538.P1674393031642794481

`A281540(A056115(n)+21)`
-/

namespace A281538.P1674393031642794481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A056115 n + 21).toNat

end

end A281538.P1674393031642794481

/-! ## A281538.P2903151911833588338

`A281540(A167499(n+4)+1)`
-/

namespace A281538.P2903151911833588338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167499 (n + 4) + 1).toNat

end

end A281538.P2903151911833588338

/-! ## A281538.P15059794482622104795

`A281540(A167614(n+4)+3)`
-/

namespace A281538.P15059794482622104795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167614 (n + 4) + 3).toNat

end

end A281538.P15059794482622104795

/-! ## A281538.P14152030469045029178

`A281540(A000124(n+5)+5)`
-/

namespace A281538.P14152030469045029178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A000124 (n + 5) + 5).toNat

end

end A281538.P14152030469045029178

/-!
# A281539: Number of nX7 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281539, there is no canonical definition to state claims against.
-/

/-! ## A281539.P2620181448072703917

`A281540(A167487(n+5))`
-/

namespace A281539.P2620181448072703917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167487 (n + 5)).toNat

end

end A281539.P2620181448072703917

/-! ## A281539.P9379886763975964052

`A281540(eq[11, A066657(n)])`
-/

namespace A281539.P9379886763975964052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281539.P9379886763975964052

/-! ## A281539.P1946134691251216336

`A281540(A167499(n+5)+2)`
-/

namespace A281539.P1946134691251216336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167499 (n + 5) + 2).toNat

end

end A281539.P1946134691251216336

/-! ## A281539.P7056678907859483297

`A281540(A167614(n+5)+4)`
-/

namespace A281539.P7056678907859483297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A167614 (n + 5) + 4).toNat

end

end A281539.P7056678907859483297

/-! ## A281539.P2412294219343650882

`A281540(A000124(n+6)+6)`
-/

namespace A281539.P2412294219343650882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A000124 (n + 6) + 6).toNat

end

end A281539.P2412294219343650882

/-!
# A281541: Expansion of Sum_{i>=1} x^(i^2)/(1 - x^(i^2)) / Product_{j>=1} (1 - x^(j^2)).

The programs for A281541, there is no canonical definition to state claims against.
-/

/-! ## A281541.P17140363156270729506

`∑[A000120(A150009(A034888(n)))]`
-/

namespace A281541.P17140363156270729506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A150009 (A034888 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281541.P17140363156270729506

/-! ## A281541.P14831290945047287841

`∑[A000120(A150009(A065033(n)))]`
-/

namespace A281541.P14831290945047287841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A150009 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281541.P14831290945047287841

/-! ## A281541.P164769131871546638

`∑[A000120(A208101(A052905(n)))]`
-/

namespace A281541.P164769131871546638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A208101 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281541.P164769131871546638

/-! ## A281541.P16207118421640170952

`∑[A348674(A055099(A110654(n)))]`
-/

namespace A281541.P16207118421640170952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (A055099 (A110654 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281541.P16207118421640170952

/-! ## A281541.P3120397426919105681

`∑[A114206(A323505(A208355(n)))]`
-/

namespace A281541.P3120397426919105681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114206 (A323505 (A208355 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281541.P3120397426919105681

/-!
# A281542: Expansion of Sum_{i>=1} x^(i^2)/(1 + x^(i^2)) * Product_{j>=1} (1 + x^(j^2)).

The programs for A281542, there is no canonical definition to state claims against.
-/

/-! ## A281542.P12718289055886686862

`A032741(A279360(n+1))%A225729(2*n+3)`
-/

namespace A281542.P12718289055886686862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A279360 (n + 1)).toNat) (A225729 (2 * n + 3))

end

end A281542.P12718289055886686862

/-! ## A281542.P3870149284753579573

`A294186(A279368(n+1)+1)`
-/

namespace A281542.P3870149284753579573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (A279368 (n + 1) + 1).toNat

end

end A281542.P3870149284753579573

/-! ## A281542.P11376812755410917329

`A055091(round(sinh(A331844(n+1))))`
-/

namespace A281542.P11376812755410917329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway (Real.sinh (A331844 (n + 1) : ℝ))).toNat

end

end A281542.P11376812755410917329

/-! ## A281542.P11679030853431291653

`A248509(n+1)*A333254(A074789(n+1))`
-/

namespace A281542.P11679030853431291653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248509 (n + 1) * A333254 (A074789 (n + 1)).toNat

end

end A281542.P11679030853431291653

/-! ## A281542.P7167283454364431617

`A248509(n+1)%A352539(A007607(n+1))`
-/

namespace A281542.P7167283454364431617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248509 (n + 1)) (A352539 (A007607 (n + 1)).toNat)

end

end A281542.P7167283454364431617

/-!
# A281543: Number of partitions n = x + y with y >= x > 0 such that x^2 + y^2 or (x^2 + y^2)/2 is prime.

The programs for A281543, there is no canonical definition to state claims against.
-/

/-! ## A281543.P17644856174426200275

`A001221(or(A051049(n), A058213(n)))`
-/

namespace A281543.P17644856174426200275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A051049 n) (A058213 n)).toNat

end

end A281543.P17644856174426200275

/-! ## A281543.P4752324148240217869

`A231719(n*(2*n-1)*A304083(3*n+4))`
-/

namespace A281543.P4752324148240217869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 ((n : ℤ) * ((2 * n : ℤ) - 1) * A304083 (3 * n + 4)).toNat

end

end A281543.P4752324148240217869

/-! ## A281543.P2606843670019792308

`A001221(or(A117980(n), A288804(n)))`
-/

namespace A281543.P2606843670019792308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A117980 n) (A288804 n)).toNat

end

end A281543.P2606843670019792308

/-! ## A281543.P397043203840603937

`A001221(xor(A269919(n), A340298(n)))`
-/

namespace A281543.P397043203840603937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A269919 n) (A340298 n)).toNat

end

end A281543.P397043203840603937

/-! ## A281543.P5292349315022356414

`A001221(or(A074941(n+1), A288804(n)))`
-/

namespace A281543.P5292349315022356414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A074941 (n + 1)) (A288804 n)).toNat

end

end A281543.P5292349315022356414

/-!
# A281545: Expansion of Sum_{k>=2} x^prime(k)/(1 + x^prime(k)) * Product_{k>=2} (1 + x^prime(k)).

The programs for A281545, there is no canonical definition to state claims against.
-/

/-! ## A281545.P12859410791991340997

`A065331(n+1)%A000120(A215004(n))`
-/

namespace A281545.P12859410791991340997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065331 (n + 1)) (A000120 (A215004 n).toNat)

end

end A281545.P12859410791991340997

/-! ## A281545.P5775391125565416502

`xor(n, A257527(2*(n+2)))%∏{e}[n+1, #+1]`
-/

namespace A281545.P5775391125565416502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A257527 (2 * (n + 2)))) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A281545.P5775391125565416502

/-! ## A281545.P4743631533877671239

`∑[A088262(3*n+2)]%A000005(n+1)`
-/

namespace A281545.P4743631533877671239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000005 (n + 1))

end

end A281545.P4743631533877671239

/-! ## A281545.P17764298116330186409

`abs(A369358(2*(n+2))-n)%A000005(n+1)`
-/

namespace A281545.P17764298116330186409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A369358 (2 * (n + 2)) - (n : ℤ)| (A000005 (n + 1))

end

end A281545.P17764298116330186409

/-! ## A281545.P489997820370659296

`A028310(A038754(n))%A060741(n+1)`
-/

namespace A281545.P489997820370659296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A038754 n).toNat) (A060741 (n + 1))

end

end A281545.P489997820370659296

/-!
# A281546: a(n) = 27*n + 2.

The programs for A281546, the canonical program `A281546.P13079150482357616982` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281546 has offset 0).

The definition of A281546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n+2` (program `A281546.P13079150482357616982`, by `A281546.P13079150482357616982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281546.P13079150482357616982

`27*n+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281546

/-- `27*n+2` -/
def P13079150482357616982.Spec : Prop :=
  ∀ n, (P13079150482357616982.a n : ℤ) = A281546 n

theorem P13079150482357616982.correct : P13079150482357616982.Spec := by
  intro n
  simp only [A281546]

end A281546

/-!
# A281547: Total number of subsets of X that are both open and closed summed over all distinct topological spaces X that can be placed on an n-set.

The programs for A281547, there is no canonical definition to state claims against.
-/

/-! ## A281547.P16962780333817966676

`A086391(A001515(n))-1`
-/

namespace A281547.P16962780333817966676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (A001515 n).toNat - 1

end

end A281547.P16962780333817966676

/-!
# A281548: Number of distinct monomials in the expansion of Product_{i=1..n} (y_1+...+y_i+x_i+x_{i+1}).

The programs for A281548, there is no canonical definition to state claims against.
-/

/-! ## A281548.P2625794039618662244

`record[Δ[A178798(n)-A111373(3*n)]]`
-/

namespace A281548.P2625794039618662244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n - A111373 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281548.P2625794039618662244

/-! ## A281548.P1337641574868838334

`A025480(A055842(n)+A038577(n))`
-/

namespace A281548.P1337641574868838334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055842 n + A038577 n).toNat

end

end A281548.P1337641574868838334

/-!
# A281550: Number of 2 X 2 matrices with all elements in 0..n such that the sum of the elements is prime.

The programs for A281550, there is no canonical definition to state claims against.
-/

/-! ## A281550.P16113501267801569133

`xor((n*(n*(n-5)+5)²)!, A299288(n))`
-/

namespace A281550.P16113501267801569133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat : ℤ) (A299288 n)

end

end A281550.P16113501267801569133

/-!
# A281551: Prime numbers p such that the decimal representation of its Elias gamma code is also a prime.

The programs for A281551, there is no canonical definition to state claims against.
-/

/-! ## A281551.P7213031982023999652

`p?[3*n-A025911(n)^n]`
-/

namespace A281551.P7213031982023999652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A025911 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281551.P7213031982023999652

/-!
# A281552: Write n in the Elias gamma code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

The programs for A281552, the canonical program `A281552.P11677412151710128902` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281552 has offset 1).

The definition of A281552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A171885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281552.P11677412151710128902

`A049501(A171885(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A281552

/-- `A049501(A171885(n+1))` -/
def P11677412151710128902.Spec : Prop :=
  ∀ n, P11677412151710128902.a n = A281552 (n + 1)

theorem P11677412151710128902.correct : P11677412151710128902.Spec := by
  intro n
  simp only [A281552, Nat.add_sub_cancel]

end A281552

/-! ## A281552.P8380096740874675424

`A049501(record[A171885(∑[(-1)^(n%3)])])`
-/

namespace A281552.P8380096740874675424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171885 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281552.P8380096740874675424

namespace A281552

/-- `A049501(record[A171885(∑[(-1)^(n%3)])])` -/
def P8380096740874675424.Spec : Prop :=
  ∀ n, P8380096740874675424.a n = A281552 (n + 1)

end A281552

/-!
# A281553: Write n in binary reflected Gray code, rotate one binary place to the right and convert the code back to decimal.

The programs for A281553, the canonical program `A281553.P903484465477514888` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281553 has offset 0).

The definition of A281553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281553.P903484465477514888

`A038572(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A281553

/-- `A038572(xor(n, floor(n/2)))` -/
def P903484465477514888.Spec : Prop :=
  ∀ n, P903484465477514888.a n = A281553 n

theorem P903484465477514888.correct : P903484465477514888.Spec := by
  intro n
  simp only [A281553]

end A281553

/-! ## A281553.P17534298542673556026

`A038572(and(2*n, -n)-ceil(n/2))`
-/

namespace A281553.P17534298542673556026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉).toNat

end

end A281553.P17534298542673556026

namespace A281553

/-- `A038572(and(2*n, -n)-ceil(n/2))` -/
def P17534298542673556026.Spec : Prop :=
  ∀ n, P17534298542673556026.a n = A281553 n

end A281553

/-! ## A281553.P1111214014145370851

`A038572(A003188(n))`
-/

namespace A281553.P1111214014145370851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A003188 n).toNat

end

end A281553.P1111214014145370851

namespace A281553

/-- `A038572(A003188(n))` -/
def P1111214014145370851.Spec : Prop :=
  ∀ n, P1111214014145370851.a n = A281553 n

end A281553

/-! ## A281553.P4551383003212719357

`A038572(A286548(n)+n)`
-/

namespace A281553.P4551383003212719357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A286548 n + (n : ℤ)).toNat

end

end A281553.P4551383003212719357

namespace A281553

/-- `A038572(A286548(n)+n)` -/
def P4551383003212719357.Spec : Prop :=
  ∀ n, P4551383003212719357.a n = A281553 n

end A281553

/-! ## A281553.P4572774939956089319

`A038572(floor(A048726(n)/4))`
-/

namespace A281553.P4572774939956089319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ⌊(A048726 n : ℚ) / 4⌋.toNat

end

end A281553.P4572774939956089319

namespace A281553

/-- `A038572(floor(A048726(n)/4))` -/
def P4572774939956089319.Spec : Prop :=
  ∀ n, P4572774939956089319.a n = A281553 n

end A281553

/-! ## A281553.P12890289938268580603

`A038572(xor(n, A014601(n))/2)`
-/

namespace A281553.P12890289938268580603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (A014601 n) : ℚ) / 2)).toNat

end

end A281553.P12890289938268580603

namespace A281553

/-- `A038572(xor(n, A014601(n))/2)` -/
def P12890289938268580603.Spec : Prop :=
  ∀ n, P12890289938268580603.a n = A281553 n

end A281553

/-! ## A281553.P2415822790755928120

`A038572(floor(A213064(n)-n/2))`
-/

namespace A281553.P2415822790755928120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ⌊(A213064 n : ℚ) - (n : ℚ) / 2⌋.toNat

end

end A281553.P2415822790755928120

namespace A281553

/-- `A038572(floor(A213064(n)-n/2))` -/
def P2415822790755928120.Spec : Prop :=
  ∀ n, P2415822790755928120.a n = A281553 n

end A281553

/-! ## A281553.P1852311429607230255

`A038572(A053644(n)+A038554(n))`
-/

namespace A281553.P1852311429607230255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A053644 n + A038554 n).toNat

end

end A281553.P1852311429607230255

namespace A281553

/-- `A038572(A053644(n)+A038554(n))` -/
def P1852311429607230255.Spec : Prop :=
  ∀ n, P1852311429607230255.a n = A281553 n

end A281553

/-! ## A281553.P1374485233165223776

`A038572(A229763(n)+A004526(n))`
-/

namespace A281553.P1374485233165223776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A229763 n + A004526 n).toNat

end

end A281553.P1374485233165223776

namespace A281553

/-- `A038572(A229763(n)+A004526(n))` -/
def P1374485233165223776.Spec : Prop :=
  ∀ n, P1374485233165223776.a n = A281553 n

end A281553

/-! ## A281553.P6182292992557893752

`A038572(A269170(n)-A048735(n))`
-/

namespace A281553.P6182292992557893752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A269170 n - A048735 n).toNat

end

end A281553.P6182292992557893752

namespace A281553

/-- `A038572(A269170(n)-A048735(n))` -/
def P6182292992557893752.Spec : Prop :=
  ∀ n, P6182292992557893752.a n = A281553 n

end A281553

/-! ## A281553.P15703993358417387962

`A038572(or(A038554(n), A053644(n)))`
-/

namespace A281553.P15703993358417387962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lor (A038554 n) (A053644 n)).toNat

end

end A281553.P15703993358417387962

namespace A281553

/-- `A038572(or(A038554(n), A053644(n)))` -/
def P15703993358417387962.Spec : Prop :=
  ∀ n, P15703993358417387962.a n = A281553 n

end A281553

/-!
# A281556: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281556, there is no canonical definition to state claims against.
-/

/-! ## A281556.P7574398076611485879

`A281563(∑[4*n]+1)`
-/

namespace A281556.P7574398076611485879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281556.P7574398076611485879

/-! ## A281556.P15512023030472686165

`A281563(A001844(n))+char[12]`
-/

namespace A281556.P15512023030472686165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281556.P15512023030472686165

/-! ## A281556.P9867709318920060732

`A057427(n)*A281563(A001844(n))`
-/

namespace A281556.P9867709318920060732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281563 (A001844 n).toNat

end

end A281556.P9867709318920060732

/-! ## A281556.P12267785956091671030

`A007318(∑[n])*A281563(A001844(n))`
-/

namespace A281556.P12267785956091671030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A281563 (A001844 n).toNat

end

end A281556.P12267785956091671030

/-! ## A281556.P4490731296058797139

`A071625(n+1)*A281563(A001844(n))`
-/

namespace A281556.P4490731296058797139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A281563 (A001844 n).toNat

end

end A281556.P4490731296058797139

/-!
# A281557: Number of nX2 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281557, there is no canonical definition to state claims against.
-/

/-! ## A281557.P4895303820968862115

`A281563(∑[n+2])`
-/

namespace A281557.P4895303820968862115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281557.P4895303820968862115

/-! ## A281557.P17354232553050626240

`A281563(A000096(n+1))+char[24]`
-/

namespace A281557.P17354232553050626240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281557.P17354232553050626240

/-! ## A281557.P13385857268684651752

`A281563(A000096(n+1))%A000108(n+3)`
-/

namespace A281557.P13385857268684651752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281563 (A000096 (n + 1)).toNat) (A000108 (n + 3))

end

end A281557.P13385857268684651752

/-! ## A281557.P8769703495470671909

`A007318(C(2, n))*A281563(A000096(n+1))`
-/

namespace A281557.P8769703495470671909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281563 (A000096 (n + 1)).toNat

end

end A281557.P8769703495470671909

/-! ## A281557.P16875995728867614592

`A281563(A000096(n+1))/A007318(C(3, n))`
-/

namespace A281557.P16875995728867614592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281563 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A281557.P16875995728867614592

/-!
# A281558: Number of nX3 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281558, there is no canonical definition to state claims against.
-/

/-! ## A281558.P6408921501392828244

`A281563(∑[n+3]+1)`
-/

namespace A281558.P6408921501392828244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281558.P6408921501392828244

/-! ## A281558.P14495892554734863356

`record[A281563(A186349(n+1))]`
-/

namespace A281558.P14495892554734863356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A186349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281558.P14495892554734863356

/-! ## A281558.P1668761919274399659

`record[A281563(A347633(n+1))]`
-/

namespace A281558.P1668761919274399659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281558.P1668761919274399659

/-! ## A281558.P15700722130359565723

`record[A281563(A128373(n+2))]`
-/

namespace A281558.P15700722130359565723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281558.P15700722130359565723

/-! ## A281558.P16502567293375098390

`A281563(A052905(n)+3)+char[19]`
-/

namespace A281558.P16502567293375098390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281558.P16502567293375098390

/-!
# A281559: Number of nX4 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281559, there is no canonical definition to state claims against.
-/

/-! ## A281559.P9008911013753548289

`A281563(∑[n+4]+3)`
-/

namespace A281559.P9008911013753548289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281559.P9008911013753548289

/-! ## A281559.P2781353220747133286

`record[A281563(A019304(n))]`
-/

namespace A281559.P2781353220747133286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281559.P2781353220747133286

/-! ## A281559.P14002953131156061053

`record[A281563(A128373(n+2)-1)]`
-/

namespace A281559.P14002953131156061053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A128373 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281559.P14002953131156061053

/-! ## A281559.P13849146284736057734

`A281563(Δ[A006503(n+1)])+char[21]`
-/

namespace A281559.P13849146284736057734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281559.P13849146284736057734

/-! ## A281559.P4440666238272941586

`record[A010054(n+4)*A281563(n+1)]`
-/

namespace A281559.P4440666238272941586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A281563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281559.P4440666238272941586

/-!
# A281560: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281560, there is no canonical definition to state claims against.
-/

/-! ## A281560.P14161032299512616436

`A281563(Δ[A264443(n)])`
-/

namespace A281560.P14161032299512616436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (f1 (n + 1) - f1 n).toNat

end

end A281560.P14161032299512616436

/-! ## A281560.P15942260137057148349

`A281563(A046691(n+3))`
-/

namespace A281560.P15942260137057148349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A046691 (n + 3)).toNat

end

end A281560.P15942260137057148349

/-! ## A281560.P17817868824920226116

`A281563(A056115(n)+11)`
-/

namespace A281560.P17817868824920226116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A056115 n + 11).toNat

end

end A281560.P17817868824920226116

/-! ## A281560.P13368499469793580549

`A281563(eq[2, A092921(n)])`
-/

namespace A281560.P13368499469793580549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281560.P13368499469793580549

/-! ## A281560.P3204633491615058646

`A281563(eq[3, A152157(n)])`
-/

namespace A281560.P3204633491615058646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281560.P3204633491615058646

/-!
# A281561: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281561, there is no canonical definition to state claims against.
-/

/-! ## A281561.P11868827665799470079

`A281563(∑[n+6]+10)`
-/

namespace A281561.P11868827665799470079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A281561.P11868827665799470079

/-! ## A281561.P14452389511337474804

`A281563(A052905(n+3))+char[20]`
-/

namespace A281561.P14452389511337474804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A052905 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281561.P14452389511337474804

/-! ## A281561.P9643687439765030060

`record[A281563(A019304(2*n+1)-2)]`
-/

namespace A281561.P9643687439765030060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A019304 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281561.P9643687439765030060

/-! ## A281561.P9525788513514954252

`record[A129186(n+4)*A281563(n+1)]`
-/

namespace A281561.P9525788513514954252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 4) * A281563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281561.P9525788513514954252

/-! ## A281561.P17659508009622346222

`lcm(A001221(n+1), A281563(A052905(n+3)))`
-/

namespace A281561.P17659508009622346222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A281563 (A052905 (n + 3)).toNat)

end

end A281561.P17659508009622346222

/-!
# A281562: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281562, there is no canonical definition to state claims against.
-/

/-! ## A281562.P5809889561886932402

`A281563(A055999(n+4))`
-/

namespace A281562.P5809889561886932402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A055999 (n + 4)).toNat

end

end A281562.P5809889561886932402

/-! ## A281562.P4964002944532321259

`A281563(eq[4, A219347(n)])`
-/

namespace A281562.P4964002944532321259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281562.P4964002944532321259

/-! ## A281562.P18369089726459269100

`A281563(eq[6, A193592(n)])`
-/

namespace A281562.P18369089726459269100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281562.P18369089726459269100

/-! ## A281562.P16488123618142692419

`A281563(eq[7, A152157(n)])`
-/

namespace A281562.P16488123618142692419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281562.P16488123618142692419

/-! ## A281562.P3918538067097801241

`A281563(Δ[A023551(n+2)])`
-/

namespace A281562.P3918538067097801241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (f1 (n + 1) - f1 n).toNat

end

end A281562.P3918538067097801241

/-!
# A281563: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281563, there is no canonical definition to state claims against.
-/

/-! ## A281563.P13778073176561834381

`A038457(A055796(n))*A283232(n+1)`
-/

namespace A281563.P13778073176561834381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038457 (A055796 n).toNat * A283232 (n + 1)

end

end A281563.P13778073176561834381

/-! ## A281563.P13535752175099262185

`A054925(A137390(n+1)%A001263(n+1))`
-/

namespace A281563.P13535752175099262185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (Int.tmod (A137390 (n + 1)) (A001263 (n + 1))).toNat

end

end A281563.P13535752175099262185

/-! ## A281563.P12769507861049957901

`and(A098356(A098376(n)), A098404(3*n+5))`
-/

namespace A281563.P12769507861049957901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098356 (A098376 n).toNat) (A098404 (3 * n + 5))

end

end A281563.P12769507861049957901

/-! ## A281563.P3659882107336771160

`(A009963(n)-A057037(n+1))%A154986(A004918(n+1))`
-/

namespace A281563.P3659882107336771160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009963 n - A057037 (n + 1)) (A154986 (A004918 (n + 1)).toNat)

end

end A281563.P3659882107336771160

/-!
# A281564: Number of 2Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281564, there is no canonical definition to state claims against.
-/

/-! ## A281564.P6431779170624738207

`A281563(∑[n+1]+2)`
-/

namespace A281564.P6431779170624738207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281564.P6431779170624738207

/-! ## A281564.P7500410447379914624

`A281563(A238531(n+2))%A034513(n)`
-/

namespace A281564.P7500410447379914624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281563 (A238531 (n + 2)).toNat) (A034513 n)

end

end A281564.P7500410447379914624

/-!
# A281565: Number of 3Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281565, there is no canonical definition to state claims against.
-/

/-! ## A281565.P2370043128796899818

`A281563(∑[n+2]+4)`
-/

namespace A281565.P2370043128796899818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281565.P2370043128796899818

/-! ## A281565.P2807792905191676826

`record[A281563(A128373(n+2)+2)]`
-/

namespace A281565.P2807792905191676826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A128373 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281565.P2807792905191676826

/-! ## A281565.P4736948563696812704

`A281563(A167614(n+1))+char[20]`
-/

namespace A281565.P4736948563696812704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281565.P4736948563696812704

/-! ## A281565.P8150713483903620275

`A281563(A000217(n+2)+3)+char[38]`
-/

namespace A281565.P8150713483903620275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281565.P8150713483903620275

/-! ## A281565.P14087243830378068842

`A057427(n)*A281563(A167614(n+1))`
-/

namespace A281565.P14087243830378068842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281563 (A167614 (n + 1)).toNat

end

end A281565.P14087243830378068842

/-!
# A281566: Number of 4Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281566, there is no canonical definition to state claims against.
-/

/-! ## A281566.P12830003162549386038

`A281563(∑[n+3]+7)`
-/

namespace A281566.P12830003162549386038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281566.P12830003162549386038

/-! ## A281566.P1951609623290066688

`A281563(A055999(n)+10)+char[23]`
-/

namespace A281566.P1951609623290066688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281566.P1951609623290066688

/-! ## A281566.P916033007698082991

`record[A010054(n)*A281563(n+4)]`
-/

namespace A281566.P916033007698082991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281563 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281566.P916033007698082991

/-! ## A281566.P16163041085012971536

`A281563(Δ[A006503(n)]+7)+char[20]`
-/

namespace A281566.P16163041085012971536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (f1 (n + 1) - f1 n + 7).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281566.P16163041085012971536

/-! ## A281566.P1136439778799206784

`gcd(2, A000040(n+1))*A281563(A055999(n)+10)`
-/

namespace A281566.P1136439778799206784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A281563 (A055999 n + 10).toNat

end

end A281566.P1136439778799206784

/-!
# A281567: Number of 5Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281567, there is no canonical definition to state claims against.
-/

/-! ## A281567.P9208772293127912079

`A281563(A167499(n+3))`
-/

namespace A281567.P9208772293127912079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A167499 (n + 3)).toNat

end

end A281567.P9208772293127912079

/-! ## A281567.P8906965014125554279

`A281563(A155212(n)+13)`
-/

namespace A281567.P8906965014125554279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A155212 n + 13).toNat

end

end A281567.P8906965014125554279

/-! ## A281567.P4450780433365494587

`A281563(A056000(n)+15)`
-/

namespace A281567.P4450780433365494587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A056000 n + 15).toNat

end

end A281567.P4450780433365494587

/-! ## A281567.P10349276495814885148

`A281563(eq[7, A066657(n)])`
-/

namespace A281567.P10349276495814885148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281567.P10349276495814885148

/-! ## A281567.P7110835052193013503

`A281563(A167614(n+3)+2)`
-/

namespace A281567.P7110835052193013503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A167614 (n + 3) + 2).toNat

end

end A281567.P7110835052193013503

/-!
# A281568: Number of 6Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281568, there is no canonical definition to state claims against.
-/

/-! ## A281568.P1406489266808988334

`A281563(A166136(n+4))`
-/

namespace A281568.P1406489266808988334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A166136 (n + 4)).toNat

end

end A281568.P1406489266808988334

/-! ## A281568.P6237474988579690159

`A281563(eq[6, A256910(n)])`
-/

namespace A281568.P6237474988579690159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281568.P6237474988579690159

/-! ## A281568.P1647378313661885018

`A281563(Δ[A264443(n)]+10)`
-/

namespace A281568.P1647378313661885018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (f1 (n + 1) - f1 n + 10).toNat

end

end A281568.P1647378313661885018

/-! ## A281568.P16555049696842427981

`A281563(A167614(n+4)+3)`
-/

namespace A281568.P16555049696842427981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A167614 (n + 4) + 3).toNat

end

end A281568.P16555049696842427981

/-! ## A281568.P4287744676609370522

`A281563(A133263(n+5)+4)`
-/

namespace A281568.P4287744676609370522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A133263 (n + 5) + 4).toNat

end

end A281568.P4287744676609370522

/-!
# A281569: Number of 7Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281569, there is no canonical definition to state claims against.
-/

/-! ## A281569.P18132551686483483743

`A281563(A056119(n)+28)`
-/

namespace A281569.P18132551686483483743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A056119 n + 28).toNat

end

end A281569.P18132551686483483743

/-! ## A281569.P3542246255224260076

`A281563(eq[11, A066657(n)])`
-/

namespace A281569.P3542246255224260076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281569.P3542246255224260076

/-! ## A281569.P11281152301808656280

`A281563(A167499(n+5)+2)`
-/

namespace A281569.P11281152301808656280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A167499 (n + 5) + 2).toNat

end

end A281569.P11281152301808656280

/-! ## A281569.P4186160704091229054

`A281563(A000124(n+6)+6)`
-/

namespace A281569.P4186160704091229054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A000124 (n + 6) + 6).toNat

end

end A281569.P4186160704091229054

/-! ## A281569.P15191376128520468167

`A281563(A000096(n+5)+8)`
-/

namespace A281569.P15191376128520468167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281563 (A000096 (n + 5) + 8).toNat

end

end A281569.P15191376128520468167

/-!
# A281571: Smallest k such that (the base-2 number formed by concatenating k consecutive base-2 numbers starting at n) is prime, or 0 if no such k exists.

The programs for A281571, there is no canonical definition to state claims against.
-/

/-! ## A281571.P14258092508442933670

`gcd(A017665(A195991(n+1)), A342624(n+1))`
-/

namespace A281571.P14258092508442933670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (A195991 (n + 1)).toNat) (A342624 (n + 1))

end

end A281571.P14258092508442933670

/-!
# A281572: Expansion of Sum_{i>=1} mu(i)^2*x^i/(1 - x^i) / Product_{j>=1} (1 - mu(j)^2*x^j), where mu() is the Moebius function (A008683).

The programs for A281572, there is no canonical definition to state claims against.
-/

/-! ## A281572.P18196077576230107561

`∑[A000607(2*n+3)]+record[A365383(n)]-(n+1)`
-/

namespace A281572.P18196077576230107561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℤ))

end

end A281572.P18196077576230107561

/-! ## A281572.P6411036667006768854

`∑[∑[A232244(A020100(n))]]`
-/

namespace A281572.P6411036667006768854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232244 (A020100 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281572.P6411036667006768854

/-! ## A281572.P14331233951224567635

`∑[A056556(∑[A204270(n+1)])]`
-/

namespace A281572.P14331233951224567635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281572.P14331233951224567635

/-! ## A281572.P7739303309123733747

`A137735(∑[A226622(3*n+1)])`
-/

namespace A281572.P7739303309123733747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226622 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281572.P7739303309123733747

/-! ## A281572.P4958814279646326192

`A000196(∑[record[A022597(3*n+2)]])`
-/

namespace A281572.P4958814279646326192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281572.P4958814279646326192

/-!
# A281573: Expansion of Sum_{i>=1} mu(i)^2*x^i/(1 - x^i) / Product_{j>=1} (1 - x^j), where mu() is the Moebius function (A008683).

The programs for A281573, there is no canonical definition to state claims against.
-/

/-! ## A281573.P3945913680243901572

`A005408(A037032(n+1))+A000065(n)`
-/

namespace A281573.P3945913680243901572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A037032 (n + 1)).toNat + A000065 n

end

end A281573.P3945913680243901572

/-! ## A281573.P17526484797071769210

`A005843(A037032(n+1))+A000041(n)`
-/

namespace A281573.P17526484797071769210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A037032 (n + 1)).toNat + A000041 n

end

end A281573.P17526484797071769210

/-! ## A281573.P10541729439731571371

`A213598(n)+A005843(A037032(n+1))`
-/

namespace A281573.P10541729439731571371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n + A005843 (A037032 (n + 1)).toNat

end

end A281573.P10541729439731571371

/-! ## A281573.P7963823967829606366

`A005843(A037032(n+1))+∑[A002865(n)]`
-/

namespace A281573.P7963823967829606366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A037032 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281573.P7963823967829606366

/-! ## A281573.P2253945133541927707

`A035363(2*n)+A005843(A037032(n+1))`
-/

namespace A281573.P2253945133541927707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + A005843 (A037032 (n + 1)).toNat

end

end A281573.P2253945133541927707

/-!
# A281574: Number of geometric lattices on n nodes.

The programs for A281574, there is no canonical definition to state claims against.
-/

/-! ## A281574.P10324208539423975901

`or(A117408(A002865(n+2)), A147786(n+1))`
-/

namespace A281574.P10324208539423975901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117408 (A002865 (n + 2)).toNat) (A147786 (n + 1))

end

end A281574.P10324208539423975901

/-! ## A281574.P16154905205727088902

`A396196(A133993(n))`
-/

namespace A281574.P16154905205727088902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396196 (A133993 n).toNat

end

end A281574.P16154905205727088902

/-! ## A281574.P16848603212351799368

`A303975(A296122(n)+2)`
-/

namespace A281574.P16848603212351799368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A296122 n + 2).toNat

end

end A281574.P16848603212351799368

/-! ## A281574.P10701569948305382836

`A303975(A003199(n)+8)`
-/

namespace A281574.P10701569948305382836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A003199 n + 8).toNat

end

end A281574.P10701569948305382836

/-! ## A281574.P9132845961644881830

`A224782(A031140(n+1)+2)`
-/

namespace A281574.P9132845961644881830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A031140 (n + 1) + 2).toNat

end

end A281574.P9132845961644881830

/-!
# A281575: Numbers k such that (d^2 + (k/d)^2)/2 is prime for all divisors d of k.

The programs for A281575, there is no canonical definition to state claims against.
-/

/-! ## A281575.P12333176214085996422

`∩[A002731(n+1), A348748(n+1)]`
-/

namespace A281575.P12333176214085996422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281575.P12333176214085996422

/-! ## A281575.P8331361032216296850

`∩[A085722(n+1), A348748(n+1)]`
-/

namespace A281575.P8331361032216296850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281575.P8331361032216296850

/-! ## A281575.P12795225346193183911

`∩[A333635(n+1), A348748(n+1)]`
-/

namespace A281575.P12795225346193183911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281575.P12795225346193183911

/-! ## A281575.P6008329513601444231

`∩[A348748(n+1), A385821(n+1)]`
-/

namespace A281575.P6008329513601444231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281575.P6008329513601444231

/-! ## A281575.P4091634750330103874

`∩[A002731(n+1), A368100(n+1)]`
-/

namespace A281575.P4091634750330103874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281575.P4091634750330103874

/-!
# A281578: Maximum number of nonisomorphic root-containing subtrees of a rooted tree of order n.

The programs for A281578, there is no canonical definition to state claims against.
-/

/-! ## A281578.P8772801888335597179

`A322901(A052955(n))`
-/

namespace A281578.P8772801888335597179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A052955 n).toNat

end

end A281578.P8772801888335597179

/-! ## A281578.P7703355688069904312

`A322901(eq[1, A238845(n)])`
-/

namespace A281578.P7703355688069904312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281578.P7703355688069904312

/-! ## A281578.P11296755894100841298

`A322901(∑[A158780(n+1)])`
-/

namespace A281578.P11296755894100841298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281578.P11296755894100841298

/-! ## A281578.P9539924440975076062

`A322901(A164090(n+1)-1)`
-/

namespace A281578.P9539924440975076062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A164090 (n + 1) - 1).toNat

end

end A281578.P9539924440975076062

/-! ## A281578.P13362097232143948625

`A322901(A209722(n+1)-3)`
-/

namespace A281578.P13362097232143948625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A209722 (n + 1) - 3).toNat

end

end A281578.P13362097232143948625

/-!
# A281579: Lexicographically earliest sequence such that, for any n>0, a(n)=length of the n-th run of consecutive terms in arithmetic progression in this sequence.

The programs for A281579, there is no canonical definition to state claims against.
-/

/-! ## A281579.P3711234603071857962

`A380317(n+1)+1`
-/

namespace A281579.P3711234603071857962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380317 (n + 1) + 1

end

end A281579.P3711234603071857962

/-! ## A281579.P1096179816168672942

`Δ[A281783(n+1)]+1`
-/

namespace A281579.P1096179816168672942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A281579.P1096179816168672942

/-! ## A281579.P14985073873569696087

`A020725(Δ[A281783(n+1)])`
-/

namespace A281579.P14985073873569696087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat

end

end A281579.P14985073873569696087

/-! ## A281579.P10102847305115187222

`A031285(Δ[A281783(n+1)])`
-/

namespace A281579.P10102847305115187222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (f1 (n + 1) - f1 n).toNat

end

end A281579.P10102847305115187222

/-! ## A281579.P2624089244113137974

`A281783(n+2)+1-A281783(n+1)`
-/

namespace A281579.P2624089244113137974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 2) + (1 - A281783 (n + 1))

end

end A281579.P2624089244113137974

/-! ## A281579.P9053939181628805226

`A031285(A281783(n+2)-A281783(n+1))`
-/

namespace A281579.P9053939181628805226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A281783 (n + 2) - A281783 (n + 1)).toNat

end

end A281579.P9053939181628805226

/-!
# A281580: a(n) = binomial(9*n, n-9).

The programs for A281580, the canonical program `A281580.P5925016849393385898` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281580 has offset 9).

The definition of A281580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(9*(n+9), n)` (program `A281580.P5925016849393385898`, by `A281580.P5925016849393385898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281580.P5925016849393385898

`C(9*(n+9), n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281580

/-- `C(9*(n+9), n)` -/
def P5925016849393385898.Spec : Prop :=
  ∀ n, (P5925016849393385898.a n : ℤ) = A281580 (n + 9)

theorem P5925016849393385898.correct : P5925016849393385898.Spec := by
  intro n
  simp only [A281580, Nat.add_sub_cancel]

end A281580

/-! ## A281580.P245024615054559804

`record[C(n%10*floor(n/10), n-2*floor(n/10))]`
-/

namespace A281580.P245024615054559804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n % 10 : ℕ) : ℤ) * ⌊(n : ℚ) / 10⌋).toNat ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281580.P245024615054559804

namespace A281580

/-- `record[C(n%10*floor(n/10), n-2*floor(n/10))]` -/
def P245024615054559804.Spec : Prop :=
  ∀ n, (P245024615054559804.a n : ℤ) = A281580 (n + 9)

end A281580

/-!
# A281581: a(n) = (15*2^(2*n+2) + 15*2^(n+2) + 5*2^(n+3)*3^(n+1) - 24*5^(n+1))/120.

The programs for A281581, the canonical program `A281581.P14836288139209009651` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281581 has offset 0).

The definition of A281581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281581.P14836288139209009651

`6^n+2^(n-1)-5^n+4^n/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281581

/-- `6^n+2^(n-1)-5^n+4^n/2` -/
def P14836288139209009651.Spec : Prop :=
  ∀ n, P14836288139209009651.a n = (A281581 n : ℚ)

end A281581

/-! ## A281581.P856470866916056257

`record[A283272(A167499(n))]`
-/

namespace A281581.P856470866916056257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281581.P856470866916056257

namespace A281581

/-- `record[A283272(A167499(n))]` -/
def P856470866916056257.Spec : Prop :=
  ∀ n, P856470866916056257.a n = A281581 n

end A281581

/-! ## A281581.P8514690883618854152

`record[A283272(A167614(n+1)-n)]`
-/

namespace A281581.P8514690883618854152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A167614 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281581.P8514690883618854152

namespace A281581

/-- `record[A283272(A167614(n+1)-n)]` -/
def P8514690883618854152.Spec : Prop :=
  ∀ n, P8514690883618854152.a n = A281581 n

end A281581

/-! ## A281581.P15310465203795546724

`record[A283272(n+6)/A144048(n+2)]`
-/

namespace A281581.P15310465203795546724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283272 (n + 6) : ℚ) / (A144048 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281581.P15310465203795546724

namespace A281581

/-- `record[A283272(n+6)/A144048(n+2)]` -/
def P15310465203795546724.Spec : Prop :=
  ∀ n, P15310465203795546724.a n = (A281581 n : ℚ)

end A281581

/-! ## A281581.P18358658090841008772

`record[A283272(n+6)/A284992(n+2)]`
-/

namespace A281581.P18358658090841008772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283272 (n + 6) : ℚ) / (A284992 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281581.P18358658090841008772

namespace A281581

/-- `record[A283272(n+6)/A284992(n+2)]` -/
def P18358658090841008772.Spec : Prop :=
  ∀ n, P18358658090841008772.a n = (A281581 n : ℚ)

end A281581

/-!
# A281582: Number of rolls of a die with n sides that maximizes the average ratio of highest number of occurrences of a face value to lowest number.

The programs for A281582, there is no canonical definition to state claims against.
-/

/-! ## A281582.P13667668106663684017

`A001462(A054353((n+1)²+n))+n`
-/

namespace A281582.P13667668106663684017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A054353 ((n + 1) ^ 2 + n)).toNat + (n : ℤ)

end

end A281582.P13667668106663684017

/-! ## A281582.P7529453521918486259

`A001462(A161532(n)+A002620(n))`
-/

namespace A281582.P7529453521918486259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A161532 n + A002620 n).toNat

end

end A281582.P7529453521918486259

/-! ## A281582.P14206068632124971787

`A001462(A172336(n)+A002620(3*n+2))`
-/

namespace A281582.P14206068632124971787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A172336 n + A002620 (3 * n + 2)).toNat

end

end A281582.P14206068632124971787

/-! ## A281582.P15012764741667197395

`A131209(A131209(2*n+1)+A127035(2*(n+1)))`
-/

namespace A281582.P15012764741667197395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A131209 (2 * n + 1) + A127035 (2 * (n + 1))).toNat

end

end A281582.P15012764741667197395

/-! ## A281582.P9740033304055259734

`A230000(A182944(n+1))+4*n`
-/

namespace A281582.P9740033304055259734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230000 (A182944 (n + 1)).toNat + (4 * n : ℤ)

end

end A281582.P9740033304055259734

/-!
# A281583: Number of perfect matchings in the graph C_9 X C_{2n}.

The programs for A281583, there is no canonical definition to state claims against.
-/

/-! ## A281583.P17435834489097889335

`A341741(A000124(n+9)+n+1)`
-/

namespace A281583.P17435834489097889335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A000124 (n + 9) + (n : ℤ) + 1).toNat

end

end A281583.P17435834489097889335

/-!
# A281584: Solutions x to the negative Pell equation x^2 - 15*y^2 = -11 with x, y > 0.

The programs for A281584, the canonical program `A281584.P11147839157278959201` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281584 has offset 1).

The definition of A281584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281584.P11147839157278959201

`8*a(n-2)-a(n-4)` with `a(0)=2, a(1)=7, a(2)=23, a(3)=58`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281584

/-- `8*a(n-2)-a(n-4)` -/
def P11147839157278959201.Spec : Prop :=
  ∀ n, P11147839157278959201.a n = A281584 (n + 1)

theorem P11147839157278959201.correct : P11147839157278959201.Spec := by
  intro n
  simp only [A281584, Nat.add_sub_cancel]

end A281584

/-! ## A281584.P15654959973148184076

`Δ[A080871(n)]+2*A077247(n)`
-/

namespace A281584.P15654959973148184076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A077247 n

end

end A281584.P15654959973148184076

namespace A281584

/-- `Δ[A080871(n)]+2*A077247(n)` -/
def P15654959973148184076.Spec : Prop :=
  ∀ n, P15654959973148184076.a n = A281584 (n + 1)

end A281584

/-! ## A281584.P17513468862031455662

`∑[2*A077248(n)]-A077248(n)`
-/

namespace A281584.P17513468862031455662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077248 n

end

end A281584.P17513468862031455662

namespace A281584

/-- `∑[2*A077248(n)]-A077248(n)` -/
def P17513468862031455662.Spec : Prop :=
  ∀ n, P17513468862031455662.a n = A281584 (n + 1)

end A281584

/-! ## A281584.P10749066079536771833

`A237262(n+3)-4*A237262(n+1)`
-/

namespace A281584.P10749066079536771833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 3) - 4 * A237262 (n + 1)

end

end A281584.P10749066079536771833

namespace A281584

/-- `A237262(n+3)-4*A237262(n+1)` -/
def P10749066079536771833.Spec : Prop :=
  ∀ n, P10749066079536771833.a n = A281584 (n + 1)

end A281584

/-! ## A281584.P5875152371422274584

`A004277(A077247(n))+Δ[A080871(n)]`
-/

namespace A281584.P5875152371422274584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077247 n).toNat + (f1 (n + 1) - f1 n)

end

end A281584.P5875152371422274584

namespace A281584

/-- `A004277(A077247(n))+Δ[A080871(n)]` -/
def P5875152371422274584.Spec : Prop :=
  ∀ n, P5875152371422274584.a n = A281584 (n + 1)

end A281584

/-!
# A281585: Incrementally largest numerators of |Bernoulli(n)|.

The programs for A281585, there is no canonical definition to state claims against.
-/

/-! ## A281585.P15487973837379173847

`record[A051716(n)]`
-/

namespace A281585.P15487973837379173847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281585.P15487973837379173847

/-! ## A281585.P13496373812367039737

`record[abs(A000367(n))]`
-/

namespace A281585.P13496373812367039737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281585.P13496373812367039737

/-! ## A281585.P18144128071208471908

`record[abs(A027641(n))]`
-/

namespace A281585.P18144128071208471908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027641 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281585.P18144128071208471908

/-! ## A281585.P14139657174709607157

`record[abs(A071020(n))]`
-/

namespace A281585.P14139657174709607157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071020 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281585.P14139657174709607157

/-! ## A281585.P7753045561264567657

`record[abs(A164555(n))]`
-/

namespace A281585.P7753045561264567657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164555 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281585.P7753045561264567657

/-!
# A281586: E.g.f.: z*(((exp(z)+1)/((exp(z)+2*exp(-z/2)*cos(z*sqrt(3)/2))/3))-1).

The programs for A281586, there is no canonical definition to state claims against.
-/

/-! ## A281586.P1458140912132800999

`n*A215064(C(n, 2))`
-/

namespace A281586.P1458140912132800999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A215064 (Nat.choose n 2)

end

end A281586.P1458140912132800999

/-! ## A281586.P5020294974444733611

`n*A215064(∑[n]-n)`
-/

namespace A281586.P5020294974444733611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A215064 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A281586.P5020294974444733611

/-! ## A281586.P13746287052965316552

`A294034(A152947(n+1))-A000007(n)`
-/

namespace A281586.P13746287052965316552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294034 (A152947 (n + 1)).toNat - A000007 n

end

end A281586.P13746287052965316552

/-! ## A281586.P2782803834339375299

`A294034(A152947(n+1))-A010893(n)`
-/

namespace A281586.P2782803834339375299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294034 (A152947 (n + 1)).toNat - A010893 (n + 13)

end

end A281586.P2782803834339375299

/-! ## A281586.P12680077742820186501

`A294034(A152947(n+1))-A015868(n)`
-/

namespace A281586.P12680077742820186501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294034 (A152947 (n + 1)).toNat - A015868 n

end

end A281586.P12680077742820186501

/-!
# A281587: Triangle read by rows, e.g.f. exp(x*z)*(2*(exp(z)+1)/(cosh(z)+cos(z))-1).

The programs for A281587, there is no canonical definition to state claims against.
-/

/-! ## A281587.P18225624072881019929

`A305802(A147716(n))+A007318(n)`
-/

namespace A281587.P18225624072881019929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305802 (A147716 n).toNat + A007318 n

end

end A281587.P18225624072881019929

/-! ## A281587.P8157249628088195866

`A007318(n)-A000122(A045988(n))`
-/

namespace A281587.P8157249628088195866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A000122 (A045988 n).toNat

end

end A281587.P8157249628088195866

/-! ## A281587.P12428762816910578351

`A007318(n)-A083918(A005578(n))`
-/

namespace A281587.P12428762816910578351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A083918 (A005578 n).toNat

end

end A281587.P12428762816910578351

/-! ## A281587.P10063918027174255923

`A007318(n)-A085983(A022135(n))`
-/

namespace A281587.P10063918027174255923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A085983 (A022135 n).toNat

end

end A281587.P10063918027174255923

/-! ## A281587.P9912183366648458202

`A007318(n)-A010893(A119502(n))`
-/

namespace A281587.P9912183366648458202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A010893 ((A119502 n).toNat + 13)

end

end A281587.P9912183366648458202

/-!
# A281588: Expansion of e.g.f. z*(2*(exp(z) + 1)/(cosh(z) + cos(z)) - 1).

The programs for A281588, there is no canonical definition to state claims against.
-/

/-! ## A281588.P5782281495711518710

`n*A281587(C(n, 2))`
-/

namespace A281588.P5782281495711518710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A281587 (Nat.choose n 2)

end

end A281588.P5782281495711518710

/-! ## A281588.P4997455844610678459

`n*A281587(A161680(n))`
-/

namespace A281588.P4997455844610678459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A281587 (A161680 n).toNat

end

end A281588.P4997455844610678459

/-! ## A281588.P2529160417654502549

`A281587(A000124(n))%(4^n)`
-/

namespace A281588.P2529160417654502549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281587 (A000124 n).toNat) (4 ^ n : ℤ)

end

end A281588.P2529160417654502549

/-! ## A281588.P13957361281733700247

`A281587(A000124(n))-A000007(n)`
-/

namespace A281588.P13957361281733700247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281587 (A000124 n).toNat - A000007 n

end

end A281588.P13957361281733700247

/-! ## A281588.P12385553284639664043

`A281587(A000124(n))-A010893(n)`
-/

namespace A281588.P12385553284639664043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281587 (A000124 n).toNat - A010893 (n + 13)

end

end A281588.P12385553284639664043

/-!
# A281589: Triangular array T(n,k), n > 0 and k = 1..2^(n-1), read by rows, in which row n corresponds to the permutation of [1..2^(n-1)] resulting from folding a horizontal strip of paper, with 2^(n-1) square cells numbered from 1 to 2^(n-1), n-1 times.

The programs for A281589, the canonical program `A281589.P10233469596152794852` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281589 has offset 1).

The definition of A281589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281589.P10233469596152794852

`(n+1)%2+A119608(n+2)%(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281589

/-- `(n+1)%2+A119608(n+2)%(n+1)` -/
def P10233469596152794852.Spec : Prop :=
  ∀ n, P10233469596152794852.a n = A281589 (n + 1)

theorem P10233469596152794852.correct : P10233469596152794852.Spec := by
  intro n
  simp only [A281589, Nat.add_sub_cancel]

end A281589

/-! ## A281589.P16639448533340004031

`A006068(A362160(n))+1`
-/

namespace A281589.P16639448533340004031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A362160 n).toNat + 1

end

end A281589.P16639448533340004031

namespace A281589

/-- `A006068(A362160(n))+1` -/
def P16639448533340004031.Spec : Prop :=
  ∀ n, P16639448533340004031.a n = A281589 (n + 1)

end A281589

/-! ## A281589.P7836213053364375153

`A066194(A088208(n))`
-/

namespace A281589.P7836213053364375153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A088208 n).toNat

end

end A281589.P7836213053364375153

namespace A281589

/-- `A066194(A088208(n))` -/
def P7836213053364375153.Spec : Prop :=
  ∀ n, P7836213053364375153.a n = A281589 (n + 1)

end A281589

/-! ## A281589.P9563830121667951937

`A062383(n+1)-A056539(A054429(n+1))`
-/

namespace A281589.P9563830121667951937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A056539 (A054429 (n + 1)).toNat

end

end A281589.P9563830121667951937

namespace A281589

/-- `A062383(n+1)-A056539(A054429(n+1))` -/
def P9563830121667951937.Spec : Prop :=
  ∀ n, P9563830121667951937.a n = A281589 (n + 1)

end A281589

/-! ## A281589.P286604726426364691

`A062383(n+1)-A129594(A258746(n+1))`
-/

namespace A281589.P286604726426364691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A129594 (A258746 (n + 1)).toNat

end

end A281589.P286604726426364691

namespace A281589

/-- `A062383(n+1)-A129594(A258746(n+1))` -/
def P286604726426364691.Spec : Prop :=
  ∀ n, P286604726426364691.a n = A281589 (n + 1)

end A281589

/-! ## A281589.P14888065315880304800

`A053644(2*(n+1))-A129594(A258746(n+1))`
-/

namespace A281589.P14888065315880304800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * (n + 1)) - A129594 (A258746 (n + 1)).toNat

end

end A281589.P14888065315880304800

namespace A281589

/-- `A053644(2*(n+1))-A129594(A258746(n+1))` -/
def P14888065315880304800.Spec : Prop :=
  ∀ n, P14888065315880304800.a n = A281589 (n + 1)

end A281589

/-! ## A281589.P15466848502187641784

`A053188(A030101(n+1)+A053644(n+1)²)`
-/

namespace A281589.P15466848502187641784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A030101 (n + 1) + A053644 (n + 1) ^ 2).toNat

end

end A281589.P15466848502187641784

namespace A281589

/-- `A053188(A030101(n+1)+A053644(n+1)²)` -/
def P15466848502187641784.Spec : Prop :=
  ∀ n, P15466848502187641784.a n = A281589 (n + 1)

end A281589

/-!
# A281590: Indices k such that A284896(k-1) and A284896(k) have a different sign.

The programs for A281590, there is no canonical definition to state claims against.
-/

/-! ## A281590.P2770283143031251643

`A281591(n)+a(n-1)` with `a(0)=1`
-/

namespace A281590.P2770283143031251643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281591 n + a (n - 1)

end

end A281590.P2770283143031251643

/-! ## A281590.P11413593426714393433

`∑[A281591(floor(sqrt(n²+1)))]-2`
-/

namespace A281590.P11413593426714393433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281591 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A281590.P11413593426714393433

/-! ## A281590.P15782070092180163443

`∑[A281591(n)%A008574(a(n-1))]` with `a(0)=1`
-/

namespace A281590.P15782070092180163443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A281591 n) (A008574 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281590.P15782070092180163443

/-! ## A281590.P983740482951215272

`A281591(n)-(n-1-A028310(n))*a(n-1)` with `a(0)=1`
-/

namespace A281590.P983740482951215272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281591 n - ((n : ℤ) - 1 - A028310 n) * a (n - 1)

end

end A281590.P983740482951215272

/-! ## A281590.P7549329473802070705

`A065475(∑[A281591(n+1)])-A281591(n+1)`
-/

namespace A281590.P7549329473802070705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A281591 (n + 1)

end

end A281590.P7549329473802070705

/-!
# A281591: First differences of A281590.

The programs for A281591, there is no canonical definition to state claims against.
-/

/-! ## A281591.P15078729390684872352

`Δ[A281590(n+1)]`
-/

namespace A281591.P15078729390684872352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281591.P15078729390684872352

/-! ## A281591.P8750097292490498663

`Δ[record[A281590(A328399(n))]]`
-/

namespace A281591.P8750097292490498663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281590 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281591.P8750097292490498663

/-! ## A281591.P1094375359950113514

`abs(Δ[A281590(A029579(2*n))])`
-/

namespace A281591.P1094375359950113514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281590 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A281591.P1094375359950113514

/-! ## A281591.P14320267489130132418

`A281590(n+2)-A281590(n+1)`
-/

namespace A281591.P14320267489130132418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281590 (n + 2) - A281590 (n + 1)

end

end A281591.P14320267489130132418

/-! ## A281591.P18352337823636079675

`Δ[A281590(A029579(2*n))]%A016970(n)`
-/

namespace A281591.P18352337823636079675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281590 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016970 n)

end

end A281591.P18352337823636079675

/-! ## A281591.P15869613551664968371

`Δ[A281590(A029579(2*n))%A178675(n)]`
-/

namespace A281591.P15869613551664968371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281590 (A029579 (2 * n)).toNat) (A178675 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281591.P15869613551664968371

/-!
# A281593: a(n) = b(n) - Sum_{j=0..n-1} b(j) with b(n) = binomial(2*n, n).

The programs for A281593, the canonical program `A281593.P9505867882038692606` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281593 has offset 0).

The definition of A281593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281593.P9505867882038692606

`2*A279561(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A281593

/-- `2*A279561(n)-1` -/
def P9505867882038692606.Spec : Prop :=
  ∀ n, P9505867882038692606.a n = A281593 n

theorem P9505867882038692606.correct : P9505867882038692606.Spec := by
  intro n
  simp only [A281593]

end A281593

/-! ## A281593.P11554342939626896368

`∑[(1-n)*A002420(n)]`
-/

namespace A281593.P11554342939626896368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A002420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P11554342939626896368

namespace A281593

/-- `∑[(1-n)*A002420(n)]` -/
def P11554342939626896368.Spec : Prop :=
  ∀ n, P11554342939626896368.a n = A281593 n

end A281593

/-! ## A281593.P10305853509580921569

`∑[abs(record[(n-1)*A097331(n)])]`
-/

namespace A281593.P10305853509580921569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P10305853509580921569

namespace A281593

/-- `∑[abs(record[(n-1)*A097331(n)])]` -/
def P10305853509580921569.Spec : Prop :=
  ∀ n, P10305853509580921569.a n = A281593 n

end A281593

/-! ## A281593.P6881740980896540630

`A162551(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A281593.P6881740980896540630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162551 (n - 1) + a (n - 1)

end

end A281593.P6881740980896540630

namespace A281593

/-- `A162551(n-1)+a(n-1)` -/
def P6881740980896540630.Spec : Prop :=
  ∀ n, P6881740980896540630.a n = A281593 n

end A281593

/-! ## A281593.P1789471641430925549

`2*(∑[(n-1)*A120588(n)]+1)+1`
-/

namespace A281593.P1789471641430925549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A281593.P1789471641430925549

namespace A281593

/-- `2*(∑[(n-1)*A120588(n)]+1)+1` -/
def P1789471641430925549.Spec : Prop :=
  ∀ n, P1789471641430925549.a n = A281593 n

end A281593

/-! ## A281593.P16437365846863908118

`A371965(n)+A088218(n)`
-/

namespace A281593.P16437365846863908118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 n + A088218 n

end

end A281593.P16437365846863908118

namespace A281593

/-- `A371965(n)+A088218(n)` -/
def P16437365846863908118.Spec : Prop :=
  ∀ n, P16437365846863908118.a n = A281593 n

end A281593

/-! ## A281593.P5984093150641222574

`∑[A002420(n)*A024000(n)]`
-/

namespace A281593.P5984093150641222574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P5984093150641222574

namespace A281593

/-- `∑[A002420(n)*A024000(n)]` -/
def P5984093150641222574.Spec : Prop :=
  ∀ n, P5984093150641222574.a n = A281593 n

end A281593

/-! ## A281593.P4609465849133605985

`2*A191790(A163985(n))+1`
-/

namespace A281593.P4609465849133605985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191790 (A163985 n).toNat + 1

end

end A281593.P4609465849133605985

namespace A281593

/-- `2*A191790(A163985(n))+1` -/
def P4609465849133605985.Spec : Prop :=
  ∀ n, P4609465849133605985.a n = A281593 n

end A281593

/-! ## A281593.P13114097520489375629

`A371965(n+1)+A000108(n)`
-/

namespace A281593.P13114097520489375629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 (n + 1) + A000108 n

end

end A281593.P13114097520489375629

namespace A281593

/-- `A371965(n+1)+A000108(n)` -/
def P13114097520489375629.Spec : Prop :=
  ∀ n, P13114097520489375629.a n = A281593 n

end A281593

/-! ## A281593.P5001847922705725146

`A000984(n)-A100066(2*n)`
-/

namespace A281593.P5001847922705725146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A100066 (2 * n)

end

end A281593.P5001847922705725146

namespace A281593

/-- `A000984(n)-A100066(2*n)` -/
def P5001847922705725146.Spec : Prop :=
  ∀ n, P5001847922705725146.a n = A281593 n

end A281593

/-! ## A281593.P9366193147746950814

`∑[(A002420(n)+A000984(n))/2]`
-/

namespace A281593.P9366193147746950814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002420 n + A000984 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P9366193147746950814

namespace A281593

/-- `∑[(A002420(n)+A000984(n))/2]` -/
def P9366193147746950814.Spec : Prop :=
  ∀ n, P9366193147746950814.a n = (A281593 n : ℚ)

end A281593

/-! ## A281593.P12576232211605820711

`record[A081668(n)]-A100066(2*n)`
-/

namespace A281593.P12576232211605820711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100066 (2 * n)

end

end A281593.P12576232211605820711

namespace A281593

/-- `record[A081668(n)]-A100066(2*n)` -/
def P12576232211605820711.Spec : Prop :=
  ∀ n, P12576232211605820711.a n = A281593 n

end A281593

/-! ## A281593.P5274024182591825455

`record[A126869(n)]-A100066(2*n)`
-/

namespace A281593.P5274024182591825455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100066 (2 * n)

end

end A281593.P5274024182591825455

namespace A281593

/-- `record[A126869(n)]-A100066(2*n)` -/
def P5274024182591825455.Spec : Prop :=
  ∀ n, P5274024182591825455.a n = A281593 n

end A281593

/-! ## A281593.P9917918702690241555

`A063886(2*n)-A100066(2*n)`
-/

namespace A281593.P9917918702690241555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A100066 (2 * n)

end

end A281593.P9917918702690241555

namespace A281593

/-- `A063886(2*n)-A100066(2*n)` -/
def P9917918702690241555.Spec : Prop :=
  ∀ n, P9917918702690241555.a n = A281593 n

end A281593

/-! ## A281593.P15283193833942767949

`A081668(2*n)-A100066(2*n)`
-/

namespace A281593.P15283193833942767949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A100066 (2 * n)

end

end A281593.P15283193833942767949

namespace A281593

/-- `A081668(2*n)-A100066(2*n)` -/
def P15283193833942767949.Spec : Prop :=
  ∀ n, P15283193833942767949.a n = A281593 n

end A281593

/-! ## A281593.P10502979978438667206

`A126869(2*n)-A100066(2*n)`
-/

namespace A281593.P10502979978438667206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A100066 (2 * n)

end

end A281593.P10502979978438667206

namespace A281593

/-- `A126869(2*n)-A100066(2*n)` -/
def P10502979978438667206.Spec : Prop :=
  ∀ n, P10502979978438667206.a n = A281593 n

end A281593

/-! ## A281593.P11257935438733616010

`∑[A182027(2*n+1)-A182027(2*n)]`
-/

namespace A281593.P11257935438733616010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * n + 1) - A182027 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P11257935438733616010

namespace A281593

/-- `∑[A182027(2*n+1)-A182027(2*n)]` -/
def P11257935438733616010.Spec : Prop :=
  ∀ n, P11257935438733616010.a n = A281593 n

end A281593

/-! ## A281593.P3356454005587770965

`A100066(2*(n+1))-2*A100066(2*n)`
-/

namespace A281593.P3356454005587770965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (2 * (n + 1)) - 2 * A100066 (2 * n)

end

end A281593.P3356454005587770965

namespace A281593

/-- `A100066(2*(n+1))-2*A100066(2*n)` -/
def P3356454005587770965.Spec : Prop :=
  ∀ n, P3356454005587770965.a n = A281593 n

end A281593

/-! ## A281593.P8319631399189707916

`∑[A004442(A004273(n))*A120588(n)]`
-/

namespace A281593.P8319631399189707916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004273 n).toNat * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281593.P8319631399189707916

namespace A281593

/-- `∑[A004442(A004273(n))*A120588(n)]` -/
def P8319631399189707916.Spec : Prop :=
  ∀ n, P8319631399189707916.a n = A281593 n

end A281593

/-!
# A281594: The radical of the Catalan number which is the largest squarefree number dividing binomial(2*n,n)/(n+1).

The programs for A281594, the canonical program `A281594.P9064033195026317982` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281594 has offset 0).

The definition of A281594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281594.P9064033195026317982

`A007947(A000108(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A281594

/-- `A007947(A000108(n))` -/
def P9064033195026317982.Spec : Prop :=
  ∀ n, P9064033195026317982.a n = A281594 n

theorem P9064033195026317982.correct : P9064033195026317982.Spec := by
  intro n
  simp only [A281594]

end A281594

/-! ## A281594.P11696814585039733028

`gcd(A000108(n), A080397(n))`
-/

namespace A281594.P11696814585039733028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A080397 n)

end

end A281594.P11696814585039733028

namespace A281594

/-- `gcd(A000108(n), A080397(n))` -/
def P11696814585039733028.Spec : Prop :=
  ∀ n, (P11696814585039733028.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P4164183274739730502

`gcd(A001791(n), A163641(2*n))`
-/

namespace A281594.P4164183274739730502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001791 n) (A163641 (2 * n))

end

end A281594.P4164183274739730502

namespace A281594

/-- `gcd(A001791(n), A163641(2*n))` -/
def P4164183274739730502.Spec : Prop :=
  ∀ n, (P4164183274739730502.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P11113468167594101876

`gcd(A141222(n), A163640(n))`
-/

namespace A281594.P11113468167594101876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141222 n) (A163640 n)

end

end A281594.P11113468167594101876

namespace A281594

/-- `gcd(A141222(n), A163640(n))` -/
def P11113468167594101876.Spec : Prop :=
  ∀ n, (P11113468167594101876.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P5506468148459329862

`gcd(A034386(2*n), A168491(n))`
-/

namespace A281594.P5506468148459329862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (2 * n)) (A168491 n)

end

end A281594.P5506468148459329862

namespace A281594

/-- `gcd(A034386(2*n), A168491(n))` -/
def P5506468148459329862.Spec : Prop :=
  ∀ n, (P5506468148459329862.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P9000842897731247933

`gcd(17*A034386(2*(n+2)), A120588(n+1))`
-/

namespace A281594.P9000842897731247933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (17 * A034386 (2 * (n + 2))) (A120588 (n + 1))

end

end A281594.P9000842897731247933

namespace A281594

/-- `gcd(17*A034386(2*(n+2)), A120588(n+1))` -/
def P9000842897731247933.Spec : Prop :=
  ∀ n, (P9000842897731247933.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P9968639948084371486

`gcd(A057977(2*n)², A034386(2*n+1))`
-/

namespace A281594.P9968639948084371486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057977 (2 * n) ^ 2) (A034386 (2 * n + 1))

end

end A281594.P9968639948084371486

namespace A281594

/-- `gcd(A057977(2*n)², A034386(2*n+1))` -/
def P9968639948084371486.Spec : Prop :=
  ∀ n, (P9968639948084371486.a n : ℤ) = A281594 n

end A281594

/-! ## A281594.P15601994514139362116

`gcd(A000108(n)², A002110(n))`
-/

namespace A281594.P15601994514139362116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n ^ 2) (A002110 n)

end

end A281594.P15601994514139362116

namespace A281594

/-- `gcd(A000108(n)², A002110(n))` -/
def P15601994514139362116.Spec : Prop :=
  ∀ n, (P15601994514139362116.a n : ℤ) = A281594 n

end A281594

/-!
# A281595: a(n) = (n^n - 3*(n-1)^n + 3*(n-2)^n - (n-3)^n)/6.

The programs for A281595, the canonical program `A281595.P1500226968967288117` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281595 has offset 0).

The definition of A281595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281595.P1500226968967288117

`(n^n-3*(n-1)^n+3*(n-2)^n-(n-3)^n)/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281595

/-- `(n^n-3*(n-1)^n+3*(n-2)^n-(n-3)^n)/6` -/
def P1500226968967288117.Spec : Prop :=
  ∀ n, P1500226968967288117.a n = (A281595 n : ℚ)

end A281595

/-! ## A281595.P3274117132254380431

`A354794(A077169(n+2)-1)`
-/

namespace A281595.P3274117132254380431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (A077169 (n + 2) - 1).toNat

end

end A281595.P3274117132254380431

namespace A281595

/-- `A354794(A077169(n+2)-1)` -/
def P3274117132254380431.Spec : Prop :=
  ∀ n, P3274117132254380431.a n = A281595 n

end A281595

/-!
# A281596: a(n) = ((n-2)^n - 2*(n-1)^n + n^n)/2.

The programs for A281596, the canonical program `A281596.P1623002210637556942` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281596 has offset 0).

The definition of A281596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281596.P1623002210637556942

`((n-2)^n-2*(n-1)^n+n^n)/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281596

/-- `((n-2)^n-2*(n-1)^n+n^n)/2` -/
def P1623002210637556942.Spec : Prop :=
  ∀ n, P1623002210637556942.a n = (A281596 n : ℚ)

end A281596

/-! ## A281596.P12330569554339906193

`A354794(∑[round(acot(n)+n)+1])`
-/

namespace A281596.P12330569554339906193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281596.P12330569554339906193

namespace A281596

/-- `A354794(∑[round(acot(n)+n)+1])` -/
def P12330569554339906193.Spec : Prop :=
  ∀ n, P12330569554339906193.a n = A281596 n

end A281596

/-! ## A281596.P12851277027627056172

`A354794(∑[char[1]+1+n]+2)`
-/

namespace A281596.P12851277027627056172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281596.P12851277027627056172

namespace A281596

/-- `A354794(∑[char[1]+1+n]+2)` -/
def P12851277027627056172.Spec : Prop :=
  ∀ n, P12851277027627056172.a n = A281596 n

end A281596

/-!
# A281597: Numbers k such that A001221(k) = A001221(A000041(k)).

The programs for A281597, there is no canonical definition to state claims against.
-/

/-! ## A281597.P3808409269077258273

`eq[A001221(n+1), A087175(n+1)]+1`
-/

namespace A281597.P3808409269077258273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281597.P3808409269077258273

/-! ## A281597.P15756164285123568676

`eq[A001221(A000041(n+1)), A001221(n+1)]+1`
-/

namespace A281597.P15756164285123568676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000041 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281597.P15756164285123568676

/-!
# A281598: Numbers k such that A001222(k) = A001222(A000041(k)).

The programs for A281598, there is no canonical definition to state claims against.
-/

/-! ## A281598.P17733354474029414888

`eq[A001222(abs(1-n)+1), A085561(n)]`
-/

namespace A281598.P17733354474029414888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281598.P17733354474029414888

/-! ## A281598.P14942288965413763030

`eq[A001222(n+1), A085561(n+1)]+1`
-/

namespace A281598.P14942288965413763030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281598.P14942288965413763030

/-! ## A281598.P12476661557793369108

`eq[A085561(n)+1, A001222(A004277(n))]`
-/

namespace A281598.P12476661557793369108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281598.P12476661557793369108

/-! ## A281598.P12869579961700164849

`eq[A001222(A000041(n+1)), A001222(n+1)]+1`
-/

namespace A281598.P12869579961700164849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000041 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281598.P12869579961700164849

/-!
# A281599: Numbers k such that A000005(k) = A000005(A000041(k)).

The programs for A281599, there is no canonical definition to state claims against.
-/

/-! ## A281599.P14578677302741966431

`eq[A000005(n+1), A085543(n+1)]+1`
-/

namespace A281599.P14578677302741966431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281599.P14578677302741966431

/-! ## A281599.P1889263301088922578

`eq[A000005(A000038(n)+n), A085543(n)]`
-/

namespace A281599.P1889263301088922578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281599.P1889263301088922578

/-! ## A281599.P10290870302062024222

`eq[A008586(A085543(n)), A145154(n)]`
-/

namespace A281599.P10290870302062024222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A085543 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281599.P10290870302062024222

/-! ## A281599.P6895638234066159741

`eq[A145154(n), A145154(A278241(n))]`
-/

namespace A281599.P6895638234066159741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A278241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281599.P6895638234066159741

