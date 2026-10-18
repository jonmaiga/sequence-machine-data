import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A234100: Products p*q*r of distinct primes for which (p*q*r - 1)/2 is prime.

The programs for A234100, the canonical program `A234100.P10458591407678790924` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234100 has offset 1).

The definition of A234100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234100.P10967356674676939453

`2*A234101(n+1)+1`
-/

namespace A234100.P10967356674676939453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234101 (n + 1) + 1

end

end A234100.P10967356674676939453

namespace A234100

/-- `2*A234101(n+1)+1` -/
def P10967356674676939453.Spec : Prop :=
  ∀ n, P10967356674676939453.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P10458591407678790924

`2*p?[floor(A046389(n+2)/2)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A234100

/-- `2*p?[floor(A046389(n+2)/2)]+1` -/
def P10458591407678790924.Spec : Prop :=
  ∀ n, P10458591407678790924.a n = A234100 (n + 1)

theorem P10458591407678790924.correct : P10458591407678790924.Spec := by
  intro n
  simp only [A234100, Nat.add_sub_cancel]

end A234100

/-! ## A234100.P3404249750533382272

`A002659(A234101(n+1))`
-/

namespace A234100.P3404249750533382272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A234101 (n + 1)).toNat

end

end A234100.P3404249750533382272

namespace A234100

/-- `A002659(A234101(n+1))` -/
def P3404249750533382272.Spec : Prop :=
  ∀ n, P3404249750533382272.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P9993985007977569767

`filter[A053177(n+1), A354926(#)]`
-/

namespace A234100.P9993985007977569767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A234100.P9993985007977569767

namespace A234100

/-- `filter[A053177(n+1), A354926(#)]` -/
def P9993985007977569767.Spec : Prop :=
  ∀ n, P9993985007977569767.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P11721389201600986000

`A002659(p?[floor(A046389(n+1)/2)])`
-/

namespace A234100.P11721389201600986000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234100.P11721389201600986000

namespace A234100

/-- `A002659(p?[floor(A046389(n+1)/2)])` -/
def P11721389201600986000.Spec : Prop :=
  ∀ n, P11721389201600986000.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P11424427160554796150

`A005408(p?[floor(A046389(n+1)/2)])`
-/

namespace A234100.P11424427160554796150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234100.P11424427160554796150

namespace A234100

/-- `A005408(p?[floor(A046389(n+1)/2)])` -/
def P11424427160554796150.Spec : Prop :=
  ∀ n, P11424427160554796150.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P8221158136989334132

`A198020(p?[floor(A046389(n+1)/2)])`
-/

namespace A234100.P8221158136989334132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234100.P8221158136989334132

namespace A234100

/-- `A198020(p?[floor(A046389(n+1)/2)])` -/
def P8221158136989334132.Spec : Prop :=
  ∀ n, P8221158136989334132.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P18113946870864353869

`A235800(p?[floor(A046389(n+1)/2)])`
-/

namespace A234100.P18113946870864353869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234100.P18113946870864353869

namespace A234100

/-- `A235800(p?[floor(A046389(n+1)/2)])` -/
def P18113946870864353869.Spec : Prop :=
  ∀ n, P18113946870864353869.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P500976919940409742

`A267872(p?[floor(A046389(n+1)/2)])`
-/

namespace A234100.P500976919940409742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234100.P500976919940409742

namespace A234100

/-- `A267872(p?[floor(A046389(n+1)/2)])` -/
def P500976919940409742.Spec : Prop :=
  ∀ n, P500976919940409742.a n = A234100 (n + 1)

end A234100

/-! ## A234100.P8614153623590043072

`∩[A007304(n+1), A053177(n+1)]`
-/

namespace A234100.P8614153623590043072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P8614153623590043072

namespace A234100

/-- `∩[A007304(n+1), A053177(n+1)]` -/
def P8614153623590043072.Spec : Prop :=
  ∀ n, (P8614153623590043072.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P14609745140841656148

`∩[A007304(n+1), A072055(n+1)]`
-/

namespace A234100.P14609745140841656148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P14609745140841656148

namespace A234100

/-- `∩[A007304(n+1), A072055(n+1)]` -/
def P14609745140841656148.Spec : Prop :=
  ∀ n, (P14609745140841656148.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P4563622951122686962

`∩[A046389(n+1), A053177(n+1)]`
-/

namespace A234100.P4563622951122686962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P4563622951122686962

namespace A234100

/-- `∩[A046389(n+1), A053177(n+1)]` -/
def P4563622951122686962.Spec : Prop :=
  ∀ n, (P4563622951122686962.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P14906947820836264706

`∩[A046389(n+1), A072055(n+1)]`
-/

namespace A234100.P14906947820836264706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P14906947820836264706

namespace A234100

/-- `∩[A046389(n+1), A072055(n+1)]` -/
def P14906947820836264706.Spec : Prop :=
  ∀ n, (P14906947820836264706.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P13794298685003270721

`∩[A046389(n+1), A088707(n+1)]`
-/

namespace A234100.P13794298685003270721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P13794298685003270721

namespace A234100

/-- `∩[A046389(n+1), A088707(n+1)]` -/
def P13794298685003270721.Spec : Prop :=
  ∀ n, (P13794298685003270721.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P12095360961061646929

`∩[A007304(n+1), A166496(n+1)]`
-/

namespace A234100.P12095360961061646929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P12095360961061646929

namespace A234100

/-- `∩[A007304(n+1), A166496(n+1)]` -/
def P12095360961061646929.Spec : Prop :=
  ∀ n, (P12095360961061646929.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P14198154556585409869

`∩[A046389(n+1), A166496(n+1)]`
-/

namespace A234100.P14198154556585409869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P14198154556585409869

namespace A234100

/-- `∩[A046389(n+1), A166496(n+1)]` -/
def P14198154556585409869.Spec : Prop :=
  ∀ n, (P14198154556585409869.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P12506847000703530572

`∩[A053177(n+1), A378480(n+1)]`
-/

namespace A234100.P12506847000703530572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P12506847000703530572

namespace A234100

/-- `∩[A053177(n+1), A378480(n+1)]` -/
def P12506847000703530572.Spec : Prop :=
  ∀ n, (P12506847000703530572.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P14274686957135726705

`∩[A072055(n+1), A378480(n+1)]`
-/

namespace A234100.P14274686957135726705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P14274686957135726705

namespace A234100

/-- `∩[A072055(n+1), A378480(n+1)]` -/
def P14274686957135726705.Spec : Prop :=
  ∀ n, (P14274686957135726705.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P17437252420370903030

`∩[A166496(n+1), A378480(n+1)]`
-/

namespace A234100.P17437252420370903030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P17437252420370903030

namespace A234100

/-- `∩[A166496(n+1), A378480(n+1)]` -/
def P17437252420370903030.Spec : Prop :=
  ∀ n, (P17437252420370903030.a n : ℤ) = A234100 (n + 1)

end A234100

/-! ## A234100.P9285935440646660513

`∩[A033945(n+1)+2, A046389(n+1)]`
-/

namespace A234100.P9285935440646660513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234100.P9285935440646660513

namespace A234100

/-- `∩[A033945(n+1)+2, A046389(n+1)]` -/
def P9285935440646660513.Spec : Prop :=
  ∀ n, (P9285935440646660513.a n : ℤ) = A234100 (n + 1)

end A234100

/-!
# A234101: Primes of the form (p*q*r - 1)/2, where p, q, r are distinct primes.

The programs for A234101, the canonical program `A234101.P6301827965177899891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234101 has offset 1).

The definition of A234101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234101.P6301827965177899891

`∩[A276307(n+1), A350409(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A234101

/-- `∩[A276307(n+1), A350409(n+1)]` -/
def P6301827965177899891.Spec : Prop :=
  ∀ n, (P6301827965177899891.a n : ℤ) = A234101 (n + 1)

theorem P6301827965177899891.correct : P6301827965177899891.Spec := by
  intro n
  simp only [A234101, Nat.add_sub_cancel]

end A234101

/-! ## A234101.P17694252822671272766

`∩[A189313(n+1), A276307(n+1)]`
-/

namespace A234101.P17694252822671272766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P17694252822671272766

namespace A234101

/-- `∩[A189313(n+1), A276307(n+1)]` -/
def P17694252822671272766.Spec : Prop :=
  ∀ n, (P17694252822671272766.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P6478257555780289592

`∩[A189313(n+1), A350409(n+1)]`
-/

namespace A234101.P6478257555780289592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P6478257555780289592

namespace A234101

/-- `∩[A189313(n+1), A350409(n+1)]` -/
def P6478257555780289592.Spec : Prop :=
  ∀ n, (P6478257555780289592.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P12930804119614861363

`p?[A234099(n+1)]`
-/

namespace A234101.P12930804119614861363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234101.P12930804119614861363

namespace A234101

/-- `p?[A234099(n+1)]` -/
def P12930804119614861363.Spec : Prop :=
  ∀ n, P12930804119614861363.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P2251161976980960624

`p?[A234102(n+1)-1]`
-/

namespace A234101.P2251161976980960624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234101.P2251161976980960624

namespace A234101

/-- `p?[A234102(n+1)-1]` -/
def P2251161976980960624.Spec : Prop :=
  ∀ n, P2251161976980960624.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P5848373689631444037

`p?[eq[8, A305973(n+1)]]`
-/

namespace A234101.P5848373689631444037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234101.P5848373689631444037

namespace A234101

/-- `p?[eq[8, A305973(n+1)]]` -/
def P5848373689631444037.Spec : Prop :=
  ∀ n, (P5848373689631444037.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P1458362837669638289

`p?[floor(A046389(n+1)/2)]`
-/

namespace A234101.P1458362837669638289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234101.P1458362837669638289

namespace A234101

/-- `p?[floor(A046389(n+1)/2)]` -/
def P1458362837669638289.Spec : Prop :=
  ∀ n, P1458362837669638289.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P2149061738050225789

`filter[A234099(n+1), A010051(#)]`
-/

namespace A234101.P2149061738050225789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234101.P2149061738050225789

namespace A234101

/-- `filter[A234099(n+1), A010051(#)]` -/
def P2149061738050225789.Spec : Prop :=
  ∀ n, P2149061738050225789.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P7620845285989244636

`filter[A234099(n+1), A323152(#)]`
-/

namespace A234101.P7620845285989244636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A234101.P7620845285989244636

namespace A234101

/-- `filter[A234099(n+1), A323152(#)]` -/
def P7620845285989244636.Spec : Prop :=
  ∀ n, P7620845285989244636.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P243067889686676621

`filter[A234099(n+1), A323153(#)]`
-/

namespace A234101.P243067889686676621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A234101.P243067889686676621

namespace A234101

/-- `filter[A234099(n+1), A323153(#)]` -/
def P243067889686676621.Spec : Prop :=
  ∀ n, P243067889686676621.a n = A234101 (n + 1)

end A234101

/-! ## A234101.P13603261284427546530

`∩[A000040(n+1), A234099(n+1)]`
-/

namespace A234101.P13603261284427546530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P13603261284427546530

namespace A234101

/-- `∩[A000040(n+1), A234099(n+1)]` -/
def P13603261284427546530.Spec : Prop :=
  ∀ n, (P13603261284427546530.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P16109766278483172107

`∩[A004139(n+1), A234099(n+1)]`
-/

namespace A234101.P16109766278483172107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P16109766278483172107

namespace A234101

/-- `∩[A004139(n+1), A234099(n+1)]` -/
def P16109766278483172107.Spec : Prop :=
  ∀ n, (P16109766278483172107.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P6084057312665004079

`∩[A006005(n+1), A234099(n+1)]`
-/

namespace A234101.P6084057312665004079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P6084057312665004079

namespace A234101

/-- `∩[A006005(n+1), A234099(n+1)]` -/
def P6084057312665004079.Spec : Prop :=
  ∀ n, (P6084057312665004079.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P11274657294349547144

`∩[A008578(n+1), A234099(n+1)]`
-/

namespace A234101.P11274657294349547144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P11274657294349547144

namespace A234101

/-- `∩[A008578(n+1), A234099(n+1)]` -/
def P11274657294349547144.Spec : Prop :=
  ∀ n, (P11274657294349547144.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P1877715573565685171

`∩[A033946(n+1), A234099(n+1)]`
-/

namespace A234101.P1877715573565685171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P1877715573565685171

namespace A234101

/-- `∩[A033946(n+1), A234099(n+1)]` -/
def P1877715573565685171.Spec : Prop :=
  ∀ n, (P1877715573565685171.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P10117351402344259069

`∩[A045319(n+1), A234099(n+1)]`
-/

namespace A234101.P10117351402344259069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P10117351402344259069

namespace A234101

/-- `∩[A045319(n+1), A234099(n+1)]` -/
def P10117351402344259069.Spec : Prop :=
  ∀ n, (P10117351402344259069.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P13363475409490736659

`∩[A045344(n+1), A234099(n+1)]`
-/

namespace A234101.P13363475409490736659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P13363475409490736659

namespace A234101

/-- `∩[A045344(n+1), A234099(n+1)]` -/
def P13363475409490736659.Spec : Prop :=
  ∀ n, (P13363475409490736659.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P5273597249623685441

`∩[A046022(n+1), A234099(n+1)]`
-/

namespace A234101.P5273597249623685441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P5273597249623685441

namespace A234101

/-- `∩[A046022(n+1), A234099(n+1)]` -/
def P5273597249623685441.Spec : Prop :=
  ∀ n, (P5273597249623685441.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P2372994133633018376

`∩[A051948(n+1), A234099(n+1)]`
-/

namespace A234101.P2372994133633018376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P2372994133633018376

namespace A234101

/-- `∩[A051948(n+1), A234099(n+1)]` -/
def P2372994133633018376.Spec : Prop :=
  ∀ n, (P2372994133633018376.a n : ℤ) = A234101 (n + 1)

end A234101

/-! ## A234101.P3817867771745533322

`∩[A053176(n+1), A234099(n+1)]`
-/

namespace A234101.P3817867771745533322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P3817867771745533322

namespace A234101

/-- `∩[A053176(n+1), A234099(n+1)]` -/
def P3817867771745533322.Spec : Prop :=
  ∀ n, (P3817867771745533322.a n : ℤ) = A234101 (n + 1)

end A234101

/-!
# A234102: Integers of the form (p*q*r + 1)/2, where p, q, r are distinct primes.

The programs for A234102, the canonical program `A234102.P1827764588803365079` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234102 has offset 1).

The definition of A234102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234099, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234102.P1827764588803365079

`A234099(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A234102

/-- `A234099(n+1)+1` -/
def P1827764588803365079.Spec : Prop :=
  ∀ n, P1827764588803365079.a n = A234102 (n + 1)

theorem P1827764588803365079.correct : P1827764588803365079.Spec := by
  intro n
  simp only [A234102, Nat.add_sub_cancel]

end A234102

/-! ## A234102.P5551004561728852710

`(A046389(n+1)+1)/2`
-/

namespace A234102.P5551004561728852710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046389 (n + 1) + 1 : ℚ) / 2

end

end A234102.P5551004561728852710

namespace A234102

/-- `(A046389(n+1)+1)/2` -/
def P5551004561728852710.Spec : Prop :=
  ∀ n, P5551004561728852710.a n = (A234102 (n + 1) : ℚ)

end A234102

/-! ## A234102.P8470455062994890449

`ceil(A046389(n+1)/2)`
-/

namespace A234102.P8470455062994890449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046389 (n + 1) : ℚ) / 2⌉

end

end A234102.P8470455062994890449

namespace A234102

/-- `ceil(A046389(n+1)/2)` -/
def P8470455062994890449.Spec : Prop :=
  ∀ n, P8470455062994890449.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P11468406620056021631

`eq[1, A354926(2*n+1)]+1`
-/

namespace A234102.P11468406620056021631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234102.P11468406620056021631

namespace A234102

/-- `eq[1, A354926(2*n+1)]+1` -/
def P11468406620056021631.Spec : Prop :=
  ∀ n, (P11468406620056021631.a n : ℤ) = A234102 (n + 1)

end A234102

/-! ## A234102.P5515312103456591778

`A273943(A046389(n+1)+1)`
-/

namespace A234102.P5515312103456591778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046389 (n + 1) + 1).toNat

end

end A234102.P5515312103456591778

namespace A234102

/-- `A273943(A046389(n+1)+1)` -/
def P5515312103456591778.Spec : Prop :=
  ∀ n, P5515312103456591778.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P10051642530409517240

`eq[4, A352063(A352063(n))]+1`
-/

namespace A234102.P10051642530409517240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (A352063 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234102.P10051642530409517240

namespace A234102

/-- `eq[4, A352063(A352063(n))]+1` -/
def P10051642530409517240.Spec : Prop :=
  ∀ n, (P10051642530409517240.a n : ℤ) = A234102 (n + 1)

end A234102

/-! ## A234102.P797048204790287483

`record[A330755(A046386(n+1))]`
-/

namespace A234102.P797048204790287483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (A046386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234102.P797048204790287483

namespace A234102

/-- `record[A330755(A046386(n+1))]` -/
def P797048204790287483.Spec : Prop :=
  ∀ n, P797048204790287483.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P16132982820977353691

`A011760(A234099(n+1))`
-/

namespace A234102.P16132982820977353691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A234099 (n + 1)).toNat

end

end A234102.P16132982820977353691

namespace A234102

/-- `A011760(A234099(n+1))` -/
def P16132982820977353691.Spec : Prop :=
  ∀ n, P16132982820977353691.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P14474645313211996417

`eq[A040210(n), A278223(n+1)]+1`
-/

namespace A234102.P14474645313211996417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234102.P14474645313211996417

namespace A234102

/-- `eq[A040210(n), A278223(n+1)]+1` -/
def P14474645313211996417.Spec : Prop :=
  ∀ n, (P14474645313211996417.a n : ℤ) = A234102 (n + 1)

end A234102

/-! ## A234102.P3845941342252284991

`eq[A099592(n+2), A278223(n+1)]+1`
-/

namespace A234102.P3845941342252284991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099592 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234102.P3845941342252284991

namespace A234102

/-- `eq[A099592(n+2), A278223(n+1)]+1` -/
def P3845941342252284991.Spec : Prop :=
  ∀ n, (P3845941342252284991.a n : ℤ) = A234102 (n + 1)

end A234102

/-! ## A234102.P7842920937066674780

`A000463(A046389(n+1))`
-/

namespace A234102.P7842920937066674780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A046389 (n + 1)).toNat

end

end A234102.P7842920937066674780

namespace A234102

/-- `A000463(A046389(n+1))` -/
def P7842920937066674780.Spec : Prop :=
  ∀ n, P7842920937066674780.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P7289373688961249754

`A235800(A046389(n+1)+1)`
-/

namespace A234102.P7289373688961249754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235800 (A046389 (n + 1) + 1).toNat

end

end A234102.P7289373688961249754

namespace A234102

/-- `A235800(A046389(n+1)+1)` -/
def P7289373688961249754.Spec : Prop :=
  ∀ n, P7289373688961249754.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P11762264846089811581

`A004524(A046389(n+1)+2)`
-/

namespace A234102.P11762264846089811581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A046389 (n + 1) + 2).toNat

end

end A234102.P11762264846089811581

namespace A234102

/-- `A004524(A046389(n+1)+2)` -/
def P11762264846089811581.Spec : Prop :=
  ∀ n, P11762264846089811581.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P10044852996991116918

`A057979(A046389(n+1)+2)`
-/

namespace A234102.P10044852996991116918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A046389 (n + 1) + 2).toNat

end

end A234102.P10044852996991116918

namespace A234102

/-- `A057979(A046389(n+1)+2)` -/
def P10044852996991116918.Spec : Prop :=
  ∀ n, P10044852996991116918.a n = A234102 (n + 1)

end A234102

/-! ## A234102.P9456397510224519383

`A213633(A046389(n+1)+2)`
-/

namespace A234102.P9456397510224519383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (A046389 (n + 1) + 2).toNat

end

end A234102.P9456397510224519383

namespace A234102

/-- `A213633(A046389(n+1)+2)` -/
def P9456397510224519383.Spec : Prop :=
  ∀ n, P9456397510224519383.a n = A234102 (n + 1)

end A234102

/-!
# A234103: Products p*q*r of distinct primes for which (p*q*r + 1)/2 is prime.

The programs for A234103, there is no canonical definition to state claims against.
-/

/-! ## A234103.P4501805855331892554

`2*A234104(n+1)-1`
-/

namespace A234103.P4501805855331892554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234104 (n + 1) - 1

end

end A234103.P4501805855331892554

/-! ## A234103.P8551705123471191429

`2*p?[A234102(n+1)]-1`
-/

namespace A234103.P8551705123471191429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A234103.P8551705123471191429

/-! ## A234103.P3007217469259732383

`A004273(A234104(n+1))`
-/

namespace A234103.P3007217469259732383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A234104 (n + 1)).toNat

end

end A234103.P3007217469259732383

/-! ## A234103.P9036269334538690414

`A042948(p?[A234104(n+1)])`
-/

namespace A234103.P9036269334538690414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234103.P9036269334538690414

/-! ## A234103.P4871819697967193158

`A060747(p?[A234104(n+1)])`
-/

namespace A234103.P4871819697967193158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234103.P4871819697967193158

/-!
# A234104: Primes of the form (p*q*r + 1)/2, where p, q, r are distinct primes.

The programs for A234104, the canonical program `A234104.P3107958626754215840` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234104 has offset 1).

The definition of A234104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234104.P3107958626754215840

`p?[A234102(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A234104

/-- `p?[A234102(n+1)]` -/
def P3107958626754215840.Spec : Prop :=
  ∀ n, P3107958626754215840.a n = A234104 (n + 1)

theorem P3107958626754215840.correct : P3107958626754215840.Spec := by
  intro n
  simp only [A234104, Nat.add_sub_cancel]

end A234104

/-! ## A234104.P18394392898061059358

`p?[A234099(n+1)+1]`
-/

namespace A234104.P18394392898061059358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234104.P18394392898061059358

namespace A234104

/-- `p?[A234099(n+1)+1]` -/
def P18394392898061059358.Spec : Prop :=
  ∀ n, P18394392898061059358.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P15589733004677012317

`filter[A234102(n+1), A010051(#)]`
-/

namespace A234104.P15589733004677012317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234104.P15589733004677012317

namespace A234104

/-- `filter[A234102(n+1), A010051(#)]` -/
def P15589733004677012317.Spec : Prop :=
  ∀ n, P15589733004677012317.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P12535399350800276044

`filter[A234102(n+1), A323152(#)]`
-/

namespace A234104.P12535399350800276044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A234104.P12535399350800276044

namespace A234104

/-- `filter[A234102(n+1), A323152(#)]` -/
def P12535399350800276044.Spec : Prop :=
  ∀ n, P12535399350800276044.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P17666132645048411738

`filter[A234102(n+1), A323153(#)]`
-/

namespace A234104.P17666132645048411738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A234104.P17666132645048411738

namespace A234104

/-- `filter[A234102(n+1), A323153(#)]` -/
def P17666132645048411738.Spec : Prop :=
  ∀ n, P17666132645048411738.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P3429866147141447555

`record[A006530(A046389(n+1)+1)]`
-/

namespace A234104.P3429866147141447555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046389 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234104.P3429866147141447555

namespace A234104

/-- `record[A006530(A046389(n+1)+1)]` -/
def P3429866147141447555.Spec : Prop :=
  ∀ n, P3429866147141447555.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P13287851956083548189

`p?[A273943(A046389(n+1)+1)]`
-/

namespace A234104.P13287851956083548189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046389 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234104.P13287851956083548189

namespace A234104

/-- `p?[A273943(A046389(n+1)+1)]` -/
def P13287851956083548189.Spec : Prop :=
  ∀ n, P13287851956083548189.a n = A234104 (n + 1)

end A234104

/-! ## A234104.P6903593229859439794

`∩[A000040(n+1), A234102(n+1)]`
-/

namespace A234104.P6903593229859439794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P6903593229859439794

namespace A234104

/-- `∩[A000040(n+1), A234102(n+1)]` -/
def P6903593229859439794.Spec : Prop :=
  ∀ n, (P6903593229859439794.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P13489228284928399966

`∩[A004139(n+1), A234102(n+1)]`
-/

namespace A234104.P13489228284928399966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P13489228284928399966

namespace A234104

/-- `∩[A004139(n+1), A234102(n+1)]` -/
def P13489228284928399966.Spec : Prop :=
  ∀ n, (P13489228284928399966.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P10201869983865874356

`∩[A006005(n+1), A234102(n+1)]`
-/

namespace A234104.P10201869983865874356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P10201869983865874356

namespace A234104

/-- `∩[A006005(n+1), A234102(n+1)]` -/
def P10201869983865874356.Spec : Prop :=
  ∀ n, (P10201869983865874356.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P11979398612242001652

`∩[A008578(n+1), A234102(n+1)]`
-/

namespace A234104.P11979398612242001652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P11979398612242001652

namespace A234104

/-- `∩[A008578(n+1), A234102(n+1)]` -/
def P11979398612242001652.Spec : Prop :=
  ∀ n, (P11979398612242001652.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P5682747406101420270

`∩[A033946(n+1), A234102(n+1)]`
-/

namespace A234104.P5682747406101420270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P5682747406101420270

namespace A234104

/-- `∩[A033946(n+1), A234102(n+1)]` -/
def P5682747406101420270.Spec : Prop :=
  ∀ n, (P5682747406101420270.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P16239639858956119937

`∩[A045319(n+1), A234102(n+1)]`
-/

namespace A234104.P16239639858956119937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P16239639858956119937

namespace A234104

/-- `∩[A045319(n+1), A234102(n+1)]` -/
def P16239639858956119937.Spec : Prop :=
  ∀ n, (P16239639858956119937.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P9284734129851134716

`∩[A045344(n+1), A234102(n+1)]`
-/

namespace A234104.P9284734129851134716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P9284734129851134716

namespace A234104

/-- `∩[A045344(n+1), A234102(n+1)]` -/
def P9284734129851134716.Spec : Prop :=
  ∀ n, (P9284734129851134716.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P2088221912202923472

`∩[A046022(n+1), A234102(n+1)]`
-/

namespace A234104.P2088221912202923472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P2088221912202923472

namespace A234104

/-- `∩[A046022(n+1), A234102(n+1)]` -/
def P2088221912202923472.Spec : Prop :=
  ∀ n, (P2088221912202923472.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P2181456722391840919

`∩[A051948(n+1), A234102(n+1)]`
-/

namespace A234104.P2181456722391840919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P2181456722391840919

namespace A234104

/-- `∩[A051948(n+1), A234102(n+1)]` -/
def P2181456722391840919.Spec : Prop :=
  ∀ n, (P2181456722391840919.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P7856290351427280989

`∩[A053813(n+1), A234102(n+1)]`
-/

namespace A234104.P7856290351427280989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P7856290351427280989

namespace A234104

/-- `∩[A053813(n+1), A234102(n+1)]` -/
def P7856290351427280989.Spec : Prop :=
  ∀ n, (P7856290351427280989.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P9878967172040446878

`∩[A062972(n+1), A234102(n+1)]`
-/

namespace A234104.P9878967172040446878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P9878967172040446878

namespace A234104

/-- `∩[A062972(n+1), A234102(n+1)]` -/
def P9878967172040446878.Spec : Prop :=
  ∀ n, (P9878967172040446878.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P7649453346197866918

`∩[A065091(n+1), A234102(n+1)]`
-/

namespace A234104.P7649453346197866918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P7649453346197866918

namespace A234104

/-- `∩[A065091(n+1), A234102(n+1)]` -/
def P7649453346197866918.Spec : Prop :=
  ∀ n, (P7649453346197866918.a n : ℤ) = A234104 (n + 1)

end A234104

/-! ## A234104.P8583672343627111876

`∩[A065376(n+1), A234102(n+1)]`
-/

namespace A234104.P8583672343627111876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234104.P8583672343627111876

namespace A234104

/-- `∩[A065376(n+1), A234102(n+1)]` -/
def P8583672343627111876.Spec : Prop :=
  ∀ n, (P8583672343627111876.a n : ℤ) = A234104 (n + 1)

end A234104

/-!
# A234105: Integers of the form (p*q*r*s - 1)/2, where p, q, r, s are distinct primes.

The programs for A234105, there is no canonical definition to state claims against.
-/

/-! ## A234105.P5543444682138904601

`A234500(n+1)-1`
-/

namespace A234105.P5543444682138904601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1) - 1

end

end A234105.P5543444682138904601

/-! ## A234105.P10525687407238697717

`floor(A046390(n+1)/2)`
-/

namespace A234105.P10525687407238697717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046390 (n + 1) : ℚ) / 2⌋

end

end A234105.P10525687407238697717

/-! ## A234105.P1678063330826587242

`floor(A046387(n+1)/4)`
-/

namespace A234105.P1678063330826587242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046387 (n + 1) : ℚ) / 4⌋

end

end A234105.P1678063330826587242

/-! ## A234105.P14483898683277337993

`A004524(A046390(n+1))`
-/

namespace A234105.P14483898683277337993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A046390 (n + 1)).toNat

end

end A234105.P14483898683277337993

/-! ## A234105.P13615443418752853960

`A023443(A234500(n+1))`
-/

namespace A234105.P13615443418752853960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A234500 (n + 1)).toNat

end

end A234105.P13615443418752853960

/-!
# A234106: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234106, there is no canonical definition to state claims against.
-/

/-! ## A234106.P1501005519759017569

`A234114(∑[4*n]+1)`
-/

namespace A234106.P1501005519759017569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234106.P1501005519759017569

/-! ## A234106.P5678765682983029002

`lcm(2, A234114(A001844(n)))`
-/

namespace A234106.P5678765682983029002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234114 (A001844 n).toNat)

end

end A234106.P5678765682983029002

/-! ## A234106.P18324057576821482058

`record[A003982(n)*A234114(n+1)]`
-/

namespace A234106.P18324057576821482058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234106.P18324057576821482058

/-! ## A234106.P9148833820309769856

`record[root(A234114(n+1), A027420(n))]`
-/

namespace A234106.P9148833820309769856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234114 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234106.P9148833820309769856

/-!
# A234107: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234107, there is no canonical definition to state claims against.
-/

/-! ## A234107.P7700229935958220565

`A234114(∑[n]+1)`
-/

namespace A234107.P7700229935958220565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234107.P7700229935958220565

/-! ## A234107.P2551262636471850709

`lcm(2, A234114(A000124(n)))`
-/

namespace A234107.P2551262636471850709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234114 (A000124 n).toNat)

end

end A234107.P2551262636471850709

/-! ## A234107.P17462314263713922915

`record[A234114(A114091(n+1))]`
-/

namespace A234107.P17462314263713922915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234107.P17462314263713922915

/-! ## A234107.P8018662688692009968

`record[A234114(A249742(n+1))]`
-/

namespace A234107.P8018662688692009968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234107.P8018662688692009968

/-! ## A234107.P1845854650533120521

`record[A234114(A254052(n+1))]`
-/

namespace A234107.P1845854650533120521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234107.P1845854650533120521

/-!
# A234108: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234108, there is no canonical definition to state claims against.
-/

/-! ## A234108.P4226068768559609494

`A234114(∑[n+1]+2)`
-/

namespace A234108.P4226068768559609494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234108.P4226068768559609494

/-! ## A234108.P5374087968800323437

`lcm(2, A234114(A133263(n+1)))`
-/

namespace A234108.P5374087968800323437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234114 (A133263 (n + 1)).toNat)

end

end A234108.P5374087968800323437

/-! ## A234108.P12495328100457337344

`record[A234114(A114091(n+1)+1)]`
-/

namespace A234108.P12495328100457337344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234108.P12495328100457337344

/-! ## A234108.P1756620894531960054

`record[A234114(A286238(n+1)+1)]`
-/

namespace A234108.P1756620894531960054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A286238 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234108.P1756620894531960054

/-! ## A234108.P6560666873420113860

`record[A010054(n)*A234114(n+2)]`
-/

namespace A234108.P6560666873420113860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234108.P6560666873420113860

/-!
# A234109: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234109, there is no canonical definition to state claims against.
-/

/-! ## A234109.P12655409626537080017

`A234114(∑[n+2]+4)`
-/

namespace A234109.P12655409626537080017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234109.P12655409626537080017

/-! ## A234109.P1681391824375104290

`lcm(2, A234114(A167614(n+1)))`
-/

namespace A234109.P1681391824375104290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234114 (A167614 (n + 1)).toNat)

end

end A234109.P1681391824375104290

/-! ## A234109.P3770876710496748219

`record[A234114(n+4)/A125906(n)]`
-/

namespace A234109.P3770876710496748219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234114 (n + 4) : ℚ) / (A125906 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234109.P3770876710496748219

/-! ## A234109.P8258984696282165374

`A234114(A167614(n+1))+A025439(n)`
-/

namespace A234109.P8258984696282165374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A167614 (n + 1)).toNat + A025439 n

end

end A234109.P8258984696282165374

/-! ## A234109.P5057177292426640694

`A234114(A167614(n+1))+A067157(n)`
-/

namespace A234109.P5057177292426640694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A234109.P5057177292426640694

/-!
# A234110: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234110, there is no canonical definition to state claims against.
-/

/-! ## A234110.P7614151980000519078

`A234114(A374004(n+1))`
-/

namespace A234110.P7614151980000519078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A374004 (n + 1)).toNat

end

end A234110.P7614151980000519078

/-! ## A234110.P2029921703471936578

`A234114(A141214(n)+7)`
-/

namespace A234110.P2029921703471936578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A141214 n + 7).toNat

end

end A234110.P2029921703471936578

/-! ## A234110.P18006331932090105318

`A234114(A052905(n)+9)`
-/

namespace A234110.P18006331932090105318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A052905 n + 9).toNat

end

end A234110.P18006331932090105318

/-! ## A234110.P15896154542847574490

`A234114(A055999(n)+10)`
-/

namespace A234110.P15896154542847574490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A055999 n + 10).toNat

end

end A234110.P15896154542847574490

/-! ## A234110.P9351895678656985115

`A234114(eq[5, A066657(n)])`
-/

namespace A234110.P9351895678656985115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234110.P9351895678656985115

/-!
# A234111: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234111, there is no canonical definition to state claims against.
-/

/-! ## A234111.P13431052138436006914

`A234114(A374005(n+1))`
-/

namespace A234111.P13431052138436006914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A374005 (n + 1)).toNat

end

end A234111.P13431052138436006914

/-! ## A234111.P7492569048601551629

`A234114(A167499(n+3))`
-/

namespace A234111.P7492569048601551629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A167499 (n + 3)).toNat

end

end A234111.P7492569048601551629

/-! ## A234111.P18193652700980225427

`A234114(A155212(n)+13)`
-/

namespace A234111.P18193652700980225427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A155212 n + 13).toNat

end

end A234111.P18193652700980225427

/-! ## A234111.P17820064115422180878

`A234114(A056000(n)+15)`
-/

namespace A234111.P17820064115422180878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A056000 n + 15).toNat

end

end A234111.P17820064115422180878

/-! ## A234111.P5497838658845276880

`A234114(eq[7, A066657(n)])`
-/

namespace A234111.P5497838658845276880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234111.P5497838658845276880

/-!
# A234112: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234112, there is no canonical definition to state claims against.
-/

/-! ## A234112.P8056097480377080693

`A234114(A374007(n+1))`
-/

namespace A234112.P8056097480377080693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A374007 (n + 1)).toNat

end

end A234112.P8056097480377080693

/-! ## A234112.P3848842623521608846

`A234114(A166136(n+4))`
-/

namespace A234112.P3848842623521608846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A166136 (n + 4)).toNat

end

end A234112.P3848842623521608846

/-! ## A234112.P16382006625609305913

`A234114(A056115(n)+21)`
-/

namespace A234112.P16382006625609305913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A056115 n + 21).toNat

end

end A234112.P16382006625609305913

/-! ## A234112.P3455083226053670413

`A234114(A167614(n+4)+3)`
-/

namespace A234112.P3455083226053670413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A167614 (n + 4) + 3).toNat

end

end A234112.P3455083226053670413

/-! ## A234112.P9207765883534779044

`A234114(A133263(n+5)+4)`
-/

namespace A234112.P9207765883534779044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A133263 (n + 5) + 4).toNat

end

end A234112.P9207765883534779044

/-!
# A234113: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 12.

The programs for A234113, there is no canonical definition to state claims against.
-/

/-! ## A234113.P3702002634563624338

`A234114(∑[n+7]+21-n)`
-/

namespace A234113.P3702002634563624338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A234113.P3702002634563624338

/-! ## A234113.P12320356710727077766

`A234114(A055999(n+4))+A219055(n+1)`
-/

namespace A234113.P12320356710727077766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234114 (A055999 (n + 4)).toNat + A219055 (n + 1)

end

end A234113.P12320356710727077766

/-! ## A234113.P15899008752318130925

`A234114(A055999(n+4))%A332179(n+3)`
-/

namespace A234113.P15899008752318130925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234114 (A055999 (n + 4)).toNat) (A332179 (n + 3))

end

end A234113.P15899008752318130925

/-!
# A234115: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234115, there is no canonical definition to state claims against.
-/

/-! ## A234115.P8039047191840861375

`A234122((n+1)²+n²)`
-/

namespace A234115.P8039047191840861375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 ((n + 1) ^ 2 + n ^ 2)

end

end A234115.P8039047191840861375

/-! ## A234115.P13814897425069257937

`A234122(A001844(n))^A296554(n+1)`
-/

namespace A234115.P13814897425069257937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234122 (A001844 n).toNat : ℚ) ^ (A296554 (n + 1) : ℤ)

end

end A234115.P13814897425069257937

/-!
# A234116: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234116, there is no canonical definition to state claims against.
-/

/-! ## A234116.P296412591987372143

`A234122(∑[n+1]+2)`
-/

namespace A234116.P296412591987372143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234116.P296412591987372143

/-! ## A234116.P15741642595158010438

`record[A010054(n)*A234122(n+2)]`
-/

namespace A234116.P15741642595158010438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234116.P15741642595158010438

/-! ## A234116.P10794925369305272465

`record[root(A234122(n+2), A059268(n))]`
-/

namespace A234116.P10794925369305272465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234122 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234116.P10794925369305272465

/-! ## A234116.P11050067116667762420

`record[gcd(A002262(n), A234122(n+2))]`
-/

namespace A234116.P11050067116667762420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234122 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234116.P11050067116667762420

/-! ## A234116.P17327500598555611287

`record[A234122(Δ[A003453(n+5)])]`
-/

namespace A234116.P17327500598555611287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234116.P17327500598555611287

/-!
# A234117: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234117, there is no canonical definition to state claims against.
-/

/-! ## A234117.P9741478458212426823

`A234122(∑[n+2]+4)`
-/

namespace A234117.P9741478458212426823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234117.P9741478458212426823

/-! ## A234117.P7110495471735499705

`or(1, A234122(A167614(n+1)))`
-/

namespace A234117.P7110495471735499705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234122 (A167614 (n + 1)).toNat)

end

end A234117.P7110495471735499705

/-! ## A234117.P17628696670789920610

`A234122(A167614(n+1))%A234118(n+1)`
-/

namespace A234117.P17628696670789920610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234122 (A167614 (n + 1)).toNat) (A234118 (n + 1))

end

end A234117.P17628696670789920610

/-! ## A234117.P12257031998034581047

`A234122(A167614(n+1))+A000007(A260158(n))`
-/

namespace A234117.P12257031998034581047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A167614 (n + 1)).toNat + A000007 (A260158 n).toNat

end

end A234117.P12257031998034581047

/-! ## A234117.P16420140784961494265

`or(1, A234122(Δ[A008778(n)]))`
-/

namespace A234117.P16420140784961494265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234122 (f1 (n + 1) - f1 n).toNat)

end

end A234117.P16420140784961494265

/-!
# A234118: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234118, there is no canonical definition to state claims against.
-/

/-! ## A234118.P12758285027347943005

`A234122(A374004(n+1))`
-/

namespace A234118.P12758285027347943005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A374004 (n + 1)).toNat

end

end A234118.P12758285027347943005

/-! ## A234118.P5838041948290464324

`A234122(A052905(n)+9)`
-/

namespace A234118.P5838041948290464324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A052905 n + 9).toNat

end

end A234118.P5838041948290464324

/-! ## A234118.P4542885341940943261

`A234122(A055999(n)+10)`
-/

namespace A234118.P4542885341940943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A055999 n + 10).toNat

end

end A234118.P4542885341940943261

/-! ## A234118.P6025312187536384456

`A234122(A167614(n+2)+1)`
-/

namespace A234118.P6025312187536384456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A167614 (n + 2) + 1).toNat

end

end A234118.P6025312187536384456

/-! ## A234118.P11264397264804124370

`A234122(A000217(n+3)+4)`
-/

namespace A234118.P11264397264804124370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A000217 (n + 3) + 4).toNat

end

end A234118.P11264397264804124370

/-!
# A234119: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234119, there is no canonical definition to state claims against.
-/

/-! ## A234119.P3581234757444614933

`A234122(A374005(n+1))`
-/

namespace A234119.P3581234757444614933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A374005 (n + 1)).toNat

end

end A234119.P3581234757444614933

/-! ## A234119.P5823268906655814400

`A234122(A155212(n)+13)`
-/

namespace A234119.P5823268906655814400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A155212 n + 13).toNat

