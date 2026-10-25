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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129500: a(n) = (A116151(n+1) - A116151(n)) / A002110(n).

The programs for A129500, there is no canonical definition to state claims against.
-/

/-! ## A129500.P13564729364937141983

`(A116151(n+2)-A116151(n+1))/A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129500.P13564729364937141983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116151 (n + 2) - A116151 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A129500.P13564729364937141983

/-! ## A129500.P11670224123288545616

`floor(A116151(n+2)/A002110(n+1))`
-/

namespace A129500.P11670224123288545616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116151 (n + 2) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A129500.P11670224123288545616

/-! ## A129500.P7005364744076495390

`Δ[A116151(n+1)]/A002110(n+1)`
-/

namespace A129500.P7005364744076495390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116151 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A002110 (n + 1) : ℚ)

end

end A129500.P7005364744076495390

/-!
# A129501: Triangle read by rows: A103994 * A115361 as infinite lower triangular matrices.

The programs for A129501, there is no canonical definition to state claims against.
-/

/-! ## A129501.P4406755433993403640

`A103994(n+1)*A129353(n+1)`
-/

namespace A129501.P4406755433993403640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (n + 1) * A129353 (n + 1)

end

end A129501.P4406755433993403640

/-! ## A129501.P12235409847863548497

`A001511(A010766(n+1))*A103994(n+1)`
-/

namespace A129501.P12235409847863548497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A010766 (n + 1)).toNat * A103994 (n + 1)

end

end A129501.P12235409847863548497

/-! ## A129501.P5025502322203014984

`A001511(A049834(n+1))*A103994(n+1)`
-/

namespace A129501.P5025502322203014984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A049834 (n + 1)).toNat * A103994 (n + 1)

end

end A129501.P5025502322203014984

/-! ## A129501.P13154285222372238256

`A001511(A054531(n+1))*A103994(n+1)`
-/

namespace A129501.P13154285222372238256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A054531 (n + 1)).toNat * A103994 (n + 1)

end

end A129501.P13154285222372238256

/-! ## A129501.P10201261143294265713

`A001511(A051537(n+1))*A103994(n+1)`
-/

namespace A129501.P10201261143294265713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A051537 (n + 1)).toNat * A103994 (n + 1)

end

end A129501.P10201261143294265713

/-!
# A129502: For n=2^k, a(n) = binomial(k + 2, 2), else 0.

The programs for A129502, the canonical program `A129502.P17986608590404691632` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129502 has offset 1).

The definition of A129502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129502.P7841169798725584851

`C(val(n+1, 2)+2, 2)*char[2^n-1]`
-/

namespace A129502.P7841169798725584851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 2) 2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A129502.P7841169798725584851

namespace A129502

/-- `C(val(n+1, 2)+2, 2)*char[2^n-1]` -/
def P7841169798725584851.Spec : Prop :=
  ∀ n, (P7841169798725584851.a n : ℤ) = A129502 (n + 1)

end A129502

/-! ## A129502.P16104853440597266329

`∑{d}[n+1, A317673(#)]`
-/

namespace A129502.P16104853440597266329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317673 d

end

end A129502.P16104853440597266329

namespace A129502

/-- `∑{d}[n+1, A317673(#)]` -/
def P16104853440597266329.Spec : Prop :=
  ∀ n, P16104853440597266329.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P16959678372241732944

`Δ[A000292(ceil(log2(n+1)))]`
-/

namespace A129502.P16959678372241732944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129502.P16959678372241732944

namespace A129502

/-- `Δ[A000292(ceil(log2(n+1)))]` -/
def P16959678372241732944.Spec : Prop :=
  ∀ n, P16959678372241732944.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P17986608590404691632

`C(A100995(2*(n+1))+1, 2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129502

/-- `C(A100995(2*(n+1))+1, 2)` -/
def P17986608590404691632.Spec : Prop :=
  ∀ n, (P17986608590404691632.a n : ℤ) = A129502 (n + 1)

theorem P17986608590404691632.correct : P17986608590404691632.Spec := by
  intro n
  simp only [A129502, Nat.add_sub_cancel]

end A129502

/-! ## A129502.P10053779583586257848

`char[2^n-1]*A007425(n+1)`
-/

namespace A129502.P10053779583586257848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007425 (n + 1)

end

end A129502.P10053779583586257848

namespace A129502

/-- `char[2^n-1]*A007425(n+1)` -/
def P10053779583586257848.Spec : Prop :=
  ∀ n, P10053779583586257848.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P8363492619321100264

`char[2^n-1]*A184389(n+1)`
-/

namespace A129502.P8363492619321100264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A184389 (n + 1)

end

end A129502.P8363492619321100264

namespace A129502

/-- `char[2^n-1]*A184389(n+1)` -/
def P8363492619321100264.Spec : Prop :=
  ∀ n, P8363492619321100264.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P3381562649930213346

`∏{e}[n+1, C(#+2, 2)]*A036987(n)`
-/

namespace A129502.P3381562649930213346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ) * A036987 n

end

end A129502.P3381562649930213346

namespace A129502

/-- `∏{e}[n+1, C(#+2, 2)]*A036987(n)` -/
def P3381562649930213346.Spec : Prop :=
  ∀ n, P3381562649930213346.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P14885162861165248017

`∑[A104117(n+1)]*char[2^n-1]`
-/

namespace A129502.P14885162861165248017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129502.P14885162861165248017

namespace A129502

/-- `∑[A104117(n+1)]*char[2^n-1]` -/
def P14885162861165248017.Spec : Prop :=
  ∀ n, P14885162861165248017.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P54051450283368161

`char[2^n-1]*A000217(val(n+1, 2)+1)`
-/

namespace A129502.P54051450283368161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000217 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A129502.P54051450283368161

namespace A129502

/-- `char[2^n-1]*A000217(val(n+1, 2)+1)` -/
def P54051450283368161.Spec : Prop :=
  ∀ n, P54051450283368161.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P3150338765303862349

`A000217(A104117(n+1))`
-/

namespace A129502.P3150338765303862349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A104117 (n + 1)).toNat

end

end A129502.P3150338765303862349

namespace A129502

/-- `A000217(A104117(n+1))` -/
def P3150338765303862349.Spec : Prop :=
  ∀ n, P3150338765303862349.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P13273853545060368608

`A036987(n)*A071018(n)`
-/

namespace A129502.P13273853545060368608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A071018 n

end

end A129502.P13273853545060368608

namespace A129502

/-- `A036987(n)*A071018(n)` -/
def P13273853545060368608.Spec : Prop :=
  ∀ n, P13273853545060368608.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P8005476920196595958

`∑{d}[A099894(n), A000005(#)]`
-/

namespace A129502.P8005476920196595958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A129502.P8005476920196595958

namespace A129502

/-- `∑{d}[A099894(n), A000005(#)]` -/
def P8005476920196595958.Spec : Prop :=
  ∀ n, P8005476920196595958.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P10963919042775843264

`∑{d}[A099894(n), A349606(#)]`
-/

namespace A129502.P10963919042775843264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349606 d

end

end A129502.P10963919042775843264

namespace A129502

/-- `∑{d}[A099894(n), A349606(#)]` -/
def P10963919042775843264.Spec : Prop :=
  ∀ n, P10963919042775843264.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P464540798429992162

`A000217(A100995(2*(n+1)))`
-/

namespace A129502.P464540798429992162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A100995 (2 * (n + 1))).toNat

end

end A129502.P464540798429992162

namespace A129502

/-- `A000217(A100995(2*(n+1)))` -/
def P464540798429992162.Spec : Prop :=
  ∀ n, P464540798429992162.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P14743078465987377961

`A007425(n+1)*A036987(n)`
-/

namespace A129502.P14743078465987377961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A036987 n

end

end A129502.P14743078465987377961

namespace A129502

/-- `A007425(n+1)*A036987(n)` -/
def P14743078465987377961.Spec : Prop :=
  ∀ n, P14743078465987377961.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P16752091464538486952

`A036987(n)*A067587(n+1)`
-/

namespace A129502.P16752091464538486952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A067587 (n + 1)

end

end A129502.P16752091464538486952

namespace A129502

/-- `A036987(n)*A067587(n+1)` -/
def P16752091464538486952.Spec : Prop :=
  ∀ n, P16752091464538486952.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P4521958811532164247

`A036987(n)*A086222(n+1)`
-/

namespace A129502.P4521958811532164247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A086222 (n + 1)

end

end A129502.P4521958811532164247

namespace A129502

/-- `A036987(n)*A086222(n+1)` -/
def P4521958811532164247.Spec : Prop :=
  ∀ n, P4521958811532164247.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P12857264683148344708

`A036987(n)*A115364(n+1)`
-/

namespace A129502.P12857264683148344708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A115364 (n + 1)

end

end A129502.P12857264683148344708

namespace A129502

/-- `A036987(n)*A115364(n+1)` -/
def P12857264683148344708.Spec : Prop :=
  ∀ n, P12857264683148344708.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P6548408519463664444

`A036987(n)*A129628(n+1)`
-/

namespace A129502.P6548408519463664444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A129628 (n + 1)

end

end A129502.P6548408519463664444

namespace A129502

/-- `A036987(n)*A129628(n+1)` -/
def P6548408519463664444.Spec : Prop :=
  ∀ n, P6548408519463664444.a n = A129502 (n + 1)

end A129502

/-! ## A129502.P4259004612017140241

`A036987(n)*A182627(n+1)`
-/

namespace A129502.P4259004612017140241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A182627 (n + 1)

end

end A129502.P4259004612017140241

namespace A129502

/-- `A036987(n)*A182627(n+1)` -/
def P4259004612017140241.Spec : Prop :=
  ∀ n, P4259004612017140241.a n = A129502 (n + 1)

end A129502

/-!
# A129503: Pascal's Fredholm-Rueppel triangle.

The programs for A129503, there is no canonical definition to state claims against.
-/

/-! ## A129503.P10084398212883307857

`A036987(A002262(n))*A077592(n+1)`
-/

namespace A129503.P10084398212883307857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A002262 n).toNat * A077592 (n + 1)

end

end A129503.P10084398212883307857

/-! ## A129503.P9817486249177717882

`A010055(2*A133819(n+1))*A077592(n+1)`
-/

namespace A129503.P9817486249177717882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (2 * A133819 (n + 1)).toNat * A077592 (n + 1)

end

end A129503.P9817486249177717882

/-! ## A129503.P17129556061603457062

`C(A077592(n+1), A285425(n+1)²)`
-/

namespace A129503.P17129556061603457062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077592 (n + 1)).toNat (A285425 (n + 1) ^ 2).toNat

end

end A129503.P17129556061603457062

/-! ## A129503.P10444350709667019885

`A036987(A002262(n))*A343658(n+1)`
-/

namespace A129503.P10444350709667019885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A002262 n).toNat * A343658 (n + 1)

end

end A129503.P10444350709667019885

/-! ## A129503.P12958474211341016618

`A036987(A144328(n+1))*A343658(n+1)`
-/

namespace A129503.P12958474211341016618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A144328 (n + 1)).toNat * A343658 (n + 1)

end

end A129503.P12958474211341016618

/-! ## A129503.P16296763338544587125

`A077592(n+1)*A209229(A051129(n+1))`
-/

namespace A129503.P16296763338544587125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (n + 1) * A209229 (A051129 (n + 1)).toNat

end

end A129503.P16296763338544587125

/-! ## A129503.P3574292976955863806

`A209229(A051129(n+1))*A343658(n+1)`
-/

namespace A129503.P3574292976955863806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A051129 (n + 1)).toNat * A343658 (n + 1)

end

end A129503.P3574292976955863806

/-!
# A129504: Row sums of triangle A129503.

The programs for A129504, there is no canonical definition to state claims against.
-/

/-! ## A129504.P18121377506935274465

`A003056(A011782(n)+∑[A008859(n)])`
-/

namespace A129504.P18121377506935274465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129504.P18121377506935274465

/-! ## A129504.P1145978259536373493

`A000194(A067988(n))`
-/

namespace A129504.P1145978259536373493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A067988 n).toNat

end

end A129504.P1145978259536373493

/-! ## A129504.P13194666321803231360

`∑[A316846(A000598(n))]`
-/

namespace A129504.P13194666321803231360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A000598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129504.P13194666321803231360

/-! ## A129504.P11544441312887564517

`A003059(A202192(n+1))`
-/

namespace A129504.P11544441312887564517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A202192 (n + 1)).toNat

end

end A129504.P11544441312887564517

/-! ## A129504.P5180806910515519110

`A368941(A046787(n+1))`
-/

namespace A129504.P5180806910515519110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A046787 (n + 1)).toNat

end

end A129504.P5180806910515519110

/-!
# A129505: Number of permutations of 2n-1 objects with exactly n cycles.

The programs for A129505, there is no canonical definition to state claims against.
-/

/-! ## A129505.P17468997539749291324

`A094638(∑[4*n]+1)`
-/

namespace A129505.P17468997539749291324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129505.P17468997539749291324

/-! ## A129505.P1907914603410544220

`abs(A008276(A001844(n)))`
-/

namespace A129505.P1907914603410544220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008276 (A001844 n).toNat|

end

end A129505.P1907914603410544220

/-! ## A129505.P15342452684737111860

`abs(A008276(∑[A008574(n)]))`
-/

namespace A129505.P15342452684737111860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008276 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A129505.P15342452684737111860

/-! ## A129505.P1967233467668031992

`abs(A008276(A016813(∑[n])))`
-/

namespace A129505.P1967233467668031992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008276 (A016813 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A129505.P1967233467668031992

/-! ## A129505.P14242019175671214636

`A008276(A001844(n))*A033999(n)`
-/

namespace A129505.P14242019175671214636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A001844 n).toNat * A033999 n

end

end A129505.P14242019175671214636

/-!
# A129506: Number of partitions of a {2n-1}-set into n nonempty subsets.

The programs for A129506, there is no canonical definition to state claims against.
-/

/-! ## A129506.P14808168457564899326

`A343278(Δ[n²])`
-/

namespace A129506.P14808168457564899326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129506.P14808168457564899326

/-! ## A129506.P349869833986486228

`A156363(∑[n]+n)`
-/

namespace A129506.P349869833986486228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156363 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A129506.P349869833986486228

/-! ## A129506.P3643652255304454708

`record[A343278(n*n%2)]`
-/

namespace A129506.P3643652255304454708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343278 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129506.P3643652255304454708

/-! ## A129506.P11059254382262590314

`A048993(2*(n+1)²)`
-/

namespace A129506.P11059254382262590314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (2 * (n + 1) ^ 2)

end

end A129506.P11059254382262590314

/-! ## A129506.P11072972194484120125

`A258170(2*(n+1)²)`
-/

namespace A129506.P11072972194484120125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258170 (2 * (n + 1) ^ 2)

end

end A129506.P11072972194484120125

/-!
# A129507: G.f.: (1+x+x^2-sqrt(1+2x+3x^2-2x^3+x^4))*2.

The programs for A129507, there is no canonical definition to state claims against.
-/

/-! ## A129507.P9150888014912148608

`A129509(n)*4`
-/

namespace A129507.P9150888014912148608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129509 n * 4

end

end A129507.P9150888014912148608

/-! ## A129507.P16091567395428413918

`4*(A154272(n+1)-A239466(n))`
-/

namespace A129507.P16091567395428413918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A154272 (n + 1) - A239466 n)

end

end A129507.P16091567395428413918

/-! ## A129507.P17812362127663855444

`4*(A019590(A052938(n))-A239466(n))`
-/

namespace A129507.P17812362127663855444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A019590 (A052938 n).toNat - A239466 n)

end

end A129507.P17812362127663855444

/-! ## A129507.P8182769661921740343

`4*(abs(A015325(A163985(n)))-A239466(n))`
-/

namespace A129507.P8182769661921740343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (|A015325 (A163985 n).toNat| - A239466 n)

end

end A129507.P8182769661921740343

/-! ## A129507.P16677408982273857992

`4*A049347(A189320(n+1))*A239466(n)`
-/

namespace A129507.P16677408982273857992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049347 (A189320 (n + 1)).toNat * A239466 n)

end

end A129507.P16677408982273857992

/-! ## A129507.P11442846648577473521

`A129509(n)/(A233583(n+1)/A004277(n))²`
-/

namespace A129507.P11442846648577473521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129509 n : ℚ) / ((A233583 (n + 1) : ℚ) / (A004277 n : ℚ)) ^ 2

end

end A129507.P11442846648577473521

/-! ## A129507.P10674543705757201876

`4*(A000007(A012265(n))-A239466(n))`
-/

namespace A129507.P10674543705757201876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000007 (A012265 n).toNat - A239466 n)

end

end A129507.P10674543705757201876

/-! ## A129507.P17630659353025927643

`A129509(n)/(A007318(∑[n])/2)²`
-/

namespace A129507.P17630659353025927643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129509 n : ℚ) / ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ 2

end

end A129507.P17630659353025927643

/-! ## A129507.P13352901918937479875

`4*(A010054(A052905(n))-A239466(n))`
-/

namespace A129507.P13352901918937479875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A010054 (A052905 n).toNat - A239466 n)

end

end A129507.P13352901918937479875

/-! ## A129507.P5295686372950356306

`-(4*A239466(n)%A096647(n))`
-/

namespace A129507.P5295686372950356306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * Int.tmod (A239466 n) (A096647 n))

end

end A129507.P5295686372950356306

/-!
# A129508: Numbers k such that 3 and 5 do not divide binomial(2*k, k).

The programs for A129508, there is no canonical definition to state claims against.
-/

/-! ## A129508.P207894795916706356

`record[abs(A117966(A196748(n+1)))]`
-/

namespace A129508.P207894795916706356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117966 (A196748 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129508.P207894795916706356

/-! ## A129508.P5850724708823200110

`record[A063524(n)-A117966(A196748(n+1))]`
-/

namespace A129508.P5850724708823200110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n - A117966 (A196748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129508.P5850724708823200110

/-! ## A129508.P12299108876950857509

`record[A159075(n)-A117966(A196748(n+1))]`
-/

namespace A129508.P12299108876950857509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n - A117966 (A196748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129508.P12299108876950857509

/-! ## A129508.P2259348624618156747

`record[A117966(A196748(n+1))*A260196(n)]`
-/

namespace A129508.P2259348624618156747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A196748 (n + 1)).toNat * A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129508.P2259348624618156747

/-! ## A129508.P3527993660226246230

`record[A000007(n+1)-A117966(A196748(n+1))]`
-/

namespace A129508.P3527993660226246230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A117966 (A196748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129508.P3527993660226246230

/-!
# A129509: G.f.: (1+x+x^2-sqrt(1+2x+3x^2-2x^3+x^4))/2.

The programs for A129509, there is no canonical definition to state claims against.
-/

/-! ## A129509.P12696737697622142793

`A129507(n)/4`
-/

namespace A129509.P12696737697622142793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129507 n : ℚ) / 4

end

end A129509.P12696737697622142793

/-! ## A129509.P2708115162085322988

`A154272(n+1)-A239466(n)`
-/

namespace A129509.P2708115162085322988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) - A239466 n

end

end A129509.P2708115162085322988

/-! ## A129509.P5622229037160586099

`A019590(A052938(n))-A239466(n)`
-/

namespace A129509.P5622229037160586099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A052938 n).toNat - A239466 n

end

end A129509.P5622229037160586099

/-! ## A129509.P14991295283524211649

`abs(A015325(A163985(n)))-A239466(n)`
-/

namespace A129509.P14991295283524211649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015325 (A163985 n).toNat| - A239466 n

end

end A129509.P14991295283524211649

/-! ## A129509.P1145540202739242215

`A049347(A189320(n+1))*A239466(n)`
-/

namespace A129509.P1145540202739242215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A189320 (n + 1)).toNat * A239466 n

end

end A129509.P1145540202739242215

/-! ## A129509.P15255801442142677928

`A049347(A189320(n+1)+1)-A239466(n)`
-/

namespace A129509.P15255801442142677928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A189320 (n + 1) + 1).toNat - A239466 n

end

end A129509.P15255801442142677928

/-! ## A129509.P1620570006802137328

`A015325(n)*A015325(A163985(n))-A239466(n)`
-/

namespace A129509.P1620570006802137328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015325 n * A015325 (A163985 n).toNat - A239466 n

end

end A129509.P1620570006802137328

/-! ## A129509.P16858499975799747457

`A000007(A012265(n))-A239466(n)`
-/

namespace A129509.P16858499975799747457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A012265 n).toNat - A239466 n

end

end A129509.P16858499975799747457

/-! ## A129509.P5164881693703571049

`A010054(A052905(n))-A239466(n)`
-/

namespace A129509.P5164881693703571049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A052905 n).toNat - A239466 n

end

end A129509.P5164881693703571049

/-! ## A129509.P12213897659755243379

`-(A239466(n)%A096647(n))`
-/

namespace A129509.P12213897659755243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A239466 n) (A096647 n)

end

end A129509.P12213897659755243379

/-!
# A129510: Number of distinct differences between pairs of distinct divisors of n.

The programs for A129510, there is no canonical definition to state claims against.
-/

/-! ## A129510.P13352206495992539132

`A260152(A187829(n+1))-A000005(n+1)`
-/

namespace A129510.P13352206495992539132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260152 (A187829 (n + 1)).toNat - A000005 (n + 1)

end

end A129510.P13352206495992539132

/-! ## A129510.P13807224333353366430

`A046523(n+1)-A334540(A187829(n+1))`
-/

namespace A129510.P13807224333353366430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A334540 (A187829 (n + 1)).toNat

end

end A129510.P13807224333353366430

/-! ## A129510.P9186642921537298832

`A260152(A187829(n+1))-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A129510.P9186642921537298832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260152 (A187829 (n + 1)).toNat - (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A129510.P9186642921537298832

/-! ## A129510.P15634952630688161702

`A260152(A187829(n+1))-(∑{d}[n+1, 1-#]+A000203(n+1))`
-/

namespace A129510.P15634952630688161702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260152 (A187829 (n + 1)).toNat - (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A129510.P15634952630688161702

/-! ## A129510.P2433520504794183756

`A213725(A229339(3*n+5))+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A129510.P2433520504794183756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213725 (A229339 (3 * n + 5)).toNat : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A129510.P2433520504794183756

/-!
# A129511: Numbers such that all differences between distinct divisors occur exactly once.

The programs for A129511, there is no canonical definition to state claims against.
-/

/-! ## A129511.P2156318633334170751

`comp[A129512(n+1)-1]+1`
-/

namespace A129511.P2156318633334170751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129512 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A129511.P2156318633334170751

/-! ## A129511.P5543618092830842146

`comp[∪[A129512(n+1), A008588(n)]]`
-/

namespace A129511.P5543618092830842146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129512 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129511.P5543618092830842146

/-! ## A129511.P4702664213934458073

`eq[A066446(n+1), A129510(n+1)]+1`
-/

namespace A129511.P4702664213934458073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A129511.P4702664213934458073

/-! ## A129511.P7667290946989918418

`A035263((4*n+2)²)+record[n-A270417(n+1)]`
-/

namespace A129511.P7667290946989918418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 ((4 * n + 2) ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129511.P7667290946989918418

/-! ## A129511.P12717630265601853476

`record[A285097(A044403(n+2))+n-A270417(n+1)]`
-/

namespace A129511.P12717630265601853476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A044403 (n + 2)).toNat + ((n : ℤ) - A270417 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129511.P12717630265601853476

/-! ## A129511.P6418271622969981937

`A057427(A043028(n+1))+record[n-A270417(n+1)]`
-/

namespace A129511.P6418271622969981937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A043028 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129511.P6418271622969981937

/-! ## A129511.P2479983464387885507

`record[n-A270417(n+1)]+A034947(n²+5)^A066286(n)`
-/

namespace A129511.P2479983464387885507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270417 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (A034947 (n ^ 2 + 5) : ℚ) ^ (A066286 n : ℤ)

end

end A129511.P2479983464387885507

/-! ## A129511.P17231529491667853858

`A051953(A118751(n))+record[n-A270417(n+1)]`
-/

namespace A129511.P17231529491667853858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A118751 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129511.P17231529491667853858

/-!
# A129512: Numbers with at least two pairs of distinct divisors having equal differences.

The programs for A129512, there is no canonical definition to state claims against.
-/

/-! ## A129512.P2808683799207308991

`lt[A129510(n+1), A066446(n+1)]+1`
-/

namespace A129512.P2808683799207308991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A129512.P2808683799207308991

/-! ## A129512.P15194918288971908394

`∩[A005279(n+1), A308040(n+1)]`
-/

namespace A129512.P15194918288971908394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129512.P15194918288971908394

/-! ## A129512.P14727277611044003548

`∩[A308040(n+1), A343281(n+1)]`
-/

namespace A129512.P14727277611044003548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129512.P14727277611044003548

/-! ## A129512.P4324315863868428376

`∩[A005279(n+1), A340058(n+1)]`
-/

namespace A129512.P4324315863868428376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129512.P4324315863868428376

/-! ## A129512.P2585755929827695218

`∩[A340058(n+1), A343281(n+1)]`
-/

namespace A129512.P2585755929827695218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129512.P2585755929827695218

/-!
# A129513: Slowest increasing sequence that starts with 2 and has property that multiplying two consecutive terms gives a number which does not share a digit with either of the two terms.

The programs for A129513, there is no canonical definition to state claims against.
-/

/-! ## A129513.P14464290315771723465

`∑[A124432(A094544(n))]+1`
-/

namespace A129513.P14464290315771723465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124432 (A094544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129513.P14464290315771723465

/-! ## A129513.P14438075840842677822

`A040285(Δ[A286834(n)])+n`
-/

namespace A129513.P14438075840842677822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040285 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A129513.P14438075840842677822

/-! ## A129513.P7687595184414691754

`∑[A373948(A046802(n+4))]+1`
-/

namespace A129513.P7687595184414691754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (A046802 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129513.P7687595184414691754

/-! ## A129513.P5893004011267732686

`∑[A186726(A007318(3*n))]+1`
-/

namespace A129513.P5893004011267732686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (A007318 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129513.P5893004011267732686

/-! ## A129513.P11026419764652349568

`A000196(A290852(n))+n+1`
-/

namespace A129513.P11026419764652349568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A290852 n).toNat + (n + 1 : ℤ)

end

end A129513.P11026419764652349568

/-!
# A129514: a(n) = gcd(Sum_{k|n} k, Sum_{1

The programs for A129514, the canonical program `A129514.P2529269969650432097` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129514 has offset 1).

The definition of A129514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129514.P2529269969650432097

`gcd(A000203(n+1), A000217(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129514

/-- `gcd(A000203(n+1), A000217(n+1))` -/
def P2529269969650432097.Spec : Prop :=
  ∀ n, (P2529269969650432097.a n : ℤ) = A129514 (n + 1)

theorem P2529269969650432097.correct : P2529269969650432097.Spec := by
  intro n
  simp only [A129514, Nat.add_sub_cancel]

end A129514

/-! ## A129514.P12545343772152572934

`gcd(∑[n+1], ∑{d}[n+1, #])`
-/

namespace A129514.P12545343772152572934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ d ∈ Nat.divisors (f2 n), d)

end

end A129514.P12545343772152572934

namespace A129514

/-- `gcd(∑[n+1], ∑{d}[n+1, #])` -/
def P12545343772152572934.Spec : Prop :=
  ∀ n, (P12545343772152572934.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P6165321818573947160

`gcd(∑{d}[n+1, #], A253145(n))`
-/

namespace A129514.P6165321818573947160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A253145 n)

end

end A129514.P6165321818573947160

namespace A129514

/-- `gcd(∑{d}[n+1, #], A253145(n))` -/
def P6165321818573947160.Spec : Prop :=
  ∀ n, (P6165321818573947160.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P9927839356341384887

`gcd(∑[n+1], Δ[A160664(n)])`
-/

namespace A129514.P9927839356341384887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A129514.P9927839356341384887

namespace A129514

/-- `gcd(∑[n+1], Δ[A160664(n)])` -/
def P9927839356341384887.Spec : Prop :=
  ∀ n, (P9927839356341384887.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P2996879893431887963

`gcd(C(n+2, 2), A024816(n+1))`
-/

namespace A129514.P2996879893431887963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 2) 2 : ℤ) (A024816 (n + 1))

end

end A129514.P2996879893431887963

namespace A129514

/-- `gcd(C(n+2, 2), A024816(n+1))` -/
def P2996879893431887963.Spec : Prop :=
  ∀ n, (P2996879893431887963.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P9114524181885724073

`gcd(∑[n]+1+n, A088580(n+1)-1)`
-/

namespace A129514.P9114524181885724073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + n : ℕ) : ℤ) (A088580 (n + 1) - 1)

end

end A129514.P9114524181885724073

namespace A129514

/-- `gcd(∑[n]+1+n, A088580(n+1)-1)` -/
def P9114524181885724073.Spec : Prop :=
  ∀ n, (P9114524181885724073.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P7913439073573380273

`gcd(Δ[A160664(n)], A253145(n))`
-/

namespace A129514.P7913439073573380273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A253145 n)

end

end A129514.P7913439073573380273

namespace A129514

/-- `gcd(Δ[A160664(n)], A253145(n))` -/
def P7913439073573380273.Spec : Prop :=
  ∀ n, (P7913439073573380273.a n : ℤ) = A129514 (n + 1)

end A129514

/-! ## A129514.P6672256389992158668

`gcd(A089594(n+1), A143348(n+1))`
-/

namespace A129514.P6672256389992158668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089594 (n + 1)) (A143348 (n + 1))

end

end A129514.P6672256389992158668

namespace A129514

/-- `gcd(A089594(n+1), A143348(n+1))` -/
def P6672256389992158668.Spec : Prop :=
  ∀ n, (P6672256389992158668.a n : ℤ) = A129514 (n + 1)

end A129514

/-!
# A129515: Numbers m such that binomial(2*m, m) has the same prime factors as binomial(2*k, k) for some k > m.

The programs for A129515, there is no canonical definition to state claims against.
-/

/-! ## A129515.P17690718622342011172

`A331586(n+1)/A000005(A070858(n+1))`
-/

namespace A129515.P17690718622342011172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331586 (n + 1) : ℚ) / (A000005 (A070858 (n + 1)).toNat : ℚ)

end

end A129515.P17690718622342011172

/-! ## A129515.P11383321477494007824

`A331586(n+1)/A000005(A252170(n+1))`
-/

namespace A129515.P11383321477494007824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331586 (n + 1) : ℚ) / (A000005 (A252170 (n + 1)).toNat : ℚ)

