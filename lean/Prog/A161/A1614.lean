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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A161400: Positive integers that are palindromes (of even length) in binary, each made by concatenating two identical binary palindromes.

The programs for A161400, the canonical program `A161400.P17131858128479350872` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161400 has offset 1).

The definition of A161400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161400.P4431672432278693477

`(A175920(A006995(n+2))+2)*A006995(n+2)`
-/

namespace A161400.P4431672432278693477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175920 (A006995 (n + 2)).toNat + 2) * A006995 (n + 2)

end

end A161400.P4431672432278693477

namespace A161400

/-- `(A175920(A006995(n+2))+2)*A006995(n+2)` -/
def P4431672432278693477.Spec : Prop :=
  ∀ n, P4431672432278693477.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P17131858128479350872

`A076877(A082662(n+1))*A175298(A082662(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161400

/-- `A076877(A082662(n+1))*A175298(A082662(n+1))` -/
def P17131858128479350872.Spec : Prop :=
  ∀ n, P17131858128479350872.a n = A161400 (n + 1)

theorem P17131858128479350872.correct : P17131858128479350872.Spec := by
  intro n
  simp only [A161400, Nat.add_sub_cancel]

end A161400

/-! ## A161400.P11840137960132019490

`A020330(record[A265509(n)])`
-/

namespace A161400.P11840137960132019490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161400.P11840137960132019490

namespace A161400

/-- `A020330(record[A265509(n)])` -/
def P11840137960132019490.Spec : Prop :=
  ∀ n, P11840137960132019490.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P9641723264601547367

`A020330(A006995(n+2))`
-/

namespace A161400.P9641723264601547367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (A006995 (n + 2)).toNat

end

end A161400.P9641723264601547367

namespace A161400

/-- `A020330(A006995(n+2))` -/
def P9641723264601547367.Spec : Prop :=
  ∀ n, P9641723264601547367.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P1882610380704204325

`A020330(∑[A164126(n+1)])`
-/

namespace A161400.P1882610380704204325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161400.P1882610380704204325

namespace A161400

/-- `A020330(∑[A164126(n+1)])` -/
def P1882610380704204325.Spec : Prop :=
  ∀ n, P1882610380704204325.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P8675710908646998851

`A020330(Δ[A206920(n+1)])`
-/

namespace A161400.P8675710908646998851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (f1 (n + 1) - f1 n).toNat

end

end A161400.P8675710908646998851

namespace A161400

/-- `A020330(Δ[A206920(n+1)])` -/
def P8675710908646998851.Spec : Prop :=
  ∀ n, P8675710908646998851.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P11860621826786036621

`∩[A020330(n+1), A048701(n)]`
-/

namespace A161400.P11860621826786036621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P11860621826786036621

namespace A161400

/-- `∩[A020330(n+1), A048701(n)]` -/
def P11860621826786036621.Spec : Prop :=
  ∀ n, (P11860621826786036621.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P9930305805605041105

`∩[A020330(n+1), A373941(n+1)]`
-/

namespace A161400.P9930305805605041105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P9930305805605041105

namespace A161400

/-- `∩[A020330(n+1), A373941(n+1)]` -/
def P9930305805605041105.Spec : Prop :=
  ∀ n, (P9930305805605041105.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P14703258501987775337

`A048701(A164126(n+1)+A006995(n+1))`
-/

namespace A161400.P14703258501987775337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (A164126 (n + 1) + A006995 (n + 1)).toNat

end

end A161400.P14703258501987775337

namespace A161400

/-- `A048701(A164126(n+1)+A006995(n+1))` -/
def P14703258501987775337.Spec : Prop :=
  ∀ n, P14703258501987775337.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P1093584845612275103

`A048701(A162843(n+1)/A162844(n+1))`
-/

namespace A161400.P1093584845612275103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (SequenceMachineLib.roundAway ((A162843 (n + 1) : ℚ) / (A162844 (n + 1) : ℚ))).toNat

end

end A161400.P1093584845612275103

namespace A161400

/-- `A048701(A162843(n+1)/A162844(n+1))` -/
def P1093584845612275103.Spec : Prop :=
  ∀ n, P1093584845612275103.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P16986836516518663583

`A048701(A006995(A090701(A298474(n+2))))`
-/

namespace A161400.P16986836516518663583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (A006995 (A090701 (A298474 (n + 2)).toNat).toNat).toNat

end

end A161400.P16986836516518663583

namespace A161400

/-- `A048701(A006995(A090701(A298474(n+2))))` -/
def P16986836516518663583.Spec : Prop :=
  ∀ n, P16986836516518663583.a n = A161400 (n + 1)

end A161400

/-! ## A161400.P907714001102035613

`∩[A020330(n+1), A306740(n+1)]`
-/

namespace A161400.P907714001102035613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P907714001102035613

namespace A161400

/-- `∩[A020330(n+1), A306740(n+1)]` -/
def P907714001102035613.Spec : Prop :=
  ∀ n, (P907714001102035613.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P18240061022539571051

`∩[A020330(n+1), A175544(n+1)]`
-/

namespace A161400.P18240061022539571051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P18240061022539571051

namespace A161400

/-- `∩[A020330(n+1), A175544(n+1)]` -/
def P18240061022539571051.Spec : Prop :=
  ∀ n, (P18240061022539571051.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P11439955785045466446

`∩[A020330(n+1), A180204(n+1)]`
-/

namespace A161400.P11439955785045466446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P11439955785045466446

namespace A161400

/-- `∩[A020330(n+1), A180204(n+1)]` -/
def P11439955785045466446.Spec : Prop :=
  ∀ n, (P11439955785045466446.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P7332122107972278787

`∩[A175468(n+1), A175544(n+1)]`
-/

namespace A161400.P7332122107972278787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P7332122107972278787

namespace A161400

/-- `∩[A175468(n+1), A175544(n+1)]` -/
def P7332122107972278787.Spec : Prop :=
  ∀ n, (P7332122107972278787.a n : ℤ) = A161400 (n + 1)

end A161400

/-! ## A161400.P985845800046017039

`∩[A175468(n+1), A373941(n+1)]`
-/

namespace A161400.P985845800046017039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161400.P985845800046017039

namespace A161400

/-- `∩[A175468(n+1), A373941(n+1)]` -/
def P985845800046017039.Spec : Prop :=
  ∀ n, (P985845800046017039.a n : ℤ) = A161400 (n + 1)

end A161400

/-!
# A161401: Numbers n such that the count of primes among the permutations of the digits of n is greater than 1.

The programs for A161401, there is no canonical definition to state claims against.
-/

/-! ## A161401.P12406947983095064296

`lt[1, A039999(n+1)]+1`
-/

namespace A161401.P12406947983095064296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161401.P12406947983095064296

/-! ## A161401.P7092952375235451387

`lt[1, A039999(A028310(n))]`
-/

namespace A161401.P7092952375235451387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161401.P7092952375235451387

/-! ## A161401.P5783625482136790413

`A020725(lt[1, A039999(n+1)])`
-/

namespace A161401.P5783625482136790413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161401.P5783625482136790413

/-! ## A161401.P7881271943551390358

`A222257(lt[1, A039999(n+1)])`
-/

namespace A161401.P7881271943551390358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161401.P7881271943551390358

/-! ## A161401.P12589232411640355347

`eq[2, A152669(a(A039999(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A161401.P12589232411640355347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A152669 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P12589232411640355347

/-! ## A161401.P4503162377441563

`eq[2, A065033(a(A039999(n)))]` with `a(0)=7, a(1)=8`
-/

namespace A161401.P4503162377441563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f2 =>
  A065033 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P4503162377441563

/-! ## A161401.P3203940267962124943

`eq[2, A178623(a(A039999(n)))]` with `a(0)=7, a(1)=8`
-/

namespace A161401.P3203940267962124943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f2 =>
  A178623 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P3203940267962124943

/-! ## A161401.P2934391391539497202

`eq[2, A000010(a(A039999(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A161401.P2934391391539497202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A000010 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P2934391391539497202

/-! ## A161401.P861353915809960749

`eq[2, A000720(a(A039999(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A161401.P861353915809960749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A000720 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P861353915809960749

/-! ## A161401.P5620258605652104474

`eq[2, A003557(a(A039999(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A161401.P5620258605652104474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A003557 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161401.P5620258605652104474

/-!
# A161402: Numbers having more than 2 primes among the permutations of their digits.

The programs for A161402, there is no canonical definition to state claims against.
-/

/-! ## A161402.P1711853494805476398

`lt[2, A039999(n+1)]+1`
-/

namespace A161402.P1711853494805476398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161402.P1711853494805476398

/-! ## A161402.P18057296367441385568

`lt[2, A039999(A028310(n))]`
-/

namespace A161402.P18057296367441385568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161402.P18057296367441385568

/-! ## A161402.P16183864440275866519

`A020725(lt[2, A039999(n+1)])`
-/

namespace A161402.P16183864440275866519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161402.P16183864440275866519

/-! ## A161402.P2356758359747345872

`A222257(lt[2, A039999(n+1)])`
-/

namespace A161402.P2356758359747345872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161402.P2356758359747345872

/-! ## A161402.P14703360515030862770

`eq[2, A152669(a(A039999(n)))]` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A161402.P14703360515030862770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3] fun n f2 =>
  A152669 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P14703360515030862770

/-! ## A161402.P16215459398141036778

`eq[2, A000010(a(A039999(n)))]` with `a(0)=5, a(1)=5, a(2)=8`
-/

namespace A161402.P16215459398141036778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 8] fun n f2 =>
  A000010 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P16215459398141036778

/-! ## A161402.P211205820725278704

`eq[2, A178623(a(A039999(n)))]` with `a(0)=4, a(1)=7, a(2)=8`
-/

namespace A161402.P211205820725278704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 7, 8] fun n f2 =>
  A178623 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P211205820725278704

/-! ## A161402.P1569811806505104984

`eq[2, A065033(a(A039999(n)))]` with `a(0)=5, a(1)=7, a(2)=8`
-/

namespace A161402.P1569811806505104984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 8] fun n f2 =>
  A065033 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P1569811806505104984

/-! ## A161402.P8555074926549483644

`eq[2, A000720(a(A039999(n)))]` with `a(0)=5, a(1)=8, a(2)=8`
-/

namespace A161402.P8555074926549483644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 8, 8] fun n f2 =>
  A000720 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P8555074926549483644

/-! ## A161402.P10824118491457925584

`eq[2, A086161(a(A039999(n)))]` with `a(0)=5, a(1)=8, a(2)=8`
-/

namespace A161402.P10824118491457925584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 8, 8] fun n f2 =>
  A086161 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161402.P10824118491457925584

/-!
# A161403: Numbers n such that the count of primes among the permutations of the digits of n is greater than 3.

The programs for A161403, there is no canonical definition to state claims against.
-/

/-! ## A161403.P8645293959710375222

`lt[3, A039999(A028310(n))]`
-/

namespace A161403.P8645293959710375222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161403.P8645293959710375222

/-! ## A161403.P7023678833285377188

`A020725(lt[3, A039999(n+1)])`
-/

namespace A161403.P7023678833285377188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161403.P7023678833285377188

/-! ## A161403.P18374038397591415216

`A222257(lt[3, A039999(n+1)])`
-/

namespace A161403.P18374038397591415216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161403.P18374038397591415216

/-! ## A161403.P10544322790532348549

`eq[2, A178623(a(A039999(n)))]` with `a(0)=0, a(1)=0, a(2)=7, a(3)=8`
-/

namespace A161403.P10544322790532348549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 7, 8] fun n f2 =>
  A178623 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161403.P10544322790532348549

/-! ## A161403.P11287378082270343504

`eq[4, A039999(A233583(n+1))]`
-/

namespace A161403.P11287378082270343504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161403.P11287378082270343504

/-!
# A161404: Numbers having more than 7 primes among the permutations of their digits.

The programs for A161404, there is no canonical definition to state claims against.
-/

/-! ## A161404.P9126329055068335371

`A222257(lt[7, A039999(n+1)])`
-/

namespace A161404.P9126329055068335371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161404.P9126329055068335371

/-!
# A161407: Number of partitions of n^2 into parts smaller than n.

The programs for A161407, there is no canonical definition to state claims against.
-/

/-! ## A161407.P4773507790198595068

`A316353((A000038(n)+n)²)`
-/

namespace A161407.P4773507790198595068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((A000038 n + (n : ℤ)) ^ 2).toNat

end

end A161407.P4773507790198595068

/-! ## A161407.P14264725452523177885

`A316353((n-A000038(n))²)`
-/

namespace A161407.P14264725452523177885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (((n : ℤ) - A000038 n) ^ 2).toNat

end

end A161407.P14264725452523177885

/-! ## A161407.P3807309826641847278

`A316353(or(n, A000038(n))²)`
-/

namespace A161407.P3807309826641847278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (Int.lor (n : ℤ) (A000038 n) ^ 2).toNat

end

end A161407.P3807309826641847278

/-! ## A161407.P13697477514845812955

`A316353(xor(n, A000038(n))²)`
-/

namespace A161407.P13697477514845812955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (Int.xor (n : ℤ) (A000038 n) ^ 2).toNat

end

end A161407.P13697477514845812955

/-! ## A161407.P16182008697643398226

`A316353(2*A179865(n+1)-n)`
-/

namespace A161407.P16182008697643398226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (2 * A179865 (n + 1) - (n : ℤ)).toNat

end

end A161407.P16182008697643398226

/-! ## A161407.P6756163331241370674

`A316353((A233583(2*n+1)-n)²)`
-/

namespace A161407.P6756163331241370674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((A233583 (2 * n + 1) - (n : ℤ)) ^ 2).toNat

end

end A161407.P6756163331241370674

/-! ## A161407.P17587216685047123151

`A316353(A000290(n)+A000038(n))`
-/

namespace A161407.P17587216685047123151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A000290 n + A000038 n).toNat

end

end A161407.P17587216685047123151

/-! ## A161407.P16570593870369157511

`A316353(or(A000038(n), A000290(n)))`
-/

namespace A161407.P16570593870369157511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (Int.lor (A000038 n) (A000290 n)).toNat

end

end A161407.P16570593870369157511

/-! ## A161407.P13666610299750363740

`A316353(xor(A000038(n), A000290(n)))`
-/

namespace A161407.P13666610299750363740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (Int.xor (A000038 n) (A000290 n)).toNat

end

end A161407.P13666610299750363740

/-! ## A161407.P14251514991537296803

`A316353(A028310(n)+A253909(n)-n)`
-/

namespace A161407.P14251514991537296803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A028310 n + (A253909 n - (n : ℤ))).toNat

end

end A161407.P14251514991537296803

/-! ## A161407.P280092395766891868

`A316353(A028310(n)-(n-A253909(n)))`
-/

namespace A161407.P280092395766891868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A028310 n - ((n : ℤ) - A253909 n)).toNat

end

end A161407.P280092395766891868

/-! ## A161407.P4203830526277371482

`A316353(A179865(n+1)+A179865(n+1)-n)`
-/

namespace A161407.P4203830526277371482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A179865 (n + 1) + (A179865 (n + 1) - (n : ℤ))).toNat

end

end A161407.P4203830526277371482

/-!
# A161408: Number of partitions of n^2 into parts greater than n.

The programs for A161408, there is no canonical definition to state claims against.
-/

/-! ## A161408.P12622653807438932509

`A303810(A336535(n+1)-n)`
-/

namespace A161408.P12622653807438932509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A336535 (n + 1) - (n : ℤ)).toNat

end

end A161408.P12622653807438932509

/-! ## A161408.P5147731572606506120

`A026794(A163102(n)+A000217(n+1))`
-/

namespace A161408.P5147731572606506120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A163102 n + A000217 (n + 1)).toNat

end

end A161408.P5147731572606506120

/-! ## A161408.P959497095952424944

`A033182(A094789(n+1)+10)`
-/

namespace A161408.P959497095952424944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A094789 (n + 1) + 10).toNat

end

end A161408.P959497095952424944

/-! ## A161408.P3955167985637736688

`A023193(A061396(n))-A096268(n)`
-/

namespace A161408.P3955167985637736688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A061396 n).toNat - A096268 n

end

end A161408.P3955167985637736688

/-!
# A161409: Number of reduced words of length n in the Weyl group E_6 on 6 generators and order 51840.

The programs for A161409, there is no canonical definition to state claims against.
-/

/-! ## A161409.P17612099725180073908

`A343222(A261005(n))+A216175(n+1)`
-/

namespace A161409.P17612099725180073908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A261005 n).toNat + A216175 (n + 1)

end

end A161409.P17612099725180073908

/-! ## A161409.P15696511519236138881

`A002415(n+2)-A094382(A049401(n))`
-/

namespace A161409.P15696511519236138881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 2) - A094382 (A049401 n).toNat

end

end A161409.P15696511519236138881

/-! ## A161409.P13985466399064348718

`or(A216175(n+1), A358477(A049401(n)))`
-/

namespace A161409.P13985466399064348718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A216175 (n + 1)) (A358477 (A049401 n).toNat)

end

end A161409.P13985466399064348718

/-!
# A161410: Number of reduced words of length n in the infinite affine Weyl group (E_6)^{~} on 7 generators.

The programs for A161410, there is no canonical definition to state claims against.
-/

/-! ## A161410.P9260783533106169142

`∑[∑[A299899(A228050(n+1))]]`
-/

namespace A161410.P9260783533106169142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299899 (A228050 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161410.P9260783533106169142

/-! ## A161410.P14678832768910659940

`∑[∑[A003056((n+1)*C(n+7, 7))]]`
-/

namespace A161410.P14678832768910659940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1) * Nat.choose (n + 7) 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161410.P14678832768910659940

/-!
# A161411: First differences of A160410.

The programs for A161411, the canonical program `A161411.P3251608708821509679` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161411 has offset 1).

The definition of A161411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161411.P3251608708821509679

`A048883(n)*4`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161411

/-- `A048883(n)*4` -/
def P3251608708821509679.Spec : Prop :=
  ∀ n, P3251608708821509679.a n = A161411 (n + 1)

theorem P3251608708821509679.correct : P3251608708821509679.Spec := by
  intro n
  simp only [A161411, Nat.add_sub_cancel]

end A161411

/-! ## A161411.P15726266627396934641

`3*a(and(n, n-1))` with `a(0)=4`
-/

namespace A161411.P15726266627396934641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A161411.P15726266627396934641

namespace A161411

/-- `3*a(and(n, n-1))` -/
def P15726266627396934641.Spec : Prop :=
  ∀ n, (P15726266627396934641.a n : ℤ) = A161411 (n + 1)

end A161411

/-! ## A161411.P14123550840155006898

`3*a(n-2^floor(log2(n)))` with `a(0)=4`
-/

namespace A161411.P14123550840155006898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  3 * a (n - 2 ^ Nat.log 2 n)

end

end A161411.P14123550840155006898

namespace A161411

/-- `3*a(n-2^floor(log2(n)))` -/
def P14123550840155006898.Spec : Prop :=
  ∀ n, (P14123550840155006898.a n : ℤ) = A161411 (n + 1)

end A161411

/-! ## A161411.P1728801657638320641

`4*(A151712(n)-1)`
-/

namespace A161411.P1728801657638320641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A151712 n - 1)

end

end A161411.P1728801657638320641

namespace A161411

/-- `4*(A151712(n)-1)` -/
def P1728801657638320641.Spec : Prop :=
  ∀ n, P1728801657638320641.a n = A161411 (n + 1)

theorem P1728801657638320641.correct : P1728801657638320641.Spec := by
  intro n
  simp only [A161411, Nat.add_sub_cancel, A161411.P1728801657638320641.a, A161411.P3251608708821509679.a, A048883, A048883.P5685372570370684853.a, A151712, A151712.P17763347096143698757.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161411

/-! ## A161411.P15064416221079110565

`4*3^A000120(n)`
-/

namespace A161411.P15064416221079110565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (3 : ℚ) ^ (A000120 n : ℤ)

end

end A161411.P15064416221079110565

namespace A161411

/-- `4*3^A000120(n)` -/
def P15064416221079110565.Spec : Prop :=
  ∀ n, P15064416221079110565.a n = (A161411 (n + 1) : ℚ)

end A161411

/-! ## A161411.P17192460220747537995

`4/3*A162349(n+1)`
-/

namespace A161411.P17192460220747537995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A162349 (n + 1) : ℚ)

end

end A161411.P17192460220747537995

namespace A161411

/-- `4/3*A162349(n+1)` -/
def P17192460220747537995.Spec : Prop :=
  ∀ n, P17192460220747537995.a n = (A161411 (n + 1) : ℚ)

theorem P17192460220747537995.correct : P17192460220747537995.Spec := by
  intro n
  simp only [A161411, Nat.add_sub_cancel, A161411.P17192460220747537995.a, A161411.P3251608708821509679.a, A048883, A048883.P5685372570370684853.a, A162349, A162349.P17912543935636946866.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161411

/-! ## A161411.P15613089208728220221

`A003959(A160713(n))`
-/

namespace A161411.P15613089208728220221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A160713 n).toNat

end

end A161411.P15613089208728220221

namespace A161411

/-- `A003959(A160713(n))` -/
def P15613089208728220221.Spec : Prop :=
  ∀ n, P15613089208728220221.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P17510600150053036501

`A003946(A000120(n)+1)`
-/

namespace A161411.P17510600150053036501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (A000120 n + 1).toNat

end

end A161411.P17510600150053036501

namespace A161411

/-- `A003946(A000120(n)+1)` -/
def P17510600150053036501.Spec : Prop :=
  ∀ n, P17510600150053036501.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P6764072161978421171

`2*A025192(A000120(n)+1)`
-/

namespace A161411.P6764072161978421171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025192 (A000120 n + 1).toNat

end

end A161411.P6764072161978421171

namespace A161411

/-- `2*A025192(A000120(n)+1)` -/
def P6764072161978421171.Spec : Prop :=
  ∀ n, P6764072161978421171.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P6131582084346184634

`A068911(2*(A000120(n)+1))`
-/

namespace A161411.P6131582084346184634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (2 * (A000120 n + 1)).toNat

end

end A161411.P6131582084346184634

namespace A161411

/-- `A068911(2*(A000120(n)+1))` -/
def P6131582084346184634.Spec : Prop :=
  ∀ n, P6131582084346184634.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P16236642698372935124

`2*2*A006046(A001316(n))`
-/

namespace A161411.P16236642698372935124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A006046 (A001316 n).toNat)

end

end A161411.P16236642698372935124

namespace A161411

/-- `2*2*A006046(A001316(n))` -/
def P16236642698372935124.Spec : Prop :=
  ∀ n, P16236642698372935124.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P12778873976864874928

`A162349(n+1)+A048883(n)`
-/

namespace A161411.P12778873976864874928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162349 (n + 1) + A048883 n

end

end A161411.P12778873976864874928

namespace A161411

/-- `A162349(n+1)+A048883(n)` -/
def P12778873976864874928.Spec : Prop :=
  ∀ n, P12778873976864874928.a n = A161411 (n + 1)

theorem P12778873976864874928.correct : P12778873976864874928.Spec := by
  intro n
  simp only [A161411, Nat.add_sub_cancel, A161411.P12778873976864874928.a, A161411.P3251608708821509679.a, A048883, A048883.P5685372570370684853.a, A162349, A162349.P17912543935636946866.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161411

/-! ## A161411.P15201267635247388233

`Δ[A160410(n)]`
-/

namespace A161411.P15201267635247388233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161411.P15201267635247388233

namespace A161411

/-- `Δ[A160410(n)]` -/
def P15201267635247388233.Spec : Prop :=
  ∀ n, P15201267635247388233.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P14779276658989637482

`2*A003972(A131136(n+1))`
-/

namespace A161411.P14779276658989637482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003972 (A131136 (n + 1)).toNat

end

end A161411.P14779276658989637482

namespace A161411

/-- `2*A003972(A131136(n+1))` -/
def P14779276658989637482.Spec : Prop :=
  ∀ n, P14779276658989637482.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P14542640218760988348

`A160410(n+1)-A160410(n)`
-/

namespace A161411.P14542640218760988348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (n + 1) - A160410 n

end

end A161411.P14542640218760988348

namespace A161411

/-- `A160410(n+1)-A160410(n)` -/
def P14542640218760988348.Spec : Prop :=
  ∀ n, P14542640218760988348.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P17592638066060574516

`A147582(A117973(n))`
-/

namespace A161411.P17592638066060574516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A117973 n).toNat

end

end A161411.P17592638066060574516

namespace A161411

/-- `A147582(A117973(n))` -/
def P17592638066060574516.Spec : Prop :=
  ∀ n, P17592638066060574516.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P3294365024298614518

`A147582(2*A001316(n))`
-/

namespace A161411.P3294365024298614518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (2 * A001316 n).toNat

end

end A161411.P3294365024298614518

namespace A161411

/-- `A147582(2*A001316(n))` -/
def P3294365024298614518.Spec : Prop :=
  ∀ n, P3294365024298614518.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P9941424233310505096

`A160742(2*A001316(n))`
-/

namespace A161411.P9941424233310505096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160742 (2 * A001316 n).toNat

end

end A161411.P9941424233310505096

namespace A161411

/-- `A160742(2*A001316(n))` -/
def P9941424233310505096.Spec : Prop :=
  ∀ n, P9941424233310505096.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P6451408753176633367

`2*A057335(A151787(n+1))`
-/

namespace A161411.P6451408753176633367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057335 (A151787 (n + 1)).toNat

end

end A161411.P6451408753176633367

namespace A161411

/-- `2*A057335(A151787(n+1))` -/
def P6451408753176633367.Spec : Prop :=
  ∀ n, P6451408753176633367.a n = A161411 (n + 1)

end A161411

/-! ## A161411.P15929985749512435930

`A266383(2*A001316(n)-1)`
-/

namespace A161411.P15929985749512435930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 (2 * A001316 n - 1).toNat

end

end A161411.P15929985749512435930

namespace A161411

/-- `A266383(2*A001316(n)-1)` -/
def P15929985749512435930.Spec : Prop :=
  ∀ n, P15929985749512435930.a n = A161411 (n + 1)

end A161411

/-!
# A161412: V-toothpick sequence starting at the corner of an infinite square from which protrudes a half toothpick with an angle = Pi/6.

The programs for A161412, there is no canonical definition to state claims against.
-/

/-! ## A161412.P6728690618260236800

`floor(A161420(n+1)/2)`
-/

namespace A161412.P6728690618260236800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161420 (n + 1) : ℚ) / 2⌋

end

end A161412.P6728690618260236800

/-! ## A161412.P6417143037743511670

`(∑[A161421(n+1)]-1)/2`
-/

namespace A161412.P6417143037743511670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161421 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A161412.P6417143037743511670

/-! ## A161412.P12460688045249756851

`∪[comp[2*(n+1)]², ∑[A161413(n+1)]]`
-/

namespace A161412.P12460688045249756851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A161412.P12460688045249756851

/-! ## A161412.P9316565921092623027

`A004524(A161420(n+1))`
-/

namespace A161412.P9316565921092623027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161420 (n + 1)).toNat

end

end A161412.P9316565921092623027

/-! ## A161412.P7090721493728956475

`∑[A004526(Δ[A161420(n)])]`
-/

namespace A161412.P7090721493728956475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161412.P7090721493728956475

/-!
# A161413: First differences of A161412.

The programs for A161413, there is no canonical definition to state claims against.
-/

/-! ## A161413.P8441791735981643648

`Δ[A161412(n)]`
-/

namespace A161413.P8441791735981643648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161413.P8441791735981643648

/-! ## A161413.P5364750048210042397

`A161421(n+2)/2`
-/

namespace A161413.P5364750048210042397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161421 (n + 2) : ℚ) / 2

end

end A161413.P5364750048210042397

/-! ## A161413.P1114248707988302775

`Δ[A161420(n+1)/2]`
-/

namespace A161413.P1114248707988302775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161420 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161413.P1114248707988302775

/-! ## A161413.P7042250190316408400

`A001281(A161421(n+2))`
-/

namespace A161413.P7042250190316408400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161421 (n + 2)).toNat

end

end A161413.P7042250190316408400

/-! ## A161413.P13470460476876372996

`Δ[A000463(A161420(n+1))]`
-/

namespace A161413.P13470460476876372996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A161420 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161413.P13470460476876372996

/-!
# A161415: First differences of A160414.

The programs for A161415, there is no canonical definition to state claims against.
-/

/-! ## A161415.P9937028844798406651

`Δ[A160414(n)]`
-/

namespace A161415.P9937028844798406651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161415.P9937028844798406651

/-! ## A161415.P15346833433925573861

`A160414(n+1)-A160414(n)`
-/

namespace A161415.P15346833433925573861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160414 (n + 1) - A160414 n

end

end A161415.P15346833433925573861

/-! ## A161415.P10531701424734664700

`Δ[A173460(A004273(n)+n)/9]`
-/

namespace A161415.P10531701424734664700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173460 (A004273 n + (n : ℤ)).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161415.P10531701424734664700

/-! ## A161415.P7323052650352942249

`(2%(n+2))!*A151566(A071051(n))`
-/

namespace A161415.P7323052650352942249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 % (n + 2)) : ℤ) * A151566 (A071051 n).toNat

end

end A161415.P7323052650352942249

/-! ## A161415.P14082568220387782811

`Δ[A160412(2*n)/3-A003817(2*n)]`
-/

namespace A161415.P14082568220387782811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160412 (2 * n) : ℚ) / 3 - (A003817 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161415.P14082568220387782811

/-! ## A161415.P14564859614152104306

`A000122(n²)*A151566(A071051(n))`
-/

namespace A161415.P14564859614152104306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A151566 (A071051 n).toNat

end

end A161415.P14564859614152104306

/-! ## A161415.P5226333805394801603

`A020639(2*a(n-1))*A151566(A071051(n))` with `a(0)=1`
-/

namespace A161415.P5226333805394801603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (2 * a (n - 1)).toNat * A151566 (A071051 n).toNat

end

end A161415.P5226333805394801603

/-! ## A161415.P17087634245596428302

`A161411(n+1)+A256531(n+1)-A261695(n+1)`
-/

namespace A161415.P17087634245596428302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161411 (n + 1) + (A256531 (n + 1) - A261695 (n + 1))

end

end A161415.P17087634245596428302

/-! ## A161415.P5927140449680855839

`A020639(A004277(n))*A151566(A071051(n))`
-/

namespace A161415.P5927140449680855839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A151566 (A071051 n).toNat

end

end A161415.P5927140449680855839

/-!
# A161416: Partial sums of A056737.

The programs for A161416, there is no canonical definition to state claims against.
-/

/-! ## A161416.P11460969198450509746

`A219730(n+1)-A219729(n+1)`
-/

namespace A161416.P11460969198450509746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219730 (n + 1) - A219729 (n + 1)

end

end A161416.P11460969198450509746

/-! ## A161416.P620422010775570106

`∑[A056737(n+1)]`
-/

namespace A161416.P620422010775570106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P620422010775570106

/-! ## A161416.P13248756017229027674

`∑[n+1-A101322(n+1)]`
-/

namespace A161416.P13248756017229027674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A101322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P13248756017229027674

/-! ## A161416.P15683362348895070246

`∑[n%A020725(A033677(n+1))]`
-/

namespace A161416.P15683362348895070246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020725 (A033677 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P15683362348895070246

/-! ## A161416.P16147484245240003029

`∑[A033677(n+1)-A033676(n+1)]`
-/

namespace A161416.P16147484245240003029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P16147484245240003029

/-! ## A161416.P1816616445202207816

`∑[A139717(n+1)/A033677(n+1)]`
-/

namespace A161416.P1816616445202207816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P1816616445202207816

/-! ## A161416.P7822351168230330930

`∑[A139717(n+1)/A140271(n+1)]`
-/

namespace A161416.P7822351168230330930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A140271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P7822351168230330930

/-! ## A161416.P6454173194153063864

`∑[∑[A163984(n+1)]-A163984(n+1)]`
-/

namespace A161416.P6454173194153063864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A163984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P6454173194153063864

/-! ## A161416.P4355388164030312877

`∑[2*A033677(n+1)-A063655(n+1)]`
-/

namespace A161416.P4355388164030312877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033677 (n + 1) - A063655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P4355388164030312877

/-! ## A161416.P13058273027012841220

`∑[A162348(2*(n+1))-A162348(2*n+1)]`
-/

namespace A161416.P13058273027012841220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) - A162348 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P13058273027012841220

/-! ## A161416.P1188404147654774691

`∑[A000027(n+1)/A033676(n+1)-A033676(n+1)]`
-/

namespace A161416.P1188404147654774691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ) - (A033676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P1188404147654774691

/-! ## A161416.P15219586892946780826

`∑[A063655(A033677(n+1)²)-A063655(n+1)]`
-/

namespace A161416.P15219586892946780826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A033677 (n + 1) ^ 2).toNat - A063655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161416.P15219586892946780826

/-!
# A161420: V-toothpick sequence starting from a V-toothpick whose central point touch a straight line, as a V.

The programs for A161420, there is no canonical definition to state claims against.
-/

/-! ## A161420.P11914134820462661034

`∑[A161421(n)]`
-/

namespace A161420.P11914134820462661034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161420.P11914134820462661034

/-! ## A161420.P16145172566005066168

`a(n-1)+A001222(A000043(n+1))*A161421(n)` with `a(0)=0`
-/

namespace A161420.P16145172566005066168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001222 (A000043 (n + 1)).toNat * A161421 n

end

end A161420.P16145172566005066168

/-! ## A161420.P9394425844553140506

`A005408(A161412(n))-A161421(n+1)`
-/

namespace A161420.P9394425844553140506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A161412 n).toNat - A161421 (n + 1)

end

end A161420.P9394425844553140506

/-! ## A161420.P7198862601187585109

`A007590(n)-A330025(A250994(n+1))`
-/

namespace A161420.P7198862601187585109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A330025 (A250994 (n + 1)).toNat

end

end A161420.P7198862601187585109

/-!
# A161421: First differences of A161420.

The programs for A161421, there is no canonical definition to state claims against.
-/

/-! ## A161421.P5602618656936850651

`Δ[A161420(floor(n²*acot(n)))]`
-/

namespace A161421.P5602618656936850651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161421.P5602618656936850651

/-! ## A161421.P16369888058508561766

`Δ[A161420(log2(ceil(2^(n-1))))]`
-/

namespace A161421.P16369888058508561766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161421.P16369888058508561766

/-!
# A161423: Primes in A161420.

The programs for A161423, there is no canonical definition to state claims against.
-/

/-! ## A161423.P2471180934752938477

`p?[A161420(n)]`
-/

namespace A161423.P2471180934752938477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161423.P2471180934752938477

/-! ## A161423.P13534081686828261461

`p?[∑[A161421(n)]]`
-/

namespace A161423.P13534081686828261461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161423.P13534081686828261461

/-! ## A161423.P8302744456544359620

`filter[A161420(n), A358771(#)]`
-/

namespace A161423.P8302744456544359620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A161423.P8302744456544359620

/-! ## A161423.P9434198650876147638

`record[A001414(A161420(n+2))]`
-/

namespace A161423.P9434198650876147638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A161420 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161423.P9434198650876147638

/-! ## A161423.P1268060840395504596

`filter[A161420(n+1), A010051(#)]`
-/

namespace A161423.P1268060840395504596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161423.P1268060840395504596

/-!
# A161424: Numbers k whose largest divisor <= sqrt(k) equals 4.

The programs for A161424, the canonical program `A161424.P13170212331515074192` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161424 has offset 1).

The definition of A161424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161424.P17049803411685278864

`2*A161425(n+1)`
-/

namespace A161424.P17049803411685278864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161425 (n + 1)

end

end A161424.P17049803411685278864

namespace A161424

/-- `2*A161425(n+1)` -/
def P17049803411685278864.Spec : Prop :=
  ∀ n, P17049803411685278864.a n = A161424 (n + 1)

theorem P17049803411685278864.correct : P17049803411685278864.Spec := by
  intro n
  simp only [A161424, Nat.add_sub_cancel, A161424.P17049803411685278864.a, A161424.P13170212331515074192.a, A161425, A161425.P4609620829610950226.a, A161428, A161428.P18072400539995113599.f1, A161428.P18072400539995113599.a, A073846, A073846.P6597412170005078554.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A059841, A059841.P7264174615531153985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161424

/-! ## A161424.P13170212331515074192

`4*A161428(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161424

/-- `4*A161428(n+1)` -/
def P13170212331515074192.Spec : Prop :=
  ∀ n, P13170212331515074192.a n = A161424 (n + 1)

theorem P13170212331515074192.correct : P13170212331515074192.Spec := by
  intro n
  simp only [A161424, Nat.add_sub_cancel]

end A161424

/-! ## A161424.P2816466760775812129

`A161425(n+1)²/A161428(n+1)`
-/

namespace A161424.P2816466760775812129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161425 (n + 1) ^ 2 : ℚ) / (A161428 (n + 1) : ℚ)

end

end A161424.P2816466760775812129

namespace A161424

/-- `A161425(n+1)²/A161428(n+1)` -/
def P2816466760775812129.Spec : Prop :=
  ∀ n, P2816466760775812129.a n = (A161424 (n + 1) : ℚ)

end A161424

/-! ## A161424.P8555705053814939271

`record[4*A255004(n+4)]`
-/

namespace A161424.P8555705053814939271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255004 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161424.P8555705053814939271

namespace A161424

/-- `record[4*A255004(n+4)]` -/
def P8555705053814939271.Spec : Prop :=
  ∀ n, P8555705053814939271.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P12963973943029359614

`2*record[A006530(7*(n+1))+or(1, n)]`
-/

namespace A161424.P12963973943029359614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (n + 1)) + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161424.P12963973943029359614

namespace A161424

/-- `2*record[A006530(7*(n+1))+or(1, n)]` -/
def P12963973943029359614.Spec : Prop :=
  ∀ n, P12963973943029359614.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P13346547300060095946

`2*record[A006530(7*(2*n+1))+2*n+1]`
-/

namespace A161424.P13346547300060095946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (2 * n + 1)) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161424.P13346547300060095946

namespace A161424

/-- `2*record[A006530(7*(2*n+1))+2*n+1]` -/
def P13346547300060095946.Spec : Prop :=
  ∀ n, P13346547300060095946.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P4361675987616985432

`record[4*A092487(n+2)]`
-/

namespace A161424.P4361675987616985432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A092487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161424.P4361675987616985432

namespace A161424

/-- `record[4*A092487(n+2)]` -/
def P4361675987616985432.Spec : Prop :=
  ∀ n, P4361675987616985432.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P17314329706130417434

`A008574(A161428(n+1))`
-/

namespace A161424.P17314329706130417434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A161428 (n + 1)).toNat

end

end A161424.P17314329706130417434

namespace A161424

/-- `A008574(A161428(n+1))` -/
def P17314329706130417434.Spec : Prop :=
  ∀ n, P17314329706130417434.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P7935616090975771241

`A004277(A161425(n+1))`
-/

namespace A161424.P7935616090975771241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161425 (n + 1)).toNat

end

end A161424.P7935616090975771241

namespace A161424

/-- `A004277(A161425(n+1))` -/
def P7935616090975771241.Spec : Prop :=
  ∀ n, P7935616090975771241.a n = A161424 (n + 1)

end A161424

/-! ## A161424.P8188002068988395204

`eq[4, A033676(n+1)]+1`
-/

namespace A161424.P8188002068988395204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161424.P8188002068988395204

namespace A161424

/-- `eq[4, A033676(n+1)]+1` -/
def P8188002068988395204.Spec : Prop :=
  ∀ n, (P8188002068988395204.a n : ℤ) = A161424 (n + 1)

end A161424

/-! ## A161424.P6903341903549149616

`record[4*A033677(4*(n+2))]`
-/

namespace A161424.P6903341903549149616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033677 (4 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161424.P6903341903549149616

namespace A161424

/-- `record[4*A033677(4*(n+2))]` -/
def P6903341903549149616.Spec : Prop :=
  ∀ n, P6903341903549149616.a n = A161424 (n + 1)

end A161424

/-!
# A161425: a(n) = A161424(n)/2.

The programs for A161425, the canonical program `A161425.P4609620829610950226` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161425 has offset 1).

The definition of A161425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161425.P2042605411743118384

`A161424(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161425.P2042605411743118384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161424 (n + 1) : ℚ) / 2

end

end A161425.P2042605411743118384

namespace A161425

/-- `A161424(n+1)/2` -/
def P2042605411743118384.Spec : Prop :=
  ∀ n, P2042605411743118384.a n = (A161425 (n + 1) : ℚ)

theorem P2042605411743118384.correct : P2042605411743118384.Spec := by
  intro n
  simp only [A161425, Nat.add_sub_cancel, A161425.P2042605411743118384.a, A161425.P4609620829610950226.a, A161424, A161424.P13170212331515074192.a, A161428, A161428.P18072400539995113599.f1, A161428.P18072400539995113599.a, A073846, A073846.P6597412170005078554.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A059841, A059841.P7264174615531153985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161425

/-! ## A161425.P4609620829610950226

`2*A161428(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161425

/-- `2*A161428(n+1)` -/
def P4609620829610950226.Spec : Prop :=
  ∀ n, P4609620829610950226.a n = A161425 (n + 1)

theorem P4609620829610950226.correct : P4609620829610950226.Spec := by
  intro n
  simp only [A161425, Nat.add_sub_cancel]

end A161425

/-! ## A161425.P17813225714871380555

`A161424(n+1)-A161428(n+1)-A161428(n+1)`
-/

namespace A161425.P17813225714871380555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161424 (n + 1) - A161428 (n + 1) - A161428 (n + 1)

end

end A161425.P17813225714871380555

namespace A161425

/-- `A161424(n+1)-A161428(n+1)-A161428(n+1)` -/
def P17813225714871380555.Spec : Prop :=
  ∀ n, P17813225714871380555.a n = A161425 (n + 1)

theorem P17813225714871380555.correct : P17813225714871380555.Spec := by
  intro n
  simp only [A161425, Nat.add_sub_cancel, A161425.P17813225714871380555.a, A161425.P4609620829610950226.a, A161424, A161424.P13170212331515074192.a, A161428, A161428.P18072400539995113599.f1, A161428.P18072400539995113599.a, A073846, A073846.P6597412170005078554.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A059841, A059841.P7264174615531153985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161425

/-! ## A161425.P12908466021610206698

`record[2*A255004(n+4)]`
-/

namespace A161425.P12908466021610206698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255004 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161425.P12908466021610206698

namespace A161425

/-- `record[2*A255004(n+4)]` -/
def P12908466021610206698.Spec : Prop :=
  ∀ n, P12908466021610206698.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P14261303224505884029

`record[A006530(7*(n+1))+or(1, n)]`
-/

namespace A161425.P14261303224505884029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (n + 1)) + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161425.P14261303224505884029

namespace A161425

/-- `record[A006530(7*(n+1))+or(1, n)]` -/
def P14261303224505884029.Spec : Prop :=
  ∀ n, P14261303224505884029.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P2724618840433223508

`record[A006530(7*(2*n+1))+2*n+1]`
-/

namespace A161425.P2724618840433223508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (2 * n + 1)) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161425.P2724618840433223508

namespace A161425

/-- `record[A006530(7*(2*n+1))+2*n+1]` -/
def P2724618840433223508.Spec : Prop :=
  ∀ n, P2724618840433223508.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P4644180484300458633

`record[2*A092487(n+2)]`
-/

namespace A161425.P4644180484300458633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161425.P4644180484300458633

namespace A161425

/-- `record[2*A092487(n+2)]` -/
def P4644180484300458633.Spec : Prop :=
  ∀ n, P4644180484300458633.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P10325599383449517037

`2*(lt[A066246(n+4), 4]+4)`
-/

namespace A161425.P10325599383449517037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4)

end

end A161425.P10325599383449517037

namespace A161425

/-- `2*(lt[A066246(n+4), 4]+4)` -/
def P10325599383449517037.Spec : Prop :=
  ∀ n, (P10325599383449517037.a n : ℤ) = A161425 (n + 1)

end A161425

/-! ## A161425.P7914934918845772220

`A004277(A161428(n+1))`
-/

namespace A161425.P7914934918845772220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161428 (n + 1)).toNat

end

end A161425.P7914934918845772220

namespace A161425

/-- `A004277(A161428(n+1))` -/
def P7914934918845772220.Spec : Prop :=
  ∀ n, P7914934918845772220.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P15765194566998258901

`2*A161658(A161346(n+2))`
-/

namespace A161425.P15765194566998258901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161658 (A161346 (n + 2)).toNat

end

end A161425.P15765194566998258901

namespace A161425

/-- `2*A161658(A161346(n+2))` -/
def P15765194566998258901.Spec : Prop :=
  ∀ n, P15765194566998258901.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P12139882391620155175

`record[2*A033677(4*(n+2))]`
-/

namespace A161425.P12139882391620155175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033677 (4 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161425.P12139882391620155175

namespace A161425

/-- `record[2*A033677(4*(n+2))]` -/
def P12139882391620155175.Spec : Prop :=
  ∀ n, P12139882391620155175.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P7490212321349360284

`A001281(A161424(n+1))`
-/

namespace A161425.P7490212321349360284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161424 (n + 1)).toNat

end

end A161425.P7490212321349360284

namespace A161425

/-- `A001281(A161424(n+1))` -/
def P7490212321349360284.Spec : Prop :=
  ∀ n, P7490212321349360284.a n = A161425 (n + 1)

end A161425

/-! ## A161425.P3893776533268941197

`A002265(2*A161424(n+1))`
-/

namespace A161425.P3893776533268941197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A161424 (n + 1)).toNat

end

end A161425.P3893776533268941197

namespace A161425

/-- `A002265(2*A161424(n+1))` -/
def P3893776533268941197.Spec : Prop :=
  ∀ n, P3893776533268941197.a n = A161425 (n + 1)

end A161425

/-!
# A161426: Y-toothpick sequence starting at the outside corner of an infinite triangle-shaped polygon as the sieve of A160120 after 2^k rounds.

The programs for A161426, there is no canonical definition to state claims against.
-/

/-! ## A161426.P13090439324879676513

`A160730(n)-A006257(A007814(n+1))`
-/

namespace A161426.P13090439324879676513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A006257 (A007814 (n + 1)).toNat

end

end A161426.P13090439324879676513

/-! ## A161426.P5721480401638764066

`A160730(n)-A144157(A038712(n+1))`
-/

namespace A161426.P5721480401638764066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A144157 (A038712 (n + 1)).toNat

end

end A161426.P5721480401638764066

/-! ## A161426.P3262373763476800156

`A323646(n+1)-A027420(A007814(n+1))`
-/

namespace A161426.P3262373763476800156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323646 (n + 1) - A027420 (A007814 (n + 1)).toNat

end

end A161426.P3262373763476800156

/-! ## A161426.P16629075026212863650

`A008611(or(A000124(2*n), A298629(2*n+1)))`
-/

namespace A161426.P16629075026212863650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.lor (A000124 (2 * n)) (A298629 (2 * n + 1))).toNat

end

end A161426.P16629075026212863650

/-! ## A161426.P8794898972382198870

`∑[A161427(n+1)]-A161427(n+1)`
-/

namespace A161426.P8794898972382198870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161427 (n + 1)

end

end A161426.P8794898972382198870

/-!
# A161428: a(n) = A161424(n)/4.

The programs for A161428, the canonical program `A161428.P18072400539995113599` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161428 has offset 1).

The definition of A161428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161428.P12778801694864424663

`A161424(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161428.P12778801694864424663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161424 (n + 1) : ℚ) / 4

end

end A161428.P12778801694864424663

namespace A161428

/-- `A161424(n+1)/4` -/
def P12778801694864424663.Spec : Prop :=
  ∀ n, P12778801694864424663.a n = (A161428 (n + 1) : ℚ)

theorem P12778801694864424663.correct : P12778801694864424663.Spec := by
  intro n
  simp only [A161428, Nat.add_sub_cancel, A161428.P12778801694864424663.a, A161428.P18072400539995113599.f1, A161428.P18072400539995113599.a, A073846, A073846.P6597412170005078554.a, A161424, A161424.P13170212331515074192.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A059841, A059841.P7264174615531153985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161428

/-! ## A161428.P10559377665719523433

`A161425(n+1)/2`
-/

namespace A161428.P10559377665719523433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161425 (n + 1) : ℚ) / 2

end

end A161428.P10559377665719523433

namespace A161428

/-- `A161425(n+1)/2` -/
def P10559377665719523433.Spec : Prop :=
  ∀ n, P10559377665719523433.a n = (A161428 (n + 1) : ℚ)

theorem P10559377665719523433.correct : P10559377665719523433.Spec := by
  intro n
  simp only [A161428, Nat.add_sub_cancel, A161428.P10559377665719523433.a, A161428.P18072400539995113599.f1, A161428.P18072400539995113599.a, A073846, A073846.P6597412170005078554.a, A161425, A161425.P4609620829610950226.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A059841, A059841.P7264174615531153985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161428

/-! ## A161428.P18072400539995113599

`record[A073846(4-(-1)^n+n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161428

/-- `record[A073846(4-(-1)^n+n)]` -/
def P18072400539995113599.Spec : Prop :=
  ∀ n, P18072400539995113599.a n = A161428 (n + 1)

theorem P18072400539995113599.correct : P18072400539995113599.Spec := by
  intro n
  simp only [A161428, Nat.add_sub_cancel]

end A161428

/-! ## A161428.P5285898207380451008

`record[A255004(n+4)]`
-/

namespace A161428.P5285898207380451008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255004 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P5285898207380451008

namespace A161428

/-- `record[A255004(n+4)]` -/
def P5285898207380451008.Spec : Prop :=
  ∀ n, P5285898207380451008.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P4453001474667914737

`record[A092487(n+2)]`
-/

namespace A161428.P4453001474667914737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P4453001474667914737

namespace A161428

/-- `record[A092487(n+2)]` -/
def P4453001474667914737.Spec : Prop :=
  ∀ n, P4453001474667914737.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P10839776271085116990

`record[A140255(n+4)-1]`
-/

namespace A161428.P10839776271085116990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P10839776271085116990

namespace A161428

/-- `record[A140255(n+4)-1]` -/
def P10839776271085116990.Spec : Prop :=
  ∀ n, P10839776271085116990.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P2033249839700033388

`lt[A066246(n+4), 4]+4`
-/

namespace A161428.P2033249839700033388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A161428.P2033249839700033388

namespace A161428

/-- `lt[A066246(n+4), 4]+4` -/
def P2033249839700033388.Spec : Prop :=
  ∀ n, (P2033249839700033388.a n : ℤ) = A161428 (n + 1)

end A161428

/-! ## A161428.P14809876805035410117

`A161658(A161346(n+2))`
-/

namespace A161428.P14809876805035410117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (A161346 (n + 2)).toNat

end

end A161428.P14809876805035410117

namespace A161428

/-- `A161658(A161346(n+2))` -/
def P14809876805035410117.Spec : Prop :=
  ∀ n, P14809876805035410117.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P2895026082376404863

`filter[A111688(n+1), A267155(#)]`
-/

namespace A161428.P2895026082376404863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A161428.P2895026082376404863

namespace A161428

/-- `filter[A111688(n+1), A267155(#)]` -/
def P2895026082376404863.Spec : Prop :=
  ∀ n, P2895026082376404863.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P12422006433151481577

`filter[A053577(n+3), A267155(#)]`
-/

namespace A161428.P12422006433151481577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A161428.P12422006433151481577

namespace A161428

/-- `filter[A053577(n+3), A267155(#)]` -/
def P12422006433151481577.Spec : Prop :=
  ∀ n, P12422006433151481577.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P3530062589099637304

`filter[A058363(n+3), A267155(#)]`
-/

namespace A161428.P3530062589099637304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A161428.P3530062589099637304

namespace A161428

/-- `filter[A058363(n+3), A267155(#)]` -/
def P3530062589099637304.Spec : Prop :=
  ∀ n, P3530062589099637304.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P6963693304594511507

`filter[A093515(n+3), A267155(#)]`
-/

namespace A161428.P6963693304594511507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A161428.P6963693304594511507

namespace A161428

/-- `filter[A093515(n+3), A267155(#)]` -/
def P6963693304594511507.Spec : Prop :=
  ∀ n, P6963693304594511507.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P2574853327379510669

`filter[A106092(n+3), A267155(#)]`
-/

namespace A161428.P2574853327379510669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A161428.P2574853327379510669

namespace A161428

/-- `filter[A106092(n+3), A267155(#)]` -/
def P2574853327379510669.Spec : Prop :=
  ∀ n, P2574853327379510669.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P17879791215712798384

`eq[A084360(n+1), A395097(n)]`
-/

namespace A161428.P17879791215712798384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161428.P17879791215712798384

namespace A161428

/-- `eq[A084360(n+1), A395097(n)]` -/
def P17879791215712798384.Spec : Prop :=
  ∀ n, (P17879791215712798384.a n : ℤ) = A161428 (n + 1)

end A161428

/-! ## A161428.P15962010368523979404

`record[A014681(A064920(n+2)+1)]`
-/

namespace A161428.P15962010368523979404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064920 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P15962010368523979404

namespace A161428

/-- `record[A014681(A064920(n+2)+1)]` -/
def P15962010368523979404.Spec : Prop :=
  ∀ n, P15962010368523979404.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P7233182775181614642

`A001281(A161425(n+1))`
-/

namespace A161428.P7233182775181614642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161425 (n + 1)).toNat

end

end A161428.P7233182775181614642

namespace A161428

/-- `A001281(A161425(n+1))` -/
def P7233182775181614642.Spec : Prop :=
  ∀ n, P7233182775181614642.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P12679965561047219401

`record[A033677(4*(n+2))]`
-/

namespace A161428.P12679965561047219401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (4 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P12679965561047219401

namespace A161428

/-- `record[A033677(4*(n+2))]` -/
def P12679965561047219401.Spec : Prop :=
  ∀ n, P12679965561047219401.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P15263017887113085655

`A002265(A161424(n+1))`
-/

namespace A161428.P15263017887113085655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A161424 (n + 1)).toNat

end

end A161428.P15263017887113085655

namespace A161428

/-- `A002265(A161424(n+1))` -/
def P15263017887113085655.Spec : Prop :=
  ∀ n, P15263017887113085655.a n = A161428 (n + 1)

end A161428

/-! ## A161428.P2151720821510580515

`eq[n, A033677(A008574(n))]`
-/

namespace A161428.P2151720821510580515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161428.P2151720821510580515

namespace A161428

/-- `eq[n, A033677(A008574(n))]` -/
def P2151720821510580515.Spec : Prop :=
  ∀ n, (P2151720821510580515.a n : ℤ) = A161428 (n + 1)

end A161428

/-! ## A161428.P14333316290835567838

`A162348(2*A161424(n+1))`
-/

namespace A161428.P14333316290835567838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * A161424 (n + 1)).toNat

end

end A161428.P14333316290835567838

namespace A161428

/-- `A162348(2*A161424(n+1))` -/
def P14333316290835567838.Spec : Prop :=
  ∀ n, P14333316290835567838.a n = A161428 (n + 1)

end A161428

/-!
# A161430: Fractal triangle whose virtual skeleton is a polyedge as the Y-toothpick structure of A160120.

The programs for A161430, there is no canonical definition to state claims against.
-/

/-! ## A161430.P10441347226336671037

`3*A161429(n)`
-/

namespace A161430.P10441347226336671037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161429 n

end

end A161430.P10441347226336671037

/-!
# A161434: Number of 6-compositions.

The programs for A161434, there is no canonical definition to state claims against.
-/

/-! ## A161434.P9515916705713263414

`A261780(eq[6, A025581(n)])`
-/

namespace A161434.P9515916705713263414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161434.P9515916705713263414

/-! ## A161434.P1204502828517258901

`A261780(A000096(n+6)-6)`
-/

namespace A161434.P1204502828517258901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000096 (n + 6) - 6).toNat

end

end A161434.P1204502828517258901

/-! ## A161434.P16089773860494861428

`A261780(A000217(n+7)-7)`
-/

namespace A161434.P16089773860494861428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 7) - 7).toNat

end

end A161434.P16089773860494861428

/-! ## A161434.P1060798968205913517

`A261780(eq[7, A004736(n+1)])`
-/

namespace A161434.P1060798968205913517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161434.P1060798968205913517

/-! ## A161434.P8335874083138351188

`A261780(2*(n+2)+A000096(n+4)+3)`
-/

namespace A161434.P8335874083138351188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 ((2 * (n + 2) : ℤ) + (A000096 (n + 4) + 3)).toNat

end

end A161434.P8335874083138351188

/-!
# A161435: Number of reduced words of length n in the Weyl group A_3 (or D_3).

The programs for A161435, the canonical program `A161435.P5673972163751084582` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161435 has offset 0).

The definition of A161435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161435.P5673972163751084582

`ceil(C(6, n)^γ)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161435

/-- `ceil(C(6, n)^γ)` -/
def P5673972163751084582.Spec : Prop :=
  ∀ n, P5673972163751084582.a n = A161435 n

theorem P5673972163751084582.correct : P5673972163751084582.Spec := by
  intro n
  simp only [A161435]

end A161435

/-!
# A161436: Number of reduced words of length n in the Weyl group A_4.

The programs for A161436, the canonical program `A161436.P16118901161109358996` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161436 has offset 0).

The definition of A161436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161436.P16118901161109358996

`floor(sqrt(2*C(10, n)))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161436

/-- `floor(sqrt(2*C(10, n)))` -/
def P16118901161109358996.Spec : Prop :=
  ∀ n, (P16118901161109358996.a n : ℤ) = A161436 n

theorem P16118901161109358996.correct : P16118901161109358996.Spec := by
  intro n
  simp only [A161436]

end A161436

/-!
# A161437: Number of reduced words of length n in the Weyl group A_5.

The programs for A161437, there is no canonical definition to state claims against.
-/

/-! ## A161437.P501308068313395099

`A177517(A166136(n+5)+1)`
-/

namespace A161437.P501308068313395099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A166136 (n + 5) + 1).toNat

end

end A161437.P501308068313395099

/-!
# A161438: Number of reduced words of length n in the Weyl group A_6.

The programs for A161438, there is no canonical definition to state claims against.
-/

/-! ## A161438.P16661875535106120507

`A177517(A000217(n+7)+8)`
-/

namespace A161438.P16661875535106120507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 7) + 8).toNat

end

end A161438.P16661875535106120507

/-!
# A161439: Number of reduced words of length n in the Weyl group A_7.

The programs for A161439, there is no canonical definition to state claims against.
-/

/-! ## A161439.P8125541879190511785

`A177517(A000096(n+7)+10)`
-/

namespace A161439.P8125541879190511785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000096 (n + 7) + 10).toNat

end

end A161439.P8125541879190511785

/-!
# A161440: Numbers m such that A160700(m) = 0.

The programs for A161440, there is no canonical definition to state claims against.
-/

/-! ## A161440.P14935619905876015224

`xor(1, A161441(n+1))`
-/

namespace A161440.P14935619905876015224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161441 (n + 1))

end

end A161440.P14935619905876015224

/-! ## A161440.P548517512832970003

`xor(2, A161442(n+1))`
-/

namespace A161440.P548517512832970003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161442 (n + 1))

end

end A161440.P548517512832970003

/-! ## A161440.P15613736137493058766

`xor(3, A161443(n+1))`
-/

namespace A161440.P15613736137493058766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161443 (n + 1))

end

end A161440.P15613736137493058766

/-! ## A161440.P4832334397263786893

`xor(4, A161444(n+1))`
-/

namespace A161440.P4832334397263786893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161444 (n + 1))

