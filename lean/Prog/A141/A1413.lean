import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C009
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
# A141300: a(n) = number of distinct (nonempty) substrings in the binary representation of n that each occur exactly once.

The programs for A141300, there is no canonical definition to state claims against.
-/

/-! ## A141300.P4531773244301742773

`A141297(n+1)-A141298(n+1)`
-/

namespace A141300.P4531773244301742773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141297 (n + 1) - A141298 (n + 1)

end

end A141300.P4531773244301742773

/-! ## A141300.P15343470028048838487

`A000217(∑[A036987(n)])-A141299(n+1)`
-/

namespace A141300.P15343470028048838487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A141299 (n + 1)

end

end A141300.P15343470028048838487

/-! ## A141300.P5238595297399578891

`A141297(n+1)+A134824(n)*A141298(n+1)`
-/

namespace A141300.P5238595297399578891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141297 (n + 1) + A134824 n * A141298 (n + 1)

end

end A141300.P5238595297399578891

/-! ## A141300.P7380460651205398522

`A000217(A070939(n+1))-A141299(n+1)`
-/

namespace A141300.P7380460651205398522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 (n + 1)).toNat - A141299 (n + 1)

end

end A141300.P7380460651205398522

/-! ## A141300.P11402856733140515042

`A124770(A196168(n+1))-A141298(n+1)`
-/

namespace A141300.P11402856733140515042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A196168 (n + 1)).toNat - A141298 (n + 1)

end

end A141300.P11402856733140515042

/-! ## A141300.P12841849594108783563

`A124770(A088697(n+1))-A141298(n+1)`
-/

namespace A141300.P12841849594108783563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A088697 (n + 1)).toNat - A141298 (n + 1)

end

end A141300.P12841849594108783563

/-! ## A141300.P9776381818078687764

`A141298(A147756(n+1))-A141298(n+1)`
-/

namespace A141300.P9776381818078687764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (A147756 (n + 1)).toNat - A141298 (n + 1)

end

end A141300.P9776381818078687764

/-!
# A141302: Primes of the form -x^2+6*x*y+6*y^2 (as well as of the form 11*x^2+18*x*y+6*y^2).

The programs for A141302, the canonical program `A141302.P871097991379866223` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141302 has offset 1).

The definition of A141302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141302.P871097991379866223

