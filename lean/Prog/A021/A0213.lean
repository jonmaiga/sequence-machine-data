import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C008
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C011

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A021300: Decimal expansion of 1/296.

The programs for A021300, the canonical program `A021300.P16388191353303328427` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021300 has offset 0).

The definition of A021300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021300.P16388191353303328427

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=3, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021300

/-- `a(n-3)` -/
def P16388191353303328427.Spec : Prop :=
  ∀ n, (P16388191353303328427.a n : ℤ) = A021300 n

theorem P16388191353303328427.correct : P16388191353303328427.Spec := by
  intro n
  simp only [A021300]

end A021300

/-!
# A021301: Decimal expansion of 1/297.

The programs for A021301, the canonical program `A021301.P9904923170792516356` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021301 has offset 0).

The definition of A021301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021301.P9904923170792516356

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=3, a(4)=6, a(5)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021301

/-- `a(n-6)` -/
def P9904923170792516356.Spec : Prop :=
  ∀ n, (P9904923170792516356.a n : ℤ) = A021301 n

theorem P9904923170792516356.correct : P9904923170792516356.Spec := by
  intro n
  simp only [A021301]

end A021301

/-!
# A021304: Expansion of 1/((1-x)(1-2x)(1-9x)(1-12x)).

The programs for A021304, there is no canonical definition to state claims against.
-/

/-! ## A021304.P18162717306364774476

`∑[A016324(n)]`
-/

namespace A021304.P18162717306364774476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021304.P18162717306364774476

/-! ## A021304.P13597878665953491008

`A016204(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021304.P13597878665953491008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016204 n + 12 * a (n - 1)

end

end A021304.P13597878665953491008

/-! ## A021304.P3453765413267973035

`a(n-1)+A016263(n)+a(n-1)` with `a(0)=1`
-/

namespace A021304.P3453765413267973035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016263 n + a (n - 1))

end

end A021304.P3453765413267973035

/-! ## A021304.P16534840424835525100

`2*A021214(n)-A021194(n)`
-/

namespace A021304.P16534840424835525100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021214 n - A021194 n

end

end A021304.P16534840424835525100

/-! ## A021304.P11197797036768712021

`(A026108(n)+A021164(n))/2`
-/

namespace A021304.P11197797036768712021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026108 n + A021164 n : ℚ) / 2

end

end A021304.P11197797036768712021

/-! ## A021304.P17480589796399667436

`A021134(n)+A023772(n)-A021164(n)`
-/

namespace A021304.P17480589796399667436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021134 n + (A023772 n - A021164 n)

end

end A021304.P17480589796399667436

/-! ## A021304.P8017012553548334851

`a(n-1)+A056594(A187217(n))²*A016324(n)` with `a(0)=1`
-/

namespace A021304.P8017012553548334851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A056594 (A187217 n).toNat ^ 2 * A016324 n

end

end A021304.P8017012553548334851

/-! ## A021304.P16543293038504005869

`a(n-1)+A016324(n)*A285097(A044399(n+1))` with `a(0)=1`
-/

namespace A021304.P16543293038504005869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A016324 n * A285097 (A044399 (n + 1)).toNat

end

end A021304.P16543293038504005869

/-!
# A021307: Decimal expansion of 1/303.

The programs for A021307, the canonical program `A021307.P12999588162684123115` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021307 has offset 0).

The definition of A021307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021307.P12999588162684123115

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021307

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P12999588162684123115.Spec : Prop :=
  ∀ n, P12999588162684123115.a n = A021307 n

theorem P12999588162684123115.correct : P12999588162684123115.Spec := by
  intro n
  simp only [A021307]

end A021307

/-!
# A021312: Decimal expansion of 1/308.

The programs for A021312, the canonical program `A021312.P6038390416270078623` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021312 has offset 0).

The definition of A021312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021312.P6038390416270078623

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=2, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021312

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P6038390416270078623.Spec : Prop :=
  ∀ n, P6038390416270078623.a n = A021312 n

theorem P6038390416270078623.correct : P6038390416270078623.Spec := by
  intro n
  simp only [A021312]

end A021312

/-!
# A021314: Expansion of 1/((1-x)*(1-2*x)*(1-10*x)*(1-11*x)).

The programs for A021314, the canonical program `A021314.P17222481556316649399` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021314 has offset 0).

The definition of A021314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021314.P17222481556316649399

`(8*11^(n+3)-10^(n+4)+5*2^(n+4)-8)/720`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021314

/-- `(8*11^(n+3)-10^(n+4)+5*2^(n+4)-8)/720` -/
def P17222481556316649399.Spec : Prop :=
  ∀ n, P17222481556316649399.a n = (A021314 n : ℚ)

end A021314

/-! ## A021314.P17616161687197871723

`∑[A016325(n)]`
-/

namespace A021314.P17616161687197871723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021314.P17616161687197871723

namespace A021314

/-- `∑[A016325(n)]` -/
def P17616161687197871723.Spec : Prop :=
  ∀ n, P17616161687197871723.a n = A021314 n

end A021314

/-! ## A021314.P1239629353472389143

`A016265(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021314.P1239629353472389143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016265 n + 2 * a (n - 1)

end

end A021314.P1239629353472389143

namespace A021314

/-- `A016265(n)+2*a(n-1)` -/
def P1239629353472389143.Spec : Prop :=
  ∀ n, P1239629353472389143.a n = A021314 n

end A021314

/-! ## A021314.P13986893424300241592

`2*A021294(n)-A021284(n)`
-/

namespace A021314.P13986893424300241592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A021284 n

end

end A021314.P13986893424300241592

namespace A021314

/-- `2*A021294(n)-A021284(n)` -/
def P13986893424300241592.Spec : Prop :=
  ∀ n, P13986893424300241592.a n = A021314 n

end A021314

/-! ## A021314.P9187282054758365875

`A016206(n+1)-A016205(n+1)`
-/

namespace A021314.P9187282054758365875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016206 (n + 1) - A016205 (n + 1)

end

end A021314.P9187282054758365875

namespace A021314

/-- `A016206(n+1)-A016205(n+1)` -/
def P9187282054758365875.Spec : Prop :=
  ∀ n, P9187282054758365875.a n = A021314 n

end A021314

/-! ## A021314.P11265544238419435234

`∑[A016135(n+1)-A016134(n+1)]`
-/

namespace A021314.P11265544238419435234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016135 (n + 1) - A016134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021314.P11265544238419435234

namespace A021314

/-- `∑[A016135(n+1)-A016134(n+1)]` -/
def P11265544238419435234.Spec : Prop :=
  ∀ n, P11265544238419435234.a n = A021314 n

end A021314

/-! ## A021314.P7816294014964418355

`2*A021324(n)-A021334(n)`
-/

namespace A021314.P7816294014964418355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021324 n - A021334 n

end

end A021314.P7816294014964418355

namespace A021314

/-- `2*A021324(n)-A021334(n)` -/
def P7816294014964418355.Spec : Prop :=
  ∀ n, P7816294014964418355.a n = A021314 n

end A021314

/-!
# A021316: Decimal expansion of 1/312.

The programs for A021316, the canonical program `A021316.P3986677502212046447` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021316 has offset 0).

