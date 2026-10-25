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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A258000: Expansion of 1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7-x^9).

The programs for A258000, the canonical program `A258000.P16165201312364191254` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258000 has offset 0).

The definition of A258000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` (program `A258000.P16165201312364191254`, by `A258000.P16165201312364191254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258000.P16165201312364191254

`ogf(1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258000

/-- `ogf(1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P16165201312364191254.Spec : Prop :=
  ∀ n, P16165201312364191254.a n = A258000 n

theorem P16165201312364191254.correct : P16165201312364191254.Spec := by
  intro n
  simp only [A258000]

end A258000

/-! ## A258000.P3531991502290591918

`floor(root(A193620(2*n+1), 7))`
-/

namespace A258000.P3531991502290591918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193620 (2 * n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A258000.P3531991502290591918

namespace A258000

/-- `floor(root(A193620(2*n+1), 7))` -/
def P3531991502290591918.Spec : Prop :=
  ∀ n, P3531991502290591918.a n = A258000 n

end A258000

/-! ## A258000.P16177232966501746178

`A054404(3*A305442(n))`
-/

namespace A258000.P16177232966501746178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (3 * A305442 n).toNat

end

end A258000.P16177232966501746178

namespace A258000

/-- `A054404(3*A305442(n))` -/
def P16177232966501746178.Spec : Prop :=
  ∀ n, P16177232966501746178.a n = A258000 n

end A258000

/-! ## A258000.P15999361829590199247

`A054404(A305442(n)+A135491(n))`
-/

namespace A258000.P15999361829590199247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A305442 n + A135491 n).toNat

end

end A258000.P15999361829590199247

namespace A258000

/-- `A054404(A305442(n)+A135491(n))` -/
def P15999361829590199247.Spec : Prop :=
  ∀ n, P15999361829590199247.a n = A258000 n

end A258000

/-! ## A258000.P14934304593418683559

`A071860(A148788(n))`
-/

namespace A258000.P14934304593418683559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A148788 n).toNat

end

end A258000.P14934304593418683559

namespace A258000

/-- `A071860(A148788(n))` -/
def P14934304593418683559.Spec : Prop :=
  ∀ n, P14934304593418683559.a n = A258000 n

end A258000

/-!
# A258001: Those terms of A255571 whose every A080541/A080542-rotation is also a term of A255571.

The programs for A258001, there is no canonical definition to state claims against.
-/

/-! ## A258001.P14341122813250249691

`A255571(2*n)+1-A255571(2*n)%3`
-/

namespace A258001.P14341122813250249691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255571 (2 * n) + 1 - Int.tmod (A255571 (2 * n)) 3

end

end A258001.P14341122813250249691

/-! ## A258001.P12102726895177068324

`A061891(A255561(n))`
-/

namespace A258001.P12102726895177068324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 (A255561 n).toNat

end

end A258001.P12102726895177068324

/-! ## A258001.P5452959560342480582

`A029739(A255561(n)+1)`
-/

namespace A258001.P5452959560342480582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (A255561 n + 1).toNat

end

end A258001.P5452959560342480582

/-! ## A258001.P11363718432316350182

`A061891(floor(A255571(2*n)/2))`
-/

namespace A258001.P11363718432316350182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 ⌊(A255571 (2 * n) : ℚ) / 2⌋.toNat

end

end A258001.P11363718432316350182

/-! ## A258001.P6862016774964203946

`A029739(floor(A255571(2*n)/2)+1)`
-/

namespace A258001.P6862016774964203946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (⌊(A255571 (2 * n) : ℚ) / 2⌋ + 1).toNat

end

end A258001.P6862016774964203946

/-!
# A258006: First differences of A258202.

The programs for A258006, there is no canonical definition to state claims against.
-/

/-! ## A258006.P128004996911833845

`A258202(n+2)-A258202(n+1)`
-/

namespace A258006.P128004996911833845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (n + 2) - A258202 (n + 1)

end

end A258006.P128004996911833845

/-! ## A258006.P13057065742595946789

`Δ[A258202(n+1)]`
-/

namespace A258006.P13057065742595946789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258006.P13057065742595946789

/-! ## A258006.P3737000981709819824

`abs(Δ[A258202(1-(n-2*n))])`
-/

namespace A258006.P3737000981709819824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258006.P3737000981709819824

/-! ## A258006.P6022612813813077502

`Δ[record[A258202(A324346(n))]]`
-/

namespace A258006.P6022612813813077502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258006.P6022612813813077502

/-! ## A258006.P9598941735084713301

`Δ[record[A258202(A336320(n))]]`
-/

namespace A258006.P9598941735084713301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (A336320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258006.P9598941735084713301

/-!
# A258007: First differences of A258203.

The programs for A258007, there is no canonical definition to state claims against.
-/

/-! ## A258007.P17774008883779203953

`A258203(n+2)-A258203(n+1)`
-/

namespace A258007.P17774008883779203953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258203 (n + 2) - A258203 (n + 1)

end

end A258007.P17774008883779203953

/-! ## A258007.P16415981055586529749

`Δ[A258203(n+1)]`
-/

namespace A258007.P16415981055586529749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258007.P16415981055586529749

/-! ## A258007.P6332383180196671317

`Δ[record[A258203(A324346(n))]]`
-/

namespace A258007.P6332383180196671317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258203 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258007.P6332383180196671317

/-! ## A258007.P6525331996489447332

`Δ[lt[0, A258201(n)]]`
-/

namespace A258007.P6525331996489447332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258007.P6525331996489447332

/-! ## A258007.P7428965538255770730

`Δ[record[n*A258201(n+1)]]`
-/

namespace A258007.P7428965538255770730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A258201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258007.P7428965538255770730

/-!
# A258008: First differences of A231718.

The programs for A258008, there is no canonical definition to state claims against.
-/

/-! ## A258008.P6773268686514161707

`A231718(n+2)-A231718(n+1)`
-/

namespace A258008.P6773268686514161707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231718 (n + 2) - A231718 (n + 1)

end

end A258008.P6773268686514161707

/-! ## A258008.P14334147252836277360

`Δ[A231718(n+1)]`
-/

namespace A258008.P14334147252836277360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258008.P14334147252836277360

/-! ## A258008.P17065662118841150853

`Δ[record[A231718(A152271(n))]]`
-/

namespace A258008.P17065662118841150853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231718 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258008.P17065662118841150853

/-! ## A258008.P16262689647045397485

`Δ[record[A231718(A274640(n))]]`
-/

namespace A258008.P16262689647045397485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231718 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258008.P16262689647045397485

/-! ## A258008.P1783146055267499931

`Δ[record[A231718(A143182(n))]]`
-/

namespace A258008.P1783146055267499931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231718 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258008.P1783146055267499931

/-! ## A258008.P3934665045926238907

`Δ[eq[1, A231717(n)]]`
-/

namespace A258008.P3934665045926238907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258008.P3934665045926238907

/-!
# A258009: If n <= 16, a(n) = n; for n > 16: a(16n + 6) = 16*n + 9, and for other cases with n > 16: a(2n) = 2*a(n), a(2n+1) = 2*a(n) + 1.

The programs for A258009, there is no canonical definition to state claims against.
-/

/-! ## A258009.P870274980308097798

`A208848(A336424(2*(n+2)))+n`
-/

namespace A258009.P870274980308097798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208848 (A336424 (2 * (n + 2))).toNat + (n : ℤ)

end

end A258009.P870274980308097798

/-! ## A258009.P4879872555928459714

`A327449(A327391(2*(n+2)))+n`
-/

namespace A258009.P4879872555928459714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327449 (A327391 (2 * (n + 2))).toNat + (n : ℤ)

end

end A258009.P4879872555928459714

/-! ## A258009.P8620185820946724204

`A240923(A333940(2*n+3))+n`
-/

namespace A258009.P8620185820946724204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (A333940 (2 * n + 3)).toNat + (n : ℤ)

end

end A258009.P8620185820946724204

/-! ## A258009.P4692589193898736569

`A245492(A377617(2*(n+2)))+n`
-/

namespace A258009.P4692589193898736569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245492 (A377617 (2 * (n + 2))).toNat + (n : ℤ)

end

end A258009.P4692589193898736569

/-! ## A258009.P4092008589153067035

`A286604(A225630(2*(n+1)))+n`
-/

namespace A258009.P4092008589153067035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286604 (A225630 (2 * (n + 1))).toNat + (n : ℤ)

end

end A258009.P4092008589153067035

/-!
# A258010: First differences of A230422.

The programs for A258010, there is no canonical definition to state claims against.
-/

/-! ## A258010.P11500657587007908657

`A230422(n+2)-A230422(n+1)`
-/

namespace A258010.P11500657587007908657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230422 (n + 2) - A230422 (n + 1)

end

end A258010.P11500657587007908657

/-! ## A258010.P12135914960944920829

`Δ[A230422(n+1)]`
-/

namespace A258010.P12135914960944920829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258010.P12135914960944920829

/-! ## A258010.P5234978472227224260

`abs(Δ[A230422(A052938(2*n))])`
-/

namespace A258010.P5234978472227224260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230422 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258010.P5234978472227224260

/-! ## A258010.P7665734580945319796

`Δ[eq[1, A230410(n)]]`
-/

namespace A258010.P7665734580945319796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230410 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258010.P7665734580945319796

/-! ## A258010.P13917960642394392523

`Δ[record[(n+1)^(2-A230410(n+1))]]`
-/

namespace A258010.P13917960642394392523
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - A230410 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258010.P13917960642394392523

/-! ## A258010.P13492372126594349950

`Δ[record[A230422(A143182(n))]]`
-/

namespace A258010.P13492372126594349950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230422 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258010.P13492372126594349950

/-!
# A258011: Numbers remaining after the third stage of Lucky sieve.

The programs for A258011, the canonical program `A258011.P1023716619731033103` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258011 has offset 1).

The definition of A258011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258011.P1023716619731033103

