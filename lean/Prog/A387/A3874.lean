import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A387401: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+1,k) * binomial(n+1,n-k), where i is the imaginary unit.

The programs for A387401, the canonical program `A387401.P4911919190791046722` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387401 has offset 0).

The definition of A387401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071356, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387401.P4911919190791046722

`(n+1)*A071356(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387401

/-- `(n+1)*A071356(n)` -/
def P4911919190791046722.Spec : Prop :=
  ∀ n, P4911919190791046722.a n = A387401 n

theorem P4911919190791046722.correct : P4911919190791046722.Spec := by
  intro n
  simp only [A387401]

end A387401

/-! ## A387401.P16222128215731891512

`(n+1)*A110681(∑[n])`
-/

namespace A387401.P16222128215731891512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387401.P16222128215731891512

namespace A387401

/-- `(n+1)*A110681(∑[n])` -/
def P16222128215731891512.Spec : Prop :=
  ∀ n, P16222128215731891512.a n = A387401 n

end A387401

/-! ## A387401.P6892865209663132714

`A084606((n+1)²+n)`
-/

namespace A387401.P6892865209663132714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 ((n + 1) ^ 2 + n)

end

end A387401.P6892865209663132714

namespace A387401

/-- `A084606((n+1)²+n)` -/
def P6892865209663132714.Spec : Prop :=
  ∀ n, P6892865209663132714.a n = A387401 n

end A387401

/-! ## A387401.P53320857896127232

`A071356(n)*A332809(A000079(n))`
-/

namespace A387401.P53320857896127232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n * A332809 (A000079 n).toNat

end

end A387401.P53320857896127232

namespace A387401

/-- `A071356(n)*A332809(A000079(n))` -/
def P53320857896127232.Spec : Prop :=
  ∀ n, P53320857896127232.a n = A387401 n

end A387401

/-!
# A387402: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+2,k) * binomial(n+2,n-k), where i is the imaginary unit.

The programs for A387402, there is no canonical definition to state claims against.
-/

/-! ## A387402.P7987316463348636846

`A084606(A028552(n+1))`
-/

namespace A387402.P7987316463348636846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (A028552 (n + 1)).toNat

end

end A387402.P7987316463348636846

/-! ## A387402.P8014119382976206690

`A084606(A217748(n+4))`
-/

namespace A387402.P8014119382976206690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (A217748 (n + 4)).toNat

end

end A387402.P8014119382976206690

/-!
# A387403: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+3,k) * binomial(n+3,n-k), where i is the imaginary unit.

The programs for A387403, there is no canonical definition to state claims against.
-/

/-! ## A387403.P1168173729822473423

`A084606(A337722(n+3)+A003071(n+1))`
-/

namespace A387403.P1168173729822473423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (A337722 (n + 3) + A003071 (n + 1)).toNat

end

end A387403.P1168173729822473423

/-!
# A387404: Numbers of the form 12*k + 1 that satisfy Euler's condition for odd perfect numbers (A228058).

The programs for A387404, the canonical program `A387404.P10009179576430722639` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387404 has offset 1).

The definition of A387404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387404.P11224014345107669707

`∩[A228058(n+1), A017533(n)]`
-/

namespace A387404.P11224014345107669707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P11224014345107669707

namespace A387404

/-- `∩[A228058(n+1), A017533(n)]` -/
def P11224014345107669707.Spec : Prop :=
  ∀ n, (P11224014345107669707.a n : ℤ) = A387404 (n + 1)

end A387404

/-! ## A387404.P11933223934838345326

`∩[A034019(n+1), A351535(n+1)]`
-/

namespace A387404.P11933223934838345326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P11933223934838345326

namespace A387404

/-- `∩[A034019(n+1), A351535(n+1)]` -/
def P11933223934838345326.Spec : Prop :=
  ∀ n, (P11933223934838345326.a n : ℤ) = A387404 (n + 1)

end A387404

/-! ## A387404.P4254707137472849915

`∩[A228058(n+1), A260682(n+1)]`
-/

namespace A387404.P4254707137472849915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P4254707137472849915

namespace A387404

/-- `∩[A228058(n+1), A260682(n+1)]` -/
def P4254707137472849915.Spec : Prop :=
  ∀ n, (P4254707137472849915.a n : ℤ) = A387404 (n + 1)

end A387404

/-! ## A387404.P12803411003201629930

`filter[A228058(n+1), A373977(#)]`
-/

namespace A387404.P12803411003201629930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A387404.P12803411003201629930

namespace A387404

/-- `filter[A228058(n+1), A373977(#)]` -/
def P12803411003201629930.Spec : Prop :=
  ∀ n, P12803411003201629930.a n = A387404 (n + 1)

end A387404

/-! ## A387404.P10009179576430722639

`∩[A091300(n+1), A191218(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A387404

/-- `∩[A091300(n+1), A191218(n+1)]` -/
def P10009179576430722639.Spec : Prop :=
  ∀ n, (P10009179576430722639.a n : ℤ) = A387404 (n + 1)

theorem P10009179576430722639.correct : P10009179576430722639.Spec := by
  intro n
  simp only [A387404, Nat.add_sub_cancel]

end A387404

/-! ## A387404.P7506336287933375370

`∩[A091300(n+1), A228058(n+1)]`
-/

namespace A387404.P7506336287933375370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P7506336287933375370

namespace A387404

/-- `∩[A091300(n+1), A228058(n+1)]` -/
def P7506336287933375370.Spec : Prop :=
  ∀ n, (P7506336287933375370.a n : ℤ) = A387404 (n + 1)

end A387404

/-! ## A387404.P8872886223391287113

`∩[A091300(n+1), A351535(n+1)]`
-/

namespace A387404.P8872886223391287113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P8872886223391287113

namespace A387404

/-- `∩[A091300(n+1), A351535(n+1)]` -/
def P8872886223391287113.Spec : Prop :=
  ∀ n, (P8872886223391287113.a n : ℤ) = A387404 (n + 1)

end A387404

/-!
# A387405: a(n) is the least k that is a multiple of d=A240991(n), with abundancy ratio sigma(k)/k equal to (sigma(d)+1)/d, or -1 if no such k exists.

The programs for A387405, there is no canonical definition to state claims against.
-/

/-! ## A387405.P17008309604618062191

`A006530(A240991(n+1))*A240991(n+1)`
-/

namespace A387405.P17008309604618062191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240991 (n + 1)).toNat * A240991 (n + 1)

end

end A387405.P17008309604618062191

/-! ## A387405.P18387191493603706711

`A253560(A240991(n+1))`
-/

namespace A387405.P18387191493603706711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (A240991 (n + 1)).toNat

end

end A387405.P18387191493603706711

/-!
# A387406: Numbers k such that sigma(A253560(k)) / A253560(k) is equal to (sigma(k)+1) / k, where A253560(k) = k multiplied by its largest prime factor.

The programs for A387406, there is no canonical definition to state claims against.
-/

/-! ## A387406.P423336839381380680

`∩[A011775(n+1), A396597(n+1)]`
-/

namespace A387406.P423336839381380680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P423336839381380680

/-! ## A387406.P5277808716879568236

`∩[A326696(n+1), A396597(n+1)]`
-/

namespace A387406.P5277808716879568236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P5277808716879568236

/-! ## A387406.P434573096372612973

`∩[A011775(n+1), A132858(n+1)]`
-/

namespace A387406.P434573096372612973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P434573096372612973

/-! ## A387406.P4066590147572133700

`∩[A011775(n+1), A132982(n+1)]`
-/

namespace A387406.P4066590147572133700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P4066590147572133700

/-! ## A387406.P14651059540984612449

`∩[A011775(n+1), A027855(n+1)]`
-/

namespace A387406.P14651059540984612449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P14651059540984612449

/-!
# A387407: Partial sums of A387422, where A387422 is the length of the maximal common prefix of the binary expansions of n and sigma(n).

The programs for A387407, there is no canonical definition to state claims against.
-/

/-! ## A387407.P14135334072839646243

`a(n-1)+A387422(n+1)` with `a(0)=1`
-/

namespace A387407.P14135334072839646243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A387422 (n + 1)

end

end A387407.P14135334072839646243

/-! ## A387407.P5262383062162583567

`A387408(n+1)+A387409(n+1)`
-/

namespace A387407.P5262383062162583567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + A387409 (n + 1)

end

end A387407.P5262383062162583567

/-! ## A387407.P16411614293473273431

`∑[A387422(n+1)]`
-/

namespace A387407.P16411614293473273431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387407.P16411614293473273431

/-! ## A387407.P18241355172044491807

`A387409(n+1)+∑[A387412(n+1)]`
-/

namespace A387407.P18241355172044491807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387409 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387407.P18241355172044491807

/-! ## A387407.P17298060257230984361

`A387408(n+1)+A387425(n+1)-A387424(n+1)`
-/

namespace A387407.P17298060257230984361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + (A387425 (n + 1) - A387424 (n + 1))

end

end A387407.P17298060257230984361

/-!
# A387408: Partial sums of A387412, where A387412(n) is the length of the maximal common prefix of the binary expansions of n and A003961(n).

The programs for A387408, there is no canonical definition to state claims against.
-/

/-! ## A387408.P4106930237954135362

`a(n-1)+A387412(n+1)` with `a(0)=1`
-/

namespace A387408.P4106930237954135362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A387412 (n + 1)

end

end A387408.P4106930237954135362

/-! ## A387408.P13828345921553173617

`A387407(n+1)-A387409(n+1)`
-/

namespace A387408.P13828345921553173617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) - A387409 (n + 1)

end

end A387408.P13828345921553173617

/-! ## A387408.P14595322955880627955

`∑[A387412(n+1)]`
-/

namespace A387408.P14595322955880627955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387408.P14595322955880627955

/-! ## A387408.P5146056433274804273

`∑[A387422(n+1)]-A387409(n+1)`
-/

namespace A387408.P5146056433274804273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387409 (n + 1)

end

end A387408.P5146056433274804273

/-! ## A387408.P17806961619569611015

`A387407(n+1)+A387424(n+1)-A387425(n+1)`
-/

namespace A387408.P17806961619569611015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) + (A387424 (n + 1) - A387425 (n + 1))

end

end A387408.P17806961619569611015

/-! ## A387408.P326250131280268728

`∑[A070939(n+1)]-A387425(n+1)`
-/

namespace A387408.P326250131280268728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387425 (n + 1)

end

end A387408.P326250131280268728

/-!
# A387409: Partial sums of A387422 minus partial sums of A387412.

The programs for A387409, there is no canonical definition to state claims against.
-/

/-! ## A387409.P13145052634864251816

`A387407(n+1)-A387408(n+1)`
-/

namespace A387409.P13145052634864251816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) - A387408 (n + 1)

end

end A387409.P13145052634864251816

/-! ## A387409.P7642278037458422517

`A387425(n+1)-A387424(n+1)`
-/

namespace A387409.P7642278037458422517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - A387424 (n + 1)

end

end A387409.P7642278037458422517

/-! ## A387409.P7918157998533393642

`∑[A387413(n+1)-A387423(n+1)]`
-/

namespace A387409.P7918157998533393642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1) - A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P7918157998533393642

/-! ## A387409.P6410477898816754024

`∑[A387413(n+1)]-A387424(n+1)`
-/

namespace A387409.P6410477898816754024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387424 (n + 1)

end

end A387409.P6410477898816754024

/-! ## A387409.P9991910460875005109

`∑[A387422(n+1)-A387412(n+1)]`
-/

namespace A387409.P9991910460875005109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) - A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P9991910460875005109

/-! ## A387409.P13167676216658842369

`A387425(n+1)-∑[A387423(n+1)]`
-/

namespace A387409.P13167676216658842369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P13167676216658842369

/-!
# A387410: Numbers k such that the odd part of (1+k) divides (1 + odd part of A048250(k)), where A048250 is sum of the squarefree divisors of n.

The programs for A387410, there is no canonical definition to state claims against.
-/

/-! ## A387410.P1416813519843008610

`∑[2^A309236(n²)]`
-/

namespace A387410.P1416813519843008610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A309236 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P1416813519843008610

/-! ## A387410.P912403055975336834

`∑[gcd(A000079(n), A019291(n+1))]`
-/

namespace A387410.P912403055975336834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A019291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P912403055975336834

/-!
# A387411: Numbers k such that the odd part of (1+k) divides (1+A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387411, there is no canonical definition to state claims against.
-/

/-! ## A387411.P6252204490519751379

`∑[A178133(∑[A055642(n)^n]+3)]`
-/

namespace A387411.P6252204490519751379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387411.P6252204490519751379

/-! ## A387411.P1125152940298512582

`A090178(n+1)-A066099(A383498(n))`
-/

namespace A387411.P1125152940298512582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - A066099 (A383498 n).toNat

end

end A387411.P1125152940298512582

/-!
# A387412: The length of the maximal common prefix of the binary expansions of n and A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387412, there is no canonical definition to state claims against.
-/

/-! ## A387412.P16387457641475825036

`1+A000523(n+1)-A387413(n+1)`
-/

namespace A387412.P16387457641475825036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387413 (n + 1)

end

end A387412.P16387457641475825036

/-! ## A387412.P7680142378527572586

`A113473(n+1)-A387413(n+1)`
-/

namespace A387412.P7680142378527572586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387413 (n + 1)

end

end A387412.P7680142378527572586

/-! ## A387412.P14588606757099443476

`A387422(n+1)+A387423(n+1)-A387413(n+1)`
-/

namespace A387412.P14588606757099443476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) + (A387423 (n + 1) - A387413 (n + 1))

end

end A387412.P14588606757099443476

/-!
# A387413: The length of binary expansion of n minus the length of the maximal common prefix of the binary expansions of n and A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387413, there is no canonical definition to state claims against.
-/

/-! ## A387413.P16173174725704947350

`1+A000523(n+1)-A387412(n+1)`
-/

namespace A387413.P16173174725704947350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387412 (n + 1)

end

end A387413.P16173174725704947350

/-! ## A387413.P10201115757020901881

`A113473(n+1)-A387412(n+1)`
-/

namespace A387413.P10201115757020901881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387412 (n + 1)

end

end A387413.P10201115757020901881

/-! ## A387413.P12864139478613006454

`A387422(n+1)+A387423(n+1)-A387412(n+1)`
-/

namespace A387413.P12864139478613006454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) + (A387423 (n + 1) - A387412 (n + 1))

end

end A387413.P12864139478613006454

/-!
# A387414: Numbers k such that the binary expansion of k is a prefix of the binary expansion of A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387414, there is no canonical definition to state claims against.
-/

/-! ## A387414.P4245600101808706473

`record[gcd(n+1, A387413(n+1))]`
-/

namespace A387414.P4245600101808706473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A387413 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387414.P4245600101808706473

/-!
# A387415: Numbers k such that the odd part of (1+k) divides (1 + odd part of A001615(k)), where A001615 is Dedekind's psi-function.

The programs for A387415, there is no canonical definition to state claims against.
-/

/-! ## A387415.P17333442348116204069

`A387418(A094270(n+1))`
-/

namespace A387415.P17333442348116204069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (A094270 (n + 1)).toNat

end

end A387415.P17333442348116204069

/-! ## A387415.P16365380677352277596

`filter[A336700(n+1), A120522(#)]`
-/

namespace A387415.P16365380677352277596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120522 (f1 j).toNat = 1) n)

end

end A387415.P16365380677352277596

/-! ## A387415.P5724192718633103881

`filter[A387418(n+1), A086694(#)]`
-/

namespace A387415.P5724192718633103881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086694 (f1 j).toNat = 1) n)