`p?[10*n-((n+1)%6)²]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141302

/-- `p?[10*n-((n+1)%6)²]` -/
def P871097991379866223.Spec : Prop :=
  ∀ n, P871097991379866223.a n = A141302 (n + 1)

theorem P871097991379866223.correct : P871097991379866223.Spec := by
  intro n
  simp only [A141302, Nat.add_sub_cancel]

end A141302

/-! ## A141302.P11679617696104704842

`p?[(-1)^(n%5)+12*n+10]`
-/

namespace A141302.P11679617696104704842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 5) + (12 * n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141302.P11679617696104704842

namespace A141302

/-- `p?[(-1)^(n%5)+12*n+10]` -/
def P11679617696104704842.Spec : Prop :=
  ∀ n, P11679617696104704842.a n = A141302 (n + 1)

end A141302

/-! ## A141302.P992415887544783931

`p?[abs(or(1, 8*n)²%12-20*n)]`
-/

namespace A141302.P992415887544783931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 (8 * n) ^ 2 % 12 : ℕ) : ℤ) - (20 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141302.P992415887544783931

namespace A141302

/-- `p?[abs(or(1, 8*n)²%12-20*n)]` -/
def P992415887544783931.Spec : Prop :=
  ∀ n, P992415887544783931.a n = A141302 (n + 1)

end A141302

/-! ## A141302.P3683321377163751394

`∩[A053032(n+1), A068231(n+1)]`
-/

namespace A141302.P3683321377163751394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P3683321377163751394

namespace A141302

/-- `∩[A053032(n+1), A068231(n+1)]` -/
def P3683321377163751394.Spec : Prop :=
  ∀ n, (P3683321377163751394.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P10087000323764315118

`∩[A040124(n+1), A122869(n+1)]`
-/

namespace A141302.P10087000323764315118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P10087000323764315118

namespace A141302

/-- `∩[A040124(n+1), A122869(n+1)]` -/
def P10087000323764315118.Spec : Prop :=
  ∀ n, (P10087000323764315118.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P5017936008075165836

`∩[A045468(n+1), A068231(n+1)]`
-/

namespace A141302.P5017936008075165836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P5017936008075165836

namespace A141302

/-- `∩[A045468(n+1), A068231(n+1)]` -/
def P5017936008075165836.Spec : Prop :=
  ∀ n, (P5017936008075165836.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P18134654008440003008

`∩[A064739(n+1), A068231(n+1)]`
-/

namespace A141302.P18134654008440003008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P18134654008440003008

namespace A141302

/-- `∩[A064739(n+1), A068231(n+1)]` -/
def P18134654008440003008.Spec : Prop :=
  ∀ n, (P18134654008440003008.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P16378436614602812397

`∩[A097933(n+1), A122869(n+1)]`
-/

namespace A141302.P16378436614602812397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P16378436614602812397

namespace A141302

/-- `∩[A097933(n+1), A122869(n+1)]` -/
def P16378436614602812397.Spec : Prop :=
  ∀ n, (P16378436614602812397.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P12683565782379734005

`∩[A064739(n+1), A332516(n+1)]`
-/

namespace A141302.P12683565782379734005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P12683565782379734005

namespace A141302

/-- `∩[A064739(n+1), A332516(n+1)]` -/
def P12683565782379734005.Spec : Prop :=
  ∀ n, (P12683565782379734005.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P9685569259179318010

`∩[A076518(n+1), A332516(n+1)]`
-/

namespace A141302.P9685569259179318010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P9685569259179318010

namespace A141302

/-- `∩[A076518(n+1), A332516(n+1)]` -/
def P9685569259179318010.Spec : Prop :=
  ∀ n, (P9685569259179318010.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P3642741174300928566

`∩[A056955(n+1), A122869(n+1)]`
-/

namespace A141302.P3642741174300928566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P3642741174300928566

namespace A141302

/-- `∩[A056955(n+1), A122869(n+1)]` -/
def P3642741174300928566.Spec : Prop :=
  ∀ n, (P3642741174300928566.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P10629684742766620205

`∩[A003626(n+1), A068231(n+1)]`
-/

namespace A141302.P10629684742766620205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P10629684742766620205

namespace A141302

/-- `∩[A003626(n+1), A068231(n+1)]` -/
def P10629684742766620205.Spec : Prop :=
  ∀ n, (P10629684742766620205.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P1142484023262645912

`∩[A068231(n+1), A219612(n+1)]`
-/

namespace A141302.P1142484023262645912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P1142484023262645912

namespace A141302

/-- `∩[A068231(n+1), A219612(n+1)]` -/
def P1142484023262645912.Spec : Prop :=
  ∀ n, (P1142484023262645912.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P7784065100938792718

`∩[A141123(n+1), A219612(n+1)]`
-/

namespace A141302.P7784065100938792718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P7784065100938792718

namespace A141302

/-- `∩[A141123(n+1), A219612(n+1)]` -/
def P7784065100938792718.Spec : Prop :=
  ∀ n, (P7784065100938792718.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P6135483390000356358

`∩[A141187(n+1), A219612(n+1)]`
-/

namespace A141302.P6135483390000356358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P6135483390000356358

namespace A141302

/-- `∩[A141187(n+1), A219612(n+1)]` -/
def P6135483390000356358.Spec : Prop :=
  ∀ n, (P6135483390000356358.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P10634595292316152102

`∩[A040116(n+1), A141785(n+1)]`
-/

namespace A141302.P10634595292316152102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P10634595292316152102

namespace A141302

/-- `∩[A040116(n+1), A141785(n+1)]` -/
def P10634595292316152102.Spec : Prop :=
  ∀ n, (P10634595292316152102.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P5983692098366545166

`∩[A141785(n+1), A216277(n+1)]`
-/

namespace A141302.P5983692098366545166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P5983692098366545166

namespace A141302

/-- `∩[A141785(n+1), A216277(n+1)]` -/
def P5983692098366545166.Spec : Prop :=
  ∀ n, (P5983692098366545166.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P1764132467417750815

`∩[A023173(n+1), A068231(n+1)]`
-/

namespace A141302.P1764132467417750815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P1764132467417750815

namespace A141302

/-- `∩[A023173(n+1), A068231(n+1)]` -/
def P1764132467417750815.Spec : Prop :=
  ∀ n, (P1764132467417750815.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P6066705472089037332

`∩[A023173(n+1), A141187(n+1)]`
-/

namespace A141302.P6066705472089037332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P6066705472089037332

namespace A141302

/-- `∩[A023173(n+1), A141187(n+1)]` -/
def P6066705472089037332.Spec : Prop :=
  ∀ n, (P6066705472089037332.a n : ℤ) = A141302 (n + 1)

end A141302

/-! ## A141302.P4845926798200438406

`∩[A141785(n+1), A292762(n+1)]`
-/

namespace A141302.P4845926798200438406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141302.P4845926798200438406

namespace A141302

/-- `∩[A141785(n+1), A292762(n+1)]` -/
def P4845926798200438406.Spec : Prop :=
  ∀ n, (P4845926798200438406.a n : ℤ) = A141302 (n + 1)

end A141302

/-!
# A141303: Primes of the form 2*x^2+6*x*y-3*y^2 (as well as of the form 5*x^2+10*x*y+2*y^2).

The programs for A141303, there is no canonical definition to state claims against.
-/

/-! ## A141303.P1292706716459554475

`∪[A006686(n+1), A107167(n+1)]`
-/

namespace A141303.P1292706716459554475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P1292706716459554475

/-! ## A141303.P14323199549601044638

`∪[A007352(n+1), A107167(n+1)]`
-/

namespace A141303.P14323199549601044638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P14323199549601044638

/-! ## A141303.P15503405738529029735

`∪[A107167(n+1), A139844(n+1)]`
-/

namespace A141303.P15503405738529029735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P15503405738529029735

/-! ## A141303.P15285398678266285992

`∪[A107167(n+1), A139935(n+1)]`
-/

namespace A141303.P15285398678266285992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P15285398678266285992

/-! ## A141303.P17587480311072936033

`∪[A107167(n+1), A201782(n+1)]`
-/

namespace A141303.P17587480311072936033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P17587480311072936033

/-! ## A141303.P5302115785704611186

`A107167(A000038(n)+n)%A107158(n+1)`
-/

namespace A141303.P5302115785704611186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107167 (A000038 n + (n : ℤ)).toNat) (A107158 (n + 1))

end

end A141303.P5302115785704611186

/-! ## A141303.P15406658844721772486

`p?[floor(A243188(n+1)/2)]`
-/

namespace A141303.P15406658844721772486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243188 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141303.P15406658844721772486

/-! ## A141303.P10320784762598188820

`A107167(A065033(2*n))%A107158(n+1)`
-/

namespace A141303.P10320784762598188820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107167 (A065033 (2 * n)).toNat) (A107158 (n + 1))

end

end A141303.P10320784762598188820

/-! ## A141303.P7916474574891179515

`p?[A000038(n)+and(-3, A106859(n+1))]`
-/

namespace A141303.P7916474574891179515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + Int.land (-3) (A106859 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141303.P7916474574891179515

/-! ## A141303.P2276876857969337473

`∩[A106859(n+1), A243183(n+1)]`
-/

namespace A141303.P2276876857969337473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P2276876857969337473

/-! ## A141303.P15962721134946623230

`record[A107167(A008620(n))%A006450(n+1)]`
-/

namespace A141303.P15962721134946623230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107167 (A008620 n).toNat) (A006450 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141303.P15962721134946623230

/-! ## A141303.P15004434428927823139

`∩[A002313(n+1), A106859(n+1)]`
-/

namespace A141303.P15004434428927823139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P15004434428927823139

/-! ## A141303.P6704650960166144700

`∩[A038887(n+1), A243183(n+1)]`
-/

namespace A141303.P6704650960166144700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P6704650960166144700

/-! ## A141303.P1599731778456755899

`∩[A055025(n+1), A106859(n+1)]`
-/

namespace A141303.P1599731778456755899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P1599731778456755899

/-! ## A141303.P2420595545949714070

`∩[A243183(n+1), A341786(n+1)]`
-/

namespace A141303.P2420595545949714070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P2420595545949714070

/-! ## A141303.P14099558730908909829

`∩[A038875(n+1), A106859(n+1)]`
-/

namespace A141303.P14099558730908909829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P14099558730908909829

/-! ## A141303.P4855440519277648297

`∩[A042993(n+1), A243183(n+1)]`
-/

namespace A141303.P4855440519277648297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P4855440519277648297

/-! ## A141303.P12200745139846875498

`∩[A140971(n+1), A243183(n+1)]`
-/

namespace A141303.P12200745139846875498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P12200745139846875498

/-! ## A141303.P4050549827794793955

`∩[A106859(n+1), A301916(n+1)]`
-/

namespace A141303.P4050549827794793955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P4050549827794793955

/-! ## A141303.P7570071433382459223

`∩[A216286(n+1), A243183(n+1)]`
-/

namespace A141303.P7570071433382459223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141303.P7570071433382459223

/-!
# A141304: Primes of the form -2*x^2+6*x*y+3*y^2 (as well as of the form 7*x^2+12*x*y+3*y^2).

The programs for A141304, the canonical program `A141304.P8572251151139138538` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141304 has offset 1).

The definition of A141304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141304.P9310463470158645829

`∪[A139832(n+1), A139936(n+1)]`
-/

namespace A141304.P9310463470158645829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P9310463470158645829

namespace A141304

/-- `∪[A139832(n+1), A139936(n+1)]` -/
def P9310463470158645829.Spec : Prop :=
  ∀ n, (P9310463470158645829.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P2197849699482309835

`∪[A139984(n+1), A139832(n+1)]`
-/

namespace A141304.P2197849699482309835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P2197849699482309835

namespace A141304

/-- `∪[A139984(n+1), A139832(n+1)]` -/
def P2197849699482309835.Spec : Prop :=
  ∀ n, (P2197849699482309835.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P1587820519168497495

`∪[A139832(n+1), A201857(n+1)]`
-/

namespace A141304.P1587820519168497495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P1587820519168497495

namespace A141304

/-- `∪[A139832(n+1), A201857(n+1)]` -/
def P1587820519168497495.Spec : Prop :=
  ∀ n, (P1587820519168497495.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P8572251151139138538

`p?[or(2, A106952(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141304

/-- `p?[or(2, A106952(n+1))]` -/
def P8572251151139138538.Spec : Prop :=
  ∀ n, P8572251151139138538.a n = A141304 (n + 1)

theorem P8572251151139138538.correct : P8572251151139138538.Spec := by
  intro n
  simp only [A141304, Nat.add_sub_cancel]

end A141304

/-! ## A141304.P9346773344299629856

`∩[A106865(n+1), A106952(n+1)]`
-/

namespace A141304.P9346773344299629856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P9346773344299629856

namespace A141304

/-- `∩[A106865(n+1), A106952(n+1)]` -/
def P9346773344299629856.Spec : Prop :=
  ∀ n, (P9346773344299629856.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P3062841111200658015

`∩[A106952(n+1), A122870(n+1)]`
-/

namespace A141304.P3062841111200658015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P3062841111200658015

namespace A141304

/-- `∩[A106952(n+1), A122870(n+1)]` -/
def P3062841111200658015.Spec : Prop :=
  ∀ n, (P3062841111200658015.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P8832492635471532459

`∩[A053027(n+1), A106952(n+1)]`
-/

namespace A141304.P8832492635471532459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P8832492635471532459

namespace A141304

/-- `∩[A053027(n+1), A106952(n+1)]` -/
def P8832492635471532459.Spec : Prop :=
  ∀ n, (P8832492635471532459.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P10946439139839691821

`∩[A040130(n+1), A106952(n+1)]`
-/

namespace A141304.P10946439139839691821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P10946439139839691821

namespace A141304

/-- `∩[A040130(n+1), A106952(n+1)]` -/
def P10946439139839691821.Spec : Prop :=
  ∀ n, (P10946439139839691821.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P16619848197426485588

`∩[A040130(n+1), A122870(n+1)]`
-/

namespace A141304.P16619848197426485588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P16619848197426485588

namespace A141304

/-- `∩[A040130(n+1), A122870(n+1)]` -/
def P16619848197426485588.Spec : Prop :=
  ∀ n, (P16619848197426485588.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P4556421838618628167

`∩[A106952(n+1), A139513(n+1)]`
-/

namespace A141304.P4556421838618628167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P4556421838618628167

namespace A141304

/-- `∩[A106952(n+1), A139513(n+1)]` -/
def P4556421838618628167.Spec : Prop :=
  ∀ n, (P4556421838618628167.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P13319665196345096237

`∩[A106952(n+1), A240920(n+1)]`
-/

namespace A141304.P13319665196345096237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P13319665196345096237

namespace A141304

/-- `∩[A106952(n+1), A240920(n+1)]` -/
def P13319665196345096237.Spec : Prop :=
  ∀ n, (P13319665196345096237.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P3177569875084460532

`∩[A007645(n+1), A106865(n+1)]`
-/

namespace A141304.P3177569875084460532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P3177569875084460532

namespace A141304

/-- `∩[A007645(n+1), A106865(n+1)]` -/
def P3177569875084460532.Spec : Prop :=
  ∀ n, (P3177569875084460532.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P14123823642420028552

`∩[A007645(n+1), A122870(n+1)]`
-/

namespace A141304.P14123823642420028552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P14123823642420028552

namespace A141304

/-- `∩[A007645(n+1), A122870(n+1)]` -/
def P14123823642420028552.Spec : Prop :=
  ∀ n, (P14123823642420028552.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P8251565856505665832

`∩[A045331(n+1), A122870(n+1)]`
-/

namespace A141304.P8251565856505665832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P8251565856505665832

namespace A141304

/-- `∩[A045331(n+1), A122870(n+1)]` -/
def P8251565856505665832.Spec : Prop :=
  ∀ n, (P8251565856505665832.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P16930785036776365860

`∩[A106865(n+1), A279815(n+1)]`
-/

namespace A141304.P16930785036776365860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P16930785036776365860

namespace A141304

/-- `∩[A106865(n+1), A279815(n+1)]` -/
def P16930785036776365860.Spec : Prop :=
  ∀ n, (P16930785036776365860.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P7932104052484394662

`∩[A002145(n+1), A106952(n+1)]`
-/

namespace A141304.P7932104052484394662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P7932104052484394662

namespace A141304

/-- `∩[A002145(n+1), A106952(n+1)]` -/
def P7932104052484394662.Spec : Prop :=
  ∀ n, (P7932104052484394662.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P5556444102900834078

`∩[A038887(n+1), A106952(n+1)]`
-/

namespace A141304.P5556444102900834078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P5556444102900834078

namespace A141304

/-- `∩[A038887(n+1), A106952(n+1)]` -/
def P5556444102900834078.Spec : Prop :=
  ∀ n, (P5556444102900834078.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P4486361032020446842

`∩[A045326(n+1), A106952(n+1)]`
-/

namespace A141304.P4486361032020446842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P4486361032020446842

namespace A141304

/-- `∩[A045326(n+1), A106952(n+1)]` -/
def P4486361032020446842.Spec : Prop :=
  ∀ n, (P4486361032020446842.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P3862114485287970679

`∩[A038887(n+1), A122870(n+1)]`
-/

namespace A141304.P3862114485287970679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P3862114485287970679

namespace A141304

/-- `∩[A038887(n+1), A122870(n+1)]` -/
def P3862114485287970679.Spec : Prop :=
  ∀ n, (P3862114485287970679.a n : ℤ) = A141304 (n + 1)

end A141304

/-! ## A141304.P7377559447373768628

`∩[A055664(n+1), A106865(n+1)]`
-/

namespace A141304.P7377559447373768628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141304.P7377559447373768628

namespace A141304

/-- `∩[A055664(n+1), A106865(n+1)]` -/
def P7377559447373768628.Spec : Prop :=
  ∀ n, (P7377559447373768628.a n : ℤ) = A141304 (n + 1)

end A141304

/-!
# A141305: Primes p such that q=(p-1)/2 is also prime and 2 is a primitive root mod q; that is, q is in A001122.

The programs for A141305, there is no canonical definition to state claims against.
-/

/-! ## A141305.P5628968491481222407

`p?[2*A019338(n+1)+1]`
-/

namespace A141305.P5628968491481222407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019338 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P5628968491481222407

/-! ## A141305.P13949914132276034478

`p?[2*A001122(n+1)+1]`
-/

namespace A141305.P13949914132276034478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001122 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P13949914132276034478

/-! ## A141305.P2532683322098708593

`p?[2*p?[A139099(n+1)]+1]`
-/

namespace A141305.P2532683322098708593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P2532683322098708593

/-! ## A141305.P12019194308150333103

`p?[2*p?[A167791(n+1)]+1]`
-/

namespace A141305.P12019194308150333103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P12019194308150333103

/-! ## A141305.P7403604381545925634

`p?[2*A217948(n+1)-1]`
-/

namespace A141305.P7403604381545925634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217948 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P7403604381545925634

/-! ## A141305.P8812759397082373917

`p?[A217948(n+1)+A001122(n+1)]`
-/

namespace A141305.P8812759397082373917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1) + A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P8812759397082373917

/-! ## A141305.P13297332061893612317

`record[A006530(2*A001122(n+1)+1)]`
-/

namespace A141305.P13297332061893612317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A001122 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141305.P13297332061893612317

/-! ## A141305.P16174485787545741101

`p?[A000040(n+2)*A002233(n+2)+1]`
-/

namespace A141305.P16174485787545741101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A002233 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141305.P16174485787545741101

/-!
# A141307: Number of bicolored connected permutations.

The programs for A141307, there is no canonical definition to state claims against.
-/

/-! ## A141307.P17077528037317079329

`2^(n+1)*A003319(n+1)`
-/

namespace A141307.P17077528037317079329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A003319 (n + 1)

end

end A141307.P17077528037317079329

/-! ## A141307.P10966847771132858998

`lcm(A097110(Δ[n²]), A167894(n+1))`
-/

namespace A141307.P10966847771132858998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097110 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A167894 (n + 1))

end

end A141307.P10966847771132858998

/-! ## A141307.P2292667145818180975

`A003319(n+1)+A000225(n+1)*A003319(n+1)`
-/

namespace A141307.P2292667145818180975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (n + 1) + A000225 (n + 1) * A003319 (n + 1)

end

end A141307.P2292667145818180975

/-! ## A141307.P10592014158076069222

`A000051(n+1)*A003319(n+1)-A003319(n+1)`
-/

namespace A141307.P10592014158076069222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A003319 (n + 1) - A003319 (n + 1)

end

end A141307.P10592014158076069222

/-! ## A141307.P12906267171556038074

`lcm(A097110(2*n+1)*A167894(n+1), A097110(2*n+1))`
-/

namespace A141307.P12906267171556038074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097110 (2 * n + 1) * A167894 (n + 1)) (A097110 (2 * n + 1))

end

end A141307.P12906267171556038074

/-!
# A141308: Euler transform of A141307.

The programs for A141308, there is no canonical definition to state claims against.
-/

/-! ## A141308.P15316611254552951817

`A185161(n+1)`
-/

namespace A141308.P15316611254552951817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185161 (n + 1)

end

end A141308.P15316611254552951817

/-! ## A141308.P13592803533014632819

`record[A185161(abs(1-n))]`
-/

namespace A141308.P13592803533014632819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185161 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141308.P13592803533014632819

/-! ## A141308.P12306659382822749019

`ratio[A185161(n)]*A185161(n)`
-/

namespace A141308.P12306659382822749019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185161 n : ℚ)

end

end A141308.P12306659382822749019

/-! ## A141308.P7540618405415008642

`lcm(A185161(A077168(n)), A219347(n))`
-/

namespace A141308.P7540618405415008642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185161 (A077168 n).toNat) (A219347 n)

end

end A141308.P7540618405415008642

/-! ## A141308.P10183087214359209594

`∩[A185161(A077168(n)), A185161(n)]`
-/

namespace A141308.P10183087214359209594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185161 (A077168 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141308.P10183087214359209594

/-!
# A141309: INVERTi transform of A141308.

The programs for A141309, there is no canonical definition to state claims against.
-/

/-! ## A141309.P14193345838085306809

`A190847(A346671(n))`
-/

namespace A141309.P14193345838085306809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (A346671 n).toNat

end

end A141309.P14193345838085306809

/-!
# A141310: The odd numbers interlaced with the constant-2 sequence.

The programs for A141310, the canonical program `A141310.P2179789103957121271` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141310 has offset 0).

The definition of A141310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141310.P8265066799034927793

`((-1)^n*(n-1)+n+3)/2`
-/

namespace A141310.P8265066799034927793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * ((n : ℤ) - 1) + (n + 3 : ℤ) : ℚ) / 2

end

end A141310.P8265066799034927793

namespace A141310

/-- `((-1)^n*(n-1)+n+3)/2` -/
def P8265066799034927793.Spec : Prop :=
  ∀ n, P8265066799034927793.a n = (A141310 n : ℚ)

theorem P8265066799034927793.correct : P8265066799034927793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A141310, Nat.add_sub_cancel, A141310.P8265066799034927793.a, A141310.P2179789103957121271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A141310, Nat.add_sub_cancel, A141310.P8265066799034927793.a, A141310.P2179789103957121271.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A141310

/-! ## A141310.P2179789103957121271

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141310

/-- `2*a(n-2)-a(n-4)` -/
def P2179789103957121271.Spec : Prop :=
  ∀ n, P2179789103957121271.a n = A141310 n

theorem P2179789103957121271.correct : P2179789103957121271.Spec := by
  intro n
  simp only [A141310]

end A141310

/-! ## A141310.P17824078850377168361

`gcd(n, n%2)+1`
-/

namespace A141310.P17824078850377168361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

end

end A141310.P17824078850377168361

namespace A141310

/-- `gcd(n, n%2)+1` -/
def P17824078850377168361.Spec : Prop :=
  ∀ n, (P17824078850377168361.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P7545150639388415795

`gcd(n+1, xor(1, n))`
-/

namespace A141310.P7545150639388415795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.xor 1 n)

end

end A141310.P7545150639388415795

namespace A141310

/-- `gcd(n+1, xor(1, n))` -/
def P7545150639388415795.Spec : Prop :=
  ∀ n, (P7545150639388415795.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P9279229224233607793

`gcd(xor(n, -1), Δ[or(1, n)])`
-/

namespace A141310.P9279229224233607793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A141310.P9279229224233607793

namespace A141310

/-- `gcd(xor(n, -1), Δ[or(1, n)])` -/
def P9279229224233607793.Spec : Prop :=
  ∀ n, (P9279229224233607793.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P13886550347388414089

`n^((n+1)%2)+1`
-/

namespace A141310.P13886550347388414089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2) + 1

end

end A141310.P13886550347388414089

namespace A141310

/-- `n^((n+1)%2)+1` -/
def P13886550347388414089.Spec : Prop :=
  ∀ n, (P13886550347388414089.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P10024344862145780013

`n^and(1, n+1)+1`
-/

namespace A141310.P10024344862145780013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1) + 1

end

end A141310.P10024344862145780013

namespace A141310

/-- `n^and(1, n+1)+1` -/
def P10024344862145780013.Spec : Prop :=
  ∀ n, (P10024344862145780013.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P4980430610955427463

`C(n, (n+3)%2)+1`
-/

namespace A141310.P4980430610955427463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 3) % 2) + 1

end

end A141310.P4980430610955427463

namespace A141310

/-- `C(n, (n+3)%2)+1` -/
def P4980430610955427463.Spec : Prop :=
  ∀ n, (P4980430610955427463.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P14770392441484839380

`C(n, and(1, n+1))+1`
-/

namespace A141310.P14770392441484839380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 (n + 1)) + 1

end

end A141310.P14770392441484839380

namespace A141310

/-- `C(n, and(1, n+1))+1` -/
def P14770392441484839380.Spec : Prop :=
  ∀ n, (P14770392441484839380.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P11094690601477128777

`lcm(2, n+1)-xor(1, n)`
-/

namespace A141310.P11094690601477128777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - (Nat.xor 1 n : ℤ)

end

end A141310.P11094690601477128777

namespace A141310

/-- `lcm(2, n+1)-xor(1, n)` -/
def P11094690601477128777.Spec : Prop :=
  ∀ n, P11094690601477128777.a n = A141310 n

end A141310

/-! ## A141310.P11952953342770787822

`2-(C(n, and(1, n))-n)`
-/

namespace A141310.P11952953342770787822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (Nat.land 1 n) : ℤ) - (n : ℤ))

end

end A141310.P11952953342770787822

namespace A141310

/-- `2-(C(n, and(1, n))-n)` -/
def P11952953342770787822.Spec : Prop :=
  ∀ n, P11952953342770787822.a n = A141310 n

end A141310

/-! ## A141310.P4478531580410668884

`gcd(n², ∑[and(2, n)])+1`
-/

namespace A141310.P4478531580410668884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A141310.P4478531580410668884

namespace A141310

/-- `gcd(n², ∑[and(2, n)])+1` -/
def P4478531580410668884.Spec : Prop :=
  ∀ n, (P4478531580410668884.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P15385553466066114922

`xor(1, a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A141310.P15385553466066114922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (a (n - 2) + 1)

end

end A141310.P15385553466066114922

namespace A141310

/-- `xor(1, a(n-2)+1)` -/
def P15385553466066114922.Spec : Prop :=
  ∀ n, (P15385553466066114922.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P15588826442041158410

`gcd(2*or(1, n), (n+1)²)`
-/

namespace A141310.P15588826442041158410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * Nat.lor 1 n) ((n + 1) ^ 2)

end

end A141310.P15588826442041158410

namespace A141310

/-- `gcd(2*or(1, n), (n+1)²)` -/
def P15588826442041158410.Spec : Prop :=
  ∀ n, (P15588826442041158410.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P6333772411266036365

`gcd(1-n², or(2, 2*n))`
-/

namespace A141310.P6333772411266036365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 2 : ℤ)) (Nat.lor 2 (2 * n) : ℤ)

end

end A141310.P6333772411266036365

namespace A141310

/-- `gcd(1-n², or(2, 2*n))` -/
def P6333772411266036365.Spec : Prop :=
  ∀ n, (P6333772411266036365.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P10685749035113566966

`record[or(6, n+1)]%(n+2)`
-/

namespace A141310.P10685749035113566966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % (n + 2)

end

end A141310.P10685749035113566966

namespace A141310

/-- `record[or(6, n+1)]%(n+2)` -/
def P10685749035113566966.Spec : Prop :=
  ∀ n, (P10685749035113566966.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P96732015935711377

`record[xor(6, n+1)]%(n+2)`
-/

namespace A141310.P96732015935711377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % (n + 2)

end

end A141310.P96732015935711377

namespace A141310

/-- `record[xor(6, n+1)]%(n+2)` -/
def P96732015935711377.Spec : Prop :=
  ∀ n, (P96732015935711377.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P8032659887599275943

`(2*xor(1, n+3))%(n+3)`
-/

namespace A141310.P8032659887599275943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (n + 3) % (n + 3)

end

end A141310.P8032659887599275943

namespace A141310

/-- `(2*xor(1, n+3))%(n+3)` -/
def P8032659887599275943.Spec : Prop :=
  ∀ n, (P8032659887599275943.a n : ℤ) = A141310 n

end A141310

/-! ## A141310.P17281641741606819091

`2*or(1, n)/a(n-1)` with `a(0)=1`
-/

namespace A141310.P17281641741606819091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((Nat.lor 1 n : ℚ) / a (n - 1))

end

end A141310.P17281641741606819091

namespace A141310

/-- `2*or(1, n)/a(n-1)` -/
def P17281641741606819091.Spec : Prop :=
  ∀ n, P17281641741606819091.a n = (A141310 n : ℚ)

end A141310

/-! ## A141310.P1494764301214949558

`abs(or(n+1, -2*n%4))`
-/

namespace A141310.P1494764301214949558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (Int.tmod (-(2 * n : ℤ)) 4)|

end

end A141310.P1494764301214949558

namespace A141310

/-- `abs(or(n+1, -2*n%4))` -/
def P1494764301214949558.Spec : Prop :=
  ∀ n, P1494764301214949558.a n = A141310 n

end A141310

/-!
# A141311: Primes consisting of a digit and a nonempty string of 9's (i.e., primes of the form k*10^m - 1, where k is any digit).

The programs for A141311, there is no canonical definition to state claims against.
-/

/-! ## A141311.P12391010821768025033

`∩[A061248(n+5), A051885(n)]`
-/

namespace A141311.P12391010821768025033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141311.P12391010821768025033

/-! ## A141311.P17264744072341147623

`∩[A034845(n+1), A051885(n)]`
-/

namespace A141311.P17264744072341147623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141311.P17264744072341147623

/-! ## A141311.P1834811028890516036

`∩[A034845(n+1), A067043(n)]`
-/

namespace A141311.P1834811028890516036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141311.P1834811028890516036

/-! ## A141311.P6264720843262847528

`∩[A235154(n+1), A051885(n)]`
-/

namespace A141311.P6264720843262847528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141311.P6264720843262847528

/-!
# A141312: Inverse Euler transform of A003480.

The programs for A141312, there is no canonical definition to state claims against.
-/

/-! ## A141312.P4650724745763729019

`A326820(Δ[A001003(n)])+1`
-/

namespace A141312.P4650724745763729019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326820 (f1 (n + 1) - f1 n).toNat + 1

end

end A141312.P4650724745763729019

/-! ## A141312.P3019855252736741409

`A335725(n+1)-A191613(n+1)²`
-/

namespace A141312.P3019855252736741409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335725 (n + 1) - A191613 (n + 1) ^ 2

end

end A141312.P3019855252736741409

/-! ## A141312.P866489905517116478

`A265226(n)-A373954(A000225(n))`
-/

namespace A141312.P866489905517116478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265226 n - A373954 (A000225 n).toNat

end

end A141312.P866489905517116478

/-!
# A141313: Number of connected 2-colored parking functions.

The programs for A141313, there is no canonical definition to state claims against.
-/

/-! ## A141313.P12989410599860906661

`2^(n+1)*A122708(n+1)`
-/

namespace A141313.P12989410599860906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A122708 (n + 1)

end

end A141313.P12989410599860906661

/-! ## A141313.P12669652782213314159

`A122708(n+1)*A181821(A000040(n+1))`
-/

namespace A141313.P12669652782213314159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122708 (n + 1) * A181821 (A000040 (n + 1)).toNat

end

end A141313.P12669652782213314159

/-! ## A141313.P2855323409748681165

`A122708(n+1)*A156552(A000040(n+2))`
-/

namespace A141313.P2855323409748681165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122708 (n + 1) * A156552 (A000040 (n + 2)).toNat

end

end A141313.P2855323409748681165

/-! ## A141313.P2979145813210995342

`A122708(n+1)*A173787(A034856(n+2))`
-/

namespace A141313.P2979145813210995342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122708 (n + 1) * A173787 (A034856 (n + 2)).toNat

end

end A141313.P2979145813210995342

/-! ## A141313.P15073964861321553823

`A122708(n+1)*A283857(A000124(n))`
-/

namespace A141313.P15073964861321553823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122708 (n + 1) * A283857 (A000124 n).toNat

end

end A141313.P15073964861321553823

/-!
# A141314: Euler transform of A141313.

The programs for A141314, there is no canonical definition to state claims against.
-/

/-! ## A141314.P3164724851874145218

`A004273(A090360(n))+n`
-/

namespace A141314.P3164724851874145218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090360 n).toNat + (n : ℤ)

end

end A141314.P3164724851874145218

/-!
# A141316: Conjecturally, number of generators of degree n of the Hopf algebra of parking functions, regarded as a dendriform trialgebra.

The programs for A141316, there is no canonical definition to state claims against.
-/

/-! ## A141316.P6293732231219913388

`A185281(n+1)/A000079(n+1)`
-/

namespace A141316.P6293732231219913388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185281 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A141316.P6293732231219913388

/-! ## A141316.P5755789661793038827

`A185281(n+1)/A016116(2*(n+1))`
-/

namespace A141316.P5755789661793038827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185281 (n + 1) : ℚ) / (A016116 (2 * (n + 1)) : ℚ)

end

end A141316.P5755789661793038827

/-! ## A141316.P15432620392127848303

`A122708(n+1)/A141313(n+1)*A185281(n+1)`
-/

namespace A141316.P15432620392127848303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122708 (n + 1) : ℚ) / (A141313 (n + 1) : ℚ) * (A185281 (n + 1) : ℚ)

end

end A141316.P15432620392127848303

/-! ## A141316.P17717353351205801177

`A185281(n+1)/A004277(2^n)`
-/

namespace A141316.P17717353351205801177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185281 (n + 1) : ℚ) / (A004277 (2 ^ n) : ℚ)

end

end A141316.P17717353351205801177

/-! ## A141316.P2701329637423143375

`A185281(n+1)/A057335(2^n)`
-/

namespace A141316.P2701329637423143375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185281 (n + 1) : ℚ) / (A057335 (2 ^ n) : ℚ)

end

end A141316.P2701329637423143375

/-!
# A141317: a(n) = A000244(n) - A010684(n).

The programs for A141317, the canonical program `A141317.P6107136016160513922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141317 has offset 0).

The definition of A141317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141317.P12052338165067077642

`3^n-A010684(n)`
-/

namespace A141317.P12052338165067077642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A010684 n

end

end A141317.P12052338165067077642

namespace A141317

/-- `3^n-A010684(n)` -/
def P12052338165067077642.Spec : Prop :=
  ∀ n, P12052338165067077642.a n = A141317 n

end A141317

/-! ## A141317.P6107136016160513922

`A000244(n)-A010684(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141317

/-- `A000244(n)-A010684(n)` -/
def P6107136016160513922.Spec : Prop :=
  ∀ n, P6107136016160513922.a n = A141317 n

theorem P6107136016160513922.correct : P6107136016160513922.Spec := by
  intro n
  simp only [A141317]

end A141317

/-! ## A141317.P5079215584919635250

`and(3^n, -4)`
-/

namespace A141317.P5079215584919635250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (-4)

end

end A141317.P5079215584919635250

namespace A141317

/-- `and(3^n, -4)` -/
def P5079215584919635250.Spec : Prop :=
  ∀ n, P5079215584919635250.a n = A141317 n

end A141317

/-! ## A141317.P6635162790734305645

`or(2, 3^n)-3`
-/

namespace A141317.P6635162790734305645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 ^ n) : ℤ) - 3

end

end A141317.P6635162790734305645

namespace A141317

/-- `or(2, 3^n)-3` -/
def P6635162790734305645.Spec : Prop :=
  ∀ n, P6635162790734305645.a n = A141317 n

end A141317

/-! ## A141317.P4954973951750162852

`xor(3, or(2, 3^n))`
-/

namespace A141317.P4954973951750162852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 (3 ^ n))

end

end A141317.P4954973951750162852

namespace A141317

/-- `xor(3, or(2, 3^n))` -/
def P4954973951750162852.Spec : Prop :=
  ∀ n, (P4954973951750162852.a n : ℤ) = A141317 n

end A141317

/-! ## A141317.P7867843620084358959

`4*floor(3^n/4)`
-/

namespace A141317.P7867843620084358959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(3 ^ n : ℚ) / 4⌋

end

end A141317.P7867843620084358959

namespace A141317

/-- `4*floor(3^n/4)` -/
def P7867843620084358959.Spec : Prop :=
  ∀ n, P7867843620084358959.a n = A141317 n

end A141317

/-! ## A141317.P14302622456200968902

`3^n-3^(n%2)`
-/

namespace A141317.P14302622456200968902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (3 ^ (n % 2) : ℤ)

end

end A141317.P14302622456200968902

namespace A141317

/-- `3^n-3^(n%2)` -/
def P14302622456200968902.Spec : Prop :=
  ∀ n, P14302622456200968902.a n = A141317 n

end A141317

/-! ## A141317.P17820732797811811919

`3^n-∑[floor(a(n-2))]` with `a(0)=1, a(1)=2, a(2)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A141317.P17820732797811811919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141317.P17820732797811811919

namespace A141317

/-- `3^n-∑[floor(a(n-2))]` -/
def P17820732797811811919.Spec : Prop :=
  ∀ n, P17820732797811811919.a n = A141317 n

end A141317

/-! ## A141317.P17120970344628138047

`∑[3*a(n-1)]+(-1)^n` with `a(0)=-1, a(1)=2`
-/

namespace A141317.P17120970344628138047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (-1) ^ n

end

end A141317.P17120970344628138047

namespace A141317

/-- `∑[3*a(n-1)]+(-1)^n` -/
def P17120970344628138047.Spec : Prop :=
  ∀ n, P17120970344628138047.a n = A141317 n

end A141317

/-! ## A141317.P1963084688085627561

`(-1)^n-∑[3*a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A141317.P1963084688085627561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141317.P1963084688085627561

namespace A141317

/-- `(-1)^n-∑[3*a(n-1)]` -/
def P1963084688085627561.Spec : Prop :=
  ∀ n, P1963084688085627561.a n = A141317 n

end A141317

/-! ## A141317.P15317839666903404922

`2*(a(n-1)+4)+3*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A141317.P15317839666903404922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (a (n - 1) + 4) + 3 * a (n - 2)

end

end A141317.P15317839666903404922

namespace A141317

/-- `2*(a(n-1)+4)+3*a(n-2)` -/
def P15317839666903404922.Spec : Prop :=
  ∀ n, (P15317839666903404922.a n : ℤ) = A141317 n

end A141317

/-! ## A141317.P8977544459497951967

`A102345(n)-2`
-/

namespace A141317.P8977544459497951967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n - 2

end

end A141317.P8977544459497951967

namespace A141317

/-- `A102345(n)-2` -/
def P8977544459497951967.Spec : Prop :=
  ∀ n, P8977544459497951967.a n = A141317 n

end A141317

/-! ## A141317.P2465982286904840420

`Δ[A103425(n)]-2`
-/

namespace A141317.P2465982286904840420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A141317.P2465982286904840420

namespace A141317

/-- `Δ[A103425(n)]-2` -/
def P2465982286904840420.Spec : Prop :=
  ∀ n, P2465982286904840420.a n = A141317 n

end A141317

/-! ## A141317.P7584541809993029527

`abs(A352779(n)+1)-2`
-/

namespace A141317.P7584541809993029527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352779 n + 1| - 2

end

end A141317.P7584541809993029527

namespace A141317

/-- `abs(A352779(n)+1)-2` -/
def P7584541809993029527.Spec : Prop :=
  ∀ n, P7584541809993029527.a n = A141317 n

end A141317

/-! ## A141317.P2537588975925257111

`Δ[or(1, A007051(n))]-2`
-/

namespace A141317.P2537588975925257111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A141317.P2537588975925257111

namespace A141317

/-- `Δ[or(1, A007051(n))]-2` -/
def P2537588975925257111.Spec : Prop :=
  ∀ n, P2537588975925257111.a n = A141317 n

end A141317

/-! ## A141317.P4450853213364606527

`3^n-A176040(n+1)`
-/

namespace A141317.P4450853213364606527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A176040 (n + 1)

end

end A141317.P4450853213364606527

namespace A141317

/-- `3^n-A176040(n+1)` -/
def P4450853213364606527.Spec : Prop :=
  ∀ n, P4450853213364606527.a n = A141317 n

end A141317

/-! ## A141317.P9295055540218694647

`3^n-A153284(n+2)`
-/

namespace A141317.P9295055540218694647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A153284 (n + 2)

end

end A141317.P9295055540218694647

namespace A141317

/-- `3^n-A153284(n+2)` -/
def P9295055540218694647.Spec : Prop :=
  ∀ n, P9295055540218694647.a n = A141317 n

end A141317

/-! ## A141317.P14453837823776393808

`3^n-gcd(3, A000032(2*n))`
-/

namespace A141317.P14453837823776393808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (Int.gcd 3 (A000032 (2 * n)) : ℤ)

end

end A141317.P14453837823776393808

namespace A141317

/-- `3^n-gcd(3, A000032(2*n))` -/
def P14453837823776393808.Spec : Prop :=
  ∀ n, P14453837823776393808.a n = A141317 n

end A141317

/-! ## A141317.P1173701766522104941

`3^n-A000032(gcd(n+1, n-1))`
-/

namespace A141317.P1173701766522104941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A000032 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A141317.P1173701766522104941

namespace A141317

/-- `3^n-A000032(gcd(n+1, n-1))` -/
def P1173701766522104941.Spec : Prop :=
  ∀ n, P1173701766522104941.a n = A141317 n

end A141317

/-!
# A141318: Euler transform of A025225.

The programs for A141318, there is no canonical definition to state claims against.
-/

/-! ## A141318.P14556336454664570336

`∑[A241183(A066380(n)+1)]`
-/

namespace A141318.P14556336454664570336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A066380 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141318.P14556336454664570336

/-! ## A141318.P16685629480794611427

`A039194(A350690(a(n-1)+2*(n-1)*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A141318.P16685629480794611427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A039194 (A350690 (a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2))).toNat).toNat

end

end A141318.P16685629480794611427

/-!
# A141319: INVERTi transform of A141318.

The programs for A141319, there is no canonical definition to state claims against.
-/

/-! ## A141319.P3868939408158468023

`A125843(A008120(n+1))`
-/

namespace A141319.P3868939408158468023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125843 (A008120 (n + 1)).toNat

end

end A141319.P3868939408158468023

/-!
# A141320: Both n and the smallest number with n divisors are in A002182.

The programs for A141320, there is no canonical definition to state claims against.
-/

/-! ## A141320.P10178351858720003372

`filter[A002183(n+1), A322586(#)]`
-/

namespace A141320.P10178351858720003372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A141320.P10178351858720003372

/-! ## A141320.P14662191662697076282

`∩[A002182(n+1), A002183(n+1)]`
-/

namespace A141320.P14662191662697076282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141320.P14662191662697076282

/-! ## A141320.P14162984917183508476

`∩[A002183(n+1), A135372(n+1)-1]`
-/

namespace A141320.P14162984917183508476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141320.P14162984917183508476

/-!
# A141321: a(n) = -A141055(n)/(n+1)!.

The programs for A141321, there is no canonical definition to state claims against.
-/

/-! ## A141321.P11633422955139057231

`A027760(n+2)/(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A141321.P11633422955139057231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A027760 (n + 2) : ℚ) / (n + 1 : ℚ) * a (n - 1)

end

end A141321.P11633422955139057231

/-!
# A141322: Nonpalindromes which are products of two palindromes in base 10.

The programs for A141322, there is no canonical definition to state claims against.
-/

/-! ## A141322.P11147061240809662158

`∩[A029742(n+1), A115683(n+1)]`
-/

namespace A141322.P11147061240809662158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141322.P11147061240809662158

/-! ## A141322.P13918416454672332497

`∩[A029742(n+1), A140332(n+1)]`
-/

namespace A141322.P13918416454672332497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141322.P13918416454672332497

/-!
# A141323: Number of groups of order L(n).

The programs for A141323, there is no canonical definition to state claims against.
-/

/-! ## A141323.P16966733132349547779

`A086080(n)+A000001(A000032(n))`
-/

namespace A141323.P16966733132349547779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 n + A000001 (A000032 n).toNat

end

end A141323.P16966733132349547779

/-! ## A141323.P7115354867659232937

`A000001(A000032(n)*A332649(n))`
-/

namespace A141323.P7115354867659232937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000032 n * A332649 n).toNat

end

end A141323.P7115354867659232937

/-! ## A141323.P4867238390070101214

`A000001(xor(A000032(n), A028704(n)))`
-/

namespace A141323.P4867238390070101214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.xor (A000032 n) (A028704 n)).toNat

end

end A141323.P4867238390070101214

/-! ## A141323.P4155186762490596746

`A035677(n+1)+A000001(A000032(n))`
-/

namespace A141323.P4155186762490596746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035677 (n + 1) + A000001 (A000032 n).toNat

end

end A141323.P4155186762490596746

/-! ## A141323.P14951679189995779552

`A224772(n+1)+A000001(A000032(n))`
-/

namespace A141323.P14951679189995779552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224772 (n + 1) + A000001 (A000032 n).toNat

end

end A141323.P14951679189995779552

/-!
# A141324: Sum of digits of A002452(n).

The programs for A141324, the canonical program `A141324.P18346700993173569424` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141324 has offset 0).

The definition of A141324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141324.P18346700993173569424

`∑{digits}[A002452(n), #]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141324

/-- `∑{digits}[A002452(n), #]` -/
def P18346700993173569424.Spec : Prop :=
  ∀ n, (P18346700993173569424.a n : ℤ) = A141324 n

theorem P18346700993173569424.correct : P18346700993173569424.Spec := by
  intro n
  simp only [A141324]

end A141324

/-! ## A141324.P16499441446722712396

`∑{digits}[1-A047854(n), #]`
-/

namespace A141324.P16499441446722712396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A047854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A141324.P16499441446722712396

namespace A141324

/-- `∑{digits}[1-A047854(n), #]` -/
def P16499441446722712396.Spec : Prop :=
  ∀ n, (P16499441446722712396.a n : ℤ) = A141324 n

end A141324

/-! ## A141324.P12504928828357183509

`∑{digits}[A099583(2*n), #]`
-/

namespace A141324.P12504928828357183509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099583 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A141324.P12504928828357183509

namespace A141324

/-- `∑{digits}[A099583(2*n), #]` -/
def P12504928828357183509.Spec : Prop :=
  ∀ n, (P12504928828357183509.a n : ℤ) = A141324 n

end A141324

/-! ## A141324.P4865583252627657605

`∑{digits}[A152298(2*n), #]`
-/

namespace A141324.P4865583252627657605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A141324.P4865583252627657605

namespace A141324

/-- `∑{digits}[A152298(2*n), #]` -/
def P4865583252627657605.Spec : Prop :=
  ∀ n, (P4865583252627657605.a n : ℤ) = A141324 n

end A141324

/-! ## A141324.P6033002149315177556

`∑{d}[∑{digits}[9*a(n-1)+1, #], A000010(#)]` with `a(0)=0`
-/

namespace A141324.P6033002149315177556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  9 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A141324.P6033002149315177556

namespace A141324

/-- `∑{d}[∑{digits}[9*a(n-1)+1, #], A000010(#)]` -/
def P6033002149315177556.Spec : Prop :=
  ∀ n, P6033002149315177556.a n = A141324 n

end A141324

/-! ## A141324.P8101323729764202953

`∑{digits}[floor(9^n/8), #]`
-/

namespace A141324.P8101323729764202953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 ^ n : ℚ) / 8⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A141324.P8101323729764202953

namespace A141324

/-- `∑{digits}[floor(9^n/8), #]` -/
def P8101323729764202953.Spec : Prop :=
  ∀ n, (P8101323729764202953.a n : ℤ) = A141324 n

end A141324

/-!
# A141325: a(n) = A000045(n) + A131531(n+3).

The programs for A141325, the canonical program `A141325.P2371812307783591660` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141325 has offset 0).

The definition of A141325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141325.P2371812307783591660

`A000045(n)+A131531(n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141325

/-- `A000045(n)+A131531(n+3)` -/
def P2371812307783591660.Spec : Prop :=
  ∀ n, P2371812307783591660.a n = A141325 n

theorem P2371812307783591660.correct : P2371812307783591660.Spec := by
  intro n
  simp only [A141325]

end A141325

/-! ## A141325.P396084083291854439

`∑[2*A293014(n)]+1`
-/

namespace A141325.P396084083291854439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A141325.P396084083291854439

namespace A141325

/-- `∑[2*A293014(n)]+1` -/
def P396084083291854439.Spec : Prop :=
  ∀ n, P396084083291854439.a n = A141325 n

end A141325

/-! ## A141325.P12110102120219199506

`A092220(n)+A008346(n)`
-/

namespace A141325.P12110102120219199506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + A008346 n

end

end A141325.P12110102120219199506

namespace A141325

/-- `A092220(n)+A008346(n)` -/
def P12110102120219199506.Spec : Prop :=
  ∀ n, P12110102120219199506.a n = A141325 n

end A141325

/-! ## A141325.P3276129486597168502

`A293014(n)+A005252(n)`
-/

namespace A141325.P3276129486597168502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 n + A005252 n

end

end A141325.P3276129486597168502

namespace A141325

/-- `A293014(n)+A005252(n)` -/
def P3276129486597168502.Spec : Prop :=
  ∀ n, P3276129486597168502.a n = A141325 n

end A141325

/-! ## A141325.P490145997012505408

`A212804(n+1)+((1-A000045(n))%2)^n`
-/

namespace A141325.P490145997012505408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + Int.tmod (1 - A000045 n) 2 ^ n

end

end A141325.P490145997012505408

namespace A141325

/-- `A212804(n+1)+((1-A000045(n))%2)^n` -/
def P490145997012505408.Spec : Prop :=
  ∀ n, P490145997012505408.a n = A141325 n

end A141325

/-! ## A141325.P14467399838420087066

`A000045(n)-A056594(A250470(2*n+3))`
-/

namespace A141325.P14467399838420087066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A056594 (A250470 (2 * n + 3)).toNat

end

end A141325.P14467399838420087066

namespace A141325

/-- `A000045(n)-A056594(A250470(2*n+3))` -/
def P14467399838420087066.Spec : Prop :=
  ∀ n, P14467399838420087066.a n = A141325 n

end A141325

/-! ## A141325.P8086319191274732899

`A000045(n)+A010892(n+1)*A049347(n)`
-/

namespace A141325.P8086319191274732899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A010892 (n + 1) * A049347 n

end

end A141325.P8086319191274732899

namespace A141325

/-- `A000045(n)+A010892(n+1)*A049347(n)` -/
def P8086319191274732899.Spec : Prop :=
  ∀ n, P8086319191274732899.a n = A141325 n

end A141325

/-! ## A141325.P5593519357339015729

`A290968(n+1)+A290968(n)-A130151(n+1)`
-/

namespace A141325.P5593519357339015729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290968 (n + 1) + (A290968 n - A130151 (n + 1))

end

end A141325.P5593519357339015729

namespace A141325

/-- `A290968(n+1)+A290968(n)-A130151(n+1)` -/
def P5593519357339015729.Spec : Prop :=
  ∀ n, P5593519357339015729.a n = A141325 n

end A141325

/-! ## A141325.P9353677547932247397

`A212804(n+1)+A010892(4*n)*A010892(n+1)`
-/

namespace A141325.P9353677547932247397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A010892 (4 * n) * A010892 (n + 1)

end

end A141325.P9353677547932247397

namespace A141325

/-- `A212804(n+1)+A010892(4*n)*A010892(n+1)` -/
def P9353677547932247397.Spec : Prop :=
  ∀ n, P9353677547932247397.a n = A141325 n

end A141325

/-! ## A141325.P11172390923864984012

`A103609(2*n)+A010892(4*n)*A010892(n+1)`
-/

namespace A141325.P11172390923864984012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + A010892 (4 * n) * A010892 (n + 1)

end

end A141325.P11172390923864984012

namespace A141325

/-- `A103609(2*n)+A010892(4*n)*A010892(n+1)` -/
def P11172390923864984012.Spec : Prop :=
  ∀ n, P11172390923864984012.a n = A141325 n

end A141325

/-! ## A141325.P4413159945881789535

`A006355(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141325.P4413159945881789535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A006355 n - a (n - 3)

end

end A141325.P4413159945881789535

namespace A141325

/-- `A006355(n)-a(n-3)` -/
def P4413159945881789535.Spec : Prop :=
  ∀ n, P4413159945881789535.a n = A141325 n

end A141325

/-! ## A141325.P10333505990341625672

`2*A000045(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141325.P10333505990341625672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A000045 (n - 1) - a (n - 3)

end

end A141325.P10333505990341625672

namespace A141325

/-- `2*A000045(n-1)-a(n-3)` -/
def P10333505990341625672.Spec : Prop :=
  ∀ n, P10333505990341625672.a n = A141325 n

end A141325

/-! ## A141325.P11632886780364755830

`A053602(2*n)+A163806(2*n+1)*A163806(n+1)`
-/

namespace A141325.P11632886780364755830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n) + A163806 (2 * n + 1) * A163806 (n + 1)

end

end A141325.P11632886780364755830

namespace A141325

/-- `A053602(2*n)+A163806(2*n+1)*A163806(n+1)` -/
def P11632886780364755830.Spec : Prop :=
  ∀ n, P11632886780364755830.a n = A141325 n

end A141325

/-! ## A141325.P9733649957212635653

`Δ[or(1, A000045(n+1)-n)]+1`
-/

namespace A141325.P9733649957212635653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000045 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A141325.P9733649957212635653

namespace A141325

/-- `Δ[or(1, A000045(n+1)-n)]+1` -/
def P9733649957212635653.Spec : Prop :=
  ∀ n, P9733649957212635653.a n = A141325 n

end A141325

/-! ## A141325.P14210338485143145466

`A000032(n)-(A000045(n)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141325.P14210338485143145466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000032 n - (A000045 n + a (n - 3))

end

end A141325.P14210338485143145466

namespace A141325

/-- `A000032(n)-(A000045(n)+a(n-3))` -/
def P14210338485143145466.Spec : Prop :=
  ∀ n, P14210338485143145466.a n = A141325 n

end A141325

/-! ## A141325.P11866758103231768590

`A140096(n)+A328881(n)-A131531(n+1)`
-/

namespace A141325.P11866758103231768590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140096 n + (A328881 n - A131531 (n + 1))

end

end A141325.P11866758103231768590

namespace A141325

/-- `A140096(n)+A328881(n)-A131531(n+1)` -/
def P11866758103231768590.Spec : Prop :=
  ∀ n, P11866758103231768590.a n = A141325 n

end A141325

/-! ## A141325.P8087263879768026781

`A000045(n)+A024493(n)-A001045(n)`
-/

namespace A141325.P8087263879768026781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A024493 n - A001045 n)

end

end A141325.P8087263879768026781

namespace A141325

/-- `A000045(n)+A024493(n)-A001045(n)` -/
def P8087263879768026781.Spec : Prop :=
  ∀ n, P8087263879768026781.a n = A141325 n

end A141325

/-! ## A141325.P579108851577424699

`A001045(n+1)+A000045(n)-A024495(n+1)`
-/

namespace A141325.P579108851577424699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A000045 n - A024495 (n + 1))

end

end A141325.P579108851577424699

namespace A141325

/-- `A001045(n+1)+A000045(n)-A024495(n+1)` -/
def P579108851577424699.Spec : Prop :=
  ∀ n, P579108851577424699.a n = A141325 n

end A141325

/-! ## A141325.P7776444213531211998

`and(A104220(n), A284353(n))`
-/

namespace A141325.P7776444213531211998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104220 n) (A284353 n)

end

end A141325.P7776444213531211998

namespace A141325

/-- `and(A104220(n), A284353(n))` -/
def P7776444213531211998.Spec : Prop :=
  ∀ n, P7776444213531211998.a n = A141325 n

end A141325

/-! ## A141325.P3422170924946026880

`A260190(n²)+A000045(n)`
-/

namespace A141325.P3422170924946026880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (n ^ 2) + A000045 n

end

end A141325.P3422170924946026880

namespace A141325

/-- `A260190(n²)+A000045(n)` -/
def P3422170924946026880.Spec : Prop :=
  ∀ n, P3422170924946026880.a n = A141325 n

end A141325

/-!
# A141326: Subsequence of 'Fermat near misses' which is generated by a simple formula based on the cubic binomial expansion along with formulas for the corresponding terms in the expression, x^3 + y^3 = z^3 + 1.

The programs for A141326, the canonical program `A141326.P3945186453744683596` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141326 has offset 1).

The definition of A141326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141326.P3945186453744683596

`3*(n+1+3*(n+1)^4)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141326

/-- `3*(n+1+3*(n+1)^4)` -/
def P3945186453744683596.Spec : Prop :=
  ∀ n, (P3945186453744683596.a n : ℤ) = A141326 (n + 1)

theorem P3945186453744683596.correct : P3945186453744683596.Spec := by
  intro n
  simp only [A141326, Nat.add_sub_cancel]

end A141326

/-! ## A141326.P11654820219552774844

`∑[lcm(3, Δ[3*n²²]+1)]`
-/

namespace A141326.P11654820219552774844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141326.P11654820219552774844

namespace A141326

/-- `∑[lcm(3, Δ[3*n²²]+1)]` -/
def P11654820219552774844.Spec : Prop :=
  ∀ n, (P11654820219552774844.a n : ℤ) = A141326 (n + 1)

end A141326

/-! ## A141326.P7642978300111628706

`∑[Δ[A033428(n)²]+3]`
-/

namespace A141326.P7642978300111628706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141326.P7642978300111628706

namespace A141326

/-- `∑[Δ[A033428(n)²]+3]` -/
def P7642978300111628706.Spec : Prop :=
  ∀ n, P7642978300111628706.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P11446794626016950639

`A008486(n+1)+(3*(n+1)²)²`
-/

namespace A141326.P11446794626016950639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + ((3 * (n + 1) ^ 2) ^ 2 : ℤ)

end

end A141326.P11446794626016950639

namespace A141326

/-- `A008486(n+1)+(3*(n+1)²)²` -/
def P11446794626016950639.Spec : Prop :=
  ∀ n, P11446794626016950639.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P9734924795049200497

`A008585(n+1)+(3*(n+1)²)²`
-/

namespace A141326.P9734924795049200497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + ((3 * (n + 1) ^ 2) ^ 2 : ℤ)

end

end A141326.P9734924795049200497

namespace A141326

/-- `A008585(n+1)+(3*(n+1)²)²` -/
def P9734924795049200497.Spec : Prop :=
  ∀ n, P9734924795049200497.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P8465117006832333534

`A004538(n+1)+A003215(n+1)*A003215(n)`
-/

namespace A141326.P8465117006832333534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (n + 1) + A003215 (n + 1) * A003215 n

end

end A141326.P8465117006832333534

namespace A141326

/-- `A004538(n+1)+A003215(n+1)*A003215(n)` -/
def P8465117006832333534.Spec : Prop :=
  ∀ n, P8465117006832333534.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P2931255312380268435

`A033581(n+1)+A003215(n)*A028896(n+1)`
-/

namespace A141326.P2931255312380268435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) + A003215 n * A028896 (n + 1)

end

end A141326.P2931255312380268435

namespace A141326

/-- `A033581(n+1)+A003215(n)*A028896(n+1)` -/
def P2931255312380268435.Spec : Prop :=
  ∀ n, P2931255312380268435.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P3598646173496457426

`A028896(n)+A028896(n+1)*A077588(n+1)`
-/

namespace A141326.P3598646173496457426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A028896 (n + 1) * A077588 (n + 1)

end

end A141326.P3598646173496457426

namespace A141326

/-- `A028896(n)+A028896(n+1)*A077588(n+1)` -/
def P3598646173496457426.Spec : Prop :=
  ∀ n, P3598646173496457426.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P8486130374274754151

`∑[A081583(2*n+1)+2]`
-/

namespace A141326.P8486130374274754151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 (2 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141326.P8486130374274754151

namespace A141326

/-- `∑[A081583(2*n+1)+2]` -/
def P8486130374274754151.Spec : Prop :=
  ∀ n, P8486130374274754151.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P12598008353981461902

`A168200(2*(n+1))+A000212(A168200(2*(n+1)))²`
-/

namespace A141326.P12598008353981461902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168200 (2 * (n + 1)) + A000212 (A168200 (2 * (n + 1))).toNat ^ 2

end

end A141326.P12598008353981461902

namespace A141326

/-- `A168200(2*(n+1))+A000212(A168200(2*(n+1)))²` -/
def P12598008353981461902.Spec : Prop :=
  ∀ n, P12598008353981461902.a n = A141326 (n + 1)

end A141326

/-! ## A141326.P482942676891782106

`A050791(A145383(n+1))`
-/

namespace A141326.P482942676891782106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050791 (A145383 (n + 1)).toNat

end

end A141326.P482942676891782106

namespace A141326

/-- `A050791(A145383(n+1))` -/
def P482942676891782106.Spec : Prop :=
  ∀ n, P482942676891782106.a n = A141326 (n + 1)

end A141326

/-!
# A141327: Infinite array read by antidiagonals: a(m,n) = the smallest positive integer that has a factor in common with both m and n (m >= 2, n >= 2).

The programs for A141327, there is no canonical definition to state claims against.
-/

/-! ## A141327.P5626694153957586521

`A331737(gcd(A141328(n+2), A141329(n+2)))`
-/

namespace A141327.P5626694153957586521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (Int.gcd (A141328 (n + 2)) (A141329 (n + 2)))

end

end A141327.P5626694153957586521

/-!
# A141330: a(n) = number of positive integers k, k < n, where the sine of k radians is < the sine of n radians.

The programs for A141330, there is no canonical definition to state claims against.
-/

/-! ## A141330.P7897446440588182792

`n-A141331(n+1)`
-/

namespace A141330.P7897446440588182792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141331 (n + 1)

end

end A141330.P7897446440588182792

/-! ## A141330.P3930741992559093743

`-(A141331(n+1)+A001489(n))`
-/

namespace A141330.P3930741992559093743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A141331 (n + 1) + A001489 n)

end

end A141330.P3930741992559093743

/-! ## A141330.P12612044609124616476

`A057428(n)*A141331(n+1)+n`
-/

namespace A141330.P12612044609124616476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A141331 (n + 1) + (n : ℤ)

end

end A141330.P12612044609124616476

/-! ## A141330.P10741962367013713012

`A141331(n+1)*A260196(n)+n`
-/

namespace A141330.P10741962367013713012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141331 (n + 1) * A260196 n + (n : ℤ)

end

end A141330.P10741962367013713012

/-! ## A141330.P12317739864677514822

`A141331(n+1)*A153881(n+1)+n`
-/

namespace A141330.P12317739864677514822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141331 (n + 1) * A153881 (n + 1) + (n : ℤ)

end

end A141330.P12317739864677514822

/-! ## A141330.P13756835388507393387

`lcm(A141331(n+1)+A001489(n), A033999(n))`
-/

namespace A141330.P13756835388507393387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141331 (n + 1) + A001489 n) (A033999 n)

end

end A141330.P13756835388507393387

/-! ## A141330.P8263662950620080229

`∑{d}[A141331(n+1)+A001489(n), A000010(#)]`
-/

namespace A141330.P8263662950620080229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141331 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A141330.P8263662950620080229

/-! ## A141330.P8877615583711206310

`A025581(A141331(n+1)+∑[n])`
-/

namespace A141330.P8877615583711206310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141331 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141330.P8877615583711206310

/-!
# A141331: a(n) = number of positive integers k, k < n, where the sine of k radians is > the sine of n radians.

The programs for A141331, there is no canonical definition to state claims against.
-/

/-! ## A141331.P17876188640400055778

`n-A141330(n+1)`
-/

namespace A141331.P17876188640400055778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141330 (n + 1)

end

end A141331.P17876188640400055778

/-! ## A141331.P12708254763655396314

`-(A141330(n+1)+A001489(n))`
-/

namespace A141331.P12708254763655396314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A141330 (n + 1) + A001489 n)

end

end A141331.P12708254763655396314

/-! ## A141331.P297777843795218685

`A057428(n)*A141330(n+1)+n`
-/

namespace A141331.P297777843795218685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A141330 (n + 1) + (n : ℤ)

end

end A141331.P297777843795218685

/-! ## A141331.P4799050381183013328

`A065033(A016825(n))%(A141330(n+1)+n+1)`
-/

namespace A141331.P4799050381183013328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A016825 n).toNat) (A141330 (n + 1) + (n + 1 : ℤ))

end

end A141331.P4799050381183013328

/-! ## A141331.P14206935902648611019

`abs((A141330(n+1)+A001489(n))%A000040(n+2))`
-/

namespace A141331.P14206935902648611019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A141330 (n + 1) + A001489 n) (A000040 (n + 2))|

end

end A141331.P14206935902648611019

/-! ## A141331.P11754439363134070751

`A025581(A141330(n+1)+∑[n])`
-/

namespace A141331.P11754439363134070751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141330 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141331.P11754439363134070751

/-!
# A141332: a(n) = number of positive integers k, k < n, where |the sine of k radians| is < |the sine of n radians|. Also, a(n) = number of positive integers k, k < n, where |the cosine of k radians| is > |the cosine of n radians|.

The programs for A141332, there is no canonical definition to state claims against.
-/

/-! ## A141332.P8258603490345853136

`n-A141333(n+1)`
-/

namespace A141332.P8258603490345853136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141333 (n + 1)

end

end A141332.P8258603490345853136

/-! ## A141332.P8000560690772063495

`-(A141333(n+1)+A001489(n))`
-/

namespace A141332.P8000560690772063495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A141333 (n + 1) + A001489 n)

end

end A141332.P8000560690772063495

/-! ## A141332.P6508176345017281896

`A024000(A141333(n+1)+1)+n`
-/

namespace A141332.P6508176345017281896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A141333 (n + 1) + 1).toNat + (n : ℤ)

end

end A141332.P6508176345017281896

/-! ## A141332.P9663457102132262819

`A008683(A238528(n+1))*A141333(n+1)+n`
-/

namespace A141332.P9663457102132262819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A238528 (n + 1)).toNat * A141333 (n + 1) + (n : ℤ)

end

end A141332.P9663457102132262819

/-! ## A141332.P17800734987579939462

`A008683(A047934(n+1))*A141333(n+1)+n`
-/

namespace A141332.P17800734987579939462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A047934 (n + 1)).toNat * A141333 (n + 1) + (n : ℤ)

end

end A141332.P17800734987579939462

/-!
# A141333: a(n) = number of positive integers k, k < n, where |the sine of k radians| is > |the sine of n radians|. Also, a(n) = number of positive integers k, k < n, where |the cosine of k radians| is < |the cosine of n radians|.

The programs for A141333, there is no canonical definition to state claims against.
-/

/-! ## A141333.P8000624533471432367

`n-A141332(n+1)`
-/

namespace A141333.P8000624533471432367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141332 (n + 1)

end

end A141333.P8000624533471432367

/-! ## A141333.P4616067206382182057

`abs(A141332(n+1)+A001489(n))`
-/

namespace A141333.P4616067206382182057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141332 (n + 1) + A001489 n|

end

end A141333.P4616067206382182057

/-! ## A141333.P4964421656928373937

`A057428(n)*A141332(n+1)+n`
-/

namespace A141333.P4964421656928373937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A141332 (n + 1) + (n : ℤ)

end

end A141333.P4964421656928373937

/-! ## A141333.P17366752153070913185

`A141332(n+1)*A153881(n+1)+n`
-/

namespace A141333.P17366752153070913185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141332 (n + 1) * A153881 (n + 1) + (n : ℤ)

end

end A141333.P17366752153070913185

/-! ## A141333.P10477409904969878009

`(A141332(n+1)+A001489(n))*A260196(n)`
-/

namespace A141333.P10477409904969878009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141332 (n + 1) + A001489 n) * A260196 n

end

end A141333.P10477409904969878009

/-! ## A141333.P6948230915892370387

`(A141332(n+1)+A001489(n))/A153881(n+1)`
-/

namespace A141333.P6948230915892370387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141332 (n + 1) + A001489 n : ℚ) / (A153881 (n + 1) : ℚ)

end

end A141333.P6948230915892370387

/-! ## A141333.P7188737461692452230

`A025581(A141332(n+1)+∑[n])`
-/

namespace A141333.P7188737461692452230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141332 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141333.P7188737461692452230

/-!
# A141334: a(n) = number of positive integers k, k < n, where the cosine of k radians is < the cosine of n radians.

The programs for A141334, there is no canonical definition to state claims against.
-/

/-! ## A141334.P12585159417396399576

`n-A141335(n+1)`
-/

namespace A141334.P12585159417396399576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141335 (n + 1)

end

end A141334.P12585159417396399576

/-! ## A141334.P17878690435533377864

`abs(A141335(n+1)+A001489(n))`
-/

namespace A141334.P17878690435533377864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141335 (n + 1) + A001489 n|

end

end A141334.P17878690435533377864

/-! ## A141334.P13608926052881684520

`lcm(A141335(n+1)+A001489(n), A033999(n))`
-/

namespace A141334.P13608926052881684520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141335 (n + 1) + A001489 n) (A033999 n)