end

end A161440.P4832334397263786893

/-! ## A161440.P6412147493449720004

`xor(5, A161445(n+1))`
-/

namespace A161440.P6412147493449720004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161445 (n + 1))

end

end A161440.P6412147493449720004

/-! ## A161440.P2102517340775981437

`xor(6, A161446(n+1))`
-/

namespace A161440.P2102517340775981437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161446 (n + 1))

end

end A161440.P2102517340775981437

/-! ## A161440.P16239842456090165836

`xor(7, A161447(n+1))`
-/

namespace A161440.P16239842456090165836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161447 (n + 1))

end

end A161440.P16239842456090165836

/-! ## A161440.P11525270180018030657

`xor(8, A161448(n+1))`
-/

namespace A161440.P11525270180018030657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161448 (n + 1))

end

end A161440.P11525270180018030657

/-! ## A161440.P5095558773299503091

`xor(9, A161449(n+1))`
-/

namespace A161440.P5095558773299503091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161449 (n + 1))

end

end A161440.P5095558773299503091

/-! ## A161440.P15061971043764317660

`xor(11, A161451(n+1))`
-/

namespace A161440.P15061971043764317660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161451 (n + 1))

end

end A161440.P15061971043764317660

/-! ## A161440.P9539338416215777169

`A160700(n)+A008598(n)`
-/