end

end A387415.P5724192718633103881

/-! ## A387415.P16773611624153293569

`filter[A336700(n+1), A166280(#)]`
-/

namespace A387415.P16773611624153293569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A387415.P16773611624153293569

/-! ## A387415.P10072081331269649503

`filter[A387418(n+1), A130657(#)]`
-/

namespace A387415.P10072081331269649503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130657 (f1 j).toNat = 1) n)

end

end A387415.P10072081331269649503

/-!
# A387417: The largest proper divisor of the n-th primitive nondeficient number.

The programs for A387417, there is no canonical definition to state claims against.
-/

/-! ## A387417.P17401309926829483493

`A032742(A006039(n+1))`
-/

namespace A387417.P17401309926829483493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A006039 (n + 1)).toNat

end

end A387417.P17401309926829483493

/-! ## A387417.P18296710228929856963

`A387717(A006039(2*n+1-n))`
-/

namespace A387417.P18296710228929856963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387717 (A006039 (2 * n + 1 - n)).toNat

end

end A387417.P18296710228929856963

/-! ## A387417.P17637558348872597726

`A006039(n+1)/A006530(A000079(n+1))`
-/

namespace A387417.P17637558348872597726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006039 (n + 1) : ℚ) / (A006530 (A000079 (n + 1)).toNat : ℚ)