end

end A234119.P5823268906655814400

/-! ## A234119.P2988607274836790099

`A234122(A056000(n)+15)`
-/

namespace A234119.P2988607274836790099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A056000 n + 15).toNat

end

end A234119.P2988607274836790099

/-! ## A234119.P3901923196504068907

`A234122(eq[8, A140996(n)])`
-/

namespace A234119.P3901923196504068907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234119.P3901923196504068907

/-! ## A234119.P15778785490906695482

`A234122(Δ[A023545(n+1)])`
-/

namespace A234119.P15778785490906695482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (f1 (n + 1) - f1 n).toNat

end

end A234119.P15778785490906695482

/-!
# A234120: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234120, there is no canonical definition to state claims against.
-/

/-! ## A234120.P6604777290278753615

`A234122(A374007(n+1))`
-/

namespace A234120.P6604777290278753615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A374007 (n + 1)).toNat

end

end A234120.P6604777290278753615

/-! ## A234120.P6064774827034958389

`A234122(eq[3, A219347(n)])`
-/

namespace A234120.P6064774827034958389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234120.P6064774827034958389

/-!
# A234121: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234121, there is no canonical definition to state claims against.
-/

/-! ## A234121.P1260015398674821596

`A234122(A374008(n+1))`
-/

namespace A234121.P1260015398674821596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (A374008 (n + 1)).toNat