The definition of A021316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021316.P3986677502212046447

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=2, a(4)=0, a(5)=5, a(6)=1, a(7)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021316

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P3986677502212046447.Spec : Prop :=
  ∀ n, P3986677502212046447.a n = A021316 n

theorem P3986677502212046447.correct : P3986677502212046447.Spec := by
  intro n
  simp only [A021316]

end A021316

/-!
# A021319: Decimal expansion of 1/315.

The programs for A021319, the canonical program `A021319.P9177280253071944467` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021319 has offset 0).

The definition of A021319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021319.P9177280253071944467

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021319

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P9177280253071944467.Spec : Prop :=
  ∀ n, P9177280253071944467.a n = A021319 n

theorem P9177280253071944467.correct : P9177280253071944467.Spec := by
  intro n
  simp only [A021319]

end A021319

/-!
# A021324: Expansion of 1/((1-x)(1-2x)(1-10x)(1-12x)).

The programs for A021324, there is no canonical definition to state claims against.
-/

/-! ## A021324.P1795836379738212168

`∑[2^n*∑[6^(n+1)-5^(n+1)]]`
-/

namespace A021324.P1795836379738212168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021324.P1795836379738212168

/-! ## A021324.P6447494298091010207

`or(1, ∑[A016326(n)])`
-/

namespace A021324.P6447494298091010207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021324.P6447494298091010207

/-! ## A021324.P15584962570086926619

`A016205(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021324.P15584962570086926619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016205 n + 12 * a (n - 1)

end

end A021324.P15584962570086926619

/-! ## A021324.P13622842048545568562

`∑[A016196(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A021324.P13622842048545568562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016196 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A021324.P13622842048545568562

/-! ## A021324.P13194052705185047625

`a(n-1)+A016267(n)+a(n-1)` with `a(0)=1`
-/

namespace A021324.P13194052705185047625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016267 n + a (n - 1))

end

end A021324.P13194052705185047625

/-! ## A021324.P463984869470325227

`2*A021279(n)-A021268(n)`
-/

namespace A021324.P463984869470325227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021279 n - A021268 n

end

end A021324.P463984869470325227

/-! ## A021324.P3533375311757515350

`(A021334(n)+A021314(n))/2`
-/

namespace A021324.P3533375311757515350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021334 n + A021314 n : ℚ) / 2

end

end A021324.P3533375311757515350

/-!
# A021329: Decimal expansion of 1/325.

The programs for A021329, the canonical program `A021329.P6679805031005277885` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021329 has offset 0).

The definition of A021329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021329.P6679805031005277885

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=7, a(5)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021329

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P6679805031005277885.Spec : Prop :=
  ∀ n, P6679805031005277885.a n = A021329 n

theorem P6679805031005277885.correct : P6679805031005277885.Spec := by
  intro n
  simp only [A021329]

end A021329

/-!
# A021332: Decimal expansion of 1/328.

The programs for A021332, the canonical program `A021332.P9912789196886203461` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021332 has offset 0).

The definition of A021332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021332.P9912789196886203461

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=4, a(5)=8, a(6)=7, a(7)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021332

/-- `a(n-5)` -/
def P9912789196886203461.Spec : Prop :=
  ∀ n, (P9912789196886203461.a n : ℤ) = A021332 n

theorem P9912789196886203461.correct : P9912789196886203461.Spec := by
  intro n
  simp only [A021332]

end A021332

/-!
# A021334: Expansion of 1/((1-x)(1-2x)(1-11x)(1-12x)).

The programs for A021334, the canonical program `A021334.P11930434218737657758` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021334 has offset 0).

The definition of A021334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021334.P11930434218737657758

`(9*12^(n+3)-11^(n+4)+11*2^(n+3)-9)/990`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021334

/-- `(9*12^(n+3)-11^(n+4)+11*2^(n+3)-9)/990` -/
def P11930434218737657758.Spec : Prop :=
  ∀ n, P11930434218737657758.a n = (A021334 n : ℚ)

end A021334

/-! ## A021334.P14665565548833177771

`∑[A016633(n)]`
-/