end

end A129515.P11383321477494007824

/-! ## A129515.P4752326028480124031

`A331586(n+1)/A331566(A319541(n+1))`
-/

namespace A129515.P4752326028480124031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331586 (n + 1) : ℚ) / (A331566 (A319541 (n + 1)).toNat : ℚ)

end

end A129515.P4752326028480124031

/-! ## A129515.P4034616797333087754

`A331586(n+1)/A331580(A000040(2*(n+1)))`
-/

namespace A129515.P4034616797333087754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331586 (n + 1) : ℚ) / (A331580 (A000040 (2 * (n + 1))).toNat : ℚ)

end

end A129515.P4034616797333087754

/-!
# A129516: Numbers k such that k divides (k-1)!! - 1.

The programs for A129516, there is no canonical definition to state claims against.
-/

/-! ## A129516.P11089523041183105897

`record[gcd(A006882(n)+1, n+3)]`
-/

namespace A129516.P11089523041183105897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006882 n + 1) (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129516.P11089523041183105897

/-! ## A129516.P16323823048763720930

`record[A196047(A163102(n)+2)]`
-/

namespace A129516.P16323823048763720930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A163102 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129516.P16323823048763720930

/-! ## A129516.P12110492366709017939

`∪[A079062(n+1), A000005(A049210(n))]`
-/

namespace A129516.P12110492366709017939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049210 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129516.P12110492366709017939

/-! ## A129516.P11648337537082932799

`eq[A001222(A053755(2*n)), A355735(2*(n+1))]`
-/

namespace A129516.P11648337537082932799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053755 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129516.P11648337537082932799

/-!
# A129517: Odd primes p such that p divides (p-1)!!-1.

The programs for A129517, there is no canonical definition to state claims against.
-/

/-! ## A129517.P10235102188664804796

`p?[A282036(n+1)%2*A002145(n+1)]`
-/

namespace A129517.P10235102188664804796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282036 (n + 1)) 2 * A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129517.P10235102188664804796

/-! ## A129517.P437162764005190078

`A065091(eq[A057427(n), A260297(n+1)])`
-/

namespace A129517.P437162764005190078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129517.P437162764005190078

/-! ## A129517.P16378143600388070988

`A065091(eq[A057427(n), A260611(n+1)])`
-/

namespace A129517.P16378143600388070988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129517.P16378143600388070988

/-! ## A129517.P9888011619062374806

`p?[A002145(n+1)+A282035(n+1)%2]`
-/

namespace A129517.P9888011619062374806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + Int.tmod (A282035 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129517.P9888011619062374806

/-! ## A129517.P10246950921770029042

`record[A006530(A260178(n+5)+1)]`
-/

namespace A129517.P10246950921770029042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A260178 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129517.P10246950921770029042

/-! ## A129517.P4722484612550656591

`record[A008472(A260178(n+5)+1)]`
-/

namespace A129517.P4722484612550656591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A260178 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129517.P4722484612550656591

/-! ## A129517.P5899853866192926589

`p?[A129516(n+3)]`
-/

namespace A129517.P5899853866192926589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129517.P5899853866192926589

/-! ## A129517.P13353792585309571638

`∩[2*n+1, A129516(n+2)]`
-/

namespace A129517.P13353792585309571638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129517.P13353792585309571638

/-! ## A129517.P2549655789616716165

`filter[A129516(n+1), A324903(#)]`
-/

namespace A129517.P2549655789616716165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A129517.P2549655789616716165

/-! ## A129517.P1887027970513504391

`filter[A129516(n+1), A353638(#)]`
-/

namespace A129517.P1887027970513504391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A129517.P1887027970513504391

/-! ## A129517.P16978206111417989653

`∩[A129516(n+1), A140826(n+1)]`
-/

namespace A129517.P16978206111417989653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129517.P16978206111417989653

/-! ## A129517.P14048473294018868231

`∩[A129516(n+1), A339907(n+1)]`
-/

namespace A129517.P14048473294018868231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129517.P14048473294018868231

/-! ## A129517.P8369028283359519605

`filter[A129516(n+1), A257531(#)]`
-/

namespace A129517.P8369028283359519605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A129517.P8369028283359519605

/-! ## A129517.P11861543104293458736

`filter[A129516(n+1), A324908(#)]`
-/

namespace A129517.P11861543104293458736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A129517.P11861543104293458736

/-! ## A129517.P15395304007541542975

`filter[A129516(n+1), A340373(#)]`
-/

namespace A129517.P15395304007541542975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A129517.P15395304007541542975

/-! ## A129517.P12085725859909018337

`filter[A129516(n+1), A347523(#)]`
-/

namespace A129517.P12085725859909018337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A129517.P12085725859909018337

/-! ## A129517.P2604438357991343668

`filter[A129516(n+1), A348327(#)]`
-/

namespace A129517.P2604438357991343668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A129517.P2604438357991343668

/-! ## A129517.P5366663944383631834

`filter[A129516(n+1), A353558(#)]`
-/

namespace A129517.P5366663944383631834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A129517.P5366663944383631834

/-! ## A129517.P14948892201968734715

`filter[A129516(n+1), A353670(#)]`
-/

namespace A129517.P14948892201968734715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A129517.P14948892201968734715

/-! ## A129517.P5880663810776893991

`filter[A129516(n+2), A039982(#)]`
-/

namespace A129517.P5880663810776893991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129516 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A129517.P5880663810776893991

/-!
# A129518: Numbers k > 2 such that k divides (k-2)!! - 1 and (k-3)!! - 1.

The programs for A129518, there is no canonical definition to state claims against.
-/

/-! ## A129518.P9712507547377376248

`A260298(n+2)`
-/

namespace A129518.P9712507547377376248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260298 (n + 2)

end

end A129518.P9712507547377376248

/-! ## A129518.P14384353093640361868

`record[A007912(2*n+3)+2]`
-/

namespace A129518.P14384353093640361868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007912 (2 * n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129518.P14384353093640361868

/-! ## A129518.P8429978089071538833

`A000040(A260299(n+2))`
-/

namespace A129518.P8429978089071538833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A260299 (n + 2)).toNat

end

end A129518.P8429978089071538833

/-! ## A129518.P1694933042603716452

`record[A007912(A004767(n))]+2`
-/

namespace A129518.P1694933042603716452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007912 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A129518.P1694933042603716452

/-! ## A129518.P10066224578139940800

`p?[A006005(A260299(n+1))]`
-/

namespace A129518.P10066224578139940800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A260299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129518.P10066224578139940800

/-! ## A129518.P18374701093623989407

`record[A260298(A126759(xor(1, n)))]`
-/

namespace A129518.P18374701093623989407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260298 (A126759 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129518.P18374701093623989407

/-! ## A129518.P14054857746950657752

`A008578(A260299(n+2)+1)`
-/

namespace A129518.P14054857746950657752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A260299 (n + 2) + 1).toNat

end

end A129518.P14054857746950657752

/-! ## A129518.P3521582929437116202

`A158611(A260299(n+2)+2)`
-/

namespace A129518.P3521582929437116202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A260299 (n + 2) + 2).toNat

end

end A129518.P3521582929437116202

/-! ## A129518.P15497368231826990965

`eq[A000035(n), A214054(n+1)]`
-/

namespace A129518.P15497368231826990965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129518.P15497368231826990965

/-! ## A129518.P793983362885239634

`eq[A007877(n), A214054(n+1)]`
-/

namespace A129518.P793983362885239634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129518.P793983362885239634

/-!
# A129519: First differences of the binomial transform of the distinct partition numbers (A000009).

The programs for A129519, there is no canonical definition to state claims against.
-/

/-! ## A129519.P10267253879329117358

`abs(Δ[A266232(abs(1-n))])`
-/

namespace A129519.P10267253879329117358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266232 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129519.P10267253879329117358

/-! ## A129519.P2163255272124337244

`A000931(3*(n+1))-A117599(A185264(3*n+2))`
-/

namespace A129519.P2163255272124337244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * (n + 1)) - A117599 (A185264 (3 * n + 2)).toNat

end

end A129519.P2163255272124337244

/-! ## A129519.P13218202728631172088

`A024417(A142586(n)-A174605(n))`
-/

namespace A129519.P13218202728631172088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A142586 n - A174605 n).toNat

end

end A129519.P13218202728631172088

/-! ## A129519.P2091196081419713901

`A034943(A032559(n+1))-A036632(n)`
-/

namespace A129519.P2091196081419713901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (A032559 (n + 1)).toNat - A036632 n

end

end A129519.P2091196081419713901

/-! ## A129519.P7835692809552705745

`A034943(n+1)-A107846(A335807(n))`
-/

namespace A129519.P7835692809552705745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) - A107846 (A335807 n).toNat

end

end A129519.P7835692809552705745

/-!
# A129520: Orders of symmetric groups associated with the exceptional groups G2, F4, E6, E7, E7.5, E8, E9 (or better? E11): A_3, S_3, A_4, S_5, "? ", A_5, S_5.

The programs for A129520, there is no canonical definition to state claims against.
-/

/-! ## A129520.P8681908110095896231

`record[A096115(2*(n+2))]`
-/

namespace A129520.P8681908110095896231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129520.P8681908110095896231

/-!
# A129521: Numbers of the form p*q, p and q prime with q=2*p-1.

The programs for A129521, the canonical program `A129521.P13111143158558173698` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129521 has offset 1).

The definition of A129521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005382, A005383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129521.P13111143158558173698