end

end A387417.P17637558348872597726

/-! ## A387417.P14728749155105990268

`A006039(n+1)/A373151(A103600(n+1))`
-/

namespace A387417.P14728749155105990268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006039 (n + 1) : ℚ) / (A373151 (A103600 (n + 1)).toNat : ℚ)

end

end A387417.P14728749155105990268

/-!
# A387419: Numbers k such that the odd part of (1+k) divides (1 + odd part of A003959(k)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A387419, there is no canonical definition to state claims against.
-/

/-! ## A387419.P6442260857009969581

`A123621(A340093(n+1))`
-/

namespace A387419.P6442260857009969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A340093 (n + 1)).toNat

end

end A387419.P6442260857009969581

/-! ## A387419.P8647115685579761596

`record[A023888(A384320(n+1))]`
-/

namespace A387419.P8647115685579761596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A384320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P8647115685579761596

/-! ## A387419.P3521676782996210824

`record[A383075(A344979(n+1))]`
-/

namespace A387419.P3521676782996210824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383075 (A344979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P3521676782996210824

/-! ## A387419.P11598963790143318205

`record[A382314(record[A375126(n)])]`
-/

namespace A387419.P11598963790143318205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382314 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P11598963790143318205

/-! ## A387419.P4458033949207237213

`record[A066839(A006899(n+1))]`
-/

namespace A387419.P4458033949207237213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A006899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P4458033949207237213

/-!
# A387420: Numbers k such that sigma(k) < 2*A057521(k), where A057521(n) gives the powerful part of n, and sigma is the sum of divisors function.

The programs for A387420, there is no canonical definition to state claims against.
-/

/-! ## A387420.P3560978560667049149

`filter[A001694(n+1), A294934(#)]`
-/

namespace A387420.P3560978560667049149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A387420.P3560978560667049149

/-! ## A387420.P8460639760382876567

`filter[A001694(n+1), A294935(#)]`
-/

namespace A387420.P8460639760382876567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A387420.P8460639760382876567

/-! ## A387420.P7872431035910334360

`∩[A001694(n+1), A005100(n+1)]`
-/

namespace A387420.P7872431035910334360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P7872431035910334360

/-! ## A387420.P17894522692482904559

`∩[A001694(n+1), A136447(n+1)]`
-/

namespace A387420.P17894522692482904559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P17894522692482904559

/-! ## A387420.P4265856091067514265

`∩[A001694(n+1), A263837(n+1)]`
-/

namespace A387420.P4265856091067514265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P4265856091067514265

/-! ## A387420.P18378314573998062936

`∩[A001694(n+1), A392650(n+1)]`
-/

namespace A387420.P18378314573998062936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P18378314573998062936

/-! ## A387420.P3044707320888221519

`filter[A005100(n+1), A112526(#)]`
-/

namespace A387420.P3044707320888221519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387420.P3044707320888221519

/-!
# A387421: 

The programs for A387421, there is no canonical definition to state claims against.
-/

/-! ## A387421.P17590034570537415413

`comp[A387420(n+1)-1]+1`
-/

namespace A387421.P17590034570537415413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387421.P17590034570537415413

/-! ## A387421.P7316077313914125862

`comp[A057521(n+1)*A294934(n+1)]`
-/

namespace A387421.P7316077313914125862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A294934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387421.P7316077313914125862

/-!
# A387422: The length of the maximal common prefix of the binary expansions of n and sigma(n), where sigma is the sum of divisors function.

The programs for A387422, there is no canonical definition to state claims against.
-/

/-! ## A387422.P12383555551369219639

`1+A000523(n+1)-A387423(n+1)`
-/

namespace A387422.P12383555551369219639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387423 (n + 1)

end

end A387422.P12383555551369219639

/-! ## A387422.P7971631965751642177

`A113473(n+1)-A387423(n+1)`
-/

namespace A387422.P7971631965751642177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387423 (n + 1)

end

end A387422.P7971631965751642177

/-!
# A387423: The length of binary expansion of n minus the length of the maximal common prefix of the binary expansions of n and sigma(n), where sigma is the sum of divisors function.

The programs for A387423, there is no canonical definition to state claims against.
-/

/-! ## A387423.P9371265709701552401

`1+A000523(n+1)-A387422(n+1)`
-/

namespace A387423.P9371265709701552401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387422 (n + 1)

end

end A387423.P9371265709701552401

/-! ## A387423.P4196910048175180366

`A113473(n+1)-A387422(n+1)`
-/

namespace A387423.P4196910048175180366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387422 (n + 1)

end

end A387423.P4196910048175180366

/-! ## A387423.P1891911618004199626

`A387412(n+1)+A387413(n+1)-A387422(n+1)`
-/

namespace A387423.P1891911618004199626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (n + 1) + (A387413 (n + 1) - A387422 (n + 1))

end

end A387423.P1891911618004199626

/-!
# A387424: Partial sums of A387423.

The programs for A387424, there is no canonical definition to state claims against.
-/

/-! ## A387424.P10492096881841099496

`a(n-1)+A387423(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A387424.P10492096881841099496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A387423 (n + 1)

end

end A387424.P10492096881841099496

/-! ## A387424.P8487398960782552309

`∑[A387423(n+1)]`
-/

namespace A387424.P8487398960782552309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387424.P8487398960782552309

/-! ## A387424.P2461729551161673706

`A387425(n+1)-A387409(n+1)`
-/

namespace A387424.P2461729551161673706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - A387409 (n + 1)

end

end A387424.P2461729551161673706

/-! ## A387424.P17839976154539378310

`∑[A387413(n+1)]-A387409(n+1)`
-/

namespace A387424.P17839976154539378310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387409 (n + 1)

end

end A387424.P17839976154539378310

/-! ## A387424.P409635324346636979

`A387408(n+1)+A387425(n+1)-A387407(n+1)`
-/

namespace A387424.P409635324346636979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + (A387425 (n + 1) - A387407 (n + 1))

end

end A387424.P409635324346636979

/-!
# A387425: Partial sums of A387413.

The programs for A387425, there is no canonical definition to state claims against.
-/

/-! ## A387425.P1818028059450243216

`∑[A387413(n+1)]`
-/

namespace A387425.P1818028059450243216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P1818028059450243216

/-! ## A387425.P9500522820798095845

`A387424(n+1)+A387409(n+1)`
-/

namespace A387425.P9500522820798095845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387424 (n + 1) + A387409 (n + 1)

end

end A387425.P9500522820798095845

/-! ## A387425.P2979122278671805261

`A387409(n+1)+∑[A387423(n+1)]`
-/

namespace A387425.P2979122278671805261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387409 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P2979122278671805261

/-! ## A387425.P6217079355750656619

`A387407(n+1)+A387424(n+1)-A387408(n+1)`
-/

namespace A387425.P6217079355750656619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) + (A387424 (n + 1) - A387408 (n + 1))

end

end A387425.P6217079355750656619

/-!
# A387428: Expansion of 1/sqrt(1 - 12*x - 4*x^2).

The programs for A387428, there is no canonical definition to state claims against.
-/

/-! ## A387428.P9885858388509487744

`A386621(A000217(n+3)+n)`
-/

namespace A387428.P9885858388509487744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386621 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A387428.P9885858388509487744

/-!
# A387429: Self-convolution of n-th antidiagonal of the natural number array (so named in the Comments section of A000027).

The programs for A387429, the canonical program `A387429.P302094468979754763` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387429 has offset 1).

The definition of A387429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387429.P302094468979754763

`(n+1)*(4+5*(n+1)²+3*(n+1)^4)/12`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387429

/-- `(n+1)*(4+5*(n+1)²+3*(n+1)^4)/12` -/
def P302094468979754763.Spec : Prop :=
  ∀ n, P302094468979754763.a n = (A387429 (n + 1) : ℚ)

end A387429

/-! ## A387429.P919686495244011043

`∑[A222408(n)]`
-/

namespace A387429.P919686495244011043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P919686495244011043

namespace A387429

/-- `∑[A222408(n)]` -/
def P919686495244011043.Spec : Prop :=
  ∀ n, P919686495244011043.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P14953335018051053892

`∑[∑[A008531(n)]]`
-/

namespace A387429.P14953335018051053892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P14953335018051053892

namespace A387429

/-- `∑[∑[A008531(n)]]` -/
def P14953335018051053892.Spec : Prop :=
  ∀ n, P14953335018051053892.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P17787655066901251777

`A072474(n+1)-A000292(n)`
-/

namespace A387429.P17787655066901251777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) - A000292 n

end

end A387429.P17787655066901251777

namespace A387429

/-- `A072474(n+1)-A000292(n)` -/
def P17787655066901251777.Spec : Prop :=
  ∀ n, P17787655066901251777.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P294287991592533668

`A328994(n+1)-A152457(n)`
-/

namespace A387429.P294287991592533668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328994 (n + 1) - A152457 n

end

end A387429.P294287991592533668

namespace A387429

/-- `A328994(n+1)-A152457(n)` -/
def P294287991592533668.Spec : Prop :=
  ∀ n, P294287991592533668.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P7003151464449410415

`A337895(n+1)+A292053(n+1)`
-/

namespace A387429.P7003151464449410415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337895 (n + 1) + A292053 (n + 1)

end

end A387429.P7003151464449410415

namespace A387429

/-- `A337895(n+1)+A292053(n+1)` -/
def P7003151464449410415.Spec : Prop :=
  ∀ n, P7003151464449410415.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P6055342163250531073

`A260513(n+1)+A260513(n+1)-A005900(n+1)`
-/

namespace A387429.P6055342163250531073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A260513 (n + 1) - A005900 (n + 1))

end

end A387429.P6055342163250531073

namespace A387429

/-- `A260513(n+1)+A260513(n+1)-A005900(n+1)` -/
def P6055342163250531073.Spec : Prop :=
  ∀ n, P6055342163250531073.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P107263246952138978

`A002522(n+1)*A006003(n+1)-A072474(n+1)`
-/

namespace A387429.P107263246952138978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A006003 (n + 1) - A072474 (n + 1)

end

end A387429.P107263246952138978

namespace A387429

/-- `A002522(n+1)*A006003(n+1)-A072474(n+1)` -/
def P107263246952138978.Spec : Prop :=
  ∀ n, P107263246952138978.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P16179570314778859493

`∑[A032527(n²+n+1)]`
-/

namespace A387429.P16179570314778859493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P16179570314778859493

namespace A387429

/-- `∑[A032527(n²+n+1)]` -/
def P16179570314778859493.Spec : Prop :=
  ∀ n, P16179570314778859493.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P6696028160554100226

`∑[A239767(n²+n+1)]`
-/

namespace A387429.P6696028160554100226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P6696028160554100226

namespace A387429

/-- `∑[A239767(n²+n+1)]` -/
def P6696028160554100226.Spec : Prop :=
  ∀ n, P6696028160554100226.a n = A387429 (n + 1)

end A387429

/-!
# A387430: a(n) = Sum_{k=0..n} (n-i)^k * (n+i)^(n-k) * binomial(n,k)^2, where i is the imaginary unit.

The programs for A387430, there is no canonical definition to state claims against.
-/

/-! ## A387430.P9446901282900063009

`A386621(∑[4*n])`
-/

namespace A387430.P9446901282900063009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387430.P9446901282900063009

/-!
# A387431: Triangle read by rows: T(n,k) is the number of unlabeled simple connected graphs with n vertices and treedepth k.

The programs for A387431, there is no canonical definition to state claims against.
-/

/-! ## A387431.P915579580188957243

`A305932(A321615(n)²)`
-/

namespace A387431.P915579580188957243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (A321615 n ^ 2).toNat

end

end A387431.P915579580188957243

/-! ## A387431.P12164356366261411455

`∑{e}[A214765(A048993(n)), #]`
-/

namespace A387431.P12164356366261411455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214765 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387431.P12164356366261411455

/-! ## A387431.P9399904217777384805

`A032766(A048993(n)^A060240(n))`
-/

namespace A387431.P9399904217777384805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A060240 n : ℤ))).toNat