namespace A021334.P14665565548833177771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021334.P14665565548833177771

namespace A021334

/-- `∑[A016633(n)]` -/
def P14665565548833177771.Spec : Prop :=
  ∀ n, P14665565548833177771.a n = A021334 n

end A021334

/-! ## A021334.P9325626994755065228

`A016268(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021334.P9325626994755065228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016268 n + 2 * a (n - 1)

end

end A021334.P9325626994755065228

namespace A021334

/-- `A016268(n)+2*a(n-1)` -/
def P9325626994755065228.Spec : Prop :=
  ∀ n, P9325626994755065228.a n = A021334 n

end A021334

/-! ## A021334.P8931857597099998787

`A016206(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021334.P8931857597099998787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016206 n + 12 * a (n - 1)

end

end A021334.P8931857597099998787

namespace A021334

/-- `A016206(n)+12*a(n-1)` -/
def P8931857597099998787.Spec : Prop :=
  ∀ n, P8931857597099998787.a n = A021334 n

end A021334

/-! ## A021334.P2306694353755168760

`2*A021324(n)-A021314(n)`
-/

namespace A021334.P2306694353755168760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021324 n - A021314 n

end

end A021334.P2306694353755168760

namespace A021334

/-- `2*A021324(n)-A021314(n)` -/
def P2306694353755168760.Spec : Prop :=
  ∀ n, P2306694353755168760.a n = A021334 n

end A021334

/-! ## A021334.P7753767922827805983

`A016207(n+1)-A016206(n+1)`
-/

namespace A021334.P7753767922827805983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016207 (n + 1) - A016206 (n + 1)

end

end A021334.P7753767922827805983

namespace A021334

/-- `A016207(n+1)-A016206(n+1)` -/
def P7753767922827805983.Spec : Prop :=
  ∀ n, P7753767922827805983.a n = A021334 n

end A021334

/-! ## A021334.P10487036620039363959

`a(n-1)+A016633(n)+A000007(n)` with `a(0)=1`
-/

namespace A021334.P10487036620039363959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016633 n + A000007 n)

end

end A021334.P10487036620039363959

namespace A021334

/-- `a(n-1)+A016633(n)+A000007(n)` -/
def P10487036620039363959.Spec : Prop :=
  ∀ n, P10487036620039363959.a n = A021334 n

end A021334

/-! ## A021334.P18220351965510630173

`a(n-1)+A016633(n)*A057427(n)` with `a(0)=1`
-/

namespace A021334.P18220351965510630173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A016633 n * A057427 n

end

end A021334.P18220351965510630173

namespace A021334

/-- `a(n-1)+A016633(n)*A057427(n)` -/
def P18220351965510630173.Spec : Prop :=
  ∀ n, P18220351965510630173.a n = A021334 n

end A021334

/-!
# A021337: Decimal expansion of 1/333.

The programs for A021337, the canonical program `A021337.P9515870575987216114` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021337 has offset 0).

The definition of A021337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021337.P9515870575987216114

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021337

/-- `a(n-3)` -/
def P9515870575987216114.Spec : Prop :=
  ∀ n, (P9515870575987216114.a n : ℤ) = A021337 n

theorem P9515870575987216114.correct : P9515870575987216114.Spec := by
  intro n
  simp only [A021337]

end A021337

/-!
# A021344: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-5*x)).

The programs for A021344, the canonical program `A021344.P2741892672048182968` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021344 has offset 0).

The definition of A021344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021344.P2741892672048182968

`13*a(n-1)-59*a(n-2)+107*a(n-3)-60*a(n-4)` with `a(0)=1, a(1)=13, a(2)=110, a(3)=770`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021344

/-- `13*a(n-1)-59*a(n-2)+107*a(n-3)-60*a(n-4)` -/
def P2741892672048182968.Spec : Prop :=
  ∀ n, P2741892672048182968.a n = A021344 n

theorem P2741892672048182968.correct : P2741892672048182968.Spec := by
  intro n
  simp only [A021344]

end A021344

/-! ## A021344.P16034157826076336967

`1/24*(375*5^n-512*4^n+162*3^n-1)`
-/

namespace A021344.P16034157826076336967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * ((375 * 5 ^ n : ℤ) - (512 * 4 ^ n : ℤ) + (162 * 3 ^ n : ℤ) - 1 : ℚ)

end

end A021344.P16034157826076336967

namespace A021344

/-- `1/24*(375*5^n-512*4^n+162*3^n-1)` -/
def P16034157826076336967.Spec : Prop :=
  ∀ n, P16034157826076336967.a n = (A021344 n : ℚ)

theorem P16034157826076336967.correct : P16034157826076336967.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A021344, Nat.add_sub_cancel, A021344.P16034157826076336967.a, A021344.P2741892672048182968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A021344, Nat.add_sub_cancel, A021344.P16034157826076336967.a, A021344.P2741892672048182968.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A021344

/-! ## A021344.P11167098392256274486

`∑[A016753(n)]`
-/

namespace A021344.P11167098392256274486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021344.P11167098392256274486

namespace A021344

/-- `∑[A016753(n)]` -/
def P11167098392256274486.Spec : Prop :=
  ∀ n, P11167098392256274486.a n = A021344 n

end A021344

/-! ## A021344.P14106520879310203608

`∑[A245019(n+2)/2]`
-/

namespace A021344.P14106520879310203608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245019 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021344.P14106520879310203608

namespace A021344

/-- `∑[A245019(n+2)/2]` -/
def P14106520879310203608.Spec : Prop :=
  ∀ n, P14106520879310203608.a n = (A021344 n : ℚ)

end A021344