`A005382(n+1)*A005383(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A129521

/-- `A005382(n+1)*A005383(n+1)` -/
def P13111143158558173698.Spec : Prop :=
  ∀ n, P13111143158558173698.a n = A129521 (n + 1)

theorem P13111143158558173698.correct : P13111143158558173698.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel]

end A129521

/-! ## A129521.P4785240283547754561

`C(A077068(n+1), 2)`
-/

namespace A129521.P4785240283547754561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077068 (n + 1)).toNat 2

end

end A129521.P4785240283547754561

namespace A129521

/-- `C(A077068(n+1), 2)` -/
def P4785240283547754561.Spec : Prop :=
  ∀ n, (P4785240283547754561.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P13627029721789077382

`C(A005383(n+1)+1, 2)`
-/

namespace A129521.P13627029721789077382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005383 (n + 1) + 1).toNat 2

end

end A129521.P13627029721789077382

namespace A129521

/-- `C(A005383(n+1)+1, 2)` -/
def P13627029721789077382.Spec : Prop :=
  ∀ n, (P13627029721789077382.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P3893724911985840419

`(A089965(n+1)+1)*A005382(n+1)`
-/

namespace A129521.P3893724911985840419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 1) + 1) * A005382 (n + 1)

end

end A129521.P3893724911985840419

namespace A129521

/-- `(A089965(n+1)+1)*A005382(n+1)` -/
def P3893724911985840419.Spec : Prop :=
  ∀ n, P3893724911985840419.a n = A129521 (n + 1)

theorem P3893724911985840419.correct : P3893724911985840419.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P3893724911985840419.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A089965, A089965.P14211704364200362511.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P6202646505898126650

`(A351875(n+1)+1)*A005383(n+1)`
-/

namespace A129521.P6202646505898126650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351875 (n + 1) + 1) * A005383 (n + 1)

end

end A129521.P6202646505898126650

namespace A129521

/-- `(A351875(n+1)+1)*A005383(n+1)` -/
def P6202646505898126650.Spec : Prop :=
  ∀ n, P6202646505898126650.a n = A129521 (n + 1)

theorem P6202646505898126650.correct : P6202646505898126650.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P6202646505898126650.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P12197735783010590289

`(A077068(n+1)-1)*A005382(n+1)`
-/

namespace A129521.P12197735783010590289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) - 1) * A005382 (n + 1)

end

end A129521.P12197735783010590289

namespace A129521

/-- `(A077068(n+1)-1)*A005382(n+1)` -/
def P12197735783010590289.Spec : Prop :=
  ∀ n, P12197735783010590289.a n = A129521 (n + 1)

theorem P12197735783010590289.correct : P12197735783010590289.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P12197735783010590289.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A077068, A077068.P14869786235870196485.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P5710408957848326183

`A005383(n+1)/2*A077068(n+1)`
-/

namespace A129521.P5710408957848326183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) : ℚ) / 2 * (A077068 (n + 1) : ℚ)

end

end A129521.P5710408957848326183

namespace A129521

/-- `A005383(n+1)/2*A077068(n+1)` -/
def P5710408957848326183.Spec : Prop :=
  ∀ n, P5710408957848326183.a n = (A129521 (n + 1) : ℚ)

theorem P5710408957848326183.correct : P5710408957848326183.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P5710408957848326183.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A077068, A077068.P14869786235870196485.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P18415302393279381877

`(A351875(n+1)+A005382(n+1))*A005382(n+1)`
-/

namespace A129521.P18415302393279381877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351875 (n + 1) + A005382 (n + 1)) * A005382 (n + 1)

end

end A129521.P18415302393279381877

namespace A129521

/-- `(A351875(n+1)+A005382(n+1))*A005382(n+1)` -/
def P18415302393279381877.Spec : Prop :=
  ∀ n, P18415302393279381877.a n = A129521 (n + 1)

theorem P18415302393279381877.correct : P18415302393279381877.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P18415302393279381877.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P5067534018021595400

`(A340509(n+1)-A005382(n+1))*A005382(n+1)`
-/

namespace A129521.P5067534018021595400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 1) - A005382 (n + 1)) * A005382 (n + 1)

end

end A129521.P5067534018021595400

namespace A129521

/-- `(A340509(n+1)-A005382(n+1))*A005382(n+1)` -/
def P5067534018021595400.Spec : Prop :=
  ∀ n, P5067534018021595400.a n = A129521 (n + 1)

theorem P5067534018021595400.correct : P5067534018021595400.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P5067534018021595400.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P7495504199527744668

`(A340509(n+1)-A005383(n+1))*A005383(n+1)`
-/

namespace A129521.P7495504199527744668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 1) - A005383 (n + 1)) * A005383 (n + 1)

end

end A129521.P7495504199527744668

namespace A129521

/-- `(A340509(n+1)-A005383(n+1))*A005383(n+1)` -/
def P7495504199527744668.Spec : Prop :=
  ∀ n, P7495504199527744668.a n = A129521 (n + 1)

theorem P7495504199527744668.correct : P7495504199527744668.Spec := by
  intro n
  simp only [A129521, Nat.add_sub_cancel, A129521.P7495504199527744668.a, A129521.P13111143158558173698.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129521

/-! ## A129521.P16122142482175473413

`∩[A124000(n+1), A231814(n+1)]`
-/

namespace A129521.P16122142482175473413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P16122142482175473413

namespace A129521

/-- `∩[A124000(n+1), A231814(n+1)]` -/
def P16122142482175473413.Spec : Prop :=
  ∀ n, (P16122142482175473413.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P16404579056920655502

`∩[A124000(n+1), A265395(n+1)]`
-/

namespace A129521.P16404579056920655502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P16404579056920655502

namespace A129521

/-- `∩[A124000(n+1), A265395(n+1)]` -/
def P16404579056920655502.Spec : Prop :=
  ∀ n, (P16404579056920655502.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P6313237896669833903

`∩[A068443(n+1), A231814(n+1)]`
-/

namespace A129521.P6313237896669833903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P6313237896669833903

namespace A129521

/-- `∩[A068443(n+1), A231814(n+1)]` -/
def P6313237896669833903.Spec : Prop :=
  ∀ n, (P6313237896669833903.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P11073707838234210512

`∩[A068443(n+1), A265395(n+1)]`
-/

namespace A129521.P11073707838234210512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P11073707838234210512

namespace A129521

/-- `∩[A068443(n+1), A265395(n+1)]` -/
def P11073707838234210512.Spec : Prop :=
  ∀ n, (P11073707838234210512.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P14108486926253883687

`C(p?[A164977(n+1)]+1, 2)`
-/

namespace A129521.P14108486926253883687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A129521.P14108486926253883687

namespace A129521

/-- `C(p?[A164977(n+1)]+1, 2)` -/
def P14108486926253883687.Spec : Prop :=
  ∀ n, (P14108486926253883687.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P6224552293159791031

`p?[A057920(n+1)]/2*A077068(n+1)`
-/

namespace A129521.P6224552293159791031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 * (A077068 (n + 1) : ℚ)

end

end A129521.P6224552293159791031

namespace A129521

/-- `p?[A057920(n+1)]/2*A077068(n+1)` -/
def P6224552293159791031.Spec : Prop :=
  ∀ n, P6224552293159791031.a n = (A129521 (n + 1) : ℚ)

end A129521

/-! ## A129521.P11439315156542825053

`A077068(n+1)/2*p?[A348659(n+1)]`
-/

namespace A129521.P11439315156542825053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A129521.P11439315156542825053

namespace A129521

/-- `A077068(n+1)/2*p?[A348659(n+1)]` -/
def P11439315156542825053.Spec : Prop :=
  ∀ n, P11439315156542825053.a n = (A129521 (n + 1) : ℚ)

end A129521

/-! ## A129521.P1806618936236532617

`∩[A068443(n+1), A231569(n+1)]`
-/

namespace A129521.P1806618936236532617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P1806618936236532617

namespace A129521

/-- `∩[A068443(n+1), A231569(n+1)]` -/
def P1806618936236532617.Spec : Prop :=
  ∀ n, (P1806618936236532617.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P2565185991620427

`∩[A124000(n+1), A231569(n+1)]`
-/

namespace A129521.P2565185991620427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P2565185991620427

namespace A129521

/-- `∩[A124000(n+1), A231569(n+1)]` -/
def P2565185991620427.Spec : Prop :=
  ∀ n, (P2565185991620427.a n : ℤ) = A129521 (n + 1)

end A129521

/-! ## A129521.P2669666984468697285

`∩[A231569(n+1), A231814(n+1)]`
-/

namespace A129521.P2669666984468697285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129521.P2669666984468697285

namespace A129521

/-- `∩[A231569(n+1), A231814(n+1)]` -/
def P2669666984468697285.Spec : Prop :=
  ∀ n, (P2669666984468697285.a n : ℤ) = A129521 (n + 1)

end A129521

/-!
# A129523: Numbers of the form 2^j +- 2^i for 0 <= i < j, in ascending order.

The programs for A129523, the canonical program `A129523.P10195343047113366737` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129523 has offset 1).

The definition of A129523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129523.P10195343047113366737

`∪[A048645(n+1), A175332(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129523

/-- `∪[A048645(n+1), A175332(n+1)]` -/
def P10195343047113366737.Spec : Prop :=
  ∀ n, (P10195343047113366737.a n : ℤ) = A129523 (n + 1)

theorem P10195343047113366737.correct : P10195343047113366737.Spec := by
  intro n
  simp only [A129523, Nat.add_sub_cancel]

end A129523

/-! ## A129523.P4733799883880740356

`∪[A098354(n+1)-A130328(n), A089633(n)+1]`
-/

namespace A129523.P4733799883880740356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A130328 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P4733799883880740356

namespace A129523

/-- `∪[A098354(n+1)-A130328(n), A089633(n)+1]` -/
def P4733799883880740356.Spec : Prop :=
  ∀ n, (P4733799883880740356.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P5091864440357053562

`∩[A171987(n+1), A295235(n+1)]`
-/

namespace A129523.P5091864440357053562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P5091864440357053562

namespace A129523

/-- `∩[A171987(n+1), A295235(n+1)]` -/
def P5091864440357053562.Spec : Prop :=
  ∀ n, (P5091864440357053562.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P2589343484873690831

`∩[A057890(n+1), A171987(n+1)]`
-/

namespace A129523.P2589343484873690831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P2589343484873690831

namespace A129523

/-- `∩[A057890(n+1), A171987(n+1)]` -/
def P2589343484873690831.Spec : Prop :=
  ∀ n, (P2589343484873690831.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P17117792258522456683

`∩[A161604(n+1), A171987(n+1)]`
-/

namespace A129523.P17117792258522456683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P17117792258522456683

namespace A129523

/-- `∩[A161604(n+1), A171987(n+1)]` -/
def P17117792258522456683.Spec : Prop :=
  ∀ n, (P17117792258522456683.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P1316819888765629548

`∩[A164707(n+1), A171987(n+1)]`
-/

namespace A129523.P1316819888765629548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P1316819888765629548

namespace A129523

/-- `∩[A164707(n+1), A171987(n+1)]` -/
def P1316819888765629548.Spec : Prop :=
  ∀ n, (P1316819888765629548.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P14727974205405395015

`∩[A171987(n+1), A391585(n+1)]`
-/

namespace A129523.P14727974205405395015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P14727974205405395015

namespace A129523

/-- `∩[A171987(n+1), A391585(n+1)]` -/
def P14727974205405395015.Spec : Prop :=
  ∀ n, (P14727974205405395015.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P5299787821530804124

`record[A057889(A171987(n+1))]`
-/

namespace A129523.P5299787821530804124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A171987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129523.P5299787821530804124

namespace A129523

/-- `record[A057889(A171987(n+1))]` -/
def P5299787821530804124.Spec : Prop :=
  ∀ n, P5299787821530804124.a n = A129523 (n + 1)

end A129523

/-! ## A129523.P6975531904508912396

`lt[A020951(n), 2]+1`
-/

namespace A129523.P6975531904508912396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129523.P6975531904508912396

namespace A129523

/-- `lt[A020951(n), 2]+1` -/
def P6975531904508912396.Spec : Prop :=
  ∀ n, (P6975531904508912396.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P686521731772736330

`lt[A280737(n+1), 2]+1`
-/

namespace A129523.P686521731772736330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129523.P686521731772736330

namespace A129523

/-- `lt[A280737(n+1), 2]+1` -/
def P686521731772736330.Spec : Prop :=
  ∀ n, (P686521731772736330.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P9877026704153542976

`eq[A002487(n), A215467(n)]`
-/

namespace A129523.P9877026704153542976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129523.P9877026704153542976

namespace A129523

/-- `eq[A002487(n), A215467(n)]` -/
def P9877026704153542976.Spec : Prop :=
  ∀ n, (P9877026704153542976.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P10846650721386100040

`eq[A069010(n), A277325(n)]`
-/

namespace A129523.P10846650721386100040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129523.P10846650721386100040

namespace A129523

/-- `eq[A069010(n), A277325(n)]` -/
def P10846650721386100040.Spec : Prop :=
  ∀ n, (P10846650721386100040.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P2140322404543162691

`eq[A215467(n), A281392(n)]`
-/

namespace A129523.P2140322404543162691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129523.P2140322404543162691

namespace A129523

/-- `eq[A215467(n), A281392(n)]` -/
def P2140322404543162691.Spec : Prop :=
  ∀ n, (P2140322404543162691.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P11763540024376871394

`eq[1, A171565(A053646(n+1))]+1`
-/

namespace A129523.P11763540024376871394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A053646 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129523.P11763540024376871394

namespace A129523

/-- `eq[1, A171565(A053646(n+1))]+1` -/
def P11763540024376871394.Spec : Prop :=
  ∀ n, (P11763540024376871394.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P7792934140238355458

`eq[A002487(n), A070940(A028310(n))]`
-/

namespace A129523.P7792934140238355458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129523.P7792934140238355458

namespace A129523

/-- `eq[A002487(n), A070940(A028310(n))]` -/
def P7792934140238355458.Spec : Prop :=
  ∀ n, (P7792934140238355458.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P1181803375245715754

`eq[A000035(A100994(n+1)), A020951(n)]+1`
-/

namespace A129523.P1181803375245715754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100994 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A129523.P1181803375245715754

namespace A129523

/-- `eq[A000035(A100994(n+1)), A020951(n)]+1` -/
def P1181803375245715754.Spec : Prop :=
  ∀ n, (P1181803375245715754.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P14549458154276850723

`eq[2, A103391(A103391(n+1)-A037800(n))]`
-/

namespace A129523.P14549458154276850723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 (n + 1) - A037800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129523.P14549458154276850723

namespace A129523

/-- `eq[2, A103391(A103391(n+1)-A037800(n))]` -/
def P14549458154276850723.Spec : Prop :=
  ∀ n, (P14549458154276850723.a n : ℤ) = A129523 (n + 1)

end A129523

/-! ## A129523.P17038225448946373368

`lt[A284272(n), A303776(2*n-A005187(n))]`
-/

namespace A129523.P17038225448946373368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303776 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129523.P17038225448946373368

namespace A129523

/-- `lt[A284272(n), A303776(2*n-A005187(n))]` -/
def P17038225448946373368.Spec : Prop :=
  ∀ n, (P17038225448946373368.a n : ℤ) = A129523 (n + 1)

end A129523

/-!
# A129524: Number of unlabeled digraphs on n vertices such that every vertex has outdegree 2.

The programs for A129524, there is no canonical definition to state claims against.
-/

/-! ## A129524.P15253687821068566045

`A048475(A015083(n))`
-/

namespace A129524.P15253687821068566045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048475 (A015083 n).toNat

end

end A129524.P15253687821068566045

/-! ## A129524.P17049473530488540441

`A002265(A206830(n)+A206801(n))`
-/

namespace A129524.P17049473530488540441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A206830 n + A206801 n).toNat

end

end A129524.P17049473530488540441

/-!
# A129525: Numbers k such that all the digits of k^3 are distinct.

The programs for A129525, there is no canonical definition to state claims against.
-/

/-! ## A129525.P11225758977821143217

`∩[A052047(n+1), A052063(n+2)]`
-/

namespace A129525.P11225758977821143217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052063 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129525.P11225758977821143217

/-! ## A129525.P9613329228107725924

`∩[A052047(n+1), A052083(n+2)]`
-/

namespace A129525.P9613329228107725924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129525.P9613329228107725924

/-! ## A129525.P10363990002250540248

`∩[A052063(n+1), A052083(n+2)]`
-/

namespace A129525.P10363990002250540248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129525.P10363990002250540248

/-! ## A129525.P3680527152196369781

`∩[comp[A052051(n+1)], A052047(n+2)]`
-/

namespace A129525.P3680527152196369781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052051 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A129525.P3680527152196369781

/-! ## A129525.P5295788521923047391

`∩[∑[A356936(3*n+5)], A052047(n+1)]`
-/

namespace A129525.P5295788521923047391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356936 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A129525.P5295788521923047391

/-!
# A129526: Number of n-bead two-color bracelets with 00 prohibited.

The programs for A129526, there is no canonical definition to state claims against.
-/

/-! ## A129526.P5804371050878916907

`A032278(n+2)+1`
-/

namespace A129526.P5804371050878916907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032278 (n + 2) + 1

end

end A129526.P5804371050878916907

/-! ## A129526.P3346186290698102363

`A032277(n+2)+char[2*n]`
-/

namespace A129526.P3346186290698102363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129526.P3346186290698102363

/-! ## A129526.P12443281441107525415

`A059841(n)+A032277(n+2)`
-/

namespace A129526.P12443281441107525415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A032277 (n + 2)

end

end A129526.P12443281441107525415

/-! ## A129526.P6082380438645682095

`A246998(n+2)`
-/

namespace A129526.P6082380438645682095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246998 (n + 2)

end

end A129526.P6082380438645682095

/-! ## A129526.P2013504752457020524

`A020725(A032278(n+2))`
-/

namespace A129526.P2013504752457020524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A032278 (n + 2)).toNat

end

end A129526.P2013504752457020524

/-!
# A129527: a(2n) = a(n) + 2n, a(2n+1) = 2n + 1.

The programs for A129527, the canonical program `A129527.P16393117615783917162` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129527 has offset 0).

The definition of A129527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129527.P16393117615783917162

`a(∑[n]%n)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A129527

/-- `a(∑[n]%n)+n` -/
def P16393117615783917162.Spec : Prop :=
  ∀ n, (P16393117615783917162.a n : ℤ) = A129527 n

theorem P16393117615783917162.correct : P16393117615783917162.Spec := by
  intro n
  simp only [A129527]

end A129527

/-! ## A129527.P8152513323222089585

`∑{d}[and(n, -n), n/#]`
-/

namespace A129527.P8152513323222089585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) / (d : ℚ)

end

end A129527.P8152513323222089585

namespace A129527

/-- `∑{d}[and(n, -n), n/#]` -/
def P8152513323222089585.Spec : Prop :=
  ∀ n, P8152513323222089585.a n = (A129527 n : ℚ)

end A129527

/-! ## A129527.P7689530317834847406

`∑{d}[or(n, -n), n/#]`
-/

namespace A129527.P7689530317834847406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) / (d : ℚ)

end

end A129527.P7689530317834847406

namespace A129527

/-- `∑{d}[or(n, -n), n/#]` -/
def P7689530317834847406.Spec : Prop :=
  ∀ n, P7689530317834847406.a n = (A129527 n : ℚ)

end A129527

/-! ## A129527.P17377820268143941440

`a(n-gcd(n, ∑[n]))+n` with `a(0)=0`
-/

namespace A129527.P17377820268143941440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + n

end

end A129527.P17377820268143941440

namespace A129527

/-- `a(n-gcd(n, ∑[n]))+n` -/
def P17377820268143941440.Spec : Prop :=
  ∀ n, (P17377820268143941440.a n : ℤ) = A129527 n

end A129527

/-! ## A129527.P421204958970973181

`∑{d}[n, A062570(#)]`
-/

namespace A129527.P421204958970973181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d

end

end A129527.P421204958970973181

namespace A129527

/-- `∑{d}[n, A062570(#)]` -/
def P421204958970973181.Spec : Prop :=
  ∀ n, P421204958970973181.a n = A129527 n

end A129527

/-! ## A129527.P10830465315069540884

`a(A142150(n))+n` with `a(0)=0`
-/

namespace A129527.P10830465315069540884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A142150 n).toNat + n

end

end A129527.P10830465315069540884

namespace A129527

/-- `a(A142150(n))+n` -/
def P10830465315069540884.Spec : Prop :=
  ∀ n, (P10830465315069540884.a n : ℤ) = A129527 n

end A129527

/-! ## A129527.P3559787500470495191

`a(A331739(n))+n` with `a(0)=0`
-/

namespace A129527.P3559787500470495191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A331739 n).toNat + n

end

end A129527.P3559787500470495191

namespace A129527

/-- `a(A331739(n))+n` -/
def P3559787500470495191.Spec : Prop :=
  ∀ n, (P3559787500470495191.a n : ℤ) = A129527 n

end A129527

/-! ## A129527.P9343950616902192134

`∑{d}[n, A000010(2*#)]`
-/

namespace A129527.P9343950616902192134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (2 * d)

end

end A129527.P9343950616902192134

namespace A129527

/-- `∑{d}[n, A000010(2*#)]` -/
def P9343950616902192134.Spec : Prop :=
  ∀ n, P9343950616902192134.a n = A129527 n

end A129527

/-! ## A129527.P17330308242551920333

`∑{d}[n, #-A176095(#)]`
-/

namespace A129527.P17330308242551920333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A176095 d)

end

end A129527.P17330308242551920333

namespace A129527

/-- `∑{d}[n, #-A176095(#)]` -/
def P17330308242551920333.Spec : Prop :=
  ∀ n, P17330308242551920333.a n = A129527 n

end A129527

/-! ## A129527.P11223446051655773701

`a(n-A026741(n))+n` with `a(0)=0`
-/

namespace A129527.P11223446051655773701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A026741 n).toNat + n

end

end A129527.P11223446051655773701

namespace A129527

/-- `a(n-A026741(n))+n` -/
def P11223446051655773701.Spec : Prop :=
  ∀ n, (P11223446051655773701.a n : ℤ) = A129527 n

end A129527

/-! ## A129527.P14140058175782742536

`A331739(A028310(n))+n`
-/

namespace A129527.P14140058175782742536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (A028310 n).toNat + (n : ℤ)

end

end A129527.P14140058175782742536

namespace A129527

/-- `A331739(A028310(n))+n` -/
def P14140058175782742536.Spec : Prop :=
  ∀ n, P14140058175782742536.a n = A129527 n

end A129527

/-! ## A129527.P14057347813406632975

`A004277(n)-A000265(A004277(n))`
-/

namespace A129527.P14057347813406632975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A000265 (A004277 n).toNat

end

end A129527.P14057347813406632975

namespace A129527

/-- `A004277(n)-A000265(A004277(n))` -/
def P14057347813406632975.Spec : Prop :=
  ∀ n, P14057347813406632975.a n = A129527 n

end A129527

/-! ## A129527.P10281017121959767873

`A004275(n+1)-A000265(A028310(n))`
-/

namespace A129527.P10281017121959767873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) - A000265 (A028310 n).toNat

end

end A129527.P10281017121959767873

namespace A129527

/-- `A004275(n+1)-A000265(A028310(n))` -/
def P10281017121959767873.Spec : Prop :=
  ∀ n, P10281017121959767873.a n = A129527 n

end A129527

/-! ## A129527.P15917132310334406919

`A055945(A030101(n))+A055945(n)+n`
-/

namespace A129527.P15917132310334406919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A030101 n).toNat + (A055945 n + (n : ℤ))

end

end A129527.P15917132310334406919

namespace A129527

/-- `A055945(A030101(n))+A055945(n)+n` -/
def P15917132310334406919.Spec : Prop :=
  ∀ n, P15917132310334406919.a n = A129527 n

end A129527

/-! ## A129527.P18111814969342396724

`2*n-A030101(A030101(n))`
-/

namespace A129527.P18111814969342396724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A030101 (A030101 n).toNat

end

end A129527.P18111814969342396724

namespace A129527

/-- `2*n-A030101(A030101(n))` -/
def P18111814969342396724.Spec : Prop :=
  ∀ n, P18111814969342396724.a n = A129527 n

end A129527

/-! ## A129527.P1761612830186456615

`2*n-A081431(A081432(n))`
-/

namespace A129527.P1761612830186456615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A081431 (A081432 n).toNat

end

end A129527.P1761612830186456615

namespace A129527

/-- `2*n-A081431(A081432(n))` -/
def P1761612830186456615.Spec : Prop :=
  ∀ n, P1761612830186456615.a n = A129527 n

end A129527

/-! ## A129527.P9105777200814090962

`n-A030101(A057889(n))+n`
-/

namespace A129527.P9105777200814090962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030101 (A057889 n).toNat + (n : ℤ)

end

end A129527.P9105777200814090962

namespace A129527

/-- `n-A030101(A057889(n))+n` -/
def P9105777200814090962.Spec : Prop :=
  ∀ n, P9105777200814090962.a n = A129527 n

end A129527

/-! ## A129527.P2327992699240677899

`A005408(n)-(A030101(A030101(n))+1)`
-/

namespace A129527.P2327992699240677899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A030101 (A030101 n).toNat + 1)

end

end A129527.P2327992699240677899

namespace A129527

/-- `A005408(n)-(A030101(A030101(n))+1)` -/
def P2327992699240677899.Spec : Prop :=
  ∀ n, P2327992699240677899.a n = A129527 n

end A129527

/-! ## A129527.P11813613341690033623

`A055944(n)+n-A055944(A030101(n))`
-/

namespace A129527.P11813613341690033623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + ((n : ℤ) - A055944 (A030101 n).toNat)

end

end A129527.P11813613341690033623

namespace A129527

/-- `A055944(n)+n-A055944(A030101(n))` -/
def P11813613341690033623.Spec : Prop :=
  ∀ n, P11813613341690033623.a n = A129527 n

end A129527

/-! ## A129527.P11021921523940911091

`∑{d}[n, A297117(2*#)]`
-/

namespace A129527.P11021921523940911091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297117 (2 * d)

end

end A129527.P11021921523940911091

namespace A129527

/-- `∑{d}[n, A297117(2*#)]` -/
def P11021921523940911091.Spec : Prop :=
  ∀ n, P11021921523940911091.a n = A129527 n

end A129527

/-!
# A129528: Number of Dyck paths such that the sum of the peak-abscissae is n.

The programs for A129528, there is no canonical definition to state claims against.
-/

/-! ## A129528.P8128037914785016206

`Δ[A237830((4*a(n-1))%2+n)]` with `a(0)=0`
-/

namespace A129528.P8128037914785016206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A237830 (Int.tmod (4 * f1 (n - 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129528.P8128037914785016206

/-! ## A129528.P16403546851496645329

`Δ[A237830(and(a(n-2)+3, -2)%2+n)]` with `a(0)=0, a(1)=1`
-/

namespace A129528.P16403546851496645329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A237830 (Int.tmod (Int.land (f1 (n - 2) + 3) (-2)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129528.P16403546851496645329

/-! ## A129528.P10869978709724095113

`Δ[A237830(A028310(n))]+floor(acot(n))`
-/

namespace A129528.P10869978709724095113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A129528.P10869978709724095113

/-! ## A129528.P7422987402533430403

`A000007(n)+Δ[A237830(A028310(n))]`
-/

namespace A129528.P7422987402533430403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A129528.P7422987402533430403

/-! ## A129528.P2805765097624477692

`Δ[A237830(A028310(n))+A057427(n)]`
-/

namespace A129528.P2805765097624477692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129528.P2805765097624477692

/-! ## A129528.P823702883926910301

`Δ[A237830(A028310(n))-A054977(n)]`
-/

namespace A129528.P823702883926910301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129528.P823702883926910301

/-! ## A129528.P18059111931173197162

`Δ[A237830(A028310(n))+A000040(n+1)%2]`
-/

namespace A129528.P18059111931173197162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129528.P18059111931173197162

/-! ## A129528.P8228903749183660445

`Δ[A237830((2^n)%2+n)]+floor(acot(n))`
-/

namespace A129528.P8228903749183660445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (2 ^ n % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A129528.P8228903749183660445

/-!
# A129530: a(n) = (1/2)*n*(n-1)*3^(n-1).

The programs for A129530, the canonical program `A129530.P15859394819639315620` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129530 has offset 0).

The definition of A129530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n-1)*3^(n-1)` (program `A129530.P8866697627972139697`, by `A129530.P8866697627972139697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129530.P8866697627972139697

`1/2*n*(n-1)*3^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129530.P8866697627972139697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A129530.P8866697627972139697

namespace A129530

/-- `1/2*n*(n-1)*3^(n-1)` -/
def P8866697627972139697.Spec : Prop :=
  ∀ n, P8866697627972139697.a n = (A129530 n : ℚ)

theorem P8866697627972139697.correct : P8866697627972139697.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A129530, Nat.add_sub_cancel, A129530.P8866697627972139697.a, A129530.P15859394819639315620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A129530, Nat.add_sub_cancel, A129530.P8866697627972139697.a, A129530.P15859394819639315620.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A129530

/-! ## A129530.P15859394819639315620

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A129530

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P15859394819639315620.Spec : Prop :=
  ∀ n, P15859394819639315620.a n = A129530 n

theorem P15859394819639315620.correct : P15859394819639315620.Spec := by
  intro n
  simp only [A129530]

end A129530

/-! ## A129530.P3170175384442718930

`A069515(n)+a(n-1)` with `a(0)=0`
-/

namespace A129530.P3170175384442718930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A069515 n + a (n - 1)

end

end A129530.P3170175384442718930

namespace A129530

/-- `A069515(n)+a(n-1)` -/
def P3170175384442718930.Spec : Prop :=
  ∀ n, P3170175384442718930.a n = A129530 n

end A129530

/-! ## A129530.P15668812884771465299

`A084900(n)-A383136(n)`
-/

namespace A129530.P15668812884771465299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084900 n - A383136 n

end

end A129530.P15668812884771465299

namespace A129530

/-- `A084900(n)-A383136(n)` -/
def P15668812884771465299.Spec : Prop :=
  ∀ n, P15668812884771465299.a n = A129530 n

end A129530

/-! ## A129530.P17937089997556523299

`A036068(n)-A027471(n+2)`
-/

namespace A129530.P17937089997556523299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036068 n - A027471 (n + 2)

end

end A129530.P17937089997556523299

namespace A129530

/-- `A036068(n)-A027471(n+2)` -/
def P17937089997556523299.Spec : Prop :=
  ∀ n, P17937089997556523299.a n = A129530 n

end A129530

/-! ## A129530.P14280509738589326361

`abs(Δ[A124302(n)]*A161680(n))`
-/

namespace A129530.P14280509738589326361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A161680 n|

end

end A129530.P14280509738589326361

namespace A129530

/-- `abs(Δ[A124302(n)]*A161680(n))` -/
def P14280509738589326361.Spec : Prop :=
  ∀ n, P14280509738589326361.a n = A129530 n

end A129530

/-! ## A129530.P3245855239173322202

`A080420(n)-(A027471(n+1)+A027471(n+2))`
-/

namespace A129530.P3245855239173322202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n - (A027471 (n + 1) + A027471 (n + 2))

end

end A129530.P3245855239173322202

namespace A129530

/-- `A080420(n)-(A027471(n+1)+A027471(n+2))` -/
def P3245855239173322202.Spec : Prop :=
  ∀ n, P3245855239173322202.a n = A129530 n

end A129530

/-! ## A129530.P9211591959270819961

`round(3^n*A000217(abs(1-n))/3)`
-/

namespace A129530.P9211591959270819961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 ^ n : ℤ) * A000217 |1 - (n : ℤ)|.toNat : ℚ) / 3)

end

end A129530.P9211591959270819961

namespace A129530

/-- `round(3^n*A000217(abs(1-n))/3)` -/
def P9211591959270819961.Spec : Prop :=
  ∀ n, P9211591959270819961.a n = A129530 n

end A129530

/-! ## A129530.P17098935798278713339

`A086951(n)-A084900(n)`
-/

namespace A129530.P17098935798278713339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086951 n - A084900 n

end

end A129530.P17098935798278713339

namespace A129530

/-- `A086951(n)-A084900(n)` -/
def P17098935798278713339.Spec : Prop :=
  ∀ n, P17098935798278713339.a n = A129530 n

end A129530

/-! ## A129530.P10009921631719279188

`∑[A069515(n+1)]-A069515(n+1)`
-/

namespace A129530.P10009921631719279188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069515 (n + 1)

end

end A129530.P10009921631719279188

namespace A129530

/-- `∑[A069515(n+1)]-A069515(n+1)` -/
def P10009921631719279188.Spec : Prop :=
  ∀ n, P10009921631719279188.a n = A129530 n

end A129530

/-! ## A129530.P17350935742608534335

`A128797(n)/6`
-/

namespace A129530.P17350935742608534335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 n : ℚ) / 6

end

end A129530.P17350935742608534335

namespace A129530

/-- `A128797(n)/6` -/
def P17350935742608534335.Spec : Prop :=
  ∀ n, P17350935742608534335.a n = (A129530 n : ℚ)

theorem P17350935742608534335.correct : P17350935742608534335.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A129530, Nat.add_sub_cancel, A129530.P17350935742608534335.a, A129530.P15859394819639315620.a, A128797, A128797.P16414781802524646076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A129530, Nat.add_sub_cancel, A129530.P17350935742608534335.a, A129530.P15859394819639315620.a, A128797, A128797.P16414781802524646076.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A129530

/-! ## A129530.P4772576098866494302

`A000302(n+1)-(A380249(n+1)+A027471(n+1))`
-/

namespace A129530.P4772576098866494302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - (A380249 (n + 1) + A027471 (n + 1))

end

end A129530.P4772576098866494302

namespace A129530

/-- `A000302(n+1)-(A380249(n+1)+A027471(n+1))` -/
def P4772576098866494302.Spec : Prop :=
  ∀ n, P4772576098866494302.a n = A129530 n

end A129530

/-! ## A129530.P1313573706068527728

`A005061(n+1)-(A380024(n+1)+A027471(n+1))`
-/

namespace A129530.P1313573706068527728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) - (A380024 (n + 1) + A027471 (n + 1))

end

end A129530.P1313573706068527728

namespace A129530

/-- `A005061(n+1)-(A380024(n+1)+A027471(n+1))` -/
def P1313573706068527728.Spec : Prop :=
  ∀ n, P1313573706068527728.a n = A129530 n

end A129530

/-!
# A129532: a(n) = 3n(n-1)4^(n-2).

The programs for A129532, the canonical program `A129532.P2710296928401358278` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129532 has offset 0).

The definition of A129532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129532.P2710296928401358278

`3*n*(n-1)*4^(n-2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A129532

/-- `3*n*(n-1)*4^(n-2)` -/
def P2710296928401358278.Spec : Prop :=
  ∀ n, P2710296928401358278.a n = (A129532 n : ℚ)

end A129532

/-! ## A129532.P14898272848670977029

`6*A052780(n)/2`
-/

namespace A129532.P14898272848670977029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A052780 n : ℚ) / 2

end

end A129532.P14898272848670977029

namespace A129532

/-- `6*A052780(n)/2` -/
def P14898272848670977029.Spec : Prop :=
  ∀ n, P14898272848670977029.a n = (A129532 n : ℚ)

end A129532

/-! ## A129532.P13526968488981163558

`C(n, 2)*Δ[A011782(n)²]/2`
-/

namespace A129532.P13526968488981163558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A129532.P13526968488981163558

namespace A129532

/-- `C(n, 2)*Δ[A011782(n)²]/2` -/
def P13526968488981163558.Spec : Prop :=
  ∀ n, P13526968488981163558.a n = (A129532 n : ℚ)

end A129532

/-! ## A129532.P3215547813391656945

`Δ[A052780(n)]-A002699(n)`
-/

namespace A129532.P3215547813391656945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002699 n

end

end A129532.P3215547813391656945

namespace A129532

/-- `Δ[A052780(n)]-A002699(n)` -/
def P3215547813391656945.Spec : Prop :=
  ∀ n, P3215547813391656945.a n = A129532 n

end A129532

/-! ## A129532.P4454259802185871006

`A001815(n)*A003945(n)/2`
-/

namespace A129532.P4454259802185871006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 n * A003945 n : ℚ) / 2

end

end A129532.P4454259802185871006

namespace A129532

/-- `A001815(n)*A003945(n)/2` -/
def P4454259802185871006.Spec : Prop :=
  ∀ n, P4454259802185871006.a n = (A129532 n : ℚ)

end A129532

/-!
# A129533: Array read by antidiagonals: T(n,k) = binomial(n+1,2)*binomial(n+k,n+1) for 0 <= k <= n.

The programs for A129533, there is no canonical definition to state claims against.
-/

/-! ## A129533.P4187069884271217003

`floor(A155864(n)/2)`
-/

namespace A129533.P4187069884271217003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155864 n : ℚ) / 2⌋

end

end A129533.P4187069884271217003

/-! ## A129533.P10738246013852941487

`A004526(A155864(n))`
-/

namespace A129533.P10738246013852941487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A155864 n).toNat

end

end A129533.P10738246013852941487

/-! ## A129533.P15637410156223279720

`A004524(A155864(n)+1)`
-/

namespace A129533.P15637410156223279720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A155864 n + 1).toNat

end

end A129533.P15637410156223279720

/-! ## A129533.P10418100264502506400

`A089196(A155864(n)+1)`
-/

namespace A129533.P10418100264502506400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (A155864 n + 1).toNat

end

end A129533.P10418100264502506400

/-! ## A129533.P10139703608626005984

`A249122(A155864(n)+1)`
-/

namespace A129533.P10139703608626005984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A155864 n + 1).toNat

end

end A129533.P10139703608626005984

/-! ## A129533.P3556537351037871666

`A300068(A155864(n)+1)`
-/

namespace A129533.P3556537351037871666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A155864 n + 1).toNat

end

end A129533.P3556537351037871666

/-! ## A129533.P12670253399893669378

`A001057(A155864(n)-1)`
-/

namespace A129533.P12670253399893669378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A155864 n - 1).toNat

end

end A129533.P12670253399893669378

/-! ## A129533.P11479927467159918727

`A112367(n)*A199011(n)`
-/

namespace A129533.P11479927467159918727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n * A199011 n

end

end A129533.P11479927467159918727

/-! ## A129533.P8692437709132980731

`A004247(n)/2*A007318(n)`
-/

namespace A129533.P8692437709132980731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004247 n : ℚ) / 2 * (A007318 n : ℚ)

end

end A129533.P8692437709132980731

/-! ## A129533.P10492693412386768512

`A007318(n)/2*log2(A117401(n))`
-/

namespace A129533.P10492693412386768512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A007318 n : ℚ) / 2 : ℝ) * Real.logb 2 (A117401 n : ℝ)

end

end A129533.P10492693412386768512

/-!
# A129534: Triangle read by rows: T(n,k) = number of permutations p of 1,...,n, with min(|p(i)-p(i-1)|, i=2..n) = k (n>=2, k>=1).

The programs for A129534, there is no canonical definition to state claims against.
-/

/-! ## A129534.P1557053500443283673

`lcm(2, p?[A180192(n)])`
-/

namespace A129534.P1557053500443283673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A129534.P1557053500443283673

/-!
# A129535: Number of permutations of 1,...,n with at least one pair of adjacent consecutive entries (i.e., of the form k(k+1) or (k+1)k), n >= 2.

The programs for A129535, there is no canonical definition to state claims against.
-/

/-! ## A129535.P5520060151120039241

`∏[n+2]-A001100(∑[n+1]+1)`
-/

namespace A129535.P5520060151120039241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001100 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A129535.P5520060151120039241

/-! ## A129535.P14080415486945565583

`A000142(n+2)-A002464(n+2)`
-/

namespace A129535.P14080415486945565583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A002464 (n + 2)

end

end A129535.P14080415486945565583

/-! ## A129535.P3217236852808439478

`record[A129534(n+2)]`
-/

namespace A129535.P3217236852808439478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129534 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129535.P3217236852808439478

/-! ## A129535.P10229532740458336017

`A129534(∑[ceil(n/2)]+2)`
-/

namespace A129535.P10229532740458336017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129534 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A129535.P10229532740458336017

/-! ## A129535.P15746863394939463437

`record[A322255(n+2)]-A002464(n+2)`
-/

namespace A129535.P15746863394939463437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002464 (n + 2)

end

end A129535.P15746863394939463437

/-!
# A129537: Prime numbers p of the form p=x^2+y^3 such that there exist three other prime numbers q,r,s such q=abs(x^2-y^3) ; r=x^3+y^2 ; s=abs(x^3-y^2); x > y.

The programs for A129537, there is no canonical definition to state claims against.
-/

/-! ## A129537.P5240060011137135923

`A130474(A100587(n+1)+A047836(n+2))`
-/

namespace A129537.P5240060011137135923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130474 (A100587 (n + 1) + A047836 (n + 2)).toNat

end

end A129537.P5240060011137135923

/-!
# A129538: a(n) = smallest positive integer such that lcm(a(1), a(2), ..., a(n)) is a multiple of the n-th triangular number n(n+1)/2.

The programs for A129538, there is no canonical definition to state claims against.
-/

/-! ## A129538.P13686194675879137469

`lcm(2, A100994(n+2))/2`
-/

namespace A129538.P13686194675879137469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A100994 (n + 2)) : ℚ) / 2

end

end A129538.P13686194675879137469

/-! ## A129538.P8560140737998596002

`gcd(∑[n+1], A000015(n+2))`
-/

namespace A129538.P8560140737998596002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000015 (n + 2))

end

end A129538.P8560140737998596002

/-! ## A129538.P9672744075915200839

`A100994(A153152(n+1))`
-/

namespace A129538.P9672744075915200839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A153152 (n + 1)).toNat

end

end A129538.P9672744075915200839

/-! ## A129538.P15960653144805723643

`A026741(A100994(n+2))`
-/

namespace A129538.P15960653144805723643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A100994 (n + 2)).toNat

end

end A129538.P15960653144805723643

/-! ## A129538.P14913836786000287152

`A004525(lcm(2, A100994(n+2)))`
-/

namespace A129538.P14913836786000287152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A100994 (n + 2)))

end

end A129538.P14913836786000287152

/-! ## A129538.P15190068228769834611

`A014963(n+2)^A023645(n+2)`
-/