end

end A234121.P1260015398674821596

/-! ## A234121.P9803098271310887360

`A234122(eq[4, A219347(n)])`
-/

namespace A234121.P9803098271310887360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234121.P9803098271310887360

/-!
# A234122: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234122, there is no canonical definition to state claims against.
-/

/-! ## A234122.P12692980297687285295

`2*A001281(A234184(n+1)+A234161(n+1))-A234131(n+1)`
-/

namespace A234122.P12692980297687285295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001281 (A234184 (n + 1) + A234161 (n + 1)).toNat - A234131 (n + 1)

end

end A234122.P12692980297687285295

/-! ## A234122.P18109587634288224466

`2*A234036(n+1)-A001281(A234421(n+1)+A234184(n+1))`
-/

namespace A234122.P18109587634288224466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234036 (n + 1) - A001281 (A234421 (n + 1) + A234184 (n + 1)).toNat

end

end A234122.P18109587634288224466

/-!
# A234123: Number of (n+1)X(n+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234123, there is no canonical definition to state claims against.
-/

/-! ## A234123.P5674113044543983774

`A234131((n+1)²+n²)`
-/

namespace A234123.P5674113044543983774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 ((n + 1) ^ 2 + n ^ 2)

end

end A234123.P5674113044543983774

/-!
# A234124: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234124, there is no canonical definition to state claims against.
-/

