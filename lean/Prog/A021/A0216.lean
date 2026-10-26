import SequenceMachineLib.Basic
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C020
import Seq.B001.C000
import Seq.B001.C007
import Seq.B002.C000
import Seq.Opaque.C001
import Seq.Opaque.C007
import Seq.Opaque.C013
import Seq.Opaque.C021

/-!
# A021604: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)*(1-10*x)).

The programs for A021604, the canonical program `A021604.P10045866734448486812` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021604 has offset 0).

The definition of A021604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021604.P10045866734448486812

`∑[A017999(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021604

/-- `∑[A017999(n)]` -/
def P10045866734448486812.Spec : Prop :=
  ∀ n, P10045866734448486812.a n = A021604 n

theorem P10045866734448486812.correct : P10045866734448486812.Spec := by
  intro n
  simp only [A021604]

end A021604

/-! ## A021604.P16148622042071518701

`2*A021384(n)-A021364(n)`
-/

namespace A021604.P16148622042071518701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021384 n - A021364 n

end

end A021604.P16148622042071518701

namespace A021604

/-- `2*A021384(n)-A021364(n)` -/
def P16148622042071518701.Spec : Prop :=
  ∀ n, P16148622042071518701.a n = A021604 n

end A021604

/-! ## A021604.P17267961022303217444

`A021364(n)+A028040(n)-A021384(n)`
-/

namespace A021604.P17267961022303217444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021364 n + (A028040 n - A021384 n)

end

end A021604.P17267961022303217444

namespace A021604

/-- `A021364(n)+A028040(n)-A021384(n)` -/
def P17267961022303217444.Spec : Prop :=
  ∀ n, P17267961022303217444.a n = A021604 n

end A021604

/-! ## A021604.P12753880108543014573

`(A028040(n)+A021384(n))/2`
-/

namespace A021604.P12753880108543014573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028040 n + A021384 n : ℚ) / 2

end

end A021604.P12753880108543014573

namespace A021604

/-- `(A028040(n)+A021384(n))/2` -/
def P12753880108543014573.Spec : Prop :=
  ∀ n, P12753880108543014573.a n = (A021604 n : ℚ)

end A021604

/-! ## A021604.P3376917609962066475

`2*A021714(n)-A024444(n)`
-/

namespace A021604.P3376917609962066475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021714 n - A024444 n

end

end A021604.P3376917609962066475

namespace A021604

/-- `2*A021714(n)-A024444(n)` -/
def P3376917609962066475.Spec : Prop :=
  ∀ n, P3376917609962066475.a n = A021604 n

end A021604

/-! ## A021604.P16443720389608526447

`A021884(n)+A021984(n)-A028050(n)`
-/

namespace A021604.P16443720389608526447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n + (A021984 n - A028050 n)

end

end A021604.P16443720389608526447

namespace A021604

/-- `A021884(n)+A021984(n)-A028050(n)` -/
def P16443720389608526447.Spec : Prop :=
  ∀ n, P16443720389608526447.a n = A021604 n

end A021604

/-!
# A021610: Decimal expansion of 1/606.

The programs for A021610, the canonical program `A021610.P9808131282598409952` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021610 has offset 0).

The definition of A021610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021610.P9808131282598409952

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021610

/-- `a(n-4)` -/
def P9808131282598409952.Spec : Prop :=
  ∀ n, (P9808131282598409952.a n : ℤ) = A021610 n

theorem P9808131282598409952.correct : P9808131282598409952.Spec := by
  intro n
  simp only [A021610]

end A021610

/-!
# A021614: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)*(1-11*x)).

The programs for A021614, there is no canonical definition to state claims against.
-/

/-! ## A021614.P17922554467856252207

`∑[A018054(n)]`
-/

namespace A021614.P17922554467856252207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021614.P17922554467856252207

/-! ## A021614.P12291019625387564340

`A016212(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A021614.P12291019625387564340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016212 n + 11 * a (n - 1)

end

end A021614.P12291019625387564340

/-! ## A021614.P15846002988961554874

`(A021694(n)+A021594(n))/2`
-/

namespace A021614.P15846002988961554874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021694 n + A021594 n : ℚ) / 2