end

end A387431.P9399904217777384805

/-! ## A387431.P14020827809996755870

`A032766(A048993(n)^A087966(n+1))`
-/

namespace A387431.P14020827809996755870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A087966 (n + 1) : ℤ))).toNat

end

end A387431.P14020827809996755870

/-! ## A387431.P1284804902812542100

`A003714(A048993(n)^A104443(n+3))`
-/

namespace A387431.P1284804902812542100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A104443 (n + 3) : ℤ))).toNat

end

end A387431.P1284804902812542100

/-!
# A387439: a(n) = (2*n + 1)*(12 + 11*n + 93*n^2 + 4*n^3)/3.

The programs for A387439, the canonical program `A387439.P7694640285450300545` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387439 has offset 0).

The definition of A387439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387439.P7694640285450300545

`(2*n+1)*(12+11*n+93*n²+4*n^3)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387439

/-- `(2*n+1)*(12+11*n+93*n²+4*n^3)/3` -/
def P7694640285450300545.Spec : Prop :=
  ∀ n, P7694640285450300545.a n = (A387439 n : ℚ)

end A387439

/-!
# A387455: Partial sums of squares of A000975.

The programs for A387455, the canonical program `A387455.P1845506814409954094` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387455 has offset 0).

The definition of A387455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387455.P1845506814409954094

`∑[floor(∑[2^n/3])²]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387455