`or(1, 3*A047368(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258011

/-- `or(1, 3*A047368(n+1))` -/
def P1023716619731033103.Spec : Prop :=
  ∀ n, P1023716619731033103.a n = A258011 (n + 1)

theorem P1023716619731033103.correct : P1023716619731033103.Spec := by
  intro n
  simp only [A258011, Nat.add_sub_cancel]

end A258011

/-! ## A258011.P2229076305763586631

`A047241(A047304(n+1))`
-/

namespace A258011.P2229076305763586631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A047304 (n + 1)).toNat

end

end A258011.P2229076305763586631

namespace A258011

/-- `A047241(A047304(n+1))` -/
def P2229076305763586631.Spec : Prop :=
  ∀ n, P2229076305763586631.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P13477952930129347497

`A047241(A047368(n+1)+1)`
-/

namespace A258011.P13477952930129347497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A047368 (n + 1) + 1).toNat

end

end A258011.P13477952930129347497

namespace A258011

/-- `A047241(A047368(n+1)+1)` -/
def P13477952930129347497.Spec : Prop :=
  ∀ n, P13477952930129347497.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P4868172558457236333

`A047241(A047306(n+2)-1)`
-/

namespace A258011.P4868172558457236333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A047306 (n + 2) - 1).toNat

end

end A258011.P4868172558457236333

namespace A258011

/-- `A047241(A047306(n+2)-1)` -/
def P4868172558457236333.Spec : Prop :=
  ∀ n, P4868172558457236333.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P15401896038528677659

`A047235(A047368(n+1)+1)-1`
-/

namespace A258011.P15401896038528677659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A047368 (n + 1) + 1).toNat - 1

end

end A258011.P15401896038528677659

namespace A258011

/-- `A047235(A047368(n+1)+1)-1` -/
def P15401896038528677659.Spec : Prop :=
  ∀ n, P15401896038528677659.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P5370163063823999910

`A047270(A047368(n+1)+1)-2`
-/

namespace A258011.P5370163063823999910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A047368 (n + 1) + 1).toNat - 2

end

end A258011.P5370163063823999910

namespace A258011

/-- `A047270(A047368(n+1)+1)-2` -/
def P5370163063823999910.Spec : Prop :=
  ∀ n, P5370163063823999910.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P10021070398600437125

`A047247(2*A047304(n+1))-2`
-/

namespace A258011.P10021070398600437125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (2 * A047304 (n + 1)).toNat - 2

end

end A258011.P10021070398600437125

namespace A258011

/-- `A047247(2*A047304(n+1))-2` -/
def P10021070398600437125.Spec : Prop :=
  ∀ n, P10021070398600437125.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P5708004096324940717

`A047255(2*A047304(n+1)-1)`
-/

namespace A258011.P5708004096324940717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (2 * A047304 (n + 1) - 1).toNat

end

end A258011.P5708004096324940717

namespace A258011

/-- `A047255(2*A047304(n+1)-1)` -/
def P5708004096324940717.Spec : Prop :=
  ∀ n, P5708004096324940717.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P3402706948630245474

`A047255(A047593(n+1)-1+n)`
-/

namespace A258011.P3402706948630245474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A047593 (n + 1) - 1 + (n : ℤ)).toNat

end

end A258011.P3402706948630245474

namespace A258011

/-- `A047255(A047593(n+1)-1+n)` -/
def P3402706948630245474.Spec : Prop :=
  ∀ n, P3402706948630245474.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P11273477545710791880

`A047255(A047304(n+1)+A047304(n+1)-1)`
-/

namespace A258011.P11273477545710791880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A047304 (n + 1) + (A047304 (n + 1) - 1)).toNat

end

end A258011.P11273477545710791880

namespace A258011

/-- `A047255(A047304(n+1)+A047304(n+1)-1)` -/
def P11273477545710791880.Spec : Prop :=
  ∀ n, P11273477545710791880.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P16316629507919025197

`A047250(2*A047304(n+1))-2`
-/

namespace A258011.P16316629507919025197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (2 * A047304 (n + 1)).toNat - 2

end

end A258011.P16316629507919025197

namespace A258011

/-- `A047250(2*A047304(n+1))-2` -/
def P16316629507919025197.Spec : Prop :=
  ∀ n, P16316629507919025197.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P7224801276340133339

`A047246(2*A047304(n+1))`
-/

namespace A258011.P7224801276340133339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (2 * A047304 (n + 1)).toNat

end

end A258011.P7224801276340133339

namespace A258011

/-- `A047246(2*A047304(n+1))` -/
def P7224801276340133339.Spec : Prop :=
  ∀ n, P7224801276340133339.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P1407382041078874051

`A047246(A047593(n+1)+n)`
-/

namespace A258011.P1407382041078874051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A047593 (n + 1) + (n : ℤ)).toNat

end

end A258011.P1407382041078874051

namespace A258011

/-- `A047246(A047593(n+1)+n)` -/
def P1407382041078874051.Spec : Prop :=
  ∀ n, P1407382041078874051.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P7409087400871765945

`A047227(2*A047368(n+1)+1)`
-/

namespace A258011.P7409087400871765945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (2 * A047368 (n + 1) + 1).toNat

end

end A258011.P7409087400871765945

namespace A258011

/-- `A047227(2*A047368(n+1)+1)` -/
def P7409087400871765945.Spec : Prop :=
  ∀ n, P7409087400871765945.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P7218491822117497978

`A047246(2*(A047368(n+1)+1))`
-/

namespace A258011.P7218491822117497978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (2 * (A047368 (n + 1) + 1)).toNat

end

end A258011.P7218491822117497978

namespace A258011

/-- `A047246(2*(A047368(n+1)+1))` -/
def P7218491822117497978.Spec : Prop :=
  ∀ n, P7218491822117497978.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P1245901181067540207

`A047227(2*A047304(n+1)-1)`
-/

namespace A258011.P1245901181067540207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (2 * A047304 (n + 1) - 1).toNat

end

end A258011.P1245901181067540207

namespace A258011

/-- `A047227(2*A047304(n+1)-1)` -/
def P1245901181067540207.Spec : Prop :=
  ∀ n, P1245901181067540207.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P14350129676050161815

`A047229(2*A047304(n+1))-1`
-/

namespace A258011.P14350129676050161815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (2 * A047304 (n + 1)).toNat - 1

end

end A258011.P14350129676050161815

namespace A258011

/-- `A047229(2*A047304(n+1))-1` -/
def P14350129676050161815.Spec : Prop :=
  ∀ n, P14350129676050161815.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P11502295971436348278

`A047251(2*A047304(n+1))-2`
-/

namespace A258011.P11502295971436348278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047251 (2 * A047304 (n + 1)).toNat - 2

end

end A258011.P11502295971436348278

namespace A258011

/-- `A047251(2*A047304(n+1))-2` -/
def P11502295971436348278.Spec : Prop :=
  ∀ n, P11502295971436348278.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P16608590345009300133

`A047227(A047593(n+1)-1+n)`
-/

namespace A258011.P16608590345009300133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (A047593 (n + 1) - 1 + (n : ℤ)).toNat

end

end A258011.P16608590345009300133

namespace A258011

/-- `A047227(A047593(n+1)-1+n)` -/
def P16608590345009300133.Spec : Prop :=
  ∀ n, P16608590345009300133.a n = A258011 (n + 1)

end A258011

/-! ## A258011.P7708303780201691743

`A047246(A047602(n+1)+2+n)`
-/

namespace A258011.P7708303780201691743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A047602 (n + 1) + 2 + (n : ℤ)).toNat

end

end A258011.P7708303780201691743

namespace A258011

/-- `A047246(A047602(n+1)+2+n)` -/
def P7708303780201691743.Spec : Prop :=
  ∀ n, P7708303780201691743.a n = A258011 (n + 1)

end A258011

/-!
# A258016: Unlucky numbers removed at the stage three of Lucky sieve.

The programs for A258016, the canonical program `A258016.P13445430890878285822` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258016 has offset 1).

The definition of A258016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258016.P13445430890878285822

`a(n-2)+42` with `a(0)=19, a(1)=39`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258016

/-- `a(n-2)+42` -/
def P13445430890878285822.Spec : Prop :=
  ∀ n, (P13445430890878285822.a n : ℤ) = A258016 (n + 1)

theorem P13445430890878285822.correct : P13445430890878285822.Spec := by
  intro n
  simp only [A258016, Nat.add_sub_cancel]

end A258016

/-! ## A258016.P15486838517335655883

`A047241(7*(n+1))`
-/

namespace A258016.P15486838517335655883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (7 * (n + 1))

end

end A258016.P15486838517335655883

namespace A258016

/-- `A047241(7*(n+1))` -/
def P15486838517335655883.Spec : Prop :=
  ∀ n, P15486838517335655883.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P8063451822084593335

`A260436(A255413(1+n+1))`
-/

namespace A258016.P8063451822084593335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A255413 (1 + (n + 1))).toNat

end

end A258016.P8063451822084593335

namespace A258016

/-- `A260436(A255413(1+n+1))` -/
def P8063451822084593335.Spec : Prop :=
  ∀ n, P8063451822084593335.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P4050380149140554372

`or(1, 3*(7*n+6))`
-/

namespace A258016.P4050380149140554372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (7 * n + 6))

end

end A258016.P4050380149140554372

namespace A258016

/-- `or(1, 3*(7*n+6))` -/
def P4050380149140554372.Spec : Prop :=
  ∀ n, (P4050380149140554372.a n : ℤ) = A258016 (n + 1)

end A258016

/-! ## A258016.P17475573678113217494

`∑[42-a(n-1)]` with `a(0)=19, a(1)=20`
-/

namespace A258016.P17475573678113217494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19, 20] fun n f1 =>
  42 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258016.P17475573678113217494

namespace A258016

/-- `∑[42-a(n-1)]` -/
def P17475573678113217494.Spec : Prop :=
  ∀ n, P17475573678113217494.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P15233065895199296484

`21*(n+1)-(and(1, n)+2)`
-/

namespace A258016.P15233065895199296484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * (n + 1) : ℤ) - (Nat.land 1 n + 2 : ℤ)

end

end A258016.P15233065895199296484

namespace A258016

/-- `21*(n+1)-(and(1, n)+2)` -/
def P15233065895199296484.Spec : Prop :=
  ∀ n, P15233065895199296484.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P12602997443705077695

`A042948(n)+19*(n+1)`
-/

namespace A258016.P12602997443705077695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + (19 * (n + 1) : ℤ)

end

end A258016.P12602997443705077695

namespace A258016

/-- `A042948(n)+19*(n+1)` -/
def P12602997443705077695.Spec : Prop :=
  ∀ n, P12602997443705077695.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P881976880086038958

`A131501(n+1)+A082285(n)`
-/

namespace A258016.P881976880086038958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131501 (n + 1) + A082285 n

end

end A258016.P881976880086038958

namespace A258016

/-- `A131501(n+1)+A082285(n)` -/
def P881976880086038958.Spec : Prop :=
  ∀ n, P881976880086038958.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P7584420891898336240

`A350522(n)+A047270(n+1)`
-/

namespace A258016.P7584420891898336240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n + A047270 (n + 1)

end

end A258016.P7584420891898336240

namespace A258016

/-- `A350522(n)+A047270(n+1)` -/
def P7584420891898336240.Spec : Prop :=
  ∀ n, P7584420891898336240.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P2497841631095423532

`A350051(n)-A047233(n+1)`
-/

namespace A258016.P2497841631095423532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n - A047233 (n + 1)

end

end A258016.P2497841631095423532

namespace A258016

/-- `A350051(n)-A047233(n+1)` -/
def P2497841631095423532.Spec : Prop :=
  ∀ n, P2497841631095423532.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P1752460371170562381

`A239129(n+1)+A047235(n+1)`
-/

namespace A258016.P1752460371170562381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + A047235 (n + 1)

end

end A258016.P1752460371170562381

namespace A258016

/-- `A239129(n+1)+A047235(n+1)` -/
def P1752460371170562381.Spec : Prop :=
  ∀ n, P1752460371170562381.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P15903282855541966966

`A361692(n+1)+A047398(n+1)`
-/

namespace A258016.P15903282855541966966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) + A047398 (n + 1)

end

end A258016.P15903282855541966966

namespace A258016

/-- `A361692(n+1)+A047398(n+1)` -/
def P15903282855541966966.Spec : Prop :=
  ∀ n, P15903282855541966966.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P4075163575763676796

`A259614(n+1)+A166542(n+1)`
-/

namespace A258016.P4075163575763676796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259614 (n + 1) + A166542 (n + 1)

end

end A258016.P4075163575763676796

namespace A258016

/-- `A259614(n+1)+A166542(n+1)` -/
def P4075163575763676796.Spec : Prop :=
  ∀ n, P4075163575763676796.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P14748055381713107057

`A332884(n+1)+A120413(n+1)`
-/

namespace A258016.P14748055381713107057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332884 (n + 1) + A120413 (n + 1)

end

end A258016.P14748055381713107057

namespace A258016

/-- `A332884(n+1)+A120413(n+1)` -/
def P14748055381713107057.Spec : Prop :=
  ∀ n, P14748055381713107057.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P424897676600732551

`2*A017641(n)-A007310(n+1)`
-/

namespace A258016.P424897676600732551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017641 n - A007310 (n + 1)

end

end A258016.P424897676600732551

namespace A258016

/-- `2*A017641(n)-A007310(n+1)` -/
def P424897676600732551.Spec : Prop :=
  ∀ n, P424897676600732551.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P5293883777994198615

`A063097(n+2)+2*(8*n+6)`
-/

namespace A258016.P5293883777994198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 2) + (2 * (8 * n + 6) : ℤ)

end

end A258016.P5293883777994198615

namespace A258016

/-- `A063097(n+2)+2*(8*n+6)` -/
def P5293883777994198615.Spec : Prop :=
  ∀ n, P5293883777994198615.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P8299457498135407637

`A063093(n+2)+2*(8*n+7)`
-/

namespace A258016.P8299457498135407637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 2) + (2 * (8 * n + 7) : ℤ)

end

end A258016.P8299457498135407637

namespace A258016

/-- `A063093(n+2)+2*(8*n+7)` -/
def P8299457498135407637.Spec : Prop :=
  ∀ n, P8299457498135407637.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P14611110617859646558

`A007310(n+2)+2*A017245(n)`
-/

namespace A258016.P14611110617859646558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2) + 2 * A017245 n

end

end A258016.P14611110617859646558

namespace A258016

/-- `A007310(n+2)+2*A017245(n)` -/
def P14611110617859646558.Spec : Prop :=
  ∀ n, P14611110617859646558.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P8354830708373466447

`12*n+8+A166138(n+1)+A165988(n+1)`
-/

namespace A258016.P8354830708373466447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 8 : ℤ) + (A166138 (n + 1) + A165988 (n + 1))

end

end A258016.P8354830708373466447

namespace A258016

/-- `12*n+8+A166138(n+1)+A165988(n+1)` -/
def P8354830708373466447.Spec : Prop :=
  ∀ n, P8354830708373466447.a n = A258016 (n + 1)

end A258016

/-! ## A258016.P7227348506262641344

`A283394(n+1)-(A051682(n)+A014601(n))`
-/

namespace A258016.P7227348506262641344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 (n + 1) - (A051682 n + A014601 n)

end

end A258016.P7227348506262641344

namespace A258016

/-- `A283394(n+1)-(A051682(n)+A014601(n))` -/
def P7227348506262641344.Spec : Prop :=
  ∀ n, P7227348506262641344.a n = A258016 (n + 1)

end A258016

/-!
# A258017: Number of one-sided fusenes (not necessarily planar) of perimeter 2n, counted up to rotations.

The programs for A258017, there is no canonical definition to state claims against.
-/

/-! ## A258017.P9260820015562017751

`2*A258019(n+1)-A258018(n+1)`
-/

namespace A258017.P9260820015562017751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258019 (n + 1) - A258018 (n + 1)

end

end A258017.P9260820015562017751

/-! ## A258017.P8734433893523411993

`A258204(n+1)+char[12]`
-/

namespace A258017.P8734433893523411993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258204 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258017.P8734433893523411993

/-! ## A258017.P2443601718626383505

`A277157(n)+A258204(n+1)`
-/

namespace A258017.P2443601718626383505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 n + A258204 (n + 1)

end

end A258017.P2443601718626383505

/-! ## A258017.P12517138810869775862

`A281155(n)+A258204(n+1)`
-/

namespace A258017.P12517138810869775862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A258204 (n + 1)

end

end A258017.P12517138810869775862

/-! ## A258017.P18272023163147830145

`A327450(n+1)+A258204(n+1)`
-/

namespace A258017.P18272023163147830145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327450 (n + 1) + A258204 (n + 1)

end

end A258017.P18272023163147830145

/-!
# A258018: Number of fusenes of perimeter 2n (not necessarily planar) with bilateral symmetry, counted up to rotations.

The programs for A258018, there is no canonical definition to state claims against.
-/

/-! ## A258018.P13246337421325028674

`2*A258019(n+1)-A258017(n+1)`
-/

namespace A258018.P13246337421325028674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258019 (n + 1) - A258017 (n + 1)

end

end A258018.P13246337421325028674

/-! ## A258018.P2132743336280377109

`A258205(n+1)+char[12]`
-/

namespace A258018.P2132743336280377109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258205 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258018.P2132743336280377109

/-! ## A258018.P13263463970321981907

`A258068(A258205(n+1)+1)`
-/

namespace A258018.P13263463970321981907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (A258205 (n + 1) + 1).toNat

end

end A258018.P13263463970321981907

/-! ## A258018.P3498537089625785215

`A357759(A258205(n+1)+1)`
-/

namespace A258018.P3498537089625785215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357759 (A258205 (n + 1) + 1).toNat

end

end A258018.P3498537089625785215

/-! ## A258018.P12919712234026143637

`A277157(n)+A258205(n+1)`
-/

namespace A258018.P12919712234026143637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 n + A258205 (n + 1)

end

end A258018.P12919712234026143637

/-!
# A258019: Number of fusenes (not necessarily planar) of perimeter 2n, counted up to rotations and turning over.

The programs for A258019, there is no canonical definition to state claims against.
-/

/-! ## A258019.P7588405407788135622

`1/2*(A258017(n+1)+A258018(n+1))`
-/

namespace A258019.P7588405407788135622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A258017 (n + 1) + A258018 (n + 1) : ℚ)

end

end A258019.P7588405407788135622

/-! ## A258019.P18320553431403149072

`A057779(n+1)-char[11]`
-/

namespace A258019.P18320553431403149072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057779 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258019.P18320553431403149072

/-! ## A258019.P11942869597314423251

`A258206(n+1)+char[12]`
-/

namespace A258019.P11942869597314423251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258206 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258019.P11942869597314423251

/-! ## A258019.P588726397952325600

`A222252(A057779(n+1))`
-/

namespace A258019.P588726397952325600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A057779 (n + 1)).toNat

end

end A258019.P588726397952325600

/-! ## A258019.P17450218119792462365

`A381611(A258206(n+1))`
-/

namespace A258019.P17450218119792462365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381611 (A258206 (n + 1)).toNat

end

end A258019.P17450218119792462365

/-!
# A258021: Eventual fixed point of map x -> floor(tan(x)) when starting the iteration with the initial value x = n.

The programs for A258021, there is no canonical definition to state claims against.
-/

/-! ## A258021.P6172264136703468384

`char[A258024(n+1)]`
-/

namespace A258021.P6172264136703468384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P6172264136703468384

/-! ## A258021.P5422242125662175754

`char[A258200(n)+a(n-1)]` with `a(0)=1`
-/

namespace A258021.P5422242125662175754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A258200 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P5422242125662175754

/-! ## A258021.P11970514448708593763

`char[record[A258024(A141256(n))]]`
-/

namespace A258021.P11970514448708593763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P11970514448708593763

/-! ## A258021.P5861095141007295753

`char[record[A258024(A324346(n))]]`
-/

namespace A258021.P5861095141007295753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P5861095141007295753

/-! ## A258021.P13357276675907946566

`char[record[A258024(A336320(n))]]`
-/

namespace A258021.P13357276675907946566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A336320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P13357276675907946566

/-! ## A258021.P12950714697853419355

`char[A258024(A324346(n))%A004769(n)]`
-/

namespace A258021.P12950714697853419355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258024 (A324346 n).toNat) (A004769 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A258021.P12950714697853419355

/-! ## A258021.P11902238530889660251

`char[A293698(n+1)]*A054977(A002061(n))`
-/

namespace A258021.P11902238530889660251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054977 (A002061 n).toNat

end

end A258021.P11902238530889660251

/-! ## A258021.P1721960286070793143

`and(char[A293698(n+1)], A293682(n+1))`
-/

namespace A258021.P1721960286070793143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A293682 (n + 1))

end

end A258021.P1721960286070793143

/-! ## A258021.P13634614082725915759

`and(A163584(n), A382727(n))`
-/

namespace A258021.P13634614082725915759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163584 n) (A382727 n)

end

end A258021.P13634614082725915759

/-! ## A258021.P14501937459039292807

`and(A125919(n+1), A163584(n))`
-/

namespace A258021.P14501937459039292807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125919 (n + 1)) (A163584 n)

end

end A258021.P14501937459039292807

/-!
# A258022: Nonnegative integers n with property that when starting from x=n, the map x -> floor(tan(x)) reaches [the fixed point] 0 (or any other integer less than 1 if such negative fixed points exist).

The programs for A258022, there is no canonical definition to state claims against.
-/

/-! ## A258022.P12464864405381067038

`lt[tan(n-9), 3]`
-/

namespace A258022.P12464864405381067038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℤ) - 9 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A258022.P12464864405381067038

/-! ## A258022.P1930223765734257386

`comp[eq[1, floor(tan(n))]]`
-/

namespace A258022.P1930223765734257386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A258022.P1930223765734257386

/-! ## A258022.P7938764948707468878

`comp[eq[2, ceil(tan(n))]]`
-/

namespace A258022.P7938764948707468878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A258022.P7938764948707468878

/-! ## A258022.P10067298951650516173

`lt[-3, cot(n+2)]`
-/

namespace A258022.P10067298951650516173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A258022.P10067298951650516173

/-! ## A258022.P4191125028695109451

`lt[-4, tan(n+7)]`
-/

namespace A258022.P4191125028695109451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 7 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A258022.P4191125028695109451

/-! ## A258022.P13335014524985117482

`lt[root(γ, tan(n+2)), 4]`
-/

namespace A258022.P13335014524985117482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant ^ (1 / Real.tan (n + 2 : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A258022.P13335014524985117482

/-! ## A258022.P2334367264858869182

`lt[-2, ratio[sin(n+2)]]`
-/

namespace A258022.P2334367264858869182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A258022.P2334367264858869182

/-! ## A258022.P10126488465719646892

`lt[sin(3), abs(sin(n-1))]`
-/

namespace A258022.P10126488465719646892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (3 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258022.P10126488465719646892

/-! ## A258022.P10235801407091410026

`comp[eq[2, round(tan(n-3))]]`
-/

namespace A258022.P10235801407091410026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan ((n : ℤ) - 3 : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A258022.P10235801407091410026

/-! ## A258022.P15279839463407509400

`lt[cos(sin(n-1)), sin(8)]`
-/

namespace A258022.P15279839463407509400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.sin ((n : ℤ) - 1 : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (8 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258022.P15279839463407509400

/-!
# A258023: Numbers of form (2^i)*(3^j) or (3^i)*(5^j).

The programs for A258023, there is no canonical definition to state claims against.
-/

/-! ## A258023.P13925340974538286089

`∪[A003586(n+1), A003593(n+1)]`
-/

namespace A258023.P13925340974538286089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P13925340974538286089

/-! ## A258023.P17157359318051127619

`∪[A003593(n+1), A007694(n+1)]`
-/

namespace A258023.P17157359318051127619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P17157359318051127619

/-! ## A258023.P4057667376147674761

`∩[A051037(n+1), A342950(n+1)]`
-/

namespace A258023.P4057667376147674761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P4057667376147674761

/-! ## A258023.P8617809750832584952

`∩[A257997(n+1), A342950(n+1)]`
-/

namespace A258023.P8617809750832584952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P8617809750832584952

/-! ## A258023.P1981003889118557758

`∩[A143513(n+1), A342950(n+1)]`
-/

namespace A258023.P1981003889118557758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P1981003889118557758

/-! ## A258023.P17343866003699451333

`∩[A068095(n+1), A342950(n+1)]`
-/

namespace A258023.P17343866003699451333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P17343866003699451333

/-! ## A258023.P5878661403689463216

`∩[A325663(n+1), A342950(n+1)]`
-/

namespace A258023.P5878661403689463216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P5878661403689463216

/-! ## A258023.P15291002536934794581

`∩[A051037(n+1), A130073(n+1)]`
-/

namespace A258023.P15291002536934794581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P15291002536934794581

/-! ## A258023.P5813213422045507106

`∩[A130073(n+1), A257997(n+1)]`
-/

namespace A258023.P5813213422045507106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P5813213422045507106

/-! ## A258023.P3308919119395455812

`∩[A073491(n+1), A257997(n+1)]`
-/

namespace A258023.P3308919119395455812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P3308919119395455812

/-! ## A258023.P8779100421627247864

`∩[A156541(n+1), A342950(n+1)]`
-/

namespace A258023.P8779100421627247864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P8779100421627247864

/-! ## A258023.P2752430644549523446

`∩[A051037(n+1), A081306(n+1)]`
-/

namespace A258023.P2752430644549523446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P2752430644549523446

/-! ## A258023.P8532346614880371396

`∩[A072378(n+1), A081306(n+1)]`
-/

namespace A258023.P8532346614880371396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P8532346614880371396

/-! ## A258023.P7266374691768238931

`∩[A081306(n+1), A097752(n+1)]`
-/

namespace A258023.P7266374691768238931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P7266374691768238931

/-! ## A258023.P11636840251232707013

`∩[A081306(n+1), A257997(n+1)]`
-/

namespace A258023.P11636840251232707013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P11636840251232707013

/-! ## A258023.P3705244117267619836

`filter[A257997(n+1), A137794(#)]`
-/

namespace A258023.P3705244117267619836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A258023.P3705244117267619836

/-! ## A258023.P13012999682922694300

`∩[A253784(n+1), A257997(n+1)]`
-/

namespace A258023.P13012999682922694300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P13012999682922694300

/-! ## A258023.P5505306379576904564

`∩[A230780(n+1), A342950(n+1)]`
-/

namespace A258023.P5505306379576904564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258023.P5505306379576904564

/-! ## A258023.P967827081960583400

`eq[1, A069897(3*(n+1))]+1`
-/

namespace A258023.P967827081960583400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258023.P967827081960583400

/-! ## A258023.P3845190238602157511

`record[A242603(A342950(n+1))]`
-/

namespace A258023.P3845190238602157511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A342950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258023.P3845190238602157511

/-!
# A258024: Natural numbers n such that the iteration of the function floor(tan(k)) applied to n eventually reaches [the fixed point] 1 (or any larger integer if such fixed points exist), where k is interpreted as k radians.

The programs for A258024, there is no canonical definition to state claims against.
-/

/-! ## A258024.P3065412081806961513

`A258200(n)+a(n-1)` with `a(0)=1`
-/

namespace A258024.P3065412081806961513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258200 n + a (n - 1)

end

end A258024.P3065412081806961513

/-! ## A258024.P7541687381638203056

`∪[A258202(n+1), A258203(n+1)]`
-/

namespace A258024.P7541687381638203056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258024.P7541687381638203056

/-! ## A258024.P2419358082074247782

`∑[A258200(n+1)]+1-A258200(n+1)`
-/

namespace A258024.P2419358082074247782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A258200 (n + 1))

end

end A258024.P2419358082074247782

/-! ## A258024.P15917861619031281277

`∑[A258200(n+1)]-A004830(A258200(n+1))`
-/

namespace A258024.P15917861619031281277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004830 (A258200 (n + 1)).toNat

end

end A258024.P15917861619031281277

/-! ## A258024.P8710911501212260623

`lt[0, A258021(n)]`
-/

namespace A258024.P8710911501212260623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258024.P8710911501212260623

/-! ## A258024.P17545159087926177199

`record[(n+1)*A258021(n+1)]`
-/

namespace A258024.P17545159087926177199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258024.P17545159087926177199

/-! ## A258024.P15168020957361660158

`eq[A054977(n), A258021(n)]`
-/

namespace A258024.P15168020957361660158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P15168020957361660158

/-! ## A258024.P6191118475992703458

`eq[A158388(n), A258021(n)]`
-/

namespace A258024.P6191118475992703458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P6191118475992703458

/-! ## A258024.P6404976890959674

`eq[A258021(n), A329684(n)]`
-/

namespace A258024.P6404976890959674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P6404976890959674

/-! ## A258024.P177922516894351222

`filter[A026316(n+1), A258021(#)]`
-/

namespace A258024.P177922516894351222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A258021 (f1 j).toNat = 1) n)

end

end A258024.P177922516894351222

/-! ## A258024.P12645901413422442470

`eq[A078315(n+1), A258021(n)]`
-/

namespace A258024.P12645901413422442470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P12645901413422442470

/-! ## A258024.P17722439477266417466

`eq[A205375(n+1), A258021(n)]`
-/

namespace A258024.P17722439477266417466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P17722439477266417466

/-! ## A258024.P9082867234394336248

`eq[A258021(n), A283149(n+1)]`
-/

namespace A258024.P9082867234394336248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P9082867234394336248

/-! ## A258024.P12200331556396933774

`eq[A258021(n), A376663(n+1)]`
-/

namespace A258024.P12200331556396933774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258024.P12200331556396933774

/-! ## A258024.P10440833869203867436

`eq[1, A258021(n*A258021(n))]`
-/

namespace A258024.P10440833869203867436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 ((n : ℤ) * A258021 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258024.P10440833869203867436

/-!
# A258025: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) > 0.

The programs for A258025, the canonical program `A258025.P5324371803043111026` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258025 has offset 1).

The definition of A258025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258025.P12590483376275657855

`lt[n, Δ[A050216(n)]]`
-/

namespace A258025.P12590483376275657855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258025.P12590483376275657855

namespace A258025