end

end A021614.P15846002988961554874

/-! ## A021614.P5917698215206641366

`(A028041(n)+A021394(n))/2`
-/

namespace A021614.P5917698215206641366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028041 n + A021394 n : ℚ) / 2

end

end A021614.P5917698215206641366

/-! ## A021614.P14031759774684997299

`∑[A225469(A133263(n+2))]`
-/

namespace A021614.P14031759774684997299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (A133263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021614.P14031759774684997299

/-! ## A021614.P9101077388637394499

`∑[A225469(A055998(n)+5)]`
-/

namespace A021614.P9101077388637394499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (A055998 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021614.P9101077388637394499

/-! ## A021614.P13198687867883443274

`∑[A225469(A167614(n+1)-1)]`
-/

namespace A021614.P13198687867883443274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (A167614 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021614.P13198687867883443274

/-! ## A021614.P5482681817750937822

`∑[A225469(A034856(n+1)+4)]`
-/

namespace A021614.P5482681817750937822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (A034856 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021614.P5482681817750937822

/-!
# A021619: Decimal expansion of 1/615.

The programs for A021619, the canonical program `A021619.P7577176846994391713` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021619 has offset 0).

The definition of A021619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021619.P7577176846994391713

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=2, a(5)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021619

/-- `a(n-5)` -/
def P7577176846994391713.Spec : Prop :=
  ∀ n, (P7577176846994391713.a n : ℤ) = A021619 n

theorem P7577176846994391713.correct : P7577176846994391713.Spec := by
  intro n
  simp only [A021619]

end A021619

/-!
# A021620: Decimal expansion of 1/616.

The programs for A021620, the canonical program `A021620.P16273598319539771470` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021620 has offset 0).

The definition of A021620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021620.P16273598319539771470

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021620

/-- `9-a(n-3)` -/
def P16273598319539771470.Spec : Prop :=
  ∀ n, P16273598319539771470.a n = A021620 n

theorem P16273598319539771470.correct : P16273598319539771470.Spec := by
  intro n
  simp only [A021620]

end A021620

/-!
# A021628: Decimal expansion of 1/624.

The programs for A021628, the canonical program `A021628.P12530158048694254283` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021628 has offset 0).

The definition of A021628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021628.P12530158048694254283

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=0, a(5)=2, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021628

/-- `6-a(n-3)` -/
def P12530158048694254283.Spec : Prop :=
  ∀ n, P12530158048694254283.a n = A021628 n

theorem P12530158048694254283.correct : P12530158048694254283.Spec := by
  intro n
  simp only [A021628]

end A021628

/-!
# A021629: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)*(1-12*x)).

The programs for A021629, there is no canonical definition to state claims against.
-/

/-! ## A021629.P12305838673404477472

`∑[A018055(n)]`
-/

namespace A021629.P12305838673404477472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021629.P12305838673404477472

/-! ## A021629.P17350709589234452339

`A016255(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021629.P17350709589234452339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016255 n + 3 * a (n - 1)

end

end A021629.P17350709589234452339

/-! ## A021629.P4274865654402842254

`A016212(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021629.P4274865654402842254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016212 n + 12 * a (n - 1)

end

end A021629.P4274865654402842254

/-! ## A021629.P9477119456490866046

`∑[A016138(n)+12*a(n-1)]` with `a(0)=1`
-/

namespace A021629.P9477119456490866046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016138 n + 12 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021629.P9477119456490866046

/-! ## A021629.P16911349289298866645

`2*A021064(n)-A021034(n)`
-/

namespace A021629.P16911349289298866645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021064 n - A021034 n

end

end A021629.P16911349289298866645

/-! ## A021629.P4911793809805754156

`(A022456(n)+A021484(n))/2`
-/

namespace A021629.P4911793809805754156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022456 n + A021484 n : ℚ) / 2

end

end A021629.P4911793809805754156

/-! ## A021629.P16320372936471388694

`A021544(n)+A024440(n)-A021674(n)`
-/

namespace A021629.P16320372936471388694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A024440 n - A021674 n)