end

end A141334.P13608926052881684520

/-! ## A141334.P11955745371658519904

`gcd(A141335(n+1)+A001489(n), A000038(n+1))`
-/

namespace A141334.P11955745371658519904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141335 (n + 1) + A001489 n) (A000038 (n + 1))

end

end A141334.P11955745371658519904

/-! ## A141334.P2042442971174954859

`(A141335(n+1)+A001489(n))*A033999(2*n+5)`
-/

namespace A141334.P2042442971174954859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141335 (n + 1) + A001489 n) * A033999 (2 * n + 5)

end

end A141334.P2042442971174954859

/-! ## A141334.P2611323098025621458

`A025581(A141335(n+1)+∑[n])`
-/

namespace A141334.P2611323098025621458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141335 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141334.P2611323098025621458

/-! ## A141334.P2775890253380191258

`A025581(A000096(n)+A141335(n+1)+A001489(n))`
-/

namespace A141334.P2775890253380191258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000096 n + (A141335 (n + 1) + A001489 n)).toNat

end

end A141334.P2775890253380191258

/-!
# A141335: a(n) = number of positive integers k, k < n, where the cosine of k radians is > the cosine of n radians.

The programs for A141335, there is no canonical definition to state claims against.
-/

/-! ## A141335.P17999479949475181737