/-- `lt[n, Δ[A050216(n)]]` -/
def P12590483376275657855.Spec : Prop :=
  ∀ n, (P12590483376275657855.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P12250299504835866284

`A233671(n+1)-1`
-/

namespace A258025.P12250299504835866284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1

end

end A258025.P12250299504835866284

namespace A258025

/-- `A233671(n+1)-1` -/
def P12250299504835866284.Spec : Prop :=
  ∀ n, P12250299504835866284.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P5776349224160351900

`A358529(n+1)-2`
-/

namespace A258025.P5776349224160351900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358529 (n + 1) - 2

end

end A258025.P5776349224160351900

namespace A258025

/-- `A358529(n+1)-2` -/
def P5776349224160351900.Spec : Prop :=
  ∀ n, P5776349224160351900.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P1024776469116059045

`lt[A056221(n+1), 0]+1`
-/

namespace A258025.P1024776469116059045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258025.P1024776469116059045

namespace A258025

/-- `lt[A056221(n+1), 0]+1` -/
def P1024776469116059045.Spec : Prop :=
  ∀ n, (P1024776469116059045.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P13636679566314494925

`eq[1, A228098(n+1)]+1`
-/

namespace A258025.P13636679566314494925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258025.P13636679566314494925

namespace A258025

/-- `eq[1, A228098(n+1)]+1` -/
def P13636679566314494925.Spec : Prop :=
  ∀ n, (P13636679566314494925.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P14982573529593688595

`lt[A073272(n+1), 1]+1`
-/

namespace A258025.P14982573529593688595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258025.P14982573529593688595

namespace A258025

/-- `lt[A073272(n+1), 1]+1` -/
def P14982573529593688595.Spec : Prop :=
  ∀ n, (P14982573529593688595.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P16885361072406162837

`lt[A073274(n+1), 1]+1`
-/

namespace A258025.P16885361072406162837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258025.P16885361072406162837

namespace A258025

/-- `lt[A073274(n+1), 1]+1` -/
def P16885361072406162837.Spec : Prop :=
  ∀ n, (P16885361072406162837.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P9320839848115649908

`eq[1, A108415(n+2)]+1`
-/

namespace A258025.P9320839848115649908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258025.P9320839848115649908

namespace A258025

/-- `eq[1, A108415(n+2)]+1` -/
def P9320839848115649908.Spec : Prop :=
  ∀ n, (P9320839848115649908.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P12006642321322384995

`lt[n, A320146(n+2)]+1`
-/

namespace A258025.P12006642321322384995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258025.P12006642321322384995

namespace A258025

/-- `lt[n, A320146(n+2)]+1` -/
def P12006642321322384995.Spec : Prop :=
  ∀ n, (P12006642321322384995.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P5324371803043111026

`lt[1, Δ[A054541(n+1)²]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258025

/-- `lt[1, Δ[A054541(n+1)²]]` -/
def P5324371803043111026.Spec : Prop :=
  ∀ n, (P5324371803043111026.a n : ℤ) = A258025 (n + 1)

theorem P5324371803043111026.correct : P5324371803043111026.Spec := by
  intro n
  simp only [A258025, Nat.add_sub_cancel]

end A258025

/-! ## A258025.P8027856522808422563

`lt[1, Δ[A125266(n+1)²]]`
-/

namespace A258025.P8027856522808422563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258025.P8027856522808422563

namespace A258025

/-- `lt[1, Δ[A125266(n+1)²]]` -/
def P8027856522808422563.Spec : Prop :=
  ∀ n, (P8027856522808422563.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P3997637981603098960

`lt[1, Δ[A230847(n+1)²]]`
-/

namespace A258025.P3997637981603098960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258025.P3997637981603098960

namespace A258025

/-- `lt[1, Δ[A230847(n+1)²]]` -/
def P3997637981603098960.Spec : Prop :=
  ∀ n, (P3997637981603098960.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P13745059162712645430

`eq[1, Δ[A092243(n+1)]]+1`
-/

namespace A258025.P13745059162712645430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258025.P13745059162712645430

namespace A258025

/-- `eq[1, Δ[A092243(n+1)]]+1` -/
def P13745059162712645430.Spec : Prop :=
  ∀ n, (P13745059162712645430.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P10994692237999379589

`lt[1, Δ[A218075(n+1)]]+1`
-/

namespace A258025.P10994692237999379589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258025.P10994692237999379589

namespace A258025

/-- `lt[1, Δ[A218075(n+1)]]+1` -/
def P10994692237999379589.Spec : Prop :=
  ∀ n, (P10994692237999379589.a n : ℤ) = A258025 (n + 1)

end A258025

/-! ## A258025.P13428934017603790040

`record[1-n*A079054(n+2)]`
-/

namespace A258025.P13428934017603790040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258025.P13428934017603790040

namespace A258025

/-- `record[1-n*A079054(n+2)]` -/
def P13428934017603790040.Spec : Prop :=
  ∀ n, P13428934017603790040.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P4857516984381615717

`A000720(A063535(n))`
-/

namespace A258025.P4857516984381615717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063535 n).toNat

end

end A258025.P4857516984381615717

namespace A258025

/-- `A000720(A063535(n))` -/
def P4857516984381615717.Spec : Prop :=
  ∀ n, P4857516984381615717.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P3920617513445911545

`A023443(A233671(n+1))`
-/

namespace A258025.P3920617513445911545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A233671 (n + 1)).toNat

end

end A258025.P3920617513445911545

namespace A258025

/-- `A023443(A233671(n+1))` -/
def P3920617513445911545.Spec : Prop :=
  ∀ n, P3920617513445911545.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P2647465120898937228

`A023444(A358529(n+1))`
-/

namespace A258025.P2647465120898937228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A358529 (n + 1)).toNat

end

end A258025.P2647465120898937228

namespace A258025

/-- `A023444(A358529(n+1))` -/
def P2647465120898937228.Spec : Prop :=
  ∀ n, P2647465120898937228.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P7114066390713884164

`A000720(A051635(n+1)-1)`
-/

namespace A258025.P7114066390713884164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051635 (n + 1) - 1).toNat

end

end A258025.P7114066390713884164

namespace A258025

/-- `A000720(A051635(n+1)-1)` -/
def P7114066390713884164.Spec : Prop :=
  ∀ n, P7114066390713884164.a n = A258025 (n + 1)

end A258025

/-! ## A258025.P15014153424465799662

`A000720(A068828(n+2)-1)`
-/

namespace A258025.P15014153424465799662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068828 (n + 2) - 1).toNat

end

end A258025.P15014153424465799662

namespace A258025

/-- `A000720(A068828(n+2)-1)` -/
def P15014153424465799662.Spec : Prop :=
  ∀ n, P15014153424465799662.a n = A258025 (n + 1)

end A258025

/-!
# A258026: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) < 0.

The programs for A258026, the canonical program `A258026.P15713230575811532906` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258026 has offset 1).

The definition of A258026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258026.P1138838536660844873

`∑[A333215(n+1)]`
-/

namespace A258026.P1138838536660844873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258026.P1138838536660844873

namespace A258026

/-- `∑[A333215(n+1)]` -/
def P1138838536660844873.Spec : Prop :=
  ∀ n, P1138838536660844873.a n = A258026 (n + 1)

end A258026

/-! ## A258026.P2378087275166988263

`A358531(n+1)-2`
-/

namespace A258026.P2378087275166988263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358531 (n + 1) - 2

end

end A258026.P2378087275166988263

namespace A258026

/-- `A358531(n+1)-2` -/
def P2378087275166988263.Spec : Prop :=
  ∀ n, P2378087275166988263.a n = A258026 (n + 1)

theorem P2378087275166988263.correct : P2378087275166988263.Spec := by
  intro n
  simp only [A258026, Nat.add_sub_cancel, A258026.P2378087275166988263.a, A258026.P15713230575811532906.f1, A258026.P15713230575811532906.f2, A258026.P15713230575811532906.a, A079054, A079054.P1655160976094069587.a, A358531, A358531.P7250430587380128327.a, A073274, A073274.P9123969946531876833.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A073273, A073273.P7261420191492107144.a, A028310, A028310.P18130301328277559831.a, A089038, A089038.P1158643592573954498.a, A098090, A098090.P13715726592348268082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258026

/-! ## A258026.P15713230575811532906

`lt[0, A079054(n+2)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A258026

/-- `lt[0, A079054(n+2)]+1` -/
def P15713230575811532906.Spec : Prop :=
  ∀ n, (P15713230575811532906.a n : ℤ) = A258026 (n + 1)

theorem P15713230575811532906.correct : P15713230575811532906.Spec := by
  intro n
  simp only [A258026, Nat.add_sub_cancel]

end A258026

/-! ## A258026.P51834082572278151

`filter[A333231(n+1), A131695(#)]`
-/

namespace A258026.P51834082572278151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A258026.P51834082572278151

namespace A258026

/-- `filter[A333231(n+1), A131695(#)]` -/
def P51834082572278151.Spec : Prop :=
  ∀ n, P51834082572278151.a n = A258026 (n + 1)

end A258026

/-! ## A258026.P18266683069751770808

`∩[A333214(n+1), A333231(n+1)]`
-/

namespace A258026.P18266683069751770808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258026.P18266683069751770808

namespace A258026

/-- `∩[A333214(n+1), A333231(n+1)]` -/
def P18266683069751770808.Spec : Prop :=
  ∀ n, (P18266683069751770808.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P7902349374637638017

`lt[Δ[A048852(n)], 0]`
-/

namespace A258026.P7902349374637638017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A258026.P7902349374637638017

namespace A258026

/-- `lt[Δ[A048852(n)], 0]` -/
def P7902349374637638017.Spec : Prop :=
  ∀ n, (P7902349374637638017.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P1248431370028529304

`lt[1, A073272(n+1)]+1`
-/

namespace A258026.P1248431370028529304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P1248431370028529304

namespace A258026

/-- `lt[1, A073272(n+1)]+1` -/
def P1248431370028529304.Spec : Prop :=
  ∀ n, (P1248431370028529304.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P1682909780036417142

`lt[1, A073274(n+1)]+1`
-/

namespace A258026.P1682909780036417142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P1682909780036417142

namespace A258026

/-- `lt[1, A073274(n+1)]+1` -/
def P1682909780036417142.Spec : Prop :=
  ∀ n, (P1682909780036417142.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P5172562341658004941

`lt[A137174(n+1)+1, 1]`
-/

namespace A258026.P5172562341658004941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258026.P5172562341658004941

namespace A258026

/-- `lt[A137174(n+1)+1, 1]` -/
def P5172562341658004941.Spec : Prop :=
  ∀ n, (P5172562341658004941.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P16632186567457406785

`lt[2, A108415(n+2)]+1`
-/

namespace A258026.P16632186567457406785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P16632186567457406785

namespace A258026

/-- `lt[2, A108415(n+2)]+1` -/
def P16632186567457406785.Spec : Prop :=
  ∀ n, (P16632186567457406785.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P8991019187073561981

`lt[Δ[A076368(n+1)]+1, 1]`
-/

namespace A258026.P8991019187073561981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A258026.P8991019187073561981

namespace A258026

/-- `lt[Δ[A076368(n+1)]+1, 1]` -/
def P8991019187073561981.Spec : Prop :=
  ∀ n, (P8991019187073561981.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P15703700554180142584

`lt[Δ[A054541(n+1)]+2, 1]`
-/

namespace A258026.P15703700554180142584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A258026.P15703700554180142584

namespace A258026

/-- `lt[Δ[A054541(n+1)]+2, 1]` -/
def P15703700554180142584.Spec : Prop :=
  ∀ n, (P15703700554180142584.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P12550887660364970507

`lt[Δ[A230847(n+1)]+2, 1]`
-/

namespace A258026.P12550887660364970507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A258026.P12550887660364970507

namespace A258026

/-- `lt[Δ[A230847(n+1)]+2, 1]` -/
def P12550887660364970507.Spec : Prop :=
  ∀ n, (P12550887660364970507.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P18417766686897218195

`lt[Δ[n*A125266(n+1)], 1]`
-/

namespace A258026.P18417766686897218195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A258026.P18417766686897218195

namespace A258026

/-- `lt[Δ[n*A125266(n+1)], 1]` -/
def P18417766686897218195.Spec : Prop :=
  ∀ n, (P18417766686897218195.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P9718036483225432819

`A023444(A358531(n+1))`
-/

namespace A258026.P9718036483225432819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A358531 (n + 1)).toNat

end

end A258026.P9718036483225432819

namespace A258026

/-- `A023444(A358531(n+1))` -/
def P9718036483225432819.Spec : Prop :=
  ∀ n, P9718036483225432819.a n = A258026 (n + 1)

end A258026

/-! ## A258026.P14896468479590938087

`lt[A036263(A028310(n))+1, 1]`
-/

namespace A258026.P14896468479590938087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258026.P14896468479590938087

namespace A258026

/-- `lt[A036263(A028310(n))+1, 1]` -/
def P14896468479590938087.Spec : Prop :=
  ∀ n, (P14896468479590938087.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P12836190476568929447

`lt[A048852(n+1), A048852(n)]`
-/

namespace A258026.P12836190476568929447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258026.P12836190476568929447

namespace A258026

/-- `lt[A048852(n+1), A048852(n)]` -/
def P12836190476568929447.Spec : Prop :=
  ∀ n, (P12836190476568929447.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P15911587794493532600

`lt[A075526(n+1), A075526(n)]`
-/

namespace A258026.P15911587794493532600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258026.P15911587794493532600

namespace A258026

/-- `lt[A075526(n+1), A075526(n)]` -/
def P15911587794493532600.Spec : Prop :=
  ∀ n, (P15911587794493532600.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P12868069121949970003

`lt[A227127(n+1), A227127(n)]`
-/

namespace A258026.P12868069121949970003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258026.P12868069121949970003

namespace A258026

/-- `lt[A227127(n+1), A227127(n)]` -/
def P12868069121949970003.Spec : Prop :=
  ∀ n, (P12868069121949970003.a n : ℤ) = A258026 (n + 1)

end A258026

/-! ## A258026.P7348996377679962271

`eq[A045319(n+1), A051701(n+1)]`
-/

namespace A258026.P7348996377679962271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258026.P7348996377679962271

namespace A258026

/-- `eq[A045319(n+1), A051701(n+1)]` -/
def P7348996377679962271.Spec : Prop :=
  ∀ n, (P7348996377679962271.a n : ℤ) = A258026 (n + 1)

end A258026

/-!
# A258027: Numbers k such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

The programs for A258027, the canonical program `A258027.P8926715394870140338` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258027 has offset 1).

The definition of A258027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258027.P13101845443330704425

`A000720(A258030(n+1))`
-/

namespace A258027.P13101845443330704425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258030 (n + 1)).toNat

end

end A258027.P13101845443330704425

namespace A258027

/-- `A000720(A258030(n+1))` -/
def P13101845443330704425.Spec : Prop :=
  ∀ n, P13101845443330704425.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P194520808082805668

`A061395(2*A258030(n+1))`
-/

namespace A258027.P194520808082805668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A258030 (n + 1)).toNat

end

end A258027.P194520808082805668

namespace A258027

/-- `A061395(2*A258030(n+1))` -/
def P194520808082805668.Spec : Prop :=
  ∀ n, P194520808082805668.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P7571647742376652575

`A061395(lcm(2, A258030(n+1)))`
-/

namespace A258027.P7571647742376652575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A258030 (n + 1)))

end

end A258027.P7571647742376652575

namespace A258027

/-- `A061395(lcm(2, A258030(n+1)))` -/
def P7571647742376652575.Spec : Prop :=
  ∀ n, P7571647742376652575.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P14688231452901456930

`A061395(or(1, A258030(n+1)))`
-/

namespace A258027.P14688231452901456930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A258030 (n + 1))).toNat

end

end A258027.P14688231452901456930

namespace A258027

/-- `A061395(or(1, A258030(n+1)))` -/
def P14688231452901456930.Spec : Prop :=
  ∀ n, P14688231452901456930.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P14957784289023048486

`A061395(∑{p}[A258030(n+1), #])`
-/

namespace A258027.P14957784289023048486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258027.P14957784289023048486

namespace A258027

/-- `A061395(∑{p}[A258030(n+1), #])` -/
def P14957784289023048486.Spec : Prop :=
  ∀ n, P14957784289023048486.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P8926715394870140338

`lt[1, Δ[A008578(n+1)-A118534(n+1)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258027

/-- `lt[1, Δ[A008578(n+1)-A118534(n+1)]]` -/
def P8926715394870140338.Spec : Prop :=
  ∀ n, (P8926715394870140338.a n : ℤ) = A258027 (n + 1)

theorem P8926715394870140338.correct : P8926715394870140338.Spec := by
  intro n
  simp only [A258027, Nat.add_sub_cancel]

end A258027

/-! ## A258027.P16637698751692541171

`A061395(A258030(n+1))%A006222(n)`
-/

namespace A258027.P16637698751692541171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A258030 (n + 1)).toNat) (A006222 n)

end

end A258027.P16637698751692541171

namespace A258027

/-- `A061395(A258030(n+1))%A006222(n)` -/
def P16637698751692541171.Spec : Prop :=
  ∀ n, P16637698751692541171.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P2005969263335845848

`A061395(A258030(n+1)%A166941(n))`
-/

namespace A258027.P2005969263335845848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A258030 (n + 1)) (A166941 n)).toNat

end

end A258027.P2005969263335845848

namespace A258027

/-- `A061395(A258030(n+1)%A166941(n))` -/
def P2005969263335845848.Spec : Prop :=
  ∀ n, P2005969263335845848.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P2784952676215415183

`lt[A036263(A028310(n)), A036263(n+1)]`
-/

namespace A258027.P2784952676215415183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258027.P2784952676215415183

namespace A258027

/-- `lt[A036263(A028310(n)), A036263(n+1)]` -/
def P2784952676215415183.Spec : Prop :=
  ∀ n, (P2784952676215415183.a n : ℤ) = A258027 (n + 1)

end A258027

/-! ## A258027.P10976294133835797374

`A156061(or(1, A258030(n+1)))`
-/

namespace A258027.P10976294133835797374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (Int.lor 1 (A258030 (n + 1))).toNat

end

end A258027.P10976294133835797374

namespace A258027

/-- `A156061(or(1, A258030(n+1)))` -/
def P10976294133835797374.Spec : Prop :=
  ∀ n, P10976294133835797374.a n = A258027 (n + 1)

end A258027

/-! ## A258027.P7837982518317798029

`A156061(2*A258030(n+1))`
-/

namespace A258027.P7837982518317798029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A258030 (n + 1)).toNat

end

end A258027.P7837982518317798029

namespace A258027

/-- `A156061(2*A258030(n+1))` -/
def P7837982518317798029.Spec : Prop :=
  ∀ n, P7837982518317798029.a n = A258027 (n + 1)

end A258027

/-!
# A258028: Numbers k such that D(prime(k), 3) > 0, where D( * , 3) = 3rd difference.

The programs for A258028, the canonical program `A258028.P5148954063235550607` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258028 has offset 1).

The definition of A258028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258028.P17330808770280985063

`A000720(A258031(n+1))`
-/

namespace A258028.P17330808770280985063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258031 (n + 1)).toNat

end

end A258028.P17330808770280985063

namespace A258028

/-- `A000720(A258031(n+1))` -/
def P17330808770280985063.Spec : Prop :=
  ∀ n, P17330808770280985063.a n = A258028 (n + 1)

end A258028

/-! ## A258028.P5148954063235550607

`lt[A036263(n+2), A036263(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258028

/-- `lt[A036263(n+2), A036263(n+1)]+1` -/
def P5148954063235550607.Spec : Prop :=
  ∀ n, (P5148954063235550607.a n : ℤ) = A258028 (n + 1)

theorem P5148954063235550607.correct : P5148954063235550607.Spec := by
  intro n
  simp only [A258028, Nat.add_sub_cancel]

end A258028

/-! ## A258028.P905432716412041441

`lt[A036263(n+1), A036263(A028310(n))]`
-/

namespace A258028.P905432716412041441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258028.P905432716412041441

namespace A258028

/-- `lt[A036263(n+1), A036263(A028310(n))]` -/
def P905432716412041441.Spec : Prop :=
  ∀ n, (P905432716412041441.a n : ℤ) = A258028 (n + 1)

end A258028

/-! ## A258028.P8963888451340964065

`lt[A036263(n+1), A036263(A000007(n)+n)]`
-/

namespace A258028.P8963888451340964065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258028.P8963888451340964065

namespace A258028

/-- `lt[A036263(n+1), A036263(A000007(n)+n)]` -/
def P8963888451340964065.Spec : Prop :=
  ∀ n, (P8963888451340964065.a n : ℤ) = A258028 (n + 1)

end A258028

/-! ## A258028.P537643680442506462

`A003963(A258034(3*n+2)+A258031(n+1))`
-/

namespace A258028.P537643680442506462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A258034 (3 * n + 2) + A258031 (n + 1)).toNat

end

end A258028.P537643680442506462

namespace A258028

/-- `A003963(A258034(3*n+2)+A258031(n+1))` -/
def P537643680442506462.Spec : Prop :=
  ∀ n, P537643680442506462.a n = A258028 (n + 1)

end A258028

/-!
# A258029: Numbers prime(k) such that D(prime(k), 3) = 0, where D( * , 3) = 3rd difference.

The programs for A258029, the canonical program `A258029.P1433885203408479246` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258029 has offset 1).

The definition of A258029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258029.P1433885203408479246

`A139313(n+1)-A001223(A064149(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258029

/-- `A139313(n+1)-A001223(A064149(n+1))` -/
def P1433885203408479246.Spec : Prop :=
  ∀ n, P1433885203408479246.a n = A258029 (n + 1)

theorem P1433885203408479246.correct : P1433885203408479246.Spec := by
  intro n
  simp only [A258029, Nat.add_sub_cancel]

end A258029

/-! ## A258029.P1547328011326323508

`A000040(A064149(n+1))`
-/

namespace A258029.P1547328011326323508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064149 (n + 1)).toNat

end

end A258029.P1547328011326323508

namespace A258029

/-- `A000040(A064149(n+1))` -/
def P1547328011326323508.Spec : Prop :=
  ∀ n, P1547328011326323508.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P22848153603960033

`A008578(A064149(n+1)+1)`
-/

namespace A258029.P22848153603960033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064149 (n + 1) + 1).toNat

end

end A258029.P22848153603960033

namespace A258029

/-- `A008578(A064149(n+1)+1)` -/
def P22848153603960033.Spec : Prop :=
  ∀ n, P22848153603960033.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P86516266280968058

`A045319(A064149(n+1)-1)`
-/

namespace A258029.P86516266280968058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A064149 (n + 1) - 1).toNat

end

end A258029.P86516266280968058

namespace A258029

/-- `A045319(A064149(n+1)-1)` -/
def P86516266280968058.Spec : Prop :=
  ∀ n, P86516266280968058.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P1302121447788031822

`A065091(A064149(n+1)-1)`
-/

namespace A258029.P1302121447788031822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064149 (n + 1) - 1).toNat

end

end A258029.P1302121447788031822

namespace A258029

/-- `A065091(A064149(n+1)-1)` -/
def P1302121447788031822.Spec : Prop :=
  ∀ n, P1302121447788031822.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P15702250251390401003

`A004139(A064149(n+1)-2)`
-/

namespace A258029.P15702250251390401003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A064149 (n + 1) - 2).toNat

end

end A258029.P15702250251390401003

namespace A258029

/-- `A004139(A064149(n+1)-2)` -/
def P15702250251390401003.Spec : Prop :=
  ∀ n, P15702250251390401003.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P2110383150961615482

`A000040(eq[A036263(n+2), A036263(n+1)]+1)`
-/

namespace A258029.P2110383150961615482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A258029.P2110383150961615482

namespace A258029

/-- `A000040(eq[A036263(n+2), A036263(n+1)]+1)` -/
def P2110383150961615482.Spec : Prop :=
  ∀ n, P2110383150961615482.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P7468067729264875665

`p?[(A036264(n+1)+1)*A000040(n+1)]`
-/

namespace A258029.P7468067729264875665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036264 (n + 1) + 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258029.P7468067729264875665

namespace A258029

/-- `p?[(A036264(n+1)+1)*A000040(n+1)]` -/
def P7468067729264875665.Spec : Prop :=
  ∀ n, P7468067729264875665.a n = A258029 (n + 1)

end A258029

/-! ## A258029.P12263264523624115673

`A064989(A139313(n+1))`
-/

namespace A258029.P12263264523624115673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A139313 (n + 1)).toNat

end

end A258029.P12263264523624115673

namespace A258029

/-- `A064989(A139313(n+1))` -/
def P12263264523624115673.Spec : Prop :=
  ∀ n, P12263264523624115673.a n = A258029 (n + 1)

end A258029

/-!
# A258030: Numbers prime(k) such that D(prime(k), 3) > 0, where D( * , 3) = 3rd difference.

The programs for A258030, the canonical program `A258030.P11599333897736329211` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258030 has offset 1).

The definition of A258030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258030.P11599333897736329211

`A000040(A258027(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258030

/-- `A000040(A258027(n+1))` -/
def P11599333897736329211.Spec : Prop :=
  ∀ n, P11599333897736329211.a n = A258030 (n + 1)

theorem P11599333897736329211.correct : P11599333897736329211.Spec := by
  intro n
  simp only [A258030, Nat.add_sub_cancel]

end A258030

/-! ## A258030.P6848921875226383811

`A008578(A258027(n+1)+1)`
-/

namespace A258030.P6848921875226383811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258027 (n + 1) + 1).toNat

end

end A258030.P6848921875226383811

namespace A258030

/-- `A008578(A258027(n+1)+1)` -/
def P6848921875226383811.Spec : Prop :=
  ∀ n, P6848921875226383811.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P8476126240394396858

`A065091(A258027(n+1)-1)`
-/

namespace A258030.P8476126240394396858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A258027 (n + 1) - 1).toNat

end

end A258030.P8476126240394396858

namespace A258030

/-- `A065091(A258027(n+1)-1)` -/
def P8476126240394396858.Spec : Prop :=
  ∀ n, P8476126240394396858.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P15167985879736305013

`A051953(A045344(n+1))+A006093(A258027(n+1))`
-/

namespace A258030.P15167985879736305013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A045344 (n + 1)).toNat + A006093 (A258027 (n + 1)).toNat

end

end A258030.P15167985879736305013

namespace A258030

/-- `A051953(A045344(n+1))+A006093(A258027(n+1))` -/
def P15167985879736305013.Spec : Prop :=
  ∀ n, P15167985879736305013.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P16569316889126236672

`A051953(A006530(n+2))+A006093(A258027(n+1))`
-/

namespace A258030.P16569316889126236672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A006530 (n + 2)).toNat + A006093 (A258027 (n + 1)).toNat

end

end A258030.P16569316889126236672

namespace A258030

/-- `A051953(A006530(n+2))+A006093(A258027(n+1))` -/
def P16569316889126236672.Spec : Prop :=
  ∀ n, P16569316889126236672.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P15850253173322158211

`A051953(A020639(n+2))+A006093(A258027(n+1))`
-/

namespace A258030.P15850253173322158211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A020639 (n + 2)).toNat + A006093 (A258027 (n + 1)).toNat

end

end A258030.P15850253173322158211

namespace A258030

/-- `A051953(A020639(n+2))+A006093(A258027(n+1))` -/
def P15850253173322158211.Spec : Prop :=
  ∀ n, P15850253173322158211.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P14983164087178949781

`A173557(A068068(n+2))+A006093(A258027(n+1))`
-/

namespace A258030.P14983164087178949781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A068068 (n + 2)).toNat + A006093 (A258027 (n + 1)).toNat

end

end A258030.P14983164087178949781

namespace A258030

/-- `A173557(A068068(n+2))+A006093(A258027(n+1))` -/
def P14983164087178949781.Spec : Prop :=
  ∀ n, P14983164087178949781.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P1068167788226330805

`A006093(A258027(n+1))+A000041(n-A113638(n))`
-/

namespace A258030.P1068167788226330805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A258027 (n + 1)).toNat + A000041 ((n : ℤ) - A113638 n).toNat

end

end A258030.P1068167788226330805

namespace A258030

/-- `A006093(A258027(n+1))+A000041(n-A113638(n))` -/
def P1068167788226330805.Spec : Prop :=
  ∀ n, P1068167788226330805.a n = A258030 (n + 1)

end A258030

/-! ## A258030.P3915219973739974910

`A292795(A000217(n))+A006093(A258027(n+1))`
-/

namespace A258030.P3915219973739974910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A000217 n).toNat + A006093 (A258027 (n + 1)).toNat

end

end A258030.P3915219973739974910

namespace A258030

/-- `A292795(A000217(n))+A006093(A258027(n+1))` -/
def P3915219973739974910.Spec : Prop :=
  ∀ n, P3915219973739974910.a n = A258030 (n + 1)

end A258030

/-!
# A258031: Numbers prime(k) such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

The programs for A258031, the canonical program `A258031.P14878230134695789763` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258031 has offset 1).

The definition of A258031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258031.P14878230134695789763

`A000040(A258028(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258031

/-- `A000040(A258028(n+1))` -/
def P14878230134695789763.Spec : Prop :=
  ∀ n, P14878230134695789763.a n = A258031 (n + 1)

theorem P14878230134695789763.correct : P14878230134695789763.Spec := by
  intro n
  simp only [A258031, Nat.add_sub_cancel]

end A258031

/-! ## A258031.P13289579708548812714

`A158611(A258028(n+1)+2)`
-/

namespace A258031.P13289579708548812714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A258028 (n + 1) + 2).toNat

end

end A258031.P13289579708548812714

namespace A258031

/-- `A158611(A258028(n+1)+2)` -/
def P13289579708548812714.Spec : Prop :=
  ∀ n, P13289579708548812714.a n = A258031 (n + 1)

end A258031

/-! ## A258031.P9531597647955864132

`A006530(A006093(A258028(n+1))+1)`
-/

namespace A258031.P9531597647955864132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (A258028 (n + 1)).toNat + 1).toNat

end

end A258031.P9531597647955864132

namespace A258031

/-- `A006530(A006093(A258028(n+1))+1)` -/
def P9531597647955864132.Spec : Prop :=
  ∀ n, P9531597647955864132.a n = A258031 (n + 1)

end A258031

/-! ## A258031.P11057578328966854194

`A125746(A006093(A258028(n+1))+1)`
-/

namespace A258031.P11057578328966854194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A006093 (A258028 (n + 1)).toNat + 1).toNat

end

end A258031.P11057578328966854194

namespace A258031

/-- `A125746(A006093(A258028(n+1))+1)` -/
def P11057578328966854194.Spec : Prop :=
  ∀ n, P11057578328966854194.a n = A258031 (n + 1)

end A258031

/-! ## A258031.P10563850253635979898

`A000007(n+1)+A006093(A258028(n+1))+1`
-/

namespace A258031.P10563850253635979898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A006093 (A258028 (n + 1)).toNat + 1)

end

end A258031.P10563850253635979898

namespace A258031

/-- `A000007(n+1)+A006093(A258028(n+1))+1` -/
def P10563850253635979898.Spec : Prop :=
  ∀ n, P10563850253635979898.a n = A258031 (n + 1)

theorem P10563850253635979898.correct : P10563850253635979898.Spec := by
  intro n
  simp only [A258031, Nat.add_sub_cancel, A258031.P10563850253635979898.a, A258031.P14878230134695789763.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A258028, A258028.P5148954063235550607.f1, A258028.P5148954063235550607.f2, A258028.P5148954063235550607.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258031

/-! ## A258031.P11553867872114615229

`(A006093(A258028(n+1))+1)*A328112(A151800(n))`
-/

namespace A258031.P11553867872114615229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (A258028 (n + 1)).toNat + 1) * A328112 (A151800 n).toNat

end

end A258031.P11553867872114615229

namespace A258031

/-- `(A006093(A258028(n+1))+1)*A328112(A151800(n))` -/
def P11553867872114615229.Spec : Prop :=
  ∀ n, P11553867872114615229.a n = A258031 (n + 1)

end A258031

/-!
# A258032: Primes p such that p^3 with the rightmost digit removed is also prime.

The programs for A258032, there is no canonical definition to state claims against.
-/

/-! ## A258032.P16080319187271179004

`record[A020639(root(A226531(n+1), 3))]`
-/

namespace A258032.P16080319187271179004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A226531 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258032.P16080319187271179004

/-! ## A258032.P13888042665106222335

`record[A014963(root(A226531(n+1), 3))]`
-/

namespace A258032.P13888042665106222335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A226531 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258032.P13888042665106222335

/-!
# A258033: Fractal sequence derived from A022328.

The programs for A258033, there is no canonical definition to state claims against.
-/

/-! ## A258033.P9858207961493454567

`A025436(C(6*n², A300362(n+4)))`
-/

namespace A258033.P9858207961493454567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (Nat.choose (6 * n ^ 2) (A300362 (n + 4)).toNat)

end

end A258033.P9858207961493454567

/-! ## A258033.P3891613877834513183

`A064532(A104573(n)+A018031(n))`
-/

namespace A258033.P3891613877834513183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A104573 n + A018031 n).toNat

end

end A258033.P3891613877834513183

/-!
# A258034: Expansion of phi(q) * phi(q^9) in powers of q where phi() is a Ramanujan theta function.

The programs for A258034, there is no canonical definition to state claims against.
-/

/-! ## A258034.P890290314121306314

`(-1)^n*A258322(n)`
-/

namespace A258034.P890290314121306314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258322 n

end

end A258034.P890290314121306314

/-! ## A258034.P8622983862853554927

`abs(A258322(n))`
-/

namespace A258034.P8622983862853554927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258322 n|

end

end A258034.P8622983862853554927

/-! ## A258034.P10804131685253088155

`A010892(n)*A256014(n)`
-/

namespace A258034.P10804131685253088155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A256014 n

end

end A258034.P10804131685253088155

/-! ## A258034.P4682173436034677550

`A010892(n)*A258279(n)`
-/

namespace A258034.P4682173436034677550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258279 n

end

end A258034.P4682173436034677550

/-! ## A258034.P4653946446517309859

`A049347(n)*A256280(n)`
-/

namespace A258034.P4653946446517309859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A256280 n

end

end A258034.P4653946446517309859

/-! ## A258034.P5544933924566036894

`A049347(n)*A258292(n)`
-/

namespace A258034.P5544933924566036894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258292 n

end

end A258034.P5544933924566036894

/-! ## A258034.P16623385570458686051

`A057079(n)*A256279(n)`
-/

namespace A258034.P16623385570458686051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256279 n

end

end A258034.P16623385570458686051

/-! ## A258034.P7384196941186487969

`A131713(n)*A256269(n)`
-/

namespace A258034.P7384196941186487969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A256269 n

end

end A258034.P7384196941186487969

/-! ## A258034.P9279365412665121914

`A132954(n)*A256279(n)`
-/

namespace A258034.P9279365412665121914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A256279 n

end

end A258034.P9279365412665121914

/-! ## A258034.P14361160409351826861

`gcd(A000038(n), A258322(n))`
-/

namespace A258034.P14361160409351826861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258322 n)

end

end A258034.P14361160409351826861

/-! ## A258034.P11023518688745659935

`lcm(A000034(n), A258322(n))`
-/

namespace A258034.P11023518688745659935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258322 n)

end

end A258034.P11023518688745659935

/-! ## A258034.P17587823668191726631

`lcm(A117441(n), A256280(n))`
-/

namespace A258034.P17587823668191726631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117441 n) (A256280 n)

end

end A258034.P17587823668191726631

/-! ## A258034.P10540315841679422371

`lcm(A122857(n), A256269(n))`
-/

namespace A258034.P10540315841679422371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122857 n) (A256269 n)

end

end A258034.P10540315841679422371

/-! ## A258034.P8557028855425685648

`lcm(A122434(n), A258279(n))`
-/

namespace A258034.P8557028855425685648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122434 n) (A258279 n)

end

end A258034.P8557028855425685648

/-! ## A258034.P12281617255706223034

`lcm(A132003(n), A256279(n))`
-/

namespace A258034.P12281617255706223034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132003 n) (A256279 n)

end

end A258034.P12281617255706223034

/-! ## A258034.P3724183046437621578

`lcm(A257076(n), A258292(n))`
-/

namespace A258034.P3724183046437621578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257076 n) (A258292 n)

end

end A258034.P3724183046437621578

/-! ## A258034.P1240813571375086108

`∑{d}[A258322(n), A000010(#)]`
-/

namespace A258034.P1240813571375086108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A258034.P1240813571375086108

/-! ## A258034.P685932661734877139

`A258322(n)*A309873(n+1)`
-/

namespace A258034.P685932661734877139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 n * A309873 (n + 1)

end

end A258034.P685932661734877139

/-! ## A258034.P10762402306734113606

`lcm(A091338(n+1), A259761(n))`
-/

namespace A258034.P10762402306734113606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091338 (n + 1)) (A259761 n)

end

end A258034.P10762402306734113606

/-! ## A258034.P2281848708976754743

`A028601(A064680(n))`
-/

namespace A258034.P2281848708976754743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028601 (A064680 n).toNat

end

end A258034.P2281848708976754743

/-!
# A258036: Numbers k such that D(prime(k), k-1) < 0, where D( * , k-1) = (k-1)-st difference.

The programs for A258036, there is no canonical definition to state claims against.
-/

/-! ## A258036.P7184181570952468742

`A358618(n)+a(n-1)` with `a(0)=4`
-/

namespace A258036.P7184181570952468742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A358618 n + a (n - 1)

end

end A258036.P7184181570952468742

/-! ## A258036.P12501996600308721765

`A000720(A258038(n+1))`
-/

namespace A258036.P12501996600308721765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258038 (n + 1)).toNat

end

end A258036.P12501996600308721765

/-! ## A258036.P5319095747206127383

`A061395(p?[A258038(n+1)])`
-/

namespace A258036.P5319095747206127383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258036.P5319095747206127383

/-! ## A258036.P4997255465352540253

`A061395(2*A258038(n+1))`
-/

namespace A258036.P4997255465352540253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A258038 (n + 1)).toNat

end

end A258036.P4997255465352540253

/-! ## A258036.P3870999486001014502

`A061395(or(1, A258038(n+1)))`
-/

namespace A258036.P3870999486001014502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A258038 (n + 1))).toNat

end

end A258036.P3870999486001014502

/-! ## A258036.P5328982838501187490

`∑{d}[A258038(n+1), A061395(#)]`
-/

namespace A258036.P5328982838501187490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A258036.P5328982838501187490

/-! ## A258036.P13635387529823728206

`A061395(∏{d}[A258038(n+1), #])`
-/

namespace A258036.P13635387529823728206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258036.P13635387529823728206

/-! ## A258036.P4289406991539529343

`A257989(p?[A258038(n+1)])`
-/

namespace A258036.P4289406991539529343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258036.P4289406991539529343

/-! ## A258036.P13202509454592467270

`lt[A007442(n+1), 0]+1`
-/

namespace A258036.P13202509454592467270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258036.P13202509454592467270

/-! ## A258036.P12080156131615538122

`lt[1, A030016(n+1)]`
-/

namespace A258036.P12080156131615538122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258036.P12080156131615538122

/-! ## A258036.P5723342471005833142

`lt[1, A030016(n)]-1`
-/

namespace A258036.P5723342471005833142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A258036.P5723342471005833142

/-!
# A258037: Numbers k such that D(prime(k), k-1) > 0, where D( * , k-1) = (k-1)-st difference.

The programs for A258037, there is no canonical definition to state claims against.
-/

/-! ## A258037.P7759041847091491843

`A000720(A258039(n+1))`
-/

namespace A258037.P7759041847091491843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258039 (n + 1)).toNat

end

end A258037.P7759041847091491843

/-! ## A258037.P10204304224958146868

`A058933(p?[A258039(n+1)])`
-/

namespace A258037.P10204304224958146868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258037.P10204304224958146868

/-! ## A258037.P1809162985068222767

`A061395(2*A258039(n+1))`
-/

namespace A258037.P1809162985068222767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A258039 (n + 1)).toNat

end

end A258037.P1809162985068222767

/-! ## A258037.P5259495222623117477

`A058933(∏{p}[A258039(n+1), #])`
-/

namespace A258037.P5259495222623117477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258037.P5259495222623117477

/-! ## A258037.P9317755813901832118

`A061395(A258039(n+1))%A016825(n)`
-/

namespace A258037.P9317755813901832118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A258039 (n + 1)).toNat) (A016825 n)