end

end A021629.P16320372936471388694

/-! ## A021629.P1326791257316765923

`(A022456(n)+A021484(n))*2^A133574(A001316(n))`
-/

namespace A021629.P1326791257316765923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022456 n + A021484 n : ℚ) * (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A021629.P1326791257316765923

/-!
# A021634: Expansion of 1/((1-x)(1-3x)(1-8x)(1-9x)).

The programs for A021634, the canonical program `A021634.P3286273434263155847` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021634 has offset 0).

The definition of A021634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021634.P3286273434263155847

`∑[A018056(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021634

/-- `∑[A018056(n)]` -/
def P3286273434263155847.Spec : Prop :=
  ∀ n, P3286273434263155847.a n = A021634 n

theorem P3286273434263155847.correct : P3286273434263155847.Spec := by
  intro n
  simp only [A021634]

end A021634

/-! ## A021634.P9619124106844985630

`A016214(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021634.P9619124106844985630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 9 * a (n - 1)

end

end A021634.P9619124106844985630

namespace A021634

/-- `A016214(n)+9*a(n-1)` -/
def P9619124106844985630.Spec : Prop :=
  ∀ n, P9619124106844985630.a n = A021634 n

end A021634

/-! ## A021634.P1497020820580961034

`2*A021594(n)-A021544(n)`
-/

namespace A021634.P1497020820580961034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A021544 n

end

end A021634.P1497020820580961034

namespace A021634

/-- `2*A021594(n)-A021544(n)` -/
def P1497020820580961034.Spec : Prop :=
  ∀ n, P1497020820580961034.a n = A021634 n

end A021634

/-! ## A021634.P10881752592161710315

`2*A025948(n)-∑[A025948(n)]`
-/

namespace A021634.P10881752592161710315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025948 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021634.P10881752592161710315

namespace A021634

/-- `2*A025948(n)-∑[A025948(n)]` -/
def P10881752592161710315.Spec : Prop :=
  ∀ n, P10881752592161710315.a n = A021634 n

end A021634

/-! ## A021634.P7354070127097857805

`A021374(n)+A021904(n)-A021379(n)`
-/

namespace A021634.P7354070127097857805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021374 n + (A021904 n - A021379 n)

end

end A021634.P7354070127097857805

namespace A021634

/-- `A021374(n)+A021904(n)-A021379(n)` -/
def P7354070127097857805.Spec : Prop :=
  ∀ n, P7354070127097857805.a n = A021634 n

end A021634

/-! ## A021634.P2620201289015362251

`2*A021644(n)-A021684(n)`
-/

namespace A021634.P2620201289015362251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021644 n - A021684 n

end

end A021634.P2620201289015362251

namespace A021634

/-- `2*A021644(n)-A021684(n)` -/
def P2620201289015362251.Spec : Prop :=
  ∀ n, P2620201289015362251.a n = A021634 n

end A021634

/-!
# A021644: Expansion of 1/((1-x)*(1-3*x)*(1-8*x)*(1-10*x)).

The programs for A021644, the canonical program `A021644.P7472038049559353068` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021644 has offset 0).

The definition of A021644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021644.P7472038049559353068