namespace A161440.P9539338416215777169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 n + A008598 n

end

end A161440.P9539338416215777169

/-! ## A161440.P6273067540759965847

`A158057(n)+A160700(n)-1`
-/

namespace A161440.P6273067540759965847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + (A160700 n - 1)

end

end A161440.P6273067540759965847

/-! ## A161440.P3105885087622432507

`xor(A158057(n), A160700(xor(1, n)))`
-/

namespace A161440.P3105885087622432507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n) (A160700 (Nat.xor 1 n))

end

end A161440.P3105885087622432507

/-! ## A161440.P14138450064853102598

`A008599(n)+A160700(n)-n`
-/

namespace A161440.P14138450064853102598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n + (A160700 n - (n : ℤ))

end

end A161440.P14138450064853102598

/-! ## A161440.P14007402178328650482

`A161441(n+1)+A161442(n+1)-A161443(n+1)`
-/

namespace A161440.P14007402178328650482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161442 (n + 1) - A161443 (n + 1))

end

end A161440.P14007402178328650482

/-! ## A161440.P18384283353605055123

`A161441(n+1)+A161444(n+1)-A161445(n+1)`
-/

namespace A161440.P18384283353605055123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161444 (n + 1) - A161445 (n + 1))

end

end A161440.P18384283353605055123

/-! ## A161440.P9833434043564413663

`A161441(n+1)+A161448(n+1)-A161449(n+1)`
-/

namespace A161440.P9833434043564413663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161448 (n + 1) - A161449 (n + 1))

end

end A161440.P9833434043564413663

/-! ## A161440.P4079552422925481407

`A161442(n+1)+A161444(n+1)-A161446(n+1)`
-/

namespace A161440.P4079552422925481407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161444 (n + 1) - A161446 (n + 1))

end

end A161440.P4079552422925481407

/-! ## A161440.P4234208007138588674

`A161442(n+1)+A161445(n+1)-A161447(n+1)`
-/

namespace A161440.P4234208007138588674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161447 (n + 1))

end

end A161440.P4234208007138588674

/-! ## A161440.P5126645364587392967

`A161442(n+1)+A161448(n+1)-A161450(n+1)`
-/

namespace A161440.P5126645364587392967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161448 (n + 1) - A161450 (n + 1))

end

end A161440.P5126645364587392967

/-!
# A161441: Numbers n such that A160700(n) = 1.

The programs for A161441, there is no canonical definition to state claims against.
-/

/-! ## A161441.P7667062514224404953

`xor(1, A161440(n+1))`
-/

namespace A161441.P7667062514224404953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161440 (n + 1))

end

end A161441.P7667062514224404953

/-! ## A161441.P8069558569629364376

`xor(2, A161443(n+1))`
-/

namespace A161441.P8069558569629364376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161443 (n + 1))

end

end A161441.P8069558569629364376

/-! ## A161441.P743960419493724550

`xor(3, A161442(n+1))`
-/

namespace A161441.P743960419493724550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161442 (n + 1))

end

end A161441.P743960419493724550

/-! ## A161441.P16152085217355334463

`xor(4, A161445(n+1))`
-/

namespace A161441.P16152085217355334463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161445 (n + 1))

end

end A161441.P16152085217355334463

/-! ## A161441.P10478165471469529713

`xor(5, A161444(n+1))`
-/

namespace A161441.P10478165471469529713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161444 (n + 1))

end

end A161441.P10478165471469529713

/-! ## A161441.P4529889420323779995

`xor(6, A161447(n+1))`
-/

namespace A161441.P4529889420323779995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161447 (n + 1))

end

end A161441.P4529889420323779995

/-! ## A161441.P200775075029620004

`xor(7, A161446(n+1))`
-/

namespace A161441.P200775075029620004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161446 (n + 1))

end

end A161441.P200775075029620004

/-! ## A161441.P9026476749836821474

`xor(8, A161449(n+1))`
-/

namespace A161441.P9026476749836821474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161449 (n + 1))

end

end A161441.P9026476749836821474

/-! ## A161441.P3578615131544245297

`xor(9, A161448(n+1))`
-/

namespace A161441.P3578615131544245297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161448 (n + 1))

end

end A161441.P3578615131544245297

/-! ## A161441.P1453586184873779665