namespace A129538.P15190068228769834611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) ^ (A023645 (n + 2) : ℤ)

end

end A129538.P15190068228769834611

/-! ## A129538.P14003984060457989717

`A014963(n+2)^A046079(n+2)`
-/

namespace A129538.P14003984060457989717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) ^ (A046079 (n + 2) : ℤ)

end

end A129538.P14003984060457989717

/-! ## A129538.P3346032275288511169

`gcd(A145051(n+1), A244063(n+2))`
-/

namespace A129538.P3346032275288511169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145051 (n + 1)) (A244063 (n + 2))

end

end A129538.P3346032275288511169

/-! ## A129538.P14585807096332755275

`A145051(n+1)^(A001221(n+2)!%2)`
-/

namespace A129538.P14585807096332755275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) ^ (Nat.factorial (A001221 (n + 2)).toNat % 2)

end

end A129538.P14585807096332755275

/-! ## A129538.P781485060362239241

`A014963(n+2)^A001222((n+2)/gcd(2, n))`
-/

namespace A129538.P781485060362239241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) ^ (A001222 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Nat.gcd 2 n : ℚ))).toNat : ℤ)

end

end A129538.P781485060362239241

/-!
# A129539: Composite numbers to composite powers.

The programs for A129539, there is no canonical definition to state claims against.
-/

/-! ## A129539.P14253144024046971180

`A144548(n+3)²`
-/

namespace A129539.P14253144024046971180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144548 (n + 3) ^ 2

end

end A129539.P14253144024046971180

/-! ## A129539.P9018905366355745992

`A002620(2*A144548(n+3))`
-/

namespace A129539.P9018905366355745992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A144548 (n + 3)).toNat

end

end A129539.P9018905366355745992

/-! ## A129539.P4348971449148923229

`∩[A036967(n+1), A223456(n+1)²]`
-/

namespace A129539.P4348971449148923229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223456 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129539.P4348971449148923229

/-! ## A129539.P14225354196048272475

`A144548(n+3)^A020639(2*(n+1))`
-/

namespace A129539.P14225354196048272475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144548 (n + 3) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A129539.P14225354196048272475

/-! ## A129539.P7496855271676413839

`A144548(n+3)^A001222(2*A000040(n+1))`
-/

namespace A129539.P7496855271676413839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144548 (n + 3) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A129539.P7496855271676413839

/-!
# A129540: Triangular numbers T such that T+10 is the next prime after T.

The programs for A129540, there is no canonical definition to state claims against.
-/

/-! ## A129540.P1842260794902912336

`C(A129546(n+1)+1, 2)`
-/

namespace A129540.P1842260794902912336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129546 (n + 1) + 1).toNat 2

end

end A129540.P1842260794902912336

/-! ## A129540.P2018630486814628336

`A000217(A129546(n+1))`
-/

namespace A129540.P2018630486814628336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A129546 (n + 1)).toNat

end

end A129540.P2018630486814628336

/-! ## A129540.P12006862665680364904

`A161680(A129546(n+1)+1)`
-/

namespace A129540.P12006862665680364904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A129546 (n + 1) + 1).toNat

end

end A129540.P12006862665680364904

/-! ## A129540.P5586916534756397513

`A253145(A129546(n+1)-1)`
-/

namespace A129540.P5586916534756397513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A129546 (n + 1) - 1).toNat

end

end A129540.P5586916534756397513

/-! ## A129540.P1145582872442764275

`A167614(A129546(n+1)-1)-3`
-/

namespace A129540.P1145582872442764275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (A129546 (n + 1) - 1).toNat - 3

end

end A129540.P1145582872442764275

/-!
# A129541: Primes of the form p^2 + q^2 + A007918(p + q) - p - q, where p and q are consecutive primes.

The programs for A129541, there is no canonical definition to state claims against.
-/

/-! ## A129541.P1691538633481768009

`p?[A098084(n+1)+A069484(n+1)]`
-/

namespace A129541.P1691538633481768009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098084 (n + 1) + A069484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129541.P1691538633481768009

/-! ## A129541.P13420878243249101039

`p?[A069484(n+1)+A007920(A011974(n+2))]`
-/

namespace A129541.P13420878243249101039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A007920 (A011974 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129541.P13420878243249101039

/-!
# A129542: Number of isolated primes < 10^n.

The programs for A129542, there is no canonical definition to state claims against.
-/

/-! ## A129542.P16746228539716856593

`A006880(n+1)-2*A007508(n+1)+1`
-/

namespace A129542.P16746228539716856593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - 2 * A007508 (n + 1) + 1

end

end A129542.P16746228539716856593

/-! ## A129542.P665292030494081293

`A006880(n+1)-A167874(n+1)`
-/

namespace A129542.P665292030494081293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A167874 (n + 1)

end

end A129542.P665292030494081293

/-! ## A129542.P15425901382794948436

`∑[A006879(n+1)]-A167874(n+1)`
-/

namespace A129542.P15425901382794948436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167874 (n + 1)

end

end A129542.P15425901382794948436

/-! ## A129542.P10715351375394224041

`A122121(A004277(n+1))-A167874(n+1)`
-/

namespace A129542.P10715351375394224041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A004277 (n + 1)).toNat - A167874 (n + 1)

end

end A129542.P10715351375394224041

/-!
# A129543: Gray code ordering of the prime numbers.

The programs for A129543, the canonical program `A129543.P9396367169730864309` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129543 has offset 0).

The definition of A129543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129543.P9396367169730864309

`A000040(1+A003188(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129543

/-- `A000040(1+A003188(n))` -/
def P9396367169730864309.Spec : Prop :=
  ∀ n, P9396367169730864309.a n = A129543 n

theorem P9396367169730864309.correct : P9396367169730864309.Spec := by
  intro n
  simp only [A129543]

end A129543

/-! ## A129543.P9536116035552089312

`A000040(xor(n, floor(n/2))+1)`
-/

namespace A129543.P9536116035552089312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A129543.P9536116035552089312

namespace A129543

/-- `A000040(xor(n, floor(n/2))+1)` -/
def P9536116035552089312.Spec : Prop :=
  ∀ n, P9536116035552089312.a n = A129543 n

theorem P9536116035552089312.correct : P9536116035552089312.Spec := by
  intro n
  simp only [A129543, Nat.add_sub_cancel, A129543.P9536116035552089312.a, A129543.P9396367169730864309.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129543

/-! ## A129543.P5418615590594415799

`A008578(xor(n, floor(n/2))+2)`
-/

namespace A129543.P5418615590594415799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A129543.P5418615590594415799

namespace A129543

/-- `A008578(xor(n, floor(n/2))+2)` -/
def P5418615590594415799.Spec : Prop :=
  ∀ n, P5418615590594415799.a n = A129543 n

end A129543

/-! ## A129543.P11552132575063846586

`A182986(xor(n, floor(n/2))+2)`
-/

namespace A129543.P11552132575063846586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A129543.P11552132575063846586

namespace A129543

/-- `A182986(xor(n, floor(n/2))+2)` -/
def P11552132575063846586.Spec : Prop :=
  ∀ n, P11552132575063846586.a n = A129543 n

end A129543

/-! ## A129543.P1029748070875131432

`sqrt(A001248(xor(n, floor(n/2))+1))`
-/

namespace A129543.P1029748070875131432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat : ℝ)

end

end A129543.P1029748070875131432

namespace A129543

/-- `sqrt(A001248(xor(n, floor(n/2))+1))` -/
def P1029748070875131432.Spec : Prop :=
  ∀ n, P1029748070875131432.a n = (A129543 n : ℝ)

end A129543

/-! ## A129543.P5527414656657293492

`A000040(-xor(n, ∑[and(1, n)-1]))`
-/

namespace A129543.P5527414656657293492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (-Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A129543.P5527414656657293492

namespace A129543

/-- `A000040(-xor(n, ∑[and(1, n)-1]))` -/
def P5527414656657293492.Spec : Prop :=
  ∀ n, P5527414656657293492.a n = A129543 n

end A129543

/-! ## A129543.P8713486324927778556

`A000040(-xor(xor(n, floor(n/2)), -1))`
-/

namespace A129543.P8713486324927778556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (-Int.xor (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (-1)).toNat

end

end A129543.P8713486324927778556

namespace A129543

/-- `A000040(-xor(xor(n, floor(n/2)), -1))` -/
def P8713486324927778556.Spec : Prop :=
  ∀ n, P8713486324927778556.a n = A129543 n

end A129543

/-! ## A129543.P16825149912375241097

`A006093(xor(n, floor(n/2))+1)+1`
-/

namespace A129543.P16825149912375241097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat + 1

end

end A129543.P16825149912375241097

namespace A129543

/-- `A006093(xor(n, floor(n/2))+1)+1` -/
def P16825149912375241097.Spec : Prop :=
  ∀ n, P16825149912375241097.a n = A129543 n

theorem P16825149912375241097.correct : P16825149912375241097.Spec := by
  intro n
  simp only [A129543, Nat.add_sub_cancel, A129543.P16825149912375241097.a, A129543.P9396367169730864309.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003188, A003188.P10544524695508875182.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129543

/-! ## A129543.P2863738318293305536

`A000040(A105081(n+1))`
-/

namespace A129543.P2863738318293305536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105081 (n + 1)).toNat

end

end A129543.P2863738318293305536

namespace A129543

/-- `A000040(A105081(n+1))` -/
def P2863738318293305536.Spec : Prop :=
  ∀ n, P2863738318293305536.a n = A129543 n

end A129543

/-! ## A129543.P13302432402427933095

`A008578(A003188(n)+2)`
-/

namespace A129543.P13302432402427933095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003188 n + 2).toNat

end

end A129543.P13302432402427933095

namespace A129543

/-- `A008578(A003188(n)+2)` -/
def P13302432402427933095.Spec : Prop :=
  ∀ n, P13302432402427933095.a n = A129543 n

end A129543

/-! ## A129543.P4677905265309669512

`A182986(A003188(n)+2)`
-/

namespace A129543.P4677905265309669512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A003188 n + 2).toNat

end

end A129543.P4677905265309669512

namespace A129543

/-- `A182986(A003188(n)+2)` -/
def P4677905265309669512.Spec : Prop :=
  ∀ n, P4677905265309669512.a n = A129543 n

end A129543

/-! ## A129543.P1313708867682683476

`p?[A209259(A003188(n))]`
-/

namespace A129543.P1313708867682683476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129543.P1313708867682683476

namespace A129543

/-- `p?[A209259(A003188(n))]` -/
def P1313708867682683476.Spec : Prop :=
  ∀ n, P1313708867682683476.a n = A129543 n

end A129543

/-! ## A129543.P13979671454530950529

`A000040(A160588(A122199(2*n+1)))`
-/

namespace A129543.P13979671454530950529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A160588 (A122199 (2 * n + 1)).toNat).toNat

end

end A129543.P13979671454530950529

namespace A129543

/-- `A000040(A160588(A122199(2*n+1)))` -/
def P13979671454530950529.Spec : Prop :=
  ∀ n, P13979671454530950529.a n = A129543 n

end A129543

/-! ## A129543.P6733466598933880444

`A003188(A338524(A105081(A054429(A054429(n+1)))))`
-/

namespace A129543.P6733466598933880444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A338524 (A105081 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A129543.P6733466598933880444

namespace A129543

/-- `A003188(A338524(A105081(A054429(A054429(n+1)))))` -/
def P6733466598933880444.Spec : Prop :=
  ∀ n, P6733466598933880444.a n = A129543 n

end A129543

/-!
# A129544: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+137)^2 = y^2.

The programs for A129544, there is no canonical definition to state claims against.
-/

/-! ## A129544.P10912459912144591918

`A185394(n+1)+A118120(n)-A129289(n+1)`
-/

namespace A129544.P10912459912144591918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185394 (n + 1) + (A118120 n - A129289 (n + 1))

end

end A129544.P10912459912144591918

/-!
# A129545: Triangular numbers T such that T+1 is a prime.

The programs for A129545, there is no canonical definition to state claims against.
-/

/-! ## A129545.P8345175330192686064

`A055469(n+1)-1`
-/

namespace A129545.P8345175330192686064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1) - 1

end

end A129545.P8345175330192686064

/-! ## A129545.P1196870730911643012

`A000217(A067186(n+1))`
-/

namespace A129545.P1196870730911643012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A067186 (n + 1)).toNat

end

end A129545.P1196870730911643012

/-! ## A129545.P1635952343945241744

`∪[A188382(n+1), A285790(n+1)]-1`
-/

namespace A129545.P1635952343945241744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A129545.P1635952343945241744

/-! ## A129545.P5439457434702894463

`A304438(A100484(n+1))+A055469(n+1)`
-/

namespace A129545.P5439457434702894463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A100484 (n + 1)).toNat + A055469 (n + 1)

end

end A129545.P5439457434702894463

/-! ## A129545.P11836234917350324036

`A354347(A000040(n+1))+A055469(n+1)`
-/

namespace A129545.P11836234917350324036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A000040 (n + 1)).toNat + A055469 (n + 1)

end

end A129545.P11836234917350324036

/-! ## A129545.P7095903802123406399

`record[A118680(n+1)-1]`
-/

namespace A129545.P7095903802123406399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129545.P7095903802123406399

/-! ## A129545.P15960386183331318977

`A033999(2*n+1)+record[A118680(n+1)]`
-/

namespace A129545.P15960386183331318977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129545.P15960386183331318977

/-! ## A129545.P2520299250606949067

`A001971(A110872(n+1))`
-/

namespace A129545.P2520299250606949067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A110872 (n + 1)).toNat

end

end A129545.P2520299250606949067

/-! ## A129545.P6553230744480806975

`A110660(2*A067186(n+1))/2`
-/

namespace A129545.P6553230744480806975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (2 * A067186 (n + 1)).toNat : ℚ) / 2

end

end A129545.P6553230744480806975

/-! ## A129545.P18213264659654668412

`p?[∑[n]+1]-1`
-/

namespace A129545.P18213264659654668412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A129545.P18213264659654668412

/-! ## A129545.P16696959389193173302

`abs(1-p?[C(n, 2)+1])`
-/

namespace A129545.P16696959389193173302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)|

end

end A129545.P16696959389193173302

/-! ## A129545.P11517079722634119529

`∑{d}[p?[C(n, 2)+1], #]-2`
-/

namespace A129545.P11517079722634119529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2

end

end A129545.P11517079722634119529

/-! ## A129545.P1848379292443633492

`∏{p}[p?[C(n, 2)+1], #-1]`
-/

namespace A129545.P1848379292443633492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)

end

end A129545.P1848379292443633492

/-! ## A129545.P1475876849017478561

`abs(1-p?[a(n-1)+n])` with `a(0)=1`
-/

namespace A129545.P1475876849017478561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)|

end

end A129545.P1475876849017478561

/-! ## A129545.P18199655380787108710

`∏{d}[p?[a(n-1)+n], #]-1` with `a(0)=1`
-/

namespace A129545.P18199655380787108710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A129545.P18199655380787108710

/-! ## A129545.P17701694820970956283

`abs(1-p?[A000124(n)])`
-/

namespace A129545.P17701694820970956283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A129545.P17701694820970956283

/-! ## A129545.P16569264510983285524

`record[p?[A241807(n)]-1]`
-/

namespace A129545.P16569264510983285524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129545.P16569264510983285524

/-! ## A129545.P13096021873950984162

`abs(1-p?[A000217(n)+1])`
-/

namespace A129545.P13096021873950984162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A129545.P13096021873950984162

/-! ## A129545.P12680883957280630160

`record[p?[A226089(n+1)]-1]`
-/

namespace A129545.P12680883957280630160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129545.P12680883957280630160

/-!
# A129546: Numbers k such that T(k)+10 is the next prime after T(k), where T(k) = A000217(k).

The programs for A129546, the canonical program `A129546.P12413915237248930736` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129546 has offset 1).

The definition of A129546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129546.P12413915237248930736

`eq[10, A075402(A028310(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129546

/-- `eq[10, A075402(A028310(n))]` -/
def P12413915237248930736.Spec : Prop :=
  ∀ n, (P12413915237248930736.a n : ℤ) = A129546 (n + 1)

theorem P12413915237248930736.correct : P12413915237248930736.Spec := by
  intro n
  simp only [A129546, Nat.add_sub_cancel]

end A129546

/-! ## A129546.P11786918347494646056

`A065475(eq[10, A075402(n+1)])`
-/

namespace A129546.P11786918347494646056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129546.P11786918347494646056

namespace A129546

/-- `A065475(eq[10, A075402(n+1)])` -/
def P11786918347494646056.Spec : Prop :=
  ∀ n, P11786918347494646056.a n = A129546 (n + 1)

end A129546

/-! ## A129546.P6019744756611425188

`eq[10, A075402(A233583(n+1))]`
-/

namespace A129546.P6019744756611425188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129546.P6019744756611425188

namespace A129546

/-- `eq[10, A075402(A233583(n+1))]` -/
def P6019744756611425188.Spec : Prop :=
  ∀ n, (P6019744756611425188.a n : ℤ) = A129546 (n + 1)

end A129546

/-! ## A129546.P17345386308983545485

`floor(sqrt(2*A129540(n+1)))`
-/

namespace A129546.P17345386308983545485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A129540 (n + 1))

end

end A129546.P17345386308983545485

namespace A129546

/-- `floor(sqrt(2*A129540(n+1)))` -/
def P17345386308983545485.Spec : Prop :=
  ∀ n, P17345386308983545485.a n = A129546 (n + 1)

end A129546

/-! ## A129546.P2789063393513879103

`round(sqrt(2*A129540(n+1))*A007318((n²+n)/2))`
-/

namespace A129546.P2789063393513879103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A129540 (n + 1) : ℝ) * (A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℝ))

end

end A129546.P2789063393513879103

namespace A129546

/-- `round(sqrt(2*A129540(n+1))*A007318((n²+n)/2))` -/
def P2789063393513879103.Spec : Prop :=
  ∀ n, P2789063393513879103.a n = A129546 (n + 1)

end A129546

/-!
# A129547: a(n)= n! - (n-1)!! - a(n-1), with a(1)=1!-0!!=0.

The programs for A129547, there is no canonical definition to state claims against.
-/

/-! ## A129547.P7110869370561769807

`A127111(n)-a(n-1)` with `a(0)=0`
-/

namespace A129547.P7110869370561769807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127111 n - a (n - 1)

end

end A129547.P7110869370561769807

/-! ## A129547.P4612041884866904587

`abs(∑[A038608(A127111(n))])`
-/

namespace A129547.P4612041884866904587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A127111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A129547.P4612041884866904587

/-!
# A129548: Measures of entanglement in 3-qbits.

The programs for A129548, the canonical program `A129548.P2542562975087608923` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129548 has offset 0).

The definition of A129548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129548.P2542562975087608923

`∑[A081284(2*A028242(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A129548

/-- `∑[A081284(2*A028242(n))]` -/
def P2542562975087608923.Spec : Prop :=
  ∀ n, P2542562975087608923.a n = A129548 n

theorem P2542562975087608923.correct : P2542562975087608923.Spec := by
  intro n
  simp only [A129548]

end A129548

/-! ## A129548.P2316669512161396546

`∑[A081284(A005843(A028242(n)))]`
-/

namespace A129548.P2316669512161396546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (A005843 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129548.P2316669512161396546

namespace A129548

/-- `∑[A081284(A005843(A028242(n)))]` -/
def P2316669512161396546.Spec : Prop :=
  ∀ n, P2316669512161396546.a n = A129548 n

end A129548

/-! ## A129548.P4448063964790854542

`∑[A081284(A028242(n)+A028242(n))]`
-/

namespace A129548.P4448063964790854542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (A028242 n + A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129548.P4448063964790854542

namespace A129548

/-- `∑[A081284(A028242(n)+A028242(n))]` -/
def P4448063964790854542.Spec : Prop :=
  ∀ n, P4448063964790854542.a n = A129548 n

theorem P4448063964790854542.correct : P4448063964790854542.Spec := by
  intro n
  simp only [A129548, Nat.add_sub_cancel, A129548.P4448063964790854542.f1, A129548.P4448063964790854542.a, A129548.P2542562975087608923.f1, A129548.P2542562975087608923.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129548

/-!
# A129549: Dimension of space of measures of entanglement that are homogeneous of degree 2n, for the case of four qubits.

The programs for A129549, there is no canonical definition to state claims against.
-/

/-! ## A129549.P2031439391695641768

`A332588(a(n-1))+n-2` with `a(0)=1, a(1)=3`
-/

namespace A129549.P2031439391695641768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A332588 (a (n - 1)).toNat + ((n : ℤ) - 2)

end

end A129549.P2031439391695641768

/-!
# A129550: Number of real polynomial invariants for the action of 4 copies of U(2) on the fourth tensor power of C^2.

The programs for A129550, there is no canonical definition to state claims against.
-/

/-! ## A129550.P12530478956878149000

`A033781(A342906(n+2)-A174195(n))`
-/

namespace A129550.P12530478956878149000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033781 (A342906 (n + 2) - A174195 n).toNat

end

end A129550.P12530478956878149000

/-!
# A129551: Number of ways to place n+2 queens and 2 pawns on an n X n board so that no two queens attack each other.

The programs for A129551, there is no canonical definition to state claims against.
-/

/-! ## A129551.P13771435502693611563

`and(A213784(n+1), A243700(A241704(n+1)+1))`
-/

namespace A129551.P13771435502693611563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213784 (n + 1)) (A243700 (A241704 (n + 1) + 1).toNat)

end

end A129551.P13771435502693611563

/-! ## A129551.P12239221227466198020

`A008592(3*n+4)%A351012(A126176(n+1))`
-/

namespace A129551.P12239221227466198020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008592 (3 * n + 4)) (A351012 (A126176 (n + 1)).toNat)

end

end A129551.P12239221227466198020

/-! ## A129551.P4642882746699338020

`A059995((A010054(n+2)-floor(A002663(n)/3))²)`
-/

namespace A129551.P4642882746699338020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ((A010054 (n + 2) - ⌊(A002663 n : ℚ) / 3⌋) ^ 2).toNat

end

end A129551.P4642882746699338020

/-!
# A129552: Number of ways to place n+2 queens and 2 pawns on an n X n board so that no two queens attack each other (symmetric solutions count only once).

The programs for A129552, there is no canonical definition to state claims against.
-/

/-! ## A129552.P4732306020774558114

`∑[A270805(A109537(n))]`
-/

namespace A129552.P4732306020774558114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270805 (A109537 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129552.P4732306020774558114

/-! ## A129552.P16540652829267120677

`∑[A329625(A326467(comp[3*n]))]`
-/

namespace A129552.P16540652829267120677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329625 (A326467 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129552.P16540652829267120677

/-! ## A129552.P14499311345433218023

`A025443(A128566(n)+A007318(n))`
-/

namespace A129552.P14499311345433218023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A128566 n + A007318 n).toNat

end

end A129552.P14499311345433218023

/-! ## A129552.P5217770887803976076

`A088688(n)%A178334(A001250(n))`
-/

namespace A129552.P5217770887803976076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088688 n) (A178334 (A001250 n).toNat)

end

end A129552.P5217770887803976076

/-! ## A129552.P10258781969240231318

`A027870(A332930(n)+A000005(3*n+2))`
-/

namespace A129552.P10258781969240231318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A332930 n + A000005 (3 * n + 2)).toNat

end

end A129552.P10258781969240231318

/-!
# A129553: Number of ways to place n+3 queens and 3 pawns on an n X n board so that no two queens attack each other.

The programs for A129553, there is no canonical definition to state claims against.
-/

/-! ## A129553.P6011618953960890763

`and(A023467(n), A025462(A000110(n)))`
-/

namespace A129553.P6011618953960890763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023467 n) (A025462 (A000110 n).toNat)

end

end A129553.P6011618953960890763

/-! ## A129553.P7836003495018140499

`and(A001034(A041971(n)), A038385(n))`
-/

namespace A129553.P7836003495018140499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001034 (A041971 n).toNat) (A038385 n)

end

end A129553.P7836003495018140499

/-! ## A129553.P8747444687923611759

`A308957(n)*A381552(A079955(2*n))`
-/

namespace A129553.P8747444687923611759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308957 n * A381552 (A079955 (2 * n)).toNat

end

end A129553.P8747444687923611759

/-! ## A129553.P9846213823739831573

`A043450(A007496(n+2))-A043450(n+1)`
-/

namespace A129553.P9846213823739831573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043450 (A007496 (n + 2)).toNat - A043450 (n + 1)

end

end A129553.P9846213823739831573

/-! ## A129553.P17576095232964390417

`and(60, Δ[A241458(n+1)])`
-/

namespace A129553.P17576095232964390417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 60 (f1 (n + 1) - f1 n)

end

end A129553.P17576095232964390417

/-!
# A129554: Number of ways to place n+3 queens and 3 pawns on an n X n board so that no two queens attack each other (symmetric solutions count only once).

The programs for A129554, there is no canonical definition to state claims against.
-/

/-! ## A129554.P12990375007599997117

`C(A028829(C(n, 7)), 2)`
-/

namespace A129554.P12990375007599997117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028829 (Nat.choose n 7)).toNat 2

end

end A129554.P12990375007599997117

/-! ## A129554.P8711806223686783284

`A333222(∑[floor(n/6)]!)`
-/

namespace A129554.P8711806223686783284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A129554.P8711806223686783284

/-! ## A129554.P14343496635436211854

`floor(A241467(n+1)/sqrt(10))`
-/

namespace A129554.P14343496635436211854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241467 (n + 1) : ℝ) / Real.sqrt (10 : ℝ)⌋

end

end A129554.P14343496635436211854

/-! ## A129554.P4331727560991840170

`A045914(floor(C(n, 4)/23)+1)`
-/

namespace A129554.P4331727560991840170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045914 (⌊(Nat.choose n 4 : ℚ) / 23⌋ + 1).toNat

end

end A129554.P4331727560991840170

/-! ## A129554.P16116220283869926545

`round(round(A241465(n+1)/32)*comp[n²]/32)`
-/

namespace A129554.P16116220283869926545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A241465 (n + 1) : ℚ) / 32) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) : ℚ) / 32)

end

end A129554.P16116220283869926545

/-!
# A129555: A054523 * A129372.

The programs for A129555, the canonical program `A129555.P480594090586041492` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129555 has offset 0).

The definition of A129555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129555.P6575520999691896666

`lcm(2, A126988(n+1))/2`
-/

namespace A129555.P6575520999691896666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A126988 (n + 1)) : ℚ) / 2

end

end A129555.P6575520999691896666

namespace A129555

/-- `lcm(2, A126988(n+1))/2` -/
def P6575520999691896666.Spec : Prop :=
  ∀ n, P6575520999691896666.a n = (A129555 n : ℚ)

end A129555

/-! ## A129555.P5426861218051295735

`lcm(2*(n+1), A127446(n+1))/(2*(n+1))`
-/