`∑[A018069(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021644

/-- `∑[A018069(n)]` -/
def P7472038049559353068.Spec : Prop :=
  ∀ n, P7472038049559353068.a n = A021644 n

theorem P7472038049559353068.correct : P7472038049559353068.Spec := by
  intro n
  simp only [A021644]

end A021644

/-! ## A021644.P5259361520049829357

`A016214(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021644.P5259361520049829357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 10 * a (n - 1)

end

end A021644.P5259361520049829357

namespace A021644

/-- `A016214(n)+10*a(n-1)` -/
def P5259361520049829357.Spec : Prop :=
  ∀ n, P5259361520049829357.a n = A021644 n

end A021644

/-! ## A021644.P77478796374769738

`a(n-1)+a(n-1)+A016257(n)+a(n-1)` with `a(0)=1`
-/

namespace A021644.P77478796374769738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (A016257 n + a (n - 1)))

end

end A021644.P77478796374769738

namespace A021644

/-- `a(n-1)+a(n-1)+A016257(n)+a(n-1)` -/
def P77478796374769738.Spec : Prop :=
  ∀ n, P77478796374769738.a n = A021644 n

end A021644

/-! ## A021644.P17299252397764202662

`2*A021514(n)-A021503(n)`
-/

namespace A021644.P17299252397764202662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021514 n - A021503 n

end

end A021644.P17299252397764202662

namespace A021644

/-- `2*A021514(n)-A021503(n)` -/
def P17299252397764202662.Spec : Prop :=
  ∀ n, P17299252397764202662.a n = A021644 n

end A021644

/-! ## A021644.P9779738856344396226

`(A021684(n)+A021634(n))/2`
-/

namespace A021644.P9779738856344396226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021684 n + A021634 n : ℚ) / 2

end

end A021644.P9779738856344396226

namespace A021644

/-- `(A021684(n)+A021634(n))/2` -/
def P9779738856344396226.Spec : Prop :=
  ∀ n, P9779738856344396226.a n = (A021644 n : ℚ)

end A021644

/-!
# A021654: Decimal expansion of 1/650.

The programs for A021654, the canonical program `A021654.P7622556472301235842` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021654 has offset 0).

The definition of A021654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021654.P7622556472301235842

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021654

/-- `9-a(n-3)` -/
def P7622556472301235842.Spec : Prop :=
  ∀ n, P7622556472301235842.a n = A021654 n

theorem P7622556472301235842.correct : P7622556472301235842.Spec := by
  intro n
  simp only [A021654]

end A021654

/-!
# A021660: Decimal expansion of 1/656.

The programs for A021660, the canonical program `A021660.P18242849919771839376` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021660 has offset 0).

The definition of A021660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021660.P18242849919771839376

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=2, a(5)=4, a(6)=3, a(7)=9, a(8)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021660

/-- `a(n-5)` -/
def P18242849919771839376.Spec : Prop :=
  ∀ n, (P18242849919771839376.a n : ℤ) = A021660 n

theorem P18242849919771839376.correct : P18242849919771839376.Spec := by
  intro n
  simp only [A021660]

end A021660

/-!
# A021664: Expansion of 1/((1-x)(1-3x)(1-8x)(1-11x)).

The programs for A021664, the canonical program `A021664.P1079443363074872645` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021664 has offset 0).

The definition of A021664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021664.P1079443363074872645

`3^(n+3)/80-1/140+11^(n+3)/240-8^(n+3)/105`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021664

/-- `3^(n+3)/80-1/140+11^(n+3)/240-8^(n+3)/105` -/
def P1079443363074872645.Spec : Prop :=
  ∀ n, P1079443363074872645.a n = (A021664 n : ℚ)

end A021664

/-! ## A021664.P11911492463034350667

`∑[A018070(n)]`
-/

namespace A021664.P11911492463034350667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021664.P11911492463034350667

namespace A021664

/-- `∑[A018070(n)]` -/
def P11911492463034350667.Spec : Prop :=
  ∀ n, P11911492463034350667.a n = A021664 n

end A021664

/-! ## A021664.P16622811805338108949

`∑[A016140(n)+11*a(n-1)]` with `a(0)=1`
-/

namespace A021664.P16622811805338108949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016140 n + 11 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021664.P16622811805338108949