/-! ## A021344.P18232195686785384779

`A016218(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021344.P18232195686785384779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016218 n + 3 * a (n - 1)

end

end A021344.P18232195686785384779

namespace A021344

/-- `A016218(n)+3*a(n-1)` -/
def P18232195686785384779.Spec : Prop :=
  ∀ n, P18232195686785384779.a n = A021344 n

end A021344

/-! ## A021344.P12587319311925488120

`A016209(n+1)-A016208(n+1)`
-/

namespace A021344.P12587319311925488120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 (n + 1) - A016208 (n + 1)

end

end A021344.P12587319311925488120

namespace A021344

/-- `A016209(n+1)-A016208(n+1)` -/
def P12587319311925488120.Spec : Prop :=
  ∀ n, P12587319311925488120.a n = A021344 n

end A021344

/-! ## A021344.P16164774622826435618

`∑[A005059(n+2)-A005061(n+2)]`
-/

namespace A021344.P16164774622826435618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 2) - A005061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021344.P16164774622826435618

namespace A021344

/-- `∑[A005059(n+2)-A005061(n+2)]` -/
def P16164774622826435618.Spec : Prop :=
  ∀ n, P16164774622826435618.a n = A021344 n

end A021344

/-! ## A021344.P5232573319042797084

`∑[A005060(n+2)-A005059(n+2)]`
-/

namespace A021344.P5232573319042797084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 (n + 2) - A005059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021344.P5232573319042797084

namespace A021344

/-- `∑[A005060(n+2)-A005059(n+2)]` -/
def P5232573319042797084.Spec : Prop :=
  ∀ n, P5232573319042797084.a n = A021344 n

end A021344

/-! ## A021344.P1142490050292788286

`A025211(n)-A056511(A020742(n))`
-/

namespace A021344.P1142490050292788286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n - A056511 (A020742 n).toNat

end

end A021344.P1142490050292788286

namespace A021344

/-- `A025211(n)-A056511(A020742(n))` -/
def P1142490050292788286.Spec : Prop :=
  ∀ n, P1142490050292788286.a n = A021344 n

end A021344

/-! ## A021344.P4276902564214901768

`A025211(n)+A025211(n)-A000481(n+5)`
-/

namespace A021344.P4276902564214901768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n + (A025211 n - A000481 (n + 5))

end

end A021344.P4276902564214901768

namespace A021344

/-- `A025211(n)+A025211(n)-A000481(n+5)` -/
def P4276902564214901768.Spec : Prop :=
  ∀ n, P4276902564214901768.a n = A021344 n

end A021344

/-! ## A021344.P12969836338682685067

`A056511(2*n+9)-(A056511(2*n+7)+A056511(2*n+7))`
-/

namespace A021344.P12969836338682685067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (2 * n + 9) - (A056511 (2 * n + 7) + A056511 (2 * n + 7))

end

end A021344.P12969836338682685067

namespace A021344

/-- `A056511(2*n+9)-(A056511(2*n+7)+A056511(2*n+7))` -/
def P12969836338682685067.Spec : Prop :=
  ∀ n, P12969836338682685067.a n = A021344 n

end A021344

/-! ## A021344.P2304867883891912062

`A016218(n+1)-A016209(n+1)`
-/

namespace A021344.P2304867883891912062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016218 (n + 1) - A016209 (n + 1)

end

end A021344.P2304867883891912062

namespace A021344

/-- `A016218(n+1)-A016209(n+1)` -/
def P2304867883891912062.Spec : Prop :=
  ∀ n, P2304867883891912062.a n = A021344 n

end A021344

/-! ## A021344.P5731719918896862859

`2*A025211(n)-A000481(n+5)`
-/

namespace A021344.P5731719918896862859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025211 n - A000481 (n + 5)

end

end A021344.P5731719918896862859

namespace A021344

/-- `2*A025211(n)-A000481(n+5)` -/
def P5731719918896862859.Spec : Prop :=
  ∀ n, P5731719918896862859.a n = A021344 n

end A021344

/-! ## A021344.P11233435399197948872

`(A016218(n+1)-A016208(n+1))/2`
-/

namespace A021344.P11233435399197948872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016218 (n + 1) - A016208 (n + 1) : ℚ) / 2

end

end A021344.P11233435399197948872

namespace A021344

/-- `(A016218(n+1)-A016208(n+1))/2` -/
def P11233435399197948872.Spec : Prop :=
  ∀ n, P11233435399197948872.a n = (A021344 n : ℚ)

end A021344

/-! ## A021344.P4242696841655457620

`2*A021354(n)-A021414(n)`
-/

namespace A021344.P4242696841655457620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021354 n - A021414 n

end

end A021344.P4242696841655457620

namespace A021344

/-- `2*A021354(n)-A021414(n)` -/
def P4242696841655457620.Spec : Prop :=
  ∀ n, P4242696841655457620.a n = A021344 n

end A021344

/-!
# A021354: Expansion of 1/((1-x)(1-3x)(1-4x)(1-6x)).

The programs for A021354, the canonical program `A021354.P14877849323683355384` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021354 has offset 0).

The definition of A021354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021354.P14877849323683355384

`14*a(n-1)-67*a(n-2)+126*a(n-3)-72*a(n-4)` with `a(0)=1, a(1)=14, a(2)=129, a(3)=994`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021354

/-- `14*a(n-1)-67*a(n-2)+126*a(n-3)-72*a(n-4)` -/
def P14877849323683355384.Spec : Prop :=
  ∀ n, P14877849323683355384.a n = A021354 n

theorem P14877849323683355384.correct : P14877849323683355384.Spec := by
  intro n
  simp only [A021354]

end A021354

/-! ## A021354.P11775580334163747805

`(216*6^n-320*4^n+135*3^n-1)/30`
-/

namespace A021354.P11775580334163747805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((216 * 6 ^ n : ℤ) - (320 * 4 ^ n : ℤ) + (135 * 3 ^ n : ℤ) - 1 : ℚ) / 30

end

end A021354.P11775580334163747805

namespace A021354

/-- `(216*6^n-320*4^n+135*3^n-1)/30` -/
def P11775580334163747805.Spec : Prop :=
  ∀ n, P11775580334163747805.a n = (A021354 n : ℚ)

theorem P11775580334163747805.correct : P11775580334163747805.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A021354, Nat.add_sub_cancel, A021354.P11775580334163747805.a, A021354.P14877849323683355384.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A021354, Nat.add_sub_cancel, A021354.P11775580334163747805.a, A021354.P14877849323683355384.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A021354

/-! ## A021354.P13652358289416477748

`∑[A016765(n)]`
-/

namespace A021354.P13652358289416477748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021354.P13652358289416477748

namespace A021354

/-- `∑[A016765(n)]` -/
def P13652358289416477748.Spec : Prop :=
  ∀ n, P13652358289416477748.a n = A021354 n

end A021354

/-! ## A021354.P10221565246432860932

`A016222(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021354.P10221565246432860932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016222 n + 3 * a (n - 1)

end

end A021354.P10221565246432860932

namespace A021354

/-- `A016222(n)+3*a(n-1)` -/
def P10221565246432860932.Spec : Prop :=
  ∀ n, P10221565246432860932.a n = A021354 n

end A021354

/-! ## A021354.P17935500783310830589

`2*A021076(n)-A021029(n)`
-/

namespace A021354.P17935500783310830589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021076 n - A021029 n

end

end A021354.P17935500783310830589

namespace A021354

/-- `2*A021076(n)-A021029(n)` -/
def P17935500783310830589.Spec : Prop :=
  ∀ n, P17935500783310830589.a n = A021354 n

end A021354

/-! ## A021354.P8705706096026017422

`A016222(n+1)-A016211(n+1)`
-/

namespace A021354.P8705706096026017422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 (n + 1) - A016211 (n + 1)

end

end A021354.P8705706096026017422

namespace A021354

/-- `A016222(n+1)-A016211(n+1)` -/
def P8705706096026017422.Spec : Prop :=
  ∀ n, P8705706096026017422.a n = A021354 n

end A021354

/-! ## A021354.P4518045585541917245

`2*A021374(n)-A021503(n)`
-/

namespace A021354.P4518045585541917245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021374 n - A021503 n

end

end A021354.P4518045585541917245

namespace A021354

/-- `2*A021374(n)-A021503(n)` -/
def P4518045585541917245.Spec : Prop :=
  ∀ n, P4518045585541917245.a n = A021354 n

end A021354

/-! ## A021354.P1723792982650169327

`∑[A020594(n)/A000079(n)]`
-/

namespace A021354.P1723792982650169327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020594 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021354.P1723792982650169327

namespace A021354

/-- `∑[A020594(n)/A000079(n)]` -/
def P1723792982650169327.Spec : Prop :=
  ∀ n, P1723792982650169327.a n = (A021354 n : ℚ)

end A021354

/-!
# A021355: Decimal expansion of 1/351.

The programs for A021355, the canonical program `A021355.P8065996215196989065` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021355 has offset 0).