`n-A141334(n+1)`
-/

namespace A141335.P17999479949475181737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A141334 (n + 1)

end

end A141335.P17999479949475181737

/-! ## A141335.P16315033451451428107

`abs(A141334(n+1)+A001489(n))`
-/

namespace A141335.P16315033451451428107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141334 (n + 1) + A001489 n|

end

end A141335.P16315033451451428107

/-! ## A141335.P5384851896936653044

`A057428(n)*A141334(n+1)+n`
-/

namespace A141335.P5384851896936653044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A141334 (n + 1) + (n : ℤ)

end

end A141335.P5384851896936653044

/-! ## A141335.P17949842112370556675

`lcm(A141334(n+1)+A001489(n), A033999(n))`
-/

namespace A141335.P17949842112370556675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141334 (n + 1) + A001489 n) (A033999 n)

end

end A141335.P17949842112370556675

/-! ## A141335.P8420585801589612716

`A033999(A074593(n+1))*A141334(n+1)+n`
-/

namespace A141335.P8420585801589612716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A074593 (n + 1)).toNat * A141334 (n + 1) + (n : ℤ)

end

end A141335.P8420585801589612716

/-! ## A141335.P6658254769892169482

`A141334(n+1)*A300547(A241686(n+1))+n`
-/

namespace A141335.P6658254769892169482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141334 (n + 1) * A300547 (A241686 (n + 1)).toNat + (n : ℤ)

end

end A141335.P6658254769892169482

/-! ## A141335.P12103778573286377144

`(A141334(n+1)+A001489(n))/A300547(A241686(n+1))`
-/

namespace A141335.P12103778573286377144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141334 (n + 1) + A001489 n : ℚ) / (A300547 (A241686 (n + 1)).toNat : ℚ)

end

end A141335.P12103778573286377144

/-! ## A141335.P9683683278316190333

`A033999(A075544(n+1))*A141334(n+1)+n`
-/

namespace A141335.P9683683278316190333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A075544 (n + 1)).toNat * A141334 (n + 1) + (n : ℤ)

end

end A141335.P9683683278316190333

/-! ## A141335.P8300114837316031707

`A025581(A141334(n+1)+∑[n])`
-/

namespace A141335.P8300114837316031707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141334 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141335.P8300114837316031707

/-!
# A141336: Primes of the form 2*x^2+6*x*y-7*y^2 (as well as of the form 2*x^2+10*x*y+y^2).

The programs for A141336, there is no canonical definition to state claims against.
-/

/-! ## A141336.P7598314861052800388

`∩[A002313(n+1), A191021(n+1)]`
-/

namespace A141336.P7598314861052800388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P7598314861052800388

/-! ## A141336.P5677331447518927914

`∩[A002313(n+1), A296932(n+1)]`
-/

namespace A141336.P5677331447518927914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P5677331447518927914

/-! ## A141336.P3136794955441074417

`∩[A002313(n+1), A038897(n+1)]`
-/

namespace A141336.P3136794955441074417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P3136794955441074417

/-! ## A141336.P4625910644088715939

`∩[A038897(n+1), A191021(n+1)]`
-/

namespace A141336.P4625910644088715939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P4625910644088715939

/-! ## A141336.P4238359840711062490

`∩[A038897(n+1), A055025(n+1)]`
-/

namespace A141336.P4238359840711062490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P4238359840711062490

/-! ## A141336.P10012956679768311573

`∩[A055025(n+1), A191021(n+1)]`
-/

namespace A141336.P10012956679768311573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P10012956679768311573

/-! ## A141336.P7021225502739227597

`∩[A038897(n+1), A281292(n+1)]`
-/

namespace A141336.P7021225502739227597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P7021225502739227597

/-! ## A141336.P15319626580757784412

`∩[A038897(n+1), A224450(n+1)]`
-/

namespace A141336.P15319626580757784412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P15319626580757784412

/-! ## A141336.P10802428014007363256

`∩[A191021(n+1), A224450(n+1)]`
-/

namespace A141336.P10802428014007363256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P10802428014007363256

/-! ## A141336.P13475376589022263091

`∩[A003654(n+1), A038897(n+1)]`
-/

namespace A141336.P13475376589022263091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P13475376589022263091

/-! ## A141336.P9170448554968641807

`∩[A003814(n+1), A038897(n+1)]`
-/

namespace A141336.P9170448554968641807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P9170448554968641807

/-! ## A141336.P5957290114302341497

`∩[A031396(n+1), A038897(n+1)]`
-/

namespace A141336.P5957290114302341497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P5957290114302341497

/-! ## A141336.P14838180011981908664

`∩[A003654(n+1), A191021(n+1)]`
-/

namespace A141336.P14838180011981908664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P14838180011981908664

/-! ## A141336.P10086759510754461298

`∩[A003814(n+1), A191021(n+1)]`
-/

namespace A141336.P10086759510754461298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P10086759510754461298

/-! ## A141336.P7406807241545444348

`∩[A031396(n+1), A191021(n+1)]`
-/

namespace A141336.P7406807241545444348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P7406807241545444348

/-! ## A141336.P1045605916144793837

`∩[A003654(n+1), A296932(n+1)]`
-/

namespace A141336.P1045605916144793837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P1045605916144793837

/-! ## A141336.P14087922277547121598

`∩[A003814(n+1), A296932(n+1)]`
-/

namespace A141336.P14087922277547121598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P14087922277547121598

/-! ## A141336.P6056154754114491698

`∩[A025284(n+1), A038897(n+1)]`
-/

namespace A141336.P6056154754114491698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P6056154754114491698

/-! ## A141336.P569739341455310630

`∩[A025284(n+1), A191021(n+1)]`
-/

namespace A141336.P569739341455310630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P569739341455310630

/-! ## A141336.P5916258639244271100

`∩[A025284(n+1), A296932(n+1)]`
-/

namespace A141336.P5916258639244271100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141336.P5916258639244271100

/-!
# A141337: Primes of the form -2*x^2+6*x*y+7*y^2 (as well as of the form 14*x^2+22*x*y+7*y^2).

The programs for A141337, there is no canonical definition to state claims against.
-/

/-! ## A141337.P14057856811431781890

`∩[A002145(n+1), A038897(n+1)]`
-/

namespace A141337.P14057856811431781890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P14057856811431781890

/-! ## A141337.P8822100214251094002

`∩[A038897(n+1), A085760(n+1)]`
-/

namespace A141337.P8822100214251094002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P8822100214251094002

/-! ## A141337.P14686347589969727497

`∩[A038897(n+1), A197504(n+1)]`
-/

namespace A141337.P14686347589969727497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P14686347589969727497

/-! ## A141337.P12556710835141891809

`∩[A002145(n+1), A040154(n+1)]`
-/

namespace A141337.P12556710835141891809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P12556710835141891809

/-! ## A141337.P9890248619734950830

`∩[A040154(n+1), A085760(n+1)]`
-/

namespace A141337.P9890248619734950830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P9890248619734950830

/-! ## A141337.P13812245588222829112

`∩[A040154(n+1), A197504(n+1)]`
-/

namespace A141337.P13812245588222829112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P13812245588222829112

/-! ## A141337.P6833958250635899661

`∩[A038897(n+1), A292762(n+1)]`
-/

namespace A141337.P6833958250635899661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P6833958250635899661

/-! ## A141337.P13983973358161899298

`∩[A038897(n+1), A066499(n+1)]`
-/

namespace A141337.P13983973358161899298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P13983973358161899298

/-! ## A141337.P10879661651755769496

`∩[A038897(n+1), A094179(n+1)]`
-/

namespace A141337.P10879661651755769496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P10879661651755769496

/-! ## A141337.P9308586157320117919

`∩[A040154(n+1), A292762(n+1)]`
-/

namespace A141337.P9308586157320117919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P9308586157320117919

/-! ## A141337.P14072165271801866869

`∩[A040154(n+1), A066499(n+1)]`
-/

namespace A141337.P14072165271801866869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P14072165271801866869

/-! ## A141337.P6988124950335425917

`∩[A040154(n+1), A094179(n+1)]`
-/

namespace A141337.P6988124950335425917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P6988124950335425917

/-! ## A141337.P798273777982179659

`filter[A038897(n+1), A359152(#)]`
-/

namespace A141337.P798273777982179659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A141337.P798273777982179659

/-! ## A141337.P2082760147742131724

`filter[A040154(n+1), A359152(#)]`
-/

namespace A141337.P2082760147742131724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A141337.P2082760147742131724

/-! ## A141337.P7223746220236796368

`∩[A038897(n+1), A167181(n+1)]`
-/

namespace A141337.P7223746220236796368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P7223746220236796368

/-! ## A141337.P5733094365488788504

`∩[A309388(n+1), A038897(n+1)]`
-/

namespace A141337.P5733094365488788504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P5733094365488788504

/-! ## A141337.P9410564906324506911

`∩[A040154(n+1), A167181(n+1)]`
-/

namespace A141337.P9410564906324506911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P9410564906324506911

/-! ## A141337.P10865561157735206831

`∩[A004614(n+1), A038897(n+1)]`
-/

namespace A141337.P10865561157735206831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141337.P10865561157735206831

/-! ## A141337.P396186393048043534

`filter[A038897(n+1), A354028(#)]`
-/

namespace A141337.P396186393048043534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A141337.P396186393048043534

/-! ## A141337.P16008582522999383197

`filter[A038897(n+1), A354029(#)]`
-/

namespace A141337.P16008582522999383197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A141337.P16008582522999383197

/-!
# A141338: Primes of the form x^2+9*x*y-3*y^2 (as well as of the form 7*x^2+11*x*y+y^2).

The programs for A141338, there is no canonical definition to state claims against.
-/

/-! ## A141338.P3445153173784638914

`∩[A002476(n+1), A267481(n+1)]`
-/

namespace A141338.P3445153173784638914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P3445153173784638914

/-! ## A141338.P17271309279485256163

`∩[A007645(n+1), A267481(n+1)]`
-/

namespace A141338.P17271309279485256163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P17271309279485256163

/-! ## A141338.P16311990351919231643

`∩[A002476(n+1), A038981(n+1)]`
-/

namespace A141338.P16311990351919231643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P16311990351919231643

/-! ## A141338.P3492949492224109354

`∩[A038981(n+1), A045375(n+1)]`
-/

namespace A141338.P3492949492224109354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P3492949492224109354

/-! ## A141338.P3276573664564078220

`∩[A038981(n+1), A123365(n+1)]`
-/

namespace A141338.P3276573664564078220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P3276573664564078220

/-! ## A141338.P10740132837109794539

`∩[A279815(n+1), A267481(n+1)]`
-/

namespace A141338.P10740132837109794539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P10740132837109794539

/-! ## A141338.P8021804789487264041

`∩[A055664(n+1), A267481(n+1)]`
-/

namespace A141338.P8021804789487264041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P8021804789487264041

/-! ## A141338.P3612511572552750940

`∩[A038981(n+1), A133290(n+1)]`
-/

namespace A141338.P3612511572552750940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P3612511572552750940

/-! ## A141338.P16474648844264901486

`∩[A133290(n+1), A267481(n+1)]`
-/

namespace A141338.P16474648844264901486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P16474648844264901486

/-! ## A141338.P7985964307710647778

`∩[A038981(n+1), A137827(n+1)]`
-/

namespace A141338.P7985964307710647778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P7985964307710647778

/-! ## A141338.P18120663641248679866

`∩[A137827(n+1), A267481(n+1)]`
-/

namespace A141338.P18120663641248679866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P18120663641248679866

/-! ## A141338.P6786797888146635705

`filter[A038981(n+1), A070563(#)]`
-/

namespace A141338.P6786797888146635705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A141338.P6786797888146635705

/-! ## A141338.P11421749697679020122

`filter[A267481(n+1), A070563(#)]`
-/

namespace A141338.P11421749697679020122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A141338.P11421749697679020122

/-! ## A141338.P16440892529223819992

`∩[A038981(n+1), A107925(n+1)]`
-/

namespace A141338.P16440892529223819992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P16440892529223819992

/-! ## A141338.P7903266361943396023

`∩[A038981(n+1), A129904(n+1)]`
-/

namespace A141338.P7903266361943396023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P7903266361943396023

/-! ## A141338.P9598692891656154754

`∩[A004611(n+1), A038981(n+1)]`
-/

namespace A141338.P9598692891656154754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P9598692891656154754

/-! ## A141338.P303458138108537749

`∩[A004611(n+1), A267481(n+1)]`
-/

namespace A141338.P303458138108537749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P303458138108537749

/-! ## A141338.P10243378335498858062

`∩[A038981(n+1), A260682(n+1)]`
-/

namespace A141338.P10243378335498858062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141338.P10243378335498858062

/-! ## A141338.P5705653299026717672

`filter[A038981(n+1), A354982(#)]`
-/

namespace A141338.P5705653299026717672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A141338.P5705653299026717672

/-!
# A141339: Primes of the form -x^2+9*x*y+3*y^2 (as well as of the form 11*x^2+15*x*y+3*y^2).

The programs for A141339, there is no canonical definition to state claims against.
-/

/-! ## A141339.P8307231632531115411

`∩[A038981(n+1), A045309(n+1)]`
-/

namespace A141339.P8307231632531115411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P8307231632531115411

/-! ## A141339.P15134473028600820416

`∩[A038981(n+1), A045410(n+1)]`
-/

namespace A141339.P15134473028600820416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P15134473028600820416

/-! ## A141339.P12166776824314672253

`∩[A038981(n+1), A191067(n+1)]`
-/

namespace A141339.P12166776824314672253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P12166776824314672253

/-! ## A141339.P15856291578422752129

`∩[A045309(n+1), A191067(n+1)]`
-/

namespace A141339.P15856291578422752129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P15856291578422752129

/-! ## A141339.P2168570275842711063

`∩[A045410(n+1), A191067(n+1)]`
-/

namespace A141339.P2168570275842711063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P2168570275842711063

/-! ## A141339.P17374767032403127237

`∩[A038981(n+1), A066501(n+1)]`
-/

namespace A141339.P17374767032403127237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P17374767032403127237

/-! ## A141339.P5813472859109087446

`∩[A066501(n+1), A191067(n+1)]`
-/

namespace A141339.P5813472859109087446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P5813472859109087446

/-! ## A141339.P12960797341660623225

`∩[A038981(n+1), A074243(n+1)]`
-/

namespace A141339.P12960797341660623225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P12960797341660623225

/-! ## A141339.P8187545410455674319

`∩[A074243(n+1), A191067(n+1)]`
-/

namespace A141339.P8187545410455674319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P8187545410455674319

/-! ## A141339.P12077442769858343943

`∩[A038981(n+1), A088232(n+1)]`
-/

namespace A141339.P12077442769858343943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P12077442769858343943

/-! ## A141339.P3416281782892080496

`∩[A088232(n+1), A191067(n+1)]`
-/

namespace A141339.P3416281782892080496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P3416281782892080496

/-! ## A141339.P12398360513623253475

`∩[A038981(n+1), A022433(n)]`
-/

namespace A141339.P12398360513623253475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P12398360513623253475

/-! ## A141339.P15532842821246910352

`∩[A191067(n+1), A022433(n)]`
-/

namespace A141339.P15532842821246910352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P15532842821246910352

/-! ## A141339.P13165907650835034397

`∩[A038981(n+1), A047270(n+1)]`
-/

namespace A141339.P13165907650835034397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P13165907650835034397

/-! ## A141339.P5103265395709953516

`∩[A047270(n+1), A191067(n+1)]`
-/

namespace A141339.P5103265395709953516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P5103265395709953516

/-! ## A141339.P14275907244520236960

`∩[A038981(n+1), A230780(n+1)]`
-/

namespace A141339.P14275907244520236960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P14275907244520236960

/-! ## A141339.P14522070182694149173

`∩[A191067(n+1), A230780(n+1)]`
-/

namespace A141339.P14522070182694149173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P14522070182694149173

/-! ## A141339.P13321074285010032234

`∩[A026223(n+1), A038981(n+1)]`
-/

namespace A141339.P13321074285010032234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P13321074285010032234

/-! ## A141339.P13618980453171905191

`∩[A038981(n+1), A047249(n+1)]`
-/

namespace A141339.P13618980453171905191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P13618980453171905191

/-! ## A141339.P5142548567951035908

`∩[A038981(n+1), A047254(n+1)]`
-/

namespace A141339.P5142548567951035908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141339.P5142548567951035908

/-!
# A141340: Positive integers n such that A061358(n) = #{primes p | n/2 <= p < n-1}.

The programs for A141340, there is no canonical definition to state claims against.
-/

/-! ## A141340.P11935224249284335098

`∪[A141109(n+1), A141769(n+1)]`
-/

namespace A141340.P11935224249284335098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141340.P11935224249284335098

/-! ## A141340.P1555005815202444740

`lt[A032574(n+1), A048340(A163894(n))]`
-/

namespace A141340.P1555005815202444740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (A163894 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141340.P1555005815202444740

/-! ## A141340.P14945805672692712295

`∑[A004216(A112835(n))!]`
-/

namespace A141340.P14945805672692712295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004216 (A112835 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141340.P14945805672692712295

/-! ## A141340.P11644834656640451225

`∑[A168353(A072493(n+2))]`
-/

namespace A141340.P11644834656640451225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168353 (A072493 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141340.P11644834656640451225

/-! ## A141340.P4092298411416148697

`lt[n, A114386(A075019(n+1))]`
-/

namespace A141340.P4092298411416148697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114386 (A075019 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141340.P4092298411416148697

/-!
# A141343: Riordan array (1,x/sqrt(2-sqrt(1+4x))).

The programs for A141343, there is no canonical definition to state claims against.
-/

/-! ## A141343.P10146848750198182513

`A320019(n)+A249856(A257565(n))`
-/

namespace A141343.P10146848750198182513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 n + A249856 (A257565 n).toNat

end

end A141343.P10146848750198182513

/-! ## A141343.P2846550173534535025

`A122542(n)+2*A249856(A257565(n))`
-/

namespace A141343.P2846550173534535025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + 2 * A249856 (A257565 n).toNat

end

end A141343.P2846550173534535025

/-! ## A141343.P2166218442352970529

`A324105(2^A128908(n))`
-/

namespace A141343.P2166218442352970529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A128908 n : ℤ))).toNat

end

end A141343.P2166218442352970529

/-! ## A141343.P5380164091498390976

`∏{e}[A036881(n+3), #]*A122542(n)`
-/

namespace A141343.P5380164091498390976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036881 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A122542 n

end

end A141343.P5380164091498390976

/-!
# A141344: Expansion of (2-sqrt(1+4x))/(2-x-sqrt(1+4x)).

The programs for A141344, there is no canonical definition to state claims against.
-/

/-! ## A141344.P13353252548148935426

`or(A025436(A129324(n)), A185696(n))`
-/

namespace A141344.P13353252548148935426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A129324 n).toNat) (A185696 n)

end

end A141344.P13353252548148935426

/-! ## A141344.P11387484963878515126

`or(A185696(n), A185700(A011782(n)))`
-/

namespace A141344.P11387484963878515126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185696 n) (A185700 (A011782 n).toNat)

end

end A141344.P11387484963878515126

/-! ## A141344.P18054318763588289417

`or(A185696(n), A331984(A005581(n)))`
-/

namespace A141344.P18054318763588289417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185696 n) (A331984 (A005581 n).toNat)

end

end A141344.P18054318763588289417

/-! ## A141344.P10333405116913272491

`or(A185696(n), A318315(A032054(n)))`
-/

namespace A141344.P10333405116913272491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185696 n) (A318315 (A032054 n).toNat)

end

end A141344.P10333405116913272491

/-!
# A141345: Distance from the n-th highly composite number, A002182(n), to the next prime.

The programs for A141345, there is no canonical definition to state claims against.
-/

/-! ## A141345.P11648084930797533090

`A151800(A002182(n+1))-A002182(n+1)`
-/

namespace A141345.P11648084930797533090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002182 (n + 1)).toNat - A002182 (n + 1)

end

end A141345.P11648084930797533090

/-! ## A141345.P11707301223655498729

`A151800(sqrt(A046952(n+1)))-(A135372(n+1)-1)`
-/

namespace A141345.P11707301223655498729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat - (A135372 (n + 1) - 1)

end

end A141345.P11707301223655498729

/-! ## A141345.P15144183815020720738

`A151800(A135372(n+1)-1)-(A135372(n+1)-1)`
-/

namespace A141345.P15144183815020720738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A135372 (n + 1) - 1).toNat - (A135372 (n + 1) - 1)

end

end A141345.P15144183815020720738

/-! ## A141345.P2608747879690043583

`A028310(A151800(A002182(n+1))%A002182(n+1))`
-/

namespace A141345.P2608747879690043583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A151800 (A002182 (n + 1)).toNat) (A002182 (n + 1))).toNat

end

end A141345.P2608747879690043583

/-!
# A141346: Sum of the distinct digits of the prime factors of n.

The programs for A141346, there is no canonical definition to state claims against.
-/

/-! ## A141346.P16015097593973155703

`A217928(A084317(n+1))`
-/

namespace A141346.P16015097593973155703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (A084317 (n + 1)).toNat

end

end A141346.P16015097593973155703

/-! ## A141346.P18103008495219763237

`∑{p}[A007955(n+1), A217928(#)]`
-/

namespace A141346.P18103008495219763237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A217928 p

end

end A141346.P18103008495219763237

/-! ## A141346.P6810682844059691174

`∑{p}[A193679(n+1), A217928(#)]`
-/

namespace A141346.P6810682844059691174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A217928 p

end

end A141346.P6810682844059691174

/-! ## A141346.P5386289922957656526

`A217928(A037276(n+1))%(3^n)`
-/

namespace A141346.P5386289922957656526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217928 (A037276 (n + 1)).toNat) (3 ^ n : ℤ)

end

end A141346.P5386289922957656526

/-! ## A141346.P8899330943296766277

`A217928(char[A007318(n)]*A037276(n+1))`
-/

namespace A141346.P8899330943296766277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A037276 (n + 1)).toNat

end

end A141346.P8899330943296766277

/-!
# A141347: Size of the Hilbert basis of the cone { x in Z+^n : (a,x)=0 } where a=(-1,1,2,...,n-2,-(n-1)).

The programs for A141347, there is no canonical definition to state claims against.
-/

/-! ## A141347.P5036437918776623655

`A140226(n)+A140193(A000792(3*n+4))`
-/

namespace A141347.P5036437918776623655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n + A140193 (A000792 (3 * n + 4)).toNat

end

end A141347.P5036437918776623655

/-! ## A141347.P4572503091725163826

`A163109(A000079(n)²)+A131771(2*n+1)`
-/

namespace A141347.P4572503091725163826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A000079 n ^ 2).toNat + A131771 (2 * n + 1)