/-! ## A234124.P11360323693542677814

`A234131(∑[n]+1)`
-/

namespace A234124.P11360323693542677814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234124.P11360323693542677814

/-! ## A234124.P4275594030877815973

`or(1, A234131(A000124(n)))`
-/

namespace A234124.P4275594030877815973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234131 (A000124 n).toNat)

end

end A234124.P4275594030877815973

/-! ## A234124.P980551395215740128

`record[root(A234131(n+1), A002260(n+1))]`
-/

namespace A234124.P980551395215740128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234131 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234124.P980551395215740128

/-! ## A234124.P14733675705967019233

`A234131(A000124(n))+A185284(n)`
-/

namespace A234124.P14733675705967019233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A000124 n).toNat + A185284 n

end

end A234124.P14733675705967019233

/-! ## A234124.P10598795928659963459

`record[gcd(A234131(n+1), A281205(n+1))]`
-/

namespace A234124.P10598795928659963459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234131 (n + 1)) (A281205 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234124.P10598795928659963459

/-!
# A234125: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234125, there is no canonical definition to state claims against.
-/

/-! ## A234125.P4373109197576822984

`A234131(∑[n+1]+2)`
-/

namespace A234125.P4373109197576822984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234125.P4373109197576822984

/-! ## A234125.P3476510895350969214

`record[A234131(A347629(n+1)+1)]`
-/

namespace A234125.P3476510895350969214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A347629 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234125.P3476510895350969214

/-! ## A234125.P13112902840912945851

`A234131(A000096(n)+3)%A209847(n+1)`
-/

namespace A234125.P13112902840912945851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234131 (A000096 n + 3).toNat) (A209847 (n + 1))

end

end A234125.P13112902840912945851

/-! ## A234125.P10970959715860199920

`record[A234131(Δ[A003453(n+5)])]`
-/

namespace A234125.P10970959715860199920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234125.P10970959715860199920

/-! ## A234125.P11325491504893991778