namespace A129555.P5426861218051295735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * (n + 1) : ℤ) (A127446 (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A129555.P5426861218051295735

namespace A129555

/-- `lcm(2*(n+1), A127446(n+1))/(2*(n+1))` -/
def P5426861218051295735.Spec : Prop :=
  ∀ n, P5426861218051295735.a n = (A129555 n : ℚ)

end A129555

/-! ## A129555.P480594090586041492

`A026741(A126988(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129555

/-- `A026741(A126988(n+1))` -/
def P480594090586041492.Spec : Prop :=
  ∀ n, P480594090586041492.a n = A129555 n

theorem P480594090586041492.correct : P480594090586041492.Spec := by
  intro n
  simp only [A129555]

end A129555

/-! ## A129555.P12009550196708730043

`A030065(2*A126988(n+1))`
-/

namespace A129555.P12009550196708730043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A126988 (n + 1)).toNat

end

end A129555.P12009550196708730043

namespace A129555

/-- `A030065(2*A126988(n+1))` -/
def P12009550196708730043.Spec : Prop :=
  ∀ n, P12009550196708730043.a n = A129555 n

end A129555

/-! ## A129555.P14632650642560142766

`A173234(2*A126988(n+1))`
-/

namespace A129555.P14632650642560142766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (2 * A126988 (n + 1)).toNat

end

end A129555.P14632650642560142766

namespace A129555

/-- `A173234(2*A126988(n+1))` -/
def P14632650642560142766.Spec : Prop :=
  ∀ n, P14632650642560142766.a n = A129555 n

end A129555

/-! ## A129555.P9311207361871796141

`A026730(4*A126988(n+1))`
-/

namespace A129555.P9311207361871796141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (4 * A126988 (n + 1)).toNat

end

end A129555.P9311207361871796141

namespace A129555

/-- `A026730(4*A126988(n+1))` -/
def P9311207361871796141.Spec : Prop :=
  ∀ n, P9311207361871796141.a n = A129555 n

end A129555

/-! ## A129555.P2117449937379747723

`A126988(n+1)/gcd(2, A010766(n+1))`
-/

namespace A129555.P2117449937379747723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126988 (n + 1) : ℚ) / (Int.gcd 2 (A010766 (n + 1)) : ℚ)

end

end A129555.P2117449937379747723

namespace A129555

/-- `A126988(n+1)/gcd(2, A010766(n+1))` -/
def P2117449937379747723.Spec : Prop :=
  ∀ n, P2117449937379747723.a n = (A129555 n : ℚ)

end A129555

/-! ## A129555.P17857890267902341702

`A173234(A126988(n+1)+A126988(n+1))`
-/

namespace A129555.P17857890267902341702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (A126988 (n + 1) + A126988 (n + 1)).toNat

end

end A129555.P17857890267902341702

namespace A129555

/-- `A173234(A126988(n+1)+A126988(n+1))` -/
def P17857890267902341702.Spec : Prop :=
  ∀ n, P17857890267902341702.a n = A129555 n

end A129555

/-! ## A129555.P16374155308455772290

`A026741(A143311(n+1)/A123229(n+1))`
-/

namespace A129555.P16374155308455772290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A143311 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ))).toNat

end

end A129555.P16374155308455772290

namespace A129555

/-- `A026741(A143311(n+1)/A123229(n+1))` -/
def P16374155308455772290.Spec : Prop :=
  ∀ n, P16374155308455772290.a n = A129555 n

end A129555

/-!
# A129556: Numbers k such that the k-th centered pentagonal number A005891(k) = (5k^2 + 5k + 2)/2 is a square.

The programs for A129556, the canonical program `A129556.P6471837384351776912` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129556 has offset 1).

The definition of A129556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129556.P6471837384351776912

`38*a(n-2)-a(n-4)+18` with `a(0)=0, a(1)=2, a(2)=21, a(3)=95`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A129556

/-- `38*a(n-2)-a(n-4)+18` -/
def P6471837384351776912.Spec : Prop :=
  ∀ n, P6471837384351776912.a n = A129556 (n + 1)

theorem P6471837384351776912.correct : P6471837384351776912.Spec := by
  intro n
  simp only [A129556, Nat.add_sub_cancel]

end A129556

/-! ## A129556.P11328335466682148630

`(A221874(n+1)-1)/2`
-/

namespace A129556.P11328335466682148630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221874 (n + 1) - 1 : ℚ) / 2

end

end A129556.P11328335466682148630

namespace A129556

/-- `(A221874(n+1)-1)/2` -/
def P11328335466682148630.Spec : Prop :=
  ∀ n, P11328335466682148630.a n = (A129556 (n + 1) : ℚ)

theorem P11328335466682148630.correct : P11328335466682148630.Spec := by
  intro n
  simp only [A129556, Nat.add_sub_cancel, A129556.P11328335466682148630.a, A129556.P6471837384351776912.a, A221874, A221874.P16110993488221044620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129556

/-! ## A129556.P14135550049448698195

`A254332(n+1)-1`
-/

namespace A129556.P14135550049448698195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (n + 1) - 1

end

end A129556.P14135550049448698195

namespace A129556

/-- `A254332(n+1)-1` -/
def P14135550049448698195.Spec : Prop :=
  ∀ n, P14135550049448698195.a n = A129556 (n + 1)

end A129556

/-! ## A129556.P4964809002859970109

`A278400(A178334(n))+A254332(n+1)`
-/

namespace A129556.P4964809002859970109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (A178334 n).toNat + A254332 (n + 1)

end

end A129556.P4964809002859970109

namespace A129556

/-- `A278400(A178334(n))+A254332(n+1)` -/
def P4964809002859970109.Spec : Prop :=
  ∀ n, P4964809002859970109.a n = A129556 (n + 1)

end A129556

/-! ## A129556.P15428574615534576805

`floor(A221874(n+1)/2)`
-/

namespace A129556.P15428574615534576805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221874 (n + 1) : ℚ) / 2⌋

end

end A129556.P15428574615534576805

namespace A129556

/-- `floor(A221874(n+1)/2)` -/
def P15428574615534576805.Spec : Prop :=
  ∀ n, P15428574615534576805.a n = A129556 (n + 1)

end A129556

/-! ## A129556.P17482588706436436466

`(A031150(A047346(n+1))-1)/2`
-/

namespace A129556.P17482588706436436466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031150 (A047346 (n + 1)).toNat - 1 : ℚ) / 2

end

end A129556.P17482588706436436466

namespace A129556

/-- `(A031150(A047346(n+1))-1)/2` -/
def P17482588706436436466.Spec : Prop :=
  ∀ n, P17482588706436436466.a n = (A129556 (n + 1) : ℚ)

end A129556

/-! ## A129556.P9326379825733481333

`(A295334(A047241(n+1))-1)/2`
-/

namespace A129556.P9326379825733481333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295334 (A047241 (n + 1)).toNat - 1 : ℚ) / 2

end

end A129556.P9326379825733481333

namespace A129556

/-- `(A295334(A047241(n+1))-1)/2` -/
def P9326379825733481333.Spec : Prop :=
  ∀ n, P9326379825733481333.a n = (A129556 (n + 1) : ℚ)

end A129556

/-! ## A129556.P1055499065720523577

`A221874(n+1)%A254332(n+1)`
-/

namespace A129556.P1055499065720523577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221874 (n + 1)) (A254332 (n + 1))

end

end A129556.P1055499065720523577

namespace A129556

/-- `A221874(n+1)%A254332(n+1)` -/
def P1055499065720523577.Spec : Prop :=
  ∀ n, P1055499065720523577.a n = A129556 (n + 1)

end A129556

/-! ## A129556.P3768643295718193222

`A031150(A047346(n+1))%A254332(n+1)`
-/

namespace A129556.P3768643295718193222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031150 (A047346 (n + 1)).toNat) (A254332 (n + 1))

end

end A129556.P3768643295718193222

namespace A129556

/-- `A031150(A047346(n+1))%A254332(n+1)` -/
def P3768643295718193222.Spec : Prop :=
  ∀ n, P3768643295718193222.a n = A129556 (n + 1)

end A129556

/-! ## A129556.P4079202450381241435

`A295334(A047241(n+1))%A254332(n+1)`
-/

namespace A129556.P4079202450381241435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295334 (A047241 (n + 1)).toNat) (A254332 (n + 1))

end

end A129556.P4079202450381241435

namespace A129556

/-- `A295334(A047241(n+1))%A254332(n+1)` -/
def P4079202450381241435.Spec : Prop :=
  ∀ n, P4079202450381241435.a n = A129556 (n + 1)

end A129556

/-!
# A129557: Numbers k > 0 such that k^2 is a centered pentagonal number (A005891).

The programs for A129557, the canonical program `A129557.P6482594984299663953` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129557 has offset 1).

The definition of A129557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129557.P6482594984299663953

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=34, a(3)=151`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A129557

/-- `38*a(n-2)-a(n-4)` -/
def P6482594984299663953.Spec : Prop :=
  ∀ n, P6482594984299663953.a n = A129557 (n + 1)

theorem P6482594984299663953.correct : P6482594984299663953.Spec := by
  intro n
  simp only [A129557, Nat.add_sub_cancel]

end A129557

/-! ## A129557.P17077117847601311792

`(A005667(n+1)-(-1)^(n+1)*A005667(n))/4`
-/

namespace A129557.P17077117847601311792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 (n + 1) - (-1) ^ (n + 1) * A005667 n : ℚ) / 4

end

end A129557.P17077117847601311792

namespace A129557

/-- `(A005667(n+1)-(-1)^(n+1)*A005667(n))/4` -/
def P17077117847601311792.Spec : Prop :=
  ∀ n, P17077117847601311792.a n = (A129557 (n + 1) : ℚ)

end A129557

/-! ## A129557.P18424252654870033522

`sqrt((5*A129556(n+1)²+5*A129556(n+1)+2)/2)`
-/

namespace A129557.P18424252654870033522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 * A129556 (n + 1) ^ 2 + 5 * A129556 (n + 1) + 2 : ℚ) / 2 : ℝ)

end

end A129557.P18424252654870033522

namespace A129557

/-- `sqrt((5*A129556(n+1)²+5*A129556(n+1)+2)/2)` -/
def P18424252654870033522.Spec : Prop :=
  ∀ n, P18424252654870033522.a n = (A129557 (n + 1) : ℝ)

end A129557

/-! ## A129557.P7311092035077506568

`A116559(A092259(n+1))/2`
-/

namespace A129557.P7311092035077506568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116559 (A092259 (n + 1)).toNat : ℚ) / 2

end

end A129557.P7311092035077506568

namespace A129557

/-- `A116559(A092259(n+1))/2` -/
def P7311092035077506568.Spec : Prop :=
  ∀ n, P7311092035077506568.a n = (A129557 (n + 1) : ℚ)

end A129557

/-! ## A129557.P456737031416240685

`∑[A116559(A008458(n)+A000035(n))]`
-/

namespace A129557.P456737031416240685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008458 n + A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129557.P456737031416240685

namespace A129557

/-- `∑[A116559(A008458(n)+A000035(n))]` -/
def P456737031416240685.Spec : Prop :=
  ∀ n, P456737031416240685.a n = A129557 (n + 1)

end A129557

/-! ## A129557.P14549721317771239571

`sqrt(A254333(n+1))`
-/

namespace A129557.P14549721317771239571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A254333 (n + 1) : ℝ)

end

end A129557.P14549721317771239571

namespace A129557

/-- `sqrt(A254333(n+1))` -/
def P14549721317771239571.Spec : Prop :=
  ∀ n, P14549721317771239571.a n = (A129557 (n + 1) : ℝ)

end A129557

/-! ## A129557.P6502911356355758724

`gcd(A253411(n+1), A254333(n+1))`
-/

namespace A129557.P6502911356355758724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253411 (n + 1)) (A254333 (n + 1))

end

end A129557.P6502911356355758724

namespace A129557

/-- `gcd(A253411(n+1), A254333(n+1))` -/
def P6502911356355758724.Spec : Prop :=
  ∀ n, (P6502911356355758724.a n : ℤ) = A129557 (n + 1)

end A129557

/-! ## A129557.P17676312067676889295

`root(A254333(n+1), A034444(A034444(n+1)))`
-/

namespace A129557.P17676312067676889295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254333 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A129557.P17676312067676889295

namespace A129557

/-- `root(A254333(n+1), A034444(A034444(n+1)))` -/
def P17676312067676889295.Spec : Prop :=
  ∀ n, P17676312067676889295.a n = (A129557 (n + 1) : ℝ)

end A129557

/-!
# A129558: A054523 * A129360.

The programs for A129558, the canonical program `A129558.P8312074485780016787` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129558 has offset 1).

The definition of A129558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129558.P8312074485780016787

`A007431(2*lcm(2, A126988(n+1)))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129558

/-- `A007431(2*lcm(2, A126988(n+1)))` -/
def P8312074485780016787.Spec : Prop :=
  ∀ n, P8312074485780016787.a n = A129558 (n + 1)

theorem P8312074485780016787.correct : P8312074485780016787.Spec := by
  intro n
  simp only [A129558, Nat.add_sub_cancel]

end A129558

/-! ## A129558.P15679440788954790494

`A000120(A168019(n)^A023416(n))`
-/

namespace A129558.P15679440788954790494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A168019 n : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A129558.P15679440788954790494

namespace A129558

/-- `A000120(A168019(n)^A023416(n))` -/
def P15679440788954790494.Spec : Prop :=
  ∀ n, P15679440788954790494.a n = A129558 (n + 1)

end A129558

/-! ## A129558.P18261123242467856559

`A004718(A168019(n)^A023416(n))`
-/

namespace A129558.P18261123242467856559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (SequenceMachineLib.roundAway ((A168019 n : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A129558.P18261123242467856559

namespace A129558

/-- `A004718(A168019(n)^A023416(n))` -/
def P18261123242467856559.Spec : Prop :=
  ∀ n, P18261123242467856559.a n = A129558 (n + 1)

end A129558

/-! ## A129558.P11591068442633642330

`A000120(A168019(n)^A080791(n))`
-/

namespace A129558.P11591068442633642330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A168019 n : ℚ) ^ (A080791 n : ℤ))).toNat

end

end A129558.P11591068442633642330

namespace A129558

/-- `A000120(A168019(n)^A080791(n))` -/
def P11591068442633642330.Spec : Prop :=
  ∀ n, P11591068442633642330.a n = A129558 (n + 1)

end A129558

/-! ## A129558.P17328374382373707255

`A159195(A385666(n+1))`
-/

namespace A129558.P17328374382373707255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159195 (A385666 (n + 1)).toNat

end

end A129558.P17328374382373707255

namespace A129558

/-- `A159195(A385666(n+1))` -/
def P17328374382373707255.Spec : Prop :=
  ∀ n, P17328374382373707255.a n = A129558 (n + 1)

end A129558

/-!
# A129559: Triangle read by rows: A054523 * A115361 as infinite lower triangular matrices.

The programs for A129559, the canonical program `A129559.P13162806888516698489` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129559 has offset 1).

The definition of A129559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129559.P13162806888516698489

`(2-A129372(n+1))*A054523(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A129559

/-- `(2-A129372(n+1))*A054523(n+1)` -/
def P13162806888516698489.Spec : Prop :=
  ∀ n, P13162806888516698489.a n = A129559 (n + 1)

theorem P13162806888516698489.correct : P13162806888516698489.Spec := by
  intro n
  simp only [A129559, Nat.add_sub_cancel]

end A129559

/-! ## A129559.P14218715379646023643

`gcd(2, A010766(n+1))*A054523(n+1)`
-/

namespace A129559.P14218715379646023643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A010766 (n + 1)) : ℤ) * A054523 (n + 1)

end

end A129559.P14218715379646023643

namespace A129559

/-- `gcd(2, A010766(n+1))*A054523(n+1)` -/
def P14218715379646023643.Spec : Prop :=
  ∀ n, P14218715379646023643.a n = A129559 (n + 1)

end A129559

/-! ## A129559.P11001481137040512658

`A051731(n+1)*A062570(A010766(n+1))`
-/

namespace A129559.P11001481137040512658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A062570 (A010766 (n + 1)).toNat

end

end A129559.P11001481137040512658

namespace A129559

/-- `A051731(n+1)*A062570(A010766(n+1))` -/
def P11001481137040512658.Spec : Prop :=
  ∀ n, P11001481137040512658.a n = A129559 (n + 1)

end A129559

/-! ## A129559.P1497751956683327688

`A000010(2*A010766(n+1))*A051731(n+1)`
-/

namespace A129559.P1497751956683327688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A129559.P1497751956683327688

namespace A129559

/-- `A000010(2*A010766(n+1))*A051731(n+1)` -/
def P1497751956683327688.Spec : Prop :=
  ∀ n, P1497751956683327688.a n = A129559 (n + 1)

end A129559

/-! ## A129559.P6008073201450406032

`A000010(2*A054531(n+1))*A051731(n+1)`
-/

namespace A129559.P6008073201450406032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A129559.P6008073201450406032

namespace A129559

/-- `A000010(2*A054531(n+1))*A051731(n+1)` -/
def P6008073201450406032.Spec : Prop :=
  ∀ n, P6008073201450406032.a n = A129559 (n + 1)

end A129559

/-! ## A129559.P5033486379371966889

`lcm(A000010(2*A010766(n+1)), A054523(n+1))`
-/

namespace A129559.P5033486379371966889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (2 * A010766 (n + 1)).toNat) (A054523 (n + 1))

end

end A129559.P5033486379371966889

namespace A129559

/-- `lcm(A000010(2*A010766(n+1)), A054523(n+1))` -/
def P5033486379371966889.Spec : Prop :=
  ∀ n, (P5033486379371966889.a n : ℤ) = A129559 (n + 1)

end A129559

/-!
# A129560: A054523 * A128174.

The programs for A129560, there is no canonical definition to state claims against.
-/

/-! ## A129560.P4916490334890935397

`A130028(n+1)+A011727(A289943(n+1))`
-/

namespace A129560.P4916490334890935397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (n + 1) + A011727 (A289943 (n + 1)).toNat

end

end A129560.P4916490334890935397

/-! ## A129560.P7737653598810689682

`or(A016389(A000217(n)), A130028(n+1))`
-/

namespace A129560.P7737653598810689682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A000217 n).toNat) (A130028 (n + 1))

end

end A129560.P7737653598810689682

/-! ## A129560.P11562514592750632483

`or(A107846(A059078(n)), A130028(n+1))`
-/

namespace A129560.P11562514592750632483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A059078 n).toNat) (A130028 (n + 1))

end

end A129560.P11562514592750632483

/-! ## A129560.P12341333959539770771

`A001068(A130028(n+1)%A227007(n+1))`
-/

namespace A129560.P12341333959539770771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (Int.tmod (A130028 (n + 1)) (A227007 (n + 1))).toNat

end

end A129560.P12341333959539770771

/-! ## A129560.P5895606229653197019

`A130028(n+1)+A016389(A000217(A016389(n)+n))`
-/

namespace A129560.P5895606229653197019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (n + 1) + A016389 (A000217 (A016389 n + (n : ℤ)).toNat).toNat

end

end A129560.P5895606229653197019

/-!
# A129561: A054523 * A115369.

The programs for A129561, there is no canonical definition to state claims against.
-/

/-! ## A129561.P16395699172685516040

`A051731(n+1)*A326305(A010766(n+1))`
-/

namespace A129561.P16395699172685516040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A326305 (A010766 (n + 1)).toNat

end

end A129561.P16395699172685516040

/-! ## A129561.P16269956634315534628

`A051731(n+1)*A326305(A049834(n+1))`
-/

namespace A129561.P16269956634315534628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A326305 (A049834 (n + 1)).toNat

end

end A129561.P16269956634315534628

/-! ## A129561.P3097997077462769775

`A051731(n+1)*A326305(A051537(n+1))`
-/

namespace A129561.P3097997077462769775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A326305 (A051537 (n + 1)).toNat

end

end A129561.P3097997077462769775

/-! ## A129561.P3464066760919172360

`A051731(n+1)*A326305(A054531(n+1))`
-/

namespace A129561.P3464066760919172360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A326305 (A054531 (n + 1)).toNat

end

end A129561.P3464066760919172360

/-! ## A129561.P4267838233788520645

`A051731(n+1)*A326305(A234575(n+1))`
-/

namespace A129561.P4267838233788520645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A326305 (A234575 (n + 1)).toNat

end

end A129561.P4267838233788520645

/-! ## A129561.P5307694910348117415

`A129559(n+1)%A054084(A010766(n+1))`
-/

namespace A129561.P5307694910348117415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129559 (n + 1)) (A054084 (A010766 (n + 1)).toNat)

end

end A129561.P5307694910348117415

/-! ## A129561.P8108996056214530491

`lcm(A048272(A010766(n+1)), A129691(n+1))`
-/

namespace A129561.P8108996056214530491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048272 (A010766 (n + 1)).toNat) (A129691 (n + 1))

end

end A129561.P8108996056214530491

/-! ## A129561.P15849392268534861357

`A326305(A054531(n+1))%A050490(A126988(n+1))`
-/

namespace A129561.P15849392268534861357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326305 (A054531 (n + 1)).toNat) (A050490 (A126988 (n + 1)).toNat)

end

end A129561.P15849392268534861357

/-!
# A129563: Primes not in a certain recursively defined set of primes.

The programs for A129563, there is no canonical definition to state claims against.
-/

/-! ## A129563.P11330506669285576979

`p?[floor(n/6)*A212287(n+1)]`
-/

namespace A129563.P11330506669285576979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋ * A212287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129563.P11330506669285576979

/-! ## A129563.P15547956766466708262

`p?[A008618(A318720(n+1))]`
-/

namespace A129563.P15547956766466708262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A318720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129563.P15547956766466708262

/-!
# A129564: A129360 * A000012.

The programs for A129564, there is no canonical definition to state claims against.
-/

/-! ## A129564.P5196286290054863067

`A129569(A131406(n+1)+n)`
-/

namespace A129564.P5196286290054863067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129569 (A131406 (n + 1) + (n : ℤ)).toNat

end

end A129564.P5196286290054863067

/-! ## A129564.P13206910411355775779

`A129569(n+1)+A129569(n+2)`
-/

namespace A129564.P13206910411355775779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129569 (n + 1) + A129569 (n + 2)

end

end A129564.P13206910411355775779

/-! ## A129564.P16948927706524182712

`A129569(A185870(n+1))`
-/

namespace A129564.P16948927706524182712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129569 (A185870 (n + 1)).toNat

end

end A129564.P16948927706524182712

/-! ## A129564.P897265650400344226

`A036987(A127057(n+1)%A218522(n+1))`
-/

namespace A129564.P897265650400344226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Int.tmod (A127057 (n + 1)) (A218522 (n + 1))).toNat

end

end A129564.P897265650400344226

/-! ## A129564.P6968984382632620453

`A264048(A331145(n+1))`
-/

namespace A129564.P6968984382632620453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264048 (A331145 (n + 1)).toNat

end

end A129564.P6968984382632620453

/-!
# A129565: A115359 * A000012 as infinite lower triangular matrices.

The programs for A129565, the canonical program `A129565.P15275435627333648511` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129565 has offset 1).

The definition of A129565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129565.P17006680954198220259

`∑[char[n*ceil(n/2)]]%2`
-/

namespace A129565.P17006680954198220259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A129565.P17006680954198220259

namespace A129565

/-- `∑[char[n*ceil(n/2)]]%2` -/
def P17006680954198220259.Spec : Prop :=
  ∀ n, (P17006680954198220259.a n : ℤ) = A129565 (n + 1)

end A129565

/-! ## A129565.P418778554558488677

`and(1, ∑[char[n*ceil(n/2)]])`
-/

namespace A129565.P418778554558488677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129565.P418778554558488677

namespace A129565

/-- `and(1, ∑[char[n*ceil(n/2)]])` -/
def P418778554558488677.Spec : Prop :=
  ∀ n, (P418778554558488677.a n : ℤ) = A129565 (n + 1)

end A129565

/-! ## A129565.P9248615069783520553

`and(1, ∑[char[n*round(n/2)]])²`
-/

namespace A129565.P9248615069783520553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A129565.P9248615069783520553

namespace A129565

/-- `and(1, ∑[char[n*round(n/2)]])²` -/
def P9248615069783520553.Spec : Prop :=
  ∀ n, (P9248615069783520553.a n : ℤ) = A129565 (n + 1)

end A129565

/-! ## A129565.P17278803804550701757

`C(comp[n*Δ[n²]], comp[2*n²])`
-/

namespace A129565.P17278803804550701757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A129565.P17278803804550701757

namespace A129565

/-- `C(comp[n*Δ[n²]], comp[2*n²])` -/
def P17278803804550701757.Spec : Prop :=
  ∀ n, (P17278803804550701757.a n : ℤ) = A129565 (n + 1)

end A129565

/-! ## A129565.P5946064290087731768

`ceil(ceil(sqrt(8*(n+1)))²%8/7)`
-/

namespace A129565.P5946064290087731768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ ^ 2) 8 : ℚ) / 7⌉

end

end A129565.P5946064290087731768

namespace A129565

/-- `ceil(ceil(sqrt(8*(n+1)))²%8/7)` -/
def P5946064290087731768.Spec : Prop :=
  ∀ n, P5946064290087731768.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P18319411649972459721

`xor(a(n-1), char[n*ceil(n/2)])` with `a(0)=1`
-/

namespace A129565.P18319411649972459721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A129565.P18319411649972459721

namespace A129565

/-- `xor(a(n-1), char[n*ceil(n/2)])` -/
def P18319411649972459721.Spec : Prop :=
  ∀ n, (P18319411649972459721.a n : ℤ) = A129565 (n + 1)

end A129565

/-! ## A129565.P16979816369624177127

`abs(a(n-1)-char[n*ceil(n/2)])` with `a(0)=1`
-/

namespace A129565.P16979816369624177127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A129565.P16979816369624177127

namespace A129565

/-- `abs(a(n-1)-char[n*ceil(n/2)])` -/
def P16979816369624177127.Spec : Prop :=
  ∀ n, P16979816369624177127.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P15336714223644487108

`(a(n-1)-char[n*ceil(n/2)])²` with `a(0)=1`
-/

namespace A129565.P15336714223644487108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A129565.P15336714223644487108

namespace A129565

/-- `(a(n-1)-char[n*ceil(n/2)])²` -/
def P15336714223644487108.Spec : Prop :=
  ∀ n, P15336714223644487108.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P6481650291784235813

`A000035(A141294(n+1))`
-/

namespace A129565.P6481650291784235813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A141294 (n + 1)).toNat

end

end A129565.P6481650291784235813

namespace A129565

/-- `A000035(A141294(n+1))` -/
def P6481650291784235813.Spec : Prop :=
  ∀ n, P6481650291784235813.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P11821595975739666351

`A152822(A261491(n+1))`
-/

namespace A129565.P11821595975739666351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A261491 (n + 1)).toNat

end

end A129565.P11821595975739666351

namespace A129565

/-- `A152822(A261491(n+1))` -/
def P11821595975739666351.Spec : Prop :=
  ∀ n, P11821595975739666351.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P7412352814850684577

`A047999(A237447(n+1)+n+1)`
-/

namespace A129565.P7412352814850684577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A237447 (n + 1) + (n + 1 : ℤ)).toNat

end

end A129565.P7412352814850684577

namespace A129565

/-- `A047999(A237447(n+1)+n+1)` -/
def P7412352814850684577.Spec : Prop :=
  ∀ n, P7412352814850684577.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P15275435627333648511