end

end A141347.P4572503091725163826

/-! ## A141347.P18315950074669928791

`A163109(A000079(2*n))+A131771(2*n+1)`
-/

namespace A141347.P18315950074669928791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A000079 (2 * n)).toNat + A131771 (2 * n + 1)

end

end A141347.P18315950074669928791

/-!
# A141348: Number of extreme n-breakable vectors.

The programs for A141348, there is no canonical definition to state claims against.
-/

/-! ## A141348.P9228386244032088133

`A322847(A209405(n))`
-/

namespace A141348.P9228386244032088133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A209405 n).toNat

end

end A141348.P9228386244032088133

/-! ## A141348.P11068386279722429275

`A088481(A319758(n+1))`
-/

namespace A141348.P11068386279722429275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088481 (A319758 (n + 1)).toNat

end

end A141348.P11068386279722429275

/-! ## A141348.P17651041150327883627

`A340851(A340690(n+1))+A319913(n+1)`
-/

namespace A141348.P17651041150327883627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (A340690 (n + 1)).toNat + A319913 (n + 1)

end

end A141348.P17651041150327883627

/-! ## A141348.P10708964212896250514

`A360247(A121041(n+1)*A138137(n+1))`
-/

namespace A141348.P10708964212896250514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A121041 (n + 1) * A138137 (n + 1)).toNat

end

end A141348.P10708964212896250514

/-!
# A141349: Size of the reduced Groebner basis of the ideal < x*y(1)^vj(1)*...*y(n-2)^vj(n-2) - z(j) : j=1,2,...,m >, where vj is the j-th extreme n-breakable vector, m=A141348(n), w.r.t. the degree of x and graded reverse lexicographic ordering of the variables y(1), ..., y(n-2), z(1), ..., z(m).

The programs for A141349, there is no canonical definition to state claims against.
-/

/-! ## A141349.P7072525056745486041

`A087061(n*7^n+2)`
-/

namespace A141349.P7072525056745486041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (n * 7 ^ n + 2)

end

end A141349.P7072525056745486041

/-!
# A141350: Overpseudoprimes to base 3.

The programs for A141350, there is no canonical definition to state claims against.
-/

/-! ## A141350.P3410680363656476284

`A020229(lt[A206650(n+2), A000040(n+1)])`
-/

namespace A141350.P3410680363656476284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141350.P3410680363656476284

/-! ## A141350.P11400727439219304581

`A020229(lt[A206650(n+2), A028260(n+1)])`
-/

namespace A141350.P11400727439219304581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141350.P11400727439219304581

/-!
# A141351: a(n) = C(n) + 1 - 0^n where C(n) = A000108(n).

The programs for A141351, the canonical program `A141351.P15521239837132020654` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141351 has offset 0).

The definition of A141351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141351.P15521239837132020654

`A000108(n)+A057427(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141351

/-- `A000108(n)+A057427(n)` -/
def P15521239837132020654.Spec : Prop :=
  ∀ n, P15521239837132020654.a n = A141351 n

theorem P15521239837132020654.correct : P15521239837132020654.Spec := by
  intro n
  simp only [A141351]

end A141351

/-! ## A141351.P5618297746697737487

`record[(4-6/n)*a(n-1)]+1` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A141351.P5618297746697737487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, -1, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A141351.P5618297746697737487

namespace A141351

/-- `record[(4-6/n)*a(n-1)]+1` -/
def P5618297746697737487.Spec : Prop :=
  ∀ n, P5618297746697737487.a n = (A141351 n : ℚ)

end A141351

/-! ## A141351.P5092516151210691606

`record[A329696(n)]`
-/

namespace A141351.P5092516151210691606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141351.P5092516151210691606

namespace A141351

/-- `record[A329696(n)]` -/
def P5092516151210691606.Spec : Prop :=
  ∀ n, P5092516151210691606.a n = A141351 n

end A141351

/-! ## A141351.P8404984947049773364

`A329696(2*n)`
-/

namespace A141351.P8404984947049773364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 (2 * n)

end

end A141351.P8404984947049773364

namespace A141351

/-- `A329696(2*n)` -/
def P8404984947049773364.Spec : Prop :=
  ∀ n, P8404984947049773364.a n = A141351 n

end A141351

/-! ## A141351.P18431408285238435517

`A192480(n+1)-n`
-/

namespace A141351.P18431408285238435517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192480 (n + 1) - (n : ℤ)

end

end A141351.P18431408285238435517

namespace A141351

/-- `A192480(n+1)-n` -/
def P18431408285238435517.Spec : Prop :=
  ∀ n, P18431408285238435517.a n = A141351 n

end A141351

/-! ## A141351.P18214414046417235927

`∑[A071724(abs(1-n))]`
-/

namespace A141351.P18214414046417235927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141351.P18214414046417235927

namespace A141351

/-- `∑[A071724(abs(1-n))]` -/
def P18214414046417235927.Spec : Prop :=
  ∀ n, P18214414046417235927.a n = A141351 n

end A141351

/-! ## A141351.P5937053751080311915

`record[Δ[A090192(n)]+1]`
-/

namespace A141351.P5937053751080311915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141351.P5937053751080311915

namespace A141351

/-- `record[Δ[A090192(n)]+1]` -/
def P5937053751080311915.Spec : Prop :=
  ∀ n, P5937053751080311915.a n = A141351 n

end A141351

/-! ## A141351.P5643565214048816786

`record[Δ[A097331(n)]+1]`
-/

namespace A141351.P5643565214048816786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141351.P5643565214048816786

namespace A141351

/-- `record[Δ[A097331(n)]+1]` -/
def P5643565214048816786.Spec : Prop :=
  ∀ n, P5643565214048816786.a n = A141351 n

end A141351

/-! ## A141351.P17240411133527539024

`record[Δ[A329687(n)]+1]`
-/

namespace A141351.P17240411133527539024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141351.P17240411133527539024

namespace A141351

/-- `record[Δ[A329687(n)]+1]` -/
def P17240411133527539024.Spec : Prop :=
  ∀ n, P17240411133527539024.a n = A141351 n

end A141351

/-! ## A141351.P7168019285165967135

`record[A126120(n+1)+1]`
-/

namespace A141351.P7168019285165967135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141351.P7168019285165967135

namespace A141351

/-- `record[A126120(n+1)+1]` -/
def P7168019285165967135.Spec : Prop :=
  ∀ n, P7168019285165967135.a n = A141351 n

end A141351

/-! ## A141351.P8865096605813221222

`a(n-1)-A115142(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A141351.P8865096605813221222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A115142 (n + 1)

end

end A141351.P8865096605813221222

namespace A141351

/-- `a(n-1)-A115142(n+1)` -/
def P8865096605813221222.Spec : Prop :=
  ∀ n, P8865096605813221222.a n = A141351 n

end A141351

/-! ## A141351.P13697254037105144910

`A028303(A004277(n))+1`
-/

namespace A141351.P13697254037105144910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A004277 n).toNat + 1

end

end A141351.P13697254037105144910

namespace A141351

/-- `A028303(A004277(n))+1` -/
def P13697254037105144910.Spec : Prop :=
  ∀ n, P13697254037105144910.a n = A141351 n

end A141351

/-! ## A141351.P17965894937622929008

`A125107(n)+A094373(n)`
-/

namespace A141351.P17965894937622929008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n + A094373 n

end

end A141351.P17965894937622929008

namespace A141351

/-- `A125107(n)+A094373(n)` -/
def P17965894937622929008.Spec : Prop :=
  ∀ n, P17965894937622929008.a n = A141351 n

end A141351

/-! ## A141351.P1859760395278322231

`A000108(n)-A057428(n)`
-/

namespace A141351.P1859760395278322231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A057428 n

end

end A141351.P1859760395278322231

namespace A141351

/-- `A000108(n)-A057428(n)` -/
def P1859760395278322231.Spec : Prop :=
  ∀ n, P1859760395278322231.a n = A141351 n

end A141351

/-! ## A141351.P16710621811386539053

`A141353(n)-A000225(n)`
-/

namespace A141351.P16710621811386539053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - A000225 n

end

end A141351.P16710621811386539053

namespace A141351

/-- `A141353(n)-A000225(n)` -/
def P16710621811386539053.Spec : Prop :=
  ∀ n, P16710621811386539053.a n = A141351 n

end A141351

/-! ## A141351.P320499998769932397

`∑[A000245(A289207(n)+1)]`
-/

namespace A141351.P320499998769932397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A289207 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141351.P320499998769932397

namespace A141351

/-- `∑[A000245(A289207(n)+1)]` -/
def P320499998769932397.Spec : Prop :=
  ∀ n, P320499998769932397.a n = A141351 n

end A141351

/-! ## A141351.P3426108139667328162

`A126120(A004275(n+1))+1`
-/

namespace A141351.P3426108139667328162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004275 (n + 1)).toNat + 1

end

end A141351.P3426108139667328162

namespace A141351

/-- `A126120(A004275(n+1))+1` -/
def P3426108139667328162.Spec : Prop :=
  ∀ n, P3426108139667328162.a n = A141351 n

end A141351

/-! ## A141351.P2451019907319163980

`A157532(n+1)+A120304(n)`
-/

namespace A141351.P2451019907319163980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + A120304 n

end

end A141351.P2451019907319163980

namespace A141351

/-- `A157532(n+1)+A120304(n)` -/
def P2451019907319163980.Spec : Prop :=
  ∀ n, P2451019907319163980.a n = A141351 n

end A141351

/-! ## A141351.P14613878767743643579

`A246604(n)+A087156(n+1)`
-/

namespace A141351.P14613878767743643579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + A087156 (n + 1)

end

end A141351.P14613878767743643579

namespace A141351

/-- `A246604(n)+A087156(n+1)` -/
def P14613878767743643579.Spec : Prop :=
  ∀ n, P14613878767743643579.a n = A141351 n

end A141351

/-!
# A141352: Expansion of (1-2x-5x^2-7x^3+x^6)/((1-x)(1-x^3)^2).

The programs for A141352, the canonical program `A141352.P8696672908802726674` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141352 has offset 0).

The definition of A141352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141352.P8696672908802726674

`A141365(n)-A302402(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141352

/-- `A141365(n)-A302402(n)` -/
def P8696672908802726674.Spec : Prop :=
  ∀ n, P8696672908802726674.a n = A141352 n

theorem P8696672908802726674.correct : P8696672908802726674.Spec := by
  intro n
  simp only [A141352]

end A141352

/-! ## A141352.P12706496384915327928

`A010892(n)²-(n+2)*A004523(n)-A302402(n)`
-/

namespace A141352.P12706496384915327928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2 - (n + 2 : ℤ) * A004523 n - A302402 n

end

end A141352.P12706496384915327928

namespace A141352

/-- `A010892(n)²-(n+2)*A004523(n)-A302402(n)` -/
def P12706496384915327928.Spec : Prop :=
  ∀ n, P12706496384915327928.a n = A141352 n

end A141352

/-! ## A141352.P8092860355606318297

`A011655(n+1)-(n+2)*A004523(n)-A302402(n)`
-/

namespace A141352.P8092860355606318297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - (n + 2 : ℤ) * A004523 n - A302402 n

end

end A141352.P8092860355606318297

namespace A141352

/-- `A011655(n+1)-(n+2)*A004523(n)-A302402(n)` -/
def P8092860355606318297.Spec : Prop :=
  ∀ n, P8092860355606318297.a n = A141352 n

end A141352

/-! ## A141352.P7843842071262826944

`A163810(n+1)²-(n+2)*A004523(n)-A302402(n)`
-/

namespace A141352.P7843842071262826944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 1) ^ 2 - (n + 2 : ℤ) * A004523 n - A302402 n

end

end A141352.P7843842071262826944

namespace A141352

/-- `A163810(n+1)²-(n+2)*A004523(n)-A302402(n)` -/
def P7843842071262826944.Spec : Prop :=
  ∀ n, P7843842071262826944.a n = A141352 n

end A141352

/-! ## A141352.P10426141455911802881

`A141365(n)-A008611(2*n+1)`
-/

namespace A141352.P10426141455911802881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141365 n - A008611 (2 * n + 1)

end

end A141352.P10426141455911802881

namespace A141352

/-- `A141365(n)-A008611(2*n+1)` -/
def P10426141455911802881.Spec : Prop :=
  ∀ n, P10426141455911802881.a n = A141352 n

end A141352

/-!
# A141353: a(n) = Catalan(n) + 2^n - 0^n.

The programs for A141353, the canonical program `A141353.P17856277860238671307` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141353 has offset 0).

The definition of A141353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141353.P5640567716967550155

`ceil(A132807(n)+abs(sin(n)))`
-/

namespace A141353.P5640567716967550155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132807 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A141353.P5640567716967550155

namespace A141353

/-- `ceil(A132807(n)+abs(sin(n)))` -/
def P5640567716967550155.Spec : Prop :=
  ∀ n, P5640567716967550155.a n = A141353 n

end A141353

/-! ## A141353.P17856277860238671307

`and(-2, 2^n)+A000108(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141353

/-- `and(-2, 2^n)+A000108(n)` -/
def P17856277860238671307.Spec : Prop :=
  ∀ n, P17856277860238671307.a n = A141353 n

theorem P17856277860238671307.correct : P17856277860238671307.Spec := by
  intro n
  simp only [A141353]

end A141353

/-! ## A141353.P2206623792100799224

`A125107(n)+A003945(n)`
-/

namespace A141353.P2206623792100799224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n + A003945 n

end

end A141353.P2206623792100799224

namespace A141353

/-- `A125107(n)+A003945(n)` -/
def P2206623792100799224.Spec : Prop :=
  ∀ n, P2206623792100799224.a n = A141353 n

end A141353

/-! ## A141353.P4079822283647213583

`A141351(n)+A000225(n)`
-/

namespace A141353.P4079822283647213583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n + A000225 n

end

end A141353.P4079822283647213583

namespace A141353

/-- `A141351(n)+A000225(n)` -/
def P4079822283647213583.Spec : Prop :=
  ∀ n, P4079822283647213583.a n = A141353 n

end A141353

/-! ## A141353.P11110501395590494227

`A155559(n)+A000108(n)`
-/

namespace A141353.P11110501395590494227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A000108 n

end

end A141353.P11110501395590494227

namespace A141353

/-- `A155559(n)+A000108(n)` -/
def P11110501395590494227.Spec : Prop :=
  ∀ n, P11110501395590494227.a n = A141353 n

end A141353

/-! ## A141353.P6484161756813551563

`A132807(n)+A057427(n)`
-/

namespace A141353.P6484161756813551563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n + A057427 n

end

end A141353.P6484161756813551563

namespace A141353

/-- `A132807(n)+A057427(n)` -/
def P6484161756813551563.Spec : Prop :=
  ∀ n, P6484161756813551563.a n = A141353 n

end A141353

/-! ## A141353.P9406931598768684002

`A133140(n)+A120304(n)`
-/

namespace A141353.P9406931598768684002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n + A120304 n

end

end A141353.P9406931598768684002

namespace A141353

/-- `A133140(n)+A120304(n)` -/
def P9406931598768684002.Spec : Prop :=
  ∀ n, P9406931598768684002.a n = A141353 n

end A141353

/-! ## A141353.P1194225014426966821

`A000108(n)+2*A131577(n)`
-/

namespace A141353.P1194225014426966821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + 2 * A131577 n

end

end A141353.P1194225014426966821

namespace A141353

/-- `A000108(n)+2*A131577(n)` -/
def P1194225014426966821.Spec : Prop :=
  ∀ n, P1194225014426966821.a n = A141353 n

end A141353

/-! ## A141353.P17349838635460375888

`A132807(n)+A000040(n+1)%2`
-/

namespace A141353.P17349838635460375888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n + Int.tmod (A000040 (n + 1)) 2

end

end A141353.P17349838635460375888

namespace A141353

/-- `A132807(n)+A000040(n+1)%2` -/
def P17349838635460375888.Spec : Prop :=
  ∀ n, P17349838635460375888.a n = A141353 n

end A141353

/-! ## A141353.P8930793415618692137

`A131577(n+1)+record[A126120(n+1)]`
-/

namespace A141353.P8930793415618692137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141353.P8930793415618692137

namespace A141353

/-- `A131577(n+1)+record[A126120(n+1)]` -/
def P8930793415618692137.Spec : Prop :=
  ∀ n, P8930793415618692137.a n = A141353 n

end A141353

/-! ## A141353.P12827196465340530373

`A131572(2*n)+A097331(2*n+1)`
-/

namespace A141353.P12827196465340530373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n) + A097331 (2 * n + 1)

end

end A141353.P12827196465340530373

namespace A141353

/-- `A131572(2*n)+A097331(2*n+1)` -/
def P12827196465340530373.Spec : Prop :=
  ∀ n, P12827196465340530373.a n = A141353 n

end A141353

/-! ## A141353.P12260965280594834576

`A097331(2*n+1)+record[A077957(n+1)]`
-/

namespace A141353.P12260965280594834576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141353.P12260965280594834576

namespace A141353

/-- `A097331(2*n+1)+record[A077957(n+1)]` -/
def P12260965280594834576.Spec : Prop :=
  ∀ n, P12260965280594834576.a n = A141353 n

end A141353

/-! ## A141353.P8015836722474200135

`A132807(n)+A141351(n)-A000108(n)`
-/

namespace A141353.P8015836722474200135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n + (A141351 n - A000108 n)

end

end A141353.P8015836722474200135

namespace A141353

/-- `A132807(n)+A141351(n)-A000108(n)` -/
def P8015836722474200135.Spec : Prop :=
  ∀ n, P8015836722474200135.a n = A141353 n

end A141353

/-! ## A141353.P8329000744758659525

`A000108(n)+A158499(n)-A158495(n)`
-/

namespace A141353.P8329000744758659525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A158499 n - A158495 n)

end

end A141353.P8329000744758659525

namespace A141353

/-- `A000108(n)+A158499(n)-A158495(n)` -/
def P8329000744758659525.Spec : Prop :=
  ∀ n, P8329000744758659525.a n = A141353 n

end A141353

/-! ## A141353.P14190240890019761583

`A000079(n)+A068875(n)-A000108(n)`
-/

namespace A141353.P14190240890019761583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A068875 n - A000108 n)

end

end A141353.P14190240890019761583

namespace A141353

/-- `A000079(n)+A068875(n)-A000108(n)` -/
def P14190240890019761583.Spec : Prop :=
  ∀ n, P14190240890019761583.a n = A141353 n

end A141353

/-! ## A141353.P4061146595017196423

`A100320(n)-A108958(n+1)`
-/

namespace A141353.P4061146595017196423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n - A108958 (n + 1)

end

end A141353.P4061146595017196423

namespace A141353

/-- `A100320(n)-A108958(n+1)` -/
def P4061146595017196423.Spec : Prop :=
  ∀ n, P4061146595017196423.a n = A141353 n

end A141353

/-! ## A141353.P14178574235879505388

`A050145(∑[n])+2^n`
-/

namespace A141353.P14178574235879505388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050145 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 ^ n : ℤ)

end

end A141353.P14178574235879505388

namespace A141353

/-- `A050145(∑[n])+2^n` -/
def P14178574235879505388.Spec : Prop :=
  ∀ n, P14178574235879505388.a n = A141353 n

end A141353

/-! ## A141353.P5689404881353456089

`A050160(∑[n])+2^n`
-/

namespace A141353.P5689404881353456089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 ^ n : ℤ)

end

end A141353.P5689404881353456089

namespace A141353

/-- `A050160(∑[n])+2^n` -/
def P5689404881353456089.Spec : Prop :=
  ∀ n, P5689404881353456089.a n = A141353 n

end A141353

/-!
# A141354: Expansion of (1-5*x-x^2+x^3)/((1+x)*(1-x)^3).

The programs for A141354, the canonical program `A141354.P988664983170183812` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141354 has offset 0).

The definition of A141354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141354.P8444404301192219871

`((-1)^n-2*n²-4*n+1)/2`
-/

namespace A141354.P8444404301192219871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n - (2 * n ^ 2 : ℤ) - (4 * n : ℤ) + 1 : ℚ) / 2

end

end A141354.P8444404301192219871

namespace A141354

/-- `((-1)^n-2*n²-4*n+1)/2` -/
def P8444404301192219871.Spec : Prop :=
  ∀ n, P8444404301192219871.a n = (A141354 n : ℚ)

theorem P8444404301192219871.correct : P8444404301192219871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A141354, Nat.add_sub_cancel, A141354.P8444404301192219871.a, A141354.P988664983170183812.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A141354, Nat.add_sub_cancel, A141354.P8444404301192219871.a, A141354.P988664983170183812.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A141354

/-! ## A141354.P988664983170183812

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=-3, a(2)=-7, a(3)=-15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141354

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P988664983170183812.Spec : Prop :=
  ∀ n, P988664983170183812.a n = A141354 n

theorem P988664983170183812.correct : P988664983170183812.Spec := by
  intro n
  simp only [A141354]

end A141354

/-! ## A141354.P7791627496983366787

`-A181106(n+1)`
-/

namespace A141354.P7791627496983366787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A181106 (n + 1)

end

end A141354.P7791627496983366787

namespace A141354

/-- `-A181106(n+1)` -/
def P7791627496983366787.Spec : Prop :=
  ∀ n, P7791627496983366787.a n = A141354 n

end A141354

/-! ## A141354.P11851383838970773097

`or(1, 1-(n+1)²)`
-/

namespace A141354.P11851383838970773097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - ((n + 1) ^ 2 : ℤ))

end

end A141354.P11851383838970773097

namespace A141354

/-- `or(1, 1-(n+1)²)` -/
def P11851383838970773097.Spec : Prop :=
  ∀ n, P11851383838970773097.a n = A141354 n

end A141354

/-! ## A141354.P5135073805231864540

`gcd(2, n)-(n+1)²`
-/

namespace A141354.P5135073805231864540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A141354.P5135073805231864540

namespace A141354

/-- `gcd(2, n)-(n+1)²` -/
def P5135073805231864540.Spec : Prop :=
  ∀ n, P5135073805231864540.a n = A141354 n

end A141354

/-! ## A141354.P2939025433657147457

`2-or(1, (n+1)^2)`
-/

namespace A141354.P2939025433657147457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lor 1 ((n + 1) ^ 2) : ℤ)

end

end A141354.P2939025433657147457

namespace A141354

/-- `2-or(1, (n+1)^2)` -/
def P2939025433657147457.Spec : Prop :=
  ∀ n, P2939025433657147457.a n = A141354 n

end A141354

/-! ## A141354.P5996351816977231159

`1-and(-2, (n+1)²)`
-/

namespace A141354.P5996351816977231159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (-2) ((n + 1) ^ 2 : ℤ)

end

end A141354.P5996351816977231159

namespace A141354

/-- `1-and(-2, (n+1)²)` -/
def P5996351816977231159.Spec : Prop :=
  ∀ n, P5996351816977231159.a n = A141354 n

end A141354

/-! ## A141354.P13682745239173620273

`or(1, n)-n*(n+3)`
-/

namespace A141354.P13682745239173620273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (n * (n + 3) : ℤ)

end

end A141354.P13682745239173620273

namespace A141354

/-- `or(1, n)-n*(n+3)` -/
def P13682745239173620273.Spec : Prop :=
  ∀ n, P13682745239173620273.a n = A141354 n

end A141354

/-! ## A141354.P14303820936332275358

`2-(n%2+(n+1)²)`
-/

namespace A141354.P14303820936332275358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 + (n + 1) ^ 2 : ℕ) : ℤ)

end

end A141354.P14303820936332275358

namespace A141354

/-- `2-(n%2+(n+1)²)` -/
def P14303820936332275358.Spec : Prop :=
  ∀ n, P14303820936332275358.a n = A141354 n

end A141354

/-! ## A141354.P10372975215717960394

`2-(and(1, n)+(n+1)²)`
-/

namespace A141354.P10372975215717960394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n + (n + 1) ^ 2 : ℤ)

end

end A141354.P10372975215717960394

namespace A141354

/-- `2-(and(1, n)+(n+1)²)` -/
def P10372975215717960394.Spec : Prop :=
  ∀ n, P10372975215717960394.a n = A141354 n

end A141354