/-- `∑[floor(∑[2^n/3])²]` -/
def P1845506814409954094.Spec : Prop :=
  ∀ n, P1845506814409954094.a n = A387455 n

theorem P1845506814409954094.correct : P1845506814409954094.Spec := by
  intro n
  simp only [A387455]

end A387455

/-! ## A387455.P13086913955480051243

`a(n-1)+floor(2^(n+1)/3)²` with `a(0)=0`
-/

namespace A387455.P13086913955480051243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(2 ^ (n + 1) : ℚ) / 3⌋ ^ 2

end

end A387455.P13086913955480051243

namespace A387455

/-- `a(n-1)+floor(2^(n+1)/3)²` -/
def P13086913955480051243.Spec : Prop :=
  ∀ n, P13086913955480051243.a n = A387455 n

end A387455

/-! ## A387455.P6566549803967893997

`round(∑[(A153772(n+3)/4)²])`
-/

namespace A387455.P6566549803967893997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153772 (n + 3) : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387455.P6566549803967893997

namespace A387455

/-- `round(∑[(A153772(n+3)/4)²])` -/
def P6566549803967893997.Spec : Prop :=
  ∀ n, P6566549803967893997.a n = A387455 n

end A387455

/-! ## A387455.P11819856761384155464

`∑[∑[A001045(n)]²-1]+n+1`
-/

namespace A387455.P11819856761384155464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A387455.P11819856761384155464

namespace A387455

/-- `∑[∑[A001045(n)]²-1]+n+1` -/
def P11819856761384155464.Spec : Prop :=
  ∀ n, P11819856761384155464.a n = A387455 n

end A387455

/-! ## A387455.P3868377757355610410

`∑[A000975(n)²]%A002694(n+2)`
-/

namespace A387455.P3868377757355610410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002694 (n + 2))

end

end A387455.P3868377757355610410

namespace A387455

/-- `∑[A000975(n)²]%A002694(n+2)` -/
def P3868377757355610410.Spec : Prop :=
  ∀ n, P3868377757355610410.a n = A387455 n

end A387455

/-!
# A387458: a(n) = 4*(23 - 17*n + 8*n^2).

The programs for A387458, the canonical program `A387458.P16532837354093161660` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387458 has offset 1).

The definition of A387458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(23-17*(n+1)+8*(n+1)²)` (program `A387458.P16532837354093161660`, by `A387458.P16532837354093161660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387458.P16532837354093161660

`4*(23-17*(n+1)+8*(n+1)²)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387458

/-- `4*(23-17*(n+1)+8*(n+1)²)` -/
def P16532837354093161660.Spec : Prop :=
  ∀ n, P16532837354093161660.a n = A387458 (n + 1)

theorem P16532837354093161660.correct : P16532837354093161660.Spec := by
  intro n
  simp only [A387458, Nat.add_sub_cancel]

end A387458

/-! ## A387458.P11455187805151116769

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=56, a(1)=84, a(2)=176`
-/

namespace A387458.P11455187805151116769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [56, 84, 176] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A387458.P11455187805151116769

namespace A387458

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11455187805151116769.Spec : Prop :=
  ∀ n, P11455187805151116769.a n = A387458 (n + 1)

theorem P11455187805151116769.correct : P11455187805151116769.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A387458, Nat.add_sub_cancel, A387458.P11455187805151116769.a, A387458.P16532837354093161660.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A387458, Nat.add_sub_cancel, A387458.P11455187805151116769.a, A387458.P16532837354093161660.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A387458

/-!
# A387459: a(n) = Sum_{k=0..n} (n-i)^k * (n+i)^(n-k), where i is the imaginary unit.

The programs for A387459, there is no canonical definition to state claims against.
-/

/-! ## A387459.P10057318427237189937

`∑[A206914(A368446(n))]`
-/

namespace A387459.P10057318427237189937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A368446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387459.P10057318427237189937

/-!
# A387460: Composite cyclic numbers (subset of A050384) that are of the form 4n+1.

The programs for A387460, there is no canonical definition to state claims against.
-/

/-! ## A387460.P6000318148738968856

`filter[A050384(n+2), A133872(#)]`
-/

namespace A387460.P6000318148738968856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A387460.P6000318148738968856

/-! ## A387460.P15151864673865313970

`filter[A050384(n+2), A255817(#)]`
-/

namespace A387460.P15151864673865313970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A387460.P15151864673865313970

/-! ## A387460.P7077428087747617663

`filter[A050384(n+2), A290098(#)]`
-/

namespace A387460.P7077428087747617663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A387460.P7077428087747617663

/-! ## A387460.P6488039569431411551

`filter[A072902(n+2), A297086(#)]`
-/

namespace A387460.P6488039569431411551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387460.P6488039569431411551

/-! ## A387460.P6948857147366241002

`filter[A003277(n+2), A373978(#)]`
-/

namespace A387460.P6948857147366241002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A387460.P6948857147366241002

/-! ## A387460.P2827368539576931322

`filter[A091113(n+2), A297086(#)]`
-/

namespace A387460.P2827368539576931322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387460.P2827368539576931322

/-! ## A387460.P3137558192943791902

`filter[A050384(n+2), A373978(#)]`
-/

namespace A387460.P3137558192943791902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A387460.P3137558192943791902