`xor(11, A161450(n+1))`
-/

namespace A161441.P1453586184873779665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161450 (n + 1))

end

end A161441.P1453586184873779665

/-! ## A161441.P11859944411231901971

`xor(4*7/2, A161455(n+1))`
-/

namespace A161441.P11859944411231901971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (4 * ((7 : ℚ) / 2))) (A161455 (n + 1))

end

end A161441.P11859944411231901971

/-! ## A161441.P7931583218329210544

`xor(A158057(n), A160700(n))`
-/

namespace A161441.P7931583218329210544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n) (A160700 n)

end

end A161441.P7931583218329210544

/-! ## A161441.P18429661988878722269

`A161440(n+1)+A161443(n+1)-A161442(n+1)`
-/

namespace A161441.P18429661988878722269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161443 (n + 1) - A161442 (n + 1))

end

end A161441.P18429661988878722269

/-! ## A161441.P2833996563537078730

`A161440(n+1)+A161445(n+1)-A161444(n+1)`
-/

namespace A161441.P2833996563537078730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161445 (n + 1) - A161444 (n + 1))

end

end A161441.P2833996563537078730

/-! ## A161441.P13067665541278819192

`A161442(n+1)+A161445(n+1)-A161446(n+1)`
-/

namespace A161441.P13067665541278819192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161446 (n + 1))

end

end A161441.P13067665541278819192

/-! ## A161441.P6566208988138745343

`A161442(n+1)+A161449(n+1)-A161450(n+1)`
-/

namespace A161441.P6566208988138745343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161449 (n + 1) - A161450 (n + 1))

end

end A161441.P6566208988138745343

/-! ## A161441.P13282700759462825023

`A161443(n+1)+A161444(n+1)-A161446(n+1)`
-/

namespace A161441.P13282700759462825023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161444 (n + 1) - A161446 (n + 1))

end

end A161441.P13282700759462825023

/-! ## A161441.P13180390532017448544

`A161443(n+1)+A161445(n+1)-A161447(n+1)`
-/

namespace A161441.P13180390532017448544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161445 (n + 1) - A161447 (n + 1))

end

end A161441.P13180390532017448544

/-! ## A161441.P1016481421401775726

`A161444(n+1)+A161449(n+1)-A161452(n+1)`
-/

namespace A161441.P1016481421401775726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161449 (n + 1) - A161452 (n + 1))

end

end A161441.P1016481421401775726

/-! ## A161441.P1224765670508819569

`A161445(n+1)+A161448(n+1)-A161452(n+1)`
-/

namespace A161441.P1224765670508819569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161448 (n + 1) - A161452 (n + 1))

end

end A161441.P1224765670508819569

/-!
# A161442: Numbers n such that A160700(n) = 2.

The programs for A161442, there is no canonical definition to state claims against.
-/

/-! ## A161442.P7624745807723424869

`xor(1, A161443(n+1))`
-/

namespace A161442.P7624745807723424869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161443 (n + 1))

end

end A161442.P7624745807723424869

/-! ## A161442.P13076295792914692706

`xor(2, A161440(n+1))`
-/

namespace A161442.P13076295792914692706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161440 (n + 1))

end

end A161442.P13076295792914692706

/-! ## A161442.P18132255144552506796

`xor(3, A161441(n+1))`
-/

namespace A161442.P18132255144552506796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161441 (n + 1))

end

end A161442.P18132255144552506796

/-! ## A161442.P12669721476007746468

`xor(4, A161446(n+1))`
-/

namespace A161442.P12669721476007746468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161446 (n + 1))

end

end A161442.P12669721476007746468

/-! ## A161442.P3027923125549409539

`xor(5, A161447(n+1))`
-/

namespace A161442.P3027923125549409539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161447 (n + 1))

end

end A161442.P3027923125549409539

/-! ## A161442.P11905150966039391000

`xor(6, A161444(n+1))`
-/

namespace A161442.P11905150966039391000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161444 (n + 1))

end

end A161442.P11905150966039391000

/-! ## A161442.P10225845684583748588

`xor(7, A161445(n+1))`
-/

namespace A161442.P10225845684583748588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161445 (n + 1))

end

end A161442.P10225845684583748588

/-! ## A161442.P703893091764962444

`xor(8, A161450(n+1))`
-/

namespace A161442.P703893091764962444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161450 (n + 1))

end

end A161442.P703893091764962444

/-! ## A161442.P7625154544260205016

`xor(9, A161451(n+1))`
-/

namespace A161442.P7625154544260205016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161451 (n + 1))

end

end A161442.P7625154544260205016

/-! ## A161442.P6308998708842493037

`xor(10, A161448(n+1))`
-/

namespace A161442.P6308998708842493037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A161448 (n + 1))

end

end A161442.P6308998708842493037

/-! ## A161442.P6193791821372670160

`xor(11, A161449(n+1))`
-/

namespace A161442.P6193791821372670160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161449 (n + 1))

end

end A161442.P6193791821372670160

/-! ## A161442.P2750049335397700145

`xor(4*7/2, A161452(n+1))`
-/

namespace A161442.P2750049335397700145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (4 * ((7 : ℚ) / 2))) (A161452 (n + 1))

end

end A161442.P2750049335397700145

/-! ## A161442.P12957529670925685418

`xor(A158057(n)+1, A160700(n))`
-/

namespace A161442.P12957529670925685418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n + 1) (A160700 n)

end

end A161442.P12957529670925685418

/-! ## A161442.P15169961362494151394

`xor(A119413(n+1)-2, A160700(n))`
-/

namespace A161442.P15169961362494151394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1) - 2) (A160700 n)

end

end A161442.P15169961362494151394

/-! ## A161442.P11217790721657231950

`A161440(n+1)+A161443(n+1)-A161441(n+1)`
-/

namespace A161442.P11217790721657231950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161443 (n + 1) - A161441 (n + 1))

end

end A161442.P11217790721657231950

/-! ## A161442.P2659780939733457370

`A161440(n+1)+A161446(n+1)-A161444(n+1)`
-/

namespace A161442.P2659780939733457370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161446 (n + 1) - A161444 (n + 1))

end

end A161442.P2659780939733457370

/-! ## A161442.P5546329435383860613

`A161440(n+1)+A161447(n+1)-A161445(n+1)`
-/

namespace A161442.P5546329435383860613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161447 (n + 1) - A161445 (n + 1))

end

end A161442.P5546329435383860613

/-! ## A161442.P17934188685120096889

`A161441(n+1)+A161446(n+1)-A161445(n+1)`
-/

namespace A161442.P17934188685120096889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161446 (n + 1) - A161445 (n + 1))

end

end A161442.P17934188685120096889

/-! ## A161442.P18112559420799177337

`A161441(n+1)+A161450(n+1)-A161449(n+1)`
-/

namespace A161442.P18112559420799177337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161450 (n + 1) - A161449 (n + 1))

end

end A161442.P18112559420799177337

/-! ## A161442.P497607864599182646

`A161443(n+1)+A161444(n+1)-A161445(n+1)`
-/

namespace A161442.P497607864599182646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161444 (n + 1) - A161445 (n + 1))

end

end A161442.P497607864599182646

/-!
# A161443: Numbers m such that A160700(m) = 3.

The programs for A161443, there is no canonical definition to state claims against.
-/

/-! ## A161443.P13250328065745930848

`xor(1, A161442(n+1))`
-/

namespace A161443.P13250328065745930848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161442 (n + 1))

end

end A161443.P13250328065745930848

/-! ## A161443.P14727464867496539423

`xor(2, A161441(n+1))`
-/

namespace A161443.P14727464867496539423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161441 (n + 1))

end

end A161443.P14727464867496539423

/-! ## A161443.P6141739359753371143

`xor(3, A161440(n+1))`
-/

namespace A161443.P6141739359753371143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161440 (n + 1))

end

end A161443.P6141739359753371143

/-! ## A161443.P3336429397409279697

`xor(4, A161447(n+1))`
-/

namespace A161443.P3336429397409279697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161447 (n + 1))

end

end A161443.P3336429397409279697

/-! ## A161443.P10406051800954467011

`xor(5, A161446(n+1))`
-/

namespace A161443.P10406051800954467011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161446 (n + 1))

end

end A161443.P10406051800954467011

/-! ## A161443.P12179727005996949768

`xor(6, A161445(n+1))`
-/

namespace A161443.P12179727005996949768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161445 (n + 1))

end

end A161443.P12179727005996949768

/-! ## A161443.P11088402889465047442

`xor(7, A161444(n+1))`
-/

namespace A161443.P11088402889465047442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161444 (n + 1))

end

end A161443.P11088402889465047442

/-! ## A161443.P16265524883663133262

`xor(8, A161451(n+1))`
-/

namespace A161443.P16265524883663133262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161451 (n + 1))

end

end A161443.P16265524883663133262

/-! ## A161443.P8140804673897835903

`xor(9, A161450(n+1))`
-/

namespace A161443.P8140804673897835903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161450 (n + 1))

end

end A161443.P8140804673897835903

/-! ## A161443.P5774689171187807040

`xor(11, A161448(n+1))`
-/

namespace A161443.P5774689171187807040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161448 (n + 1))

end

end A161443.P5774689171187807040

/-! ## A161443.P1862175633465588421

`xor(A158057(n)+2, A160700(n))`
-/

namespace A161443.P1862175633465588421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n + 2) (A160700 n)

end

end A161443.P1862175633465588421

/-! ## A161443.P1368732298497636701

`xor(A158057(n), A160700(xor(2, n)))`
-/

namespace A161443.P1368732298497636701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158057 n) (A160700 (Nat.xor 2 n))

end

end A161443.P1368732298497636701

/-! ## A161443.P2638434707450304448

`xor(A119413(n+1)-1, A160700(n))`
-/

namespace A161443.P2638434707450304448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1) - 1) (A160700 n)

end

end A161443.P2638434707450304448

/-! ## A161443.P15217593396962813736

`A161440(n+1)+A161447(n+1)-A161444(n+1)`
-/

namespace A161443.P15217593396962813736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161447 (n + 1) - A161444 (n + 1))

end

end A161443.P15217593396962813736

/-! ## A161443.P15249410016229210447

`A161441(n+1)+A161442(n+1)-A161440(n+1)`
-/

namespace A161443.P15249410016229210447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161442 (n + 1) - A161440 (n + 1))

end

end A161443.P15249410016229210447

/-! ## A161443.P16327812800342239464

`A161441(n+1)+A161446(n+1)-A161444(n+1)`
-/

namespace A161443.P16327812800342239464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161446 (n + 1) - A161444 (n + 1))

end

end A161443.P16327812800342239464

/-! ## A161443.P14124427418758169798

`A161441(n+1)+A161447(n+1)-A161445(n+1)`
-/

namespace A161443.P14124427418758169798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161447 (n + 1) - A161445 (n + 1))

end

end A161443.P14124427418758169798

/-! ## A161443.P9287036725330467952

`A161441(n+1)+A161450(n+1)-A161448(n+1)`
-/

namespace A161443.P9287036725330467952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161450 (n + 1) - A161448 (n + 1))

end

end A161443.P9287036725330467952

/-! ## A161443.P588715813989737422

`A161442(n+1)+A161445(n+1)-A161444(n+1)`
-/

namespace A161443.P588715813989737422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161444 (n + 1))

end

end A161443.P588715813989737422

/-! ## A161443.P10958627778371070518

`A161441(n+1)+A161451(n+1)-A161449(n+1)`
-/

namespace A161443.P10958627778371070518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161451 (n + 1) - A161449 (n + 1))

end

end A161443.P10958627778371070518

/-!
# A161444: Numbers n such that A160700(n) = 4.

The programs for A161444, there is no canonical definition to state claims against.
-/

/-! ## A161444.P1817344117967816410

`xor(1, A161445(n+1))`
-/

namespace A161444.P1817344117967816410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161445 (n + 1))

end

end A161444.P1817344117967816410

/-! ## A161444.P17920093999592512292

`xor(2, A161446(n+1))`
-/

namespace A161444.P17920093999592512292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161446 (n + 1))

end

end A161444.P17920093999592512292

/-! ## A161444.P2410815467358532093

`xor(3, A161447(n+1))`
-/

namespace A161444.P2410815467358532093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161447 (n + 1))

end

end A161444.P2410815467358532093

/-! ## A161444.P8628720057916395099

`xor(4, A161440(n+1))`
-/

namespace A161444.P8628720057916395099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161440 (n + 1))

end

end A161444.P8628720057916395099

/-! ## A161444.P4500734423845604908

`xor(5, A161441(n+1))`
-/

namespace A161444.P4500734423845604908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161441 (n + 1))

end

end A161444.P4500734423845604908

/-! ## A161444.P4778279644482391220

`xor(6, A161442(n+1))`
-/

namespace A161444.P4778279644482391220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161442 (n + 1))

end

end A161444.P4778279644482391220

/-! ## A161444.P15301565617228089755

`xor(7, A161443(n+1))`
-/

namespace A161444.P15301565617228089755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161443 (n + 1))

end

end A161444.P15301565617228089755

/-! ## A161444.P12403739216443288969

`xor(8, A161452(n+1))`
-/

namespace A161444.P12403739216443288969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161452 (n + 1))

end

end A161444.P12403739216443288969

/-! ## A161444.P775935203933868214

`xor(9, A161453(n+1))`
-/

namespace A161444.P775935203933868214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161453 (n + 1))

end

end A161444.P775935203933868214

/-! ## A161444.P18294198479473150057

`xor(10, A161454(n+1))`
-/

namespace A161444.P18294198479473150057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A161454 (n + 1))

end

end A161444.P18294198479473150057

/-! ## A161444.P8526437629170766444

`xor(11, A161455(n+1))`
-/

namespace A161444.P8526437629170766444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161455 (n + 1))

end

end A161444.P8526437629170766444

/-! ## A161444.P14294835868778388072

`xor(A119413(n+1), A160700(n))`
-/

namespace A161444.P14294835868778388072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1)) (A160700 n)

end

end A161444.P14294835868778388072

/-! ## A161444.P9525505761308956770

`A161440(n+1)+A161445(n+1)-A161441(n+1)`
-/

namespace A161444.P9525505761308956770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161445 (n + 1) - A161441 (n + 1))

end

end A161444.P9525505761308956770

/-! ## A161444.P15120914695276317188

`A161440(n+1)+A161446(n+1)-A161442(n+1)`
-/

namespace A161444.P15120914695276317188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161446 (n + 1) - A161442 (n + 1))

end

end A161444.P15120914695276317188

/-! ## A161444.P13469268978066528356

`A161440(n+1)+A161447(n+1)-A161443(n+1)`
-/

namespace A161444.P13469268978066528356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161447 (n + 1) - A161443 (n + 1))

end

end A161444.P13469268978066528356

/-! ## A161444.P14720244805564467196

`A161441(n+1)+A161446(n+1)-A161443(n+1)`
-/

namespace A161444.P14720244805564467196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161446 (n + 1) - A161443 (n + 1))

end

end A161444.P14720244805564467196

/-! ## A161444.P153782113350313496

`A161442(n+1)+A161445(n+1)-A161443(n+1)`
-/

namespace A161444.P153782113350313496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161443 (n + 1))

end

end A161444.P153782113350313496

/-! ## A161444.P2856281952235479100

`A161441(n+1)+A161452(n+1)-A161449(n+1)`
-/

namespace A161444.P2856281952235479100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161452 (n + 1) - A161449 (n + 1))

end

end A161444.P2856281952235479100

/-! ## A161444.P8366588551380197663

`A161445(n+1)+A161448(n+1)-A161449(n+1)`
-/

namespace A161444.P8366588551380197663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161448 (n + 1) - A161449 (n + 1))

end

end A161444.P8366588551380197663

/-! ## A161444.P9953707722526161102

`A004443(A161446(n+1))`
-/

namespace A161444.P9953707722526161102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A161446 (n + 1)).toNat

end

end A161444.P9953707722526161102

/-!
# A161445: Numbers n such that A160700(n) = 5.

The programs for A161445, there is no canonical definition to state claims against.
-/

/-! ## A161445.P1062112589492651083

`xor(1, A161444(n+1))`
-/

namespace A161445.P1062112589492651083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161444 (n + 1))

end

end A161445.P1062112589492651083

/-! ## A161445.P2282975940949230606

`xor(2, A161447(n+1))`
-/

namespace A161445.P2282975940949230606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161447 (n + 1))

end

end A161445.P2282975940949230606

/-! ## A161445.P6898282509617348703

`xor(3, A161446(n+1))`
-/

namespace A161445.P6898282509617348703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161446 (n + 1))

end

end A161445.P6898282509617348703

/-! ## A161445.P5250030095604609248

`xor(4, A161441(n+1))`
-/

namespace A161445.P5250030095604609248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161441 (n + 1))

end

end A161445.P5250030095604609248

/-! ## A161445.P1005474227539673919

`xor(5, A161440(n+1))`
-/

namespace A161445.P1005474227539673919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161440 (n + 1))

end

end A161445.P1005474227539673919

/-! ## A161445.P16273171832444655109

`xor(6, A161443(n+1))`
-/

namespace A161445.P16273171832444655109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161443 (n + 1))

end

end A161445.P16273171832444655109

/-! ## A161445.P9133240127294492791

`xor(7, A161442(n+1))`
-/

namespace A161445.P9133240127294492791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161442 (n + 1))

end

end A161445.P9133240127294492791

/-! ## A161445.P3941599550105330647

`xor(8, A161453(n+1))`
-/

namespace A161445.P3941599550105330647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161453 (n + 1))

end

end A161445.P3941599550105330647

/-! ## A161445.P17588658767198230091

`xor(9, A161452(n+1))`
-/

namespace A161445.P17588658767198230091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161452 (n + 1))

end

end A161445.P17588658767198230091

/-! ## A161445.P6568197065888531233

`xor(11, A161454(n+1))`
-/

namespace A161445.P6568197065888531233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161454 (n + 1))

end

end A161445.P6568197065888531233

/-! ## A161445.P4587597633249207612

`xor(A119413(n+1)+1, A160700(n))`
-/

namespace A161445.P4587597633249207612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1) + 1) (A160700 n)

end

end A161445.P4587597633249207612

/-! ## A161445.P1780748293309170450

`A161440(n+1)+A161447(n+1)-A161442(n+1)`
-/

namespace A161445.P1780748293309170450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161447 (n + 1) - A161442 (n + 1))

end

end A161445.P1780748293309170450

/-! ## A161445.P17923817077952208394

`A161441(n+1)+A161444(n+1)-A161440(n+1)`
-/

namespace A161445.P17923817077952208394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161444 (n + 1) - A161440 (n + 1))

end

end A161445.P17923817077952208394

/-! ## A161445.P12470981890465768986

`A161441(n+1)+A161446(n+1)-A161442(n+1)`
-/

namespace A161445.P12470981890465768986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161446 (n + 1) - A161442 (n + 1))

end

end A161445.P12470981890465768986

/-! ## A161445.P5549986350640942956

`A161441(n+1)+A161447(n+1)-A161443(n+1)`
-/

namespace A161445.P5549986350640942956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161447 (n + 1) - A161443 (n + 1))

end

end A161445.P5549986350640942956

/-! ## A161445.P8379660741859913040

`A161443(n+1)+A161444(n+1)-A161442(n+1)`
-/

namespace A161445.P8379660741859913040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161444 (n + 1) - A161442 (n + 1))

end

end A161445.P8379660741859913040

/-! ## A161445.P108388791826827903

`A161441(n+1)+A161452(n+1)-A161448(n+1)`
-/

namespace A161445.P108388791826827903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161452 (n + 1) - A161448 (n + 1))

end

end A161445.P108388791826827903

/-! ## A161445.P6030938891723166647

`A161441(n+1)+A161453(n+1)-A161449(n+1)`
-/

namespace A161445.P6030938891723166647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161453 (n + 1) - A161449 (n + 1))

end

end A161445.P6030938891723166647

/-! ## A161445.P8670870985911062904

`A161444(n+1)+A161449(n+1)-A161448(n+1)`
-/

namespace A161445.P8670870985911062904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161449 (n + 1) - A161448 (n + 1))

end

end A161445.P8670870985911062904

/-! ## A161445.P4133980889475267102

`A161446(n+1)+A161449(n+1)-A161450(n+1)`
-/

namespace A161445.P4133980889475267102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161446 (n + 1) + (A161449 (n + 1) - A161450 (n + 1))

end

end A161445.P4133980889475267102

/-!
# A161446: Numbers n such that A160700(n) = 6.

The programs for A161446, there is no canonical definition to state claims against.
-/

/-! ## A161446.P2775951429868338313

`xor(1, A161447(n+1))`
-/

namespace A161446.P2775951429868338313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161447 (n + 1))

end

end A161446.P2775951429868338313

/-! ## A161446.P16497626162572977349

`xor(2, A161444(n+1))`
-/

namespace A161446.P16497626162572977349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161444 (n + 1))

end

end A161446.P16497626162572977349

/-! ## A161446.P5369011310554628229

`xor(3, A161445(n+1))`
-/

namespace A161446.P5369011310554628229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161445 (n + 1))

end

end A161446.P5369011310554628229

/-! ## A161446.P7161186394212858130

`xor(4, A161442(n+1))`
-/

namespace A161446.P7161186394212858130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161442 (n + 1))

end

end A161446.P7161186394212858130

/-! ## A161446.P3041014545835490710

`xor(5, A161443(n+1))`
-/

namespace A161446.P3041014545835490710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161443 (n + 1))

end

end A161446.P3041014545835490710

/-! ## A161446.P11849120086060240781

`xor(6, A161440(n+1))`
-/

namespace A161446.P11849120086060240781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161440 (n + 1))

end

end A161446.P11849120086060240781

/-! ## A161446.P5762195203364426921

`xor(7, A161441(n+1))`
-/