The definition of A021355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021355.P8065996215196989065

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8, a(4)=4, a(5)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021355

/-- `a(n-6)` -/
def P8065996215196989065.Spec : Prop :=
  ∀ n, (P8065996215196989065.a n : ℤ) = A021355 n

theorem P8065996215196989065.correct : P8065996215196989065.Spec := by
  intro n
  simp only [A021355]

end A021355

/-!
# A021356: Decimal expansion of 1/352.

The programs for A021356, the canonical program `A021356.P13931686046001057747` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021356 has offset 0).

The definition of A021356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021356.P13931686046001057747

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8, a(4)=4, a(5)=0, a(6)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021356

/-- `a(n-2)` -/
def P13931686046001057747.Spec : Prop :=
  ∀ n, (P13931686046001057747.a n : ℤ) = A021356 n

theorem P13931686046001057747.correct : P13931686046001057747.Spec := by
  intro n
  simp only [A021356]

end A021356

/-!
# A021364: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-7*x)).

The programs for A021364, the canonical program `A021364.P6123824158283261816` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021364 has offset 0).

The definition of A021364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021364.P6123824158283261816

`(7^(n+3)-2*4^(n+4)+3^(n+5)-2)/72`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021364

/-- `(7^(n+3)-2*4^(n+4)+3^(n+5)-2)/72` -/
def P6123824158283261816.Spec : Prop :=
  ∀ n, P6123824158283261816.a n = (A021364 n : ℚ)

end A021364

/-! ## A021364.P9965861580039778130

`∑[A016801(n)]`
-/

namespace A021364.P9965861580039778130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021364.P9965861580039778130

namespace A021364

/-- `∑[A016801(n)]` -/
def P9965861580039778130.Spec : Prop :=
  ∀ n, P9965861580039778130.a n = A021364 n

end A021364

/-! ## A021364.P8286800886036945506