end

end A258037.P9317755813901832118

/-! ## A258037.P9676095510914058448

`A061395(or(A189673(n+1), A258039(n+1)))`
-/

namespace A258037.P9676095510914058448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A189673 (n + 1)) (A258039 (n + 1))).toNat

end

end A258037.P9676095510914058448

/-! ## A258037.P12218822500157089755

`A058933(2*A258039(n+1)-A258039(n+1))`
-/

namespace A258037.P12218822500157089755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A258039 (n + 1) - A258039 (n + 1)).toNat

end

end A258037.P12218822500157089755

/-! ## A258037.P4289743554449097135

`A049084(p?[A258039(n+1)])`
-/

namespace A258037.P4289743554449097135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258037.P4289743554449097135

/-! ## A258037.P17024041128734094690

`A055396(p?[A258039(n+1)])`
-/

namespace A258037.P17024041128734094690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258037.P17024041128734094690

/-! ## A258037.P13766557194179528693

`A056239(p?[A258039(n+1)])`
-/

namespace A258037.P13766557194179528693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258037.P13766557194179528693

/-! ## A258037.P10443169846284109846

`A036234(A258039(n+1)-1)`
-/

namespace A258037.P10443169846284109846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A258039 (n + 1) - 1).toNat

end

end A258037.P10443169846284109846

/-! ## A258037.P3997867230982211741

`∑{d}[A258039(n+1), A049084(#)]`
-/