`A183301(n+1)+1-A183300(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129565

/-- `A183301(n+1)+1-A183300(n+1)` -/
def P15275435627333648511.Spec : Prop :=
  ∀ n, P15275435627333648511.a n = A129565 (n + 1)

theorem P15275435627333648511.correct : P15275435627333648511.Spec := by
  intro n
  simp only [A129565, Nat.add_sub_cancel]

end A129565

/-! ## A129565.P3538562131935635720

`A128174(A132118(n+1))`
-/

namespace A129565.P3538562131935635720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A132118 (n + 1)).toNat

end

end A129565.P3538562131935635720

namespace A129565

/-- `A128174(A132118(n+1))` -/
def P3538562131935635720.Spec : Prop :=
  ∀ n, P3538562131935635720.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P4861427974272092944

`A128174(A002260(n+1)+n)`
-/

namespace A129565.P4861427974272092944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A002260 (n + 1) + (n : ℤ)).toNat

end

end A129565.P4861427974272092944

namespace A129565

/-- `A128174(A002260(n+1)+n)` -/
def P4861427974272092944.Spec : Prop :=
  ∀ n, P4861427974272092944.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P11811219705936444714

`A128174(A002262(n)+n+1)`
-/

namespace A129565.P11811219705936444714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A002262 n + (n + 1 : ℤ)).toNat

end

end A129565.P11811219705936444714

namespace A129565

/-- `A128174(A002262(n)+n+1)` -/
def P11811219705936444714.Spec : Prop :=
  ∀ n, P11811219705936444714.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P17969661558652571354

`A000035(A004736(A002260(n+1)+n))`
-/

namespace A129565.P17969661558652571354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (A002260 (n + 1) + (n : ℤ)).toNat).toNat

end

end A129565.P17969661558652571354

namespace A129565

/-- `A000035(A004736(A002260(n+1)+n))` -/
def P17969661558652571354.Spec : Prop :=
  ∀ n, P17969661558652571354.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P1738281234946530716

`A245842(A278818(n)+A002260(n+1))`
-/

namespace A129565.P1738281234946530716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (A278818 n + A002260 (n + 1)).toNat

end

end A129565.P1738281234946530716

namespace A129565

/-- `A245842(A278818(n)+A002260(n+1))` -/
def P1738281234946530716.Spec : Prop :=
  ∀ n, P1738281234946530716.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P8334542721308406954

`A059841(A279211(n))`
-/

namespace A129565.P8334542721308406954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A279211 n).toNat

end

end A129565.P8334542721308406954

namespace A129565

/-- `A059841(A279211(n))` -/
def P8334542721308406954.Spec : Prop :=
  ∀ n, P8334542721308406954.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P645673922792328069

`A000035(A279211(n)+1)`
-/

namespace A129565.P645673922792328069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A279211 n + 1).toNat

end

end A129565.P645673922792328069

namespace A129565

/-- `A000035(A279211(n)+1)` -/
def P645673922792328069.Spec : Prop :=
  ∀ n, P645673922792328069.a n = A129565 (n + 1)

end A129565

/-! ## A129565.P16807098354947757823

`1-A267053(Δ[n²])`
-/

namespace A129565.P16807098354947757823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129565.P16807098354947757823

namespace A129565

/-- `1-A267053(Δ[n²])` -/
def P16807098354947757823.Spec : Prop :=
  ∀ n, P16807098354947757823.a n = A129565 (n + 1)

end A129565

/-!
# A129566: A007318 * A129565.

The programs for A129566, there is no canonical definition to state claims against.
-/

/-! ## A129566.P9326008940269173070

`A014473(n)+A001227(A109767(n))`
-/

namespace A129566.P9326008940269173070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A001227 (A109767 n).toNat

end

end A129566.P9326008940269173070

/-!
# A129567: a(n) = number of positive divisors of the denominator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

The programs for A129567, the canonical program `A129567.P3074375712733796166` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129567 has offset 1).

The definition of A129567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129567.P3074375712733796166

`A000005(A002805(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129567

/-- `A000005(A002805(n+1))` -/
def P3074375712733796166.Spec : Prop :=
  ∀ n, P3074375712733796166.a n = A129567 (n + 1)

theorem P3074375712733796166.correct : P3074375712733796166.Spec := by
  intro n
  simp only [A129567, Nat.add_sub_cancel]

end A129567

/-! ## A129567.P1782857510785847128

`∏{e}[A231693(n+1), #+1]`
-/

namespace A129567.P1782857510785847128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A129567.P1782857510785847128

namespace A129567

/-- `∏{e}[A231693(n+1), #+1]` -/
def P1782857510785847128.Spec : Prop :=
  ∀ n, (P1782857510785847128.a n : ℤ) = A129567 (n + 1)

end A129567

/-! ## A129567.P5458590167468382981

`∏{e}[sqrt(A103931(n+1)), #+1]`
-/

namespace A129567.P5458590167468382981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103931 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A129567.P5458590167468382981

namespace A129567

/-- `∏{e}[sqrt(A103931(n+1)), #+1]` -/
def P5458590167468382981.Spec : Prop :=
  ∀ n, (P5458590167468382981.a n : ℤ) = A129567 (n + 1)

end A129567

/-! ## A129567.P1832246011190031635

`∏{e}[A213999(∑[n+2]-1), #+1]`
-/

namespace A129567.P1832246011190031635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A129567.P1832246011190031635

namespace A129567

/-- `∏{e}[A213999(∑[n+2]-1), #+1]` -/
def P1832246011190031635.Spec : Prop :=
  ∀ n, (P1832246011190031635.a n : ℤ) = A129567 (n + 1)

end A129567

/-! ## A129567.P10757975887660416422

`sqrt(∏{e}[A035047(2*(n+1))/2, (#+1)²])`
-/

namespace A129567.P10757975887660416422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1) ^ 2 : ℕ) : ℝ)

end

end A129567.P10757975887660416422

namespace A129567

/-- `sqrt(∏{e}[A035047(2*(n+1))/2, (#+1)²])` -/
def P10757975887660416422.Spec : Prop :=
  ∀ n, P10757975887660416422.a n = (A129567 (n + 1) : ℝ)

end A129567

/-!
# A129568: a(n) is the number of positive divisors of the numerator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

The programs for A129568, the canonical program `A129568.P17056387709866541555` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129568 has offset 1).

The definition of A129568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129568.P17056387709866541555

`A000005(A001008(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129568

/-- `A000005(A001008(n+1))` -/
def P17056387709866541555.Spec : Prop :=
  ∀ n, P17056387709866541555.a n = A129568 (n + 1)

theorem P17056387709866541555.correct : P17056387709866541555.Spec := by
  intro n
  simp only [A129568, Nat.add_sub_cancel]

end A129568

/-! ## A129568.P18258871223046026478

`A000005(A175441(n+1)%A206118(n+1))`
-/

namespace A129568.P18258871223046026478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A175441 (n + 1)) (A206118 (n + 1))).toNat

end

end A129568.P18258871223046026478

namespace A129568

/-- `A000005(A175441(n+1)%A206118(n+1))` -/
def P18258871223046026478.Spec : Prop :=
  ∀ n, P18258871223046026478.a n = A129568 (n + 1)

end A129568

/-! ## A129568.P13581242685121813518

`A000005(A004526(n+3)*A318362(2*n+3))`
-/

namespace A129568.P13581242685121813518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004526 (n + 3) * A318362 (2 * n + 3)).toNat

end

end A129568.P13581242685121813518

namespace A129568

/-- `A000005(A004526(n+3)*A318362(2*n+3))` -/
def P13581242685121813518.Spec : Prop :=
  ∀ n, P13581242685121813518.a n = A129568 (n + 1)

end A129568

/-! ## A129568.P14821663578503143224

`A000005(A035048(2*(n+1))%A206118(n+1))`
-/

namespace A129568.P14821663578503143224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A035048 (2 * (n + 1))) (A206118 (n + 1))).toNat

end

end A129568.P14821663578503143224

namespace A129568

/-- `A000005(A035048(2*(n+1))%A206118(n+1))` -/
def P14821663578503143224.Spec : Prop :=
  ∀ n, P14821663578503143224.a n = A129568 (n + 1)

end A129568

/-! ## A129568.P17736862097984450854

`A000005(A175441(n+1))`
-/

namespace A129568.P17736862097984450854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175441 (n + 1)).toNat

end

end A129568.P17736862097984450854

namespace A129568

/-- `A000005(A175441(n+1))` -/
def P17736862097984450854.Spec : Prop :=
  ∀ n, P17736862097984450854.a n = A129568 (n + 1)

end A129568

/-!
# A129569: A129360 * A128174.

The programs for A129569, there is no canonical definition to state claims against.
-/

/-! ## A129569.P4955975837197179027

`A129564(n)-a(n-1)` with `a(0)=1`
-/

namespace A129569.P4955975837197179027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129564 n - a (n - 1)

end

end A129569.P4955975837197179027

/-! ## A129569.P2826504396035943463

`comp[∑[4*n]]%2*A129564(n+1)`
-/

namespace A129569.P2826504396035943463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A129564 (n + 1)

end

end A129569.P2826504396035943463

/-! ## A129569.P10367460761293518416

`A128174(n+1)*A129564(n+1)`
-/

namespace A129569.P10367460761293518416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A129564 (n + 1)

end

end A129569.P10367460761293518416

/-! ## A129569.P7536373843092493933

`A116652(A342770(n))%2`
-/

namespace A129569.P7536373843092493933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116652 (A342770 n).toNat) 2

end

end A129569.P7536373843092493933

/-! ## A129569.P269559226210248719

`and(A129564(n+1), A135814(n))`
-/

namespace A129569.P269559226210248719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129564 (n + 1)) (A135814 n)

end

end A129569.P269559226210248719

/-!
# A129570: A007318 * A129360.

The programs for A129570, there is no canonical definition to state claims against.
-/

/-! ## A129570.P3585238404999019703

`A145515(n)-Δ[A000005(A111820(n))]`
-/

namespace A129570.P3585238404999019703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 n - (f1 (n + 1) - f1 n)

end

end A129570.P3585238404999019703

/-! ## A129570.P18073569934434399514

`A096751(n)-Δ[A007814(2^A278984(n+1))]`
-/

namespace A129570.P18073569934434399514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A278984 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 n - (f1 (n + 1) - f1 n)

end

end A129570.P18073569934434399514

/-! ## A129570.P10830920919378941608

`A028326(n)-A115726(A051532(A193791(n)))`
-/

namespace A129570.P10830920919378941608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A115726 (A051532 (A193791 n).toNat).toNat

end

end A129570.P10830920919378941608

/-!
# A129571: A129360 * A007318.

The programs for A129571, there is no canonical definition to state claims against.
-/

/-! ## A129571.P5743037405598023013

`A129564(n+1)+A014081(A059328(n))`
-/

namespace A129571.P5743037405598023013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129564 (n + 1) + A014081 (A059328 n).toNat

end

end A129571.P5743037405598023013

/-! ## A129571.P7218503838131591775

`A007318(n)-A288926(A157727(n))`
-/

namespace A129571.P7218503838131591775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A288926 (A157727 n).toNat

end

end A129571.P7218503838131591775

/-! ## A129571.P16538753533870762455

`A007318(n)-A316867(A139547(n)²)`
-/

namespace A129571.P16538753533870762455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A316867 (A139547 n ^ 2).toNat

end

end A129571.P16538753533870762455

/-! ## A129571.P2283047585282349002

`xor(A007318(n), A284817(A075499(n+2)))`
-/

namespace A129571.P2283047585282349002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 n) (A284817 (A075499 (n + 2)).toNat)

end

end A129571.P2283047585282349002

/-! ## A129571.P12926029956291196352

`(A131060(n)+2)/3-A288926(A157727(n))`
-/

namespace A129571.P12926029956291196352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 - (A288926 (A157727 n).toNat : ℚ)

end

end A129571.P12926029956291196352

/-!
# A129572: A129372 * A097806.

The programs for A129572, the canonical program `A129572.P323978587708688268` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129572 has offset 1).

The definition of A129572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129572.P2547464850231796656

`Δ[A129372(n+1)]^A025581(n)`
-/

namespace A129572.P2547464850231796656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A025581 n : ℤ)

end

end A129572.P2547464850231796656

namespace A129572

/-- `Δ[A129372(n+1)]^A025581(n)` -/
def P2547464850231796656.Spec : Prop :=
  ∀ n, P2547464850231796656.a n = (A129572 (n + 1) : ℚ)

end A129572

/-! ## A129572.P13743476784487743249

`Δ[A129372(n+1)]^A051933(n)`
-/

namespace A129572.P13743476784487743249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051933 n : ℤ)

end

end A129572.P13743476784487743249

namespace A129572

/-- `Δ[A129372(n+1)]^A051933(n)` -/
def P13743476784487743249.Spec : Prop :=
  ∀ n, P13743476784487743249.a n = (A129572 (n + 1) : ℚ)

end A129572

/-! ## A129572.P15018206105647982754

`Δ[A129372(n+1)]^A091435(n)`
-/

namespace A129572.P15018206105647982754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A091435 n : ℤ)

end

end A129572.P15018206105647982754

namespace A129572

/-- `Δ[A129372(n+1)]^A091435(n)` -/
def P15018206105647982754.Spec : Prop :=
  ∀ n, P15018206105647982754.a n = (A129572 (n + 1) : ℚ)

end A129572

/-! ## A129572.P323978587708688268

`A097806(gcd(n, Δ[A129372(n+1)]))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A129572

/-- `A097806(gcd(n, Δ[A129372(n+1)]))` -/
def P323978587708688268.Spec : Prop :=
  ∀ n, P323978587708688268.a n = A129572 (n + 1)

theorem P323978587708688268.correct : P323978587708688268.Spec := by
  intro n
  simp only [A129572, Nat.add_sub_cancel]

end A129572

/-! ## A129572.P17866152627162214313

`A129372(A128174(n+2)+n+1)`
-/

namespace A129572.P17866152627162214313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (A128174 (n + 2) + (n + 1 : ℤ)).toNat

end

end A129572.P17866152627162214313

namespace A129572

/-- `A129372(A128174(n+2)+n+1)` -/
def P17866152627162214313.Spec : Prop :=
  ∀ n, P17866152627162214313.a n = A129572 (n + 1)

end A129572

/-! ## A129572.P1271279172123819247

`A129372(A129372(n+2)+n+1)`
-/

namespace A129572.P1271279172123819247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (A129372 (n + 2) + (n + 1 : ℤ)).toNat

end

end A129572.P1271279172123819247

namespace A129572

/-- `A129372(A129372(n+2)+n+1)` -/
def P1271279172123819247.Spec : Prop :=
  ∀ n, P1271279172123819247.a n = A129572 (n + 1)

end A129572

/-! ## A129572.P2965805773365694368

`A129573(2-A128174(n+1)+n)`
-/

namespace A129572.P2965805773365694368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129573 (2 - A128174 (n + 1) + (n : ℤ)).toNat

end

end A129572.P2965805773365694368

namespace A129572

/-- `A129573(2-A128174(n+1)+n)` -/
def P2965805773365694368.Spec : Prop :=
  ∀ n, P2965805773365694368.a n = A129572 (n + 1)

end A129572

/-! ## A129572.P6860386623492161602

`A129372(gcd(2, A130026(n))+n)`
-/

namespace A129572.P6860386623492161602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (Int.gcd 2 (A130026 n) + n)

end

end A129572.P6860386623492161602

namespace A129572

/-- `A129372(gcd(2, A130026(n))+n)` -/
def P6860386623492161602.Spec : Prop :=
  ∀ n, P6860386623492161602.a n = A129572 (n + 1)

end A129572

/-!
# A129573: Triangle read by rows: A097806 * A129372 as infinite lower triangular matrices.

The programs for A129573, the canonical program `A129573.P14345061609223705397` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129573 has offset 1).

The definition of A129573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129573.P14345061609223705397

`A000007(A030111(n+1)%A046854(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A129573

/-- `A000007(A030111(n+1)%A046854(n))` -/
def P14345061609223705397.Spec : Prop :=
  ∀ n, P14345061609223705397.a n = A129573 (n + 1)

theorem P14345061609223705397.correct : P14345061609223705397.Spec := by
  intro n
  simp only [A129573, Nat.add_sub_cancel]

end A129573

/-! ## A129573.P8249231526091208594

`A000007(A046854(n+1)%A046854(n))`
-/

namespace A129573.P8249231526091208594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A046854 (n + 1)) (A046854 n)).toNat

end

end A129573.P8249231526091208594

namespace A129573

/-- `A000007(A046854(n+1)%A046854(n))` -/
def P8249231526091208594.Spec : Prop :=
  ∀ n, P8249231526091208594.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P9278939659384177677

`A021913(A172119(n)+1)`
-/

namespace A129573.P9278939659384177677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A172119 n + 1).toNat

end

end A129573.P9278939659384177677

namespace A129573

/-- `A021913(A172119(n)+1)` -/
def P9278939659384177677.Spec : Prop :=
  ∀ n, P9278939659384177677.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P5326343507800491816

`A133872(A172119(n)-1)`
-/

namespace A129573.P5326343507800491816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A172119 n - 1).toNat

end

end A129573.P5326343507800491816

namespace A129573

/-- `A133872(A172119(n)-1)` -/
def P5326343507800491816.Spec : Prop :=
  ∀ n, P5326343507800491816.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P16738299896301035382

`A131078(2*A172119(n))`
-/

namespace A129573.P16738299896301035382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (2 * A172119 n).toNat

end

end A129573.P16738299896301035382

namespace A129573

/-- `A131078(2*A172119(n))` -/
def P16738299896301035382.Spec : Prop :=
  ∀ n, P16738299896301035382.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P8568862177306215505

`A014707(or(4, A172119(n)))`
-/

namespace A129573.P8568862177306215505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (Int.lor 4 (A172119 n)).toNat

end

end A129573.P8568862177306215505

namespace A129573

/-- `A014707(or(4, A172119(n)))` -/
def P8568862177306215505.Spec : Prop :=
  ∀ n, P8568862177306215505.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P1516653859219574540

`A000045(and(2, -A172119(n)))`
-/

namespace A129573.P1516653859219574540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 (-A172119 n)).toNat

end

end A129573.P1516653859219574540

namespace A129573

/-- `A000045(and(2, -A172119(n)))` -/
def P1516653859219574540.Spec : Prop :=
  ∀ n, P1516653859219574540.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P14506505824737333647

`A000073(and(2, -A172119(n)))`
-/

namespace A129573.P14506505824737333647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Int.land 2 (-A172119 n)).toNat

end

end A129573.P14506505824737333647

namespace A129573

/-- `A000073(and(2, -A172119(n)))` -/
def P14506505824737333647.Spec : Prop :=
  ∀ n, P14506505824737333647.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P7931242257294846428

`A008683(and(2, -A172119(n))+4)`
-/

namespace A129573.P7931242257294846428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 2 (-A172119 n) + 4).toNat

end

end A129573.P7931242257294846428

namespace A129573

/-- `A008683(and(2, -A172119(n))+4)` -/
def P7931242257294846428.Spec : Prop :=
  ∀ n, P7931242257294846428.a n = A129573 (n + 1)

end A129573

/-! ## A129573.P3972671521278587413

`A014707(A172119(n)+A172119(n)²)`
-/

namespace A129573.P3972671521278587413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A172119 n + A172119 n ^ 2).toNat

end

end A129573.P3972671521278587413

namespace A129573

/-- `A014707(A172119(n)+A172119(n)²)` -/
def P3972671521278587413.Spec : Prop :=
  ∀ n, P3972671521278587413.a n = A129573 (n + 1)

end A129573

/-!
# A129574: Number of odd divisors of n plus the number of odd divisors of n - 1.

The programs for A129574, the canonical program `A129574.P17473948637287950129` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129574 has offset 1).

The definition of A129574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129574.P12952986597676201542

`A001227(n+1)+A054843(n)-A010054(n)`
-/

namespace A129574.P12952986597676201542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A054843 n - A010054 n)

end

end A129574.P12952986597676201542

namespace A129574

/-- `A001227(n+1)+A054843(n)-A010054(n)` -/
def P12952986597676201542.Spec : Prop :=
  ∀ n, P12952986597676201542.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P16396119104059027972

`A001227(n+1)+A056549(n)-A056548(n)`
-/

namespace A129574.P16396119104059027972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A056549 n - A056548 n)

end

end A129574.P16396119104059027972

namespace A129574

/-- `A001227(n+1)+A056549(n)-A056548(n)` -/
def P16396119104059027972.Spec : Prop :=
  ∀ n, P16396119104059027972.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P2591790450774214825

`A026741(A054844(n+1))+∑{d}[n, A000035(#)]`
-/

namespace A129574.P2591790450774214825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054844 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A129574.P2591790450774214825

namespace A129574

/-- `A026741(A054844(n+1))+∑{d}[n, A000035(#)]` -/
def P2591790450774214825.Spec : Prop :=
  ∀ n, P2591790450774214825.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P15039841142316208154

`∑{d}[A006530(n+1), A001227(n+1-A001221(#))]`
-/

namespace A129574.P15039841142316208154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001227 ((n + 1 : ℤ) - A001221 d).toNat

end

end A129574.P15039841142316208154

namespace A129574

/-- `∑{d}[A006530(n+1), A001227(n+1-A001221(#))]` -/
def P15039841142316208154.Spec : Prop :=
  ∀ n, P15039841142316208154.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P2724577899314915406

`A320003(A008458(n+1))+A320003(A008458(n))`
-/

namespace A129574.P2724577899314915406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A008458 (n + 1)).toNat + A320003 (A008458 n).toNat

end

end A129574.P2724577899314915406

namespace A129574

/-- `A320003(A008458(n+1))+A320003(A008458(n))` -/
def P2724577899314915406.Spec : Prop :=
  ∀ n, P2724577899314915406.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P10607296197545684643

`∑{d}[A008578(n+1), A001227(n+1-A001222(#))]`
-/

namespace A129574.P10607296197545684643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001227 ((n + 1 : ℤ) - A001222 d).toNat

end

end A129574.P10607296197545684643

namespace A129574

/-- `∑{d}[A008578(n+1), A001227(n+1-A001222(#))]` -/
def P10607296197545684643.Spec : Prop :=
  ∀ n, P10607296197545684643.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P11507901658440965470

`A091954(A092535(n+1))+A001227(n+1)`
-/

namespace A129574.P11507901658440965470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 (n + 1)).toNat + A001227 (n + 1)

end

end A129574.P11507901658440965470

namespace A129574

/-- `A091954(A092535(n+1))+A001227(n+1)` -/
def P11507901658440965470.Spec : Prop :=
  ∀ n, P11507901658440965470.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P17473948637287950129

`A091954(2*(n+1))+A091954(A092535(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129574

/-- `A091954(2*(n+1))+A091954(A092535(n+1))` -/
def P17473948637287950129.Spec : Prop :=
  ∀ n, P17473948637287950129.a n = A129574 (n + 1)

theorem P17473948637287950129.correct : P17473948637287950129.Spec := by
  intro n
  simp only [A129574, Nat.add_sub_cancel]

end A129574

/-! ## A129574.P4195091360548656096

`A299480(2*n+1)+A299480(A004281(n+1))`
-/

namespace A129574.P4195091360548656096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * n + 1) + A299480 (A004281 (n + 1)).toNat

end

end A129574.P4195091360548656096

namespace A129574

/-- `A299480(2*n+1)+A299480(A004281(n+1))` -/
def P4195091360548656096.Spec : Prop :=
  ∀ n, P4195091360548656096.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P12009682491723147596

`A091954(2*(n+1))+A091954(A028310(2*n))`
-/

namespace A129574.P12009682491723147596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + A091954 (A028310 (2 * n)).toNat

end

end A129574.P12009682491723147596

namespace A129574

/-- `A091954(2*(n+1))+A091954(A028310(2*n))` -/
def P12009682491723147596.Spec : Prop :=
  ∀ n, P12009682491723147596.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P3091330779065055592

`A069283(n)+A266722(2*n)+A069283(n+1)`
-/

namespace A129574.P3091330779065055592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n + (A266722 (2 * n) + A069283 (n + 1))

end

end A129574.P3091330779065055592

namespace A129574

/-- `A069283(n)+A266722(2*n)+A069283(n+1)` -/
def P3091330779065055592.Spec : Prop :=
  ∀ n, P3091330779065055592.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P8227748532930915070

`A091954(2*(n+1))+A032741(4*n)-A032741(2*n)`
-/

namespace A129574.P8227748532930915070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + (A032741 (4 * n) - A032741 (2 * n))

end

end A129574.P8227748532930915070

namespace A129574

/-- `A091954(2*(n+1))+A032741(4*n)-A032741(2*n)` -/
def P8227748532930915070.Spec : Prop :=
  ∀ n, P8227748532930915070.a n = A129574 (n + 1)

end A129574

/-! ## A129574.P14337483660690302797

`A001227(n+1)+A001227(A008574(n))%A008574(n)`
-/

namespace A129574.P14337483660690302797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + Int.tmod (A001227 (A008574 n).toNat) (A008574 n)

end

end A129574.P14337483660690302797

namespace A129574

/-- `A001227(n+1)+A001227(A008574(n))%A008574(n)` -/
def P14337483660690302797.Spec : Prop :=
  ∀ n, P14337483660690302797.a n = A129574 (n + 1)

end A129574

/-!
# A129575: Exponential abundant numbers: integers k for which A126164(k) > k, or equivalently for which A051377(k) > 2k.

The programs for A129575, there is no canonical definition to state claims against.
-/

/-! ## A129575.P14020625340853708923

`∪[A383693(n+1), A391085(n+1)]`
-/

namespace A129575.P14020625340853708923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P14020625340853708923

/-! ## A129575.P10387538521318469497

`∪[A321146(n+1), A321206(n+1)]`
-/

namespace A129575.P10387538521318469497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P10387538521318469497

/-! ## A129575.P7191057211889831803

`∪[A321206(n+1), A336680(n+1)]`
-/

namespace A129575.P7191057211889831803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P7191057211889831803

/-! ## A129575.P3421815161208538648

`∪[A321206(n+1), A383693(n+1)]`
-/

namespace A129575.P3421815161208538648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P3421815161208538648

/-! ## A129575.P1624430331732052708

`∪[A321206(n+1), A383697(n+1)]`
-/

namespace A129575.P1624430331732052708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P1624430331732052708

/-! ## A129575.P16254482659492925687

`∪[A321206(n+1), A391427(n+1)]`
-/

namespace A129575.P16254482659492925687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129575.P16254482659492925687

/-!
# A129576: Expansion of phi(x) * chi(x) * psi(-x^3) in powers of x where phi(), chi(), psi() are Ramanujan theta functions.

The programs for A129576, the canonical program `A129576.P4189880678848016889` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129576 has offset 0).

The definition of A129576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129576.P4189880678848016889

`A096936(3*n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A129576

/-- `A096936(3*n+1)` -/
def P4189880678848016889.Spec : Prop :=
  ∀ n, P4189880678848016889.a n = A129576 n

theorem P4189880678848016889.correct : P4189880678848016889.Spec := by
  intro n
  simp only [A129576]

end A129576

/-! ## A129576.P2049863647794876665

`A112298(3*n+1)`
-/

namespace A129576.P2049863647794876665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (3 * n + 1)

end

end A129576.P2049863647794876665

namespace A129576

/-- `A112298(3*n+1)` -/
def P2049863647794876665.Spec : Prop :=
  ∀ n, P2049863647794876665.a n = A129576 n

end A129576

/-! ## A129576.P1246935787698272584

`abs(A122861(n))`
-/

namespace A129576.P1246935787698272584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122861 n|

end

end A129576.P1246935787698272584

namespace A129576

/-- `abs(A122861(n))` -/
def P1246935787698272584.Spec : Prop :=
  ∀ n, P1246935787698272584.a n = A129576 n

end A129576

/-! ## A129576.P15796204678984069461

`abs(A115979(3*n+1))`
-/

namespace A129576.P15796204678984069461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115979 (3 * n + 1)|

end

end A129576.P15796204678984069461

namespace A129576

/-- `abs(A115979(3*n+1))` -/
def P15796204678984069461.Spec : Prop :=
  ∀ n, P15796204678984069461.a n = A129576 n

end A129576

/-! ## A129576.P13319247065246535662

`A033716(3*n+1)/2`
-/

namespace A129576.P13319247065246535662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (3 * n + 1) : ℚ) / 2