/-! ## A387460.P18440290829187481579

`filter[A050384(n+2), A373993(#)]`
-/

namespace A387460.P18440290829187481579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A387460.P18440290829187481579

/-! ## A387460.P9915736659199991155

`∩[A004766(n+1), A050384(n+1)]`
-/

namespace A387460.P9915736659199991155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387460.P9915736659199991155

/-! ## A387460.P8497397742500834936

`∩[A050384(n+1), A077425(n+1)]`
-/

namespace A387460.P8497397742500834936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387460.P8497397742500834936

/-!
# A387461: Cyclic composite numbers that are the sum of two squared positive integers.

The programs for A387461, there is no canonical definition to state claims against.
-/

/-! ## A387461.P818493539491802041

`record[A109395(A071011(n+1))]`
-/

namespace A387461.P818493539491802041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A071011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387461.P818493539491802041

/-! ## A387461.P2099849616940791075

`filter[A007692(n+1), A297086(#)]`
-/

namespace A387461.P2099849616940791075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P2099849616940791075

/-! ## A387461.P552127855908612043

`filter[A024409(n+1), A297086(#)]`
-/

namespace A387461.P552127855908612043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P552127855908612043

/-! ## A387461.P3030272554176436664

`filter[A024508(n+1), A297086(#)]`
-/

namespace A387461.P3030272554176436664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P3030272554176436664

/-! ## A387461.P4374229209592985297

`filter[A071011(n+1), A297086(#)]`
-/

namespace A387461.P4374229209592985297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P4374229209592985297

/-!
# A387462: Composite cyclic numbers that are of the form 4n-1.

The programs for A387462, there is no canonical definition to state claims against.
-/

/-! ## A387462.P13073081307684765790

`filter[A050384(n+1), A021913(#)]`
-/

namespace A387462.P13073081307684765790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A387462.P13073081307684765790

/-! ## A387462.P7045239620838562356

`filter[A050384(n+1), A038189(#)]`
-/

namespace A387462.P7045239620838562356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A387462.P7045239620838562356

/-! ## A387462.P1491492789559934807

`filter[A050384(n+1), A089013(#)]`
-/

namespace A387462.P1491492789559934807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A387462.P1491492789559934807

/-! ## A387462.P17655115571210050445

`filter[A050384(n+1), A292077(#)]`
-/

namespace A387462.P17655115571210050445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A387462.P17655115571210050445

/-! ## A387462.P12962359002573413696

`filter[A072901(n+1), A297086(#)]`
-/

namespace A387462.P12962359002573413696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387462.P12962359002573413696

/-! ## A387462.P1323285208769109422

`filter[A003277(n+1), A373979(#)]`
-/

namespace A387462.P1323285208769109422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A387462.P1323285208769109422

/-! ## A387462.P10566625254061229260

`filter[A091236(n+1), A297086(#)]`
-/

namespace A387462.P10566625254061229260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387462.P10566625254061229260

/-! ## A387462.P7908822564170026522

`filter[A050384(n+1), A373979(#)]`
-/

namespace A387462.P7908822564170026522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A387462.P7908822564170026522

/-! ## A387462.P7919659510032088755

`∩[A050384(n+1), A004767(n)]`
-/

namespace A387462.P7919659510032088755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387462.P7919659510032088755

/-! ## A387462.P3156164740716597633

`∩[A050384(n+1), A014601(n)]`
-/

namespace A387462.P3156164740716597633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387462.P3156164740716597633

/-!
# A387463: Total number of 3's in the decimal digits of the divisors of n.

The programs for A387463, the canonical program `A387463.P7935693683231435009` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387463 has offset 1).

The definition of A387463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387463.P7935693683231435009

`∑{d}[n+1, A316864(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387463

/-- `∑{d}[n+1, A316864(#)]` -/
def P7935693683231435009.Spec : Prop :=
  ∀ n, P7935693683231435009.a n = A387463 (n + 1)

theorem P7935693683231435009.correct : P7935693683231435009.Spec := by
  intro n
  simp only [A387463, Nat.add_sub_cancel]

end A387463

/-! ## A387463.P14050623037791101127

`or(A083890(n+1), A083916(A112745(3*n+4)))`
-/

namespace A387463.P14050623037791101127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083890 (n + 1)) (A083916 (A112745 (3 * n + 4)).toNat)

end

end A387463.P14050623037791101127

namespace A387463

/-- `or(A083890(n+1), A083916(A112745(3*n+4)))` -/
def P14050623037791101127.Spec : Prop :=
  ∀ n, P14050623037791101127.a n = A387463 (n + 1)

end A387463

/-!
# A387464: a(n) is the first number with a total of exactly n 3's in the decimal digits of its divisors.

The programs for A387464, there is no canonical definition to state claims against.
-/

/-! ## A387464.P1394926652352975303

`A024575(n+1)*A057934(A000670(n))`
-/

namespace A387464.P1394926652352975303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024575 (n + 1) * A057934 (A000670 n).toNat

end

end A387464.P1394926652352975303

/-!
# A387465: Irregular triangle T(n,k), n >= 0, 0 <= k < 2^(n-1), where T(n,k) = Product_{j=0..n-1} prime(n-j)^((j+1)*d_j), where d_j is the bit with digit weight 2^j in the binary expansion of 2^(n-1)+k.

The programs for A387465, there is no canonical definition to state claims against.
-/

/-! ## A387465.P16196836569242503431

`A137502(A109298(n+1))`
-/

namespace A387465.P16196836569242503431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A109298 (n + 1)).toNat

end

end A387465.P16196836569242503431

/-! ## A387465.P261766767121268885

`A137502(∩[A109297(n+1), A324524(n+1)])`
-/

namespace A387465.P261766767121268885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A387465.P261766767121268885

/-!
# A387466: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 4*x - (2*k*x)^2).

The programs for A387466, there is no canonical definition to state claims against.
-/

/-! ## A387466.P6259344974299185435

`or(A185284(A122366(n)), A361830(n))`
-/

namespace A387466.P6259344974299185435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A122366 n).toNat) (A361830 n)

end

end A387466.P6259344974299185435

/-! ## A387466.P3427683516532129941

`A361830(n)+A039999(A006086(n+1))`
-/

namespace A387466.P3427683516532129941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 n + A039999 (A006086 (n + 1)).toNat

end

end A387466.P3427683516532129941

/-!
# A387467: a(n) = Sum_{k=0..n} (1-n*i)^k * (1+n*i)^(n-k) * binomial(n,k)^2, where i is the imaginary unit.

The programs for A387467, there is no canonical definition to state claims against.
-/

/-! ## A387467.P7663127029702396341

`A387466(∑[4*n])`
-/

namespace A387467.P7663127029702396341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387467.P7663127029702396341

/-!
# A387469: Numbers s > 0 such that 8*s^2 + 64*s + 57 is a square.

The programs for A387469, the canonical program `A387469.P7072665965893286847` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387469 has offset 1).