namespace A258037.P3997867230982211741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A258037.P3997867230982211741

/-! ## A258037.P819659739754607346

`∑{d}[A258039(n+1), A056239(#)]`
-/

namespace A258037.P819659739754607346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A258037.P819659739754607346

/-! ## A258037.P15195685146625234700

`A230980(A258039(n+1)-1)+1`
-/

namespace A258037.P15195685146625234700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A258039 (n + 1) - 1).toNat + 1

end

end A258037.P15195685146625234700

/-! ## A258037.P12300511985405943755

`A230980(A258039(n+1)+A057427(n))`
-/

namespace A258037.P12300511985405943755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A258039 (n + 1) + A057427 n).toNat

end

end A258037.P12300511985405943755

/-! ## A258037.P9479357476844739553

`A230980(A258039(n+1))%A016885(n)`
-/

namespace A258037.P9479357476844739553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A258039 (n + 1)).toNat) (A016885 n)

end

end A258037.P9479357476844739553

/-! ## A258037.P7296892567701663231

`A230980(A258039(n+1)%A066885(n+2))`
-/

namespace A258037.P7296892567701663231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A258039 (n + 1)) (A066885 (n + 2))).toNat

end

end A258037.P7296892567701663231

/-! ## A258037.P4917336832344497745

`A055396(2*A258039(n+1)-A258039(n+1))`
-/

namespace A258037.P4917336832344497745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A258039 (n + 1) - A258039 (n + 1)).toNat

end

end A258037.P4917336832344497745

/-! ## A258037.P10163214310014814957

`record[(n+1)^(A007442(n+1)%2)]`
-/

namespace A258037.P10163214310014814957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A007442 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258037.P10163214310014814957

/-! ## A258037.P8546078586445237248

`lt[A030016(n+1), n]`
-/

namespace A258037.P8546078586445237248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258037.P8546078586445237248

/-!
# A258038: Numbers prime(k) such that D(prime(k), k-1) < 0, where D( * , k-1) = (k-1)-st difference.

The programs for A258038, there is no canonical definition to state claims against.
-/

/-! ## A258038.P13800438489450233501

`A000040(A258036(n+1))`
-/

namespace A258038.P13800438489450233501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258036 (n + 1)).toNat

end

end A258038.P13800438489450233501

/-! ## A258038.P6273166600128805598

`A008578(A258036(n+1)+1)`
-/

namespace A258038.P6273166600128805598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258036 (n + 1) + 1).toNat

end

end A258038.P6273166600128805598

/-! ## A258038.P8006516016121669261

`A045344(A258036(n+1)-1)`
-/

namespace A258038.P8006516016121669261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A258036 (n + 1) - 1).toNat

end

end A258038.P8006516016121669261

/-! ## A258038.P18339024869716015271

`A046022(A258036(n+1)+2)`
-/

namespace A258038.P18339024869716015271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A258036 (n + 1) + 2).toNat

end

end A258038.P18339024869716015271

/-! ## A258038.P1795988900424819316

`A065091(A258036(n+1)-1)`
-/

namespace A258038.P1795988900424819316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A258036 (n + 1) - 1).toNat

end

end A258038.P1795988900424819316

/-! ## A258038.P1306295784776789860

`A004139(A258036(n+1)-2)`
-/

namespace A258038.P1306295784776789860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A258036 (n + 1) - 2).toNat

end

end A258038.P1306295784776789860

/-! ## A258038.P6142593504185332168

`A008578(lt[1, A030016(n)])`
-/

namespace A258038.P6142593504185332168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A258038.P6142593504185332168

/-! ## A258038.P2209427303305828026

`A000040(lt[1, A030016(n+1)])`
-/

namespace A258038.P2209427303305828026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A258038.P2209427303305828026

/-! ## A258038.P8498251570278052994

`A000040(lt[1, A030016(n)]-1)`
-/

namespace A258038.P8498251570278052994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A258038.P8498251570278052994

/-!
# A258039: Numbers prime(k) such that D(prime(k), k-1) > 0, where D( * , k-1) = (k-1)-st difference.

The programs for A258039, there is no canonical definition to state claims against.
-/

/-! ## A258039.P16631296534063664229

`A000040(A258037(n+1))`
-/

namespace A258039.P16631296534063664229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258037 (n + 1)).toNat

end

end A258039.P16631296534063664229

/-! ## A258039.P9986118641896534084

`A008578(A258037(n+1)+1)`
-/

namespace A258039.P9986118641896534084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258037 (n + 1) + 1).toNat

end

end A258039.P9986118641896534084

/-! ## A258039.P14390455338403999459

`A158611(A258037(n+1)+2)`
-/

namespace A258039.P14390455338403999459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A258037 (n + 1) + 2).toNat

end

end A258039.P14390455338403999459

/-! ## A258039.P15016066180350345003

`A073846(2*A258037(n+1))`
-/

namespace A258039.P15016066180350345003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A258037 (n + 1)).toNat

end

end A258039.P15016066180350345003

/-! ## A258039.P14386833538003572564

`∑{d}[A258037(n+1), A007444(#)]`
-/

namespace A258039.P14386833538003572564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A258039.P14386833538003572564

/-! ## A258039.P15491334950198704285

`p?[comp[A258038(n+1)]]`
-/

namespace A258039.P15491334950198704285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A258039.P15491334950198704285

/-! ## A258039.P1459260571562239617

`p?[comp[A000040(A258036(n+1))]]`
-/

namespace A258039.P1459260571562239617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258036 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A258039.P1459260571562239617

/-! ## A258039.P6996775867307354640

`record[or(A007442(n+1)%2, A000040(n+1))]`
-/

namespace A258039.P6996775867307354640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A007442 (n + 1)) 2) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258039.P6996775867307354640

/-! ## A258039.P6943151509351744383

`A008578(lt[A030016(n), n])`
-/

namespace A258039.P6943151509351744383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A258039.P6943151509351744383

/-! ## A258039.P7496616949506782642

`A000040(lt[A030016(n+1), n])`
-/

namespace A258039.P7496616949506782642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A258039.P7496616949506782642

/-! ## A258039.P13694473681317868864

`A000040(lt[A030016(n), n]-1)`
-/

namespace A258039.P13694473681317868864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A258039.P13694473681317868864

/-!
# A258041: Number of 312-avoiding derangements of {1,2,...,n}.

The programs for A258041, there is no canonical definition to state claims against.
-/

/-! ## A258041.P9491441599500301164

`A008618(∑[A287021(n)+A217616(n)])`
-/

namespace A258041.P9491441599500301164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287021 n + A217616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258041.P9491441599500301164

/-!
# A258043: Smallest k such that prime(k)^n - 2 is prime.

The programs for A258043, there is no canonical definition to state claims against.
-/

/-! ## A258043.P16139263066856863116

`A000720(A356330(n+1))`
-/

namespace A258043.P16139263066856863116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A356330 (n + 1)).toNat

end

end A258043.P16139263066856863116

/-! ## A258043.P18050288202386790540

`A036234(A356330(n+1)-1)`
-/

namespace A258043.P18050288202386790540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A356330 (n + 1) - 1).toNat

end

end A258043.P18050288202386790540

/-! ## A258043.P7680986474364674606

`A061395(2*A356330(n+1))`
-/

namespace A258043.P7680986474364674606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A356330 (n + 1)).toNat

end

end A258043.P7680986474364674606

/-! ## A258043.P12825936190049433379

`A061395(lcm(2, A356330(n+1)))`
-/

namespace A258043.P12825936190049433379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A356330 (n + 1)))

end

end A258043.P12825936190049433379

/-! ## A258043.P6964181366251632563

`∑{d}[A356330(n+1), A061395(#)]`
-/

namespace A258043.P6964181366251632563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A258043.P6964181366251632563

/-! ## A258043.P15450331694280534031

`A243056(A356330(n+1))%A025336(n+1)`
-/

namespace A258043.P15450331694280534031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243056 (A356330 (n + 1)).toNat) (A025336 (n + 1))

end

end A258043.P15450331694280534031

/-! ## A258043.P12406663145790373641

`A243056(A356330(n+1)%A204370(n+1))`
-/

namespace A258043.P12406663145790373641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (Int.tmod (A356330 (n + 1)) (A204370 (n + 1))).toNat

end

end A258043.P12406663145790373641

/-! ## A258043.P17461538732905529461

`A056172(2*A356330(n+1))`
-/

namespace A258043.P17461538732905529461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A356330 (n + 1)).toNat

end

end A258043.P17461538732905529461

/-!
# A258045: Table T(b, m) of largest exponents k such that for p = prime(m) and base b > 1 the congruence b^(p-1) == 1 (mod p^k) is satisfied, or 0 if no such k exists, read by antidiagonals (downwards).

The programs for A258045, there is no canonical definition to state claims against.
-/

/-! ## A258045.P13599676179393974375

`A070936(A113513(n+1)+A086044(n))`
-/

namespace A258045.P13599676179393974375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A113513 (n + 1) + A086044 n).toNat

end

end A258045.P13599676179393974375

/-! ## A258045.P4404477259465430299

`abs(Δ[A272947(A311625(n))])`
-/

namespace A258045.P4404477259465430299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (A311625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258045.P4404477259465430299

/-! ## A258045.P2569315165513713796

`C(A303599(A167934(2*(n+2))), A303599(n+2))`
-/

namespace A258045.P2569315165513713796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303599 (A167934 (2 * (n + 2))).toNat).toNat (A303599 (n + 2)).toNat

end

end A258045.P2569315165513713796

/-! ## A258045.P15344231438392459788

`A343453(A199717(n+2))`
-/

namespace A258045.P15344231438392459788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343453 (A199717 (n + 2)).toNat

end

end A258045.P15344231438392459788

/-!
# A258046: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 1 and d(1) = 0.

The programs for A258046, there is no canonical definition to state claims against.
-/

/-! ## A258046.P3314245229297526648

`A257905(n+1)+1`
-/

namespace A258046.P3314245229297526648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1) + 1

end

end A258046.P3314245229297526648

/-! ## A258046.P5289667057775349271

`A257985(n+1)-1`
-/

namespace A258046.P5289667057775349271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1) - 1

end

end A258046.P5289667057775349271

/-! ## A258046.P4301264136763050256

`∑[A258047(n+1)]+1`
-/

namespace A258046.P4301264136763050256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A258046.P4301264136763050256

/-! ## A258046.P4679716718571475426

`A258047(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A258046.P4679716718571475426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258047 (n + 1) + a (A023443 n).toNat

end

end A258046.P4679716718571475426

/-! ## A258046.P8135597626445700278

`A023443(A257985(n+1))`
-/

namespace A258046.P8135597626445700278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257985 (n + 1)).toNat

end

end A258046.P8135597626445700278

/-! ## A258046.P953402120093331046

`A023444(A257985(n+1)+1)`
-/

namespace A258046.P953402120093331046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A257985 (n + 1) + 1).toNat

end

end A258046.P953402120093331046

/-! ## A258046.P6127900674370990052

`A289207(A257985(n+1)+1)`
-/

namespace A258046.P6127900674370990052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A257985 (n + 1) + 1).toNat

end

end A258046.P6127900674370990052

/-!
# A258047: Sequence (d(n)) generated by Rule 3 (in Comments) with a(1) = 1 and d(1) = 0.

The programs for A258047, there is no canonical definition to state claims against.
-/

/-! ## A258047.P8942874367055053415

`A257905(n+1)-A257905(A028310(n))`
-/

namespace A258047.P8942874367055053415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1) - A257905 (A028310 n).toNat

end

end A258047.P8942874367055053415

/-! ## A258047.P3979497649324122131

`A257985(n+1)-A257985(A028310(n))`
-/

namespace A258047.P3979497649324122131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1) - A257985 (A028310 n).toNat

end

end A258047.P3979497649324122131

/-! ## A258047.P8838658357813176752

`A258046(n+1)-A258046(A028310(n))`
-/

namespace A258047.P8838658357813176752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - A258046 (A028310 n).toNat

end

end A258047.P8838658357813176752

/-! ## A258047.P17757794724434571911

`A257985(n+1)-A257985(A000007(n)+n)`
-/

namespace A258047.P17757794724434571911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1) - A257985 (A000007 n + (n : ℤ)).toNat

end

end A258047.P17757794724434571911

/-! ## A258047.P1902351892659199082

`A258046(n+1)-A258046(A000007(n)+n)`
-/

namespace A258047.P1902351892659199082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - A258046 (A000007 n + (n : ℤ)).toNat

end

end A258047.P1902351892659199082

/-! ## A258047.P6192474421122412947

`A257905(n+1)-A257905(A005843(n)%(n+1)+1)`
-/

namespace A258047.P6192474421122412947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1) - A257905 (Int.tmod (A005843 n) (n + 1 : ℤ) + 1).toNat

end

end A258047.P6192474421122412947

/-! ## A258047.P7390904919157678916

`Δ[A257985(A000007(n)+n)]`
-/

namespace A258047.P7390904919157678916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258047.P7390904919157678916

/-! ## A258047.P5883047420180148633

`Δ[A258046(A000007(n)+n)]`
-/

namespace A258047.P5883047420180148633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258047.P5883047420180148633

/-! ## A258047.P10333016245462174073

`Δ[A258046(gcd(n, A008458(n)))]`
-/

namespace A258047.P10333016245462174073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258047.P10333016245462174073

/-! ## A258047.P5494878960737359922

`Δ[A257905(n-A239609(n)%(n+1)+1)]`
-/

namespace A258047.P5494878960737359922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 ((n : ℤ) - Int.tmod (A239609 n) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258047.P5494878960737359922

/-! ## A258047.P10482488740190256221

`A258046(n+1)-A258046(A065033(2*n))`
-/

namespace A258047.P10482488740190256221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - A258046 (A065033 (2 * n)).toNat

end

end A258047.P10482488740190256221

/-! ## A258047.P12536629013327766414

`Δ[A258046(A065033(2*n))]`
-/

namespace A258047.P12536629013327766414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258047.P12536629013327766414

/-!
# A258048: Nonhomogeneous Beatty sequence: a(n) = ceiling((n + 1/2)*Pi/(Pi - 1)).

The programs for A258048, the canonical program `A258048.P17748556129317498666` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258048 has offset 0).

The definition of A258048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1/2)*π/(π-1))` (program `A258048.P17748556129317498666`, by `A258048.P17748556129317498666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258048.P17748556129317498666

`ceil((n+1/2)*π/(π-1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258048

/-- `ceil((n+1/2)*π/(π-1))` -/
def P17748556129317498666.Spec : Prop :=
  ∀ n, P17748556129317498666.a n = A258048 n

theorem P17748556129317498666.correct : P17748556129317498666.Spec := by
  intro n
  simp only [A258048]

end A258048

/-! ## A258048.P2474861836658746703

`comp[A062389(n+1)]+1`
-/

namespace A258048.P2474861836658746703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A258048.P2474861836658746703

namespace A258048

/-- `comp[A062389(n+1)]+1` -/
def P2474861836658746703.Spec : Prop :=
  ∀ n, (P2474861836658746703.a n : ℤ) = A258048 n

end A258048

/-! ## A258048.P9885706605773468396

`comp[A140758(2*n+1)]+1`
-/

namespace A258048.P9885706605773468396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A258048.P9885706605773468396

namespace A258048

/-- `comp[A140758(2*n+1)]+1` -/
def P9885706605773468396.Spec : Prop :=
  ∀ n, (P9885706605773468396.a n : ℤ) = A258048 n

end A258048

/-! ## A258048.P17878648484227401790

`∪[A108589(n+1)+1, A327422(n+1)]`
-/

namespace A258048.P17878648484227401790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258048.P17878648484227401790

namespace A258048

/-- `∪[A108589(n+1)+1, A327422(n+1)]` -/
def P17878648484227401790.Spec : Prop :=
  ∀ n, (P17878648484227401790.a n : ℤ) = A258048 n

end A258048

/-! ## A258048.P6229686099819963201

`lt[0, Δ[tan(abs(1-n))]]`
-/

namespace A258048.P6229686099819963201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (|1 - (n : ℤ)| : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A258048.P6229686099819963201

namespace A258048

/-- `lt[0, Δ[tan(abs(1-n))]]` -/
def P6229686099819963201.Spec : Prop :=
  ∀ n, (P6229686099819963201.a n : ℤ) = A258048 n

end A258048

/-! ## A258048.P14955452760770157498

`A004526(A054386(2*n+1))+1`
-/

namespace A258048.P14955452760770157498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054386 (2 * n + 1)).toNat + 1

end

end A258048.P14955452760770157498

namespace A258048

/-- `A004526(A054386(2*n+1))+1` -/
def P14955452760770157498.Spec : Prop :=
  ∀ n, P14955452760770157498.a n = A258048 n

end A258048

/-! ## A258048.P15360587433218850389

`lt[3^tan(n), 2]+1`
-/

namespace A258048.P15360587433218850389
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.tan (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A258048.P15360587433218850389

namespace A258048

/-- `lt[3^tan(n), 2]+1` -/
def P15360587433218850389.Spec : Prop :=
  ∀ n, (P15360587433218850389.a n : ℤ) = A258048 n

end A258048

/-!
# A258049: Position of n in A258047 after deleting the initial 0.

The programs for A258049, there is no canonical definition to state claims against.
-/

/-! ## A258049.P17908332158834427691

`lt[0, A258047(n+1)]`
-/

namespace A258049.P17908332158834427691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258049.P17908332158834427691

/-! ## A258049.P8811585959295714801

`lt[A257905(A028310(n)), A257905(n+1)]`
-/

namespace A258049.P8811585959295714801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258049.P8811585959295714801

/-! ## A258049.P6704987201460857309

`lt[A257985(A028310(n)), A257985(n+1)]`
-/

namespace A258049.P6704987201460857309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258049.P6704987201460857309

/-! ## A258049.P12549616992358157598

`lt[A258046(A028310(n)), A258046(n+1)]`
-/

namespace A258049.P12549616992358157598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258049.P12549616992358157598

/-! ## A258049.P14737975361663007750

`lt[A257985(A000007(n)+n), A257985(n+1)]`
-/

namespace A258049.P14737975361663007750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258049.P14737975361663007750

/-! ## A258049.P17583970393108585103

`lt[A258046(A000007(n)+n), A258046(n+1)]`
-/

namespace A258049.P17583970393108585103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258049.P17583970393108585103

/-! ## A258049.P8084643606275737503

`lt[0, A258046(n+1)-A258046(A065033(2*n))]`
-/

namespace A258049.P8084643606275737503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - A258046 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258049.P8084643606275737503

/-! ## A258049.P869487653738144594

`eq[A137735(A258047(n+1)²), A258047(n+1)]`
-/

namespace A258049.P869487653738144594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A258047 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258049.P869487653738144594

/-!
# A258050: Position of -n in A258047 after deleting the initial 0.

The programs for A258050, there is no canonical definition to state claims against.
-/

/-! ## A258050.P16994999554847320955

`lt[A258047(n+1), 0]`
-/

namespace A258050.P16994999554847320955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258050.P16994999554847320955

/-! ## A258050.P3553900350355071832

`lt[A257905(n+1), A257905(A028310(n))]`
-/

namespace A258050.P3553900350355071832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258050.P3553900350355071832

/-! ## A258050.P11221865484335145722

`lt[A257985(n+1), A257985(A028310(n))]`
-/

namespace A258050.P11221865484335145722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258050.P11221865484335145722

/-! ## A258050.P17837931187674546533

`lt[A258046(n+1), A258046(A028310(n))]`
-/

namespace A258050.P17837931187674546533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258050.P17837931187674546533

/-! ## A258050.P12994357861464605338

`lt[A257985(n+1), A257985(A000007(n)+n)]`
-/

namespace A258050.P12994357861464605338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258050.P12994357861464605338

/-! ## A258050.P10200628469336140628

`lt[A258046(n+1), A258046(A000007(n)+n)]`
-/

namespace A258050.P10200628469336140628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258050.P10200628469336140628

/-! ## A258050.P18312942470218602152

`lt[A258046(n+1)-A258046(A065033(2*n)), 0]`
-/

namespace A258050.P18312942470218602152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - A258046 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258050.P18312942470218602152

/-! ## A258050.P5073219944811069952

`lt[A257905(n+1)-A257905(A005843(n)%(n+1)+1), 0]`
-/

namespace A258050.P5073219944811069952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1) - A257905 (Int.tmod (A005843 n) (n + 1 : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258050.P5073219944811069952

/-! ## A258050.P8126251044830254226

`eq[A007283(n)%2, char[A258049(n+1)]]`
-/

namespace A258050.P8126251044830254226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007283 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258049 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A258050.P8126251044830254226

/-!
# A258051: Fractal sequence derived from A258033.

The programs for A258051, there is no canonical definition to state claims against.
-/

/-! ## A258051.P4040930761553545643

`A318995(A291686(n+1))-A055641(A022112(n))`
-/

namespace A258051.P4040930761553545643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A291686 (n + 1)).toNat - A055641 (A022112 n).toNat

end

end A258051.P4040930761553545643

/-! ## A258051.P18358566937579330074

`xor(A022328(n+1), A046145(A223062(n+1)))`
-/

namespace A258051.P18358566937579330074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022328 (n + 1)) (A046145 (A223062 (n + 1)).toNat)

end

end A258051.P18358566937579330074

/-! ## A258051.P2525028949132622483

`xor(A158456(n+1)-1, A046145(A223062(n+1)))`
-/

namespace A258051.P2525028949132622483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158456 (n + 1) - 1) (A046145 (A223062 (n + 1)).toNat)

end

end A258051.P2525028949132622483

/-! ## A258051.P3393189703563351658

`A025641(A288682(n)^n+n)`
-/

namespace A258051.P3393189703563351658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (A288682 n ^ n + (n : ℤ)).toNat

end

end A258051.P3393189703563351658

/-! ## A258051.P17508343747691947105

`A030726(A244715(n+6))%A008619(n)`
-/

namespace A258051.P17508343747691947105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030726 (A244715 (n + 6)).toNat) (A008619 n)

end

end A258051.P17508343747691947105

/-!
# A258052: a(n) = n-th cumulative sum of A073602 divided by n-th prime.

The programs for A258052, there is no canonical definition to state claims against.
-/

/-! ## A258052.P8980529892126629335

`A259035(n+1)/A000040(n+1)`
-/

namespace A258052.P8980529892126629335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259035 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A258052.P8980529892126629335

/-! ## A258052.P6303886295796383921

`∑[A073602(n+1)]/Δ[A007504(n)]`
-/

namespace A258052.P6303886295796383921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A258052.P6303886295796383921

/-! ## A258052.P13856345522443181290

`∑[A073602(n+1)]/A000040(n+1)`
-/

namespace A258052.P13856345522443181290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A258052.P13856345522443181290

/-! ## A258052.P8865025726657494606

`∑[A073602(n+1)]/record[A006530(n+2)]`
-/

namespace A258052.P8865025726657494606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A258052.P8865025726657494606

/-! ## A258052.P8949614440162288263

`∑[A073602(n+1)]/record[A020639(n+2)]`
-/

namespace A258052.P8949614440162288263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A258052.P8949614440162288263

/-! ## A258052.P4729698002228055679

`∑[A073602(n+1)]/record[A000010(n+1)+1]`
-/

namespace A258052.P4729698002228055679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A258052.P4729698002228055679

/-! ## A258052.P6305240916423091670

`∑[A073602(n+1)]/p?[A000037(n+1)]`
-/

namespace A258052.P6305240916423091670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

end

end A258052.P6305240916423091670

/-! ## A258052.P16468232752225192447

`∑[A073602(n+1)]/eq[1, A003415(n)]`
-/

namespace A258052.P16468232752225192447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℚ)