namespace A161446.P5762195203364426921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161441 (n + 1))

end

end A161446.P5762195203364426921

/-! ## A161446.P17282787928556681257

`xor(8, A161454(n+1))`
-/

namespace A161446.P17282787928556681257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161454 (n + 1))

end

end A161446.P17282787928556681257

/-! ## A161446.P6487459567849121925

`xor(9, A161455(n+1))`
-/

namespace A161446.P6487459567849121925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161455 (n + 1))

end

end A161446.P6487459567849121925

/-! ## A161446.P14984189023505970519

`xor(11, A161453(n+1))`
-/

namespace A161446.P14984189023505970519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161453 (n + 1))

end

end A161446.P14984189023505970519

/-! ## A161446.P319856730963925577

`xor(A051062(n)-2, A160700(n))`
-/

namespace A161446.P319856730963925577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n - 2) (A160700 n)

end

end A161446.P319856730963925577

/-! ## A161446.P8024493522577874827

`xor(A119413(n+1)+2, A160700(n))`
-/

namespace A161446.P8024493522577874827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119413 (n + 1) + 2) (A160700 n)

end

end A161446.P8024493522577874827

/-! ## A161446.P16600943251994216326

`A161440(n+1)+A161447(n+1)-A161441(n+1)`
-/

namespace A161446.P16600943251994216326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161447 (n + 1) - A161441 (n + 1))

end

end A161446.P16600943251994216326

/-! ## A161446.P10786774090854120561

`A161442(n+1)+A161444(n+1)-A161440(n+1)`
-/

namespace A161446.P10786774090854120561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161444 (n + 1) - A161440 (n + 1))

end

end A161446.P10786774090854120561

/-! ## A161446.P17816895828801141236

`A161442(n+1)+A161445(n+1)-A161441(n+1)`
-/

namespace A161446.P17816895828801141236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161441 (n + 1))

end

end A161446.P17816895828801141236

/-! ## A161446.P17350332283001154165

`A161442(n+1)+A161447(n+1)-A161443(n+1)`
-/

namespace A161446.P17350332283001154165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161447 (n + 1) - A161443 (n + 1))

end

end A161446.P17350332283001154165

/-! ## A161446.P17670459771288310215

`A161443(n+1)+A161444(n+1)-A161441(n+1)`
-/

namespace A161446.P17670459771288310215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161444 (n + 1) - A161441 (n + 1))

end

end A161446.P17670459771288310215

/-! ## A161446.P4135893039055768519

`A161440(n+1)+A161454(n+1)-A161448(n+1)`
-/

namespace A161446.P4135893039055768519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161454 (n + 1) - A161448 (n + 1))

end

end A161446.P4135893039055768519

/-! ## A161446.P5529438406436768796

`A161441(n+1)+A161454(n+1)-A161449(n+1)`
-/

namespace A161446.P5529438406436768796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161449 (n + 1))

end

end A161446.P5529438406436768796

/-! ## A161446.P16890426829292310564

`A161442(n+1)+A161452(n+1)-A161448(n+1)`
-/

namespace A161446.P16890426829292310564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161452 (n + 1) - A161448 (n + 1))

end

end A161446.P16890426829292310564

/-!
# A161447: Numbers n such that A160700(n) = 7.

The programs for A161447, there is no canonical definition to state claims against.
-/

/-! ## A161447.P3550676751348603236

`xor(1, A161446(n+1))`
-/

namespace A161447.P3550676751348603236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161446 (n + 1))

end

end A161447.P3550676751348603236

/-! ## A161447.P285120868172389494

`xor(2, A161445(n+1))`
-/

namespace A161447.P285120868172389494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161445 (n + 1))

end

end A161447.P285120868172389494

/-! ## A161447.P5356114471314449426

`xor(3, A161444(n+1))`
-/

namespace A161447.P5356114471314449426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161444 (n + 1))

end

end A161447.P5356114471314449426

/-! ## A161447.P14150306294984520751

`xor(4, A161443(n+1))`
-/

namespace A161447.P14150306294984520751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161443 (n + 1))

end

end A161447.P14150306294984520751

/-! ## A161447.P12336471794804091962

`xor(5, A161442(n+1))`
-/

namespace A161447.P12336471794804091962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161442 (n + 1))

end

end A161447.P12336471794804091962

/-! ## A161447.P14671173912819388962

`xor(6, A161441(n+1))`
-/

namespace A161447.P14671173912819388962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161441 (n + 1))

end

end A161447.P14671173912819388962

/-! ## A161447.P15059065758353417405

`xor(7, A161440(n+1))`
-/

namespace A161447.P15059065758353417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161440 (n + 1))

end

end A161447.P15059065758353417405

/-! ## A161447.P6605163640740816857

`xor(8, A161455(n+1))`
-/

namespace A161447.P6605163640740816857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161455 (n + 1))

end

end A161447.P6605163640740816857

/-! ## A161447.P6235785430596353264

`xor(9, A161454(n+1))`
-/

namespace A161447.P6235785430596353264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161454 (n + 1))

end

end A161447.P6235785430596353264

/-! ## A161447.P9791176002386736328

`xor(11, A161452(n+1))`
-/

namespace A161447.P9791176002386736328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161452 (n + 1))

end

end A161447.P9791176002386736328

/-! ## A161447.P3990474378162844980

`xor(A051062(n)-1, A160700(n))`
-/

namespace A161447.P3990474378162844980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n - 1) (A160700 n)

end

end A161447.P3990474378162844980

/-! ## A161447.P11815652153841133763

`A161441(n+1)+A161446(n+1)-A161440(n+1)`
-/

namespace A161447.P11815652153841133763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161446 (n + 1) - A161440 (n + 1))

end

end A161447.P11815652153841133763

/-! ## A161447.P16619511423244457482

`A161442(n+1)+A161445(n+1)-A161440(n+1)`
-/

namespace A161447.P16619511423244457482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161445 (n + 1) - A161440 (n + 1))

end

end A161447.P16619511423244457482

/-! ## A161447.P17500416701646245382

`A161443(n+1)+A161444(n+1)-A161440(n+1)`
-/

namespace A161447.P17500416701646245382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161444 (n + 1) - A161440 (n + 1))

end

end A161447.P17500416701646245382

/-! ## A161447.P8081328794289715062

`A161443(n+1)+A161445(n+1)-A161441(n+1)`
-/

namespace A161447.P8081328794289715062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161445 (n + 1) - A161441 (n + 1))

end

end A161447.P8081328794289715062

/-! ## A161447.P268111515030852139

`A161443(n+1)+A161446(n+1)-A161442(n+1)`
-/

namespace A161447.P268111515030852139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161446 (n + 1) - A161442 (n + 1))

end

end A161447.P268111515030852139

/-! ## A161447.P15198245861728024275

`A161441(n+1)+A161454(n+1)-A161448(n+1)`
-/

namespace A161447.P15198245861728024275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161448 (n + 1))

end

end A161447.P15198245861728024275

/-! ## A161447.P8864616368116535703

`A161441(n+1)+A161455(n+1)-A161449(n+1)`
-/

namespace A161447.P8864616368116535703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161455 (n + 1) - A161449 (n + 1))

end

end A161447.P8864616368116535703

/-! ## A161447.P11731261152995238853

`A161442(n+1)+A161453(n+1)-A161448(n+1)`
-/

namespace A161447.P11731261152995238853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161453 (n + 1) - A161448 (n + 1))

end

end A161447.P11731261152995238853

/-! ## A161447.P1442784234320940394

`A161445(n+1)+A161446(n+1)-A161444(n+1)`
-/

namespace A161447.P1442784234320940394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161446 (n + 1) - A161444 (n + 1))

end

end A161447.P1442784234320940394

/-!
# A161448: Numbers n such that A160700(n) = 8.

The programs for A161448, there is no canonical definition to state claims against.
-/

/-! ## A161448.P1065476958738766907

`xor(1, A161449(n+1))`
-/

namespace A161448.P1065476958738766907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161449 (n + 1))

end

end A161448.P1065476958738766907

/-! ## A161448.P8406334802248827598

`xor(2, A161450(n+1))`
-/

namespace A161448.P8406334802248827598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161450 (n + 1))

end

end A161448.P8406334802248827598

/-! ## A161448.P11249682261403733692

`xor(3, A161451(n+1))`
-/

namespace A161448.P11249682261403733692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161451 (n + 1))

end

end A161448.P11249682261403733692

/-! ## A161448.P3820448855221063762

`xor(4, A161452(n+1))`
-/

namespace A161448.P3820448855221063762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161452 (n + 1))

end

end A161448.P3820448855221063762

/-! ## A161448.P10196959122982090202

`xor(5, A161453(n+1))`
-/

namespace A161448.P10196959122982090202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161453 (n + 1))

end

end A161448.P10196959122982090202

/-! ## A161448.P16021079881793689498

`xor(6, A161454(n+1))`
-/

namespace A161448.P16021079881793689498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161454 (n + 1))

end

end A161448.P16021079881793689498

/-! ## A161448.P4045937984850361635

`xor(7, A161455(n+1))`
-/

namespace A161448.P4045937984850361635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161455 (n + 1))

end

end A161448.P4045937984850361635

/-! ## A161448.P15289483507894332616

`xor(8, A161440(n+1))`
-/

namespace A161448.P15289483507894332616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161440 (n + 1))

end

end A161448.P15289483507894332616

/-! ## A161448.P4350822734731576861

`xor(9, A161441(n+1))`
-/

namespace A161448.P4350822734731576861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161441 (n + 1))

end

end A161448.P4350822734731576861

/-! ## A161448.P9090566006665276469

`xor(11, A161443(n+1))`
-/

namespace A161448.P9090566006665276469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161443 (n + 1))

end

end A161448.P9090566006665276469

/-! ## A161448.P1068726500634864111

`xor(A051062(n), A160700(n))`
-/

namespace A161448.P1068726500634864111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n) (A160700 n)

end

end A161448.P1068726500634864111

/-! ## A161448.P3702773049045613485

`A161440(n+1)+A161449(n+1)-A161441(n+1)`
-/

namespace A161448.P3702773049045613485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161449 (n + 1) - A161441 (n + 1))

end

end A161448.P3702773049045613485

/-! ## A161448.P18176365665023149116

`A161440(n+1)+A161450(n+1)-A161442(n+1)`
-/

namespace A161448.P18176365665023149116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161450 (n + 1) - A161442 (n + 1))

end

end A161448.P18176365665023149116

/-! ## A161448.P12134621899498592743

`A161440(n+1)+A161451(n+1)-A161443(n+1)`
-/

namespace A161448.P12134621899498592743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161451 (n + 1) - A161443 (n + 1))

end

end A161448.P12134621899498592743

/-! ## A161448.P6212265956221493168

`A161440(n+1)+A161452(n+1)-A161444(n+1)`
-/

namespace A161448.P6212265956221493168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161452 (n + 1) - A161444 (n + 1))

end

end A161448.P6212265956221493168

/-! ## A161448.P2739850946958247657

`A161441(n+1)+A161450(n+1)-A161443(n+1)`
-/

namespace A161448.P2739850946958247657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161450 (n + 1) - A161443 (n + 1))

end

end A161448.P2739850946958247657

/-! ## A161448.P1218988979119375059

`A161441(n+1)+A161452(n+1)-A161445(n+1)`
-/

namespace A161448.P1218988979119375059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161452 (n + 1) - A161445 (n + 1))

end

end A161448.P1218988979119375059

/-! ## A161448.P4200717099486987888

`A161442(n+1)+A161449(n+1)-A161443(n+1)`
-/

namespace A161448.P4200717099486987888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161449 (n + 1) - A161443 (n + 1))

end

end A161448.P4200717099486987888

/-! ## A161448.P6091179768015968829

`A161444(n+1)+A161449(n+1)-A161445(n+1)`
-/

namespace A161448.P6091179768015968829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161449 (n + 1) - A161445 (n + 1))

end

end A161448.P6091179768015968829

/-! ## A161448.P13842230781227652104

`A161444(n+1)+A161450(n+1)-A161446(n+1)`
-/

namespace A161448.P13842230781227652104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161450 (n + 1) - A161446 (n + 1))

end

end A161448.P13842230781227652104

/-!
# A161449: Numbers n such that A160700(n) = 9.

The programs for A161449, there is no canonical definition to state claims against.
-/

/-! ## A161449.P13283536419011716942

`xor(1, A161448(n+1))`
-/

namespace A161449.P13283536419011716942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161448 (n + 1))

end

end A161449.P13283536419011716942

/-! ## A161449.P14613571984099134598

`xor(2, A161451(n+1))`
-/

namespace A161449.P14613571984099134598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161451 (n + 1))

end

end A161449.P14613571984099134598

/-! ## A161449.P12737311977176334922

`xor(3, A161450(n+1))`
-/

namespace A161449.P12737311977176334922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161450 (n + 1))

end

end A161449.P12737311977176334922

/-! ## A161449.P14753421773221461986

`xor(4, A161453(n+1))`
-/

namespace A161449.P14753421773221461986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161453 (n + 1))

end

end A161449.P14753421773221461986

/-! ## A161449.P2549522088745114474

`xor(5, A161452(n+1))`
-/

namespace A161449.P2549522088745114474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161452 (n + 1))

end

end A161449.P2549522088745114474

/-! ## A161449.P3244970835400695312

`xor(6, A161455(n+1))`
-/

namespace A161449.P3244970835400695312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161455 (n + 1))

end

end A161449.P3244970835400695312

/-! ## A161449.P6258866586956382815

`xor(7, A161454(n+1))`
-/

namespace A161449.P6258866586956382815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161454 (n + 1))

end

end A161449.P6258866586956382815

/-! ## A161449.P2465322306457352642

`xor(8, A161441(n+1))`
-/

namespace A161449.P2465322306457352642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161441 (n + 1))

end

end A161449.P2465322306457352642

/-! ## A161449.P6096827253278608985

`xor(9, A161440(n+1))`
-/

namespace A161449.P6096827253278608985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161440 (n + 1))

end

end A161449.P6096827253278608985

/-! ## A161449.P9877190396675693507

`xor(11, A161442(n+1))`
-/

namespace A161449.P9877190396675693507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161442 (n + 1))

end

end A161449.P9877190396675693507

/-! ## A161449.P8796817895595571041

`xor(A051062(n)+1, A160700(n))`
-/

namespace A161449.P8796817895595571041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n + 1) (A160700 n)

end

end A161449.P8796817895595571041

/-! ## A161449.P17098983729282089348

`xor(A106839(n)-2, A160700(n))`
-/

namespace A161449.P17098983729282089348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n - 2) (A160700 n)

end

end A161449.P17098983729282089348

/-! ## A161449.P15342326093685429047

`xor(A051062(n), A160700(xor(1, n)))`
-/

namespace A161449.P15342326093685429047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n) (A160700 (Nat.xor 1 n))

end

end A161449.P15342326093685429047

/-! ## A161449.P15932650703308286109

`xor(A106839(n), A160700(xor(2, n)))`
-/

namespace A161449.P15932650703308286109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n) (A160700 (Nat.xor 2 n))

end

end A161449.P15932650703308286109

/-! ## A161449.P17613681580414516191

`A161440(n+1)+A161451(n+1)-A161442(n+1)`
-/

namespace A161449.P17613681580414516191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161451 (n + 1) - A161442 (n + 1))

end

end A161449.P17613681580414516191

/-! ## A161449.P9062727226846588981

`A161440(n+1)+A161453(n+1)-A161444(n+1)`
-/

namespace A161449.P9062727226846588981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161453 (n + 1) - A161444 (n + 1))

end

end A161449.P9062727226846588981

/-! ## A161449.P12888435357152262621

`A161441(n+1)+A161448(n+1)-A161440(n+1)`
-/

namespace A161449.P12888435357152262621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161448 (n + 1) - A161440 (n + 1))

end

end A161449.P12888435357152262621

/-! ## A161449.P16743314612518207880

`A161441(n+1)+A161450(n+1)-A161442(n+1)`
-/

namespace A161449.P16743314612518207880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161450 (n + 1) - A161442 (n + 1))

end

end A161449.P16743314612518207880

/-! ## A161449.P10433496418387666408

`A161441(n+1)+A161451(n+1)-A161443(n+1)`
-/

namespace A161449.P10433496418387666408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161451 (n + 1) - A161443 (n + 1))

end

end A161449.P10433496418387666408

/-! ## A161449.P17944959304177897913

`A161441(n+1)+A161452(n+1)-A161444(n+1)`
-/

namespace A161449.P17944959304177897913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161452 (n + 1) - A161444 (n + 1))

end

end A161449.P17944959304177897913

/-!
# A161450: Numbers n such that A160700(n) = 10.

The programs for A161450, there is no canonical definition to state claims against.
-/

/-! ## A161450.P3785211089490586391

`xor(1, A161451(n+1))`
-/

namespace A161450.P3785211089490586391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161451 (n + 1))

end

end A161450.P3785211089490586391

/-! ## A161450.P4617434832607350787

`xor(2, A161448(n+1))`
-/

namespace A161450.P4617434832607350787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161448 (n + 1))

end

end A161450.P4617434832607350787

/-! ## A161450.P12220029995632911278

`xor(3, A161449(n+1))`
-/

namespace A161450.P12220029995632911278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161449 (n + 1))

end

end A161450.P12220029995632911278

/-! ## A161450.P13384940191672089563

`xor(4, A161454(n+1))`
-/

namespace A161450.P13384940191672089563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161454 (n + 1))

end

end A161450.P13384940191672089563

/-! ## A161450.P16781377020785385015

`xor(5, A161455(n+1))`
-/

namespace A161450.P16781377020785385015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161455 (n + 1))

end

end A161450.P16781377020785385015

/-! ## A161450.P9324695983617597053

`xor(6, A161452(n+1))`
-/

namespace A161450.P9324695983617597053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161452 (n + 1))

end

end A161450.P9324695983617597053

/-! ## A161450.P1336526248311938677

`xor(7, A161453(n+1))`
-/

namespace A161450.P1336526248311938677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161453 (n + 1))

end

end A161450.P1336526248311938677

/-! ## A161450.P9575909192583023179

`xor(8, A161442(n+1))`
-/

namespace A161450.P9575909192583023179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161442 (n + 1))

end

end A161450.P9575909192583023179

/-! ## A161450.P873199448266816556

`xor(9, A161443(n+1))`
-/

namespace A161450.P873199448266816556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161443 (n + 1))

end

end A161450.P873199448266816556

/-! ## A161450.P5295548507550413965

`xor(A051062(n)+2, A160700(n))`
-/

namespace A161450.P5295548507550413965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n + 2) (A160700 n)

end

end A161450.P5295548507550413965

/-! ## A161450.P7096012324533808309

`xor(A106839(n)-1, A160700(n))`
-/

namespace A161450.P7096012324533808309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n - 1) (A160700 n)

end

end A161450.P7096012324533808309

/-! ## A161450.P664166194476085659

`xor(A106839(n), A160700(xor(1, n)))`
-/

namespace A161450.P664166194476085659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n) (A160700 (Nat.xor 1 n))

end

end A161450.P664166194476085659

/-! ## A161450.P14253070228970389391

`xor(A051062(n), A160700(xor(2, n)))`
-/

namespace A161450.P14253070228970389391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051062 n) (A160700 (Nat.xor 2 n))

end

end A161450.P14253070228970389391

/-! ## A161450.P6260189190265971703

`xor(A098502(n+1)-2, A160700(n))`
-/

namespace A161450.P6260189190265971703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1) - 2) (A160700 n)

end

end A161450.P6260189190265971703

/-! ## A161450.P5358601838634300035

`A161440(n+1)+A161451(n+1)-A161441(n+1)`
-/

namespace A161450.P5358601838634300035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161451 (n + 1) - A161441 (n + 1))

end

end A161450.P5358601838634300035

/-! ## A161450.P18351004438482778086

`A161440(n+1)+A161454(n+1)-A161444(n+1)`
-/

namespace A161450.P18351004438482778086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161454 (n + 1) - A161444 (n + 1))

end

end A161450.P18351004438482778086

/-! ## A161450.P12578676259640138548

`A161442(n+1)+A161448(n+1)-A161440(n+1)`
-/

namespace A161450.P12578676259640138548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161448 (n + 1) - A161440 (n + 1))

end

end A161450.P12578676259640138548

/-! ## A161450.P14070978682591947262

`A161441(n+1)+A161454(n+1)-A161445(n+1)`
-/

namespace A161450.P14070978682591947262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161445 (n + 1))

end

end A161450.P14070978682591947262

/-! ## A161450.P7620408312046358700

`A161442(n+1)+A161449(n+1)-A161441(n+1)`
-/

namespace A161450.P7620408312046358700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161449 (n + 1) - A161441 (n + 1))

end

end A161450.P7620408312046358700

/-! ## A161450.P16332491073046799072

`A161442(n+1)+A161451(n+1)-A161443(n+1)`
-/

namespace A161450.P16332491073046799072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161451 (n + 1) - A161443 (n + 1))

end

end A161450.P16332491073046799072

/-!
# A161451: Numbers n such that A160700(n) = 11.

The programs for A161451, there is no canonical definition to state claims against.
-/

/-! ## A161451.P7620649327030642412

`xor(1, A161450(n+1))`
-/

namespace A161451.P7620649327030642412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161450 (n + 1))

end

end A161451.P7620649327030642412

/-! ## A161451.P5720803689085492576

`xor(2, A161449(n+1))`
-/

namespace A161451.P5720803689085492576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161449 (n + 1))

end

end A161451.P5720803689085492576

/-! ## A161451.P3865240289782322614

`xor(3, A161448(n+1))`
-/

namespace A161451.P3865240289782322614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161448 (n + 1))

end

end A161451.P3865240289782322614

/-! ## A161451.P3045264372973791408

`xor(4, A161455(n+1))`
-/

namespace A161451.P3045264372973791408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161455 (n + 1))