`record[A234131(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A234125.P11325491504893991778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234125.P11325491504893991778

/-!
# A234126: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234126, there is no canonical definition to state claims against.
-/

/-! ## A234126.P4177747465128798407

`A234131(∑[n+2]+4)`
-/

namespace A234126.P4177747465128798407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234126.P4177747465128798407

/-! ## A234126.P13356702039662210557

`or(1, A234131(A167614(n+1)))`
-/

namespace A234126.P13356702039662210557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234131 (A167614 (n + 1)).toNat)

end

end A234126.P13356702039662210557

/-! ## A234126.P10413184240862423479

`record[A234131(A347629(n+1)+2)]`
-/

namespace A234126.P10413184240862423479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A347629 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234126.P10413184240862423479

/-! ## A234126.P10582267996006329446

`A234131(A167614(n+1))+A178798(n)`
-/

namespace A234126.P10582267996006329446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A167614 (n + 1)).toNat + A178798 n

end

end A234126.P10582267996006329446

/-! ## A234126.P6378062448101199389

`lcm(A033999(n), A234131(A167614(n+1)))`
-/

namespace A234126.P6378062448101199389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A234131 (A167614 (n + 1)).toNat)

end

end A234126.P6378062448101199389

/-!
# A234127: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234127, there is no canonical definition to state claims against.
-/

/-! ## A234127.P3520225063015864350

`A234131(∑[n+3]+7)`
-/

namespace A234127.P3520225063015864350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234127.P3520225063015864350

/-! ## A234127.P16205037602277230589

`or(1, A234131(A141214(n)+7))`
-/

namespace A234127.P16205037602277230589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234131 (A141214 n + 7).toNat)

end

end A234127.P16205037602277230589

/-! ## A234127.P17153386725026342522

`A130794(3*n)*A234131(A141214(n+1))`
-/

namespace A234127.P17153386725026342522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130794 (3 * n) * A234131 (A141214 (n + 1)).toNat

end

end A234127.P17153386725026342522

/-! ## A234127.P16468857500311113716

`A234131(A141214(n+1))%A234128(n+1)`
-/

namespace A234127.P16468857500311113716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234131 (A141214 (n + 1)).toNat) (A234128 (n + 1))

end

end A234127.P16468857500311113716

/-! ## A234127.P9894228485316426635

`A234131(A055998(n+2))+A000038(3*n+2)`
-/

namespace A234127.P9894228485316426635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A055998 (n + 2)).toNat + A000038 (3 * n + 2)

end

end A234127.P9894228485316426635

/-!
# A234128: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234128, there is no canonical definition to state claims against.
-/

/-! ## A234128.P94630685994301074

`A234131(A374005(n+1))`
-/

namespace A234128.P94630685994301074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A374005 (n + 1)).toNat

end

end A234128.P94630685994301074

/-! ## A234128.P17557064074116250356

`A234131(eq[4, A193592(n)])`
-/

namespace A234128.P17557064074116250356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234128.P17557064074116250356

/-! ## A234128.P14862175858355480339

`A234131(Δ[A023545(n+1)])`
-/

namespace A234128.P14862175858355480339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (f1 (n + 1) - f1 n).toNat

end

end A234128.P14862175858355480339

/-!
# A234129: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234129, there is no canonical definition to state claims against.
-/

/-! ## A234129.P16467114389980133507

`A234131(A374007(n+1))`
-/

namespace A234129.P16467114389980133507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A374007 (n + 1)).toNat

end

end A234129.P16467114389980133507

/-! ## A234129.P3380623339240198597

`A234131(A056115(n)+21)`
-/

namespace A234129.P3380623339240198597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (A056115 n + 21).toNat

end

end A234129.P3380623339240198597

/-! ## A234129.P2244144377573610528

`A234131(eq[3, A219347(n)])`
-/

namespace A234129.P2244144377573610528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234129.P2244144377573610528

/-! ## A234129.P296894661910147205

`A234131(eq[5, A193592(n)])`
-/

namespace A234129.P296894661910147205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234129.P296894661910147205

/-! ## A234129.P10088414345772710416

`A234131(Δ[A026054(n+3)]+1)`
-/

namespace A234129.P10088414345772710416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (f1 (n + 1) - f1 n + 1).toNat

end

end A234129.P10088414345772710416

/-!
# A234130: 

The programs for A234130, there is no canonical definition to state claims against.
-/

/-! ## A234130.P13426530524377269780

`A234131(eq[4, A219347(n)])`
-/

namespace A234130.P13426530524377269780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234130.P13426530524377269780

/-! ## A234130.P12012743277195088225

`A234131(eq[6, A193592(n)])`
-/

namespace A234130.P12012743277195088225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234130.P12012743277195088225

/-! ## A234130.P16968089114186130400

`A234131(eq[6, A243060(n+1)])`
-/

namespace A234130.P16968089114186130400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234130.P16968089114186130400

/-!
# A234131: T(n,k)=Number of (n+1)X(k+1) 0..6 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234131, there is no canonical definition to state claims against.
-/

/-! ## A234131.P3788475538412803699

`A234184(n+1)+A060747(A209829(n+1))`
-/

namespace A234131.P3788475538412803699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) + A060747 (A209829 (n + 1)).toNat

end

end A234131.P3788475538412803699

/-! ## A234131.P2083859627169752932

`A234421(n+1)-A060747(A209829(n+1))`
-/

namespace A234131.P2083859627169752932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (n + 1) - A060747 (A209829 (n + 1)).toNat

end

end A234131.P2083859627169752932

/-! ## A234131.P1023299288625453370

`A000265((A234421(n+1)+A234184(n+1))/2)`
-/

namespace A234131.P1023299288625453370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A234421 (n + 1) + A234184 (n + 1) : ℚ) / 2)).toNat

end

end A234131.P1023299288625453370

/-! ## A234131.P17965249389980739164

`A234184(n+1)+A000265(A234421(n+1)-A234184(n+1))`
-/

namespace A234131.P17965249389980739164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) + A000265 (A234421 (n + 1) - A234184 (n + 1)).toNat

end

end A234131.P17965249389980739164

/-! ## A234131.P6481940933146953982

`A302032(A234421(n+1)-A234184(n+1))+A234184(n+1)`
-/

namespace A234131.P6481940933146953982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A234421 (n + 1) - A234184 (n + 1)).toNat + A234184 (n + 1)

end

end A234131.P6481940933146953982

/-!
# A234132: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234132, there is no canonical definition to state claims against.
-/

/-! ## A234132.P17492551403103379964

`A234140(∑[4*n]+1)`
-/

namespace A234132.P17492551403103379964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234132.P17492551403103379964

/-! ## A234132.P6784928210530549390

`lcm(2, A234140(A001844(n)))`
-/

namespace A234132.P6784928210530549390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234140 (A001844 n).toNat)

end

end A234132.P6784928210530549390

/-! ## A234132.P749640805548749342

`record[A003982(n)*A234140(n+1)]`
-/

namespace A234132.P749640805548749342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234132.P749640805548749342

/-! ## A234132.P11701639833042196604

`A234140(A001844(n))%A075962(n)`
-/

namespace A234132.P11701639833042196604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234140 (A001844 n).toNat) (A075962 n)

end

end A234132.P11701639833042196604

/-! ## A234132.P12454201576624704359

`and(-A007318(n), A234140(A001844(n)))`
-/

namespace A234132.P12454201576624704359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A234140 (A001844 n).toNat)

end

end A234132.P12454201576624704359

/-!
# A234133: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234133, the canonical program `A234133.P1732024437658432012` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234133 has offset 1).

The definition of A234133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234133.P1732024437658432012

`2*a(n-1)+8*a(n-2)-16*a(n-3)` with `a(0)=32, a(1)=80, a(2)=192`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A234133

/-- `2*a(n-1)+8*a(n-2)-16*a(n-3)` -/
def P1732024437658432012.Spec : Prop :=
  ∀ n, P1732024437658432012.a n = A234133 (n + 1)

theorem P1732024437658432012.correct : P1732024437658432012.Spec := by
  intro n
  simp only [A234133, Nat.add_sub_cancel]

end A234133

/-! ## A234133.P18186429854680228185

`2^(n+3)*A209722(n+1)`
-/

namespace A234133.P18186429854680228185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A209722 (n + 1)

end

end A234133.P18186429854680228185

namespace A234133

/-- `2^(n+3)*A209722(n+1)` -/
def P18186429854680228185.Spec : Prop :=
  ∀ n, P18186429854680228185.a n = A234133 (n + 1)

end A234133

/-! ## A234133.P9577374304631925402

`2^(n+2)*A209723(n+3)`
-/

namespace A234133.P9577374304631925402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) * A209723 (n + 3)

end

end A234133.P9577374304631925402

namespace A234133

/-- `2^(n+2)*A209723(n+3)` -/
def P9577374304631925402.Spec : Prop :=
  ∀ n, P9577374304631925402.a n = A234133 (n + 1)

end A234133

/-! ## A234133.P9064833449090438485

`(A090989(n+1)+4)*A020707(n)`
-/

namespace A234133.P9064833449090438485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 1) + 4) * A020707 n

end

end A234133.P9064833449090438485

namespace A234133

/-- `(A090989(n+1)+4)*A020707(n)` -/
def P9064833449090438485.Spec : Prop :=
  ∀ n, P9064833449090438485.a n = A234133 (n + 1)

end A234133

/-! ## A234133.P9330810944466165086

`8*A209722(n+1)*A000079(n)`
-/

namespace A234133.P9330810944466165086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A209722 (n + 1) * A000079 n

end

end A234133.P9330810944466165086

namespace A234133

/-- `8*A209722(n+1)*A000079(n)` -/
def P9330810944466165086.Spec : Prop :=
  ∀ n, P9330810944466165086.a n = A234133 (n + 1)

end A234133

/-! ## A234133.P7266462294600451199

`(A090989(n+1)+4)*A000079(n+2)`
-/

namespace A234133.P7266462294600451199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 1) + 4) * A000079 (n + 2)

end

end A234133.P7266462294600451199

namespace A234133

/-- `(A090989(n+1)+4)*A000079(n+2)` -/
def P7266462294600451199.Spec : Prop :=
  ∀ n, P7266462294600451199.a n = A234133 (n + 1)

end A234133

/-! ## A234133.P13071488121093394095

`(A090989(n+1)+4)*A090989(2*n+1)`
-/

namespace A234133.P13071488121093394095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 1) + 4) * A090989 (2 * n + 1)

end

end A234133.P13071488121093394095

namespace A234133

/-- `(A090989(n+1)+4)*A090989(2*n+1)` -/
def P13071488121093394095.Spec : Prop :=
  ∀ n, P13071488121093394095.a n = A234133 (n + 1)

end A234133

/-!
# A234134: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234134, there is no canonical definition to state claims against.
-/

/-! ## A234134.P5913402042124466657

`A234140(∑[n+1]+2)`
-/

namespace A234134.P5913402042124466657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234134.P5913402042124466657

/-! ## A234134.P7981022520135056732

`lcm(2, A234140(A133263(n+1)))`
-/

namespace A234134.P7981022520135056732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234140 (A133263 (n + 1)).toNat)

end

end A234134.P7981022520135056732

/-! ## A234134.P773107702850630575

`record[root(A234140(n+2), A059268(n))]`
-/

namespace A234134.P773107702850630575
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234140 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234134.P773107702850630575

/-! ## A234134.P6601898612964806935

`record[root(A234140(n+2), A002260(n+1))]`
-/

namespace A234134.P6601898612964806935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234140 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234134.P6601898612964806935

/-! ## A234134.P7560474439991679733

`A007318(∑[n])*A234140(A167487(n)-5)`
-/

namespace A234134.P7560474439991679733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234140 (A167487 n - 5).toNat

end

end A234134.P7560474439991679733

/-!
# A234135: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234135, there is no canonical definition to state claims against.
-/

/-! ## A234135.P17740690457756027300

`A234140(∑[n+2]+4)`
-/

namespace A234135.P17740690457756027300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234135.P17740690457756027300

/-! ## A234135.P14124122931335347300

`lcm(2, A234140(A167614(n+1)))`
-/

namespace A234135.P14124122931335347300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234140 (A167614 (n + 1)).toNat)

end

end A234135.P14124122931335347300

/-! ## A234135.P2194260690242848157

`record[A010054(n+1)*A234140(n+4)]`
-/

namespace A234135.P2194260690242848157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A234140 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234135.P2194260690242848157

/-! ## A234135.P1473309662475555158

`A234140(A167614(n+1))+A000007(n+2)`
-/

namespace A234135.P1473309662475555158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A167614 (n + 1)).toNat + A000007 (n + 2)

end

end A234135.P1473309662475555158

/-! ## A234135.P711772971704479979

`A234140(A167614(n+1))%A234136(n+1)`
-/

namespace A234135.P711772971704479979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234140 (A167614 (n + 1)).toNat) (A234136 (n + 1))

end

end A234135.P711772971704479979

/-!
# A234136: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234136, there is no canonical definition to state claims against.
-/

/-! ## A234136.P5006051004337883344

`A234140(∑[n+3]+7)`
-/

namespace A234136.P5006051004337883344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234136.P5006051004337883344

/-! ## A234136.P12748352976563692722

`A234140(A052905(n)+9)+A099892(3*n)`
-/

namespace A234136.P12748352976563692722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A052905 n + 9).toNat + A099892 (3 * n)

end

end A234136.P12748352976563692722

/-!
# A234137: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234137, there is no canonical definition to state claims against.
-/

/-! ## A234137.P5559857748053523938

`A234140(∑[n+6]+9-2*n)`
-/

namespace A234137.P5559857748053523938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A234137.P5559857748053523938

/-! ## A234137.P12270519704615017991

`lcm(2, A234140(A167487(n+3)-2))`
-/

namespace A234137.P12270519704615017991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234140 (A167487 (n + 3) - 2).toNat)

end

end A234137.P12270519704615017991

/-! ## A234137.P16895234165760300422

`A234140(A167487(n+3)-2)%A234139(n+3)`
-/

namespace A234137.P16895234165760300422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234140 (A167487 (n + 3) - 2).toNat) (A234139 (n + 3))

end

end A234137.P16895234165760300422

/-! ## A234137.P3723511868423980250

`A007318(C(2, n))*A234140(A167487(n+3)-2)`
-/

namespace A234137.P3723511868423980250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234140 (A167487 (n + 3) - 2).toNat

end

end A234137.P3723511868423980250

/-! ## A234137.P16258634516811535889

`A001222(A054815(n))*A234140(A167487(n+3)-2)`
-/

namespace A234137.P16258634516811535889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054815 n).toNat * A234140 (A167487 (n + 3) - 2).toNat

end

end A234137.P16258634516811535889

/-!
# A234138: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234138, there is no canonical definition to state claims against.
-/

/-! ## A234138.P18273076013802392168

`A234140(∑[n+5]+16)`
-/

namespace A234138.P18273076013802392168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A234138.P18273076013802392168

/-! ## A234138.P1129432312170073661

`lcm(2, A234140(A167499(n+4)+1))`
-/

namespace A234138.P1129432312170073661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234140 (A167499 (n + 4) + 1).toNat)

end

end A234138.P1129432312170073661

/-! ## A234138.P607197358827009407

`A007318(C(2, n))*A234140(A167499(n+4)+1)`
-/

namespace A234138.P607197358827009407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234140 (A167499 (n + 4) + 1).toNat

end

end A234138.P607197358827009407

/-! ## A234138.P14681107163312378264

`(A000041(n)%2)!*A234140(A167499(n+4)+1)`
-/

namespace A234138.P14681107163312378264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A234140 (A167499 (n + 4) + 1).toNat

end

end A234138.P14681107163312378264

/-! ## A234138.P5768865947840164487

`A000108(C(2, n+2))*A234140(A167499(n+4)+1)`
-/

namespace A234138.P5768865947840164487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A234140 (A167499 (n + 4) + 1).toNat

end

end A234138.P5768865947840164487

/-!
# A234139: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 9.

The programs for A234139, there is no canonical definition to state claims against.
-/

/-! ## A234139.P10447216182603116766

`A234140(A374008(n+1))`
-/

namespace A234139.P10447216182603116766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A374008 (n + 1)).toNat

end

end A234139.P10447216182603116766

/-! ## A234139.P5512823159953939319

`A234140(A056119(n)+28)`
-/

namespace A234139.P5512823159953939319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A056119 n + 28).toNat

end

end A234139.P5512823159953939319

/-! ## A234139.P10355532311082037382

`A234140(A167499(n+5)+2)`
-/

namespace A234139.P10355532311082037382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A167499 (n + 5) + 2).toNat

end

end A234139.P10355532311082037382

/-! ## A234139.P8286531221412165025

`A234140(A133263(n+6)+5)`
-/

namespace A234139.P8286531221412165025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A133263 (n + 6) + 5).toNat

end

end A234139.P8286531221412165025

/-! ## A234139.P12714198825983407738

`A234140(A000124(n+6)+6)`
-/

namespace A234139.P12714198825983407738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234140 (A000124 (n + 6) + 6).toNat

end

end A234139.P12714198825983407738

/-!
# A234141: Numbers k such that triangular(k) - m is a triangular number (A000217), where m is the largest square less than triangular(k).

The programs for A234141, there is no canonical definition to state claims against.
-/

/-! ## A234141.P5313083069897877948

`eq[1, A099375(A053186(∑[n]+n))]+1`
-/

namespace A234141.P5313083069897877948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A053186 (∑ j ∈ Finset.range (n + 1), f3 j + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234141.P5313083069897877948

/-!
# A234142: Numbers k such that m - triangular(k) is a triangular number (A000217), where m is the least square above triangular(k).

The programs for A234142, there is no canonical definition to state claims against.
-/

/-! ## A234142.P8574653098533356538

`eq[A063524(n), A084938(A175032(n))]`
-/

namespace A234142.P8574653098533356538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A175032 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234142.P8574653098533356538

/-! ## A234142.P2204309832092163226

`lt[A084938(A175032(n))*A103889(n+1), 2]`
-/

namespace A234142.P2204309832092163226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A175032 n).toNat * A103889 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A234142.P2204309832092163226

/-! ## A234142.P10290156316257485909

`record[A000007(n)+n/(A084938(A175032(n))+1)]`
-/

namespace A234142.P10290156316257485909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (n : ℚ) / (A084938 (A175032 n).toNat + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234142.P10290156316257485909

/-! ## A234142.P18170484982024261475

`record[A233583(n+1)/(A084938(A175032(n))+1)]`
-/

namespace A234142.P18170484982024261475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / (A084938 (A175032 n).toNat + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234142.P18170484982024261475

/-! ## A234142.P5372128967160821604

`lt[A006450(A232177(n)), A016825(n)]`
-/

namespace A234142.P5372128967160821604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A232177 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234142.P5372128967160821604

/-!
# A234143: Numbers k such that triangular(k) - x and y - triangular(k) are both triangular numbers (A000217), where x is the nearest square below triangular(k), y is the nearest square above triangular(k).

The programs for A234143, there is no canonical definition to state claims against.
-/

/-! ## A234143.P5067380133001303314

`∩[A234141(n+1), A234142(n+1)]`
-/

namespace A234143.P5067380133001303314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234143.P5067380133001303314

/-!
# A234145: a(n) = denominator of sum_(k=1..n) 1/(2*k-1)^n.

The programs for A234145, there is no canonical definition to state claims against.
-/

/-! ## A234145.P13494661714827771024

`A025547(round(sqrt(n²+1)))^n`
-/

namespace A234145.P13494661714827771024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat ^ n

end

end A234145.P13494661714827771024

/-! ## A234145.P14770545266371659241

`∏[A014963(∏{p}[2*n-1, #])]^n`
-/

namespace A234145.P14770545266371659241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A234145.P14770545266371659241

/-! ## A234145.P646182513003722085

`A116417(floor(4^n/3))^n`
-/

namespace A234145.P646182513003722085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 ⌊(4 ^ n : ℚ) / 3⌋.toNat ^ n

end

end A234145.P646182513003722085

/-!
# A234146: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234146, there is no canonical definition to state claims against.
-/

/-! ## A234146.P14418968208123219439

`A234152(∑[n]+1)`
-/

namespace A234146.P14418968208123219439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234146.P14418968208123219439

/-! ## A234146.P12242046899493405827

`lcm(2, A234152(A000124(n)))`
-/

namespace A234146.P12242046899493405827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234152 (A000124 n).toNat)

end

end A234146.P12242046899493405827

/-! ## A234146.P1595219135978426654

`record[A234152(n+1)/A156696(n)]`
-/

namespace A234146.P1595219135978426654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234152 (n + 1) : ℚ) / (A156696 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234146.P1595219135978426654

/-! ## A234146.P3574741548338352507

`record[root(A234152(n+1), A131238(n))]`
-/

namespace A234146.P3574741548338352507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234152 (n + 1) : ℝ) ^ (1 / (A131238 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234146.P3574741548338352507

/-! ## A234146.P414882862420808634

`record[gcd(A002262(n), A234152(n+1))]`
-/

namespace A234146.P414882862420808634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234146.P414882862420808634

/-!
# A234147: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234147, there is no canonical definition to state claims against.
-/

/-! ## A234147.P14959344892071170218

`A234152(∑[n+1]+2)`
-/

namespace A234147.P14959344892071170218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234147.P14959344892071170218

/-! ## A234147.P2254315781173948523

`record[gcd(A002262(n), A234152(n+2))]`
-/

namespace A234147.P2254315781173948523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234152 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234147.P2254315781173948523

/-! ## A234147.P6510528097307534668

`A234152(A133263(n+1))*A280865(n)`
-/

namespace A234147.P6510528097307534668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A133263 (n + 1)).toNat * A280865 n

end

end A234147.P6510528097307534668

/-! ## A234147.P10522818274874443129

`record[A234152(Δ[A003453(n+5)])]`
-/

namespace A234147.P10522818274874443129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234147.P10522818274874443129

/-! ## A234147.P5120308339219463307

`A033999(2*n)*A234152(A000096(n+1))`
-/

namespace A234147.P5120308339219463307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A234152 (A000096 (n + 1)).toNat

end

end A234147.P5120308339219463307

/-!
# A234148: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234148, there is no canonical definition to state claims against.
-/

/-! ## A234148.P17998735343076912100

`A234152(∑[n+2]+4)`
-/

namespace A234148.P17998735343076912100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234148.P17998735343076912100

/-! ## A234148.P3283132018457295480

`lcm(2, A234152(A167614(n+1)))`
-/

namespace A234148.P3283132018457295480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234152 (A167614 (n + 1)).toNat)

end

end A234148.P3283132018457295480

/-! ## A234148.P10769090936199293097

`A234152(A167614(n+1))+A184955(n)`
-/

namespace A234148.P10769090936199293097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A167614 (n + 1)).toNat + A184955 n