`A016223(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021364.P8286800886036945506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 3 * a (n - 1)

end

end A021364.P8286800886036945506

namespace A021364

/-- `A016223(n)+3*a(n-1)` -/
def P8286800886036945506.Spec : Prop :=
  ∀ n, P8286800886036945506.a n = A021364 n

end A021364

/-! ## A021364.P6592413049815079896

`∑[A016138(n)+4*a(n-1)]` with `a(0)=1`
-/

namespace A021364.P6592413049815079896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016138 n + 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021364.P6592413049815079896

namespace A021364

/-- `∑[A016138(n)+4*a(n-1)]` -/
def P6592413049815079896.Spec : Prop :=
  ∀ n, P6592413049815079896.a n = A021364 n

end A021364

/-! ## A021364.P4312952925267439053

`A016801(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A021364.P4312952925267439053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016801 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A021364.P4312952925267439053

namespace A021364

/-- `A016801(floor(acot(n)+n))+a(n-1)` -/
def P4312952925267439053.Spec : Prop :=
  ∀ n, P4312952925267439053.a n = A021364 n

end A021364

/-! ## A021364.P17807974236192308405

`2*A021079(n)-A021034(n)`
-/

namespace A021364.P17807974236192308405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021079 n - A021034 n

end

end A021364.P17807974236192308405

namespace A021364

/-- `2*A021079(n)-A021034(n)` -/
def P17807974236192308405.Spec : Prop :=
  ∀ n, P17807974236192308405.a n = A021364 n

end A021364

/-! ## A021364.P14477522496731648880

`A021424(n)+A021424(n)-A021754(n)`
-/

namespace A021364.P14477522496731648880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021424 n + (A021424 n - A021754 n)

end

end A021364.P14477522496731648880

namespace A021364

/-- `A021424(n)+A021424(n)-A021754(n)` -/
def P14477522496731648880.Spec : Prop :=
  ∀ n, P14477522496731648880.a n = A021364 n

end A021364

/-! ## A021364.P6549671419684790801

`2*A021424(n)-A021754(n)`
-/

namespace A021364.P6549671419684790801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021424 n - A021754 n

end

end A021364.P6549671419684790801

namespace A021364

/-- `2*A021424(n)-A021754(n)` -/
def P6549671419684790801.Spec : Prop :=
  ∀ n, P6549671419684790801.a n = A021364 n

end A021364

/-! ## A021364.P14956530900162279115

`A016223(n+1)-A016212(n+1)`
-/

namespace A021364.P14956530900162279115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016223 (n + 1) - A016212 (n + 1)

end

end A021364.P14956530900162279115

namespace A021364

/-- `A016223(n+1)-A016212(n+1)` -/
def P14956530900162279115.Spec : Prop :=
  ∀ n, P14956530900162279115.a n = A021364 n

end A021364

/-! ## A021364.P3637780632270021577

`2*A021384(n)-A021604(n)`
-/

namespace A021364.P3637780632270021577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021384 n - A021604 n

end

end A021364.P3637780632270021577

namespace A021364

/-- `2*A021384(n)-A021604(n)` -/
def P3637780632270021577.Spec : Prop :=
  ∀ n, P3637780632270021577.a n = A021364 n

end A021364

/-!
# A021368: Decimal expansion of 1/364.

The programs for A021368, the canonical program `A021368.P2847095819462443622` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021368 has offset 0).

The definition of A021368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021368.P2847095819462443622

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021368

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P2847095819462443622.Spec : Prop :=
  ∀ n, P2847095819462443622.a n = A021368 n

theorem P2847095819462443622.correct : P2847095819462443622.Spec := by
  intro n
  simp only [A021368]

end A021368

/-!
# A021369: Decimal expansion of 1/365.

The programs for A021369, the canonical program `A021369.P5143674934198486522` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021369 has offset 0).

The definition of A021369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021369.P5143674934198486522

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021369

/-- `9-a(n-4)` -/
def P5143674934198486522.Spec : Prop :=
  ∀ n, P5143674934198486522.a n = A021369 n

theorem P5143674934198486522.correct : P5143674934198486522.Spec := by
  intro n
  simp only [A021369]

end A021369

/-!
# A021373: Decimal expansion of 1/369.

The programs for A021373, the canonical program `A021373.P2741823509569145316` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021373 has offset 0).

The definition of A021373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021373.P2741823509569145316

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021373

/-- `a(n-5)` -/
def P2741823509569145316.Spec : Prop :=
  ∀ n, (P2741823509569145316.a n : ℤ) = A021373 n

theorem P2741823509569145316.correct : P2741823509569145316.Spec := by
  intro n
  simp only [A021373]

end A021373

/-!
# A021374: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-8*x)).

The programs for A021374, the canonical program `A021374.P7587042195522585219` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021374 has offset 0).

The definition of A021374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021374.P7587042195522585219

`∑[A016849(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021374

/-- `∑[A016849(n)]` -/
def P7587042195522585219.Spec : Prop :=
  ∀ n, P7587042195522585219.a n = A021374 n

theorem P7587042195522585219.correct : P7587042195522585219.Spec := by
  intro n
  simp only [A021374]

end A021374

/-! ## A021374.P4736913936991670952

`A016208(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021374.P4736913936991670952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016208 n + 8 * a (n - 1)

end

end A021374.P4736913936991670952

namespace A021374

/-- `A016208(n)+8*a(n-1)` -/
def P4736913936991670952.Spec : Prop :=
  ∀ n, P4736913936991670952.a n = A021374 n

end A021374

/-! ## A021374.P2389998989540968172

`A006096(n+3)+A006096(n+3)-A021044(n)`
-/

namespace A021374.P2389998989540968172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006096 (n + 3) + (A006096 (n + 3) - A021044 n)

end

end A021374.P2389998989540968172

namespace A021374

/-- `A006096(n+3)+A006096(n+3)-A021044(n)` -/
def P2389998989540968172.Spec : Prop :=
  ∀ n, P2389998989540968172.a n = A021374 n

end A021374

/-! ## A021374.P14455963342827780503

`(A021503(n)+A021354(n))/2`
-/

namespace A021374.P14455963342827780503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021503 n + A021354 n : ℚ) / 2