/-! ## A141354.P17244716025158320486

`xor(2, or(3, -n*(n+2)))`
-/

namespace A141354.P17244716025158320486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.lor 3 (-(n * (n + 2) : ℤ)))

end

end A141354.P17244716025158320486

namespace A141354

/-- `xor(2, or(3, -n*(n+2)))` -/
def P17244716025158320486.Spec : Prop :=
  ∀ n, P17244716025158320486.a n = A141354 n

end A141354

/-! ## A141354.P4047158923462393640

`1-∑[xor(1, n+1)+n]`
-/

namespace A141354.P4047158923462393640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A141354.P4047158923462393640

namespace A141354

/-- `1-∑[xor(1, n+1)+n]` -/
def P4047158923462393640.Spec : Prop :=
  ∀ n, P4047158923462393640.a n = A141354 n

end A141354

/-! ## A141354.P17990736559062342509

`xor(1, -and(-2, (n+1)²))`
-/

namespace A141354.P17990736559062342509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-Int.land (-2) ((n + 1) ^ 2 : ℤ))

end

end A141354.P17990736559062342509

namespace A141354

/-- `xor(1, -and(-2, (n+1)²))` -/
def P17990736559062342509.Spec : Prop :=
  ∀ n, P17990736559062342509.a n = A141354 n

end A141354

/-! ## A141354.P8962024600024071740

`1-∑[∑[(2*and(1, n))²]]`
-/

namespace A141354.P8962024600024071740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A141354.P8962024600024071740

namespace A141354

/-- `1-∑[∑[(2*and(1, n))²]]` -/
def P8962024600024071740.Spec : Prop :=
  ∀ n, P8962024600024071740.a n = A141354 n

end A141354

/-! ## A141354.P13971930562254591762

`-((n+1)²+or(n, -2))`
-/

namespace A141354.P13971930562254591762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1) ^ 2 : ℤ) + Int.lor (n : ℤ) (-2))

end

end A141354.P13971930562254591762

namespace A141354

/-- `-((n+1)²+or(n, -2))` -/
def P13971930562254591762.Spec : Prop :=
  ∀ n, P13971930562254591762.a n = A141354 n

end A141354

/-! ## A141354.P8475120615206500571

`-(record[xor(2, n-3)]+n²)`
-/

namespace A141354.P8475120615206500571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ))

end

end A141354.P8475120615206500571

namespace A141354

/-- `-(record[xor(2, n-3)]+n²)` -/
def P8475120615206500571.Spec : Prop :=
  ∀ n, P8475120615206500571.a n = A141354 n

end A141354

/-! ## A141354.P2289640492767413409

`a(n-2)-4*n` with `a(0)=1, a(1)=-3`
-/

namespace A141354.P2289640492767413409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  a (n - 2) - (4 * n : ℤ)

end

end A141354.P2289640492767413409

namespace A141354

/-- `a(n-2)-4*n` -/
def P2289640492767413409.Spec : Prop :=
  ∀ n, P2289640492767413409.a n = A141354 n

end A141354

/-! ## A141354.P2843873753496213411

`∑[a(n-2)-4]` with `a(0)=1, a(1)=-4, a(2)=-4`
-/

namespace A141354.P2843873753496213411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, -4] fun n f1 =>
  f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141354.P2843873753496213411

namespace A141354

/-- `∑[a(n-2)-4]` -/
def P2843873753496213411.Spec : Prop :=
  ∀ n, P2843873753496213411.a n = A141354 n

end A141354

/-! ## A141354.P7820768946137342702

`xor(-n*(n+2), and(1, n+1))`
-/

namespace A141354.P7820768946137342702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n * (n + 2) : ℤ)) (Nat.land 1 (n + 1) : ℤ)

end

end A141354.P7820768946137342702

namespace A141354

/-- `xor(-n*(n+2), and(1, n+1))` -/
def P7820768946137342702.Spec : Prop :=
  ∀ n, P7820768946137342702.a n = A141354 n

end A141354

/-!
# A141355: The Jacobsthal sequence, dropping each third term.

The programs for A141355, the canonical program `A141355.P6880466689288274485` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141355 has offset 0).

The definition of A141355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141355.P6880466689288274485

`7*a(n-2)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141355

/-- `7*a(n-2)+8*a(n-4)` -/
def P6880466689288274485.Spec : Prop :=
  ∀ n, (P6880466689288274485.a n : ℤ) = A141355 n

theorem P6880466689288274485.correct : P6880466689288274485.Spec := by
  intro n
  simp only [A141355]

end A141355

/-! ## A141355.P4323493009780501840

`round(2^(∑[gcd(2, n)]-1)/3)`
-/

namespace A141355.P4323493009780501840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ) / 3)

end

end A141355.P4323493009780501840

namespace A141355

/-- `round(2^(∑[gcd(2, n)]-1)/3)` -/
def P4323493009780501840.Spec : Prop :=
  ∀ n, P4323493009780501840.a n = A141355 n

end A141355

/-! ## A141355.P144725381283406095

`round(2^floor(n/2+n+1)/3)`
-/

namespace A141355.P144725381283406095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2 + (n + 1 : ℚ)⌋ : ℤ) / 3)

end

end A141355.P144725381283406095

namespace A141355

/-- `round(2^floor(n/2+n+1)/3)` -/
def P144725381283406095.Spec : Prop :=
  ∀ n, P144725381283406095.a n = A141355 n

end A141355

/-! ## A141355.P5538078091482902450

`A001045(comp[3*n])`
-/

namespace A141355.P5538078091482902450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A141355.P5538078091482902450

namespace A141355

/-- `A001045(comp[3*n])` -/
def P5538078091482902450.Spec : Prop :=
  ∀ n, P5538078091482902450.a n = A141355 n

end A141355

/-! ## A141355.P13694085285504043004

`A024493(comp[3*n])`
-/

namespace A141355.P13694085285504043004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A141355.P13694085285504043004

namespace A141355

/-- `A024493(comp[3*n])` -/
def P13694085285504043004.Spec : Prop :=
  ∀ n, P13694085285504043004.a n = A141355 n

end A141355

/-! ## A141355.P12409995565683961316

`or(1, record[A087463(n)])`
-/

namespace A141355.P12409995565683961316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A141355.P12409995565683961316

namespace A141355

/-- `or(1, record[A087463(n)])` -/
def P12409995565683961316.Spec : Prop :=
  ∀ n, P12409995565683961316.a n = A141355 n

end A141355

/-! ## A141355.P6511277186684135447

`A230096(3*(n+1))/2`
-/

namespace A141355.P6511277186684135447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230096 (3 * (n + 1)) : ℚ) / 2

end

end A141355.P6511277186684135447

namespace A141355

/-- `A230096(3*(n+1))/2` -/
def P6511277186684135447.Spec : Prop :=
  ∀ n, P6511277186684135447.a n = (A141355 n : ℚ)

end A141355

/-! ## A141355.P12703405647052698359

`A133684(or(1, n)+2*n+1)`
-/

namespace A141355.P12703405647052698359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (Nat.lor 1 n + (2 * n + 1))

end

end A141355.P12703405647052698359

namespace A141355

/-- `A133684(or(1, n)+2*n+1)` -/
def P12703405647052698359.Spec : Prop :=
  ∀ n, P12703405647052698359.a n = A141355 n

end A141355

/-! ## A141355.P16759211189411221565

`A130781(A032766(n))`
-/

namespace A141355.P16759211189411221565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (A032766 n).toNat

end

end A141355.P16759211189411221565

namespace A141355

/-- `A130781(A032766(n))` -/
def P16759211189411221565.Spec : Prop :=
  ∀ n, P16759211189411221565.a n = A141355 n

end A141355

/-! ## A141355.P3204982599607979698

`A375476(A261953(n))`
-/

namespace A141355.P3204982599607979698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A261953 n).toNat

end

end A141355.P3204982599607979698

namespace A141355

/-- `A375476(A261953(n))` -/
def P3204982599607979698.Spec : Prop :=
  ∀ n, P3204982599607979698.a n = A141355 n

end A141355

/-! ## A141355.P13804990897203773251

`A112387(A047241(n+1))`
-/

namespace A141355.P13804990897203773251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (A047241 (n + 1)).toNat

end

end A141355.P13804990897203773251

namespace A141355

/-- `A112387(A047241(n+1))` -/
def P13804990897203773251.Spec : Prop :=
  ∀ n, P13804990897203773251.a n = A141355 n

end A141355

/-! ## A141355.P2976297661847609566

`A133684(A047235(n+1))`
-/

namespace A141355.P2976297661847609566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047235 (n + 1)).toNat

end

end A141355.P2976297661847609566

namespace A141355

/-- `A133684(A047235(n+1))` -/
def P2976297661847609566.Spec : Prop :=
  ∀ n, P2976297661847609566.a n = A141355 n

end A141355

/-! ## A141355.P2301497529415678848

`A133730(A047270(n+1))`
-/

namespace A141355.P2301497529415678848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A047270 (n + 1)).toNat

end

end A141355.P2301497529415678848

namespace A141355

/-- `A133730(A047270(n+1))` -/
def P2301497529415678848.Spec : Prop :=
  ∀ n, P2301497529415678848.a n = A141355 n

end A141355

/-! ## A141355.P11690493698289631703

`A135318(A047238(n+1))`
-/

namespace A141355.P11690493698289631703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A047238 (n + 1)).toNat

end

end A141355.P11690493698289631703

namespace A141355

/-- `A135318(A047238(n+1))` -/
def P11690493698289631703.Spec : Prop :=
  ∀ n, P11690493698289631703.a n = A141355 n

end A141355

/-! ## A141355.P3763288588898458455

`A138635(A253195(n+1))`
-/

namespace A141355.P3763288588898458455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (A253195 (n + 1)).toNat

end

end A141355.P3763288588898458455

namespace A141355

/-- `A138635(A253195(n+1))` -/
def P3763288588898458455.Spec : Prop :=
  ∀ n, P3763288588898458455.a n = A141355 n

end A141355

/-! ## A141355.P6040738335091708773

`A167167(A008619(3*n))`
-/

namespace A141355.P6040738335091708773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (A008619 (3 * n)).toNat

end

end A141355.P6040738335091708773

namespace A141355

/-- `A167167(A008619(3*n))` -/
def P6040738335091708773.Spec : Prop :=
  ∀ n, P6040738335091708773.a n = A141355 n

end A141355

/-! ## A141355.P12511055201367563897

`A167167(A008619(n)+n)`
-/

namespace A141355.P12511055201367563897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (A008619 n + (n : ℤ)).toNat

end

end A141355.P12511055201367563897

namespace A141355

/-- `A167167(A008619(n)+n)` -/
def P12511055201367563897.Spec : Prop :=
  ∀ n, P12511055201367563897.a n = A141355 n

end A141355

/-! ## A141355.P6377667962294956281

`A135318(A042948(n)+n)`
-/

namespace A141355.P6377667962294956281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042948 n + (n : ℤ)).toNat

end

end A141355.P6377667962294956281

namespace A141355

/-- `A135318(A042948(n)+n)` -/
def P6377667962294956281.Spec : Prop :=
  ∀ n, P6377667962294956281.a n = A141355 n

end A141355

/-! ## A141355.P1009331358159482395

`A167167(∑[abs(A280193(n))])`
-/

namespace A141355.P1009331358159482395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141355.P1009331358159482395

namespace A141355

/-- `A167167(∑[abs(A280193(n))])` -/
def P1009331358159482395.Spec : Prop :=
  ∀ n, P1009331358159482395.a n = A141355 n

end A141355

/-! ## A141355.P15405457997702658338

`A167167(A004526(3*n)+1)`
-/

namespace A141355.P15405457997702658338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (A004526 (3 * n) + 1).toNat

end

end A141355.P15405457997702658338

namespace A141355

/-- `A167167(A004526(3*n)+1)` -/
def P15405457997702658338.Spec : Prop :=
  ∀ n, P15405457997702658338.a n = A141355 n

end A141355

/-!
# A141356: E.g.f.: A(x) = exp(x*A(x)*exp(x^2*A(x)^2*exp(x^3*A(x)^3*exp(x^4*A(x)^4*exp(...))))), an infinite power tower.

The programs for A141356, there is no canonical definition to state claims against.
-/

/-! ## A141356.P18097588154850501271

`A122797(A331316(n)+1)`
-/

namespace A141356.P18097588154850501271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A331316 n + 1).toNat

end

end A141356.P18097588154850501271

/-! ## A141356.P12759667990082349578

`A029578(A376564(n)+A376558(n))`
-/

namespace A141356.P12759667990082349578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A376564 n + A376558 n).toNat

end

end A141356.P12759667990082349578

/-!
# A141357: E.g.f.: A(x) = exp(x*A(x)^2*exp(x^2*A(x)^4*exp(x^3*A(x)^6*exp(x^4*A(x)^8*exp(...))))), an infinite power tower.

The programs for A141357, there is no canonical definition to state claims against.
-/

/-! ## A141357.P11899049968269283722

`5*A001600(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A141357.P11899049968269283722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * A001600 (2 * a (n - 1) - a (n - 2)).toNat

end

end A141357.P11899049968269283722

/-!
# A141358: E.g.f.: A(x) = exp(x*A(x)^3*exp(x^2*A(x)^6*exp(x^3*A(x)^9*exp(x^4*A(x)^12*exp(...))))), an infinite power tower.

The programs for A141358, there is no canonical definition to state claims against.
-/

/-! ## A141358.P2627698265677570083

`A048381(or(n, A252782(n)))`
-/

namespace A141358.P2627698265677570083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (Int.lor (n : ℤ) (A252782 n)).toNat

end

end A141358.P2627698265677570083

/-!
# A141359: E.g.f.: A(x) = exp(x*A(x)^4*exp(x^2*A(x)^8*exp(x^3*A(x)^12*exp(x^4*A(x)^16*exp(...))))), an infinite power tower.

The programs for A141359, there is no canonical definition to state claims against.
-/

/-! ## A141359.P11372308236042032485

`A013597(3*n+1)*A013597(ceil(10^n/9))`
-/

namespace A141359.P11372308236042032485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (3 * n + 1) * A013597 ⌈(10 ^ n : ℚ) / 9⌉.toNat

end

end A141359.P11372308236042032485

/-!
# A141360: E.g.f.: A(x) = exp(x*exp(x*A(x)*exp(x*A(x)^2*exp(x*A(x)^3*exp(...))))), an infinite power tower.

The programs for A141360, there is no canonical definition to state claims against.
-/

/-! ## A141360.P12537109046796280228

`A028310(A162659(n)-A052722(n))`
-/

namespace A141360.P12537109046796280228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A162659 n - A052722 n).toNat

end

end A141360.P12537109046796280228

/-! ## A141360.P6190880891741280100

`A319630(A001833(n)-A333700(n+1))`
-/

namespace A141360.P6190880891741280100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (A001833 n - A333700 (n + 1)).toNat

end

end A141360.P6190880891741280100

/-!
# A141361: E.g.f.: A(x) = exp(x*A(x) * exp(x*A(x)^2 * exp(x*A(x)^3 * exp(x*A(x)^4 * exp(...))))), an infinite power tower.

The programs for A141361, there is no canonical definition to state claims against.
-/

/-! ## A141361.P14990362046179009574

`A052928(A359617(n))+1`
-/

namespace A141361.P14990362046179009574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A359617 n).toNat + 1

end

end A141361.P14990362046179009574

/-!
# A141362: E.g.f.: A(x) = exp(x*A(x)^2*exp(x*A(x)^3*exp(x*A(x)^4*exp(x*A(x)^5*exp(...))))), an infinite power tower.

The programs for A141362, there is no canonical definition to state claims against.
-/

/-! ## A141362.P9370596966800475833

`A184586(A025047(n²))`
-/

namespace A141362.P9370596966800475833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (A025047 (n ^ 2)).toNat

end

end A141362.P9370596966800475833

/-!
# A141363: E.g.f.: A(x) = exp(x*A(x)^3*exp(x*A(x)^4*exp(x*A(x)^5*exp(x*A(x)^6*exp(...))))), an infinite power tower.

The programs for A141363, there is no canonical definition to state claims against.
-/

/-! ## A141363.P10634667749875211659

`A198772(A304322(n))+A005648(n)`
-/

namespace A141363.P10634667749875211659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (A304322 n).toNat + A005648 n

end

end A141363.P10634667749875211659

/-!
# A141364: a(n) = C(n)-1+0^n where C(n) = A000108(n).

The programs for A141364, the canonical program `A141364.P16742336055309194620` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141364 has offset 0).

The definition of A141364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141364.P16742336055309194620

`abs(2-A141351(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141364

/-- `abs(2-A141351(n))` -/
def P16742336055309194620.Spec : Prop :=
  ∀ n, P16742336055309194620.a n = A141364 n

theorem P16742336055309194620.correct : P16742336055309194620.Spec := by
  intro n
  simp only [A141364]

end A141364

/-! ## A141364.P13798289829018042143

`abs(A115141(n+1)+1)`
-/

namespace A141364.P13798289829018042143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115141 (n + 1) + 1|

end

end A141364.P13798289829018042143

namespace A141364

/-- `abs(A115141(n+1)+1)` -/
def P13798289829018042143.Spec : Prop :=
  ∀ n, P13798289829018042143.a n = A141364 n

end A141364

/-! ## A141364.P12157710342359026362

`A000108(n)-ceil(abs(sin(n)))`
-/

namespace A141364.P12157710342359026362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A141364.P12157710342359026362

namespace A141364

/-- `A000108(n)-ceil(abs(sin(n)))` -/
def P12157710342359026362.Spec : Prop :=
  ∀ n, P12157710342359026362.a n = A141364 n

end A141364

/-! ## A141364.P10710127943163927907

`A000108(abs(1-n)+1)-1`
-/

namespace A141364.P10710127943163927907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A141364.P10710127943163927907

namespace A141364

/-- `A000108(abs(1-n)+1)-1` -/
def P10710127943163927907.Spec : Prop :=
  ∀ n, P10710127943163927907.a n = A141364 n

end A141364

/-! ## A141364.P5264125881439987232

`A132807(n)-and(-2, 2^n)`
-/

namespace A141364.P5264125881439987232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - Int.land (-2) (2 ^ n : ℤ)

end

end A141364.P5264125881439987232

namespace A141364

/-- `A132807(n)-and(-2, 2^n)` -/
def P5264125881439987232.Spec : Prop :=
  ∀ n, P5264125881439987232.a n = A141364 n

end A141364

/-! ## A141364.P9814248761573152373

`A120304(n)+2-n²%(n+1)`
-/

namespace A141364.P9814248761573152373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2 - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A141364.P9814248761573152373

namespace A141364

/-- `A120304(n)+2-n²%(n+1)` -/
def P9814248761573152373.Spec : Prop :=
  ∀ n, P9814248761573152373.a n = A141364 n

end A141364

/-! ## A141364.P5839721807157529318

`A057428(n)+A000108(n)`
-/

namespace A141364.P5839721807157529318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A000108 n

end

end A141364.P5839721807157529318

namespace A141364

/-- `A057428(n)+A000108(n)` -/
def P5839721807157529318.Spec : Prop :=
  ∀ n, P5839721807157529318.a n = A141364 n

end A141364

/-! ## A141364.P8894773668671926330

`A120304(n)+A054977(n)`
-/

namespace A141364.P8894773668671926330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A054977 n

end

end A141364.P8894773668671926330

namespace A141364

/-- `A120304(n)+A054977(n)` -/
def P8894773668671926330.Spec : Prop :=
  ∀ n, P8894773668671926330.a n = A141364 n

end A141364

/-! ## A141364.P8765537270948950131

`A132807(n)-A155559(n)`
-/

namespace A141364.P8765537270948950131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - A155559 n

end

end A141364.P8765537270948950131

namespace A141364

/-- `A132807(n)-A155559(n)` -/
def P8765537270948950131.Spec : Prop :=
  ∀ n, P8765537270948950131.a n = A141364 n

end A141364

/-! ## A141364.P2736793486669496064

`A000007(n)+A000108(n)-1`
-/

namespace A141364.P2736793486669496064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000108 n - 1)

end

end A141364.P2736793486669496064

namespace A141364

/-- `A000007(n)+A000108(n)-1` -/
def P2736793486669496064.Spec : Prop :=
  ∀ n, P2736793486669496064.a n = A141364 n

end A141364

/-! ## A141364.P15586169036922855110

`A000108(n)*A054977(n)-1`
-/

namespace A141364.P15586169036922855110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A054977 n - 1

end

end A141364.P15586169036922855110

namespace A141364

/-- `A000108(n)*A054977(n)-1` -/
def P15586169036922855110.Spec : Prop :=
  ∀ n, P15586169036922855110.a n = A141364 n

end A141364

/-! ## A141364.P5919936581618087567

`3+A000108(n)-A255176(n)`
-/

namespace A141364.P5919936581618087567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + (A000108 n - A255176 n)

end

end A141364.P5919936581618087567

namespace A141364

/-- `3+A000108(n)-A255176(n)` -/
def P5919936581618087567.Spec : Prop :=
  ∀ n, P5919936581618087567.a n = A141364 n

end A141364

/-! ## A141364.P18109808779421922520

`∏{e}[A006530(n+1), A000108(n)-#]`
-/

namespace A141364.P18109808779421922520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000108 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A141364.P18109808779421922520

namespace A141364

/-- `∏{e}[A006530(n+1), A000108(n)-#]` -/
def P18109808779421922520.Spec : Prop :=
  ∀ n, P18109808779421922520.a n = A141364 n

end A141364

/-! ## A141364.P14634359912285297064

`∏{e}[A020639(n+1), A000108(n)-#]`
-/

namespace A141364.P14634359912285297064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000108 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A141364.P14634359912285297064

namespace A141364

/-- `∏{e}[A020639(n+1), A000108(n)-#]` -/
def P14634359912285297064.Spec : Prop :=
  ∀ n, P14634359912285297064.a n = A141364 n

end A141364

/-! ## A141364.P8272671242504604724

`A033999(2*n+1)-A115141(n+1)`
-/

namespace A141364.P8272671242504604724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) - A115141 (n + 1)

end

end A141364.P8272671242504604724

namespace A141364

/-- `A033999(2*n+1)-A115141(n+1)` -/
def P8272671242504604724.Spec : Prop :=
  ∀ n, P8272671242504604724.a n = A141364 n

end A141364

/-! ## A141364.P14444849273166869093

`A141351(n)-A057427(n)-A057427(n)`
-/

namespace A141364.P14444849273166869093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n - A057427 n - A057427 n

end

end A141364.P14444849273166869093

namespace A141364

/-- `A141351(n)-A057427(n)-A057427(n)` -/
def P14444849273166869093.Spec : Prop :=
  ∀ n, P14444849273166869093.a n = A141364 n

end A141364

/-! ## A141364.P5818931936790923791

`A097331(2*n+1)-A096976(A097331(2*n))`
-/

namespace A141364.P5818931936790923791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A096976 (A097331 (2 * n)).toNat

end

end A141364.P5818931936790923791

namespace A141364

/-- `A097331(2*n+1)-A096976(A097331(2*n))` -/
def P5818931936790923791.Spec : Prop :=
  ∀ n, P5818931936790923791.a n = A141364 n

end A141364

/-! ## A141364.P3086411375835273584

`2*A000108(n)-A141351(n)`
-/

namespace A141364.P3086411375835273584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A141351 n

end

end A141364.P3086411375835273584

namespace A141364

/-- `2*A000108(n)-A141351(n)` -/
def P3086411375835273584.Spec : Prop :=
  ∀ n, P3086411375835273584.a n = A141364 n

end A141364

/-! ## A141364.P4912471771263604395

`A289653(n+2)+A246604(n)-A289615(n+1)`
-/

namespace A141364.P4912471771263604395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289653 (n + 2) + (A246604 n - A289615 (n + 1))

end

end A141364.P4912471771263604395

namespace A141364

/-- `A289653(n+2)+A246604(n)-A289615(n+1)` -/
def P4912471771263604395.Spec : Prop :=
  ∀ n, P4912471771263604395.a n = A141364 n

end A141364

/-!
# A141365: Expansion of (1-5x^2-7x^3-2x^4+x^6)/((1-x)(1-x^3)^2).