end

end A234148.P10769090936199293097

/-! ## A234148.P6131790340706766213

`A234152(A167614(n+1))+A185238(n)`
-/

namespace A234148.P6131790340706766213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A167614 (n + 1)).toNat + A185238 n

end

end A234148.P6131790340706766213

/-! ## A234148.P8983144437914100376

`A234152(A167614(n+1))+A185284(n)`
-/

namespace A234148.P8983144437914100376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A167614 (n + 1)).toNat + A185284 n

end

end A234148.P8983144437914100376

/-!
# A234149: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234149, there is no canonical definition to state claims against.
-/

/-! ## A234149.P10999744610098105739

`A234152(A374004(n+1))`
-/

namespace A234149.P10999744610098105739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A374004 (n + 1)).toNat

end

end A234149.P10999744610098105739

/-! ## A234149.P12995967028862685103

`A234152(A141214(n)+7)`
-/

namespace A234149.P12995967028862685103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A141214 n + 7).toNat

end

end A234149.P12995967028862685103

/-! ## A234149.P17711700371323854300

`A234152(A052905(n)+9)`
-/

namespace A234149.P17711700371323854300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A052905 n + 9).toNat

end

end A234149.P17711700371323854300

/-! ## A234149.P3903980241096094343

`A234152(A055999(n)+10)`
-/

namespace A234149.P3903980241096094343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A055999 n + 10).toNat

end

end A234149.P3903980241096094343

/-! ## A234149.P3252764248278394272

`A234152(A167614(n+2)+1)`
-/

namespace A234149.P3252764248278394272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A167614 (n + 2) + 1).toNat

end

end A234149.P3252764248278394272

/-!
# A234150: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234150, there is no canonical definition to state claims against.
-/

/-! ## A234150.P8987178622393050482

`A234152(A374005(n+1))`
-/

namespace A234150.P8987178622393050482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A374005 (n + 1)).toNat

end

end A234150.P8987178622393050482

/-! ## A234150.P13277250873759071200

`A234152(A046691(n+3))`
-/

namespace A234150.P13277250873759071200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A046691 (n + 3)).toNat

end

end A234150.P13277250873759071200

/-! ## A234150.P5791561849956218801

`A234152(Δ[A023545(n+1)])`
-/

namespace A234150.P5791561849956218801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (f1 (n + 1) - f1 n).toNat

end

end A234150.P5791561849956218801

/-! ## A234150.P9178864304827861608

`A234152(eq[5, A002262(n)]-9)`
-/

namespace A234150.P9178864304827861608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 9)

end

end A234150.P9178864304827861608

/-!
# A234151: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10 and no adjacent elements equal.

The programs for A234151, there is no canonical definition to state claims against.
-/

/-! ## A234151.P13917063633196725804

`A234152(A374007(n+1))`
-/

namespace A234151.P13917063633196725804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A374007 (n + 1)).toNat

end

end A234151.P13917063633196725804

/-! ## A234151.P4903723586136952378

`A234152(eq[5, A002262(n)]+1)`
-/

namespace A234151.P4903723586136952378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234151.P4903723586136952378

/-! ## A234151.P5448793344518447455

`A234152(A052905(n+3))`
-/

namespace A234151.P5448793344518447455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (A052905 (n + 3)).toNat

end

end A234151.P5448793344518447455

/-!
# A234153: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234153, there is no canonical definition to state claims against.
-/

/-! ## A234153.P10515807868151616713

`A234161((n+1)²+n²)`
-/

namespace A234153.P10515807868151616713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 ((n + 1) ^ 2 + n ^ 2)

end

end A234153.P10515807868151616713

/-!
# A234154: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234154, there is no canonical definition to state claims against.
-/

/-! ## A234154.P15082037011639328964

`A234161(∑[n]+1)`
-/

namespace A234154.P15082037011639328964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234154.P15082037011639328964

/-! ## A234154.P16283779683750997670

`lcm(2, A234161(A000124(n)))`
-/

namespace A234154.P16283779683750997670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234161 (A000124 n).toNat)

end

end A234154.P16283779683750997670

/-! ## A234154.P9986316333063496509

`record[A010054(n)*A234161(n+1)]`
-/

namespace A234154.P9986316333063496509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234154.P9986316333063496509

/-! ## A234154.P594728480204053808

`record[gcd(A004197(n), A234161(n+1))]`
-/

namespace A234154.P594728480204053808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A234161 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234154.P594728480204053808

/-! ## A234154.P12634501379216506979

`record[root(A234161(n+1), A200370(n+1))]`
-/

namespace A234154.P12634501379216506979
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234161 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234154.P12634501379216506979

/-!
# A234155: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234155, there is no canonical definition to state claims against.
-/

/-! ## A234155.P13756462088722190220

`A234161(∑[n+1]+2)`
-/

namespace A234155.P13756462088722190220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234155.P13756462088722190220

/-! ## A234155.P18325011184998114232

`record[root(A234161(n+2), A200370(n+1))]`
-/

namespace A234155.P18325011184998114232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234161 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234155.P18325011184998114232

/-! ## A234155.P5886514279087781268

`lcm(2, A234161(A000096(n+1)))`
-/

namespace A234155.P5886514279087781268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234161 (A000096 (n + 1)).toNat)

end

end A234155.P5886514279087781268

/-! ## A234155.P5624231559180069004

`record[A234161(Δ[A003453(n+5)])]`
-/

namespace A234155.P5624231559180069004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234155.P5624231559180069004

/-! ## A234155.P874321872303402117

`record[A234161(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A234155.P874321872303402117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234155.P874321872303402117

/-!
# A234156: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234156, there is no canonical definition to state claims against.
-/

/-! ## A234156.P6802940912783986938

`A234161(∑[n+2]+4)`
-/

namespace A234156.P6802940912783986938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234156.P6802940912783986938

/-! ## A234156.P1480057169799709566

`lcm(2, A234161(A167614(n+1)))`
-/

namespace A234156.P1480057169799709566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234161 (A167614 (n + 1)).toNat)

end

end A234156.P1480057169799709566

/-! ## A234156.P17425272348938968941

`record[A234161(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A234156.P17425272348938968941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234156.P17425272348938968941

/-! ## A234156.P8577560337549522785

`record[A234161(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A234156.P8577560337549522785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234156.P8577560337549522785

/-! ## A234156.P11094809090877796425

`A234161(A167614(n+1))+A025469(n)`
-/

namespace A234156.P11094809090877796425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167614 (n + 1)).toNat + A025469 n

end

end A234156.P11094809090877796425

/-!
# A234157: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234157, there is no canonical definition to state claims against.
-/

/-! ## A234157.P12143684937160929800

`A234161(A374004(n+1))`
-/

namespace A234157.P12143684937160929800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A374004 (n + 1)).toNat

end

end A234157.P12143684937160929800

/-! ## A234157.P14227609858535476692

`A234161(A141214(n)+7)`
-/

namespace A234157.P14227609858535476692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A141214 n + 7).toNat

end

end A234157.P14227609858535476692

/-! ## A234157.P4506679832314432886

`A234161(A052905(n)+9)`
-/

namespace A234157.P4506679832314432886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A052905 n + 9).toNat

end

end A234157.P4506679832314432886

/-! ## A234157.P8091576369078231198

`A234161(A055999(n)+10)`
-/

namespace A234157.P8091576369078231198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A055999 n + 10).toNat

end

end A234157.P8091576369078231198

/-! ## A234157.P5974574290223257373

`A234161(A167614(n+2)+1)`
-/

namespace A234157.P5974574290223257373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167614 (n + 2) + 1).toNat

end

end A234157.P5974574290223257373

/-!
# A234158: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234158, there is no canonical definition to state claims against.
-/

/-! ## A234158.P1657095760518163014

`A234161(A374005(n+1))`
-/

namespace A234158.P1657095760518163014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A374005 (n + 1)).toNat

end

end A234158.P1657095760518163014

/-! ## A234158.P17598318343459909219

`A234161(A167499(n+3))`
-/

namespace A234158.P17598318343459909219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167499 (n + 3)).toNat

end

end A234158.P17598318343459909219

/-! ## A234158.P10631704656497762383

`A234161(A056000(n)+15)`
-/

namespace A234158.P10631704656497762383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A056000 n + 15).toNat

end

end A234158.P10631704656497762383

/-! ## A234158.P4813890549598021285

`A234161(A000124(n+4)+4)`
-/

namespace A234158.P4813890549598021285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A000124 (n + 4) + 4).toNat

end

end A234158.P4813890549598021285

/-! ## A234158.P5255705811889114991

`A234161(A167614(n+2)+n+6)`
-/

namespace A234158.P5255705811889114991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A234158.P5255705811889114991

/-!
# A234159: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234159, there is no canonical definition to state claims against.
-/

/-! ## A234159.P6374495433408228575

`A234161(A374007(n+1))`
-/

namespace A234159.P6374495433408228575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A374007 (n + 1)).toNat

end

end A234159.P6374495433408228575

/-! ## A234159.P8067942117132797854

`A234161(A052905(n+3))`
-/

namespace A234159.P8067942117132797854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A052905 (n + 3)).toNat

end

end A234159.P8067942117132797854

/-! ## A234159.P9891291026301250067

`A234161(eq[3, A219347(n)])`
-/

namespace A234159.P9891291026301250067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234159.P9891291026301250067

/-! ## A234159.P2741792816392056180

`A234161(eq[5, A193592(n)])`
-/

namespace A234159.P2741792816392056180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234159.P2741792816392056180

/-! ## A234159.P1781009898453518478

`A234161(A055999(n+3)+1)`
-/

namespace A234159.P1781009898453518478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (A055999 (n + 3) + 1).toNat

end

end A234159.P1781009898453518478

/-!
# A234160: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234160, there is no canonical definition to state claims against.
-/

/-! ## A234160.P260049035849838151

`A234161(eq[4, A219347(n)])`
-/

namespace A234160.P260049035849838151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234160.P260049035849838151

/-! ## A234160.P7406139038245651891

`A234161(eq[6, A193592(n)])`
-/

namespace A234160.P7406139038245651891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234160.P7406139038245651891

/-! ## A234160.P533044721919021816

`A234161(eq[7, A200370(n+1)])`
-/

namespace A234160.P533044721919021816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234160.P533044721919021816

/-! ## A234160.P15212028753906345784

`A234161(eq[6, A243060(n+1)])`
-/

namespace A234160.P15212028753906345784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234160.P15212028753906345784

/-!
# A234161: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234161, there is no canonical definition to state claims against.
-/

/-! ## A234161.P10298989226813738825

`A234184(n+1)-A004277(A234184(n+1)-A234036(n+1))`
-/

namespace A234161.P10298989226813738825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A004277 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A234161.P10298989226813738825

/-! ## A234161.P10340796151266632231

`(3*A234184(n+1))%A000265(A234421(n+1)+A234184(n+1))`
-/

namespace A234161.P10340796151266632231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A234184 (n + 1)) (A000265 (A234421 (n + 1) + A234184 (n + 1)).toNat)

end

end A234161.P10340796151266632231

/-! ## A234161.P11304294442303163009

`A004277(A234036(n+1))-A234184(n+1)`
-/

namespace A234161.P11304294442303163009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A234036 (n + 1)).toNat - A234184 (n + 1)

end

end A234161.P11304294442303163009

/-!
# A234162: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234162, there is no canonical definition to state claims against.
-/

/-! ## A234162.P18302434448422562429

`A234169(∑[n]+1)`
-/

namespace A234162.P18302434448422562429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234162.P18302434448422562429

/-! ## A234162.P12282475424457353583

`lcm(2, A234169(A000124(n)))`
-/

namespace A234162.P12282475424457353583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234169 (A000124 n).toNat)

end

end A234162.P12282475424457353583

/-! ## A234162.P16943232027175527476

`record[A234169(A056534(n+1))]`
-/

namespace A234162.P16943232027175527476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234162.P16943232027175527476

/-! ## A234162.P8103812877094898040

`record[A234169(A114091(n+1))]`
-/

namespace A234162.P8103812877094898040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234162.P8103812877094898040

/-! ## A234162.P15503747455415353156

`record[A010054(n)*A234169(n+1)]`
-/

namespace A234162.P15503747455415353156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234162.P15503747455415353156

/-!
# A234163: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234163, there is no canonical definition to state claims against.
-/

/-! ## A234163.P10954434435038013899

`A234169(∑[n+1]+2)`
-/

namespace A234163.P10954434435038013899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234163.P10954434435038013899

/-! ## A234163.P4374089478740460770

`record[A234169(A114091(n+1)+1)]`
-/

namespace A234163.P4374089478740460770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234163.P4374089478740460770

/-! ## A234163.P16526148670597263581

`record[A234169(n+3)/A109956(n)]`
-/

namespace A234163.P16526148670597263581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234169 (n + 3) : ℚ) / (A109956 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234163.P16526148670597263581

/-! ## A234163.P2933374676783142533

`record[gcd(A109971(n+1), A234169(n+3))]`
-/

namespace A234163.P2933374676783142533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109971 (n + 1)) (A234169 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234163.P2933374676783142533

/-! ## A234163.P5305755268183050840

`record[A234169(Δ[A003453(n+5)])]`
-/

namespace A234163.P5305755268183050840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234163.P5305755268183050840

/-!
# A234164: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234164, there is no canonical definition to state claims against.
-/

/-! ## A234164.P16277727170023757905

`A234169(∑[n+2]+4)`
-/

namespace A234164.P16277727170023757905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234164.P16277727170023757905

/-! ## A234164.P8047730547790112176

`lcm(2, A234169(A167614(n+1)))`
-/

namespace A234164.P8047730547790112176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234169 (A167614 (n + 1)).toNat)

end

end A234164.P8047730547790112176

/-! ## A234164.P1792476281210272517

`record[A234169(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A234164.P1792476281210272517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234164.P1792476281210272517

/-! ## A234164.P3456861502527155755

`A234169(A167614(n+1))+A025469(n)`
-/

namespace A234164.P3456861502527155755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A167614 (n + 1)).toNat + A025469 n

end

end A234164.P3456861502527155755

/-! ## A234164.P15000082332241148783

`A234169(A167614(n+1))+A178798(n)`
-/

namespace A234164.P15000082332241148783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A167614 (n + 1)).toNat + A178798 n

end

end A234164.P15000082332241148783

/-!
# A234165: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234165, there is no canonical definition to state claims against.
-/

/-! ## A234165.P651594348699530946

`A234169(A374004(n+1))`
-/

namespace A234165.P651594348699530946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A374004 (n + 1)).toNat

end

end A234165.P651594348699530946

/-! ## A234165.P10444577646939397488

`A234169(A141214(n)+7)`
-/

namespace A234165.P10444577646939397488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A141214 n + 7).toNat