end

end A129576.P13319247065246535662

namespace A129576

/-- `A033716(3*n+1)/2` -/
def P13319247065246535662.Spec : Prop :=
  ∀ n, P13319247065246535662.a n = (A129576 n : ℚ)

end A129576

/-! ## A129576.P13265532508958148501

`3^(n%2)*A033687(n)`
-/

namespace A129576.P13265532508958148501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A033687 n

end

end A129576.P13265532508958148501

namespace A129576

/-- `3^(n%2)*A033687(n)` -/
def P13265532508958148501.Spec : Prop :=
  ∀ n, P13265532508958148501.a n = A129576 n

end A129576

/-! ## A129576.P2643049218518816729

`A010684(n)*A033687(n)`
-/

namespace A129576.P2643049218518816729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A033687 n

end

end A129576.P2643049218518816729

namespace A129576

/-- `A010684(n)*A033687(n)` -/
def P2643049218518816729.Spec : Prop :=
  ∀ n, P2643049218518816729.a n = A129576 n

end A129576

/-! ## A129576.P3632522892061894927

`A033687(n)*A053381(n)`
-/

namespace A129576.P3632522892061894927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A053381 n

end

end A129576.P3632522892061894927

namespace A129576

/-- `A033687(n)*A053381(n)` -/
def P3632522892061894927.Spec : Prop :=
  ∀ n, P3632522892061894927.a n = A129576 n

end A129576

/-! ## A129576.P12841544087071351551

`A033687(n)*A056753(n)`
-/

namespace A129576.P12841544087071351551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A056753 n

end

end A129576.P12841544087071351551

namespace A129576

/-- `A033687(n)*A056753(n)` -/
def P12841544087071351551.Spec : Prop :=
  ∀ n, P12841544087071351551.a n = A129576 n

end A129576

/-! ## A129576.P12662773122408409136

`A033999(n)*A122861(n)`
-/

namespace A129576.P12662773122408409136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122861 n

end

end A129576.P12662773122408409136

namespace A129576

/-- `A033999(n)*A122861(n)` -/
def P12662773122408409136.Spec : Prop :=
  ∀ n, P12662773122408409136.a n = A129576 n

end A129576

/-! ## A129576.P9471774095446018457

`A176563(n)*A227696(n)`
-/

namespace A129576.P9471774095446018457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176563 n * A227696 n

end

end A129576.P9471774095446018457

namespace A129576

/-- `A176563(n)*A227696(n)` -/
def P9471774095446018457.Spec : Prop :=
  ∀ n, P9471774095446018457.a n = A129576 n

end A129576

/-! ## A129576.P8418113385461576066

`A005882(n)/A176040(n)`
-/

namespace A129576.P8418113385461576066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 n : ℚ) / (A176040 n : ℚ)

end

end A129576.P8418113385461576066

namespace A129576

/-- `A005882(n)/A176040(n)` -/
def P8418113385461576066.Spec : Prop :=
  ∀ n, P8418113385461576066.a n = (A129576 n : ℚ)

end A129576

/-! ## A129576.P7858284974400940836

`gcd(A000038(n), A122861(n))`
-/

namespace A129576.P7858284974400940836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122861 n)

end

end A129576.P7858284974400940836

namespace A129576

/-- `gcd(A000038(n), A122861(n))` -/
def P7858284974400940836.Spec : Prop :=
  ∀ n, (P7858284974400940836.a n : ℤ) = A129576 n

end A129576

/-! ## A129576.P11422823089609692067

`lcm(A001492(n), A122861(n))`
-/

namespace A129576.P11422823089609692067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A122861 n)

end

end A129576.P11422823089609692067

namespace A129576

/-- `lcm(A001492(n), A122861(n))` -/
def P11422823089609692067.Spec : Prop :=
  ∀ n, (P11422823089609692067.a n : ℤ) = A129576 n

end A129576

/-! ## A129576.P5090196147020171933

`A033687(n)*A037227(n+1)`
-/

namespace A129576.P5090196147020171933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A037227 (n + 1)

end

end A129576.P5090196147020171933

namespace A129576

/-- `A033687(n)*A037227(n+1)` -/
def P5090196147020171933.Spec : Prop :=
  ∀ n, P5090196147020171933.a n = A129576 n

end A129576

/-! ## A129576.P12707449107812724851

`A033687(n)*A038712(n+1)`
-/

namespace A129576.P12707449107812724851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A038712 (n + 1)

end

end A129576.P12707449107812724851

namespace A129576

/-- `A033687(n)*A038712(n+1)` -/
def P12707449107812724851.Spec : Prop :=
  ∀ n, P12707449107812724851.a n = A129576 n

end A129576

/-! ## A129576.P13358412132304085281

`A033687(n)*A090740(n+1)`
-/

namespace A129576.P13358412132304085281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A090740 (n + 1)

end

end A129576.P13358412132304085281

namespace A129576

/-- `A033687(n)*A090740(n+1)` -/
def P13358412132304085281.Spec : Prop :=
  ∀ n, P13358412132304085281.a n = A129576 n

end A129576

/-! ## A129576.P3828601492625176519

`A033687(n)*A094603(n+1)`
-/

namespace A129576.P3828601492625176519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A094603 (n + 1)

end

end A129576.P3828601492625176519

namespace A129576

/-- `A033687(n)*A094603(n+1)` -/
def P3828601492625176519.Spec : Prop :=
  ∀ n, P3828601492625176519.a n = A129576 n

end A129576

/-! ## A129576.P11165386598556077850

`A033687(n)*A112132(n+1)`
-/

namespace A129576.P11165386598556077850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A112132 (n + 1)

end

end A129576.P11165386598556077850

namespace A129576

/-- `A033687(n)*A112132(n+1)` -/
def P11165386598556077850.Spec : Prop :=
  ∀ n, P11165386598556077850.a n = A129576 n

end A129576

/-! ## A129576.P16146381483530528327

`A033687(n)*A115364(n+1)`
-/

namespace A129576.P16146381483530528327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A115364 (n + 1)

end

end A129576.P16146381483530528327

namespace A129576

/-- `A033687(n)*A115364(n+1)` -/
def P16146381483530528327.Spec : Prop :=
  ∀ n, P16146381483530528327.a n = A129576 n

end A129576

/-!
# A129577: Triangle, read by rows, defined by T(n,k) = T(n-1,k) + T(n,k-1) for nk>0, where T(n,0) = T(n-1,0) + T(n-1,n-1) and T(n,n) = T(n,n-1) for n>0 with T(0,0)=1.

The programs for A129577, there is no canonical definition to state claims against.
-/

/-! ## A129577.P3827957797433682713

`Δ[a(n-1)+a(A083920(n))]` with `a(0)=0, a(1)=1`
-/

namespace A129577.P3827957797433682713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A129577.P3827957797433682713

/-!
# A129578: Column 0 of triangle A129577.

The programs for A129578, there is no canonical definition to state claims against.
-/

/-! ## A129578.P12545535960828793043

`A129577(∑[n])`
-/

namespace A129578.P12545535960828793043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129578.P12545535960828793043

/-! ## A129578.P4681673994043582304

`and(-1, A129577(round((2*n+1)²/8)))`
-/

namespace A129578.P4681673994043582304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A129577 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat)

end

end A129578.P4681673994043582304

/-! ## A129578.P13355975324019992689

`A129577(A000217(n))+char[10]`
-/

namespace A129578.P13355975324019992689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129577 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129578.P13355975324019992689

/-! ## A129578.P8860991151197803573

`A000027(A129577(or(1, n)*ceil(n/2)))`
-/

namespace A129578.P8860991151197803573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A129577 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat).toNat

end

end A129578.P8860991151197803573

/-! ## A129578.P17192796801047776611

`A000027(A129577(record[C(n, 2)-n]-n))`
-/

namespace A129578.P17192796801047776611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A129577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat).toNat

end

end A129578.P17192796801047776611

/-!
# A129579: Main diagonal of triangle A129577.

The programs for A129579, there is no canonical definition to state claims against.
-/

/-! ## A129579.P17986784202544878857

`ceil(A091768(n)/2)`
-/

namespace A129579.P17986784202544878857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091768 n : ℚ) / 2⌉

end

end A129579.P17986784202544878857

/-! ## A129579.P12952168159181478227

`A091768(n)/A020639(A008458(n))`
-/

namespace A129579.P12952168159181478227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091768 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A129579.P12952168159181478227

/-! ## A129579.P9673801729947540255

`A091768(n)/A020639(A312330(n))`
-/

namespace A129579.P9673801729947540255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091768 n : ℚ) / (A020639 (A312330 n).toNat : ℚ)

end

end A129579.P9673801729947540255

/-! ## A129579.P11185874339158012554

`floor(acot(n)+Δ[A129578(n)])`
-/

namespace A129579.P11185874339158012554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A129579.P11185874339158012554

/-!
# A129580: Row sums of triangle A129577.

The programs for A129580, there is no canonical definition to state claims against.
-/

/-! ## A129580.P14429677789738586829

`A000007(n)+Δ[A129579(n)]`
-/

namespace A129580.P14429677789738586829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A129580.P14429677789738586829

/-! ## A129580.P17906296459199223912

`Δ[A129579(n)+A057427(n)]`
-/

namespace A129580.P17906296459199223912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129579 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129580.P17906296459199223912

/-! ## A129580.P9260696338230187523

`Δ[A178334(n)+A129579(n)]`
-/

namespace A129580.P9260696338230187523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A129579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129580.P9260696338230187523

/-! ## A129580.P4729001254991161331

`Δ[A129579(n)%A129627(n+1)]`
-/

namespace A129580.P4729001254991161331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129579 n) (A129627 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129580.P4729001254991161331

/-! ## A129580.P13921788048107008367

`A129579(n+1)+A129578(n)-A129578(n+1)`
-/

namespace A129580.P13921788048107008367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129579 (n + 1) + (A129578 n - A129578 (n + 1))

end

end A129580.P13921788048107008367

/-!
# A129581: Number of labeled prime graphs with respect to the Cartesian multiplication of graphs.

The programs for A129581, there is no canonical definition to state claims against.
-/

/-! ## A129581.P1108682500988352139

`A125746(C(2^n, n+1))`
-/

namespace A129581.P1108682500988352139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (Nat.choose (2 ^ n) (n + 1))

end

end A129581.P1108682500988352139

/-!
# A129582: Number of unlabeled prime graphs with respect to the Cartesian multiplication of graphs with n vertices.

The programs for A129582, there is no canonical definition to state claims against.
-/

/-! ## A129582.P2179886423001477982

`A000027(A001349(n+1))-A106828(n)`
-/

namespace A129582.P2179886423001477982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001349 (n + 1)).toNat - A106828 n

end

end A129582.P2179886423001477982

/-! ## A129582.P4915728321674819700

`A076328(n+1)-A054845(A003500(n))`
-/

namespace A129582.P4915728321674819700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (n + 1) - A054845 (A003500 n).toNat

end

end A129582.P4915728321674819700

/-! ## A129582.P8706137265014498119

`A002264(or(A144301(n), A345882(n+1)))`
-/

namespace A129582.P8706137265014498119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor (A144301 n) (A345882 (n + 1))).toNat

end

end A129582.P8706137265014498119

/-!
# A129583: Number of labeled bi-point-determining graphs with n vertices.

The programs for A129583, there is no canonical definition to state claims against.
-/

/-! ## A129583.P10219982351703555941

`A088262(a(n-1)+1)+1` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A129583.P10219982351703555941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  A088262 (a (n - 1) + 1).toNat + 1

end

end A129583.P10219982351703555941

/-! ## A129583.P16552687902405846778

`A383900(A187430(n))`
-/

namespace A129583.P16552687902405846778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (A187430 n).toNat

end

end A129583.P16552687902405846778

/-!
# A129584: Number of unlabeled bi-point-determining graphs: graphs in which no two vertices have the same neighborhoods or the same augmented neighborhoods (the augmented neighborhood of a vertex is the neighborhood of the vertex union the vertex itself).

The programs for A129584, there is no canonical definition to state claims against.
-/

/-! ## A129584.P11880068032272709951

`A017909(eq[1, A274531(n+1)])`
-/

namespace A129584.P11880068032272709951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129584.P11880068032272709951

/-! ## A129584.P10298911415421959491

`xor(A024493(n+1), A330344(n+1))`
-/

namespace A129584.P10298911415421959491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024493 (n + 1)) (A330344 (n + 1))

end

end A129584.P10298911415421959491

/-! ## A129584.P14263179053277593647

`A008676(xor(floor(3^(n-1)), A056986(n+1)))`
-/

namespace A129584.P14263179053277593647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A056986 (n + 1))).toNat

end

end A129584.P14263179053277593647

/-!
# A129585: Number of labeled connected bi-point-determining graphs with n vertices (see A129583).

The programs for A129585, there is no canonical definition to state claims against.
-/

/-! ## A129585.P537740375711153690

`∏{digits}[A058151(∑[or(1, n)]+n), #]`
-/

namespace A129585.P537740375711153690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058151 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A129585.P537740375711153690

/-! ## A129585.P10009600160739765363

`A322387(2^n)+round(cos(n%6))`
-/

namespace A129585.P10009600160739765363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (2 ^ n) + SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

end

end A129585.P10009600160739765363

/-!
# A129586: Number of unlabeled connected bi-point-determining graphs (see A129583).

The programs for A129586, there is no canonical definition to state claims against.
-/

/-! ## A129586.P7234764106585423583

`A008647(7*A323843(n))`
-/

namespace A129586.P7234764106585423583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (7 * A323843 n).toNat

end

end A129586.P7234764106585423583

/-! ## A129586.P4762748082041577348

`A265359(A245149(∑[∑[n]]))`
-/

namespace A129586.P4762748082041577348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A245149 (∑ j ∈ Finset.range (n + 1), f1 j + 10)).toNat

end

end A129586.P4762748082041577348

/-! ## A129586.P5146826544376693930

`A245784(A184628(a(n-2)+1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A129586.P5146826544376693930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A245784 (A184628 (a (n - 2) + 1).toNat).toNat

end

end A129586.P5146826544376693930

/-!
# A129588: Expansion of q^-1 * theta_2(q)^4 in powers of q^2.

The programs for A129588, the canonical program `A129588.P12646106946499544468` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129588 has offset 0).

The definition of A129588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129588.P12646106946499544468

`16*A008438(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129588

/-- `16*A008438(n)` -/
def P12646106946499544468.Spec : Prop :=
  ∀ n, P12646106946499544468.a n = A129588 n

theorem P12646106946499544468.correct : P12646106946499544468.Spec := by
  intro n
  simp only [A129588]

end A129588

/-! ## A129588.P17329470240083074588

`16*∑{d}[comp[2*n], #]`
-/

namespace A129588.P17329470240083074588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A129588.P17329470240083074588

namespace A129588

/-- `16*∑{d}[comp[2*n], #]` -/
def P17329470240083074588.Spec : Prop :=
  ∀ n, (P17329470240083074588.a n : ℤ) = A129588 n

end A129588

/-! ## A129588.P13303603322002007234

`∑{d}[2*n+1, 16*#]`
-/

namespace A129588.P13303603322002007234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 16 * d

end

end A129588.P13303603322002007234

namespace A129588

/-- `∑{d}[2*n+1, 16*#]` -/
def P13303603322002007234.Spec : Prop :=
  ∀ n, (P13303603322002007234.a n : ℤ) = A129588 n

end A129588

/-! ## A129588.P12816698272898494522

`2*A005879(n)`
-/

namespace A129588.P12816698272898494522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005879 n

end

end A129588.P12816698272898494522

namespace A129588

/-- `2*A005879(n)` -/
def P12816698272898494522.Spec : Prop :=
  ∀ n, P12816698272898494522.a n = A129588 n

end A129588

/-! ## A129588.P8054239058314195344

`8*A005880(n)`
-/

namespace A129588.P8054239058314195344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A005880 n

end

end A129588.P8054239058314195344

namespace A129588

/-- `8*A005880(n)` -/
def P8054239058314195344.Spec : Prop :=
  ∀ n, P8054239058314195344.a n = A129588 n

end A129588

/-! ## A129588.P16577400822789993333

`2*A000118(Δ[n²])`
-/

namespace A129588.P16577400822789993333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000118 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129588.P16577400822789993333

namespace A129588

/-- `2*A000118(Δ[n²])` -/
def P16577400822789993333.Spec : Prop :=
  ∀ n, P16577400822789993333.a n = A129588 n

end A129588

/-! ## A129588.P14136987278573191317

`16*A000203(Δ[n²])`
-/

namespace A129588.P14136987278573191317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129588.P14136987278573191317

namespace A129588

/-- `16*A000203(Δ[n²])` -/
def P14136987278573191317.Spec : Prop :=
  ∀ n, P14136987278573191317.a n = A129588 n

end A129588

/-! ## A129588.P15020065673624657748

`A000118(2*n+1)*2`
-/

namespace A129588.P15020065673624657748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n + 1) * 2

end

end A129588.P15020065673624657748

namespace A129588

/-- `A000118(2*n+1)*2` -/
def P15020065673624657748.Spec : Prop :=
  ∀ n, P15020065673624657748.a n = A129588 n

end A129588

/-! ## A129588.P12527804344529128838

`4*4*A000203(2*n+1)`
-/

namespace A129588.P12527804344529128838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A000203 (2 * n + 1))

end

end A129588.P12527804344529128838

namespace A129588

/-- `4*4*A000203(2*n+1)` -/
def P12527804344529128838.Spec : Prop :=
  ∀ n, P12527804344529128838.a n = A129588 n

theorem P12527804344529128838.correct : P12527804344529128838.Spec := by
  intro n
  simp only [A129588, Nat.add_sub_cancel, A129588.P12527804344529128838.a, A129588.P12646106946499544468.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008438, A008438.P10724248590758397010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129588

/-! ## A129588.P12967815765187429346

`8*A074400(2*n+1)`
-/

namespace A129588.P12967815765187429346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A074400 (2 * n + 1)

end

end A129588.P12967815765187429346

namespace A129588

/-- `8*A074400(2*n+1)` -/
def P12967815765187429346.Spec : Prop :=
  ∀ n, P12967815765187429346.a n = A129588 n

theorem P12967815765187429346.correct : P12967815765187429346.Spec := by
  intro n
  simp only [A129588, Nat.add_sub_cancel, A129588.P12967815765187429346.a, A129588.P12646106946499544468.a, A008438, A008438.P10724248590758397010.a, A074400, A074400.P16312391460013478761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129588

/-! ## A129588.P13120130695924254641

`2*A122858(Δ[n²])`
-/

namespace A129588.P13120130695924254641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129588.P13120130695924254641

namespace A129588

/-- `2*A122858(Δ[n²])` -/
def P13120130695924254641.Spec : Prop :=
  ∀ n, P13120130695924254641.a n = A129588 n

end A129588

/-! ## A129588.P7497103615193663163

`2*A319528(Δ[n²])`
-/

namespace A129588.P7497103615193663163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129588.P7497103615193663163

namespace A129588

/-- `2*A319528(Δ[n²])` -/
def P7497103615193663163.Spec : Prop :=
  ∀ n, P7497103615193663163.a n = A129588 n

end A129588

/-! ## A129588.P13018704672272903390

`4*A097057(2*n+1)`
-/

namespace A129588.P13018704672272903390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A097057 (2 * n + 1)

end

end A129588.P13018704672272903390

namespace A129588

/-- `4*A097057(2*n+1)` -/
def P13018704672272903390.Spec : Prop :=
  ∀ n, P13018704672272903390.a n = A129588 n

end A129588

/-! ## A129588.P14411606363866007793

`4*A239050(2*n+1)`
-/

namespace A129588.P14411606363866007793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A239050 (2 * n + 1)

end

end A129588.P14411606363866007793

namespace A129588

/-- `4*A239050(2*n+1)` -/
def P14411606363866007793.Spec : Prop :=
  ∀ n, P14411606363866007793.a n = A129588 n

theorem P14411606363866007793.correct : P14411606363866007793.Spec := by
  intro n
  simp only [A129588, Nat.add_sub_cancel, A129588.P14411606363866007793.a, A129588.P12646106946499544468.a, A008438, A008438.P10724248590758397010.a, A239050, A239050.P12685587340824370499.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129588

/-! ## A129588.P10383016806013522429

`8*A054785(2*n+1)`
-/

namespace A129588.P10383016806013522429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A054785 (2 * n + 1)

end

end A129588.P10383016806013522429

namespace A129588

/-- `8*A054785(2*n+1)` -/
def P10383016806013522429.Spec : Prop :=
  ∀ n, P10383016806013522429.a n = A129588 n

end A129588

/-! ## A129588.P6910956703094426603

`8*A224225(2*n+1)`
-/

namespace A129588.P6910956703094426603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A224225 (2 * n + 1)

end

end A129588.P6910956703094426603

namespace A129588

/-- `8*A224225(2*n+1)` -/
def P6910956703094426603.Spec : Prop :=
  ∀ n, P6910956703094426603.a n = A129588 n

end A129588

/-! ## A129588.P47384999754103082

`8*A236924(2*n+1)`
-/

namespace A129588.P47384999754103082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A236924 (2 * n + 1)

end

end A129588.P47384999754103082

namespace A129588

/-- `8*A236924(2*n+1)` -/
def P47384999754103082.Spec : Prop :=
  ∀ n, P47384999754103082.a n = A129588 n

end A129588

/-! ## A129588.P3189198374235633540

`16*A132882(2*n+1)`
-/

namespace A129588.P3189198374235633540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A132882 (2 * n + 1)

end

end A129588.P3189198374235633540

namespace A129588

/-- `16*A132882(2*n+1)` -/
def P3189198374235633540.Spec : Prop :=
  ∀ n, P3189198374235633540.a n = A129588 n

end A129588

/-! ## A129588.P15459647559784072123

`abs(2*A096727(2*n+1))`
-/

namespace A129588.P15459647559784072123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A096727 (2 * n + 1)|

end

end A129588.P15459647559784072123

namespace A129588

/-- `abs(2*A096727(2*n+1))` -/
def P15459647559784072123.Spec : Prop :=
  ∀ n, P15459647559784072123.a n = A129588 n

end A129588

/-! ## A129588.P5744180623232403812

`A002131(2*n+1)*(8/2)²`
-/

namespace A129588.P5744180623232403812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (2 * n + 1) : ℚ) * ((8 : ℚ) / 2) ^ 2

end

end A129588.P5744180623232403812

namespace A129588

/-- `A002131(2*n+1)*(8/2)²` -/
def P5744180623232403812.Spec : Prop :=
  ∀ n, P5744180623232403812.a n = (A129588 n : ℚ)

end A129588

/-!
# A129589: a(n) = 2*A000129(n) + A000129(n-1) - n.

The programs for A129589, the canonical program `A129589.P17786864021087815234` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129589 has offset 1).

The definition of A129589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)+A000129(n)-(n+1)` (program `A129589.P17786864021087815234`, by `A129589.P17786864021087815234.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129589.P7814326686105842661

`A000129(n+2)-(n+1)`
-/

namespace A129589.P7814326686105842661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - (n + 1 : ℤ)

end

end A129589.P7814326686105842661

namespace A129589

/-- `A000129(n+2)-(n+1)` -/
def P7814326686105842661.Spec : Prop :=
  ∀ n, P7814326686105842661.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P17786864021087815234