The programs for A141365, the canonical program `A141365.P8731518376964173824` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141365 has offset 0).

The definition of A141365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141365.P8731518376964173824

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=-4, a(3)=-9, a(4)=-11, a(5)=-21, a(6)=-31`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141365

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P8731518376964173824.Spec : Prop :=
  ∀ n, P8731518376964173824.a n = A141365 n

theorem P8731518376964173824.correct : P8731518376964173824.Spec := by
  intro n
  simp only [A141365]

end A141365

/-! ## A141365.P7657179144891411646

`A302402(n)+A141352(n)`
-/

namespace A141365.P7657179144891411646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n + A141352 n

end

end A141365.P7657179144891411646

namespace A141365

/-- `A302402(n)+A141352(n)` -/
def P7657179144891411646.Spec : Prop :=
  ∀ n, P7657179144891411646.a n = A141365 n

end A141365

/-! ## A141365.P14477941425103119073

`A010892(n)²-(n+2)*A004523(n)`
-/

namespace A141365.P14477941425103119073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2 - (n + 2 : ℤ) * A004523 n

end

end A141365.P14477941425103119073

namespace A141365

/-- `A010892(n)²-(n+2)*A004523(n)` -/
def P14477941425103119073.Spec : Prop :=
  ∀ n, P14477941425103119073.a n = A141365 n

end A141365

/-! ## A141365.P910801018647887574

`A011655(n+1)-(n+2)*A004523(n)`
-/

namespace A141365.P910801018647887574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - (n + 2 : ℤ) * A004523 n

end

end A141365.P910801018647887574

namespace A141365

/-- `A011655(n+1)-(n+2)*A004523(n)` -/
def P910801018647887574.Spec : Prop :=
  ∀ n, P910801018647887574.a n = A141365 n

end A141365

/-! ## A141365.P10741946394025189702

`A163810(n+1)²-(n+2)*A004523(n)`
-/

namespace A141365.P10741946394025189702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 1) ^ 2 - (n + 2 : ℤ) * A004523 n

end

end A141365.P10741946394025189702

namespace A141365

/-- `A163810(n+1)²-(n+2)*A004523(n)` -/
def P10741946394025189702.Spec : Prop :=
  ∀ n, P10741946394025189702.a n = A141365 n

end A141365

/-! ## A141365.P15461509458893616654

`Δ[A004523(n+1)]-(n+2)*A004523(n)`
-/

namespace A141365.P15461509458893616654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ) * A004523 n

end

end A141365.P15461509458893616654

namespace A141365

/-- `Δ[A004523(n+1)]-(n+2)*A004523(n)` -/
def P15461509458893616654.Spec : Prop :=
  ∀ n, P15461509458893616654.a n = A141365 n

end A141365

/-!
# A141366: G.f.: A(x) = x - A(-A(x)^2).

The programs for A141366, there is no canonical definition to state claims against.
-/

/-! ## A141366.P2411959697943870672

`A049142(n+1)-A054908(A230698(n))`
-/

namespace A141366.P2411959697943870672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049142 (n + 1) - A054908 (A230698 n).toNat

end

end A141366.P2411959697943870672

/-! ## A141366.P1690698916885071666

`A049142(n+1)-A025456(A283011(n))`
-/

namespace A141366.P1690698916885071666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049142 (n + 1) - A025456 (A283011 n).toNat

end

end A141366.P1690698916885071666

/-! ## A141366.P3111861498339801173

`A049142(n+1)-A185284(A089651(n+1))`
-/

namespace A141366.P3111861498339801173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049142 (n + 1) - A185284 (A089651 (n + 1)).toNat

end

end A141366.P3111861498339801173

/-!
# A141369: E.g.f. satisfies A(x) = exp(x*A(-x)).

The programs for A141369, there is no canonical definition to state claims against.
-/

/-! ## A141369.P2356989152353408586

`A055570(A025189(n))*A127138(n)`
-/

namespace A141369.P2356989152353408586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A025189 n).toNat * A127138 n

end

end A141369.P2356989152353408586

/-! ## A141369.P10385732100139890223

`(A337741(A025189(n))+A276059(n))*A127138(n)`
-/

namespace A141369.P10385732100139890223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337741 (A025189 n).toNat + A276059 n) * A127138 n

end

end A141369.P10385732100139890223

/-!
# A141370: G.f. satisfies: A(x) = x + A(A(A(x)^2)).

The programs for A141370, there is no canonical definition to state claims against.
-/

/-! ## A141370.P3148171604235947599

`A097992(Δ[A149488(n)])`
-/

namespace A141370.P3148171604235947599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (n + 1) - f1 n).toNat

end

end A141370.P3148171604235947599

/-! ## A141370.P11198613374093837320

`A332111(A085387(n))`
-/

namespace A141370.P11198613374093837320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (A085387 n).toNat

end

end A141370.P11198613374093837320

/-!
# A141371: G.f. satisfies: A(x) = x + A(A(A(x))^2).

The programs for A141371, there is no canonical definition to state claims against.
-/

/-! ## A141371.P11417186550258646761

`A028310(floor(A107708(n)/(n+3))+1)`
-/

namespace A141371.P11417186550258646761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌊(A107708 n : ℚ) / (n + 3 : ℚ)⌋ + 1).toNat

end

end A141371.P11417186550258646761

/-!
# A141372: G.f. A(x) satisfies A(x) = x + A(A(A(x)))^2.

The programs for A141372, there is no canonical definition to state claims against.
-/

/-! ## A141372.P2190116744545616753

`A050292(2*a(n-1)*Δ[n²])` with `a(0)=1, a(1)=1`
-/

namespace A141372.P2190116744545616753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A050292 (2 * a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A141372.P2190116744545616753

/-!
# A141373: Primes of the form 3*x^2+16*y^2. Also primes of the form 4*x^2+4*x*y-5*y^2 (as well as primes the form 4*x^2+12*x*y+3*y^2).

The programs for A141373, the canonical program `A141373.P17021326443408811388` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141373 has offset 1).

The definition of A141373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141373.P17021326443408811388

`p?[or(4, 12*n)-9]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141373

/-- `p?[or(4, 12*n)-9]` -/
def P17021326443408811388.Spec : Prop :=
  ∀ n, P17021326443408811388.a n = A141373 (n + 1)

theorem P17021326443408811388.correct : P17021326443408811388.Spec := by
  intro n
  simp only [A141373, Nat.add_sub_cancel]

end A141373

/-! ## A141373.P2151796938189955511

`p?[xor(3, a(n-2)+12)]` with `a(0)=3, a(1)=4`
-/