end

end A258052.P16468232752225192447

/-! ## A258052.P17889449262692524290

`∑[A073602(n+1)]/p?[A001057(n)]`
-/

namespace A258052.P17889449262692524290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

end

end A258052.P17889449262692524290

/-! ## A258052.P10615195005908567052

`∑[A073602(n+1)]/p?[A006370(n)]`
-/

namespace A258052.P10615195005908567052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

end

end A258052.P10615195005908567052

/-!
# A258054: Circle of fifths cycle (counterclockwise).

The programs for A258054, the canonical program `A258054.P9452962777567329349` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258054 has offset 1).

The definition of A258054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258054.P9452962777567329349

`(5*n)%12+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258054

/-- `(5*n)%12+1` -/
def P9452962777567329349.Spec : Prop :=
  ∀ n, (P9452962777567329349.a n : ℤ) = A258054 (n + 1)

theorem P9452962777567329349.correct : P9452962777567329349.Spec := by
  intro n
  simp only [A258054, Nat.add_sub_cancel]

end A258054

/-!
# A258055: Concatenation of the decimal representations of the lengths (increased by 1) of the runs of zeros between successive ones in the binary representation of n.

The programs for A258055, there is no canonical definition to state claims against.
-/

/-! ## A258055.P15594813759132757543

`floor(A261300(n)/10)`
-/

namespace A258055.P15594813759132757543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261300 n : ℚ) / 10⌋

end

end A258055.P15594813759132757543

/-! ## A258055.P10720913008100493750

`A261300(val(A045654(n), 4))`
-/

namespace A258055.P10720913008100493750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.valuation (A045654 n).toNat 4)

end

end A258055.P10720913008100493750

/-! ## A258055.P16444500175084789445

`A261300(A025480(abs(1-n)))`
-/

namespace A258055.P16444500175084789445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A025480 |1 - (n : ℤ)|.toNat).toNat

end

end A258055.P16444500175084789445

/-! ## A258055.P7654031287780523284

`A004526(round(A261300(n)/5))`
-/

namespace A258055.P7654031287780523284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A261300 n : ℚ) / 5)).toNat

end

end A258055.P7654031287780523284

/-! ## A258055.P10719504878494706022

`floor(A037916(A057335(n))/10)`
-/

namespace A258055.P10719504878494706022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037916 (A057335 n).toNat : ℚ) / 10⌋

end

end A258055.P10719504878494706022

/-!
# A258056: 3x + 1 sequence starting at 75.

The programs for A258056, the canonical program `A258056.P1744994457823559617` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258056 has offset 0).

The definition of A258056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258056.P1744994457823559617

`A006370(a(n-1))` with `a(0)=75`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258056

/-- `A006370(a(n-1))` -/
def P1744994457823559617.Spec : Prop :=
  ∀ n, P1744994457823559617.a n = A258056 n

theorem P1744994457823559617.correct : P1744994457823559617.Spec := by
  intro n
  simp only [A258056]

end A258056

/-!
# A258057: First differences of the arithmetic derivative sequence A003415.

The programs for A258057, the canonical program `A258057.P7998122190271459586` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258057 has offset 0).

The definition of A258057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258057.P7998122190271459586

`A003415(n+1)-A003415(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258057

/-- `A003415(n+1)-A003415(n)` -/
def P7998122190271459586.Spec : Prop :=
  ∀ n, P7998122190271459586.a n = A258057 n

theorem P7998122190271459586.correct : P7998122190271459586.Spec := by
  intro n
  simp only [A258057]

end A258057

/-! ## A258057.P2817014142500071766

`Δ[A003415(n)]`
-/

namespace A258057.P2817014142500071766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258057.P2817014142500071766

namespace A258057

/-- `Δ[A003415(n)]` -/
def P2817014142500071766.Spec : Prop :=
  ∀ n, P2817014142500071766.a n = A258057 n

theorem P2817014142500071766.correct : P2817014142500071766.Spec := by
  intro n
  simp only [A258057, Nat.add_sub_cancel, A258057.P2817014142500071766.f1, A258057.P2817014142500071766.a, A258057.P7998122190271459586.a, SequenceMachineLib.memo_apply]

end A258057

/-! ## A258057.P14393637755142161168

`Δ[A168036(n)]+1`
-/

namespace A258057.P14393637755142161168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A258057.P14393637755142161168

namespace A258057

/-- `Δ[A168036(n)]+1` -/
def P14393637755142161168.Spec : Prop :=
  ∀ n, P14393637755142161168.a n = A258057 n

theorem P14393637755142161168.correct : P14393637755142161168.Spec := by
  intro n
  simp only [A258057, Nat.add_sub_cancel, A258057.P14393637755142161168.f1, A258057.P14393637755142161168.a, A258057.P7998122190271459586.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258057

/-! ## A258057.P2145408411934346986

`Δ[A129283(n)]-1`
-/

namespace A258057.P2145408411934346986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A258057.P2145408411934346986

namespace A258057

/-- `Δ[A129283(n)]-1` -/
def P2145408411934346986.Spec : Prop :=
  ∀ n, P2145408411934346986.a n = A258057 n

theorem P2145408411934346986.correct : P2145408411934346986.Spec := by
  intro n
  simp only [A258057, Nat.add_sub_cancel, A258057.P2145408411934346986.f1, A258057.P2145408411934346986.a, A258057.P7998122190271459586.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258057

/-! ## A258057.P10882346823686073656

`Δ[A327858(n)*A351230(n)]`
-/

namespace A258057.P10882346823686073656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258057.P10882346823686073656

namespace A258057

/-- `Δ[A327858(n)*A351230(n)]` -/
def P10882346823686073656.Spec : Prop :=
  ∀ n, P10882346823686073656.a n = A258057 n

end A258057

/-! ## A258057.P16178453573600975260

`A129283(n+1)-(A129283(n)+1)`
-/

namespace A258057.P16178453573600975260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - (A129283 n + 1)

end

end A258057.P16178453573600975260

namespace A258057

/-- `A129283(n+1)-(A129283(n)+1)` -/
def P16178453573600975260.Spec : Prop :=
  ∀ n, P16178453573600975260.a n = A258057 n

theorem P16178453573600975260.correct : P16178453573600975260.Spec := by
  intro n
  simp only [A258057, Nat.add_sub_cancel, A258057.P16178453573600975260.a, A258057.P7998122190271459586.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258057

/-! ## A258057.P2986781856969308810

`A003415(n+1)+A369052(n)+A168036(n)`
-/

namespace A258057.P2986781856969308810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A369052 n + A168036 n)

end

end A258057.P2986781856969308810

namespace A258057

/-- `A003415(n+1)+A369052(n)+A168036(n)` -/
def P2986781856969308810.Spec : Prop :=
  ∀ n, P2986781856969308810.a n = A258057 n

theorem P2986781856969308810.correct : P2986781856969308810.Spec := by
  intro n
  simp only [A258057, Nat.add_sub_cancel, A258057.P2986781856969308810.a, A258057.P7998122190271459586.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A168036, A168036.P2098310487666722677.a, A369052, A369052.P13766350415687932564.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258057

/-! ## A258057.P10625886724507109419

`Δ[∑{d}[n, A300251(#)]]`
-/

namespace A258057.P10625886724507109419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258057.P10625886724507109419

namespace A258057

/-- `Δ[∑{d}[n, A300251(#)]]` -/
def P10625886724507109419.Spec : Prop :=
  ∀ n, P10625886724507109419.a n = A258057 n

end A258057

/-! ## A258057.P4951303286038858212

`A319703(2*(n+1))-A319703(A004277(n))`
-/

namespace A258057.P4951303286038858212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A319703 (A004277 n).toNat

end

end A258057.P4951303286038858212

namespace A258057

/-- `A319703(2*(n+1))-A319703(A004277(n))` -/
def P4951303286038858212.Spec : Prop :=
  ∀ n, P4951303286038858212.a n = A258057 n

end A258057

/-! ## A258057.P930731421106069061

`A319703(2*(n+1))-A319703(A004275(n+1))`
-/

namespace A258057.P930731421106069061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A319703 (A004275 (n + 1)).toNat

end

end A258057.P930731421106069061

namespace A258057

/-- `A319703(2*(n+1))-A319703(A004275(n+1))` -/
def P930731421106069061.Spec : Prop :=
  ∀ n, P930731421106069061.a n = A258057 n

end A258057

/-! ## A258057.P8902223523126349573

`A319703(2*(n+1))-A319703(A028310(2*n))`
-/

namespace A258057.P8902223523126349573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) - A319703 (A028310 (2 * n)).toNat

end

end A258057.P8902223523126349573

namespace A258057

/-- `A319703(2*(n+1))-A319703(A028310(2*n))` -/
def P8902223523126349573.Spec : Prop :=
  ∀ n, P8902223523126349573.a n = A258057 n

end A258057

/-! ## A258057.P12786942203987548652

`Δ[A168036(2*n)-A168036(n)]`
-/

namespace A258057.P12786942203987548652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (2 * n) - A168036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258057.P12786942203987548652

namespace A258057

/-- `Δ[A168036(2*n)-A168036(n)]` -/
def P12786942203987548652.Spec : Prop :=
  ∀ n, P12786942203987548652.a n = A258057 n

end A258057

/-! ## A258057.P14831144689266568496

`A023443(A129283(n+1))-A129283(n)`
-/

namespace A258057.P14831144689266568496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129283 (n + 1)).toNat - A129283 n

end

end A258057.P14831144689266568496

namespace A258057

/-- `A023443(A129283(n+1))-A129283(n)` -/
def P14831144689266568496.Spec : Prop :=
  ∀ n, P14831144689266568496.a n = A258057 n

end A258057

/-! ## A258057.P14476102641381907839

`Δ[A258197(A000124(n))]`
-/

namespace A258057.P14476102641381907839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258057.P14476102641381907839

namespace A258057

/-- `Δ[A258197(A000124(n))]` -/
def P14476102641381907839.Spec : Prop :=
  ∀ n, P14476102641381907839.a n = A258057 n

end A258057

/-!
# A258059: Let n = Sum_{i=0..k} d_i*4^i be the base-4 expansion of n, with 0 <= d_i < 4. Then a(n) = minimal i such that d_i is not 1, or k+1 if there is no such i.

The programs for A258059, the canonical program `A258059.P4288899918116185409` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258059 has offset 1).

The definition of A258059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258059.P4288899918116185409

`val(3*n+4, 4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258059

/-- `val(3*n+4, 4)` -/
def P4288899918116185409.Spec : Prop :=
  ∀ n, (P4288899918116185409.a n : ℤ) = A258059 (n + 1)

theorem P4288899918116185409.correct : P4288899918116185409.Spec := by
  intro n
  simp only [A258059, Nat.add_sub_cancel]

end A258059

/-! ## A258059.P11138402018346386748

`dr(val(Δ[(n+1)²]+n+1, 4))`
-/

namespace A258059.P11138402018346386748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat 4 : ℤ)

end

end A258059.P11138402018346386748

namespace A258059

/-- `dr(val(Δ[(n+1)²]+n+1, 4))` -/
def P11138402018346386748.Spec : Prop :=
  ∀ n, (P11138402018346386748.a n : ℤ) = A258059 (n + 1)

end A258059

/-! ## A258059.P1597845007411402665

`Δ[a(floor((n-1)/4))+n+1]-1` with `a(0)=1`
-/

namespace A258059.P1597845007411402665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A258059.P1597845007411402665

namespace A258059

/-- `Δ[a(floor((n-1)/4))+n+1]-1` -/
def P1597845007411402665.Spec : Prop :=
  ∀ n, P1597845007411402665.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P12083005099734771994

`A263845(n+1)-1`
-/

namespace A258059.P12083005099734771994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (n + 1) - 1

end

end A258059.P12083005099734771994

namespace A258059

/-- `A263845(n+1)-1` -/
def P12083005099734771994.Spec : Prop :=
  ∀ n, P12083005099734771994.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P555847968096734994

`A235127(3*n+4)`
-/

namespace A258059.P555847968096734994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (3 * n + 4)

end

end A258059.P555847968096734994

namespace A258059

/-- `A235127(3*n+4)` -/
def P555847968096734994.Spec : Prop :=
  ∀ n, P555847968096734994.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P84726536696757287

`A004526(A371093(n+1))`
-/

namespace A258059.P84726536696757287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371093 (n + 1)).toNat

end

end A258059.P84726536696757287

namespace A258059

/-- `A004526(A371093(n+1))` -/
def P84726536696757287.Spec : Prop :=
  ∀ n, P84726536696757287.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P11143758168511561820

`A244415(A047255(n+2))`
-/

namespace A258059.P11143758168511561820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A047255 (n + 2)).toNat

end

end A258059.P11143758168511561820

namespace A258059

/-- `A244415(A047255(n+2))` -/
def P11143758168511561820.Spec : Prop :=
  ∀ n, P11143758168511561820.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P11712062243471855559

`A244415(A166250(n+2))`
-/

namespace A258059.P11712062243471855559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A166250 (n + 2)).toNat

end

end A258059.P11712062243471855559

namespace A258059

/-- `A244415(A166250(n+2))` -/
def P11712062243471855559.Spec : Prop :=
  ∀ n, P11712062243471855559.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P18397797067904450244

`A007814(A292371(n+1)+1)`
-/

namespace A258059.P18397797067904450244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292371 (n + 1) + 1).toNat

end

end A258059.P18397797067904450244

namespace A258059

/-- `A007814(A292371(n+1)+1)` -/
def P18397797067904450244.Spec : Prop :=
  ∀ n, P18397797067904450244.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P14962706724648051098

`A115362(A004468(n+1))-1`
-/

namespace A258059.P14962706724648051098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A004468 (n + 1)).toNat - 1

end

end A258059.P14962706724648051098

namespace A258059

/-- `A115362(A004468(n+1))-1` -/
def P14962706724648051098.Spec : Prop :=
  ∀ n, P14962706724648051098.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P2312407405866249085

`A115362(A048647(n+1))-1`
-/

namespace A258059.P2312407405866249085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A048647 (n + 1)).toNat - 1

end

end A258059.P2312407405866249085

namespace A258059

/-- `A115362(A048647(n+1))-1` -/
def P2312407405866249085.Spec : Prop :=
  ∀ n, P2312407405866249085.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P921307439084771302

`A244415(A016933(n+1))-1`
-/

namespace A258059.P921307439084771302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A016933 (n + 1)).toNat - 1

end

end A258059.P921307439084771302

namespace A258059

/-- `A244415(A016933(n+1))-1` -/
def P921307439084771302.Spec : Prop :=
  ∀ n, P921307439084771302.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P18400116351556377004

`A010879(val(A016777(n+1), 4))`
-/

namespace A258059.P18400116351556377004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.valuation (A016777 (n + 1)).toNat 4)

end

end A258059.P18400116351556377004

namespace A258059

/-- `A010879(val(A016777(n+1), 4))` -/
def P18400116351556377004.Spec : Prop :=
  ∀ n, P18400116351556377004.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P16511493643235273742

`A057554(A087229(n+1)²)-1`
-/

namespace A258059.P16511493643235273742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A087229 (n + 1) ^ 2).toNat - 1

end

end A258059.P16511493643235273742

namespace A258059

/-- `A057554(A087229(n+1)²)-1` -/
def P16511493643235273742.Spec : Prop :=
  ∀ n, P16511493643235273742.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P4220950530055994446

`Δ[∑[A263845(n)]-n]`
-/

namespace A258059.P4220950530055994446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258059.P4220950530055994446

namespace A258059

/-- `Δ[∑[A263845(n)]-n]` -/
def P4220950530055994446.Spec : Prop :=
  ∀ n, P4220950530055994446.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P7911001396095491487

`A244415(A165355(n+1))`
-/

namespace A258059.P7911001396095491487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A165355 (n + 1)).toNat

end

end A258059.P7911001396095491487

namespace A258059

/-- `A244415(A165355(n+1))` -/
def P7911001396095491487.Spec : Prop :=
  ∀ n, P7911001396095491487.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P12610729197622060658

`A244415(A063914(n+2))`
-/

namespace A258059.P12610729197622060658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A063914 (n + 2)).toNat

end

end A258059.P12610729197622060658

namespace A258059

/-- `A244415(A063914(n+2))` -/
def P12610729197622060658.Spec : Prop :=
  ∀ n, P12610729197622060658.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P3832222229051597679

`A115362(A048724(n+1))-1`
-/

namespace A258059.P3832222229051597679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A048724 (n + 1)).toNat - 1

end

end A258059.P3832222229051597679

namespace A258059

/-- `A115362(A048724(n+1))-1` -/
def P3832222229051597679.Spec : Prop :=
  ∀ n, P3832222229051597679.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P8010592414562507566

`A115362(A347365(n+1))-1`
-/

namespace A258059.P8010592414562507566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A347365 (n + 1)).toNat - 1

end

end A258059.P8010592414562507566

namespace A258059

/-- `A115362(A347365(n+1))-1` -/
def P8010592414562507566.Spec : Prop :=
  ∀ n, P8010592414562507566.a n = A258059 (n + 1)

end A258059

/-! ## A258059.P13657982361174355923

`A115362(3*(n+1))-1`
-/

namespace A258059.P13657982361174355923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (3 * (n + 1)) - 1

end

end A258059.P13657982361174355923

namespace A258059

/-- `A115362(3*(n+1))-1` -/
def P13657982361174355923.Spec : Prop :=
  ∀ n, P13657982361174355923.a n = A258059 (n + 1)

end A258059

/-!
# A258061: a(n) = A206044(n)/210.

The programs for A258061, there is no canonical definition to state claims against.
-/

/-! ## A258061.P14725404368168739347

`A206044(n+1)/210`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258061.P14725404368168739347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206044 (n + 1) : ℚ) / 210

end

end A258061.P14725404368168739347

/-!
# A258064: Number of hands of n points in Spanish dominoes.

The programs for A258064, there is no canonical definition to state claims against.
-/

/-! ## A258064.P8641262807403432332

`A079886(or(A271882(2*n+1), A271890(n)))`
-/

namespace A258064.P8641262807403432332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (Int.lor (A271882 (2 * n + 1)) (A271890 n)).toNat

end

end A258064.P8641262807403432332

/-!
# A258065: Expansion of (phi(-x^3) * f(-x^2))^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A258065, there is no canonical definition to state claims against.
-/

/-! ## A258065.P15019394125280338459

`A030188(3*n)`
-/

namespace A258065.P15019394125280338459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 (3 * n)

end

end A258065.P15019394125280338459

/-! ## A258065.P15973829028960698024

`A033999(n)*A159819(3*n)`
-/

namespace A258065.P15973829028960698024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A159819 (3 * n)

end

end A258065.P15973829028960698024

/-! ## A258065.P11405490410280450114

`A030188(A008486(n))+A000038(n)`
-/

namespace A258065.P11405490410280450114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 (A008486 n).toNat + A000038 n

end

end A258065.P11405490410280450114

/-! ## A258065.P6878198365525100702

`A276847(6*n+1)`
-/

namespace A258065.P6878198365525100702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (6 * n + 1)

end

end A258065.P6878198365525100702

/-! ## A258065.P14403558729421849321

`A261277(3*n)`
-/

namespace A258065.P14403558729421849321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261277 (3 * n)

end

end A258065.P14403558729421849321

/-!
# A258068: Nonnegative integers that can be computed using exactly seven 7's and the four basic arithmetic operations {+, -, *, /}.

The programs for A258068, there is no canonical definition to state claims against.
-/

/-! ## A258068.P10171323626406864382

`comp[A321997(n+1)]%A045924(n+1)`
-/

namespace A258068.P10171323626406864382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A045924 (n + 1))

end

end A258068.P10171323626406864382

/-! ## A258068.P2517388371972788880

`comp[A321997(n+1)%A373301(2*n+5)]`
-/

namespace A258068.P2517388371972788880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321997 (n + 1)) (A373301 (2 * n + 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258068.P2517388371972788880

/-! ## A258068.P3498099639087400036

`comp[A321997(A279477(n+1))]`
-/

namespace A258068.P3498099639087400036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321997 (A279477 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258068.P3498099639087400036

/-! ## A258068.P16136269661593208753

`A382445(n+3)-5`
-/

namespace A258068.P16136269661593208753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382445 (n + 3) - 5

end

end A258068.P16136269661593208753

/-! ## A258068.P7482378964232578456

`∑[A323022(A324934(n+1))]`
-/

namespace A258068.P7482378964232578456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A324934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258068.P7482378964232578456

/-! ## A258068.P4436193724020620381

`comp[A071885(n)]%A324929(n+1)`
-/

namespace A258068.P4436193724020620381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A324929 (n + 1))

end

end A258068.P4436193724020620381

/-! ## A258068.P18363531649268605857

`comp[A084292(n+1)]%A175142(n+1)`
-/

namespace A258068.P18363531649268605857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A175142 (n + 1))

end

end A258068.P18363531649268605857

/-! ## A258068.P1828487244672733735

`comp[A026591(n+4)]%A121542(n+1)`
-/

namespace A258068.P1828487244672733735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026591 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A121542 (n + 1))

end

end A258068.P1828487244672733735

/-! ## A258068.P3912620121266062847

`comp[A260787(n+4)]%A180149(n+1)`
-/

namespace A258068.P3912620121266062847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260787 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A180149 (n + 1))

end

end A258068.P3912620121266062847

/-! ## A258068.P5562324891298594363

`comp[A005899(3*(n+1))]%A348518(n+1)`
-/

namespace A258068.P5562324891298594363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A348518 (n + 1))

end

end A258068.P5562324891298594363

/-!
# A258069: Nonnegative integers that can be computed using exactly eight 8's and the four basic arithmetic operations {+, -, *, /}.

The programs for A258069, there is no canonical definition to state claims against.
-/

/-! ## A258069.P363101514128396373

`C(∑{e}[A341792(n+9), #], 3)+n`
-/

namespace A258069.P363101514128396373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341792 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) 3 + n

end

end A258069.P363101514128396373

/-! ## A258069.P15605614041834808754

`A124763(A331984(n))+n`
-/

namespace A258069.P15605614041834808754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A331984 n).toNat + (n : ℤ)

end

end A258069.P15605614041834808754

/-! ## A258069.P518490046249995804

`A015970(A167846(n+1))+n`
-/

namespace A258069.P518490046249995804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A167846 (n + 1)).toNat + (n : ℤ)