namespace A021664

/-- `∑[A016140(n)+11*a(n-1)]` -/
def P16622811805338108949.Spec : Prop :=
  ∀ n, P16622811805338108949.a n = A021664 n

end A021664

/-! ## A021664.P15807751585653417824

`∑[3*a(n-1)+A139746(n+1)/3]` with `a(0)=1`
-/

namespace A021664.P15807751585653417824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) + (A139746 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021664.P15807751585653417824

namespace A021664

/-- `∑[3*a(n-1)+A139746(n+1)/3]` -/
def P15807751585653417824.Spec : Prop :=
  ∀ n, P15807751585653417824.a n = (A021664 n : ℚ)

end A021664

/-! ## A021664.P17363501626910251496

`(A024439(n)+A021544(n))/2`
-/

namespace A021664.P17363501626910251496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024439 n + A021544 n : ℚ) / 2

end

end A021664.P17363501626910251496

namespace A021664

/-- `(A024439(n)+A021544(n))/2` -/
def P17363501626910251496.Spec : Prop :=
  ∀ n, P17363501626910251496.a n = (A021664 n : ℚ)

end A021664

/-!
# A021670: Decimal expansion of 1/666.

The programs for A021670, the canonical program `A021670.P9317894339318471636` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021670 has offset 0).

The definition of A021670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021670.P9317894339318471636

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021670

/-- `a(n-3)` -/
def P9317894339318471636.Spec : Prop :=
  ∀ n, (P9317894339318471636.a n : ℤ) = A021670 n

theorem P9317894339318471636.correct : P9317894339318471636.Spec := by
  intro n
  simp only [A021670]

end A021670

/-!
# A021674: Expansion of 1/((1-x)(1-3x)(1-8x)(1-12x)).

The programs for A021674, there is no canonical definition to state claims against.
-/

/-! ## A021674.P2726297559929674018

`∑[A018071(n)]`
-/

namespace A021674.P2726297559929674018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021674.P2726297559929674018

/-! ## A021674.P9780421883058353104