The definition of A387469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387469.P7072665965893286847

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=41, a(3)=53, a(4)=258`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387469

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P7072665965893286847.Spec : Prop :=
  ∀ n, P7072665965893286847.a n = A387469 (n + 1)

theorem P7072665965893286847.correct : P7072665965893286847.Spec := by
  intro n
  simp only [A387469, Nat.add_sub_cancel]

end A387469

/-!
# A387470: a(n) = n*(Omega(n) - 1), where Omega = A001222.

The programs for A387470, the canonical program `A387470.P8261482053908746042` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387470 has offset 1).

The definition of A387470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387470.P8261482053908746042

`A066959(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387470

/-- `A066959(n+1)-(n+1)` -/
def P8261482053908746042.Spec : Prop :=
  ∀ n, P8261482053908746042.a n = A387470 (n + 1)

theorem P8261482053908746042.correct : P8261482053908746042.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel]

end A387470

/-! ## A387470.P3993273585958902350

`(n+1)*(∑{e}[n+1, #]-1)`
-/

namespace A387470.P3993273585958902350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1)

end

end A387470.P3993273585958902350

namespace A387470

/-- `(n+1)*(∑{e}[n+1, #]-1)` -/
def P3993273585958902350.Spec : Prop :=
  ∀ n, P3993273585958902350.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P15457309630766544785

`(n+1)*(A001222(n+1)-1)`
-/

namespace A387470.P15457309630766544785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (n + 1) - 1)

end

end A387470.P15457309630766544785

namespace A387470

/-- `(n+1)*(A001222(n+1)-1)` -/
def P15457309630766544785.Spec : Prop :=
  ∀ n, P15457309630766544785.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P15635420357136887075

`(n+1)*(A073093(n+1)-2)`
-/

namespace A387470.P15635420357136887075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073093 (n + 1) - 2)

end

end A387470.P15635420357136887075

namespace A387470

/-- `(n+1)*(A073093(n+1)-2)` -/
def P15635420357136887075.Spec : Prop :=
  ∀ n, P15635420357136887075.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P16514769916228909438

`(n+1)*(n-A069345(n+1))`
-/

namespace A387470.P16514769916228909438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A069345 (n + 1))

end

end A387470.P16514769916228909438

namespace A387470

/-- `(n+1)*(n-A069345(n+1))` -/
def P16514769916228909438.Spec : Prop :=
  ∀ n, P16514769916228909438.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P15663732255361121407

`(n+1)*(A222312(n+1)-(n+1))`
-/

namespace A387470.P15663732255361121407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A222312 (n + 1) - (n + 1 : ℤ))

end

end A387470.P15663732255361121407

namespace A387470

/-- `(n+1)*(A222312(n+1)-(n+1))` -/
def P15663732255361121407.Spec : Prop :=
  ∀ n, P15663732255361121407.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P2881474982222076719

`A186170(n+1)+A001065(n+1)`
-/

namespace A387470.P2881474982222076719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186170 (n + 1) + A001065 (n + 1)

end

end A387470.P2881474982222076719

namespace A387470

/-- `A186170(n+1)+A001065(n+1)` -/
def P2881474982222076719.Spec : Prop :=
  ∀ n, P2881474982222076719.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P5381404146384444519

`(n+1)*(A305716(n+1)-3)`
-/

namespace A387470.P5381404146384444519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A305716 (n + 1) - 3)

end

end A387470.P5381404146384444519

namespace A387470

/-- `(n+1)*(A305716(n+1)-3)` -/
def P5381404146384444519.Spec : Prop :=
  ∀ n, P5381404146384444519.a n = A387470 (n + 1)

end A387470

/-!
# A387471: a(n) = number of interior triple intersections for the equal-angle model with parameter m = 2*n-1.

The programs for A387471, there is no canonical definition to state claims against.
-/

/-! ## A387471.P1140063614600803814

`A245669(A017546(n))`
-/

namespace A387471.P1140063614600803814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245669 (A017546 n).toNat

end

end A387471.P1140063614600803814

/-! ## A387471.P14658662545707740961

`A008458(n)+A003415(A210662(n+1))`
-/

namespace A387471.P14658662545707740961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + A003415 (A210662 (n + 1)).toNat

end

end A387471.P14658662545707740961

/-!
# A387475: G.f. A(x) satisfies 1 - x = Sum_{n>=0} (-1)^(n mod 3) * x^n * A(x)^(n^2).

The programs for A387475, there is no canonical definition to state claims against.
-/

/-! ## A387475.P9938454475432845533

`A130386(A128318(n))`
-/

namespace A387475.P9938454475432845533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130386 (A128318 n).toNat

end

end A387475.P9938454475432845533

/-!
# A387480: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(k,n-k)^2.

The programs for A387480, there is no canonical definition to state claims against.
-/

/-! ## A387480.P6687280742126570964

`A008620(A338675(n+1))`
-/

namespace A387480.P6687280742126570964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A338675 (n + 1)).toNat

end

end A387480.P6687280742126570964

/-!
# A387483: a(n) = Sum_{k=0..floor(n/2)} 2^(n-k) * binomial(k,n-2*k)^2.

The programs for A387483, there is no canonical definition to state claims against.
-/

/-! ## A387483.P16618370937761564044

`A324645(A381273(n))*A387476(n)`
-/

namespace A387483.P16618370937761564044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324645 (A381273 n).toNat * A387476 n

end

end A387483.P16618370937761564044

/-!
# A387484: a(n) = Sum_{k=0..floor(n/3)} 2^(n-k) * binomial(k,n-3*k)^2.

The programs for A387484, there is no canonical definition to state claims against.
-/

/-! ## A387484.P15470368367657366246

`and(A100799(n+1), A100836(A161707(2*n+3)))`
-/

namespace A387484.P15470368367657366246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100799 (n + 1)) (A100836 (A161707 (2 * n + 3)).toNat)

end

end A387484.P15470368367657366246

/-! ## A387484.P17934343581960265159

`and(A001462(A076716(n+1)), A363311(n))`
-/

namespace A387484.P17934343581960265159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001462 (A076716 (n + 1)).toNat) (A363311 n)

end

end A387484.P17934343581960265159

/-! ## A387484.P4092036080531746188

`and(A204352(n), A334313(A061799(n+1)))`
-/

namespace A387484.P4092036080531746188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204352 n) (A334313 (A061799 (n + 1)).toNat)

end

end A387484.P4092036080531746188

/-! ## A387484.P10390335870376266692

`and(A290606(n+1), A358243(A065091(n+1)))`
-/

namespace A387484.P10390335870376266692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290606 (n + 1)) (A358243 (A065091 (n + 1)).toNat)

end

end A387484.P10390335870376266692

/-!
# A387486: Numbers x such that there exist four integers y, z, t and w with x<=y<=z<=t<=w such that psi(x) = psi(y) = psi(z) = psi(t) = psi(w) = (x + y + z + t + w)/4.

The programs for A387486, there is no canonical definition to state claims against.
-/

/-! ## A387486.P1639169077305090784

`A337812(A080897(n+1))`
-/

namespace A387486.P1639169077305090784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337812 (A080897 (n + 1)).toNat

end

end A387486.P1639169077305090784

/-! ## A387486.P10379632169974836471

`filter[A279083(n+1), A327208(#)]`
-/

namespace A387486.P10379632169974836471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A387486.P10379632169974836471

/-! ## A387486.P803899441070446173