end

end A161451.P3045264372973791408

/-! ## A161451.P11001918113894749582

`xor(5, A161454(n+1))`
-/

namespace A161451.P11001918113894749582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161454 (n + 1))

end

end A161451.P11001918113894749582

/-! ## A161451.P14846673822659571330

`xor(6, A161453(n+1))`
-/

namespace A161451.P14846673822659571330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161453 (n + 1))

end

end A161451.P14846673822659571330

/-! ## A161451.P3352218586367060501

`xor(7, A161452(n+1))`
-/

namespace A161451.P3352218586367060501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161452 (n + 1))

end

end A161451.P3352218586367060501

/-! ## A161451.P6321899132318045132

`xor(8, A161443(n+1))`
-/

namespace A161451.P6321899132318045132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161443 (n + 1))

end

end A161451.P6321899132318045132

/-! ## A161451.P3541978008408543264

`xor(9, A161442(n+1))`
-/

namespace A161451.P3541978008408543264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161442 (n + 1))

end

end A161451.P3541978008408543264

/-! ## A161451.P9055360815729686486

`xor(11, A161440(n+1))`
-/

namespace A161451.P9055360815729686486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161440 (n + 1))

end

end A161451.P9055360815729686486

/-! ## A161451.P6210197474445500766

`xor(A106839(n), A160700(n))`
-/

namespace A161451.P6210197474445500766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n) (A160700 n)

end

end A161451.P6210197474445500766

/-! ## A161451.P10577672349914327879

`xor(A082285(n)-2, A160700(n))`
-/

namespace A161451.P10577672349914327879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n - 2) (A160700 n)

end

end A161451.P10577672349914327879

/-! ## A161451.P4529264573210314674

`xor(A098502(n+1)-1, A160700(n))`
-/

namespace A161451.P4529264573210314674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1) - 1) (A160700 n)

end

end A161451.P4529264573210314674

/-! ## A161451.P16208236249998787187

`A161440(n+1)+A161455(n+1)-A161444(n+1)`
-/

namespace A161451.P16208236249998787187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161455 (n + 1) - A161444 (n + 1))

end

end A161451.P16208236249998787187

/-! ## A161451.P14755962361121634802

`A161441(n+1)+A161450(n+1)-A161440(n+1)`
-/

namespace A161451.P14755962361121634802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161450 (n + 1) - A161440 (n + 1))

end

end A161451.P14755962361121634802

/-! ## A161451.P17320556973922247627

`A161441(n+1)+A161454(n+1)-A161444(n+1)`
-/

namespace A161451.P17320556973922247627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161444 (n + 1))

end

end A161451.P17320556973922247627

/-! ## A161451.P3500891306196013025

`A161442(n+1)+A161449(n+1)-A161440(n+1)`
-/

namespace A161451.P3500891306196013025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161449 (n + 1) - A161440 (n + 1))

end

end A161451.P3500891306196013025

/-! ## A161451.P3654753022495035791

`A161441(n+1)+A161455(n+1)-A161445(n+1)`
-/

namespace A161451.P3654753022495035791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161455 (n + 1) - A161445 (n + 1))

end

end A161451.P3654753022495035791

/-! ## A161451.P3968997766795074156

`A161442(n+1)+A161453(n+1)-A161444(n+1)`
-/

namespace A161451.P3968997766795074156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161453 (n + 1) - A161444 (n + 1))

end

end A161451.P3968997766795074156

/-! ## A161451.P7537481663003445771

`A161443(n+1)+A161448(n+1)-A161440(n+1)`
-/

namespace A161451.P7537481663003445771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161448 (n + 1) - A161440 (n + 1))

end

end A161451.P7537481663003445771

/-!
# A161452: Numbers m such that A160700(m) = 12.

The programs for A161452, there is no canonical definition to state claims against.
-/

/-! ## A161452.P2045706099575188731

`xor(1, A161453(n+1))`
-/

namespace A161452.P2045706099575188731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161453 (n + 1))

end

end A161452.P2045706099575188731

/-! ## A161452.P9669407378112743614

`xor(2, A161454(n+1))`
-/

namespace A161452.P9669407378112743614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161454 (n + 1))

end

end A161452.P9669407378112743614

/-! ## A161452.P17139849942815066545

`xor(3, A161455(n+1))`
-/

namespace A161452.P17139849942815066545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161455 (n + 1))

end

end A161452.P17139849942815066545

/-! ## A161452.P17102283624896831516

`xor(4, A161448(n+1))`
-/

namespace A161452.P17102283624896831516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161448 (n + 1))

end

end A161452.P17102283624896831516

/-! ## A161452.P17916238419762651855

`xor(5, A161449(n+1))`
-/

namespace A161452.P17916238419762651855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161449 (n + 1))

end

end A161452.P17916238419762651855

/-! ## A161452.P13182372803297364513

`xor(6, A161450(n+1))`
-/

namespace A161452.P13182372803297364513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161450 (n + 1))

end

end A161452.P13182372803297364513

/-! ## A161452.P8815857945113547057

`xor(7, A161451(n+1))`
-/

namespace A161452.P8815857945113547057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161451 (n + 1))

end

end A161452.P8815857945113547057

/-! ## A161452.P6592665661835120655

`xor(8, A161444(n+1))`
-/

namespace A161452.P6592665661835120655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161444 (n + 1))

end

end A161452.P6592665661835120655

/-! ## A161452.P2146997727246234285

`xor(9, A161445(n+1))`
-/

namespace A161452.P2146997727246234285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161445 (n + 1))

end

end A161452.P2146997727246234285

/-! ## A161452.P634289779904072967

`xor(11, A161447(n+1))`
-/

namespace A161452.P634289779904072967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161447 (n + 1))

end

end A161452.P634289779904072967

/-! ## A161452.P4286771199044027029

`xor(A098502(n+1), A160700(n))`
-/

namespace A161452.P4286771199044027029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1)) (A160700 n)

end

end A161452.P4286771199044027029

/-! ## A161452.P4947047651101424192

`xor(A106839(n)+1, A160700(n))`
-/

namespace A161452.P4947047651101424192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n + 1) (A160700 n)

end

end A161452.P4947047651101424192

/-! ## A161452.P10528119536404763087

`xor(A082285(n)-1, A160700(n))`
-/

namespace A161452.P10528119536404763087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n - 1) (A160700 n)

end

end A161452.P10528119536404763087

/-! ## A161452.P3166889016668135594

`xor(A082285(n), A160700(xor(1, n)))`
-/

namespace A161452.P3166889016668135594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n) (A160700 (Nat.xor 1 n))

end

end A161452.P3166889016668135594

/-! ## A161452.P7806360445100903547

`A161440(n+1)+A161453(n+1)-A161441(n+1)`
-/

namespace A161452.P7806360445100903547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161453 (n + 1) - A161441 (n + 1))

end

end A161452.P7806360445100903547

/-! ## A161452.P10609514135660603630

`A161440(n+1)+A161454(n+1)-A161442(n+1)`
-/

namespace A161452.P10609514135660603630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161454 (n + 1) - A161442 (n + 1))

end

end A161452.P10609514135660603630

/-! ## A161452.P4296102595186417794

`A161440(n+1)+A161455(n+1)-A161443(n+1)`
-/

namespace A161452.P4296102595186417794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161455 (n + 1) - A161443 (n + 1))

end

end A161452.P4296102595186417794

/-! ## A161452.P14896041390232410317

`A161444(n+1)+A161448(n+1)-A161440(n+1)`
-/

namespace A161452.P14896041390232410317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161448 (n + 1) - A161440 (n + 1))

end

end A161452.P14896041390232410317

/-! ## A161452.P12295138316350409723

`A161444(n+1)+A161449(n+1)-A161441(n+1)`
-/

namespace A161452.P12295138316350409723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161449 (n + 1) - A161441 (n + 1))

end

end A161452.P12295138316350409723

/-! ## A161452.P4492055912980425403

`A161444(n+1)+A161450(n+1)-A161442(n+1)`
-/

namespace A161452.P4492055912980425403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161450 (n + 1) - A161442 (n + 1))

end

end A161452.P4492055912980425403

/-!
# A161453: Numbers n such that A160700(n) = 13.

The programs for A161453, there is no canonical definition to state claims against.
-/

/-! ## A161453.P18148040289698730298

`xor(1, A161452(n+1))`
-/

namespace A161453.P18148040289698730298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161452 (n + 1))

end

end A161453.P18148040289698730298

/-! ## A161453.P14850528396897423232

`xor(2, A161455(n+1))`
-/

namespace A161453.P14850528396897423232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161455 (n + 1))

end

end A161453.P14850528396897423232

/-! ## A161453.P4536625628439533892

`xor(3, A161454(n+1))`
-/

namespace A161453.P4536625628439533892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161454 (n + 1))

end

end A161453.P4536625628439533892

/-! ## A161453.P13758704764316691306

`xor(4, A161449(n+1))`
-/

namespace A161453.P13758704764316691306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161449 (n + 1))

end

end A161453.P13758704764316691306

/-! ## A161453.P11097755328586042088

`xor(5, A161448(n+1))`
-/

namespace A161453.P11097755328586042088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161448 (n + 1))

end

end A161453.P11097755328586042088

/-! ## A161453.P15726258525946088652

`xor(6, A161451(n+1))`
-/

namespace A161453.P15726258525946088652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161451 (n + 1))

end

end A161453.P15726258525946088652

/-! ## A161453.P5505900724501593509

`xor(7, A161450(n+1))`
-/

namespace A161453.P5505900724501593509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161450 (n + 1))

end

end A161453.P5505900724501593509

/-! ## A161453.P18008293352881218454

`xor(8, A161445(n+1))`
-/

namespace A161453.P18008293352881218454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161445 (n + 1))

end

end A161453.P18008293352881218454

/-! ## A161453.P5081110899283022568

`xor(9, A161444(n+1))`
-/

namespace A161453.P5081110899283022568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161444 (n + 1))

end

end A161453.P5081110899283022568

/-! ## A161453.P9411683375480508740

`xor(11, A161446(n+1))`
-/

namespace A161453.P9411683375480508740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161446 (n + 1))

end

end A161453.P9411683375480508740

/-! ## A161453.P16178001812511005248

`xor(12, A161441(n+1))`
-/

namespace A161453.P16178001812511005248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 12 (A161441 (n + 1))

end

end A161453.P16178001812511005248

/-! ## A161453.P3033270606383833243

`xor(A082285(n), A160700(n))`
-/

namespace A161453.P3033270606383833243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n) (A160700 n)

end

end A161453.P3033270606383833243

/-! ## A161453.P11256629371616536007

`xor(A106839(n)+2, A160700(n))`
-/

namespace A161453.P11256629371616536007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106839 n + 2) (A160700 n)

end

end A161453.P11256629371616536007

/-! ## A161453.P11777228417359935933

`xor(A098502(n+1)+1, A160700(n))`
-/

namespace A161453.P11777228417359935933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1) + 1) (A160700 n)

end

end A161453.P11777228417359935933

/-! ## A161453.P11240666354321334855

`A161440(n+1)+A161455(n+1)-A161442(n+1)`
-/

namespace A161453.P11240666354321334855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161455 (n + 1) - A161442 (n + 1))

end

end A161453.P11240666354321334855

/-! ## A161453.P13336708850769404364

`A161441(n+1)+A161452(n+1)-A161440(n+1)`
-/

namespace A161453.P13336708850769404364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161452 (n + 1) - A161440 (n + 1))

end

end A161453.P13336708850769404364

/-! ## A161453.P16814015399820070138

`A161441(n+1)+A161454(n+1)-A161442(n+1)`
-/

namespace A161453.P16814015399820070138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161442 (n + 1))

end

end A161453.P16814015399820070138

/-! ## A161453.P5083140795556764530

`A161443(n+1)+A161452(n+1)-A161442(n+1)`
-/

namespace A161453.P5083140795556764530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161452 (n + 1) - A161442 (n + 1))

end

end A161453.P5083140795556764530

/-! ## A161453.P2530019789383287472

`A161444(n+1)+A161449(n+1)-A161440(n+1)`
-/

namespace A161453.P2530019789383287472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161449 (n + 1) - A161440 (n + 1))

end

end A161453.P2530019789383287472

/-! ## A161453.P13811302652538654284

`A161444(n+1)+A161451(n+1)-A161442(n+1)`
-/

namespace A161453.P13811302652538654284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161451 (n + 1) - A161442 (n + 1))

end

end A161453.P13811302652538654284

/-!
# A161454: Numbers n such that A160700(n) = 14.

The programs for A161454, there is no canonical definition to state claims against.
-/

/-! ## A161454.P6693241215572192730

`xor(1, A161455(n+1))`
-/

namespace A161454.P6693241215572192730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161455 (n + 1))

end

end A161454.P6693241215572192730

/-! ## A161454.P279062805460919481

`xor(2, A161452(n+1))`
-/

namespace A161454.P279062805460919481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161452 (n + 1))

end

end A161454.P279062805460919481

/-! ## A161454.P5832098520288332469

`xor(3, A161453(n+1))`
-/

namespace A161454.P5832098520288332469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161453 (n + 1))

end

end A161454.P5832098520288332469

/-! ## A161454.P9062090599478194635

`xor(4, A161450(n+1))`
-/

namespace A161454.P9062090599478194635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161450 (n + 1))

end

end A161454.P9062090599478194635

/-! ## A161454.P9970654698476066000

`xor(5, A161451(n+1))`
-/

namespace A161454.P9970654698476066000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161451 (n + 1))

end

end A161454.P9970654698476066000

/-! ## A161454.P2192887060699747306

`xor(6, A161448(n+1))`
-/

namespace A161454.P2192887060699747306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161448 (n + 1))

end

end A161454.P2192887060699747306

/-! ## A161454.P12460108157608090650

`xor(7, A161449(n+1))`
-/

namespace A161454.P12460108157608090650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161449 (n + 1))

end

end A161454.P12460108157608090650

/-! ## A161454.P6011187189519697726

`xor(8, A161446(n+1))`
-/

namespace A161454.P6011187189519697726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161446 (n + 1))

end

end A161454.P6011187189519697726

/-! ## A161454.P13659434934484468913

`xor(9, A161447(n+1))`
-/

namespace A161454.P13659434934484468913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161447 (n + 1))

end

end A161454.P13659434934484468913

/-! ## A161454.P13499341408971078208

`xor(11, A161445(n+1))`
-/

namespace A161454.P13499341408971078208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (A161445 (n + 1))

end

end A161454.P13499341408971078208

/-! ## A161454.P1222764424004047833

`xor(A082285(n)+1, A160700(n))`
-/

namespace A161454.P1222764424004047833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n + 1) (A160700 n)

end

end A161454.P1222764424004047833

/-! ## A161454.P6731687898407706899

`xor(A098502(n+1)+2, A160700(n))`
-/

namespace A161454.P6731687898407706899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098502 (n + 1) + 2) (A160700 n)

end

end A161454.P6731687898407706899

/-! ## A161454.P15592642519282797587

`A161440(n+1)+A161455(n+1)-A161441(n+1)`
-/

namespace A161454.P15592642519282797587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161440 (n + 1) + (A161455 (n + 1) - A161441 (n + 1))

end

end A161454.P15592642519282797587

/-! ## A161454.P8254568464438219403

`A161442(n+1)+A161452(n+1)-A161440(n+1)`
-/

namespace A161454.P8254568464438219403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161452 (n + 1) - A161440 (n + 1))

end

end A161454.P8254568464438219403

/-! ## A161454.P71194744665196058

`A161442(n+1)+A161453(n+1)-A161441(n+1)`
-/

namespace A161454.P71194744665196058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161453 (n + 1) - A161441 (n + 1))

end

end A161454.P71194744665196058

/-! ## A161454.P4042767940666559873

`A161443(n+1)+A161452(n+1)-A161441(n+1)`
-/

namespace A161454.P4042767940666559873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161452 (n + 1) - A161441 (n + 1))

end

end A161454.P4042767940666559873

/-! ## A161454.P10114183237222097379

`A161444(n+1)+A161450(n+1)-A161440(n+1)`
-/

namespace A161454.P10114183237222097379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161450 (n + 1) - A161440 (n + 1))

end

end A161454.P10114183237222097379

/-! ## A161454.P1936672879978437975

`A161444(n+1)+A161451(n+1)-A161441(n+1)`
-/

namespace A161454.P1936672879978437975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161451 (n + 1) - A161441 (n + 1))

end

end A161454.P1936672879978437975

/-! ## A161454.P13696812534860499067

`A161444(n+1)+A161455(n+1)-A161445(n+1)`
-/

namespace A161454.P13696812534860499067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161455 (n + 1) - A161445 (n + 1))

end

end A161454.P13696812534860499067

/-! ## A161454.P18435914594101806127

`A161445(n+1)+A161450(n+1)-A161441(n+1)`
-/

namespace A161454.P18435914594101806127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161450 (n + 1) - A161441 (n + 1))

end

end A161454.P18435914594101806127

/-!
# A161455: Numbers n such that A160700(n) = 15.

The programs for A161455, there is no canonical definition to state claims against.
-/

/-! ## A161455.P6644918862333212316

`xor(1, A161454(n+1))`
-/

namespace A161455.P6644918862333212316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161454 (n + 1))

end

end A161455.P6644918862333212316

/-! ## A161455.P17736643121988375270

`xor(2, A161453(n+1))`
-/

namespace A161455.P17736643121988375270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A161453 (n + 1))

end

end A161455.P17736643121988375270

/-! ## A161455.P3662550324700960151

`xor(3, A161452(n+1))`
-/

namespace A161455.P3662550324700960151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A161452 (n + 1))

end

end A161455.P3662550324700960151

/-! ## A161455.P3712377458986073602

`xor(4, A161451(n+1))`
-/

namespace A161455.P3712377458986073602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A161451 (n + 1))

end

end A161455.P3712377458986073602

/-! ## A161455.P8827394932302370740

`xor(5, A161450(n+1))`
-/

namespace A161455.P8827394932302370740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A161450 (n + 1))

end

end A161455.P8827394932302370740

/-! ## A161455.P16189483577908963160

`xor(6, A161449(n+1))`
-/

namespace A161455.P16189483577908963160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A161449 (n + 1))

end

end A161455.P16189483577908963160

/-! ## A161455.P9303462925473493718

`xor(7, A161448(n+1))`
-/

namespace A161455.P9303462925473493718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A161448 (n + 1))

end

end A161455.P9303462925473493718

/-! ## A161455.P2314090565768720583

`xor(8, A161447(n+1))`
-/

namespace A161455.P2314090565768720583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A161447 (n + 1))

end

end A161455.P2314090565768720583

/-! ## A161455.P16495969965218873886

`xor(9, A161446(n+1))`
-/

namespace A161455.P16495969965218873886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A161446 (n + 1))

end

end A161455.P16495969965218873886

/-! ## A161455.P5773874831500188313

`A125169(n)-A160700(n)`
-/

namespace A161455.P5773874831500188313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n - A160700 n

end

end A161455.P5773874831500188313

/-! ## A161455.P11638706710826869283

`A082285(n)+2-A160700(n)`
-/

namespace A161455.P11638706710826869283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + (2 - A160700 n)

end

end A161455.P11638706710826869283

/-! ## A161455.P4952245534777449749

`xor(A082285(n), A160700(xor(2, n)))`
-/

namespace A161455.P4952245534777449749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082285 n) (A160700 (Nat.xor 2 n))

end

end A161455.P4952245534777449749

/-! ## A161455.P2447735723762983720

`A161441(n+1)+A161454(n+1)-A161440(n+1)`
-/

namespace A161455.P2447735723762983720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161441 (n + 1) + (A161454 (n + 1) - A161440 (n + 1))

end

end A161455.P2447735723762983720

/-! ## A161455.P12641326911807882689

`A161442(n+1)+A161453(n+1)-A161440(n+1)`
-/

namespace A161455.P12641326911807882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161442 (n + 1) + (A161453 (n + 1) - A161440 (n + 1))

end

end A161455.P12641326911807882689

/-! ## A161455.P12997973633669797382

`A161443(n+1)+A161452(n+1)-A161440(n+1)`
-/

namespace A161455.P12997973633669797382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161452 (n + 1) - A161440 (n + 1))

end

end A161455.P12997973633669797382

/-! ## A161455.P15410117549185630338

`A161443(n+1)+A161453(n+1)-A161441(n+1)`
-/

namespace A161455.P15410117549185630338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161443 (n + 1) + (A161453 (n + 1) - A161441 (n + 1))

end

end A161455.P15410117549185630338

/-! ## A161455.P8116739547006450795

`A161444(n+1)+A161451(n+1)-A161440(n+1)`
-/

namespace A161455.P8116739547006450795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161444 (n + 1) + (A161451 (n + 1) - A161440 (n + 1))

end

end A161455.P8116739547006450795

/-! ## A161455.P16557351870046342244

`A161445(n+1)+A161450(n+1)-A161440(n+1)`
-/

namespace A161455.P16557351870046342244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161450 (n + 1) - A161440 (n + 1))

end

end A161455.P16557351870046342244

/-! ## A161455.P16133381876163566596

`A161445(n+1)+A161451(n+1)-A161441(n+1)`
-/

namespace A161455.P16133381876163566596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161451 (n + 1) - A161441 (n + 1))

end

end A161455.P16133381876163566596

/-! ## A161455.P12326367923058034547

`A161445(n+1)+A161454(n+1)-A161444(n+1)`
-/

namespace A161455.P12326367923058034547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161445 (n + 1) + (A161454 (n + 1) - A161444 (n + 1))

end

end A161455.P12326367923058034547

/-!
# A161456: Number of reduced words of length n in the Weyl group A_8.

The programs for A161456, there is no canonical definition to state claims against.
-/

/-! ## A161456.P10015105304353893601

`A177517(A000217(n+9)+10)`
-/