end

end A021374.P14455963342827780503

namespace A021374

/-- `(A021503(n)+A021354(n))/2` -/
def P14455963342827780503.Spec : Prop :=
  ∀ n, P14455963342827780503.a n = (A021374 n : ℚ)

end A021374

/-! ## A021374.P13082694060892948055

`∑[(A025467(n)+A016277(n))/2]`
-/

namespace A021374.P13082694060892948055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025467 n + A016277 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021374.P13082694060892948055

namespace A021374

/-- `∑[(A025467(n)+A016277(n))/2]` -/
def P13082694060892948055.Spec : Prop :=
  ∀ n, P13082694060892948055.a n = (A021374 n : ℚ)

end A021374

/-! ## A021374.P1944591069878059060

`A016224(n+1)-A016214(n+1)`
-/

namespace A021374.P1944591069878059060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 (n + 1) - A016214 (n + 1)

end

end A021374.P1944591069878059060

namespace A021374

/-- `A016224(n+1)-A016214(n+1)` -/
def P1944591069878059060.Spec : Prop :=
  ∀ n, P1944591069878059060.a n = A021374 n

end A021374

/-! ## A021374.P16359663167188970618

`2*A006096(n+3)-A021044(n)`
-/

namespace A021374.P16359663167188970618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006096 (n + 3) - A021044 n

end

end A021374.P16359663167188970618

namespace A021374

/-- `2*A006096(n+3)-A021044(n)` -/
def P16359663167188970618.Spec : Prop :=
  ∀ n, P16359663167188970618.a n = A021374 n

end A021374

/-! ## A021374.P9661049032457805774

`2*A021404(n)-A021674(n)`
-/

namespace A021374.P9661049032457805774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021404 n - A021674 n

end

end A021374.P9661049032457805774

namespace A021374

/-- `2*A021404(n)-A021674(n)` -/
def P9661049032457805774.Spec : Prop :=
  ∀ n, P9661049032457805774.a n = A021374 n

end A021374

/-!
# A021379: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-9*x)).

The programs for A021379, the canonical program `A021379.P2843175501737389197` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021379 has offset 0).

The definition of A021379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021379.P2843175501737389197

`∑[A016909(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021379

/-- `∑[A016909(n)]` -/
def P2843175501737389197.Spec : Prop :=
  ∀ n, P2843175501737389197.a n = A021379 n

theorem P2843175501737389197.correct : P2843175501737389197.Spec := by
  intro n
  simp only [A021379]

end A021379

/-! ## A021379.P4325940327769384086

`A002451(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021379.P4325940327769384086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002451 n + 3 * a (n - 1)

end

end A021379.P4325940327769384086

namespace A021379

/-- `A002451(n)+3*a(n-1)` -/
def P4325940327769384086.Spec : Prop :=
  ∀ n, P4325940327769384086.a n = A021379 n

end A021379

/-! ## A021379.P11196020507907820916

`2*A021084(n)-A021048(n)`
-/

namespace A021379.P11196020507907820916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021084 n - A021048 n

end

end A021379.P11196020507907820916

namespace A021379

/-- `2*A021084(n)-A021048(n)` -/
def P11196020507907820916.Spec : Prop :=
  ∀ n, P11196020507907820916.a n = A021379 n

end A021379

/-! ## A021379.P13427141868636713048

`A021454(n)+A021454(n)-A021772(n)`
-/

namespace A021379.P13427141868636713048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n + (A021454 n - A021772 n)

end

end A021379.P13427141868636713048

namespace A021379

/-- `A021454(n)+A021454(n)-A021772(n)` -/
def P13427141868636713048.Spec : Prop :=
  ∀ n, P13427141868636713048.a n = A021379 n

end A021379

/-! ## A021379.P12782537499444269972

`2*A021454(n)-A021772(n)`
-/

namespace A021379.P12782537499444269972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021454 n - A021772 n

end

end A021379.P12782537499444269972

namespace A021379

/-- `2*A021454(n)-A021772(n)` -/
def P12782537499444269972.Spec : Prop :=
  ∀ n, P12782537499444269972.a n = A021379 n

end A021379

/-! ## A021379.P8650016992277741424

`A021544(n)+A021634(n)-A028039(n)`
-/

namespace A021379.P8650016992277741424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A021634 n - A028039 n)

end

end A021379.P8650016992277741424

namespace A021379

/-- `A021544(n)+A021634(n)-A028039(n)` -/
def P8650016992277741424.Spec : Prop :=
  ∀ n, P8650016992277741424.a n = A021379 n

end A021379

/-!
# A021382: Decimal expansion of 1/378.

The programs for A021382, the canonical program `A021382.P16065250567674798373` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021382 has offset 0).

The definition of A021382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021382.P16065250567674798373

`xor(3, xor(a(n-2), a(n-4)))` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6, a(4)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021382

/-- `xor(3, xor(a(n-2), a(n-4)))` -/
def P16065250567674798373.Spec : Prop :=
  ∀ n, (P16065250567674798373.a n : ℤ) = A021382 n

theorem P16065250567674798373.correct : P16065250567674798373.Spec := by
  intro n
  simp only [A021382]

end A021382

/-!
# A021384: Expansion of 1/((1-x)(1-3x)(1-4x)(1-10x)).

The programs for A021384, the canonical program `A021384.P6289636504534353529` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021384 has offset 0).

The definition of A021384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021384.P6289636504534353529