`filter[A279083(n+3), A290452(#)]`
-/

namespace A387486.P803899441070446173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290452 (f1 j).toNat = 1) n)

end

end A387486.P803899441070446173

/-!
# A387487: a(n) is the length of the longest prefix of S matching the substring of S starting at n where S = 123456789101112... is the Champernowne word (A033307).

The programs for A387487, there is no canonical definition to state claims against.
-/

/-! ## A387487.P6291107406476706490

`A089310(A370121(n))%A032742(3*n+2)`
-/

namespace A387487.P6291107406476706490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089310 (A370121 n).toNat) (A032742 (3 * n + 2))

end

end A387487.P6291107406476706490

/-! ## A387487.P2493618683545172565

`A326853(3*n+4)%A317141(A374742(n))`
-/

namespace A387487.P2493618683545172565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326853 (3 * n + 4)) (A317141 (A374742 n).toNat)

end

end A387487.P2493618683545172565

/-! ## A387487.P17894844338808563424

`A000120(and(A185214(n), A326669(3*n+2)))`
-/

namespace A387487.P17894844338808563424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A185214 n) (A326669 (3 * n + 2))).toNat

end

end A387487.P17894844338808563424

/-! ## A387487.P6567125424992071528

`A124763(A243223(n+1)*A352362(2*(n+1)))`
-/

namespace A387487.P6567125424992071528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A243223 (n + 1) * A352362 (2 * (n + 1))).toNat

end

end A387487.P6567125424992071528

/-! ## A387487.P15735120587293626387

`A074286(A324697(3*(n+1)))%A001222(n+4)`
-/

namespace A387487.P15735120587293626387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074286 (A324697 (3 * (n + 1))).toNat) (A001222 (n + 4))

end

end A387487.P15735120587293626387

/-!
# A387488: a(n) = [x^n] hypergeom([1/2, 1/2], [1], 256*x).

The programs for A387488, there is no canonical definition to state claims against.
-/

/-! ## A387488.P10916226093722564840

`(4^n*C(2*n, n))²`
-/

namespace A387488.P10916226093722564840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.choose (2 * n) n) ^ 2

end

end A387488.P10916226093722564840

/-! ## A387488.P16551728799836529638

`A098430(n)²`
-/

namespace A387488.P16551728799836529638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098430 n ^ 2

end

end A387488.P16551728799836529638

/-! ## A387488.P11514432146704338524

`A060899(2*n)²`
-/

namespace A387488.P11514432146704338524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 (2 * n) ^ 2

end

end A387488.P11514432146704338524

/-! ## A387488.P7962306052279691119

`A098664(2*n)²`
-/

namespace A387488.P7962306052279691119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098664 (2 * n) ^ 2

end

end A387488.P7962306052279691119

/-! ## A387488.P3506863620461549375

`A249308(2*n)²`
-/

namespace A387488.P3506863620461549375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249308 (2 * n) ^ 2

end

end A387488.P3506863620461549375

/-!
# A387491: Numbers of the form P(k)^m * Q(k), m >= 0, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387491, there is no canonical definition to state claims against.
-/

/-! ## A387491.P384930682375499394

`∪[A387492(n+1), A000079(n)]`
-/

namespace A387491.P384930682375499394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P384930682375499394

/-! ## A387491.P3012055837875789409

`∩[A332107(n+1), A387839(n+1)]`
-/

namespace A387491.P3012055837875789409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P3012055837875789409

/-! ## A387491.P16317495966768597830

`∩[A387839(n+1), A392071(n+1)]`
-/

namespace A387491.P16317495966768597830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P16317495966768597830

/-! ## A387491.P7608051633146577983

`A387839(A062399(n+1))`
-/

namespace A387491.P7608051633146577983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (A062399 (n + 1)).toNat

end

end A387491.P7608051633146577983

/-! ## A387491.P711341119338314861

`A387839(A351870(n+1))`
-/

namespace A387491.P711341119338314861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387839 (A351870 (n + 1)).toNat

end

end A387491.P711341119338314861

/-!
# A387492: Numbers of the form P(k)^m * Q(k), k > 1, m >= 0, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387492, there is no canonical definition to state claims against.
-/

/-! ## A387492.P1720879610274450778

`∩[A364710(n+1), A387491(n+1)]`
-/

namespace A387492.P1720879610274450778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387492.P1720879610274450778

/-! ## A387492.P3590522290909655406

`filter[A387491(n+1), A294936(#)]`
-/

namespace A387492.P3590522290909655406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A387492.P3590522290909655406

/-! ## A387492.P15372373341634320115

`filter[A387491(n+1), A355447(#)]`
-/

namespace A387492.P15372373341634320115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A387492.P15372373341634320115

/-! ## A387492.P16105452752943322883

`filter[A387491(n+1), A355454(#)]`
-/

namespace A387492.P16105452752943322883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A387492.P16105452752943322883

/-!
# A387493: Numbers of the form P(k)^m * Q(k), k > 1, m >= 1, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387493, there is no canonical definition to state claims against.
-/

/-! ## A387493.P10870429833319554237

`∩[A364930(n+1), A387491(n+1)]`
-/

namespace A387493.P10870429833319554237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P10870429833319554237

/-! ## A387493.P12429953019362986974

`∩[A378002(n+1), A387491(n+1)]`
-/

namespace A387493.P12429953019362986974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P12429953019362986974

/-! ## A387493.P2249620499316847266

`∩[A369374(n+1), A387491(n+1)]`
-/

namespace A387493.P2249620499316847266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P2249620499316847266

/-! ## A387493.P17136094152418513763

`∩[A377854(n+1), A387491(n+1)]`
-/

namespace A387493.P17136094152418513763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P17136094152418513763

/-!
# A387496: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x))) ).

The programs for A387496, there is no canonical definition to state claims against.
-/

/-! ## A387496.P7671046296598000621

`A349536(A366082(n))`
-/

namespace A387496.P7671046296598000621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A366082 n).toNat

end

end A387496.P7671046296598000621

/-! ## A387496.P9092416660007820815

`A008615(A117423(n)+A007931(n+1))`
-/

namespace A387496.P9092416660007820815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117423 n + A007931 (n + 1)).toNat

end

end A387496.P9092416660007820815

/-!
# A387497: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x)^2)) ).

The programs for A387497, there is no canonical definition to state claims against.
-/

/-! ## A387497.P10089664950440337187

`A008615(A373929(n+1)+A079000(n+1))`
-/

namespace A387497.P10089664950440337187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A373929 (n + 1) + A079000 (n + 1)).toNat

end

end A387497.P10089664950440337187

/-! ## A387497.P15990845484453996559

`A008615(A373929(n+1)+A220204(n+1))`
-/

namespace A387497.P15990845484453996559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A373929 (n + 1) + A220204 (n + 1)).toNat

end

end A387497.P15990845484453996559

/-!
# A387498: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x)^3)) ).

The programs for A387498, there is no canonical definition to state claims against.
-/

/-! ## A387498.P2112042095194599861

`A343609(A105479(n+3)+7)`
-/

namespace A387498.P2112042095194599861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A105479 (n + 3) + 7).toNat

end

end A387498.P2112042095194599861