namespace A161456.P10015105304353893601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 9) + 10).toNat

end

end A161456.P10015105304353893601

/-!
# A161457: Number of reduced words of length n in the Weyl group A_9.

The programs for A161457, there is no canonical definition to state claims against.
-/

/-! ## A161457.P3916655510608380116

`A177517(A000217(n+10)+11)`
-/

namespace A161457.P3916655510608380116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 10) + 11).toNat

end

end A161457.P3916655510608380116

/-!
# A161458: Number of reduced words of length n in the Weyl group A_10.

The programs for A161458, there is no canonical definition to state claims against.
-/

/-! ## A161458.P4985784431180161624

`A177517(A000217(n+11)+12)`
-/

namespace A161458.P4985784431180161624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 11) + 12).toNat

end

end A161458.P4985784431180161624

/-!
# A161459: Number of reduced words of length n in the Weyl group A_11.

The programs for A161459, there is no canonical definition to state claims against.
-/

/-! ## A161459.P12725710050420036034

`A177517(A000217(n+12)+13)`
-/

namespace A161459.P12725710050420036034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 12) + 13).toNat

end

end A161459.P12725710050420036034

/-!
# A161460: Positive integers k such that there is no m different from k where both d(k) = d(m) and d(k+1) = d(m+1), where d(k) is the number of positive divisors of k.

The programs for A161460, there is no canonical definition to state claims against.
-/

/-! ## A161460.P15920789201398253712

`eq[abs(A323186(n)), A191411(n+1)]`
-/

namespace A161460.P15920789201398253712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323186 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161460.P15920789201398253712

/-! ## A161460.P12408942531853224924

`∩[A227762(n+1), A368448(n+1)]`
-/

namespace A161460.P12408942531853224924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161460.P12408942531853224924

/-! ## A161460.P150533379733565928

`eq[A001221(A034867(n)), A266178(n)]`
-/

namespace A161460.P150533379733565928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034867 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161460.P150533379733565928

/-! ## A161460.P5557529368624290154

`lt[A309981(n+1), 2]+1`
-/

namespace A161460.P5557529368624290154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309981 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161460.P5557529368624290154

/-! ## A161460.P17858688365249166207

`eq[A067461(n+1), A177276(n)]`
-/

namespace A161460.P17858688365249166207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161460.P17858688365249166207

/-!
# A161461: Number of reduced words of length n in the Weyl group A_12.

The programs for A161461, there is no canonical definition to state claims against.
-/

/-! ## A161461.P14113672940191924727

`A177517(A000217(n+14)-n)`
-/

namespace A161461.P14113672940191924727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A161461.P14113672940191924727

/-!
# A161462: Final digit of the sum of all the integers from n to 2*n-1.

The programs for A161462, the canonical program `A161462.P5528806830031042890` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161462 has offset 1).

The definition of A161462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161462.P5528806830031042890

`((n+1)*(3*(n+1)-1)/2)%10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161462

/-- `((n+1)*(3*(n+1)-1)/2)%10` -/
def P5528806830031042890.Spec : Prop :=
  ∀ n, P5528806830031042890.a n = A161462 (n + 1)

theorem P5528806830031042890.correct : P5528806830031042890.Spec := by
  intro n
  simp only [A161462, Nat.add_sub_cancel]

end A161462

/-!
# A161463: Sum of all primes from n-th prime to (2*n-1)-th prime.

The programs for A161463, the canonical program `A161463.P3939391229577481426` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161463 has offset 1).

The definition of A161463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161463.P9867858354264695794

`record[Δ[A007504(lcm(2, n)/2)]]`
-/

namespace A161463.P9867858354264695794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161463.P9867858354264695794

namespace A161463

/-- `record[Δ[A007504(lcm(2, n)/2)]]` -/
def P9867858354264695794.Spec : Prop :=
  ∀ n, P9867858354264695794.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P11591641769224841536

`A109723(n)-A007504(n)`
-/

namespace A161463.P11591641769224841536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A007504 n

end

end A161463.P11591641769224841536

namespace A161463

/-- `A109723(n)-A007504(n)` -/
def P11591641769224841536.Spec : Prop :=
  ∀ n, P11591641769224841536.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P10089743271570902430

`2*A321178(n)-A007504(n)`
-/

namespace A161463.P10089743271570902430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321178 n - A007504 n

end

end A161463.P10089743271570902430

namespace A161463

/-- `2*A321178(n)-A007504(n)` -/
def P10089743271570902430.Spec : Prop :=
  ∀ n, P10089743271570902430.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P8368890331820546415

`A007504(Δ[n²])-A007504(n)`
-/

namespace A161463.P8368890331820546415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A007504 n

end

end A161463.P8368890331820546415

namespace A161463

/-- `A007504(Δ[n²])-A007504(n)` -/
def P8368890331820546415.Spec : Prop :=
  ∀ n, P8368890331820546415.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P6751027475716498453

`A105720(n+1)-A031215(n+1)`
-/

namespace A161463.P6751027475716498453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A031215 (n + 1)

end

end A161463.P6751027475716498453

namespace A161463

/-- `A105720(n+1)-A031215(n+1)` -/
def P6751027475716498453.Spec : Prop :=
  ∀ n, P6751027475716498453.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P4902663643816391795

`A131740(n+1)-A072473(n+1)`
-/

namespace A161463.P4902663643816391795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) - A072473 (n + 1)

end

end A161463.P4902663643816391795

namespace A161463

/-- `A131740(n+1)-A072473(n+1)` -/
def P4902663643816391795.Spec : Prop :=
  ∀ n, P4902663643816391795.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P4258480865997961775

`abs(A007504(2*n+1)-A007504(n))`
-/

namespace A161463.P4258480865997961775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007504 (2 * n + 1) - A007504 n|

end

end A161463.P4258480865997961775

namespace A161463

/-- `abs(A007504(2*n+1)-A007504(n))` -/
def P4258480865997961775.Spec : Prop :=
  ∀ n, P4258480865997961775.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P17393290260568390374

`A014284(2*(n+1))-A014284(n+1)`
-/

namespace A161463.P17393290260568390374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (2 * (n + 1)) - A014284 (n + 1)

end

end A161463.P17393290260568390374

namespace A161463

/-- `A014284(2*(n+1))-A014284(n+1)` -/
def P17393290260568390374.Spec : Prop :=
  ∀ n, P17393290260568390374.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P3939391229577481426

`A036439(2*(n+1))-A036439(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161463

/-- `A036439(2*(n+1))-A036439(n+1)` -/
def P3939391229577481426.Spec : Prop :=
  ∀ n, P3939391229577481426.a n = A161463 (n + 1)

theorem P3939391229577481426.correct : P3939391229577481426.Spec := by
  intro n
  simp only [A161463, Nat.add_sub_cancel]

end A161463

/-! ## A161463.P4848490943186144577

`A105720(n+1)-A000040(2*(n+1))`
-/

namespace A161463.P4848490943186144577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A000040 (2 * (n + 1))

end

end A161463.P4848490943186144577

namespace A161463

/-- `A105720(n+1)-A000040(2*(n+1))` -/
def P4848490943186144577.Spec : Prop :=
  ∀ n, P4848490943186144577.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P10090670669936792111

`A105720(n+1)-A065091(2*n+1)`
-/

namespace A161463.P10090670669936792111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A065091 (2 * n + 1)

end

end A161463.P10090670669936792111

namespace A161463

/-- `A105720(n+1)-A065091(2*n+1)` -/
def P10090670669936792111.Spec : Prop :=
  ∀ n, P10090670669936792111.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P9083069027009037493

`A227547(2*(n+1))-A227547(n+1)`
-/

namespace A161463.P9083069027009037493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (2 * (n + 1)) - A227547 (n + 1)

end

end A161463.P9083069027009037493

namespace A161463

/-- `A227547(2*(n+1))-A227547(n+1)` -/
def P9083069027009037493.Spec : Prop :=
  ∀ n, P9083069027009037493.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P16878131420816412216

`A175965(2*n+3)-A175965(n+2)`
-/

namespace A161463.P16878131420816412216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (2 * n + 3) - A175965 (n + 2)

end

end A161463.P16878131420816412216

namespace A161463

/-- `A175965(2*n+3)-A175965(n+2)` -/
def P16878131420816412216.Spec : Prop :=
  ∀ n, P16878131420816412216.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P12740429839051352832

`A024369(2*(n+1))+A024328(2*n+1)`
-/

namespace A161463.P12740429839051352832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024369 (2 * (n + 1)) + A024328 (2 * n + 1)

end

end A161463.P12740429839051352832

namespace A161463

/-- `A024369(2*(n+1))+A024328(2*n+1)` -/
def P12740429839051352832.Spec : Prop :=
  ∀ n, P12740429839051352832.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P5736333921273385491

`A024377(2*n+1)+A024328(2*n+1)`
-/

namespace A161463.P5736333921273385491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024377 (2 * n + 1) + A024328 (2 * n + 1)

end

end A161463.P5736333921273385491

namespace A161463

/-- `A024377(2*n+1)+A024328(2*n+1)` -/
def P5736333921273385491.Spec : Prop :=
  ∀ n, P5736333921273385491.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P2938468766545768150

`A109723(n)-A066911(A000040(n+1))`
-/

namespace A161463.P2938468766545768150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A066911 (A000040 (n + 1)).toNat

end

end A161463.P2938468766545768150

namespace A161463

/-- `A109723(n)-A066911(A000040(n+1))` -/
def P2938468766545768150.Spec : Prop :=
  ∀ n, P2938468766545768150.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P14304646003542885934

`A109723(n)-∪[A109722(n), A109723(n)]`
-/

namespace A161463.P14304646003542885934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A161463.P14304646003542885934

namespace A161463

/-- `A109723(n)-∪[A109722(n), A109723(n)]` -/
def P14304646003542885934.Spec : Prop :=
  ∀ n, P14304646003542885934.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P16082840083861406469

`A105720(n+1)-(A072473(n+1)+A000040(n+1))`
-/

namespace A161463.P16082840083861406469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - (A072473 (n + 1) + A000040 (n + 1))

end

end A161463.P16082840083861406469

namespace A161463

/-- `A105720(n+1)-(A072473(n+1)+A000040(n+1))` -/
def P16082840083861406469.Spec : Prop :=
  ∀ n, P16082840083861406469.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P14773869112475187323

`A105720(n+1)-(A100484(n+1)+A066066(n+1))`
-/

namespace A161463.P14773869112475187323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - (A100484 (n + 1) + A066066 (n + 1))

end

end A161463.P14773869112475187323

namespace A161463

/-- `A105720(n+1)-(A100484(n+1)+A066066(n+1))` -/
def P14773869112475187323.Spec : Prop :=
  ∀ n, P14773869112475187323.a n = A161463 (n + 1)

end A161463

/-! ## A161463.P6916099707824527892

`A105720(n+1)+A233739(n+1)-A104272(n+1)`
-/

namespace A161463.P6916099707824527892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) + (A233739 (n + 1) - A104272 (n + 1))

end

end A161463.P6916099707824527892

namespace A161463

/-- `A105720(n+1)+A233739(n+1)-A104272(n+1)` -/
def P6916099707824527892.Spec : Prop :=
  ∀ n, P6916099707824527892.a n = A161463 (n + 1)

end A161463

/-!
# A161464: Sum of all digits of primes from n-th prime to (2*n-1)-th prime.

The programs for A161464, the canonical program `A161464.P870720688420773945` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161464 has offset 1).

The definition of A161464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161464.P870720688420773945

`A051351(Δ[n²])-A051351(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161464

/-- `A051351(Δ[n²])-A051351(n)` -/
def P870720688420773945.Spec : Prop :=
  ∀ n, P870720688420773945.a n = A161464 (n + 1)

theorem P870720688420773945.correct : P870720688420773945.Spec := by
  intro n
  simp only [A161464, Nat.add_sub_cancel]

end A161464

/-! ## A161464.P17589301935768296696

`abs(A051351(2*n+1)-A051351(n))`
-/

namespace A161464.P17589301935768296696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051351 (2 * n + 1) - A051351 n|

end

end A161464.P17589301935768296696

namespace A161464

/-- `abs(A051351(2*n+1)-A051351(n))` -/
def P17589301935768296696.Spec : Prop :=
  ∀ n, P17589301935768296696.a n = A161464 (n + 1)

end A161464

/-! ## A161464.P4533709655330886659

`round(sqrt((A051351(n+1+n)-A051351(n))²+1))`
-/

namespace A161464.P4533709655330886659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A051351 (n + 1 + n) - A051351 n) ^ 2 + 1 : ℝ))

end

end A161464.P4533709655330886659

namespace A161464

/-- `round(sqrt((A051351(n+1+n)-A051351(n))²+1))` -/
def P4533709655330886659.Spec : Prop :=
  ∀ n, P4533709655330886659.a n = A161464 (n + 1)

end A161464

/-! ## A161464.P4851129471769853431

`(A051351(2*n+1)-A051351(n))%A000040(n+1)²`
-/

namespace A161464.P4851129471769853431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051351 (2 * n + 1) - A051351 n) (A000040 (n + 1) ^ 2)

end

end A161464.P4851129471769853431

namespace A161464

/-- `(A051351(2*n+1)-A051351(n))%A000040(n+1)²` -/
def P4851129471769853431.Spec : Prop :=
  ∀ n, P4851129471769853431.a n = A161464 (n + 1)

end A161464

/-! ## A161464.P12632066050371351630

`A051351(2*n+1)+A051351(n)/A008683(A068486(n+1))`
-/

namespace A161464.P12632066050371351630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051351 (2 * n + 1) : ℚ) + (A051351 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A161464.P12632066050371351630

namespace A161464

/-- `A051351(2*n+1)+A051351(n)/A008683(A068486(n+1))` -/
def P12632066050371351630.Spec : Prop :=
  ∀ n, P12632066050371351630.a n = (A161464 (n + 1) : ℚ)

end A161464

/-! ## A161464.P4279679013600934043

`A045497(A000132(n))+A051351(n+1+n)-A051351(n)-1`
-/

namespace A161464.P4279679013600934043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (A000132 n).toNat + (A051351 (n + 1 + n) - A051351 n - 1)

end

end A161464.P4279679013600934043

namespace A161464

/-- `A045497(A000132(n))+A051351(n+1+n)-A051351(n)-1` -/
def P4279679013600934043.Spec : Prop :=
  ∀ n, P4279679013600934043.a n = A161464 (n + 1)

end A161464

/-!
# A161465: Number of reduced words of length n in the Weyl group A_13.

The programs for A161465, there is no canonical definition to state claims against.
-/

/-! ## A161465.P14207437727789531182

`A177517(A000217(n+15)-n)`
-/

namespace A161465.P14207437727789531182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 15) - (n : ℤ)).toNat

end

end A161465.P14207437727789531182

/-!
# A161466: Divisors of 10!.

The programs for A161466, the canonical program `A161466.P17609333070254711809` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161466 has offset 1).

The definition of A161466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161466.P16246902343989492050

`A079210(378+n)`
-/

namespace A161466.P16246902343989492050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (378 + n)

end

end A161466.P16246902343989492050

namespace A161466

/-- `A079210(378+n)` -/
def P16246902343989492050.Spec : Prop :=
  ∀ n, P16246902343989492050.a n = A161466 (n + 1)

end A161466

/-! ## A161466.P17609333070254711809

`record[gcd(n+1, A008527(gcd(n, n+1))!)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161466

/-- `record[gcd(n+1, A008527(gcd(n, n+1))!)]` -/
def P17609333070254711809.Spec : Prop :=
  ∀ n, (P17609333070254711809.a n : ℤ) = A161466 (n + 1)

theorem P17609333070254711809.correct : P17609333070254711809.Spec := by
  intro n
  simp only [A161466, Nat.add_sub_cancel]

end A161466

/-! ## A161466.P179411639603222323

`lt[A057108(n+1)+A006530(n+1), 11]+1`
-/

namespace A161466.P179411639603222323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1) + A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161466.P179411639603222323

namespace A161466

/-- `lt[A057108(n+1)+A006530(n+1), 11]+1` -/
def P179411639603222323.Spec : Prop :=
  ∀ n, (P179411639603222323.a n : ℤ) = A161466 (n + 1)

end A161466

/-! ## A161466.P8546149553181369060

`lt[A002034(n+1), 11]+1`
-/

namespace A161466.P8546149553181369060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161466.P8546149553181369060

namespace A161466

/-- `lt[A002034(n+1), 11]+1` -/
def P8546149553181369060.Spec : Prop :=
  ∀ n, (P8546149553181369060.a n : ℤ) = A161466 (n + 1)

end A161466

/-! ## A161466.P9835074606671664862

`lt[A061243(n+1)-(n+1), 11]+1`
-/

namespace A161466.P9835074606671664862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161466.P9835074606671664862

namespace A161466

/-- `lt[A061243(n+1)-(n+1), 11]+1` -/
def P9835074606671664862.Spec : Prop :=
  ∀ n, (P9835074606671664862.a n : ℤ) = A161466 (n + 1)

end A161466

/-! ## A161466.P2357154759868052863

`eq[A002034(n+1), A004883(A002034(n+1)+1)]+1`
-/

namespace A161466.P2357154759868052863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (A002034 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161466.P2357154759868052863

namespace A161466

/-- `eq[A002034(n+1), A004883(A002034(n+1)+1)]+1` -/
def P2357154759868052863.Spec : Prop :=
  ∀ n, (P2357154759868052863.a n : ℤ) = A161466 (n + 1)

end A161466

/-! ## A161466.P10445723700474730355

`record[A346089(11*(n+1))]`
-/

namespace A161466.P10445723700474730355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (11 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161466.P10445723700474730355

namespace A161466

/-- `record[A346089(11*(n+1))]` -/
def P10445723700474730355.Spec : Prop :=
  ∀ n, P10445723700474730355.a n = A161466 (n + 1)

end A161466

/-! ## A161466.P9608624906811686869

`record[A048841(n)/A002034(A048841(n))]`
-/

namespace A161466.P9608624906811686869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048841 n : ℚ) / (A002034 (A048841 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161466.P9608624906811686869

namespace A161466

/-- `record[A048841(n)/A002034(A048841(n))]` -/
def P9608624906811686869.Spec : Prop :=
  ∀ n, P9608624906811686869.a n = (A161466 (n + 1) : ℚ)

end A161466

/-!
# A161467: Digital sum of n^3 is 3*(digital sum of n).

The programs for A161467, there is no canonical definition to state claims against.
-/

/-! ## A161467.P387203686350384064

`eq[A004164(n), A008486(A007953(n))]`
-/

namespace A161467.P387203686350384064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161467.P387203686350384064

/-! ## A161467.P1164958982319137366

`eq[A004164(n), A008486(A169805(n)/2)]`
-/

namespace A161467.P1164958982319137366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161467.P1164958982319137366

/-!
# A161468: Fibonacci numbers that are more abundant than any smaller Fibonacci number.

The programs for A161468, there is no canonical definition to state claims against.
-/

/-! ## A161468.P14838449757820371927

`A000045(A037918(n+1)+A062513(n+1)²)`
-/

namespace A161468.P14838449757820371927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037918 (n + 1) + A062513 (n + 1) ^ 2).toNat

end

end A161468.P14838449757820371927

/-! ## A161468.P10208930891146456869

`A000045((A037918(n+1)+1)*A062513(n+1))`
-/

namespace A161468.P10208930891146456869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A037918 (n + 1) + 1) * A062513 (n + 1)).toNat

end

end A161468.P10208930891146456869

/-! ## A161468.P5586198850359402679

`A000045(A037918(n+1)+1)^A062513(n+1)`
-/

namespace A161468.P5586198850359402679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A037918 (n + 1) + 1).toNat : ℚ) ^ (A062513 (n + 1) : ℤ)

end

end A161468.P5586198850359402679

/-! ## A161468.P9459153042396512575

`A000045(A037918(n+1)+1)%A335890(n+2)`
-/

namespace A161468.P9459153042396512575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A037918 (n + 1) + 1).toNat) (A335890 (n + 2))

end

end A161468.P9459153042396512575

/-!
# A161471: Primes of the form k^k + k + 1.

The programs for A161471, there is no canonical definition to state claims against.
-/

/-! ## A161471.P5828088396395980991

`record[gcd(n, n%3)^n+1+n]`
-/

namespace A161471.P5828088396395980991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 3) ^ n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161471.P5828088396395980991

/-!
# A161474: Triple factorials n!!!: a(n) = n*a(n-3).

The programs for A161474, the canonical program `A161474.P11554990974451577541` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161474 has offset 0).

The definition of A161474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-3)` (program `A161474.P11554990974451577541`, by `A161474.P11554990974451577541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161474.P11554990974451577541

`n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161474

/-- `n*a(n-3)` -/
def P11554990974451577541.Spec : Prop :=
  ∀ n, (P11554990974451577541.a n : ℤ) = A161474 n

theorem P11554990974451577541.correct : P11554990974451577541.Spec := by
  intro n
  simp only [A161474]

end A161474

/-! ## A161474.P15310022155512343438

`a(n-3)/n^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A161474.P15310022155512343438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) / (n : ℚ) ^ (-1 : ℤ)

end

end A161474.P15310022155512343438

namespace A161474

/-- `a(n-3)/n^(-1)` -/
def P15310022155512343438.Spec : Prop :=
  ∀ n, P15310022155512343438.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P15494610229598216224