end

end A258069.P518490046249995804

/-! ## A258069.P15080808706129427680

`A025469(A299762(n+1))+n`
-/

namespace A258069.P15080808706129427680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A299762 (n + 1)).toNat + (n : ℤ)

end

end A258069.P15080808706129427680

/-! ## A258069.P15542741645569491146

`A322358(A162912(n+1))+n`
-/

namespace A258069.P15542741645569491146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A162912 (n + 1)).toNat + (n : ℤ)

end

end A258069.P15542741645569491146

/-! ## A258069.P12542785790364419488

`A185213(A068933(n+3))+n`
-/

namespace A258069.P12542785790364419488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 (A068933 (n + 3)).toNat + (n : ℤ)

end

end A258069.P12542785790364419488

/-! ## A258069.P7909661402005263609

`A184964(A212623(n+5))+n`
-/

namespace A258069.P7909661402005263609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A212623 (n + 5)).toNat + (n : ℤ)

end

end A258069.P7909661402005263609

/-! ## A258069.P3556306965833516534

`A180160(A341791(n+9))+n`
-/

namespace A258069.P3556306965833516534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A341791 (n + 9)).toNat + (n : ℤ)

end

end A258069.P3556306965833516534

/-! ## A258069.P8695369719227677933

`A336477(A022004(2*(n+1)))+n`
-/

namespace A258069.P8695369719227677933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336477 (A022004 (2 * (n + 1))).toNat + (n : ℤ)

end

end A258069.P8695369719227677933

/-!
# A258070: 

The programs for A258070, there is no canonical definition to state claims against.
-/

/-! ## A258070.P17453145147124654719

`ceil(∑[A219403(n+2)/A104475(n)])+n-1`
-/

namespace A258070.P17453145147124654719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219403 (n + 2) : ℚ) / (A104475 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + ((n : ℤ) - 1)

end

end A258070.P17453145147124654719

/-! ## A258070.P11474124313954877056

`C(A194240(n+1), A001359(n+1))+n`
-/

namespace A258070.P11474124313954877056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194240 (n + 1)).toNat (A001359 (n + 1)).toNat + n

end

end A258070.P11474124313954877056

/-!
# A258072: Upper constant x that satisfies: x = Sum_{n>=1} frac(n*(1-x)) / 2^n.

The programs for A258072, there is no canonical definition to state claims against.
-/

/-! ## A258072.P8672172063142259734

`9-A258075(n)`
-/

namespace A258072.P8672172063142259734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A258075 n

end

end A258072.P8672172063142259734

/-!
# A258075: Lower constant x that satisfies: x = Sum_{n>=1} frac(n*(1-x)) / 2^n.

The programs for A258075, there is no canonical definition to state claims against.
-/

/-! ## A258075.P3652319429526804321

`9-A258072(n)`
-/

namespace A258075.P3652319429526804321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A258072 n

end

end A258075.P3652319429526804321

/-!
# A258076: a(0)=1, a(1)=2; for n>=2, a(n) = smallest number not already used which shares a factor with a(n-1) if T(n-1)=T(n), and otherwise is relatively prime to a(n-1), where {T(n)} is Thue-Morse sequence (A010060).

The programs for A258076, there is no canonical definition to state claims against.
-/

/-! ## A258076.P4173320975747392325

`A254116(n+1)+A102283(A088808(n))`
-/

namespace A258076.P4173320975747392325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (n + 1) + A102283 (A088808 n).toNat

end

end A258076.P4173320975747392325

/-!
# A258078: a(0)=1, a(1)=2; for n>=2, a(n)=smallest number not already used which is relatively prime to a(n-1) if T(n-1)=T(n), and otherwise shares a factor with a(n-1), where {T(n)} is the Thue-Morse sequence (A010060).

The programs for A258078, there is no canonical definition to state claims against.
-/

/-! ## A258078.P17908083993101352559

`A036552(∑[A212390(n)^A212390(n)])`
-/

namespace A258078.P17908083993101352559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212390 n : ℚ) ^ (A212390 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258078.P17908083993101352559

/-! ## A258078.P5046539096709703406

`A036552(n+1)-A344220(A147012(n+1))`
-/

namespace A258078.P5046539096709703406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (n + 1) - A344220 (A147012 (n + 1)).toNat

end

end A258078.P5046539096709703406

/-!
# A258079: Numbers x such that (-1)sigma(x) | sigma(x) - x, where (-1)sigma(x) is defined in A049060 and sigma(x) - x is the sum of the aliquot parts of x (A001065).

The programs for A258079, there is no canonical definition to state claims against.
-/

/-! ## A258079.P12736442186335808258

`record[gcd(n!, A094198(n+1))]`
-/

namespace A258079.P12736442186335808258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A094198 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258079.P12736442186335808258

/-! ## A258079.P12870889520038997298

`A173643(2^n)+n%or(1, n)`
-/

namespace A258079.P12870889520038997298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173643 (2 ^ n) + ((n % Nat.lor 1 n : ℕ) : ℤ)

end

end A258079.P12870889520038997298

/-!
# A258083: Smallest multiple of 3 not appearing earlier that ends with n.

The programs for A258083, there is no canonical definition to state claims against.
-/

/-! ## A258083.P8569414519801188747

`3*A258225(n+1)`
-/

namespace A258083.P8569414519801188747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A258225 (n + 1)

end

end A258083.P8569414519801188747

/-! ## A258083.P13429796533735830028

`A008486(A258225(n+1))`
-/

namespace A258083.P13429796533735830028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A258225 (n + 1)).toNat

end

end A258083.P13429796533735830028

/-! ## A258083.P17634388517182454724

`A016777(A258225(n+1)-1)+2`
-/

namespace A258083.P17634388517182454724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A258225 (n + 1) - 1).toNat + 2

end

end A258083.P17634388517182454724

/-! ## A258083.P5597859547151075580

`A008585(A258225(n+1)%A017197(n)²)`
-/

namespace A258083.P5597859547151075580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A258225 (n + 1)) (A017197 n ^ 2)).toNat

end

end A258083.P5597859547151075580

/-! ## A258083.P7945210180243325407

`A008585(A258225(n+1))%A258188(n+1)²`
-/

namespace A258083.P7945210180243325407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A258225 (n + 1)).toNat) (A258188 (n + 1) ^ 2)

end

end A258083.P7945210180243325407

/-! ## A258083.P13465105918392674497

`A008585(A258225(n+1))%A017197(A016957(n))`
-/

namespace A258083.P13465105918392674497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A258225 (n + 1)).toNat) (A017197 (A016957 n).toNat)

end

end A258083.P13465105918392674497

/-!
# A258084: Numbers k such that k concatenated with its reversal k' yields a prime when the rightmost digit of k and leftmost digit of k' are coalesced.

The programs for A258084, there is no canonical definition to state claims against.
-/

/-! ## A258084.P6175002021212882979

`A137564(p?[A056142(n)])`
-/

namespace A258084.P6175002021212882979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258084.P6175002021212882979

/-! ## A258084.P6201246706661926119

`A137564(A050784(n+1))`
-/

namespace A258084.P6201246706661926119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A050784 (n + 1)).toNat

end

end A258084.P6201246706661926119

/-! ## A258084.P15463096393717932483

`A137564(p?[record[A082216(n)]])`
-/

namespace A258084.P15463096393717932483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258084.P15463096393717932483

/-! ## A258084.P17713779383028490552

`record[A137564(A002385(n+1))]`
-/

namespace A258084.P17713779383028490552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A002385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258084.P17713779383028490552

/-!
# A258085: Strictly increasing list of F and F - 1, where F = A000045, the Fibonacci numbers.

The programs for A258085, the canonical program `A258085.P3108972363115519921` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258085 has offset 1).

The definition of A258085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258085.P3108972363115519921

`2*a(n-2)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7, a(7)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258085

/-- `2*a(n-2)-a(n-6)` -/
def P3108972363115519921.Spec : Prop :=
  ∀ n, P3108972363115519921.a n = A258085 (n + 1)

theorem P3108972363115519921.correct : P3108972363115519921.Spec := by
  intro n
  simp only [A258085, Nat.add_sub_cancel]

end A258085

/-! ## A258085.P18402364927299732088

`record[A321664(n)]`
-/

namespace A258085.P18402364927299732088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258085.P18402364927299732088

namespace A258085

/-- `record[A321664(n)]` -/
def P18402364927299732088.Spec : Prop :=
  ∀ n, P18402364927299732088.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P8939141672861656975

`A259623(n+1)-1`
-/

namespace A258085.P8939141672861656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (n + 1) - 1

end

end A258085.P8939141672861656975

namespace A258085

/-- `A259623(n+1)-1` -/
def P8939141672861656975.Spec : Prop :=
  ∀ n, P8939141672861656975.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P4804885874113126682

`record[A000045(A101402(n))-A164349(n)]`
-/

namespace A258085.P4804885874113126682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A101402 n).toNat - A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258085.P4804885874113126682

namespace A258085

/-- `record[A000045(A101402(n))-A164349(n)]` -/
def P4804885874113126682.Spec : Prop :=
  ∀ n, P4804885874113126682.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P824116337391540377

`∪[A226271(n+1), A020695(n)]-1`
-/

namespace A258085.P824116337391540377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A258085.P824116337391540377

namespace A258085

/-- `∪[A226271(n+1), A020695(n)]-1` -/
def P824116337391540377.Spec : Prop :=
  ∀ n, P824116337391540377.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P18148904157043162189

`∪[A071679(n+1)-1, A071679(n+1)]`
-/

namespace A258085.P18148904157043162189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258085.P18148904157043162189

namespace A258085

/-- `∪[A071679(n+1)-1, A071679(n+1)]` -/
def P18148904157043162189.Spec : Prop :=
  ∀ n, (P18148904157043162189.a n : ℤ) = A258085 (n + 1)

end A258085

/-! ## A258085.P15207032636539543937

`∪[A061489(2*n+1), A259623(2*n+1)]`
-/

namespace A258085.P15207032636539543937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258085.P15207032636539543937

namespace A258085

/-- `∪[A061489(2*n+1), A259623(2*n+1)]` -/
def P15207032636539543937.Spec : Prop :=
  ∀ n, (P15207032636539543937.a n : ℤ) = A258085 (n + 1)

end A258085

/-! ## A258085.P7402725442567659421

`record[A132923(n+1)-1]`
-/

namespace A258085.P7402725442567659421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132923 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258085.P7402725442567659421

namespace A258085

/-- `record[A132923(n+1)-1]` -/
def P7402725442567659421.Spec : Prop :=
  ∀ n, P7402725442567659421.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P6297194580864927830

`record[A000045(A123578(n))-A141169(n)]`
-/

namespace A258085.P6297194580864927830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A123578 n).toNat - A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258085.P6297194580864927830

namespace A258085

/-- `record[A000045(A123578(n))-A141169(n)]` -/
def P6297194580864927830.Spec : Prop :=
  ∀ n, P6297194580864927830.a n = A258085 (n + 1)

end A258085

/-! ## A258085.P9557981113468961208

`record[A210868(n+1)-A055356(n+2)]`
-/

namespace A258085.P9557981113468961208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210868 (n + 1) - A055356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258085.P9557981113468961208

namespace A258085

/-- `record[A210868(n+1)-A055356(n+2)]` -/
def P9557981113468961208.Spec : Prop :=
  ∀ n, P9557981113468961208.a n = A258085 (n + 1)

end A258085

/-!
# A258087: Start with all terms set to 0. Then add n to the next n+2 terms for n=0,1,2,... .

The programs for A258087, the canonical program `A258087.P13617862802559146865` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258087 has offset 0).

The definition of A258087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258087.P13617862802559146865

`2*a(n-2)-a(n-4)+3` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258087

/-- `2*a(n-2)-a(n-4)+3` -/
def P13617862802559146865.Spec : Prop :=
  ∀ n, P13617862802559146865.a n = A258087 n

theorem P13617862802559146865.correct : P13617862802559146865.Spec := by
  intro n
  simp only [A258087]

end A258087

/-! ## A258087.P9244820545211539714

`∑[a(n-2)+gcd(2, n)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A258087.P9244820545211539714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 2) + Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258087.P9244820545211539714

namespace A258087

/-- `∑[a(n-2)+gcd(2, n)]` -/
def P9244820545211539714.Spec : Prop :=
  ∀ n, (P9244820545211539714.a n : ℤ) = A258087 n

end A258087

/-! ## A258087.P1095790028866595194

`∑[floor((lcm(n+1, n-1)+2*n)/(n+2))]`
-/

namespace A258087.P1095790028866595194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) + 2 * n : ℚ) / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258087.P1095790028866595194

namespace A258087

/-- `∑[floor((lcm(n+1, n-1)+2*n)/(n+2))]` -/
def P1095790028866595194.Spec : Prop :=
  ∀ n, P1095790028866595194.a n = A258087 n

end A258087

/-! ## A258087.P1826860130772058103