namespace A141373.P2151796938189955511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  Nat.xor 3 (f1 (n - 2) + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141373.P2151796938189955511

namespace A141373

/-- `p?[xor(3, a(n-2)+12)]` -/
def P2151796938189955511.Spec : Prop :=
  ∀ n, (P2151796938189955511.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P14818843220852911823

`∩[A007520(n+1), A141170(n+1)]`
-/

namespace A141373.P14818843220852911823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P14818843220852911823

namespace A141373

/-- `∩[A007520(n+1), A141170(n+1)]` -/
def P14818843220852911823.Spec : Prop :=
  ∀ n, (P14818843220852911823.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P12026081599666281104

`∩[A045339(n+1), A141170(n+1)]`
-/

namespace A141373.P12026081599666281104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P12026081599666281104

namespace A141373

/-- `∩[A045339(n+1), A141170(n+1)]` -/
def P12026081599666281104.Spec : Prop :=
  ∀ n, (P12026081599666281104.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P16528623266775296245

`p?[4*n-gcd(6, n)]`
-/

namespace A141373.P16528623266775296245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.gcd 6 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141373.P16528623266775296245

namespace A141373

/-- `p?[4*n-gcd(6, n)]` -/
def P16528623266775296245.Spec : Prop :=
  ∀ n, P16528623266775296245.a n = A141373 (n + 1)

end A141373

/-! ## A141373.P12621407127028709507

`∩[A095282(n+1), A141170(n+1)]`
-/

namespace A141373.P12621407127028709507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P12621407127028709507

namespace A141373

/-- `∩[A095282(n+1), A141170(n+1)]` -/
def P12621407127028709507.Spec : Prop :=
  ∀ n, (P12621407127028709507.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P17513846979725188749

`∩[A007520(n+1), A040107(n+1)]`
-/

namespace A141373.P17513846979725188749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P17513846979725188749

namespace A141373

/-- `∩[A007520(n+1), A040107(n+1)]` -/
def P17513846979725188749.Spec : Prop :=
  ∀ n, (P17513846979725188749.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P36575430044494827

`∩[A007520(n+1), A038876(n+1)]`
-/

namespace A141373.P36575430044494827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P36575430044494827

namespace A141373

/-- `∩[A007520(n+1), A038876(n+1)]` -/
def P36575430044494827.Spec : Prop :=
  ∀ n, (P36575430044494827.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P5505602937260848713

`∩[A007520(n+1), A007645(n+1)]`
-/

namespace A141373.P5505602937260848713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P5505602937260848713

namespace A141373

/-- `∩[A007520(n+1), A007645(n+1)]` -/
def P5505602937260848713.Spec : Prop :=
  ∀ n, (P5505602937260848713.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P15998562965652617387

`∩[A007645(n+1), A045339(n+1)]`
-/

namespace A141373.P15998562965652617387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P15998562965652617387

namespace A141373

/-- `∩[A007645(n+1), A045339(n+1)]` -/
def P15998562965652617387.Spec : Prop :=
  ∀ n, (P15998562965652617387.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P15588348292798939775

`∩[A007645(n+1), A192717(n+1)]`
-/

namespace A141373.P15588348292798939775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P15588348292798939775

namespace A141373

/-- `∩[A007645(n+1), A192717(n+1)]` -/
def P15588348292798939775.Spec : Prop :=
  ∀ n, (P15588348292798939775.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P5478557521965430951

`∩[A007520(n+1), A045331(n+1)]`
-/

namespace A141373.P5478557521965430951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P5478557521965430951

namespace A141373

/-- `∩[A007520(n+1), A045331(n+1)]` -/
def P5478557521965430951.Spec : Prop :=
  ∀ n, (P5478557521965430951.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P16884710427401312227

`∩[A007520(n+1), A279815(n+1)]`
-/

namespace A141373.P16884710427401312227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P16884710427401312227

namespace A141373

/-- `∩[A007520(n+1), A279815(n+1)]` -/
def P16884710427401312227.Spec : Prop :=
  ∀ n, (P16884710427401312227.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P13653269893645863953

`∩[A002145(n+1), A141170(n+1)]`
-/

namespace A141373.P13653269893645863953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P13653269893645863953

namespace A141373

/-- `∩[A002145(n+1), A141170(n+1)]` -/
def P13653269893645863953.Spec : Prop :=
  ∀ n, (P13653269893645863953.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P14013244473163410509

`∩[A045326(n+1), A141170(n+1)]`
-/

namespace A141373.P14013244473163410509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P14013244473163410509

namespace A141373

/-- `∩[A045326(n+1), A141170(n+1)]` -/
def P14013244473163410509.Spec : Prop :=
  ∀ n, (P14013244473163410509.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P13801150796910264342

`∩[A003629(n+1), A141170(n+1)]`
-/

namespace A141373.P13801150796910264342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P13801150796910264342

namespace A141373

/-- `∩[A003629(n+1), A141170(n+1)]` -/
def P13801150796910264342.Spec : Prop :=
  ∀ n, (P13801150796910264342.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P11052812251171252191

`∩[A042999(n+1), A141170(n+1)]`
-/

namespace A141373.P11052812251171252191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P11052812251171252191

namespace A141373

/-- `∩[A042999(n+1), A141170(n+1)]` -/
def P11052812251171252191.Spec : Prop :=
  ∀ n, (P11052812251171252191.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P12322163080638261389

`∩[A007520(n+1), A055664(n+1)]`
-/

namespace A141373.P12322163080638261389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P12322163080638261389

namespace A141373

/-- `∩[A007520(n+1), A055664(n+1)]` -/
def P12322163080638261389.Spec : Prop :=
  ∀ n, (P12322163080638261389.a n : ℤ) = A141373 (n + 1)

end A141373

/-! ## A141373.P3790526456243164031

`∩[A045339(n+1), A055664(n+1)]`
-/

namespace A141373.P3790526456243164031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141373.P3790526456243164031

namespace A141373

/-- `∩[A045339(n+1), A055664(n+1)]` -/
def P3790526456243164031.Spec : Prop :=
  ∀ n, (P3790526456243164031.a n : ℤ) = A141373 (n + 1)

end A141373

/-!
# A141379: a(n) = the smallest positive integer non-coprime to both n and phi(n), where phi(n) is the number of positive integers that are <= n and are coprime to n.

The programs for A141379, there is no canonical definition to state claims against.
-/

/-! ## A141379.P1233047553656750090

`lcm(A007421(A213598(n)), A074828(n+3))`
-/

namespace A141379.P1233047553656750090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007421 (A213598 n).toNat) (A074828 (n + 3))

end

end A141379.P1233047553656750090

/-! ## A141379.P172891849705926428

`A074828(n+3)*A340102(A255551(n+4))`
-/

namespace A141379.P172891849705926428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 3) * A340102 (A255551 (n + 4)).toNat

end

end A141379.P172891849705926428

/-! ## A141379.P12535991799212306173

`A141377(A034302(n+1)*A115060(n+3))`
-/

namespace A141379.P12535991799212306173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141377 (A034302 (n + 1) * A115060 (n + 3)).toNat

end

end A141379.P12535991799212306173

/-! ## A141379.P2646128618115498607

`A141377((n+3)*A256186(n+1))`
-/

namespace A141379.P2646128618115498607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141377 ((n + 3 : ℤ) * A256186 (n + 1)).toNat

end

end A141379.P2646128618115498607

/-! ## A141379.P16469501379905041280

`A102394(A007283(n))+A074828(n+3)`
-/

namespace A141379.P16469501379905041280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 (A007283 n).toNat + A074828 (n + 3)

end

end A141379.P16469501379905041280

/-!
# A141380: G.f. satisfies: A(x) = x + A(A(A(A(x)^2))).

The programs for A141380, there is no canonical definition to state claims against.
-/

/-! ## A141380.P10636992444523296106

`A195120(A150641(n))`
-/

namespace A141380.P10636992444523296106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A150641 n).toNat

end

end A141380.P10636992444523296106

/-! ## A141380.P1270712096951829738

`A195177(A151085(n))`
-/

namespace A141380.P1270712096951829738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A151085 n).toNat

end

end A141380.P1270712096951829738

/-! ## A141380.P5841539953780403958

`A300763(A150810(n))`
-/

namespace A141380.P5841539953780403958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A150810 n).toNat

end

end A141380.P5841539953780403958

/-!
# A141381: G.f. satisfies: A(x) = x + A(A(A(A(x))^2)).

The programs for A141381, there is no canonical definition to state claims against.
-/

/-! ## A141381.P13476538590312820653

`A312777(∑[A030269(n)²])`
-/

namespace A141381.P13476538590312820653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030269 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141381.P13476538590312820653

/-! ## A141381.P13896512159722651606

`A264965(A265054(ceil(n²/3-sin(1))))`
-/

namespace A141381.P13896512159722651606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A265054 ⌈((n ^ 2 : ℚ) / 3 : ℝ) - Real.sin (1 : ℝ)⌉.toNat).toNat

end

end A141381.P13896512159722651606

/-!
# A141382: G.f. satisfies: A(x) = x + A(A(A(A(x)))^2).

The programs for A141382, there is no canonical definition to state claims against.
-/

/-! ## A141382.P17218925000558736561

`or(2, A341944(4*(n-1)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A141382.P17218925000558736561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 2 (A341944 (4 * (((n : ℤ) - 1) * a (n - 1))).toNat)

end

end A141382.P17218925000558736561

/-!
# A141383: G.f. satisfies: A(x) = x + A(A(A(A(x))))^2.

The programs for A141383, there is no canonical definition to state claims against.
-/

/-! ## A141383.P7800938285942816471

`A005004(n!²)`
-/

namespace A141383.P7800938285942816471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (Nat.factorial n ^ 2)

end

end A141383.P7800938285942816471

/-!
# A141384: Trace of the n-th power of a certain 8X8 adjacency matrix.

The programs for A141384, the canonical program `A141384.P1352131853803050141` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141384 has offset 0).

The definition of A141384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141384.P1352131853803050141

`8*a(n-1)-16*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=8, a(1)=8, a(2)=32, a(3)=158, a(4)=828`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141384

/-- `8*a(n-1)-16*a(n-2)+10*a(n-3)-a(n-4)` -/
def P1352131853803050141.Spec : Prop :=
  ∀ n, P1352131853803050141.a n = A141384 n

theorem P1352131853803050141.correct : P1352131853803050141.Spec := by
  intro n
  simp only [A141384]

end A141384

/-! ## A141384.P3422363285314675804

`A141385(round(sqrt(n²+1)))+1`
-/

namespace A141384.P3422363285314675804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141385 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A141384.P3422363285314675804

namespace A141384

/-- `A141385(round(sqrt(n²+1)))+1` -/
def P3422363285314675804.Spec : Prop :=
  ∀ n, P3422363285314675804.a n = A141384 n

end A141384

/-! ## A141384.P11911032768361777174

`A141394(A266437(2*n))+A141385(n)`
-/

namespace A141384.P11911032768361777174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141394 (A266437 (2 * n)).toNat + A141385 n

end

end A141384.P11911032768361777174

namespace A141384

/-- `A141394(A266437(2*n))+A141385(n)` -/
def P11911032768361777174.Spec : Prop :=
  ∀ n, P11911032768361777174.a n = A141384 n

end A141384

/-! ## A141384.P9819809957257436528

`A141394(and(n+1, 8^n))+A141385(n)`
-/

namespace A141384.P9819809957257436528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141394 (Nat.land (n + 1) (8 ^ n)) + A141385 n

end

end A141384.P9819809957257436528

namespace A141384

/-- `A141394(and(n+1, 8^n))+A141385(n)` -/
def P9819809957257436528.Spec : Prop :=
  ∀ n, P9819809957257436528.a n = A141384 n

end A141384

/-! ## A141384.P9223529182213035100

`A141394(A151878(n))+A141385(n)`
-/

namespace A141384.P9223529182213035100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141394 (A151878 n).toNat + A141385 n

end

end A141384.P9223529182213035100

namespace A141384

/-- `A141394(A151878(n))+A141385(n)` -/
def P9223529182213035100.Spec : Prop :=
  ∀ n, P9223529182213035100.a n = A141384 n

end A141384

/-! ## A141384.P11746436571560115737

`A141394(A151935(n))+A141385(n)`
-/

namespace A141384.P11746436571560115737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141394 (A151935 n).toNat + A141385 n

end

end A141384.P11746436571560115737

namespace A141384

/-- `A141394(A151935(n))+A141385(n)` -/
def P11746436571560115737.Spec : Prop :=
  ∀ n, P11746436571560115737.a n = A141384 n

end A141384

/-!
# A141385: a(n) = 7*a(n-1) - 9*a(n-2) + a(n-3) with a(0)=3, a(1)=7, a(2)=31.

The programs for A141385, the canonical program `A141385.P13418306853926403458` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141385 has offset 0).

The definition of A141385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-9*a(n-2)+a(n-3)` (program `A141385.P13418306853926403458`, by `A141385.P13418306853926403458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141385.P13418306853926403458

`7*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=31`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A141385

/-- `7*a(n-1)-9*a(n-2)+a(n-3)` -/
def P13418306853926403458.Spec : Prop :=
  ∀ n, P13418306853926403458.a n = A141385 n

theorem P13418306853926403458.correct : P13418306853926403458.Spec := by
  intro n
  simp only [A141385]

end A141385

/-! ## A141385.P7644556930312342650

`A141384(n)-A141394(A266437(2*n))`
-/

namespace A141385.P7644556930312342650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141384 n - A141394 (A266437 (2 * n)).toNat

end

end A141385.P7644556930312342650

namespace A141385

/-- `A141384(n)-A141394(A266437(2*n))` -/
def P7644556930312342650.Spec : Prop :=
  ∀ n, P7644556930312342650.a n = A141385 n

end A141385

/-! ## A141385.P5449483131461655740

`A141384(n)-A141394(A151878(n))`
-/

namespace A141385.P5449483131461655740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141384 n - A141394 (A151878 n).toNat

end

end A141385.P5449483131461655740

namespace A141385

/-- `A141384(n)-A141394(A151878(n))` -/
def P5449483131461655740.Spec : Prop :=
  ∀ n, P5449483131461655740.a n = A141385 n

end A141385

/-! ## A141385.P15085909006231829652

`A141384(n)-5^A151935(n)`
-/

namespace A141385.P15085909006231829652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141384 n : ℚ) - (5 : ℚ) ^ (A151935 n : ℤ)

end

end A141385.P15085909006231829652

namespace A141385

/-- `A141384(n)-5^A151935(n)` -/
def P15085909006231829652.Spec : Prop :=
  ∀ n, P15085909006231829652.a n = (A141385 n : ℚ)

end A141385

/-! ## A141385.P3581004664998310016

`A141384(n)-A001844(A151935(n))`
-/

namespace A141385.P3581004664998310016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141384 n - A001844 (A151935 n).toNat

end

end A141385.P3581004664998310016

namespace A141385

/-- `A141384(n)-A001844(A151935(n))` -/
def P3581004664998310016.Spec : Prop :=
  ∀ n, P3581004664998310016.a n = A141385 n

end A141385

/-!
# A141386: Conjectured to be complete list of numbers not of the form x^2 + y^2 + 5*triangular number.

The programs for A141386, there is no canonical definition to state claims against.
-/

/-! ## A141386.P8164097206223433643

`A339334(A219847(n+1))`
-/

namespace A141386.P8164097206223433643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (A219847 (n + 1)).toNat

end

end A141386.P8164097206223433643

/-!
# A141387: Triangle read by rows: T(n,m) = n + 2*m*(n - m) (0 <= m <= n).

The programs for A141387, the canonical program `A141387.P11943354151265943845` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141387 has offset 0).

The definition of A141387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141387.P11943354151265943845

`A129312(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141387

/-- `A129312(n+1)-1` -/
def P11943354151265943845.Spec : Prop :=
  ∀ n, P11943354151265943845.a n = A141387 n

theorem P11943354151265943845.correct : P11943354151265943845.Spec := by
  intro n
  simp only [A141387]

end A141387

/-! ## A141387.P18077861933463677449

`floor(A098353(n+1)/2)`
-/

namespace A141387.P18077861933463677449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098353 (n + 1) : ℚ) / 2⌋

end

end A141387.P18077861933463677449

namespace A141387

/-- `floor(A098353(n+1)/2)` -/
def P18077861933463677449.Spec : Prop :=
  ∀ n, P18077861933463677449.a n = A141387 n

end A141387

/-! ## A141387.P13322091983899195358

`n-C(A220073(n+1), 2)`
-/

namespace A141387.P13322091983899195358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (A220073 (n + 1)).toNat 2 : ℤ)

end

end A141387.P13322091983899195358

namespace A141387

/-- `n-C(A220073(n+1), 2)` -/
def P13322091983899195358.Spec : Prop :=
  ∀ n, P13322091983899195358.a n = A141387 n

end A141387

/-! ## A141387.P9936991562411295704

`A023443(A129312(n+1))`
-/

namespace A141387.P9936991562411295704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129312 (n + 1)).toNat

end

end A141387.P9936991562411295704

namespace A141387

/-- `A023443(A129312(n+1))` -/
def P9936991562411295704.Spec : Prop :=
  ∀ n, P9936991562411295704.a n = A141387 n

end A141387

/-! ## A141387.P4263022667808915337

`A059036(n)+A004247(n)`
-/

namespace A141387.P4263022667808915337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A004247 n

end

end A141387.P4263022667808915337

namespace A141387

/-- `A059036(n)+A004247(n)` -/
def P4263022667808915337.Spec : Prop :=
  ∀ n, P4263022667808915337.a n = A141387 n

end A141387

/-! ## A141387.P4710297095422142741

`A083381(n)-A004247(n)`
-/

namespace A141387.P4710297095422142741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083381 n - A004247 n

end

end A141387.P4710297095422142741

namespace A141387

/-- `A083381(n)-A004247(n)` -/
def P4710297095422142741.Spec : Prop :=
  ∀ n, P4710297095422142741.a n = A141387 n

end A141387

/-! ## A141387.P5707066453562229474

`A061579(n)-A335262(n)`
-/

namespace A141387.P5707066453562229474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - A335262 n

end

end A141387.P5707066453562229474

namespace A141387

/-- `A061579(n)-A335262(n)` -/
def P5707066453562229474.Spec : Prop :=
  ∀ n, P5707066453562229474.a n = A141387 n

end A141387

/-! ## A141387.P11537035348231106247

`n-A335262(A083920(n))`
-/

namespace A141387.P11537035348231106247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A335262 (A083920 n).toNat

end

end A141387.P11537035348231106247

namespace A141387

/-- `n-A335262(A083920(n))` -/
def P11537035348231106247.Spec : Prop :=
  ∀ n, P11537035348231106247.a n = A141387 n

end A141387

/-! ## A141387.P412330031362760876

`A038572(A098353(n+1)-1)`
-/

namespace A141387.P412330031362760876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A098353 (n + 1) - 1).toNat

end

end A141387.P412330031362760876

namespace A141387

/-- `A038572(A098353(n+1)-1)` -/
def P412330031362760876.Spec : Prop :=
  ∀ n, P412330031362760876.a n = A141387 n

end A141387

/-! ## A141387.P15506427597359530841

`A101447(n)-A002260(n+1)`
-/

namespace A141387.P15506427597359530841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n - A002260 (n + 1)

end

end A141387.P15506427597359530841

namespace A141387

/-- `A101447(n)-A002260(n+1)` -/
def P15506427597359530841.Spec : Prop :=
  ∀ n, P15506427597359530841.a n = A141387 n

end A141387

/-! ## A141387.P6739705946901473575

`A101447(n)-(A002262(n)+1)`
-/

namespace A141387.P6739705946901473575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n - (A002262 n + 1)

end

end A141387.P6739705946901473575

namespace A141387

/-- `A101447(n)-(A002262(n)+1)` -/
def P6739705946901473575.Spec : Prop :=
  ∀ n, P6739705946901473575.a n = A141387 n

end A141387

/-! ## A141387.P7602859775372373105

`A059036(n)+A077028(n)-1`
-/

namespace A141387.P7602859775372373105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + (A077028 n - 1)

end

end A141387.P7602859775372373105

namespace A141387

/-- `A059036(n)+A077028(n)-1` -/
def P7602859775372373105.Spec : Prop :=
  ∀ n, P7602859775372373105.a n = A141387 n

end A141387

/-! ## A141387.P5508609222922877901

`A003991(n+1)-A176270(n)`
-/

namespace A141387.P5508609222922877901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A176270 n

end

end A141387.P5508609222922877901

namespace A141387

/-- `A003991(n+1)-A176270(n)` -/
def P5508609222922877901.Spec : Prop :=
  ∀ n, P5508609222922877901.a n = A141387 n

end A141387

/-! ## A141387.P351519544721726986

`A128226(n+1)-A099375(n)`
-/

namespace A141387.P351519544721726986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (n + 1) - A099375 n

end

end A141387.P351519544721726986

namespace A141387

/-- `A128226(n+1)-A099375(n)` -/
def P351519544721726986.Spec : Prop :=
  ∀ n, P351519544721726986.a n = A141387 n

end A141387

/-! ## A141387.P3814734342733681652

`A309557(n)-(A099375(n)+1)`
-/

namespace A141387.P3814734342733681652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - (A099375 n + 1)

end

end A141387.P3814734342733681652

namespace A141387

/-- `A309557(n)-(A099375(n)+1)` -/
def P3814734342733681652.Spec : Prop :=
  ∀ n, P3814734342733681652.a n = A141387 n

end A141387

/-! ## A141387.P343890527306785576

`A309557(n)-A212012(n+1)`
-/

namespace A141387.P343890527306785576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - A212012 (n + 1)

end

end A141387.P343890527306785576

namespace A141387

/-- `A309557(n)-A212012(n+1)` -/
def P343890527306785576.Spec : Prop :=
  ∀ n, P343890527306785576.a n = A141387 n

end A141387

/-! ## A141387.P17468754151729989254

`A003056(n)+2*A004247(n)`
-/

namespace A141387.P17468754151729989254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 2 * A004247 n

end

end A141387.P17468754151729989254

namespace A141387

/-- `A003056(n)+2*A004247(n)` -/
def P17468754151729989254.Spec : Prop :=
  ∀ n, P17468754151729989254.a n = A141387 n

end A141387

/-! ## A141387.P1905489483923776708

`2*A059036(n)-A003056(n)`
-/

namespace A141387.P1905489483923776708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059036 n - A003056 n

end

end A141387.P1905489483923776708

namespace A141387

/-- `2*A059036(n)-A003056(n)` -/
def P1905489483923776708.Spec : Prop :=
  ∀ n, P1905489483923776708.a n = A141387 n

end A141387

/-! ## A141387.P12673872177431295696

`2*A057944(n)-A048147(n)`
-/

namespace A141387.P12673872177431295696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057944 n - A048147 n

end

end A141387.P12673872177431295696

namespace A141387

/-- `2*A057944(n)-A048147(n)` -/
def P12673872177431295696.Spec : Prop :=
  ∀ n, P12673872177431295696.a n = A141387 n

end A141387

/-! ## A141387.P9953625455245618387

`log2(A137688(n))+2*A004247(n)`
-/

namespace A141387.P9953625455245618387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A137688 n : ℝ) + (2 * A004247 n : ℝ)

end

end A141387.P9953625455245618387

namespace A141387

/-- `log2(A137688(n))+2*A004247(n)` -/
def P9953625455245618387.Spec : Prop :=
  ∀ n, P9953625455245618387.a n = (A141387 n : ℝ)

end A141387

/-!
# A141388: Triangle T(n, k) = ( k*(n-k+1) )^3 - 2^(n-1), read by rows.

The programs for A141388, the canonical program `A141388.P760566885152609055` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141388 has offset 1).

The definition of A141388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141388.P760566885152609055

`A098360(n+1)-A137688(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A141388

/-- `A098360(n+1)-A137688(n)` -/
def P760566885152609055.Spec : Prop :=
  ∀ n, P760566885152609055.a n = A141388 (n + 1)

theorem P760566885152609055.correct : P760566885152609055.Spec := by
  intro n
  simp only [A141388, Nat.add_sub_cancel]

end A141388

/-! ## A141388.P15462365741792116382

`A098360(n+1)-Δ[A007664(n)]`
-/

namespace A141388.P15462365741792116382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) - (f1 (n + 1) - f1 n)

end

end A141388.P15462365741792116382

namespace A141388

/-- `A098360(n+1)-Δ[A007664(n)]` -/
def P15462365741792116382.Spec : Prop :=
  ∀ n, P15462365741792116382.a n = A141388 (n + 1)

end A141388

/-! ## A141388.P16704982977409317535

`A098360(n+1)-2^A003056(n)`
-/

namespace A141388.P16704982977409317535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℚ) - (2 : ℚ) ^ (A003056 n : ℤ)

end

end A141388.P16704982977409317535

namespace A141388

/-- `A098360(n+1)-2^A003056(n)` -/
def P16704982977409317535.Spec : Prop :=
  ∀ n, P16704982977409317535.a n = (A141388 (n + 1) : ℚ)

end A141388

/-! ## A141388.P4488097329802125012

`A000578(A003991(n+1))-A137688(n)`
-/

namespace A141388.P4488097329802125012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003991 (n + 1)).toNat - A137688 n

end

end A141388.P4488097329802125012

namespace A141388

/-- `A000578(A003991(n+1))-A137688(n)` -/
def P4488097329802125012.Spec : Prop :=
  ∀ n, P4488097329802125012.a n = A141388 (n + 1)

end A141388

/-! ## A141388.P6577541372326629789

`A098360(n+1)-A091918(A057944(n))`
-/

namespace A141388.P6577541372326629789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) - A091918 (A057944 n).toNat

end

end A141388.P6577541372326629789

namespace A141388

/-- `A098360(n+1)-A091918(A057944(n))` -/
def P6577541372326629789.Spec : Prop :=
  ∀ n, P6577541372326629789.a n = A141388 (n + 1)

end A141388

/-! ## A141388.P5442309261090060563

`A098360(n+1)-A011782(A002024(n+1))`
-/

namespace A141388.P5442309261090060563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) - A011782 (A002024 (n + 1)).toNat

end

end A141388.P5442309261090060563

namespace A141388

/-- `A098360(n+1)-A011782(A002024(n+1))` -/
def P5442309261090060563.Spec : Prop :=
  ∀ n, P5442309261090060563.a n = A141388 (n + 1)

end A141388

/-!
# A141390: Overpseudoprimes to base 5.

The programs for A141390, there is no canonical definition to state claims against.
-/

/-! ## A141390.P2990279355584582067

`A020231((gcd(n, C(2, n))+n)%A209395(2*n+5))`
-/

namespace A141390.P2990279355584582067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020231 (Int.tmod (Nat.gcd n (Nat.choose 2 n) + n : ℤ) (A209395 (2 * n + 5))).toNat

end

end A141390.P2990279355584582067

/-!
# A141391: a(n) is the smallest unused number such that the RMS (Root Mean Square) of a(1) through a(n) is an integer.

The programs for A141391, there is no canonical definition to state claims against.
-/

/-! ## A141391.P7942479577720038598

`sqrt(A236247(n+1))`
-/

namespace A141391.P7942479577720038598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A236247 (n + 1) : ℝ)

end

end A141391.P7942479577720038598

/-! ## A141391.P8620594668153265946

`root(A236247(n+1), A057427(n)+1)`
-/

namespace A141391.P8620594668153265946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (A057427 n + 1 : ℝ))

end

end A141391.P8620594668153265946

/-! ## A141391.P4774253857124292571

`root(A236247(n+1), A174354(2*n))`
-/

namespace A141391.P4774253857124292571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (A174354 (2 * n) : ℝ))

end

end A141391.P4774253857124292571

/-! ## A141391.P15249679655472174877

`root(A236247(n+1), 2%A059162(n))`
-/

namespace A141391.P15249679655472174877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A059162 n) : ℝ))

end

end A141391.P15249679655472174877

/-! ## A141391.P4093097966922931078

`root(A236247(n+1), gcd(2, A174354(n)))`
-/

namespace A141391.P4093097966922931078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A174354 n) : ℝ))

end

end A141391.P4093097966922931078

/-! ## A141391.P3396037180161471167

`root(A236247(n+1), A001316(A001316(n)))`
-/

namespace A141391.P3396037180161471167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A141391.P3396037180161471167

/-! ## A141391.P5724699388460850160

`A236247(n+1)^(1/A020639(A315204(n)))`
-/

namespace A141391.P5724699388460850160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236247 (n + 1) : ℝ) ^ (1 / (A020639 (A315204 n).toNat : ℚ) : ℝ)

end

end A141391.P5724699388460850160

/-!
# A141392: a(n) = RMS( A141391(1) through A141391(n) ).

The programs for A141392, there is no canonical definition to state claims against.
-/

/-! ## A141392.P5746849682586072551

`sqrt(∑[A236247(n+1)]/(n+1))`
-/

namespace A141392.P5746849682586072551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236247 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A141392.P5746849682586072551

/-! ## A141392.P4860288241352755690

`A007947(∑[A236247(n+1)]/(n+1))`
-/

namespace A141392.P4860288241352755690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A141392.P4860288241352755690

/-! ## A141392.P17337887493085015804

`A137735(∑[A236247(n+1)]/A178862(n+1))`
-/

namespace A141392.P17337887493085015804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A178862 (n + 1) : ℚ))).toNat

end

end A141392.P17337887493085015804

/-!
# A141394: a(n) = RMS( A141393(0) through A141393(n) ).

The programs for A141394, there is no canonical definition to state claims against.
-/

/-! ## A141394.P7495623553235079500

`record[gcd(A054142(n), A260914(n+1))]`
-/

namespace A141394.P7495623553235079500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054142 n) (A260914 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141394.P7495623553235079500

/-! ## A141394.P2729642817270264837

`record[A233508(A243615(n+1))]`
-/

namespace A141394.P2729642817270264837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233508 (A243615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141394.P2729642817270264837

/-!
# A141396: Triangle read by rows, antidiagonals of a multiplication table: 3^n * (numbers not multiples of 3).

The programs for A141396, the canonical program `A141396.P1544682609068793782` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141396 has offset 0).

The definition of A141396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141396.P1544682609068793782

`A000244(A002262(n))*A001651(A004736(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141396

/-- `A000244(A002262(n))*A001651(A004736(n+1))` -/
def P1544682609068793782.Spec : Prop :=
  ∀ n, P1544682609068793782.a n = A141396 n

theorem P1544682609068793782.correct : P1544682609068793782.Spec := by
  intro n
  simp only [A141396]

end A141396

/-! ## A141396.P14643126754697033216

`A001651(A004736(n+1))*A003959(A059268(n))`
-/

namespace A141396.P14643126754697033216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A004736 (n + 1)).toNat * A003959 (A059268 n).toNat

end

end A141396.P14643126754697033216

namespace A141396

/-- `A001651(A004736(n+1))*A003959(A059268(n))` -/
def P14643126754697033216.Spec : Prop :=
  ∀ n, P14643126754697033216.a n = A141396 n

end A141396

/-! ## A141396.P18112585292163452744

`A191449(∑[char[∑[n]]]²-n)`
-/

namespace A141396.P18112585292163452744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A141396.P18112585292163452744

namespace A141396

/-- `A191449(∑[char[∑[n]]]²-n)` -/
def P18112585292163452744.Spec : Prop :=
  ∀ n, P18112585292163452744.a n = A141396 n

end A141396

/-! ## A141396.P17668281655080553784

`or(C(2, n+2), A191449(A038722(n+1)))`
-/

namespace A141396.P17668281655080553784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A191449 (A038722 (n + 1)).toNat)

end

end A141396.P17668281655080553784

namespace A141396

/-- `or(C(2, n+2), A191449(A038722(n+1)))` -/
def P17668281655080553784.Spec : Prop :=
  ∀ n, P17668281655080553784.a n = A141396 n

end A141396

/-! ## A141396.P14232070640179037763

`A191449(A038722(n+1))%A259412(n+1)`
-/

namespace A141396.P14232070640179037763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191449 (A038722 (n + 1)).toNat) (A259412 (n + 1))

end

end A141396.P14232070640179037763

namespace A141396

/-- `A191449(A038722(n+1))%A259412(n+1)` -/
def P14232070640179037763.Spec : Prop :=
  ∀ n, P14232070640179037763.a n = A141396 n

end A141396

/-! ## A141396.P2187310705256712678

`A355741(2*(n+1))+A191449(A038722(n+1))`
-/

namespace A141396.P2187310705256712678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (2 * (n + 1)) + A191449 (A038722 (n + 1)).toNat

end

end A141396.P2187310705256712678

namespace A141396

/-- `A355741(2*(n+1))+A191449(A038722(n+1))` -/
def P2187310705256712678.Spec : Prop :=
  ∀ n, P2187310705256712678.a n = A141396 n

end A141396

/-! ## A141396.P10513006474097011878

`A191449(A038722(n+1))+(A000578(n)-n)%3`
-/

namespace A141396.P10513006474097011878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 (A038722 (n + 1)).toNat + Int.tmod (A000578 n - (n : ℤ)) 3

end

end A141396.P10513006474097011878

namespace A141396

/-- `A191449(A038722(n+1))+(A000578(n)-n)%3` -/
def P10513006474097011878.Spec : Prop :=
  ∀ n, P10513006474097011878.a n = A141396 n

end A141396

/-! ## A141396.P16199683233229452303

`A191449(A038722(n+1))+A049347(A016789(n))`
-/

namespace A141396.P16199683233229452303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 (A038722 (n + 1)).toNat + A049347 (A016789 n).toNat

end

end A141396.P16199683233229452303

namespace A141396

/-- `A191449(A038722(n+1))+A049347(A016789(n))` -/
def P16199683233229452303.Spec : Prop :=
  ∀ n, P16199683233229452303.a n = A141396 n

end A141396

/-! ## A141396.P4994181753903007363

`A191449(A038722(n+1))+A008683(A070760(n+1))`
-/

namespace A141396.P4994181753903007363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 (A038722 (n + 1)).toNat + A008683 (A070760 (n + 1)).toNat

end

end A141396.P4994181753903007363

namespace A141396

/-- `A191449(A038722(n+1))+A008683(A070760(n+1))` -/
def P4994181753903007363.Spec : Prop :=
  ∀ n, P4994181753903007363.a n = A141396 n

end A141396

/-! ## A141396.P14996700827325032295

`A000265(A036561(n))*A001651(A004736(n+1))`
-/

namespace A141396.P14996700827325032295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A001651 (A004736 (n + 1)).toNat

end

end A141396.P14996700827325032295

namespace A141396

/-- `A000265(A036561(n))*A001651(A004736(n+1))` -/
def P14996700827325032295.Spec : Prop :=
  ∀ n, P14996700827325032295.a n = A141396 n

end A141396

/-!
# A141397: a(n) = 3*a(n-1) + A001651(n+1).

The programs for A141397, the canonical program `A141397.P18428813078412907815` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141397 has offset 0).

The definition of A141397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141397.P18428813078412907815

`3*a(n-1)+A001651(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141397

/-- `3*a(n-1)+A001651(n+1)` -/
def P18428813078412907815.Spec : Prop :=
  ∀ n, P18428813078412907815.a n = A141397 n

theorem P18428813078412907815.correct : P18428813078412907815.Spec := by
  intro n
  simp only [A141397]

end A141397

/-! ## A141397.P14438990858353184600

`comp[3*n]+3*a(n-1)` with `a(0)=1`
-/

namespace A141397.P14438990858353184600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3 * a (n - 1)

end

end A141397.P14438990858353184600

namespace A141397

/-- `comp[3*n]+3*a(n-1)` -/
def P14438990858353184600.Spec : Prop :=
  ∀ n, (P14438990858353184600.a n : ℤ) = A141397 n

end A141397

/-! ## A141397.P16146952959549340280

`∑[gcd(2, n)+3*a(n-1)]` with `a(0)=1`
-/

namespace A141397.P16146952959549340280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 n + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141397.P16146952959549340280

namespace A141397

/-- `∑[gcd(2, n)+3*a(n-1)]` -/
def P16146952959549340280.Spec : Prop :=
  ∀ n, (P16146952959549340280.a n : ℤ) = A141397 n

end A141397

/-! ## A141397.P8917494570967430166

`∑[3*a(n-1)-or(n, -2)]` with `a(0)=1`
-/

namespace A141397.P8917494570967430166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141397.P8917494570967430166

namespace A141397

/-- `∑[3*a(n-1)-or(n, -2)]` -/
def P8917494570967430166.Spec : Prop :=
  ∀ n, P8917494570967430166.a n = A141397 n

end A141397

/-! ## A141397.P7338754604168318905

`floor(3*(a(n-1)+n/2))+1` with `a(0)=1`
-/

namespace A141397.P7338754604168318905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 * ((a (n - 1) : ℚ) + (n : ℚ) / 2)⌋ + 1

end

end A141397.P7338754604168318905

namespace A141397

/-- `floor(3*(a(n-1)+n/2))+1` -/
def P7338754604168318905.Spec : Prop :=
  ∀ n, P7338754604168318905.a n = A141397 n

end A141397

/-! ## A141397.P15381198325501648404

`∑[3*a(n-1)+2-n%2]` with `a(0)=1`
-/

namespace A141397.P15381198325501648404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141397.P15381198325501648404

namespace A141397

/-- `∑[3*a(n-1)+2-n%2]` -/
def P15381198325501648404.Spec : Prop :=
  ∀ n, P15381198325501648404.a n = A141397 n

end A141397

/-! ## A141397.P6501577777665210146

`∑[3*(a(n-1)+1)]-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A141397.P6501577777665210146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A141397.P6501577777665210146

namespace A141397

/-- `∑[3*(a(n-1)+1)]-a(n-1)` -/
def P6501577777665210146.Spec : Prop :=
  ∀ n, P6501577777665210146.a n = A141397 n

end A141397

/-! ## A141397.P10300660147885404912

`A097137(n)+A000340(n)`
-/

namespace A141397.P10300660147885404912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 n + A000340 n

end

end A141397.P10300660147885404912

namespace A141397

/-- `A097137(n)+A000340(n)` -/
def P10300660147885404912.Spec : Prop :=
  ∀ n, P10300660147885404912.a n = A141397 n

end A141397

/-! ## A141397.P2039791064188197722

`A015518(n+1)+∑[∑[A054878(n+1)]]`
-/

namespace A141397.P2039791064188197722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141397.P2039791064188197722

namespace A141397

/-- `A015518(n+1)+∑[∑[A054878(n+1)]]` -/
def P2039791064188197722.Spec : Prop :=
  ∀ n, P2039791064188197722.a n = A141397 n

end A141397

/-! ## A141397.P972162515035203871

`∑[A081250(n)+A033113(n+1)]-A033113(n+1)`
-/

namespace A141397.P972162515035203871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 n + A033113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033113 (n + 1)

end

end A141397.P972162515035203871

namespace A141397

/-- `∑[A081250(n)+A033113(n+1)]-A033113(n+1)` -/
def P972162515035203871.Spec : Prop :=
  ∀ n, P972162515035203871.a n = A141397 n

end A141397

/-!
# A141398: The fifth power (k=5) of the normalized neo-combinations: t(n,m,k) = ceiling(((n-m)^k*(m+1)^k - 2^(n-1))/n^k).

The programs for A141398, there is no canonical definition to state claims against.
-/

/-! ## A141398.P11152208794237819749

`A020662(A054110(n))%A122404(n+1)`
-/

namespace A141398.P11152208794237819749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020662 (A054110 n).toNat) (A122404 (n + 1))

end

end A141398.P11152208794237819749

/-! ## A141398.P11933989315136815506

`A095117(A008288(n)%A272050(n))`
-/

namespace A141398.P11933989315136815506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (Int.tmod (A008288 n) (A272050 n)).toNat

end

end A141398.P11933989315136815506

/-! ## A141398.P15263055830542644686

`A176628(A007318(n))%A270910(n)`
-/

namespace A141398.P15263055830542644686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176628 (A007318 n).toNat) (A270910 n)

end

end A141398.P15263055830542644686

/-! ## A141398.P11116239655199343320

`A176628(abs(A117440(n)))%A263718(n+1)`
-/

namespace A141398.P11116239655199343320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176628 |A117440 n|.toNat) (A263718 (n + 1))

end

end A141398.P11116239655199343320

/-!
# A141399: Positive integers k such that the distinct primes that divide k or k+1 form a set of consecutive primes. In other words, k is included if and only if k*(k+1) is contained in sequence A073491.

The programs for A141399, there is no canonical definition to state claims against.
-/

/-! ## A141399.P14280392920487055789

`floor(sqrt(A385189(n+1)))`
-/

namespace A141399.P14280392920487055789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A385189 (n + 1))

end

end A141399.P14280392920487055789

/-! ## A141399.P18340030543414070275

`floor(A194099(n+1)/2)`
-/

namespace A141399.P18340030543414070275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194099 (n + 1) : ℚ) / 2⌋

end

end A141399.P18340030543414070275

/-! ## A141399.P6371715043051241466

`(A194099(n+1)-A000034(2*n))/2`
-/

namespace A141399.P6371715043051241466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194099 (n + 1) - A000034 (2 * n) : ℚ) / 2

end

end A141399.P6371715043051241466

/-! ## A141399.P302964109470446124

`(A194099(n+1)-1)*2^A008683(A051698(n))`
-/

namespace A141399.P302964109470446124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194099 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ (A008683 (A051698 n).toNat : ℤ)

end

end A141399.P302964109470446124

/-! ## A141399.P2391624684897555101

`xor(1, A194099(n+1))/A000005(A073683(n+1))`
-/

namespace A141399.P2391624684897555101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A194099 (n + 1)) : ℚ) / (A000005 (A073683 (n + 1)).toNat : ℚ)

end

end A141399.P2391624684897555101