`2*A000129(n+1)+A000129(n)-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129589

/-- `2*A000129(n+1)+A000129(n)-(n+1)` -/
def P17786864021087815234.Spec : Prop :=
  ∀ n, P17786864021087815234.a n = A129589 (n + 1)

theorem P17786864021087815234.correct : P17786864021087815234.Spec := by
  intro n
  simp only [A129589, Nat.add_sub_cancel]

end A129589

/-! ## A129589.P6017576689680143162

`4*a(n-1)-4*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25`
-/

namespace A129589.P6017576689680143162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 25] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 4)

end

end A129589.P6017576689680143162

namespace A129589

/-- `4*a(n-1)-4*a(n-2)+a(n-4)` -/
def P6017576689680143162.Spec : Prop :=
  ∀ n, P6017576689680143162.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P4007043803503100347

`ogf((1-x+x^2+x^3)/(1-4x+4x^2-x^4))`
-/

namespace A129589.P4007043803503100347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -4, 4, 0, -1] n

end

end A129589.P4007043803503100347

namespace A129589

/-- `ogf((1-x+x^2+x^3)/(1-4x+4x^2-x^4))` -/
def P4007043803503100347.Spec : Prop :=
  ∀ n, P4007043803503100347.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P17749350065254813997

`∑[a(n-2)+2*a(n-1)]-n` with `a(0)=1, a(1)=3`
-/

namespace A129589.P17749350065254813997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A129589.P17749350065254813997

namespace A129589

/-- `∑[a(n-2)+2*a(n-1)]-n` -/
def P17749350065254813997.Spec : Prop :=
  ∀ n, P17749350065254813997.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P14059960078549755198

`a(n-2)+2*(a(n-1)-1+n)` with `a(0)=1, a(1)=3`
-/

namespace A129589.P14059960078549755198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 2 * (a (n - 1) - 1 + (n : ℤ))

end

end A129589.P14059960078549755198

namespace A129589

/-- `a(n-2)+2*(a(n-1)-1+n)` -/
def P14059960078549755198.Spec : Prop :=
  ∀ n, P14059960078549755198.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P16091290237071456501

`a(n-2)-2*(1-a(n-1)-n)` with `a(0)=1, a(1)=3`
-/

namespace A129589.P16091290237071456501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - 2 * (1 - a (n - 1) - (n : ℤ))

end

end A129589.P16091290237071456501

namespace A129589

/-- `a(n-2)-2*(1-a(n-1)-n)` -/
def P16091290237071456501.Spec : Prop :=
  ∀ n, P16091290237071456501.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P2835914356832656747

`∑[a(n-1)+a(n-1)+a(n-2)]-n` with `a(0)=1, a(1)=3`
-/

namespace A129589.P2835914356832656747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A129589.P2835914356832656747

namespace A129589

/-- `∑[a(n-1)+a(n-1)+a(n-2)]-n` -/
def P2835914356832656747.Spec : Prop :=
  ∀ n, P2835914356832656747.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P15795220111163903295

`∑[A265278(n+1)]`
-/

namespace A129589.P15795220111163903295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129589.P15795220111163903295

namespace A129589

/-- `∑[A265278(n+1)]` -/
def P15795220111163903295.Spec : Prop :=
  ∀ n, P15795220111163903295.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P9745666562941107767

`∑[A078057(n)]-n`
-/

namespace A129589.P9745666562941107767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A129589.P9745666562941107767

namespace A129589

/-- `∑[A078057(n)]-n` -/
def P9745666562941107767.Spec : Prop :=
  ∀ n, P9745666562941107767.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P9984781712026460466

`A005409(n+2)-n`
-/

namespace A129589.P9984781712026460466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2) - (n : ℤ)

end

end A129589.P9984781712026460466

namespace A129589

/-- `A005409(n+2)-n` -/
def P9984781712026460466.Spec : Prop :=
  ∀ n, P9984781712026460466.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P7555904612364921874

`A238375(2*n)-n`
-/

namespace A129589.P7555904612364921874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (2 * n) - (n : ℤ)

end

end A129589.P7555904612364921874

namespace A129589

/-- `A238375(2*n)-n` -/
def P7555904612364921874.Spec : Prop :=
  ∀ n, P7555904612364921874.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P16717487473311920527

`∑[∑[A052542(n)]]-n`
-/

namespace A129589.P16717487473311920527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A129589.P16717487473311920527

namespace A129589

/-- `∑[∑[A052542(n)]]-n` -/
def P16717487473311920527.Spec : Prop :=
  ∀ n, P16717487473311920527.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P17862543482467096758

`∑[A293004(n+1)]+1`
-/

namespace A129589.P17862543482467096758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129589.P17862543482467096758

namespace A129589

/-- `∑[A293004(n+1)]+1` -/
def P17862543482467096758.Spec : Prop :=
  ∀ n, P17862543482467096758.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P8632273654610153252

`∑[A182780(n)-2]+1`
-/

namespace A129589.P8632273654610153252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129589.P8632273654610153252

namespace A129589

/-- `∑[A182780(n)-2]+1` -/
def P8632273654610153252.Spec : Prop :=
  ∀ n, P8632273654610153252.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P3462901900843431495

`∑[A001333(n+1)]-n`
-/

namespace A129589.P3462901900843431495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A129589.P3462901900843431495

namespace A129589

/-- `∑[A001333(n+1)]-n` -/
def P3462901900843431495.Spec : Prop :=
  ∀ n, P3462901900843431495.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P2899343082628869160

`2*A307465(n+1)-1`
-/

namespace A129589.P2899343082628869160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307465 (n + 1) - 1

end

end A129589.P2899343082628869160

namespace A129589

/-- `2*A307465(n+1)-1` -/
def P2899343082628869160.Spec : Prop :=
  ∀ n, P2899343082628869160.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P10452651731778227365

`A052937(n+1)-(n+2)`
-/

namespace A129589.P10452651731778227365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - (n + 2 : ℤ)

end

end A129589.P10452651731778227365

namespace A129589

/-- `A052937(n+1)-(n+2)` -/
def P10452651731778227365.Spec : Prop :=
  ∀ n, P10452651731778227365.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P6043328849337590749

`A215928(n+2)-(n+1)`
-/

namespace A129589.P6043328849337590749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - (n + 1 : ℤ)

end

end A129589.P6043328849337590749

namespace A129589

/-- `A215928(n+2)-(n+1)` -/
def P6043328849337590749.Spec : Prop :=
  ∀ n, P6043328849337590749.a n = A129589 (n + 1)

end A129589

/-! ## A129589.P8622464708825109052

`A174191(n+2)-(n+2)`
-/

namespace A129589.P8622464708825109052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 2) - (n + 2 : ℤ)

end

end A129589.P8622464708825109052

namespace A129589

/-- `A174191(n+2)-(n+2)` -/
def P8622464708825109052.Spec : Prop :=
  ∀ n, P8622464708825109052.a n = A129589 (n + 1)

end A129589

/-!
# A129591: For each permutation p of {1,2,...,n} define min(p) = min{ p(i) + i : i = 1..n }; a(n) is the sum of min(p) of all p.

The programs for A129591, there is no canonical definition to state claims against.
-/

/-! ## A129591.P338793192081253489

`A367011(n+1)+A000142(n+1)`
-/

namespace A129591.P338793192081253489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367011 (n + 1) + A000142 (n + 1)

end

end A129591.P338793192081253489

/-! ## A129591.P15780071346794462492

`∏[n+2]-A018927(n+1)`
-/

namespace A129591.P15780071346794462492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A018927 (n + 1)

end

end A129591.P15780071346794462492

/-! ## A129591.P15137496262349114044

`abs(A018927(n+1)-A000142(n+2))`
-/

namespace A129591.P15137496262349114044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018927 (n + 1) - A000142 (n + 2)|

end

end A129591.P15137496262349114044

/-! ## A129591.P191468968531855884

`A000255(n+1)+A180191(n+2)-A018927(n+1)`
-/

namespace A129591.P191468968531855884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 1) + (A180191 (n + 2) - A018927 (n + 1))

end

end A129591.P191468968531855884

/-! ## A129591.P17490404225037704309

`A329639(and(1, -n)+1)-(A018927(n+1)-A000142(n+2))`
-/

namespace A129591.P17490404225037704309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (Int.land 1 (-(n : ℤ)) + 1).toNat - (A018927 (n + 1) - A000142 (n + 2))

end

end A129591.P17490404225037704309

/-!
# A129592: The smallest in a triple of three consecutive primes such that the ceiling of the square root of their sums-of-squares is prime.

The programs for A129592, there is no canonical definition to state claims against.
-/

/-! ## A129592.P412118230160055148

`∩[A249749(n+1), A359727(n+1)]`
-/

namespace A129592.P412118230160055148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129592.P412118230160055148

/-!
# A129594: Involution of nonnegative integers induced by the conjugation of the partition encoded in the run lengths of binary expansion of n.

The programs for A129594, the canonical program `A129594.P11313350707503755659` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129594 has offset 0).

The definition of A129594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129594.P11313350707503755659

`A165199(A056539(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129594

/-- `A165199(A056539(n))` -/
def P11313350707503755659.Spec : Prop :=
  ∀ n, P11313350707503755659.a n = A129594 n

theorem P11313350707503755659.correct : P11313350707503755659.Spec := by
  intro n
  simp only [A129594]

end A129594

/-! ## A129594.P16336626809598271046

`A335858(A003188(n))`
-/

namespace A129594.P16336626809598271046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A003188 n).toNat

end

end A129594.P16336626809598271046

namespace A129594

/-- `A335858(A003188(n))` -/
def P16336626809598271046.Spec : Prop :=
  ∀ n, P16336626809598271046.a n = A129594 n

end A129594

/-! ## A129594.P9506782810173937083

`A245445(A245444(n))`
-/

namespace A129594.P9506782810173937083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245445 (A245444 n).toNat

end

end A129594.P9506782810173937083

namespace A129594

/-- `A245445(A245444(n))` -/
def P9506782810173937083.Spec : Prop :=
  ∀ n, P9506782810173937083.a n = A129594 n

end A129594

/-! ## A129594.P4687940614543925311

`A245443(A245446(n))`
-/

namespace A129594.P4687940614543925311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (A245446 n).toNat

end

end A129594.P4687940614543925311

namespace A129594

/-- `A245443(A245446(n))` -/
def P4687940614543925311.Spec : Prop :=
  ∀ n, P4687940614543925311.a n = A129594 n

end A129594

/-! ## A129594.P8938175041942835491

`A341916(A180201(n))`
-/

namespace A129594.P8938175041942835491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A180201 n).toNat

end

end A129594.P8938175041942835491

namespace A129594

/-- `A341916(A180201(n))` -/
def P8938175041942835491.Spec : Prop :=
  ∀ n, P8938175041942835491.a n = A129594 n

end A129594

/-! ## A129594.P12163339083583155129

`A180200(A341915(n))`
-/

namespace A129594.P12163339083583155129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A341915 n).toNat

end

end A129594.P12163339083583155129

namespace A129594

/-- `A180200(A341915(n))` -/
def P12163339083583155129.Spec : Prop :=
  ∀ n, P12163339083583155129.a n = A129594 n

end A129594

/-! ## A129594.P2486485252568853268

`A056539(A245443(A193231(n)))`
-/

namespace A129594.P2486485252568853268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245443 (A193231 n).toNat).toNat

end

end A129594.P2486485252568853268

namespace A129594

/-- `A056539(A245443(A193231(n)))` -/
def P2486485252568853268.Spec : Prop :=
  ∀ n, P2486485252568853268.a n = A129594 n

end A129594

/-! ## A129594.P6643831094486879380

`A245445(A193231(A165199(n)))`
-/

namespace A129594.P6643831094486879380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245445 (A193231 (A165199 n).toNat).toNat

end

end A129594.P6643831094486879380

namespace A129594

/-- `A245445(A193231(A165199(n)))` -/
def P6643831094486879380.Spec : Prop :=
  ∀ n, P6643831094486879380.a n = A129594 n

end A129594

/-! ## A129594.P5413853842711622838

`A056539(A245443(A056539(A245445(n))))`
-/

namespace A129594.P5413853842711622838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245443 (A056539 (A245445 n).toNat).toNat).toNat

end

end A129594.P5413853842711622838

namespace A129594

/-- `A056539(A245443(A056539(A245445(n))))` -/
def P5413853842711622838.Spec : Prop :=
  ∀ n, P5413853842711622838.a n = A129594 n

end A129594

/-! ## A129594.P9087200752994974216

`A335858(A233280(A006068(A233280(n))))`
-/

namespace A129594.P9087200752994974216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A233280 (A006068 (A233280 n).toNat).toNat).toNat

end

end A129594.P9087200752994974216

namespace A129594

/-- `A335858(A233280(A006068(A233280(n))))` -/
def P9087200752994974216.Spec : Prop :=
  ∀ n, P9087200752994974216.a n = A129594 n

end A129594

/-! ## A129594.P8483375520629206030

`A165199(A245445(A165199(A245443(n))))`
-/

namespace A129594.P8483375520629206030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A245445 (A165199 (A245443 n).toNat).toNat).toNat

end

end A129594.P8483375520629206030

namespace A129594

/-- `A165199(A245445(A165199(A245443(n))))` -/
def P8483375520629206030.Spec : Prop :=
  ∀ n, P8483375520629206030.a n = A129594 n

end A129594

/-!
# A129595: Array A(i,j): A(1,1), A(2,1), A(1,2), A(3,1), A(2,2), A(1,3), ... of elementwise sums of partitions encoded in the prime factorizations of i and j.

The programs for A129595, there is no canonical definition to state claims against.
-/

/-! ## A129595.P4516766733163307692

`A156353(n+1)-A000005(A156765(n))`
-/

namespace A129595.P4516766733163307692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156353 (n + 1) - A000005 (A156765 n).toNat

end

end A129595.P4516766733163307692

/-! ## A129595.P8322643858602548873

`A020639(A187829(A159623(n)))*A051125(n+1)`
-/

namespace A129595.P8322643858602548873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A187829 (A159623 n).toNat).toNat * A051125 (n + 1)

end

end A129595.P8322643858602548873

/-! ## A129595.P922284615105920617

`A003056(n)+A000188(A228836(n))`
-/

namespace A129595.P922284615105920617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000188 (A228836 n).toNat

end

end A129595.P922284615105920617

/-! ## A129595.P11078244654693916872

`A106289(A165251(n+1))`
-/

namespace A129595.P11078244654693916872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (A165251 (n + 1)).toNat

end

end A129595.P11078244654693916872

/-! ## A129595.P6007801015314585294

`A253900(A199655(n+1))`
-/

namespace A129595.P6007801015314585294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253900 (A199655 (n + 1)).toNat

end

end A129595.P6007801015314585294

/-!
# A129596: Table T(i,j): T(1,1), T(2,1), T(2,2), T(3,1), T(3,2), T(3,3), ... of elementwise sums of partitions encoded in the prime factorizations of i and j.

The programs for A129596, there is no canonical definition to state claims against.
-/

/-! ## A129596.P609946899738555859

`A129595(A245300(n)+1)`
-/

namespace A129596.P609946899738555859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129595 (A245300 n + 1).toNat

end

end A129596.P609946899738555859

/-! ## A129596.P13721119604547770450

`A241916(A075362(n+1)%A102952(n+1))`
-/

namespace A129596.P13721119604547770450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (Int.tmod (A075362 (n + 1)) (A102952 (n + 1))).toNat

end

end A129596.P13721119604547770450

/-!
# A129597: Central diagonal of array A129595.

The programs for A129597, the canonical program `A129597.P10688368682371008500` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129597 has offset 1).

The definition of A129597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129597.P8319510276132882981

`record[2-xor(1, -n)]*A052126(n+1)`
-/

namespace A129597.P8319510276132882981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A052126 (n + 1)

end

end A129597.P8319510276132882981

namespace A129597

/-- `record[2-xor(1, -n)]*A052126(n+1)` -/
def P8319510276132882981.Spec : Prop :=
  ∀ n, P8319510276132882981.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P10688368682371008500

`2/A006530(2*(n+1))*(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A129597

/-- `2/A006530(2*(n+1))*(n+1)²` -/
def P10688368682371008500.Spec : Prop :=
  ∀ n, P10688368682371008500.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P10975463718216709393

`2*(n+1)*(n+1)/A111089(n+1)`
-/

namespace A129597.P10975463718216709393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) * (n + 1) : ℚ) / (A111089 (n + 1) : ℚ)

end

end A129597.P10975463718216709393

namespace A129597

/-- `2*(n+1)*(n+1)/A111089(n+1)` -/
def P10975463718216709393.Spec : Prop :=
  ∀ n, P10975463718216709393.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P245346193098809937

`∏{d}[A006530(n+1), 2*(n+1)/#]/2`
-/

namespace A129597.P245346193098809937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, 2 * ((n + 1 : ℚ) / (d : ℚ))) / 2

end

end A129597.P245346193098809937

namespace A129597

/-- `∏{d}[A006530(n+1), 2*(n+1)/#]/2` -/
def P245346193098809937.Spec : Prop :=
  ∀ n, P245346193098809937.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P8312084469747585357

`∑[2*(2*n+1)]/A006530(2*n+2)`
-/

namespace A129597.P8312084469747585357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A006530 (2 * n + 2) : ℚ)

end

end A129597.P8312084469747585357

namespace A129597

/-- `∑[2*(2*n+1)]/A006530(2*n+2)` -/
def P8312084469747585357.Spec : Prop :=
  ∀ n, P8312084469747585357.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P13701762151409139306

`2*(n+1)*(n+1)/A006530(8*(n+1))`
-/

namespace A129597.P13701762151409139306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * ((n + 1 : ℚ) / (A006530 (8 * (n + 1)) : ℚ)))

end

end A129597.P13701762151409139306

namespace A129597

/-- `2*(n+1)*(n+1)/A006530(8*(n+1))` -/
def P13701762151409139306.Spec : Prop :=
  ∀ n, P13701762151409139306.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P7226748870552212750

`A052126(n+1)*A103517(n)`
-/

namespace A129597.P7226748870552212750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A103517 n

end

end A129597.P7226748870552212750

namespace A129597

/-- `A052126(n+1)*A103517(n)` -/
def P7226748870552212750.Spec : Prop :=
  ∀ n, P7226748870552212750.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P13922986950696374753

`(A065475(n+1)+n)*A052126(n+1)`
-/

namespace A129597.P13922986950696374753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) + (n : ℤ)) * A052126 (n + 1)

end

end A129597.P13922986950696374753

namespace A129597

/-- `(A065475(n+1)+n)*A052126(n+1)` -/
def P13922986950696374753.Spec : Prop :=
  ∀ n, P13922986950696374753.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P11392213563243897947

`A000005(A027746(n+1))*A342768(n+1)`
-/

namespace A129597.P11392213563243897947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027746 (n + 1)).toNat * A342768 (n + 1)

end

end A129597.P11392213563243897947

namespace A129597

/-- `A000005(A027746(n+1))*A342768(n+1)` -/
def P11392213563243897947.Spec : Prop :=
  ∀ n, P11392213563243897947.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P6407891534238275696

`A061142(A006530(n+1))*A342768(n+1)`
-/

namespace A129597.P6407891534238275696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A006530 (n + 1)).toNat * A342768 (n + 1)

end

end A129597.P6407891534238275696

namespace A129597

/-- `A061142(A006530(n+1))*A342768(n+1)` -/
def P6407891534238275696.Spec : Prop :=
  ∀ n, P6407891534238275696.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P853142937509818594

`A020639(A003958(2*n+1))*A342768(n+1)`
-/

namespace A129597.P853142937509818594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003958 (2 * n + 1)).toNat * A342768 (n + 1)

end

end A129597.P853142937509818594

namespace A129597

/-- `A020639(A003958(2*n+1))*A342768(n+1)` -/
def P853142937509818594.Spec : Prop :=
  ∀ n, P853142937509818594.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P17746481835816221712

`A000005(A008578(n+1))*A342768(n+1)`
-/

namespace A129597.P17746481835816221712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A342768 (n + 1)

end

end A129597.P17746481835816221712

namespace A129597

/-- `A000005(A008578(n+1))*A342768(n+1)` -/
def P17746481835816221712.Spec : Prop :=
  ∀ n, P17746481835816221712.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P17748071061985391189

`A342768(2*(n+1))/2`
-/

namespace A129597.P17748071061985391189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (2 * (n + 1)) : ℚ) / 2

end

end A129597.P17748071061985391189

namespace A129597

/-- `A342768(2*(n+1))/2` -/
def P17748071061985391189.Spec : Prop :=
  ∀ n, P17748071061985391189.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P10344452359028424292

`(n+1)*A052126(2*(n+1))`
-/

namespace A129597.P10344452359028424292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052126 (2 * (n + 1))

end

end A129597.P10344452359028424292

namespace A129597

/-- `(n+1)*A052126(2*(n+1))` -/
def P10344452359028424292.Spec : Prop :=
  ∀ n, P10344452359028424292.a n = A129597 (n + 1)

end A129597

/-! ## A129597.P5462477428548363356

`(n+1)*A130065(2*(n+1))/2`
-/

namespace A129597.P5462477428548363356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A130065 (2 * (n + 1)) : ℚ) / 2

end

end A129597.P5462477428548363356

namespace A129597

/-- `(n+1)*A130065(2*(n+1))/2` -/
def P5462477428548363356.Spec : Prop :=
  ∀ n, P5462477428548363356.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P14235770969509806840

`(2*(n+1))²/A066048(2*(n+1))`
-/

namespace A129597.P14235770969509806840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℚ) / (A066048 (2 * (n + 1)) : ℚ)

end

end A129597.P14235770969509806840

namespace A129597

/-- `(2*(n+1))²/A066048(2*(n+1))` -/
def P14235770969509806840.Spec : Prop :=
  ∀ n, P14235770969509806840.a n = (A129597 (n + 1) : ℚ)

end A129597

/-! ## A129597.P14724728118735528104

`A133092(2*(n+1))/(2*A006530(2*(n+1)))`
-/

namespace A129597.P14724728118735528104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133092 (2 * (n + 1)) : ℚ) / (2 * A006530 (2 * (n + 1)) : ℚ)

end

end A129597.P14724728118735528104

namespace A129597

/-- `A133092(2*(n+1))/(2*A006530(2*(n+1)))` -/
def P14724728118735528104.Spec : Prop :=
  ∀ n, P14724728118735528104.a n = (A129597 (n + 1) : ℚ)

end A129597

/-!
# A129598: a(n) = n * A111089(n).

The programs for A129598, the canonical program `A129598.P298873109801223629` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129598 has offset 1).

The definition of A129598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129598.P298873109801223629

`(n+1)*A111089(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A129598

/-- `(n+1)*A111089(n+1)` -/
def P298873109801223629.Spec : Prop :=
  ∀ n, P298873109801223629.a n = A129598 (n + 1)

theorem P298873109801223629.correct : P298873109801223629.Spec := by
  intro n
  simp only [A129598, Nat.add_sub_cancel]

end A129598

/-! ## A129598.P11788890815146775752

`(n+1)*(A070777(n+1)+1)`
-/

namespace A129598.P11788890815146775752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070777 (n + 1) + 1)

end

end A129598.P11788890815146775752

namespace A129598

/-- `(n+1)*(A070777(n+1)+1)` -/
def P11788890815146775752.Spec : Prop :=
  ∀ n, P11788890815146775752.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P8702319106700814779

`(n+1)*A006530(2*(n+1))`
-/

namespace A129598.P8702319106700814779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (2 * (n + 1))

end

end A129598.P8702319106700814779

namespace A129598

/-- `(n+1)*A006530(2*(n+1))` -/
def P8702319106700814779.Spec : Prop :=
  ∀ n, P8702319106700814779.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P9583918060611925808

`(n+1)*A139171(∏{p}[n+1, #])`
-/

namespace A129598.P9583918060611925808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A129598.P9583918060611925808

namespace A129598

/-- `(n+1)*A139171(∏{p}[n+1, #])` -/
def P9583918060611925808.Spec : Prop :=
  ∀ n, P9583918060611925808.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P5840592701542254590

`A253560(n+1)+A000007(n)`
-/

namespace A129598.P5840592701542254590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1) + A000007 n

end

end A129598.P5840592701542254590

namespace A129598

/-- `A253560(n+1)+A000007(n)` -/
def P5840592701542254590.Spec : Prop :=
  ∀ n, P5840592701542254590.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P5240174642350690866

`A054977(n)*A253560(n+1)`
-/

namespace A129598.P5240174642350690866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A253560 (n + 1)

end

end A129598.P5240174642350690866

namespace A129598

/-- `A054977(n)*A253560(n+1)` -/
def P5240174642350690866.Spec : Prop :=
  ∀ n, P5240174642350690866.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P16645327504229358871

`(n+1)*A007918(A006530(n+1))`
-/

namespace A129598.P16645327504229358871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007918 (A006530 (n + 1)).toNat

end

end A129598.P16645327504229358871

namespace A129598

/-- `(n+1)*A007918(A006530(n+1))` -/
def P16645327504229358871.Spec : Prop :=
  ∀ n, P16645327504229358871.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P332696895171358883

`(n+1)*A117366(A064989(n+1))`
-/

namespace A129598.P332696895171358883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117366 (A064989 (n + 1)).toNat

end

end A129598.P332696895171358883

namespace A129598

/-- `(n+1)*A117366(A064989(n+1))` -/
def P332696895171358883.Spec : Prop :=
  ∀ n, P332696895171358883.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P16209056162199803731

`(n+1)*A117366(A117364(n+1))`
-/

namespace A129598.P16209056162199803731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117366 (A117364 (n + 1)).toNat

end

end A129598.P16209056162199803731

namespace A129598

/-- `(n+1)*A117366(A117364(n+1))` -/
def P16209056162199803731.Spec : Prop :=
  ∀ n, P16209056162199803731.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P9656197884466082095

`lcm(A111089(n+1), A253560(n+1))`
-/

namespace A129598.P9656197884466082095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111089 (n + 1)) (A253560 (n + 1))

end

end A129598.P9656197884466082095

namespace A129598

/-- `lcm(A111089(n+1), A253560(n+1))` -/
def P9656197884466082095.Spec : Prop :=
  ∀ n, (P9656197884466082095.a n : ℤ) = A129598 (n + 1)

end A129598

/-! ## A129598.P11490715712058608497

`A000040(A061395(2*(n+1)))*(n+1)`
-/

namespace A129598.P11490715712058608497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (2 * (n + 1))).toNat * (n + 1 : ℤ)

end

end A129598.P11490715712058608497

namespace A129598

/-- `A000040(A061395(2*(n+1)))*(n+1)` -/
def P11490715712058608497.Spec : Prop :=
  ∀ n, P11490715712058608497.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P3776327983744128126

`A006530(n+2+n)+lcm(n, A006530(n+1))`
-/

namespace A129598.P3776327983744128126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2 + n) + (Int.lcm (n : ℤ) (A006530 (n + 1)) : ℤ)

end

end A129598.P3776327983744128126

namespace A129598

/-- `A006530(n+2+n)+lcm(n, A006530(n+1))` -/
def P3776327983744128126.Spec : Prop :=
  ∀ n, P3776327983744128126.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P2955107634942299699

`A253560(n+1)+A070536(A053585(n+1))`
-/

namespace A129598.P2955107634942299699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1) + A070536 (A053585 (n + 1)).toNat

end

end A129598.P2955107634942299699

namespace A129598

/-- `A253560(n+1)+A070536(A053585(n+1))` -/
def P2955107634942299699.Spec : Prop :=
  ∀ n, P2955107634942299699.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P5396735107296041819

`A253560(n+1)+A070536(A346088(n+1))`
-/

namespace A129598.P5396735107296041819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1) + A070536 (A346088 (n + 1)).toNat

end

end A129598.P5396735107296041819

namespace A129598

/-- `A253560(n+1)+A070536(A346088(n+1))` -/
def P5396735107296041819.Spec : Prop :=
  ∀ n, P5396735107296041819.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P12357099995903353369

`A070536(A053585(n+1))+(n+1)²/A052126(n+1)`
-/

namespace A129598.P12357099995903353369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070536 (A053585 (n + 1)).toNat : ℚ) + ((n + 1) ^ 2 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A129598.P12357099995903353369

namespace A129598

/-- `A070536(A053585(n+1))+(n+1)²/A052126(n+1)` -/
def P12357099995903353369.Spec : Prop :=
  ∀ n, P12357099995903353369.a n = (A129598 (n + 1) : ℚ)

end A129598

/-! ## A129598.P10042081161230089363

`A318886(A346088((∏{p}[n+1, #]-1)%(n+1)+1))+A253560(n+1)`
-/

namespace A129598.P10042081161230089363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (A346088 (Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat).toNat + A253560 (n + 1)

end

end A129598.P10042081161230089363

namespace A129598

/-- `A318886(A346088((∏{p}[n+1, #]-1)%(n+1)+1))+A253560(n+1)` -/
def P10042081161230089363.Spec : Prop :=
  ∀ n, P10042081161230089363.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P8053541547357985699

`A070536(A053585(n+1))+(n+1)*A008578(A061395(n+1)+1)`
-/

namespace A129598.P8053541547357985699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A053585 (n + 1)).toNat + (n + 1 : ℤ) * A008578 (A061395 (n + 1) + 1).toNat

end

end A129598.P8053541547357985699

namespace A129598

/-- `A070536(A053585(n+1))+(n+1)*A008578(A061395(n+1)+1)` -/
def P8053541547357985699.Spec : Prop :=
  ∀ n, P8053541547357985699.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P7520767745081804243

`A070536(A053585(n+1))+(n+1)*(A318884(n+1)-A318886(n+1))`
-/

namespace A129598.P7520767745081804243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A053585 (n + 1)).toNat + (n + 1 : ℤ) * (A318884 (n + 1) - A318886 (n + 1))

end

end A129598.P7520767745081804243

namespace A129598

/-- `A070536(A053585(n+1))+(n+1)*(A318884(n+1)-A318886(n+1))` -/
def P7520767745081804243.Spec : Prop :=
  ∀ n, P7520767745081804243.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P8381670031667649791

`A130064(2*(n+1))`
-/

namespace A129598.P8381670031667649791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (2 * (n + 1))

end

end A129598.P8381670031667649791

namespace A129598

/-- `A130064(2*(n+1))` -/
def P8381670031667649791.Spec : Prop :=
  ∀ n, P8381670031667649791.a n = A129598 (n + 1)

end A129598

/-! ## A129598.P6045037037327300743

`A253560(2*(n+1))/2`
-/

namespace A129598.P6045037037327300743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (2 * (n + 1)) : ℚ) / 2

end

end A129598.P6045037037327300743

namespace A129598

/-- `A253560(2*(n+1))/2` -/
def P6045037037327300743.Spec : Prop :=
  ∀ n, P6045037037327300743.a n = (A129598 (n + 1) : ℚ)

end A129598

/-!
# A129599: Prime-factorization encoded partition code for the Łukasiewicz-word, variant of A129593.

The programs for A129599, there is no canonical definition to state claims against.
-/

/-! ## A129599.P1832036937277878614

`∏{d}[n, A006530(#*(n+3)!)]`
-/

namespace A129599.P1832036937277878614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A006530 (d * Nat.factorial (n + 3))

end

end A129599.P1832036937277878614