end

end A234165.P10444577646939397488

/-! ## A234165.P9238737691927000033

`A234169(A052905(n)+9)`
-/

namespace A234165.P9238737691927000033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A052905 n + 9).toNat

end

end A234165.P9238737691927000033

/-! ## A234165.P17560150393679090903

`A234169(A055999(n)+10)`
-/

namespace A234165.P17560150393679090903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A055999 n + 10).toNat

end

end A234165.P17560150393679090903

/-! ## A234165.P8891473762693064914

`A234169(eq[5, A066657(n)])`
-/

namespace A234165.P8891473762693064914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234165.P8891473762693064914

/-!
# A234166: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234166, there is no canonical definition to state claims against.
-/

/-! ## A234166.P13656513628464234200

`A234169(A374005(n+1))`
-/

namespace A234166.P13656513628464234200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A374005 (n + 1)).toNat

end

end A234166.P13656513628464234200

/-! ## A234166.P6024504962501143355

`A234169(A167499(n+3))`
-/

namespace A234166.P6024504962501143355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A167499 (n + 3)).toNat

end

end A234166.P6024504962501143355

/-! ## A234166.P17508356304435880083

`A234169(A155212(n)+13)`
-/

namespace A234166.P17508356304435880083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A155212 n + 13).toNat

end

end A234166.P17508356304435880083

/-! ## A234166.P18405041001318270093

`A234169(A056000(n)+15)`
-/

namespace A234166.P18405041001318270093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A056000 n + 15).toNat

end

end A234166.P18405041001318270093

/-! ## A234166.P5266639124290631405

`A234169(eq[7, A066657(n)])`
-/

namespace A234166.P5266639124290631405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234166.P5266639124290631405

/-!
# A234167: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234167, there is no canonical definition to state claims against.
-/

/-! ## A234167.P2270451663388389896

`A234169(A374007(n+1))`
-/

namespace A234167.P2270451663388389896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A374007 (n + 1)).toNat

end

end A234167.P2270451663388389896

/-! ## A234167.P14519904344551365636

`A234169(A056115(n)+21)`
-/

namespace A234167.P14519904344551365636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A056115 n + 21).toNat

end

end A234167.P14519904344551365636

/-! ## A234167.P9930452721199177584

`A234169(Δ[A264443(n)]+10)`
-/

namespace A234167.P9930452721199177584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (f1 (n + 1) - f1 n + 10).toNat

end

end A234167.P9930452721199177584

/-! ## A234167.P12613491389896766424

`A234169(A000124(n+5)+5)`
-/

namespace A234167.P12613491389896766424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A000124 (n + 5) + 5).toNat

end

end A234167.P12613491389896766424

/-! ## A234167.P4429755129106919862

`A234169(A000096(n+4)+7)`
-/

namespace A234167.P4429755129106919862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A000096 (n + 4) + 7).toNat

end

end A234167.P4429755129106919862

/-!
# A234168: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234168, there is no canonical definition to state claims against.
-/

/-! ## A234168.P17486338102814508509

`A234169(A374008(n+1))`
-/

namespace A234168.P17486338102814508509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A374008 (n + 1)).toNat

end

end A234168.P17486338102814508509

/-! ## A234168.P6272973180559682259

`A234169(eq[11, A066657(n)])`
-/

namespace A234168.P6272973180559682259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234168.P6272973180559682259

/-! ## A234168.P17326579144229088310

`A234169(A167614(n+5)+4)`
-/

namespace A234168.P17326579144229088310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A167614 (n + 5) + 4).toNat

end

end A234168.P17326579144229088310

/-! ## A234168.P11567216913130393910

`A234169(A000124(n+6)+6)`
-/

namespace A234168.P11567216913130393910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A000124 (n + 6) + 6).toNat

end

end A234168.P11567216913130393910

/-! ## A234168.P8531850200477220669

`A234169(A052905(n+3)+12)`
-/

namespace A234168.P8531850200477220669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234169 (A052905 (n + 3) + 12).toNat

end

end A234168.P8531850200477220669

/-!
# A234170: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234170, there is no canonical definition to state claims against.
-/

/-! ## A234170.P12352833756570307871

`A234175(∑[n]+1)`
-/

namespace A234170.P12352833756570307871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234170.P12352833756570307871

/-! ## A234170.P13932621257439056751

`lcm(2, A234175(A000124(n)))`
-/

namespace A234170.P13932621257439056751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234175 (A000124 n).toNat)

end

end A234170.P13932621257439056751

/-! ## A234170.P6978592962627147598

`record[A234175(n+1)/A154337(n)]`
-/