`A016217(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021674.P9780421883058353104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016217 n + 8 * a (n - 1)

end

end A021674.P9780421883058353104

/-! ## A021674.P7237103126883817166

`A016214(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021674.P7237103126883817166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 12 * a (n - 1)

end

end A021674.P7237103126883817166

/-! ## A021674.P8396332929913230660

`A018071(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A021674.P8396332929913230660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018071 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A021674.P8396332929913230660

/-! ## A021674.P11641982801322868286

`2*A021404(n)-A021374(n)`
-/

namespace A021674.P11641982801322868286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021404 n - A021374 n

end

end A021674.P11641982801322868286

/-! ## A021674.P14935384177797472256

`(A021724(n)+A021644(n))/2`
-/

namespace A021674.P14935384177797472256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021724 n + A021644 n : ℚ) / 2

end

end A021674.P14935384177797472256

/-! ## A021674.P1465743891787555758

`2*A025951(n)-∑[A025951(n)]`
-/

namespace A021674.P1465743891787555758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021674.P1465743891787555758

/-! ## A021674.P11482374513703433139

`A021544(n)+A024440(n)-A021629(n)`
-/

namespace A021674.P11482374513703433139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A024440 n - A021629 n)

end

end A021674.P11482374513703433139

/-!
# A021679: Decimal expansion of 1/675.

The programs for A021679, the canonical program `A021679.P2723175970487203437` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021679 has offset 0).

The definition of A021679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021679.P2723175970487203437

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021679

/-- `a(n-3)` -/
def P2723175970487203437.Spec : Prop :=
  ∀ n, (P2723175970487203437.a n : ℤ) = A021679 n

theorem P2723175970487203437.correct : P2723175970487203437.Spec := by
  intro n
  simp only [A021679]

end A021679

/-!
# A021684: Expansion of 1/((1-x)*(1-3*x)*(1-9*x)*(1-10*x)).

The programs for A021684, there is no canonical definition to state claims against.
-/

/-! ## A021684.P7112948807583240114

`∑[A018090(n)]`
-/

namespace A021684.P7112948807583240114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021684.P7112948807583240114

/-! ## A021684.P4613769980039214081

`2*A021644(n)-A021634(n)`
-/

namespace A021684.P4613769980039214081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021644 n - A021634 n

end

end A021684.P4613769980039214081

/-! ## A021684.P14963524868528561397

`(A024170(n)+A021514(n))/2`
-/

namespace A021684.P14963524868528561397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024170 n + A021514 n : ℚ) / 2

end

end A021684.P14963524868528561397

/-! ## A021684.P16420419875579554188

`A021048(n)+A025952(n)-A021049(n)`
-/

namespace A021684.P16420419875579554188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021048 n + (A025952 n - A021049 n)

end

end A021684.P16420419875579554188

/-! ## A021684.P13969695179006718078

`2*A021694(n)-A021714(n)`
-/

namespace A021684.P13969695179006718078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021714 n

end

end A021684.P13969695179006718078

/-!
# A021689: Decimal expansion of 1/685.

The programs for A021689, the canonical program `A021689.P8782891051480399692` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021689 has offset 0).

The definition of A021689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021689.P8782891051480399692

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021689

/-- `9-a(n-4)` -/
def P8782891051480399692.Spec : Prop :=
  ∀ n, P8782891051480399692.a n = A021689 n

theorem P8782891051480399692.correct : P8782891051480399692.Spec := by
  intro n
  simp only [A021689]

end A021689

/-!
# A021694: Expansion of 1/((1-x)(1-3x)(1-9x)(1-11x)).

The programs for A021694, there is no canonical definition to state claims against.
-/

/-! ## A021694.P15553270653693579504

`∑[A018091(n)]`
-/

namespace A021694.P15553270653693579504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021694.P15553270653693579504

/-! ## A021694.P11949888131678283157

`2*A021614(n)-A021594(n)`
-/

namespace A021694.P11949888131678283157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021614 n - A021594 n

end

end A021694.P11949888131678283157

/-! ## A021694.P13398554053913932926

`A021454(n)+A023540(n)-A021474(n)`
-/

namespace A021694.P13398554053913932926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n + (A023540 n - A021474 n)

end

end A021694.P13398554053913932926

/-! ## A021694.P15075251469726219581

`(A021714(n)+A021684(n))/2`
-/

namespace A021694.P15075251469726219581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021714 n + A021684 n : ℚ) / 2

end

end A021694.P15075251469726219581

/-! ## A021694.P5947392224608256205

`(A024442(n)+A021594(n))/2`
-/

namespace A021694.P5947392224608256205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024442 n + A021594 n : ℚ) / 2

end

end A021694.P5947392224608256205

/-! ## A021694.P12511255753338489011

`(A025953(n)+A021294(n))/2`
-/

namespace A021694.P12511255753338489011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025953 n + A021294 n : ℚ) / 2

end

end A021694.P12511255753338489011

/-!
# A021695: Decimal expansion of 1/691.

The programs for A021695, there is no canonical definition to state claims against.
-/

/-! ## A021695.P16816154717480682513

`A340066(n+18)`
-/

namespace A021695.P16816154717480682513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340066 (n + 18 + 1)

end

end A021695.P16816154717480682513

/-!
# A021697: Decimal expansion of 1/693.

The programs for A021697, the canonical program `A021697.P12281468467126722943` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021697 has offset 0).

The definition of A021697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021697.P12281468467126722943

`4-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021697

/-- `4-a(n-3)` -/
def P12281468467126722943.Spec : Prop :=
  ∀ n, P12281468467126722943.a n = A021697 n

theorem P12281468467126722943.correct : P12281468467126722943.Spec := by
  intro n
  simp only [A021697]

end A021697