`abs(a(n-3))/tan(acot(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A161474.P15494610229598216224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  |a (n - 3)| / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A161474.P15494610229598216224

namespace A161474

/-- `abs(a(n-3))/tan(acot(n))` -/
def P15494610229598216224.Spec : Prop :=
  ∀ n, P15494610229598216224.a n = (A161474 n : ℝ)

end A161474

/-! ## A161474.P10072577668882011325

`A007661(n)/(n%3)!`
-/

namespace A161474.P10072577668882011325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007661 n : ℚ) / (Nat.factorial (n % 3) : ℚ)

end

end A161474.P10072577668882011325

namespace A161474

/-- `A007661(n)/(n%3)!` -/
def P10072577668882011325.Spec : Prop :=
  ∀ n, P10072577668882011325.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P11222824789577588560

`A007661(n)/A177702(n)`
-/

namespace A161474.P11222824789577588560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007661 n : ℚ) / (A177702 n : ℚ)

end

end A161474.P11222824789577588560

namespace A161474

/-- `A007661(n)/A177702(n)` -/
def P11222824789577588560.Spec : Prop :=
  ∀ n, P11222824789577588560.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P18212814900922545518

`abs(A007661(n)/A061347(n+1))`
-/

namespace A161474.P18212814900922545518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007661 n : ℚ) / (A061347 (n + 1) : ℚ)|

end

end A161474.P18212814900922545518

namespace A161474

/-- `abs(A007661(n)/A061347(n+1))` -/
def P18212814900922545518.Spec : Prop :=
  ∀ n, P18212814900922545518.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P1985569740124413923

`A007661(n)/A051194(A055998(n+2))`
-/

namespace A161474.P1985569740124413923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007661 n : ℚ) / (A051194 (A055998 (n + 2)).toNat : ℚ)

end

end A161474.P1985569740124413923

namespace A161474

/-- `A007661(n)/A051194(A055998(n+2))` -/
def P1985569740124413923.Spec : Prop :=
  ∀ n, P1985569740124413923.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P5505027902230382800

`A129116(A034856(n+1))/A254046(C(n+3, 2)-2)`
-/

namespace A161474.P5505027902230382800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129116 (A034856 (n + 1)).toNat : ℚ) / (A254046 (Nat.choose (n + 3) 2 - 2) : ℚ)

end

end A161474.P5505027902230382800

namespace A161474

/-- `A129116(A034856(n+1))/A254046(C(n+3, 2)-2)` -/
def P5505027902230382800.Spec : Prop :=
  ∀ n, P5505027902230382800.a n = (A161474 n : ℚ)

end A161474

/-! ## A161474.P12593167409745991707

`A129116(A034856(n+1))/A254046(A034856(n+1))`
-/

namespace A161474.P12593167409745991707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129116 (A034856 (n + 1)).toNat : ℚ) / (A254046 (A034856 (n + 1)).toNat : ℚ)

end

end A161474.P12593167409745991707

namespace A161474

/-- `A129116(A034856(n+1))/A254046(A034856(n+1))` -/
def P12593167409745991707.Spec : Prop :=
  ∀ n, P12593167409745991707.a n = (A161474 n : ℚ)

end A161474

/-!
# A161475: Number of reduced words of length n in the Weyl group A_14.

The programs for A161475, there is no canonical definition to state claims against.
-/

/-! ## A161475.P8983176855527199615

`A162301(n)-A241173(A239758(n))`
-/

namespace A161475.P8983176855527199615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162301 n - A241173 (A239758 n).toNat

end

end A161475.P8983176855527199615

/-!
# A161476: Number of reduced words of length n in the Weyl group A_15.

The programs for A161476, there is no canonical definition to state claims against.
-/

/-! ## A161476.P15177884588501374476

`A162321(n)-A321395(A390191(n+1))`
-/

namespace A161476.P15177884588501374476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162321 n - A321395 (A390191 (n + 1)).toNat

end

end A161476.P15177884588501374476

/-!
# A161479: Positive numbers y such that y^2 is of the form x^2+(x+113)^2 with integer x.

The programs for A161479, the canonical program `A161479.P14004829531680940817` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161479 has offset 1).

The definition of A161479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161479.P14004829531680940817

`6*a(n-3)-a(n-6)` with `a(0)=85, a(1)=113, a(2)=173, a(3)=337, a(4)=565, a(5)=953`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161479

/-- `6*a(n-3)-a(n-6)` -/
def P14004829531680940817.Spec : Prop :=
  ∀ n, P14004829531680940817.a n = A161479 (n + 1)

theorem P14004829531680940817.correct : P14004829531680940817.Spec := by
  intro n
  simp only [A161479, Nat.add_sub_cancel]

end A161479

/-!
# A161486: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+191)^2 = y^2.

The programs for A161486, there is no canonical definition to state claims against.
-/

/-! ## A161486.P9523546411486042435

`A129641(n+1)+A204765(n+1)-A129642(n+1)`
-/

namespace A161486.P9523546411486042435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129641 (n + 1) + (A204765 (n + 1) - A129642 (n + 1))

end

end A161486.P9523546411486042435

/-!
# A161490: a(n) = smallest prime of the form k*n+s(n) where s(n) is the sum of the first n primes, or a(n) = 0 if no such prime exists.

The programs for A161490, there is no canonical definition to state claims against.
-/

/-! ## A161490.P10083965653830001365

`A356903(A045604(n+2))`
-/

namespace A161490.P10083965653830001365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356903 (A045604 (n + 2)).toNat

end

end A161490.P10083965653830001365

/-! ## A161490.P11805489983879175948

`p?[record[A281680(A049345(n))]]`
-/

namespace A161490.P11805489983879175948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A049345 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161490.P11805489983879175948

/-! ## A161490.P2959599092054050070

`record[A281680(A049345(n+2))]`
-/

namespace A161490.P2959599092054050070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A049345 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161490.P2959599092054050070

/-! ## A161490.P6126831893787200526

`A000040(record[A273135(n+1)+A273102(n+1)])`
-/

namespace A161490.P6126831893787200526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273135 (n + 1) + A273102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161490.P6126831893787200526

/-!
# A161491: a(n) = number of primes p less than A000040(n) (the n-th prime) such that (p + 1)*(A000040(n) - 1) is a square.

The programs for A161491, there is no canonical definition to state claims against.
-/

/-! ## A161491.P5374716963057689092

`A191217(n+1)%A088570(A089259(n))`
-/

namespace A161491.P5374716963057689092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191217 (n + 1)) (A088570 (A089259 n).toNat)

end

end A161491.P5374716963057689092

/-! ## A161491.P15421942963279633692

`A257000(n)+A112765(A054538(n+1))`
-/

namespace A161491.P15421942963279633692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n + A112765 (A054538 (n + 1)).toNat

end

end A161491.P15421942963279633692

/-! ## A161491.P9794746774174301091

`A112765(A054538(n+1))+char[A007918(n)]`
-/

namespace A161491.P9794746774174301091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A054538 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A161491.P9794746774174301091

/-! ## A161491.P2094360075901357343

`A112765(A054538(n+1))+char[A000040(n+1)]`
-/

namespace A161491.P2094360075901357343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A054538 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A161491.P2094360075901357343

/-! ## A161491.P14364478318265460180

`A112765(A054538(n+1))+char[A020639(n+2)]`
-/

namespace A161491.P14364478318265460180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A054538 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A161491.P14364478318265460180

/-!
# A161492: Triangle T(n,m) read by rows: the number of skew Ferrers diagrams with area n and m columns.

The programs for A161492, there is no canonical definition to state claims against.
-/

/-! ## A161492.P10377486680151520444

`A101107(A060098(n))-4`
-/

namespace A161492.P10377486680151520444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101107 (A060098 n).toNat - 4

end

end A161492.P10377486680151520444

/-! ## A161492.P13860797958972350872

`A072966(A331461(n))+A007318(n)`
-/

namespace A161492.P13860797958972350872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (A331461 n).toNat + A007318 n

end

end A161492.P13860797958972350872

/-! ## A161492.P13472044280853761766

`A067693(A154372(n))`
-/

namespace A161492.P13472044280853761766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A154372 n).toNat

end

end A161492.P13472044280853761766

/-! ## A161492.P12732035553631896780

`A196383(A109955(n))`
-/

namespace A161492.P12732035553631896780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196383 (A109955 n).toNat

end

end A161492.P12732035553631896780

/-! ## A161492.P3183299872277378945

`A325678(A090981(n))`
-/

namespace A161492.P3183299872277378945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A090981 n).toNat

end

end A161492.P3183299872277378945

/-!
# A161493: Positive integers, k, for which k mod d(k) and k have opposite (odd/even) parity, where d(k) is the number of divisors of k.

The programs for A161493, there is no canonical definition to state claims against.
-/

/-! ## A161493.P18342310873985401114

`A161494(n+1)²`
-/

namespace A161493.P18342310873985401114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161494 (n + 1) ^ 2

end

end A161493.P18342310873985401114

/-! ## A161493.P3257896460762189470

`A161494(n+1)^A020639(2*(n+1))`
-/

namespace A161493.P3257896460762189470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161494 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A161493.P3257896460762189470

/-! ## A161493.P13451460725124510287

`A161494(n+1)^A161494(3-ceil(2/(n+1)))`
-/

namespace A161493.P13451460725124510287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161494 (n + 1) : ℚ) ^ (A161494 (3 - ⌈2 / (n + 1 : ℚ)⌉).toNat : ℤ)

end

end A161493.P13451460725124510287

/-! ## A161493.P12661152345580963280

`A161494(n+1)%A000040(n+1)*A161494(n+1)`
-/

namespace A161493.P12661152345580963280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161494 (n + 1)) (A000040 (n + 1)) * A161494 (n + 1)

end

end A161493.P12661152345580963280

/-! ## A161493.P14211417851593975583

`A161494(n+1)*A161494((n+1)%A003626(n+1))`
-/

namespace A161493.P14211417851593975583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161494 (n + 1) * A161494 (Int.tmod (n + 1 : ℤ) (A003626 (n + 1))).toNat

end

end A161493.P14211417851593975583

/-! ## A161493.P2650575221394751075

`A161494(n+1)*A161494(A002260(∑[n+4]+3))`
-/

namespace A161493.P2650575221394751075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161494 (n + 1) * A161494 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 3)).toNat

end

end A161493.P2650575221394751075

/-! ## A161493.P4135228002515395038

`record[A161494(A004736(n+1))]*A161494(n+1)`
-/

namespace A161493.P4135228002515395038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161494 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A161494 (n + 1)

end

end A161493.P4135228002515395038

/-!
# A161494: The square roots of the terms of A161493.

The programs for A161494, there is no canonical definition to state claims against.
-/

/-! ## A161494.P6714553590998017677

`A000196(A161493(n+1))`
-/

namespace A161494.P6714553590998017677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A161493 (n + 1)).toNat

end

end A161494.P6714553590998017677

/-! ## A161494.P3935319687308288524

`A000027(root(A161493(n+1), 2))`
-/

namespace A161494.P3935319687308288524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A161493 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A161494.P3935319687308288524

/-! ## A161494.P5872114069871338189

`root(A161493(n+1), 2%A153057(n))`
-/

namespace A161494.P5872114069871338189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A161493 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A153057 n) : ℝ))

end

end A161494.P5872114069871338189

/-! ## A161494.P7082971803240333044

`root(A161493(n+1), gcd(2, A016742(n)))`
-/

namespace A161494.P7082971803240333044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A161493 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A016742 n) : ℝ))

end

end A161494.P7082971803240333044

/-! ## A161494.P17860095173986104276

`root(A161493(n+1)%A030690(n+1), 2)`
-/

namespace A161494.P17860095173986104276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A161493 (n + 1)) (A030690 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A161494.P17860095173986104276

/-! ## A161494.P7260720761069594193

`root(A161493(n+1), A153057(n)-A056520(n))`
-/

namespace A161494.P7260720761069594193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A161493 (n + 1) : ℝ) ^ (1 / (A153057 n - A056520 n : ℝ))

end

end A161494.P7260720761069594193

/-! ## A161494.P18033961436381945646

`A262689(A161493(n+1)+char[1])`
-/

namespace A161494.P18033961436381945646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A161493 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A161494.P18033961436381945646

/-! ## A161494.P5658992883972349135

`A262689(A161493(n+1))%A003626(n+1)`
-/

namespace A161494.P5658992883972349135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262689 (A161493 (n + 1)).toNat) (A003626 (n + 1))

end

end A161494.P5658992883972349135

/-!
# A161495: Expansion of x*(3*x-1)*(x-3)/(1-15*x+32*x^2-15*x^3+x^4).

The programs for A161495, the canonical program `A161495.P623509698095674895` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161495 has offset 1).

The definition of A161495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-10x+3x^2)/(1-15x+32x^2-15x^3+x^4))` (program `A161495.P623509698095674895`, by `A161495.P623509698095674895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161495.P623509698095674895

`ogf((3-10x+3x^2)/(1-15x+32x^2-15x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161495

/-- `ogf((3-10x+3x^2)/(1-15x+32x^2-15x^3+x^4))` -/
def P623509698095674895.Spec : Prop :=
  ∀ n, P623509698095674895.a n = A161495 (n + 1)

theorem P623509698095674895.correct : P623509698095674895.Spec := by
  intro n
  simp only [A161495, Nat.add_sub_cancel]

end A161495

/-! ## A161495.P12861313022281140366

`Δ[A002878(n)]*A004254(n+1)`
-/

namespace A161495.P12861313022281140366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004254 (n + 1)

end

end A161495.P12861313022281140366

namespace A161495

/-- `Δ[A002878(n)]*A004254(n+1)` -/
def P12861313022281140366.Spec : Prop :=
  ∀ n, P12861313022281140366.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P13306174298086411150

`A004254(n+1)*A005248(n+1)`
-/

namespace A161495.P13306174298086411150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) * A005248 (n + 1)

end

end A161495.P13306174298086411150

namespace A161495

/-- `A004254(n+1)*A005248(n+1)` -/
def P13306174298086411150.Spec : Prop :=
  ∀ n, P13306174298086411150.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P12439573017837187093

`∑[A004253(n+1)]*Δ[A002878(n)]`
-/

namespace A161495.P12439573017837187093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A161495.P12439573017837187093

namespace A161495

/-- `∑[A004253(n+1)]*Δ[A002878(n)]` -/
def P12439573017837187093.Spec : Prop :=
  ∀ n, P12439573017837187093.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P14929003505358998425

`Δ[A002878(n)]*A136211(2*n+1)`
-/

namespace A161495.P14929003505358998425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A136211 (2 * n + 1)

end

end A161495.P14929003505358998425

namespace A161495

/-- `Δ[A002878(n)]*A136211(2*n+1)` -/
def P14929003505358998425.Spec : Prop :=
  ∀ n, P14929003505358998425.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P2439064573859232042

`A000032(2*(n+1))*A004254(n+1)`
-/

namespace A161495.P2439064573859232042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) * A004254 (n + 1)

end

end A161495.P2439064573859232042

namespace A161495

/-- `A000032(2*(n+1))*A004254(n+1)` -/
def P2439064573859232042.Spec : Prop :=
  ∀ n, P2439064573859232042.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P1254581981913390872

`A000204(2*(n+1))*A004254(n+1)`
-/

namespace A161495.P1254581981913390872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) * A004254 (n + 1)

end

end A161495.P1254581981913390872

namespace A161495

/-- `A000204(2*(n+1))*A004254(n+1)` -/
def P1254581981913390872.Spec : Prop :=
  ∀ n, P1254581981913390872.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P16314793317886502891

`A000032(2*(n+1))*A136211(2*n+1)`
-/

namespace A161495.P16314793317886502891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) * A136211 (2 * n + 1)

end

end A161495.P16314793317886502891

namespace A161495

/-- `A000032(2*(n+1))*A136211(2*n+1)` -/
def P16314793317886502891.Spec : Prop :=
  ∀ n, P16314793317886502891.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P10380625035173313864

`(A122367(n)+A048575(n))*A004254(n+1)`
-/

namespace A161495.P10380625035173313864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122367 n + A048575 n) * A004254 (n + 1)

end

end A161495.P10380625035173313864

namespace A161495

/-- `(A122367(n)+A048575(n))*A004254(n+1)` -/
def P10380625035173313864.Spec : Prop :=
  ∀ n, P10380625035173313864.a n = A161495 (n + 1)

end A161495

/-! ## A161495.P3600622556190977390

`(A048575(n)+A001519(n+1))*A004254(n+1)`
-/

namespace A161495.P3600622556190977390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048575 n + A001519 (n + 1)) * A004254 (n + 1)

end

end A161495.P3600622556190977390

namespace A161495

/-- `(A048575(n)+A001519(n+1))*A004254(n+1)` -/
def P3600622556190977390.Spec : Prop :=
  ∀ n, P3600622556190977390.a n = A161495 (n + 1)

end A161495

/-!
# A161496: Number of zeros in n-th even perfect number written in base 16.

The programs for A161496, there is no canonical definition to state claims against.
-/

/-! ## A161496.P15344626131828820978

`floor((A000043(n+1)-1)/4)`
-/

namespace A161496.P15344626131828820978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000043 (n + 1) - 1 : ℚ) / 4⌋

end

end A161496.P15344626131828820978

/-! ## A161496.P2793272328360350597

`floor(A000043(n+1)/4)`
-/

namespace A161496.P2793272328360350597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000043 (n + 1) : ℚ) / 4⌋

end

end A161496.P2793272328360350597

/-! ## A161496.P6916646006805667846

`floor(A090748(n+1)/4)`
-/

namespace A161496.P6916646006805667846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090748 (n + 1) : ℚ) / 4⌋

end

end A161496.P6916646006805667846

/-! ## A161496.P10502104223626926223

`round(A153798(n+1)/4)`
-/

namespace A161496.P10502104223626926223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153798 (n + 1) : ℚ) / 4)

end

end A161496.P10502104223626926223

/-! ## A161496.P10383469314285101455

`floor(A061645(n+1)/8)`
-/

namespace A161496.P10383469314285101455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061645 (n + 1) : ℚ) / 8⌋

end

end A161496.P10383469314285101455

/-!
# A161497: Number of reduced words of length n in the Weyl group A_17.

The programs for A161497, there is no canonical definition to state claims against.
-/

/-! ## A161497.P7241058488387371109

`A177517(A000217(n+19)-n)`
-/

namespace A161497.P7241058488387371109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 19) - (n : ℤ)).toNat

end

end A161497.P7241058488387371109

/-!
# A161498: Expansion of x*(1-x)*(1+x)/(1-13*x+36*x^2-13*x^3+x^4).

The programs for A161498, the canonical program `A161498.P3624922113948713274` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161498 has offset 1).

The definition of A161498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-13x+36x^2-13x^3+x^4))` (program `A161498.P3624922113948713274`, by `A161498.P3624922113948713274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161498.P3624922113948713274

`ogf((1-x^2)/(1-13x+36x^2-13x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161498

/-- `ogf((1-x^2)/(1-13x+36x^2-13x^3+x^4))` -/
def P3624922113948713274.Spec : Prop :=
  ∀ n, P3624922113948713274.a n = A161498 (n + 1)

theorem P3624922113948713274.correct : P3624922113948713274.Spec := by
  intro n
  simp only [A161498, Nat.add_sub_cancel]

end A161498

/-! ## A161498.P10553929480067663805

`A139400(n+1)/(A001906(n+1)*A001353(n+1)*A004254(n+1))`
-/

namespace A161498.P10553929480067663805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139400 (n + 1) : ℚ) / (A001906 (n + 1) * A001353 (n + 1) * A004254 (n + 1) : ℚ)

end

end A161498.P10553929480067663805

namespace A161498

/-- `A139400(n+1)/(A001906(n+1)*A001353(n+1)*A004254(n+1))` -/
def P10553929480067663805.Spec : Prop :=
  ∀ n, P10553929480067663805.a n = (A161498 (n + 1) : ℚ)

end A161498

/-! ## A161498.P16234496397367295587

`A003757(2*(n+1))`
-/

namespace A161498.P16234496397367295587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003757 (2 * (n + 1))

end

end A161498.P16234496397367295587

namespace A161498

/-- `A003757(2*(n+1))` -/
def P16234496397367295587.Spec : Prop :=
  ∀ n, P16234496397367295587.a n = A161498 (n + 1)

end A161498

/-! ## A161498.P5214818786732187008

`record[A003757(∑[A186422(n)])]`
-/

namespace A161498.P5214818786732187008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003757 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161498.P5214818786732187008

namespace A161498

/-- `record[A003757(∑[A186422(n)])]` -/
def P5214818786732187008.Spec : Prop :=
  ∀ n, P5214818786732187008.a n = A161498 (n + 1)

end A161498

/-! ## A161498.P9294576940064593795

`record[A003757(Δ[A186423(n)])]`
-/

namespace A161498.P9294576940064593795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003757 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161498.P9294576940064593795

namespace A161498

/-- `record[A003757(Δ[A186423(n)])]` -/
def P9294576940064593795.Spec : Prop :=
  ∀ n, P9294576940064593795.a n = A161498 (n + 1)

end A161498

/-! ## A161498.P3882862578395655876

`record[A003757(A003417(n+1))]`
-/

namespace A161498.P3882862578395655876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003757 (A003417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161498.P3882862578395655876

namespace A161498

/-- `record[A003757(A003417(n+1))]` -/
def P3882862578395655876.Spec : Prop :=
  ∀ n, P3882862578395655876.a n = A161498 (n + 1)

end A161498

/-! ## A161498.P5650939252908116402

`record[A003757(A186421(n+1))]`
-/

namespace A161498.P5650939252908116402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003757 (A186421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161498.P5650939252908116402

namespace A161498

/-- `record[A003757(A186421(n+1))]` -/
def P5650939252908116402.Spec : Prop :=
  ∀ n, P5650939252908116402.a n = A161498 (n + 1)

end A161498

/-!
# A161499: Number of reduced words of length n in the Weyl group A_18.

The programs for A161499, there is no canonical definition to state claims against.
-/

/-! ## A161499.P15602888785142570450

`∑[A227573(2*n+3)+A161497(n)]`
-/

namespace A161499.P15602888785142570450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 (2 * n + 3) + A161497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161499.P15602888785142570450