namespace A234170.P6978592962627147598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234175 (n + 1) : ℚ) / (A154337 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234170.P6978592962627147598

/-! ## A234170.P2130917302137223603

`record[root(A234175(n+1), A059268(n))]`
-/

namespace A234170.P2130917302137223603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234175 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234170.P2130917302137223603

/-! ## A234170.P17387806200666660108

`record[root(A234175(n+1), A109128(n))]`
-/

namespace A234170.P17387806200666660108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234175 (n + 1) : ℝ) ^ (1 / (A109128 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234170.P17387806200666660108

/-!
# A234171: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234171, there is no canonical definition to state claims against.
-/

/-! ## A234171.P18099467622326230133

`A234175(∑[n+1]+2)`
-/

namespace A234171.P18099467622326230133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234171.P18099467622326230133

/-! ## A234171.P18215709060900721623

`record[A234175(C(A093882(n), 2)+2)]`
-/

namespace A234171.P18215709060900721623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (Nat.choose (A093882 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234171.P18215709060900721623

/-! ## A234171.P14471499920220914557

`record[root(A234175(n+2), A059268(n))]`
-/

namespace A234171.P14471499920220914557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234175 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234171.P14471499920220914557

/-! ## A234171.P13436803782825415136

`record[A234175(C(A034697(n+1), 2)+2)]`
-/

namespace A234171.P13436803782825415136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (Nat.choose (A034697 (n + 1)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234171.P13436803782825415136

/-! ## A234171.P14415144251216730763

`record[A234175(C(A237591(n+1), 2)+2)]`
-/

namespace A234171.P14415144251216730763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (Nat.choose (A237591 (n + 1)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234171.P14415144251216730763

/-!
# A234172: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234172, there is no canonical definition to state claims against.
-/

/-! ## A234172.P4608298495620702940

`A234175(∑[n+2]+4)`
-/

namespace A234172.P4608298495620702940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234172.P4608298495620702940

/-! ## A234172.P4865601343903135024

`lcm(2, A234175(A167614(n+1)))`
-/

namespace A234172.P4865601343903135024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234175 (A167614 (n + 1)).toNat)

end

end A234172.P4865601343903135024

/-! ## A234172.P1355904390874150693

`record[A234175(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A234172.P1355904390874150693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234172.P1355904390874150693

/-! ## A234172.P13662048580965172204

`A234175(A167614(n+1))+A029577(n)`
-/

namespace A234172.P13662048580965172204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A167614 (n + 1)).toNat + A029577 n

end

end A234172.P13662048580965172204

/-! ## A234172.P5216708461848037500

`A234175(A167614(n+1))+A046786(n)`
-/

namespace A234172.P5216708461848037500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A167614 (n + 1)).toNat + A046786 n

end

end A234172.P5216708461848037500

/-!
# A234173: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234173, there is no canonical definition to state claims against.
-/

/-! ## A234173.P16518715131375398822

`A234175(∑[n+3]+7)`
-/

namespace A234173.P16518715131375398822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234173.P16518715131375398822

/-! ## A234173.P13842457123490765760

`A234175(A374004(n+1))+A093882(n)`
-/

namespace A234173.P13842457123490765760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A374004 (n + 1)).toNat + A093882 n

end

end A234173.P13842457123490765760

/-! ## A234173.P15119386951720229913

`A234175(A374004(n+1))+A056977(n+1)`
-/

namespace A234173.P15119386951720229913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A374004 (n + 1)).toNat + A056977 (n + 1)

end

end A234173.P15119386951720229913

/-! ## A234173.P15707960068972544617

`A234175(A374004(n+1))+A101637(n+1)`
-/

namespace A234173.P15707960068972544617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A374004 (n + 1)).toNat + A101637 (n + 1)

end

end A234173.P15707960068972544617

/-!
# A234174: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234174, there is no canonical definition to state claims against.
-/

/-! ## A234174.P12126189659041238816

`A234175(A374005(n+1))`
-/

namespace A234174.P12126189659041238816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (A374005 (n + 1)).toNat

end

end A234174.P12126189659041238816

/-! ## A234174.P3987332383059256098

`A234175(eq[7, A066657(n)])`
-/

namespace A234174.P3987332383059256098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234174.P3987332383059256098

/-!
# A234176: Number of (n+1)X(n+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234176, there is no canonical definition to state claims against.
-/

/-! ## A234176.P4153878390020975357

`A234184((n+1)²+n²)`
-/

namespace A234176.P4153878390020975357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 ((n + 1) ^ 2 + n ^ 2)

end

end A234176.P4153878390020975357

/-! ## A234176.P12196105922463491561

`record[A234184(A001844(∑{e}[n+1, #]))]`
-/

namespace A234176.P12196105922463491561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A001844 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234176.P12196105922463491561

/-!
# A234177: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234177, there is no canonical definition to state claims against.
-/

/-! ## A234177.P9235481176030212759

`A234184(∑[n]+1)`
-/

namespace A234177.P9235481176030212759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234177.P9235481176030212759

/-! ## A234177.P6669861203071671989

`lcm(2, A234184(A000124(n)))`
-/

namespace A234177.P6669861203071671989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234184 (A000124 n).toNat)

end

end A234177.P6669861203071671989

/-! ## A234177.P11890889617407915821

`record[A234184(n+1)/A009963(n)]`
-/

namespace A234177.P11890889617407915821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234184 (n + 1) : ℚ) / (A009963 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234177.P11890889617407915821

/-! ## A234177.P15000614118368502253

`record[A234184(n+1)/A022171(n)]`
-/

namespace A234177.P15000614118368502253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234184 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234177.P15000614118368502253

/-! ## A234177.P4938201634541855915

`record[root(A234184(n+1), A007318(n))]`
-/

namespace A234177.P4938201634541855915
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234184 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234177.P4938201634541855915

/-!
# A234178: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234178, there is no canonical definition to state claims against.
-/

/-! ## A234178.P8495285667736371812

`A234184(∑[n+1]+2)`
-/

namespace A234178.P8495285667736371812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234178.P8495285667736371812

/-! ## A234178.P3339187529563184787

`record[A234184(abs(A201163(n)))]`
-/

namespace A234178.P3339187529563184787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234178.P3339187529563184787

/-! ## A234178.P4045907048186207155

`lcm(2, A234184(A000096(n+1)))`
-/

namespace A234178.P4045907048186207155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234184 (A000096 (n + 1)).toNat)

end

end A234178.P4045907048186207155

/-! ## A234178.P14610640473406422406

`record[A234184(Δ[A003453(n+5)])]`
-/

namespace A234178.P14610640473406422406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234178.P14610640473406422406

/-! ## A234178.P3994693923887395851

`record[A234184(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A234178.P3994693923887395851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234178.P3994693923887395851

/-!
# A234179: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234179, there is no canonical definition to state claims against.
-/

/-! ## A234179.P4050062458520409656

`A234184(∑[n+2]+4)`
-/

namespace A234179.P4050062458520409656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234179.P4050062458520409656

/-! ## A234179.P4119747351926132440

`lcm(2, A234184(A167614(n+1)))`
-/

namespace A234179.P4119747351926132440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234184 (A167614 (n + 1)).toNat)

end

end A234179.P4119747351926132440

/-! ## A234179.P15328324983825913993

`A234184(A167614(n+1))+A178798(n)`
-/

namespace A234179.P15328324983825913993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A167614 (n + 1)).toNat + A178798 n

end

end A234179.P15328324983825913993

/-! ## A234179.P8053015833853225260

`or(A000038(n), A234184(A167614(n+1)))`
-/

namespace A234179.P8053015833853225260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A234184 (A167614 (n + 1)).toNat)

end

end A234179.P8053015833853225260

/-! ## A234179.P13222101720608812388

`A326291(n+1)+A234184(A167614(n+1))`
-/

namespace A234179.P13222101720608812388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A234184 (A167614 (n + 1)).toNat

end

end A234179.P13222101720608812388

/-!
# A234180: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234180, there is no canonical definition to state claims against.
-/

/-! ## A234180.P4829057950713571675

`A234184(A374004(n+1))`
-/

namespace A234180.P4829057950713571675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A374004 (n + 1)).toNat

end

end A234180.P4829057950713571675

/-! ## A234180.P2205193011385424449

`A234184(A141214(n)+7)`
-/

namespace A234180.P2205193011385424449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A141214 n + 7).toNat

end

end A234180.P2205193011385424449

/-! ## A234180.P1916522863891896137

`A234184(A052905(n)+9)`
-/

namespace A234180.P1916522863891896137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A052905 n + 9).toNat

end

end A234180.P1916522863891896137

/-! ## A234180.P3338844144240062314

`A234184(A055999(n)+10)`
-/

namespace A234180.P3338844144240062314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A055999 n + 10).toNat

end

end A234180.P3338844144240062314

/-! ## A234180.P13899402479073951231

`A234184(A167614(n+2)+1)`
-/

namespace A234180.P13899402479073951231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A167614 (n + 2) + 1).toNat

end

end A234180.P13899402479073951231

/-!
# A234181: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234181, there is no canonical definition to state claims against.
-/

/-! ## A234181.P11816120193626318518

`A234184(A374005(n+1))`
-/

namespace A234181.P11816120193626318518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A374005 (n + 1)).toNat

end

end A234181.P11816120193626318518

/-! ## A234181.P7333962338580805379

`A234184(A155212(n)+13)`
-/

namespace A234181.P7333962338580805379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A155212 n + 13).toNat

end

end A234181.P7333962338580805379

/-! ## A234181.P11461763614713576994

`A234184(A167614(n+3)+2)`
-/

namespace A234181.P11461763614713576994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A167614 (n + 3) + 2).toNat

end

end A234181.P11461763614713576994

/-! ## A234181.P12547663016294183034

`A234184(A141214(n+1)+8)`
-/

namespace A234181.P12547663016294183034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A141214 (n + 1) + 8).toNat

end

end A234181.P12547663016294183034

/-! ## A234181.P18321167082075015467

`A234184(eq[3, A141169(n)]+1)`
-/

namespace A234181.P18321167082075015467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234181.P18321167082075015467

/-!
# A234182: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234182, there is no canonical definition to state claims against.
-/

/-! ## A234182.P13277916927135291380

`A234184(A374007(n+1))`
-/

namespace A234182.P13277916927135291380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A374007 (n + 1)).toNat

end

end A234182.P13277916927135291380

/-! ## A234182.P5916520545140748975

`A234184(eq[3, A219347(n)])`
-/

namespace A234182.P5916520545140748975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234182.P5916520545140748975

/-! ## A234182.P8799803405025511698

`A234184(eq[5, A193592(n)])`
-/

namespace A234182.P8799803405025511698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234182.P8799803405025511698

/-! ## A234182.P16004356752022313264

`A234184(A155212(n+2)+3)`
-/

namespace A234182.P16004356752022313264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A155212 (n + 2) + 3).toNat

end

end A234182.P16004356752022313264

/-! ## A234182.P12336803524062972555

`A234184(eq[8, A185782(n+1)])`
-/

namespace A234182.P12336803524062972555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234182.P12336803524062972555

/-!
# A234183: 

The programs for A234183, there is no canonical definition to state claims against.
-/

/-! ## A234183.P13784069049291169823

`A234184(eq[4, A219347(n)])`
-/

namespace A234183.P13784069049291169823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234183.P13784069049291169823

/-! ## A234183.P3170576773109510230

`A234184(eq[6, A193592(n)])`
-/

namespace A234183.P3170576773109510230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234183.P3170576773109510230

/-! ## A234183.P16358948212463117507

`A234184(A046691(n+5)-2)`
-/

namespace A234183.P16358948212463117507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (A046691 (n + 5) - 2).toNat

end

end A234183.P16358948212463117507

/-! ## A234183.P15956322009278136269

`A234184(eq[6, A243060(n+1)])`
-/

namespace A234183.P15956322009278136269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234183.P15956322009278136269

/-!
# A234184: T(n,k)=Number of (n+1)X(k+1) 0..5 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234184, there is no canonical definition to state claims against.
-/

/-! ## A234184.P10237446856605774680

`A234036(n+1)+A060747(A209829(n+1))`
-/

namespace A234184.P10237446856605774680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (n + 1) + A060747 (A209829 (n + 1)).toNat

end

end A234184.P10237446856605774680

/-! ## A234184.P5430504619764077800

`A273943(A234131(n+1)+A234036(n+1))`
-/

namespace A234184.P5430504619764077800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A234131 (n + 1) + A234036 (n + 1)).toNat

end

end A234184.P5430504619764077800

/-! ## A234184.P10871073966642386268

`A234131(n+1)-A060747(A209829(n+1))`
-/

namespace A234184.P10871073966642386268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (n + 1) - A060747 (A209829 (n + 1)).toNat

end

end A234184.P10871073966642386268

/-! ## A234184.P11689459921090328861

`A302032(A234131(n+1)-A234036(n+1))+A234036(n+1)`
-/

namespace A234184.P11689459921090328861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A234131 (n + 1) - A234036 (n + 1)).toNat + A234036 (n + 1)

end

end A234184.P11689459921090328861

/-! ## A234184.P3738067114748602242

`A234131(n+1)-A005843(A209848(n+1)-A209969(n+1))+1`
-/

namespace A234184.P3738067114748602242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (n + 1) - A005843 (A209848 (n + 1) - A209969 (n + 1)).toNat + 1

end

end A234184.P3738067114748602242

/-!
# A234185: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234185, there is no canonical definition to state claims against.
-/

/-! ## A234185.P5073266782490450397

`A234190(∑[n]+1)`
-/

namespace A234185.P5073266782490450397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234185.P5073266782490450397

/-! ## A234185.P11372912219431388411

`lcm(2, A234190(A000124(n)))`
-/

namespace A234185.P11372912219431388411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234190 (A000124 n).toNat)

end

end A234185.P11372912219431388411

/-! ## A234185.P12915826931256926288

`record[A234190(A246276(n+1))]`
-/

namespace A234185.P12915826931256926288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234185.P12915826931256926288

/-! ## A234185.P18115493780504295234

`record[A234190(A249742(n+1))]`
-/

namespace A234185.P18115493780504295234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234185.P18115493780504295234

/-! ## A234185.P4325202918116737321

`record[A010054(n)*A234190(n+1)]`
-/

namespace A234185.P4325202918116737321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234185.P4325202918116737321

/-!
# A234186: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234186, there is no canonical definition to state claims against.
-/

/-! ## A234186.P9181156476704023361

`A234190(∑[n+1]+2)`
-/

namespace A234186.P9181156476704023361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234186.P9181156476704023361

/-! ## A234186.P5044033710134147630

`record[root(A234190(n+2), A238303(n))]`
-/

namespace A234186.P5044033710134147630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234190 (n + 2) : ℝ) ^ (1 / (A238303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234186.P5044033710134147630

/-! ## A234186.P2501226961679638938

`record[A234190(C(A341675(2*(n+1))+2, 2)+2)]`
-/

namespace A234186.P2501226961679638938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (Nat.choose (A341675 (2 * (n + 1)) + 2).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234186.P2501226961679638938

/-! ## A234186.P15821041388778582472

`record[A234190(Δ[A003453(n+5)])]`
-/

namespace A234186.P15821041388778582472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234186.P15821041388778582472

/-! ## A234186.P5651823535610242782

`record[A234190(A246276(2*(n+1))-1)]`
-/

namespace A234186.P5651823535610242782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A246276 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234186.P5651823535610242782

/-!
# A234187: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234187, there is no canonical definition to state claims against.
-/

/-! ## A234187.P10434680367590362278

`A234190(∑[n+2]+4)`
-/

namespace A234187.P10434680367590362278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234187.P10434680367590362278

/-! ## A234187.P13753189629180432143

`lcm(2, A234190(A167614(n+1)))`
-/

namespace A234187.P13753189629180432143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234190 (A167614 (n + 1)).toNat)

end

end A234187.P13753189629180432143

/-! ## A234187.P12552574957610001931

`A234190(A167614(n+1))+A025437(n)`
-/

namespace A234187.P12552574957610001931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A167614 (n + 1)).toNat + A025437 n

end

end A234187.P12552574957610001931

/-! ## A234187.P1649127351436717046

`A234190(A167614(n+1))+A046786(n)`
-/

namespace A234187.P1649127351436717046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A167614 (n + 1)).toNat + A046786 n

end

end A234187.P1649127351436717046

/-! ## A234187.P6517653951177058089

`A234190(A167614(n+1))+A061858(n)`
-/

namespace A234187.P6517653951177058089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A167614 (n + 1)).toNat + A061858 n

end

end A234187.P6517653951177058089

/-!
# A234188: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234188, there is no canonical definition to state claims against.
-/

/-! ## A234188.P1784457356109611900

`A234190(∑[n+3]+7)`
-/

namespace A234188.P1784457356109611900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234188.P1784457356109611900

/-!
# A234189: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234189, there is no canonical definition to state claims against.
-/

/-! ## A234189.P10351611147639540235

`A234190(A374005(n+1))`
-/

namespace A234189.P10351611147639540235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A374005 (n + 1)).toNat

end

end A234189.P10351611147639540235

/-! ## A234189.P6978782104428004210

`A234190(A167499(n+3))`
-/

namespace A234189.P6978782104428004210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A167499 (n + 3)).toNat

end

end A234189.P6978782104428004210

/-! ## A234189.P2565125353870320637

`A234190(A155212(n)+13)`
-/

namespace A234189.P2565125353870320637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234190 (A155212 n + 13).toNat

end

end A234189.P2565125353870320637

/-!
# A234191: Number of (n+2) X (1+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234191, there is no canonical definition to state claims against.
-/

/-! ## A234191.P1147644867316875616

`A234196(∑[n+1])`
-/

namespace A234191.P1147644867316875616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234191.P1147644867316875616

/-! ## A234191.P1587470232379191399

`record[A115952(n)*A234196(n+1)]`
-/

namespace A234191.P1587470232379191399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 n * A234196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234191.P1587470232379191399

/-! ## A234191.P1005676377352062722

`record[gcd(A234196(n+1), A268820(n))]`
-/

namespace A234191.P1005676377352062722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234196 (n + 1)) (A268820 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234191.P1005676377352062722

/-! ## A234191.P11223989239224627221

`record[A155031(n+1)*A234196(n+1)]`
-/

namespace A234191.P11223989239224627221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1) * A234196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234191.P11223989239224627221

/-! ## A234191.P8666917807880545912

`record[root(A234196(n+1), A195113(n+1))]`
-/

namespace A234191.P8666917807880545912
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234196 (n + 1) : ℝ) ^ (1 / (A195113 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234191.P8666917807880545912

/-!
# A234192: Number of (n+2)X(2+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234192, there is no canonical definition to state claims against.
-/

/-! ## A234192.P13017080172335857671

`A234196(∑[n+2])`
-/

namespace A234192.P13017080172335857671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234192.P13017080172335857671

/-!
# A234193: 

The programs for A234193, there is no canonical definition to state claims against.
-/

/-! ## A234193.P5286250685865734182

`A234196(∑[n+3]+1)`
-/

namespace A234193.P5286250685865734182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234193.P5286250685865734182

/-!
# A234194: 

The programs for A234194, there is no canonical definition to state claims against.
-/

/-! ## A234194.P10508189786610526455

`A234196(A014132(∑[n+3]+1))`
-/

namespace A234194.P10508189786610526455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A234194.P10508189786610526455

/-!
# A234197: Number of (1+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234197, there is no canonical definition to state claims against.
-/

/-! ## A234197.P11050349333125418284

`A234196(∑[n]+1)`
-/

namespace A234197.P11050349333125418284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234197.P11050349333125418284

/-! ## A234197.P2686446080302001008

`record[A010054(n)*A234196(n+1)]`
-/

namespace A234197.P2686446080302001008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234197.P2686446080302001008

/-! ## A234197.P10024505037944355413

`record[root(A234196(n+1), A143461(n))]`
-/

namespace A234197.P10024505037944355413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234196 (n + 1) : ℝ) ^ (1 / (A143461 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234197.P10024505037944355413

/-! ## A234197.P14061088761769505357

`record[gcd(A002262(n), A234196(n+1))]`
-/

namespace A234197.P14061088761769505357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234197.P14061088761769505357

/-! ## A234197.P9468319998024511630

`record[root(A234196(n+1), A002260(n+1))]`
-/

namespace A234197.P9468319998024511630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234196 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234197.P9468319998024511630

/-!
# A234198: Number of (2+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234198, there is no canonical definition to state claims against.
-/

/-! ## A234198.P15366410932088981920

`A234196(∑[n+1]+2)`
-/

namespace A234198.P15366410932088981920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234196 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234198.P15366410932088981920