`(10^(n+3)-21*4^(n+3)+27*3^(n+3)-7)/378`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021384

/-- `(10^(n+3)-21*4^(n+3)+27*3^(n+3)-7)/378` -/
def P6289636504534353529.Spec : Prop :=
  ∀ n, P6289636504534353529.a n = (A021384 n : ℚ)

end A021384

/-! ## A021384.P5325917468494992297

`∑[A016981(n)]`
-/

namespace A021384.P5325917468494992297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021384.P5325917468494992297

namespace A021384

/-- `∑[A016981(n)]` -/
def P5325917468494992297.Spec : Prop :=
  ∀ n, P5325917468494992297.a n = A021384 n

end A021384

/-! ## A021384.P1605973028440029627

`2*A021092(n)-A021049(n)`
-/

namespace A021384.P1605973028440029627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021092 n - A021049 n

end

end A021384.P1605973028440029627

namespace A021384

/-- `2*A021092(n)-A021049(n)` -/
def P1605973028440029627.Spec : Prop :=
  ∀ n, P1605973028440029627.a n = A021384 n

end A021384

/-! ## A021384.P2110325104021228909

`2*A021464(n)-A021774(n)`
-/

namespace A021384.P2110325104021228909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021464 n - A021774 n

end

end A021384.P2110325104021228909

namespace A021384

/-- `2*A021464(n)-A021774(n)` -/
def P2110325104021228909.Spec : Prop :=
  ∀ n, P2110325104021228909.a n = A021384 n

end A021384

/-! ## A021384.P16184210736680711670

`A021604(n)+A021604(n)-A028040(n)`
-/

namespace A021384.P16184210736680711670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n + (A021604 n - A028040 n)

end

end A021384.P16184210736680711670

namespace A021384

/-- `A021604(n)+A021604(n)-A028040(n)` -/
def P16184210736680711670.Spec : Prop :=
  ∀ n, P16184210736680711670.a n = A021384 n

end A021384

/-! ## A021384.P11539415709373925478

`2*A021604(n)-A028040(n)`
-/

namespace A021384.P11539415709373925478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021604 n - A028040 n

end

end A021384.P11539415709373925478

namespace A021384

/-- `2*A021604(n)-A028040(n)` -/
def P11539415709373925478.Spec : Prop :=
  ∀ n, P11539415709373925478.a n = A021384 n

end A021384

/-! ## A021384.P17289453855959954398

`A016225(n+1)-A016215(n+1)`
-/

namespace A021384.P17289453855959954398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 (n + 1) - A016215 (n + 1)

end

end A021384.P17289453855959954398

namespace A021384

/-- `A016225(n+1)-A016215(n+1)` -/
def P17289453855959954398.Spec : Prop :=
  ∀ n, P17289453855959954398.a n = A021384 n

end A021384

/-!
# A021388: Decimal expansion of 1/384.

The programs for A021388, the canonical program `A021388.P2281994502565264326` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021388 has offset 0).

The definition of A021388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021388.P2281994502565264326

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6, a(4)=0, a(5)=4, a(6)=1, a(7)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021388

/-- `a(n-1)` -/
def P2281994502565264326.Spec : Prop :=
  ∀ n, (P2281994502565264326.a n : ℤ) = A021388 n

theorem P2281994502565264326.correct : P2281994502565264326.Spec := by
  intro n
  simp only [A021388]

end A021388

/-!
# A021389: Decimal expansion of 1/385.

The programs for A021389, the canonical program `A021389.P6483952865592169804` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021389 has offset 0).

The definition of A021389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021389.P6483952865592169804

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021389

/-- `9-a(n-3)` -/
def P6483952865592169804.Spec : Prop :=
  ∀ n, P6483952865592169804.a n = A021389 n

theorem P6483952865592169804.correct : P6483952865592169804.Spec := by
  intro n
  simp only [A021389]

end A021389

/-!
# A021394: Expansion of 1/((1-x)(1-3x)(1-4x)(1-11x)).

The programs for A021394, there is no canonical definition to state claims against.
-/

/-! ## A021394.P12316072186541631260

`∑[A017065(n)]`
-/

namespace A021394.P12316072186541631260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021394.P12316072186541631260

/-! ## A021394.P7771420809357095150

`A016226(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021394.P7771420809357095150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016226 n + 3 * a (n - 1)

end

end A021394.P7771420809357095150

/-! ## A021394.P15355888528840594636

`A016208(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A021394.P15355888528840594636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016208 n + 11 * a (n - 1)

end

end A021394.P15355888528840594636

/-! ## A021394.P11923462248276239655

`2*A021094(n)-A021054(n)`
-/

namespace A021394.P11923462248276239655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021094 n - A021054 n

end

end A021394.P11923462248276239655

/-! ## A021394.P12818503007031464922

`2*A021474(n)-A021784(n)`
-/

namespace A021394.P12818503007031464922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021474 n - A021784 n

end

end A021394.P12818503007031464922

/-! ## A021394.P15393196033141369876

`A016226(n)+A017065(n)-A016216(n)`
-/

namespace A021394.P15393196033141369876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n + (A017065 n - A016216 n)

end

end A021394.P15393196033141369876

/-! ## A021394.P4110406726827949441

`A016226(n+1)-A016216(n+1)`
-/

namespace A021394.P4110406726827949441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 (n + 1) - A016216 (n + 1)

end

end A021394.P4110406726827949441

/-! ## A021394.P15784774195077514833

`(A017065(n+1)-A016226(n+1))/2`
-/

namespace A021394.P15784774195077514833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017065 (n + 1) - A016226 (n + 1) : ℚ) / 2

end

end A021394.P15784774195077514833