`n-1+∑[a(n-2)²]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A258087.P1826860130772058103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - 1 + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 2))

end

end A258087.P1826860130772058103

namespace A258087

/-- `n-1+∑[a(n-2)²]+a(n-2)` -/
def P1826860130772058103.Spec : Prop :=
  ∀ n, P1826860130772058103.a n = A258087 n

end A258087

/-! ## A258087.P3091116582909999738

`A195020(n)%∑[n+1]`
-/

namespace A258087.P3091116582909999738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195020 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A258087.P3091116582909999738

namespace A258087

/-- `A195020(n)%∑[n+1]` -/
def P3091116582909999738.Spec : Prop :=
  ∀ n, P3091116582909999738.a n = A258087 n

end A258087

/-! ## A258087.P2530911507850325624

`A195020(n)-A253145(n)`
-/

namespace A258087.P2530911507850325624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 n - A253145 n

end

end A258087.P2530911507850325624

namespace A258087

/-- `A195020(n)-A253145(n)` -/
def P2530911507850325624.Spec : Prop :=
  ∀ n, P2530911507850325624.a n = A258087 n

end A258087

/-! ## A258087.P6664180285901080912

`A210978(n)%A084263(n)`
-/

namespace A258087.P6664180285901080912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210978 n) (A084263 n)

end

end A258087.P6664180285901080912

namespace A258087

/-- `A210978(n)%A084263(n)` -/
def P6664180285901080912.Spec : Prop :=
  ∀ n, P6664180285901080912.a n = A258087 n

end A258087

/-! ## A258087.P5692033229970372638

`A397990(n)%A319390(n)`
-/

namespace A258087.P5692033229970372638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397990 n) (A319390 n)

end

end A258087.P5692033229970372638

namespace A258087

/-- `A397990(n)%A319390(n)` -/
def P5692033229970372638.Spec : Prop :=
  ∀ n, P5692033229970372638.a n = A258087 n

end A258087

/-! ## A258087.P14580080140305173782

`A078126(n)+A055802(n+2)`
-/

namespace A258087.P14580080140305173782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n + A055802 (n + 2)

end

end A258087.P14580080140305173782

namespace A258087

/-- `A078126(n)+A055802(n+2)` -/
def P14580080140305173782.Spec : Prop :=
  ∀ n, P14580080140305173782.a n = A258087 n

end A258087

/-! ## A258087.P4876178458988494559

`A144065(n)-A063196(n+1)`
-/

namespace A258087.P4876178458988494559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n - A063196 (n + 1)

end

end A258087.P4876178458988494559

namespace A258087

/-- `A144065(n)-A063196(n+1)` -/
def P4876178458988494559.Spec : Prop :=
  ∀ n, P4876178458988494559.a n = A258087 n

end A258087

/-! ## A258087.P8834199443643904201

`A156859(n)%A087099(n+1)`
-/

namespace A258087.P8834199443643904201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156859 n) (A087099 (n + 1))

end

end A258087.P8834199443643904201

namespace A258087

/-- `A156859(n)%A087099(n+1)` -/
def P8834199443643904201.Spec : Prop :=
  ∀ n, P8834199443643904201.a n = A258087 n

end A258087

/-! ## A258087.P13493519588243575569

`A274830(n+1)%A053439(n)`
-/

namespace A258087.P13493519588243575569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274830 (n + 1)) (A053439 n)

end

end A258087.P13493519588243575569

namespace A258087

/-- `A274830(n+1)%A053439(n)` -/
def P13493519588243575569.Spec : Prop :=
  ∀ n, P13493519588243575569.a n = A258087 n

end A258087

/-! ## A258087.P12143593078221489938

`∑[A160413(n+1)%A109613(n)]`
-/

namespace A258087.P12143593078221489938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160413 (n + 1)) (A109613 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258087.P12143593078221489938

namespace A258087

/-- `∑[A160413(n+1)%A109613(n)]` -/
def P12143593078221489938.Spec : Prop :=
  ∀ n, P12143593078221489938.a n = A258087 n

end A258087

/-! ## A258087.P14959968499070384787

`∑[n-A057979(n)]*A057427(n)`
-/

namespace A258087.P14959968499070384787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A258087.P14959968499070384787

namespace A258087

/-- `∑[n-A057979(n)]*A057427(n)` -/
def P14959968499070384787.Spec : Prop :=
  ∀ n, P14959968499070384787.a n = A258087 n

end A258087

/-! ## A258087.P14902439171282803137

`A055802(n+2)+A002620(n)-1`
-/

namespace A258087.P14902439171282803137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 2) + (A002620 n - 1)

end

end A258087.P14902439171282803137

namespace A258087

/-- `A055802(n+2)+A002620(n)-1` -/
def P14902439171282803137.Spec : Prop :=
  ∀ n, P14902439171282803137.a n = A258087 n

end A258087

/-! ## A258087.P5335079670403498286

`∑[A028310(n)-A028310(A057979(n))]`
-/

namespace A258087.P5335079670403498286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A028310 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258087.P5335079670403498286

namespace A258087

/-- `∑[A028310(n)-A028310(A057979(n))]` -/
def P5335079670403498286.Spec : Prop :=
  ∀ n, P5335079670403498286.a n = A258087 n

end A258087

/-! ## A258087.P10793549157449800003

`A152947(n+1)-A152947(A065033(n))`
-/

namespace A258087.P10793549157449800003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) - A152947 (A065033 n).toNat

end

end A258087.P10793549157449800003

namespace A258087

/-- `A152947(n+1)-A152947(A065033(n))` -/
def P10793549157449800003.Spec : Prop :=
  ∀ n, P10793549157449800003.a n = A258087 n

end A258087

/-! ## A258087.P16110025191363285977

`A152948(n+1)-A152948(A065033(n))`
-/

namespace A258087.P16110025191363285977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 1) - A152948 (A065033 n).toNat

end

end A258087.P16110025191363285977

namespace A258087

/-- `A152948(n+1)-A152948(A065033(n))` -/
def P16110025191363285977.Spec : Prop :=
  ∀ n, P16110025191363285977.a n = A258087 n

end A258087

/-! ## A258087.P57388631587896

`A161680(n)-A161680(A140106(n+1))`
-/

namespace A258087.P57388631587896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A161680 (A140106 (n + 1)).toNat

end

end A258087.P57388631587896

namespace A258087

/-- `A161680(n)-A161680(A140106(n+1))` -/
def P57388631587896.Spec : Prop :=
  ∀ n, P57388631587896.a n = A258087 n

end A258087

/-! ## A258087.P5501397732057258714

`A161680(n)-A161680(A065033(n)-1)`
-/

namespace A258087.P5501397732057258714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A161680 (A065033 n - 1).toNat

end

end A258087.P5501397732057258714

namespace A258087

/-- `A161680(n)-A161680(A065033(n)-1)` -/
def P5501397732057258714.Spec : Prop :=
  ∀ n, P5501397732057258714.a n = A258087 n

end A258087

/-!
# A258088: Numbers n such that n is the average of four consecutive primes n-5, n-1, n+1 and n+5.

The programs for A258088, there is no canonical definition to state claims against.
-/

/-! ## A258088.P4885576355842088962

`A052378(n+1)+5`
-/

namespace A258088.P4885576355842088962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052378 (n + 1) + 5

end

end A258088.P4885576355842088962

/-! ## A258088.P11775462953544941028

`p?[A046139(n+1)+4]+1`
-/

namespace A258088.P11775462953544941028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A258088.P11775462953544941028

/-! ## A258088.P142368218268505260

`p?[A022004(n+1)-4]+5`
-/

namespace A258088.P142368218268505260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A258088.P142368218268505260

/-! ## A258088.P5882972905984591112

`p?[A073648(n+1)-6]+5`
-/

namespace A258088.P5882972905984591112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A258088.P5882972905984591112

/-! ## A258088.P14080265325955396273

`p?[A098412(n+1)-10]+5`
-/

namespace A258088.P14080265325955396273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A258088.P14080265325955396273

/-! ## A258088.P4000438869362688290

`∩[A014574(n+1), A087696(n+1)]`
-/

namespace A258088.P4000438869362688290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258088.P4000438869362688290

/-! ## A258088.P2635583471266128096

`∩[A056853(n+1), A087696(n+1)]`
-/

namespace A258088.P2635583471266128096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258088.P2635583471266128096

/-! ## A258088.P13662518205601793400

`∩[A087696(n+1), A256753(n+1)]`
-/

namespace A258088.P13662518205601793400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258088.P13662518205601793400

/-! ## A258088.P7173130128430430331

`∩[A087696(n+1), A353073(n+1)]`
-/

namespace A258088.P7173130128430430331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258088.P7173130128430430331

/-! ## A258088.P17485142653742127509

`∩[A087696(n+1), A167706(n+1)]`
-/

namespace A258088.P17485142653742127509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258088.P17485142653742127509

/-!
# A258089: a(n) = n for n = 0..3; for n>3, a(n) = 4*a(n-1) + 3*a(n-2) + 2*a(n-3) + a(n-4).

The programs for A258089, the canonical program `A258089.P14347261328107307281` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258089 has offset 0).

The definition of A258089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` (program `A258089.P14347261328107307281`, by `A258089.P14347261328107307281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258089.P14347261328107307281

`4*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258089

/-- `4*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P14347261328107307281.Spec : Prop :=
  ∀ n, (P14347261328107307281.a n : ℤ) = A258089 n

theorem P14347261328107307281.correct : P14347261328107307281.Spec := by
  intro n
  simp only [A258089]

end A258089

/-!
# A258090: Expansion of q^(-5/6) * (eta(q) * eta(q^6)^2 / eta(q^3))^2 in powers of q.

The programs for A258090, there is no canonical definition to state claims against.
-/

/-! ## A258090.P11975803941332765574

`-(A030188(3*n+2)/2)`
-/

namespace A258090.P11975803941332765574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A030188 (3 * n + 2) : ℚ) / 2)

end

end A258090.P11975803941332765574

/-! ## A258090.P11944440294199298672

`floor(-(A030188(A016789(n))/2))`
-/

namespace A258090.P11944440294199298672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A030188 (A016789 n).toNat : ℚ) / 2)⌋

end

end A258090.P11944440294199298672

/-! ## A258090.P9210212609815990664

`A000038(n+1)-A030188(A016789(n))/2`
-/

namespace A258090.P9210212609815990664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A030188 (A016789 n).toNat : ℚ) / 2

end

end A258090.P9210212609815990664

/-! ## A258090.P13158503175254627475

`A008683(A017617(n))-A030188(A016789(n))/2`
-/

namespace A258090.P13158503175254627475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A017617 n).toNat : ℚ) - (A030188 (A016789 n).toNat : ℚ) / 2

end

end A258090.P13158503175254627475

/-! ## A258090.P5118654754529275583

`A030188(A016789(n))/2*A008683(A007520(n+1))`
-/

namespace A258090.P5118654754529275583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030188 (A016789 n).toNat : ℚ) / 2 * (A008683 (A007520 (n + 1)).toNat : ℚ)

end

end A258090.P5118654754529275583

/-! ## A258090.P11001358706048900652

`A246707(A016969(n))/4`
-/

namespace A258090.P11001358706048900652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246707 (A016969 n).toNat : ℚ) / 4

end

end A258090.P11001358706048900652

/-!
# A258091: Smallest prime factor of 1+78557*2^n, cf. A258073.

The programs for A258091, there is no canonical definition to state claims against.
-/

/-! ## A258091.P6941255709302692586

`A244609(A077168(n)+5)`
-/

namespace A258091.P6941255709302692586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244609 (A077168 n + 5).toNat

end

end A258091.P6941255709302692586

/-! ## A258091.P11121581344743212457

`A244609(n+6)%A244575(n+1)`
-/

namespace A258091.P11121581344743212457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244609 (n + 6)) (A244575 (n + 1))

end

end A258091.P11121581344743212457

/-! ## A258091.P8538488935742360096

`A244609(A187829(n+4)+2)`
-/

namespace A258091.P8538488935742360096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244609 (A187829 (n + 4) + 2).toNat

end

end A258091.P8538488935742360096

/-!
# A258092: Expansion of f(x, x^2) / psi(x)^3 in powers of x where psi(), f(, ) are Ramanujan theta functions.

The programs for A258092, there is no canonical definition to state claims against.
-/

/-! ## A258092.P1194314850715658558

`A033999(n)*A263993(n)`
-/

namespace A258092.P1194314850715658558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263993 n

end

end A258092.P1194314850715658558

/-! ## A258092.P193114026545277747

`(A004442(n)-n)*A263993(n)`
-/

namespace A258092.P193114026545277747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A263993 n

end

end A258092.P193114026545277747

/-! ## A258092.P3958803588778039962

`A098986(n+1)/A336113(n+1)*A263993(n)`
-/

namespace A258092.P3958803588778039962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098986 (n + 1) : ℚ) / (A336113 (n + 1) : ℚ) * (A263993 n : ℚ)

end

end A258092.P3958803588778039962

/-!
# A258096: Expansion of psi(x^4) * phi(-x^4)^4 / phi(-x) in powers of x where phi(), psi() are Ramanujan theta function.

The programs for A258096, the canonical program `A258096.P8986957961548170403` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258096 has offset 0).

The definition of A258096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258096.P8986957961548170403

`(-1)^n*A209940(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A258096

/-- `(-1)^n*A209940(n)` -/
def P8986957961548170403.Spec : Prop :=
  ∀ n, P8986957961548170403.a n = A258096 n

theorem P8986957961548170403.correct : P8986957961548170403.Spec := by
  intro n
  simp only [A258096]

end A258096

/-! ## A258096.P6966100124549598800

`(-1)^floor(n/2)*A113419(n)`
-/

namespace A258096.P6966100124549598800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A113419 n : ℚ)

end

end A258096.P6966100124549598800

namespace A258096

/-- `(-1)^floor(n/2)*A113419(n)` -/
def P6966100124549598800.Spec : Prop :=
  ∀ n, P6966100124549598800.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P2514325176268632554

`(-1)^(n+floor(n/2))*A113417(n)`
-/

namespace A258096.P2514325176268632554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((n : ℤ) + ⌊(n : ℚ) / 2⌋ : ℤ) * (A113417 n : ℚ)

end

end A258096.P2514325176268632554

namespace A258096

/-- `(-1)^(n+floor(n/2))*A113417(n)` -/
def P2514325176268632554.Spec : Prop :=
  ∀ n, P2514325176268632554.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P2050662711498547372

`abs(A113417(n))`
-/

namespace A258096.P2050662711498547372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113417 n|

end

end A258096.P2050662711498547372

namespace A258096

/-- `abs(A113417(n))` -/
def P2050662711498547372.Spec : Prop :=
  ∀ n, P2050662711498547372.a n = A258096 n

end A258096

/-! ## A258096.P7725223534582966327

`abs(A113419(n))`
-/

namespace A258096.P7725223534582966327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113419 n|

end

end A258096.P7725223534582966327

namespace A258096

/-- `abs(A113419(n))` -/
def P7725223534582966327.Spec : Prop :=
  ∀ n, P7725223534582966327.a n = A258096 n

end A258096

/-! ## A258096.P16788616819553020653

`abs(A209940(n))`
-/

namespace A258096.P16788616819553020653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209940 n|

end

end A258096.P16788616819553020653

namespace A258096

/-- `abs(A209940(n))` -/
def P16788616819553020653.Spec : Prop :=
  ∀ n, P16788616819553020653.a n = A258096 n

end A258096

/-! ## A258096.P551704628552541362

`gcd(A000038(n), A113417(n))`
-/

namespace A258096.P551704628552541362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113417 n)

end

end A258096.P551704628552541362

namespace A258096

/-- `gcd(A000038(n), A113417(n))` -/
def P551704628552541362.Spec : Prop :=
  ∀ n, (P551704628552541362.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P9922696129657432560

`gcd(A113419(n), A130706(n))`
-/

namespace A258096.P9922696129657432560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113419 n) (A130706 n)

end

end A258096.P9922696129657432560

namespace A258096

/-- `gcd(A113419(n), A130706(n))` -/
def P9922696129657432560.Spec : Prop :=
  ∀ n, (P9922696129657432560.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P2596340323468319470

`gcd(A189071(n), A209940(n))`
-/

namespace A258096.P2596340323468319470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189071 n) (A209940 n)

end

end A258096.P2596340323468319470

namespace A258096

/-- `gcd(A189071(n), A209940(n))` -/
def P2596340323468319470.Spec : Prop :=
  ∀ n, (P2596340323468319470.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P10764845714930689472

`lcm(A000034(n), A113417(n))`
-/

namespace A258096.P10764845714930689472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A113417 n)

end

end A258096.P10764845714930689472

namespace A258096

/-- `lcm(A000034(n), A113417(n))` -/
def P10764845714930689472.Spec : Prop :=
  ∀ n, (P10764845714930689472.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P11621821465670654002

`lcm(A014695(n), A113419(n))`
-/

namespace A258096.P11621821465670654002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A113419 n)

end

end A258096.P11621821465670654002

namespace A258096

/-- `lcm(A014695(n), A113419(n))` -/
def P11621821465670654002.Spec : Prop :=
  ∀ n, (P11621821465670654002.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P349716430546187410

`lcm(A014709(n), A209940(n))`
-/

namespace A258096.P349716430546187410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A209940 n)

end

end A258096.P349716430546187410

namespace A258096

/-- `lcm(A014709(n), A209940(n))` -/
def P349716430546187410.Spec : Prop :=
  ∀ n, (P349716430546187410.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P3529027180867196210

`A209940(n)/A057077(A057077(n)+n)`
-/

namespace A258096.P3529027180867196210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209940 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A258096.P3529027180867196210

namespace A258096

/-- `A209940(n)/A057077(A057077(n)+n)` -/
def P3529027180867196210.Spec : Prop :=
  ∀ n, P3529027180867196210.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P3029356159544161848

`A113417(n)*A113419(n)/A209940(n)`
-/

namespace A258096.P3029356159544161848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n * A113419 n : ℚ) / (A209940 n : ℚ)

end

end A258096.P3029356159544161848

namespace A258096

/-- `A113417(n)*A113419(n)/A209940(n)` -/
def P3029356159544161848.Spec : Prop :=
  ∀ n, P3029356159544161848.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P14114009465231507916

`A109039(n)*A209940(n)/A257656(n)`
-/

namespace A258096.P14114009465231507916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A209940 n : ℚ) / (A257656 n : ℚ)

end

end A258096.P14114009465231507916

namespace A258096

/-- `A109039(n)*A209940(n)/A257656(n)` -/
def P14114009465231507916.Spec : Prop :=
  ∀ n, P14114009465231507916.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P12968182375759513205

`lcm(A087960(n)*A113419(n), A087960(n))`
-/

namespace A258096.P12968182375759513205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n * A113419 n) (A087960 n)

end

end A258096.P12968182375759513205

namespace A258096

/-- `lcm(A087960(n)*A113419(n), A087960(n))` -/
def P12968182375759513205.Spec : Prop :=
  ∀ n, (P12968182375759513205.a n : ℤ) = A258096 n

end A258096

/-! ## A258096.P18296217299614944659

`A124340(Δ[n²])`
-/

namespace A258096.P18296217299614944659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124340 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A258096.P18296217299614944659

namespace A258096

/-- `A124340(Δ[n²])` -/
def P18296217299614944659.Spec : Prop :=
  ∀ n, P18296217299614944659.a n = A258096 n

end A258096

/-! ## A258096.P4460911263683939194

`abs(A117000(Δ[n²]))`
-/

namespace A258096.P4460911263683939194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A258096.P4460911263683939194

namespace A258096

/-- `abs(A117000(Δ[n²]))` -/
def P4460911263683939194.Spec : Prop :=
  ∀ n, P4460911263683939194.a n = A258096 n

end A258096

/-! ## A258096.P18287116623227708904

`A320193(Δ[n²])/2`
-/

namespace A258096.P18287116623227708904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A258096.P18287116623227708904

namespace A258096

/-- `A320193(Δ[n²])/2` -/
def P18287116623227708904.Spec : Prop :=
  ∀ n, P18287116623227708904.a n = (A258096 n : ℚ)

end A258096

/-! ## A258096.P11866484400708295458

`abs(A113418(2*n+1))`
-/

namespace A258096.P11866484400708295458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113418 (2 * n + 1)|

end

end A258096.P11866484400708295458

namespace A258096

/-- `abs(A113418(2*n+1))` -/
def P11866484400708295458.Spec : Prop :=
  ∀ n, P11866484400708295458.a n = A258096 n

end A258096

/-!
# A258097: Number of nonnegative integers that can be computed using exactly n n's and the four basic arithmetic operations {+, -, *, /}.

The programs for A258097, there is no canonical definition to state claims against.
-/

/-! ## A258097.P4523757387925196597

`A236762(A102726(n))+A116903(n)`
-/

namespace A258097.P4523757387925196597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236762 (A102726 n).toNat + A116903 n

end

end A258097.P4523757387925196597

/-! ## A258097.P1526964100150628978

`∑[∑[A094727(A354013(n))]]`
-/

namespace A258097.P1526964100150628978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A354013 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258097.P1526964100150628978

/-!
# A258098: 3x + 1 sequence starting at 79.

The programs for A258098, the canonical program `A258098.P2093917202914971256` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258098 has offset 0).

The definition of A258098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258098.P2093917202914971256

`A006370(a(n-1))` with `a(0)=79`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258098

/-- `A006370(a(n-1))` -/
def P2093917202914971256.Spec : Prop :=
  ∀ n, P2093917202914971256.a n = A258098 n

theorem P2093917202914971256.correct : P2093917202914971256.Spec := by
  intro n
  simp only [A258098]

end A258098

/-!
# A258099: Expansion of ( psi(x^3) * phi(-x^3) / (psi(x) * f(-x^2)) )^2 in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A258099, there is no canonical definition to state claims against.
-/

/-! ## A258099.P8665570269080209140

`A258100(3*n+1)`
-/

namespace A258099.P8665570269080209140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258100 (3 * n + 1)

end

end A258099.P8665570269080209140

/-! ## A258099.P2183656864844279239

`A033999(n)*A132977(n)`
-/

namespace A258099.P2183656864844279239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132977 n

end

end A258099.P2183656864844279239

/-! ## A258099.P17859069771514757875

`A057077(2*n)*A132977(n)`
-/

namespace A258099.P17859069771514757875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A132977 n

end

end A258099.P17859069771514757875

/-! ## A258099.P9083034510307867446

`A122830(3*n+1)`
-/

namespace A258099.P9083034510307867446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122830 (3 * n + 1)

end

end A258099.P9083034510307867446

/-! ## A258099.P10698195047526781873

`A124243(3*n+1)`
-/

namespace A258099.P10698195047526781873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124243 (3 * n + 1)

end

end A258099.P10698195047526781873

/-! ## A258099.P5615372067575978583

`A122831(3*n+1)/3`
-/

namespace A258099.P5615372067575978583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122831 (3 * n + 1) : ℚ) / 3

end

end A258099.P5615372067575978583

/-! ## A258099.P7800038168566285476

`A132977(n)/A164271(n)*A233698(n)`
-/

namespace A258099.P7800038168566285476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 n : ℚ) / (A164271 n : ℚ) * (A233698 n : ℚ)

end

end A258099.P7800038168566285476

