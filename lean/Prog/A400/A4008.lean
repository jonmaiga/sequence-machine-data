import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A400801: Nonsquarefree numbers that are not divisible by the square of their least prime factor.

The programs for A400801, the canonical program `A400801.P7891398207924547802` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400801 has offset 1).

The definition of A400801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400801.P7891398207924547802

`filter[A080364(1+n), A087049(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A400801

/-- `filter[A080364(1+n), A087049(#)]` -/
def P7891398207924547802.Spec : Prop :=
  ∀ n, P7891398207924547802.a n = A400801 (n + 1)

theorem P7891398207924547802.correct : P7891398207924547802.Spec := by
  intro n
  simp only [A400801, Nat.add_sub_cancel]

end A400801

/-! ## A400801.P4689645731020580252

`filter[A080364(1+n), A353626(#)]`
-/

namespace A400801.P4689645731020580252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A400801.P4689645731020580252

namespace A400801

/-- `filter[A080364(1+n), A353626(#)]` -/
def P4689645731020580252.Spec : Prop :=
  ∀ n, P4689645731020580252.a n = A400801 (n + 1)

end A400801

/-! ## A400801.P7553629199581689791

`filter[A080364(1+n), A355447(#)]`
-/

namespace A400801.P7553629199581689791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A400801.P7553629199581689791

namespace A400801

/-- `filter[A080364(1+n), A355447(#)]` -/
def P7553629199581689791.Spec : Prop :=
  ∀ n, P7553629199581689791.a n = A400801 (n + 1)

end A400801

/-! ## A400801.P18136977892551749044

`filter[A080364(n+1), A359467(#)]`
-/

namespace A400801.P18136977892551749044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359467 (f1 j).toNat = 1) n)

end

end A400801.P18136977892551749044

namespace A400801

/-- `filter[A080364(n+1), A359467(#)]` -/
def P18136977892551749044.Spec : Prop :=
  ∀ n, P18136977892551749044.a n = A400801 (n + 1)

end A400801

/-! ## A400801.P5833216237388555922

`filter[A080364(n+1), A389905(#)]`
-/

namespace A400801.P5833216237388555922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A400801.P5833216237388555922

namespace A400801

/-- `filter[A080364(n+1), A389905(#)]` -/
def P5833216237388555922.Spec : Prop :=
  ∀ n, P5833216237388555922.a n = A400801 (n + 1)

end A400801

/-! ## A400801.P1924872626141580731

`∩[A013929(n+1), A080364(n+1)]`
-/

namespace A400801.P1924872626141580731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P1924872626141580731

namespace A400801

/-- `∩[A013929(n+1), A080364(n+1)]` -/
def P1924872626141580731.Spec : Prop :=
  ∀ n, (P1924872626141580731.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P17621948752758420607

`∩[A038838(n+1), A080364(n+1)]`
-/

namespace A400801.P17621948752758420607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P17621948752758420607

namespace A400801

/-- `∩[A038838(n+1), A080364(n+1)]` -/
def P17621948752758420607.Spec : Prop :=
  ∀ n, (P17621948752758420607.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P13268063055243739909

`∩[A046790(n+1), A080364(n+1)]`
-/

namespace A400801.P13268063055243739909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P13268063055243739909

namespace A400801

/-- `∩[A046790(n+1), A080364(n+1)]` -/
def P13268063055243739909.Spec : Prop :=
  ∀ n, (P13268063055243739909.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P5830032171730181195

`∩[A051144(n+1), A080364(n+1)]`
-/

namespace A400801.P5830032171730181195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P5830032171730181195

namespace A400801

/-- `∩[A051144(n+1), A080364(n+1)]` -/
def P5830032171730181195.Spec : Prop :=
  ∀ n, (P5830032171730181195.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P7958648244297707877

`∩[A059404(n+1), A080364(n+1)]`
-/

namespace A400801.P7958648244297707877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P7958648244297707877

namespace A400801

/-- `∩[A059404(n+1), A080364(n+1)]` -/
def P7958648244297707877.Spec : Prop :=
  ∀ n, (P7958648244297707877.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P3643742925353056500

`∩[A071365(n+1), A080364(n+1)]`
-/

namespace A400801.P3643742925353056500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P3643742925353056500

namespace A400801

/-- `∩[A071365(n+1), A080364(n+1)]` -/
def P3643742925353056500.Spec : Prop :=
  ∀ n, (P3643742925353056500.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P17385194707557025946

`∩[A072903(n+1), A080364(n+1)]`
-/

namespace A400801.P17385194707557025946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P17385194707557025946

namespace A400801

/-- `∩[A072903(n+1), A080364(n+1)]` -/
def P17385194707557025946.Spec : Prop :=
  ∀ n, (P17385194707557025946.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P1774965949910120709

`∩[A072904(n+1), A080364(n+1)]`
-/

namespace A400801.P1774965949910120709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P1774965949910120709

namespace A400801

/-- `∩[A072904(n+1), A080364(n+1)]` -/
def P1774965949910120709.Spec : Prop :=
  ∀ n, (P1774965949910120709.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P9400101801695833629

`∩[A080364(n+1), A080756(n+1)]`
-/

namespace A400801.P9400101801695833629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P9400101801695833629

namespace A400801

/-- `∩[A080364(n+1), A080756(n+1)]` -/
def P9400101801695833629.Spec : Prop :=
  ∀ n, (P9400101801695833629.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P3177446963406515378

`∩[A080364(n+1), A126706(n+1)]`
-/

namespace A400801.P3177446963406515378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P3177446963406515378

namespace A400801

/-- `∩[A080364(n+1), A126706(n+1)]` -/
def P3177446963406515378.Spec : Prop :=
  ∀ n, (P3177446963406515378.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P15001212153649484498

`∩[A080364(n+1), A143720(n+1)]`
-/

namespace A400801.P15001212153649484498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P15001212153649484498

namespace A400801

/-- `∩[A080364(n+1), A143720(n+1)]` -/
def P15001212153649484498.Spec : Prop :=
  ∀ n, (P15001212153649484498.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P12392682787126196709

`∩[A080364(n+1), A162966(n+1)]`
-/

namespace A400801.P12392682787126196709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P12392682787126196709

namespace A400801

/-- `∩[A080364(n+1), A162966(n+1)]` -/
def P12392682787126196709.Spec : Prop :=
  ∀ n, (P12392682787126196709.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P13840394833630752521

`∩[A080364(n+1), A284342(n+1)]`
-/

namespace A400801.P13840394833630752521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P13840394833630752521

namespace A400801

/-- `∩[A080364(n+1), A284342(n+1)]` -/
def P13840394833630752521.Spec : Prop :=
  ∀ n, (P13840394833630752521.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P12727070036684923273

`∩[A080364(n+1), A303946(n+1)]`
-/

namespace A400801.P12727070036684923273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P12727070036684923273

namespace A400801

/-- `∩[A080364(n+1), A303946(n+1)]` -/
def P12727070036684923273.Spec : Prop :=
  ∀ n, (P12727070036684923273.a n : ℤ) = A400801 (n + 1)

end A400801

/-! ## A400801.P12121112676061541837

`∩[A080364(n+1), A307579(n+1)]`
-/

namespace A400801.P12121112676061541837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400801.P12121112676061541837

namespace A400801

/-- `∩[A080364(n+1), A307579(n+1)]` -/
def P12121112676061541837.Spec : Prop :=
  ∀ n, (P12121112676061541837.a n : ℤ) = A400801 (n + 1)

end A400801

/-!
# A400803: Number of independent linear relations among the columns of the adjacency matrix of the divisor graph on {2,...,n}, after removing isolated vertices.

The programs for A400803, there is no canonical definition to state claims against.
-/

/-! ## A400803.P10486336504966909131

`round((A399913(n+1)+A037273(n+1))/144)`
-/

namespace A400803.P10486336504966909131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A399913 (n + 1) + A037273 (n + 1) : ℚ) / 144)

end

end A400803.P10486336504966909131

/-! ## A400803.P1462885940385687217

`A061498(A161618(n+2))`
-/

namespace A400803.P1462885940385687217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A161618 (n + 2)).toNat

end

end A400803.P1462885940385687217

/-! ## A400803.P10440499290562395620

`A101666(A034514(n+1))`
-/

namespace A400803.P10440499290562395620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A034514 (n + 1)).toNat

end

end A400803.P10440499290562395620

/-! ## A400803.P9220839680322518126

`A236859(A034520(n+1))`
-/

namespace A400803.P9220839680322518126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 (A034520 (n + 1)).toNat

end

end A400803.P9220839680322518126

/-! ## A400803.P13593590750543164843

`round(A181567(2*n+3)/A327624(n+1))`
-/

namespace A400803.P13593590750543164843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181567 (2 * n + 3) : ℚ) / (A327624 (n + 1) : ℚ))

end

end A400803.P13593590750543164843

/-!
# A400804: Least m such that the divisor graph on {2,...,m}, after removing isolated vertices, has at least n independent linear relations among the columns of its adjacency matrix.

The programs for A400804, there is no canonical definition to state claims against.
-/

/-! ## A400804.P13245913639475538477

`fp[A400803(n+1)]+1`
-/

namespace A400804.P13245913639475538477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A400804.P13245913639475538477

/-!
# A400810: Size of Type C megastars of star triples in the Spectre aperiodic monotile tiling.

The programs for A400810, the canonical program `A400810.P4336047378170428460` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400810 has offset 1).

The definition of A400810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400810.P4336047378170428460

`ogf((1+4x+x^2)/(1-3x-15x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400810

/-- `ogf((1+4x+x^2)/(1-3x-15x^2-x^3))` -/
def P4336047378170428460.Spec : Prop :=
  ∀ n, P4336047378170428460.a n = A400810 (n + 1)

theorem P4336047378170428460.correct : P4336047378170428460.Spec := by
  intro n
  simp only [A400810, Nat.add_sub_cancel]

end A400810

/-! ## A400810.P8863387007244143410

`3*a(n-1)+15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=37`
-/

namespace A400810.P8863387007244143410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 37] fun n a =>
  3 * a (n - 1) + 15 * a (n - 2) + a (n - 3)

end

end A400810.P8863387007244143410

namespace A400810

/-- `3*a(n-1)+15*a(n-2)+a(n-3)` -/
def P8863387007244143410.Spec : Prop :=
  ∀ n, (P8863387007244143410.a n : ℤ) = A400810 (n + 1)

end A400810

/-! ## A400810.P17435539769734150303

`a(n-1)+3*A400811(n)` with `a(0)=1`
-/

namespace A400810.P17435539769734150303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A400811 n

end

end A400810.P17435539769734150303

namespace A400810

/-- `a(n-1)+3*A400811(n)` -/
def P17435539769734150303.Spec : Prop :=
  ∀ n, P17435539769734150303.a n = A400810 (n + 1)

end A400810

/-! ## A400810.P13883095093382308631

`A397118(n+1)-A397117(n+1)`
-/

namespace A400810.P13883095093382308631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397118 (n + 1) - A397117 (n + 1)

end

end A400810.P13883095093382308631

namespace A400810

/-- `A397118(n+1)-A397117(n+1)` -/
def P13883095093382308631.Spec : Prop :=
  ∀ n, P13883095093382308631.a n = A400810 (n + 1)

end A400810

/-! ## A400810.P11342290055082539538

`Δ[round(A397120(n+1)/3)]`
-/

namespace A400810.P11342290055082539538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A397120 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400810.P11342290055082539538

namespace A400810

/-- `Δ[round(A397120(n+1)/3)]` -/
def P11342290055082539538.Spec : Prop :=
  ∀ n, P11342290055082539538.a n = A400810 (n + 1)

end A400810

/-!
# A400811: Size of Type A palindromes of star triples in the Spectre aperiodic monotile tiling.

The programs for A400811, the canonical program `A400811.P8729234673321828537` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400811 has offset 1).

The definition of A400811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400811.P8729234673321828537

`ogf((2+4x)/(1-3x-15x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400811

/-- `ogf((2+4x)/(1-3x-15x^2-x^3))` -/
def P8729234673321828537.Spec : Prop :=
  ∀ n, P8729234673321828537.a n = A400811 (n + 1)

theorem P8729234673321828537.correct : P8729234673321828537.Spec := by
  intro n
  simp only [A400811, Nat.add_sub_cancel]

end A400811

/-! ## A400811.P15675844145736966160

`3*a(n-1)+15*a(n-2)+a(n-3)` with `a(0)=2, a(1)=10, a(2)=60`
-/

namespace A400811.P15675844145736966160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 10, 60] fun n a =>
  3 * a (n - 1) + 15 * a (n - 2) + a (n - 3)

end

end A400811.P15675844145736966160

namespace A400811

/-- `3*a(n-1)+15*a(n-2)+a(n-3)` -/
def P15675844145736966160.Spec : Prop :=
  ∀ n, (P15675844145736966160.a n : ℤ) = A400811 (n + 1)

end A400811

/-! ## A400811.P12788798713500179237

`a(n-1)+2*A397120(n+1)` with `a(0)=2`
-/

namespace A400811.P12788798713500179237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A397120 (n + 1)

end

end A400811.P12788798713500179237

namespace A400811

/-- `a(n-1)+2*A397120(n+1)` -/
def P12788798713500179237.Spec : Prop :=
  ∀ n, P12788798713500179237.a n = A400811 (n + 1)

end A400811

/-! ## A400811.P2518317013909733

`∑[2*A397120(n+1)]`
-/

namespace A400811.P2518317013909733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400811.P2518317013909733

namespace A400811

/-- `∑[2*A397120(n+1)]` -/
def P2518317013909733.Spec : Prop :=
  ∀ n, P2518317013909733.a n = A400811 (n + 1)

end A400811

/-! ## A400811.P16321788879361686406

`Δ[A400810(n+1)]/3`
-/

namespace A400811.P16321788879361686406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400810 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A400811.P16321788879361686406

namespace A400811

/-- `Δ[A400810(n+1)]/3` -/
def P16321788879361686406.Spec : Prop :=
  ∀ n, P16321788879361686406.a n = (A400811 (n + 1) : ℚ)

end A400811

/-! ## A400811.P2929564706838520122

`A397119(n+1)-A397118(n+1)`
-/

namespace A400811.P2929564706838520122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397119 (n + 1) - A397118 (n + 1)

end

end A400811.P2929564706838520122

namespace A400811

/-- `A397119(n+1)-A397118(n+1)` -/
def P2929564706838520122.Spec : Prop :=
  ∀ n, P2929564706838520122.a n = A400811 (n + 1)

end A400811

/-! ## A400811.P4008376539547186197

`Δ[A397118(n+1)-A397117(n+1)]/3`
-/

namespace A400811.P4008376539547186197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397118 (n + 1) - A397117 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A400811.P4008376539547186197

namespace A400811

/-- `Δ[A397118(n+1)-A397117(n+1)]/3` -/
def P4008376539547186197.Spec : Prop :=
  ∀ n, P4008376539547186197.a n = (A400811 (n + 1) : ℚ)

end A400811

/-! ## A400811.P18347885840842062771

`A397119(n+1)-(A400810(n+1)+A397117(n+1))`
-/

namespace A400811.P18347885840842062771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397119 (n + 1) - (A400810 (n + 1) + A397117 (n + 1))

end

end A400811.P18347885840842062771

namespace A400811

/-- `A397119(n+1)-(A400810(n+1)+A397117(n+1))` -/
def P18347885840842062771.Spec : Prop :=
  ∀ n, P18347885840842062771.a n = A400811 (n + 1)

end A400811

/-!
# A400825: Numbers k such that (2^k-1)*2^(k+4)+1 is prime.

The programs for A400825, there is no canonical definition to state claims against.
-/

/-! ## A400825.P6646129309590590815

`A316360(n+1)-2`
-/

namespace A400825.P6646129309590590815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316360 (n + 1) - 2

end

end A400825.P6646129309590590815

/-! ## A400825.P9414119845273551781

`A023444(A316360(n+1))`
-/

namespace A400825.P9414119845273551781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316360 (n + 1)).toNat

end

end A400825.P9414119845273551781

/-!
# A400826: Grundy value of n in the impartial game in which from even n the only move is to n/2, from odd n > 1 the moves are to 3n+1 or to (3n+1)/2, and 1 has no moves.

The programs for A400826, there is no canonical definition to state claims against.
-/

/-! ## A400826.P4632411883843375575

`A091297(A317942(n+1)+n)`
-/

namespace A400826.P4632411883843375575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A317942 (n + 1) + (n : ℤ)).toNat

end

end A400826.P4632411883843375575

/-! ## A400826.P16928356274268388977

`A209229(n)+A025435(A006500(n+3))`
-/

namespace A400826.P16928356274268388977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A025435 (A006500 (n + 3)).toNat

end

end A400826.P16928356274268388977

/-! ## A400826.P17364349207726839393

`A230403(A003174(n+1)-A237048(n+1))`
-/

namespace A400826.P17364349207726839393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A003174 (n + 1) - A237048 (n + 1)).toNat

end

end A400826.P17364349207726839393

/-! ## A400826.P16960398231497074368

`A003336(A020639(3*n+4))%A331921(2*(n+1))`
-/

namespace A400826.P16960398231497074368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003336 (A020639 (3 * n + 4)).toNat) (A331921 (2 * (n + 1)))

end

end A400826.P16960398231497074368

/-! ## A400826.P6477006989754488295

`A001877(A278424(n)+2)`
-/

namespace A400826.P6477006989754488295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A278424 n + 2).toNat

end

end A400826.P6477006989754488295

/-!
# A400828: Least number whose (n-1)-th arithmetic derivative (A003415) is one, and for n > 1, the (n-2)-th derivative, which by necessity is prime, is distinct from the corresponding primes that occur for all other terms of the sequence.

The programs for A400828, there is no canonical definition to state claims against.
-/

/-! ## A400828.P8279941902434074340

`A400830(∑[n]+1)`
-/

namespace A400828.P8279941902434074340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400828.P8279941902434074340

/-! ## A400828.P16038029519946885365

`record[A400830(n+1)/A034851(n)]`
-/

namespace A400828.P16038029519946885365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400830 (n + 1) : ℚ) / (A034851 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400828.P16038029519946885365

/-! ## A400828.P887778063286681989

`record[A400830(n+1)/A193738(n)]`
-/

namespace A400828.P887778063286681989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400830 (n + 1) : ℚ) / (A193738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400828.P887778063286681989

/-! ## A400828.P12769474364212891217

`record[A400830(n+1)/A225434(n)]`
-/

namespace A400828.P12769474364212891217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400830 (n + 1) : ℚ) / (A225434 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400828.P12769474364212891217

/-! ## A400828.P7072976630015117157

`record[A400830(n+1)/A008284(n+1)]`
-/

namespace A400828.P7072976630015117157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400830 (n + 1) : ℚ) / (A008284 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400828.P7072976630015117157

/-!
# A400829: The (n-2)-th arithmetic derivative of A400828(n): a(n) = A003415^(n-2)(A400828(n)).

The programs for A400829, there is no canonical definition to state claims against.
-/

/-! ## A400829.P6550650691204038673

`A400830(∑[2+n])`
-/

namespace A400829.P6550650691204038673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400829.P6550650691204038673

/-! ## A400829.P10516409623241183622

`p?[A400830(n+1)]`
-/

namespace A400829.P10516409623241183622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A400829.P10516409623241183622

/-! ## A400829.P8416041174239045515

`filter[A400830(n+1), A010051(#)]`
-/

namespace A400829.P8416041174239045515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A400829.P8416041174239045515

/-! ## A400829.P1751597978425691804

`filter[A400830(n+1), A353817(#)]`
-/

namespace A400829.P1751597978425691804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A400829.P1751597978425691804

/-! ## A400829.P14621172052508866176

`filter[A400830(n+1), A325313(#)]`
-/

namespace A400829.P14621172052508866176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325313 (f1 j).toNat = 1) n)

end

end A400829.P14621172052508866176

/-!
# A400832: Lexicographically earliest infinite sequence such that a(i) = a(j) => A400831(i) = A400831(j), for all i, j >= 1, where A400831(n) = Product_{d|n} A276086(A300251(d)).

The programs for A400832, there is no canonical definition to state claims against.
-/

/-! ## A400832.P15261517131201827491

`A400834(n+1)%A082534(A211423(2*n+3))`
-/

namespace A400832.P15261517131201827491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400834 (n + 1)) (A082534 (A211423 (2 * n + 3)).toNat)

end

end A400832.P15261517131201827491

/-! ## A400832.P8556744217910844613

`A400834(n+1)%A000010(A008000(n+1))`
-/

namespace A400832.P8556744217910844613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400834 (n + 1)) (A000010 (A008000 (n + 1)).toNat)

end

end A400832.P8556744217910844613

/-! ## A400832.P9677450211982860855

`A400834(n+1)%A000079(A046693(n))`
-/

namespace A400832.P9677450211982860855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400834 (n + 1)) (A000079 (A046693 n).toNat)

end

end A400832.P9677450211982860855

/-! ## A400832.P1752851331939572700

`A400834(n+1)%A001550(n)`
-/

namespace A400832.P1752851331939572700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400834 (n + 1)) (A001550 n)

end

end A400832.P1752851331939572700

/-! ## A400832.P13633784954246273666

`and(A018886(n+1), A400834(n+1))`
-/

namespace A400832.P13633784954246273666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A400834 (n + 1))

end

end A400832.P13633784954246273666

/-! ## A400832.P12997114981049541549

`A341520(∑{#}[A400834(n+1), #])`
-/

namespace A400832.P12997114981049541549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341520 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A400832.P12997114981049541549

/-! ## A400832.P14026248142047709052

`A400834(n+1)+A063524(A309690(n))`
-/

namespace A400832.P14026248142047709052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1) + A063524 (A309690 n).toNat

end

end A400832.P14026248142047709052

/-! ## A400832.P2636421610477950764

`A400834(n+1)+A008683(A001694(3*(n+1)))`
-/

namespace A400832.P2636421610477950764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1) + A008683 (A001694 (3 * (n + 1))).toNat

end

end A400832.P2636421610477950764

/-! ## A400832.P18082221328545156744

`A400834(n+1)+A133100(A002145(3*n+4))`
-/

namespace A400832.P18082221328545156744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1) + A133100 (A002145 (3 * n + 4)).toNat

end

end A400832.P18082221328545156744

/-! ## A400832.P1478890586782608701

`A400834(n+1)+A008966(A001694(3*n+5))`
-/

namespace A400832.P1478890586782608701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1) + A008966 (A001694 (3 * n + 5)).toNat

end

end A400832.P1478890586782608701

/-! ## A400832.P14894951879092707276

`A003056(∑{#}[A400834(n+1), #])`
-/

namespace A400832.P14894951879092707276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A400832.P14894951879092707276

/-! ## A400832.P4729945323205638091

`A004489(∑{#}[A400834(n+1), #])`
-/

namespace A400832.P4729945323205638091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A400832.P4729945323205638091

/-! ## A400832.P10317542295257396766

`and(A164291(n+2), A400834(n+1))`
-/

namespace A400832.P10317542295257396766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A400834 (n + 1))

end

end A400832.P10317542295257396766

/-! ## A400832.P6846136021547869669

`and(A060160(n+1), A400834(n+1))`
-/

namespace A400832.P6846136021547869669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A400834 (n + 1))

end

end A400832.P6846136021547869669

/-! ## A400832.P12709139120825904084

`A400834(n+1)^A070039(A400843(n+1))`
-/

namespace A400832.P12709139120825904084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400834 (n + 1) : ℚ) ^ (A070039 (A400843 (n + 1)).toNat : ℤ)

end

end A400832.P12709139120825904084

/-! ## A400832.P8607213708184900878

`A400834(n+1)%A000980(n)`
-/

namespace A400832.P8607213708184900878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400834 (n + 1)) (A000980 n)

end

end A400832.P8607213708184900878

/-! ## A400832.P2940089037158783176

`and(A103454(n), A400834(n+1))`
-/

namespace A400832.P2940089037158783176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103454 n) (A400834 (n + 1))

end

end A400832.P2940089037158783176

/-! ## A400832.P7275323919150433194

`and(A083420(n), A400834(n+1))`
-/

namespace A400832.P7275323919150433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A400834 (n + 1))

end

end A400832.P7275323919150433194

/-! ## A400832.P11349504492540980430

`and(A281482(n), A400834(n+1))`
-/

namespace A400832.P11349504492540980430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281482 n) (A400834 (n + 1))

end

end A400832.P11349504492540980430

/-! ## A400832.P4568511358052279346

`and(A140529(n), A400834(n+1))`
-/

namespace A400832.P4568511358052279346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140529 n) (A400834 (n + 1))

end

end A400832.P4568511358052279346

/-!
# A400833: a(n) = Product_{d|n, d squarefree} A276086(A400173(n/d)), where A400173 is Dirichlet convolution of arithmetic derivative with Liouville's lambda and A276086 is the primorial base exp-function.

The programs for A400833, there is no canonical definition to state claims against.
-/

/-! ## A400833.P24216935444965117

`A068234(n+1)%2*A400831(n+1)`
-/

namespace A400833.P24216935444965117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068234 (n + 1)) 2 * A400831 (n + 1)

end

end A400833.P24216935444965117

/-! ## A400833.P8458159909252543919

`A400831(n+1)+A000007(A022172(n))`
-/

namespace A400833.P8458159909252543919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (n + 1) + A000007 (A022172 n).toNat

end

end A400833.P8458159909252543919

/-! ## A400833.P14208276045025426347

`A400831(n+1)+A000007(A080014(n))`
-/

namespace A400833.P14208276045025426347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (n + 1) + A000007 (A080014 n).toNat

end

end A400833.P14208276045025426347

/-! ## A400833.P15184798409404131062

`A400831(n+1)+A000007(A136752(n))`
-/

namespace A400833.P15184798409404131062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (n + 1) + A000007 (A136752 n).toNat

end

end A400833.P15184798409404131062

/-! ## A400833.P10755553049981513678

`A400831(n+1)%A020895(A000031(n))`
-/

namespace A400833.P10755553049981513678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400831 (n + 1)) (A020895 (A000031 n).toNat)

end

end A400833.P10755553049981513678

/-!
# A400835: After the initial 0, numbers k such that k is a multiple of A007947(A327860(k)).

The programs for A400835, there is no canonical definition to state claims against.
-/

/-! ## A400835.P9606209591866163018

`A380527(n+1)%A003132(A128024(n+1))`
-/

namespace A400835.P9606209591866163018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380527 (n + 1)) (A003132 (A128024 (n + 1)).toNat)

end

end A400835.P9606209591866163018

/-!
# A400839: Numbers k such that prime(1+k) divides 1+2*prime(k)#/prime(i)# for some i in range 1..k, where prime(n)# = A002110(n) is the n-th primorial number.

The programs for A400839, there is no canonical definition to state claims against.
-/

/-! ## A400839.P12212369769037398217

`lt[0, A401050(n)]`
-/

namespace A400839.P12212369769037398217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400839.P12212369769037398217

/-! ## A400839.P6133047355084217818

`record[A400838(n+1)%2*(n+1)]`
-/

namespace A400839.P6133047355084217818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400838 (n + 1)) 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400839.P6133047355084217818

/-! ## A400839.P8987178335195143431

`A000720(A400842(1+n)-1)`
-/

namespace A400839.P8987178335195143431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400842 (1 + n) - 1).toNat

end

end A400839.P8987178335195143431

/-! ## A400839.P9530310413707728163

`A153881(n+2)+A000720(A400842(n+1))`
-/

namespace A400839.P9530310413707728163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A000720 (A400842 (n + 1)).toNat

end

end A400839.P9530310413707728163

/-! ## A400839.P9671582423872721641

`A033270(A400842(n+1))`
-/

namespace A400839.P9671582423872721641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A400842 (n + 1)).toNat

end

end A400839.P9671582423872721641

/-! ## A400839.P15644220424998537179

`A344616(2*A400842(n+1))`
-/

namespace A400839.P15644220424998537179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (2 * A400842 (n + 1)).toNat

end

end A400839.P15644220424998537179

/-! ## A400839.P10683760235988450463

`A241919(2*A400842(n+1))`
-/

namespace A400839.P10683760235988450463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (2 * A400842 (n + 1)).toNat

end

end A400839.P10683760235988450463

/-! ## A400839.P6440924423608739134

`A286470(A400842(n+1)+A400842(n+1))`
-/

namespace A400839.P6440924423608739134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A400842 (n + 1) + A400842 (n + 1)).toNat

end

end A400839.P6440924423608739134

/-!
# A400842: Primes p for which there exists an odd prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A400842, there is no canonical definition to state claims against.
-/

/-! ## A400842.P331555172458690534

`A000040(1+A400839(n+1))`
-/

namespace A400842.P331555172458690534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A400839 (n + 1)).toNat

end

end A400842.P331555172458690534

/-! ## A400842.P7976992509599420636

`A065091(A400839(n+1))`
-/

namespace A400842.P7976992509599420636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A400839 (n + 1)).toNat

end

end A400842.P7976992509599420636

/-! ## A400842.P836255763515647665

`A006093(1+A400839(n+1))+1`
-/

namespace A400842.P836255763515647665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (1 + A400839 (n + 1)).toNat + 1

end

end A400842.P836255763515647665

/-! ## A400842.P9072315846489681042

`A008578(A400839(n+1)+2)`
-/

namespace A400842.P9072315846489681042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A400839 (n + 1) + 2).toNat

end

end A400842.P9072315846489681042

/-! ## A400842.P9717045993574764380

`A400843(lt[A206839(n+1), A048356(n+1)])`
-/

namespace A400842.P9717045993574764380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400842.P9717045993574764380

/-!
# A400843: Primes p for which there exists a prime q <= p for which 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A400843, there is no canonical definition to state claims against.
-/

/-! ## A400843.P15746480475504110667

`A000040(1+A401059(n+1))`
-/

namespace A400843.P15746480475504110667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A401059 (n + 1)).toNat

end

end A400843.P15746480475504110667

/-! ## A400843.P12788295958248690788

`record[A401051(1+n)]`
-/

namespace A400843.P12788295958248690788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401051 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400843.P12788295958248690788

/-! ## A400843.P8153033486393592575

`A065091(A401059(1+n))`
-/

namespace A400843.P8153033486393592575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A401059 (1 + n)).toNat

end

end A400843.P8153033486393592575

/-! ## A400843.P15598210827243251567

`A008578(A401059(n+1)+2)`
-/

namespace A400843.P15598210827243251567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401059 (n + 1) + 2).toNat

end

end A400843.P15598210827243251567

/-! ## A400843.P8213257422980265930

`A182986(A401059(n+1)+2)`
-/

namespace A400843.P8213257422980265930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A401059 (n + 1) + 2).toNat

end

end A400843.P8213257422980265930

/-!
# A400847: Primes p such that (p^2 + nextprime(p))/2 is also prime.

The programs for A400847, there is no canonical definition to state claims against.
-/

/-! ## A400847.P15971497902068495307

`A160227(A022777(n+1))`
-/

namespace A400847.P15971497902068495307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160227 (A022777 (n + 1)).toNat

end

end A400847.P15971497902068495307

/-! ## A400847.P257731220940354230

`A327473(Δ[A000040(n²+2)])`
-/

namespace A400847.P257731220940354230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (f1 (n + 1) - f1 n).toNat

end

end A400847.P257731220940354230

/-!
# A400850: Refactorable numbers k (A033950) such that d(k/d(k)) = d(d(k)), where d(x) is the number of divisors of x (A000005).

The programs for A400850, there is no canonical definition to state claims against.
-/

/-! ## A400850.P2902468764481054714

`A374025(A392643(n))`
-/

namespace A400850.P2902468764481054714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374025 (A392643 n).toNat

end

end A400850.P2902468764481054714

/-!
# A400851: a(n) = 4*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=2.

The programs for A400851, the canonical program `A400851.P10122007858320249699` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400851 has offset 0).

The definition of A400851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A400851.P10122007858320249699`, by `A400851.P10122007858320249699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400851.P1322243195473455913

`ogf((1-2x)/(1-4x-10x^2))`
-/

namespace A400851.P1322243195473455913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -10] n

end

end A400851.P1322243195473455913

namespace A400851

/-- `ogf((1-2x)/(1-4x-10x^2))` -/
def P1322243195473455913.Spec : Prop :=
  ∀ n, P1322243195473455913.a n = A400851 n

end A400851

/-! ## A400851.P10122007858320249699

`4*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400851

/-- `4*a(n-1)+10*a(n-2)` -/
def P10122007858320249699.Spec : Prop :=
  ∀ n, (P10122007858320249699.a n : ℤ) = A400851 n

theorem P10122007858320249699.correct : P10122007858320249699.Spec := by
  intro n
  simp only [A400851]

end A400851

/-! ## A400851.P6096777998680337665

`2*(3*a(n-1)-(a(n-1)-5*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A400851.P6096777998680337665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2)))

end

end A400851.P6096777998680337665

namespace A400851

/-- `2*(3*a(n-1)-(a(n-1)-5*a(n-2)))` -/
def P6096777998680337665.Spec : Prop :=
  ∀ n, P6096777998680337665.a n = A400851 n

end A400851

/-! ## A400851.P6276681013554343363

`∑{#}[n, C(n, #)*A133343(#)]`
-/

namespace A400851.P6276681013554343363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A133343 k

end

end A400851.P6276681013554343363

namespace A400851

/-- `∑{#}[n, C(n, #)*A133343(#)]` -/
def P6276681013554343363.Spec : Prop :=
  ∀ n, P6276681013554343363.a n = A400851 n

end A400851

/-! ## A400851.P11658101930184714214

`Δ[A180226(n+1)]-A180226(n+1)`
-/

namespace A400851.P11658101930184714214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A180226 (n + 1)

end

end A400851.P11658101930184714214

namespace A400851

/-- `Δ[A180226(n+1)]-A180226(n+1)` -/
def P11658101930184714214.Spec : Prop :=
  ∀ n, P11658101930184714214.a n = A400851 n

end A400851

/-! ## A400851.P16066213345646268974

`A180226(n+2)-(A180226(n+1)+A180226(n+1))`
-/

namespace A400851.P16066213345646268974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180226 (n + 2) - (A180226 (n + 1) + A180226 (n + 1))

end

end A400851.P16066213345646268974

namespace A400851

/-- `A180226(n+2)-(A180226(n+1)+A180226(n+1))` -/
def P16066213345646268974.Spec : Prop :=
  ∀ n, P16066213345646268974.a n = A400851 n

end A400851

/-!
# A400853: Largest number k such that the multiplicative group of squares modulo k is cyclic of order A396684(n), or 0 if no such k exists.

The programs for A400853, there is no canonical definition to state claims against.
-/

/-! ## A400853.P7549511874248574745

`A002338(n+1)*A186682(A005938(3*(n+1)))`
-/

namespace A400853.P7549511874248574745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002338 (n + 1) * A186682 (A005938 (3 * (n + 1))).toNat

end

end A400853.P7549511874248574745

/-!
# A400854: Largest k such that A046073(k) = n, or 0 if no such k exists.

The programs for A400854, there is no canonical definition to state claims against.
-/

/-! ## A400854.P4609102497870792762

`A349440(A081863(n+1))`
-/

namespace A400854.P4609102497870792762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349440 (A081863 (n + 1)).toNat

end

end A400854.P4609102497870792762

/-!
# A400855: Values taken by A046073.

The programs for A400855, there is no canonical definition to state claims against.
-/

/-! ## A400855.P16050707499039951800

`lt[0, A400862(n+1)]+1`
-/

namespace A400855.P16050707499039951800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400855.P16050707499039951800

/-! ## A400855.P10032945587415364414

`comp[n+1-A400862(n+2)]+1`
-/

namespace A400855.P10032945587415364414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A400862 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A400855.P10032945587415364414

/-! ## A400855.P13920540584125089295

`comp[A000027(n+1)-A400862(n+1)]`
-/

namespace A400855.P13920540584125089295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A400862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400855.P13920540584125089295

/-! ## A400855.P13120633392991936837

`lt[0, A399566(n+1)]+1`
-/

namespace A400855.P13120633392991936837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400855.P13120633392991936837

/-! ## A400855.P16969354897988544800

`lt[0, A400854(1+n)]+1`
-/

namespace A400855.P16969354897988544800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400854 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400855.P16969354897988544800

/-!
# A400856: Numbers m such that there exists k such that the multiplicative group of squares modulo k is cyclic of order m.

The programs for A400856, there is no canonical definition to state claims against.
-/

/-! ## A400856.P1727966830855270394

`A396684(lt[0, A400852(n+1)]+1)`
-/

namespace A400856.P1727966830855270394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A400856.P1727966830855270394

/-! ## A400856.P379180741148980651

`A396684(lt[0, A400853(n+1)]+1)`
-/

namespace A400856.P379180741148980651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A400856.P379180741148980651

/-! ## A400856.P12086201546629027826

`A396684(lt[0, A400860(n+1)]+1)`
-/

namespace A400856.P12086201546629027826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A400856.P12086201546629027826

/-! ## A400856.P1378715768780021185

`∩[A396684(n+1), comp[A400857(n+1)]]`
-/

namespace A400856.P1378715768780021185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400857 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A400856.P1378715768780021185

/-! ## A400856.P1920303036567628457

`A396684(comp[n-A400853(n+1)]+1)`
-/

namespace A400856.P1920303036567628457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400853 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A400856.P1920303036567628457

/-! ## A400856.P2407683345551035739

`A396684(comp[n-A400860(n+1)]+1)`
-/

namespace A400856.P2407683345551035739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A400856.P2407683345551035739

/-!
# A400857: Numbers m in A396684 such that there does not exist k such that the multiplicative group of squares modulo k is cyclic of order m.

The programs for A400857, there is no canonical definition to state claims against.
-/

/-! ## A400857.P2980976566859230927

`∩[A396684(n+1), comp[A400856(n+1)]]`
-/

namespace A400857.P2980976566859230927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400856 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A400857.P2980976566859230927

/-! ## A400857.P11571298123131284519

`A396684(lt[A400852(n+1), 1]+1)`
-/

namespace A400857.P11571298123131284519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400852 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A400857.P11571298123131284519

/-! ## A400857.P15502053752952297731

`A396684(lt[A400853(n+1), 1]+1)`
-/

namespace A400857.P15502053752952297731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400853 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A400857.P15502053752952297731

/-! ## A400857.P1936383677520835986

`A396684(lt[A400860(n+1), 1]+1)`
-/

namespace A400857.P1936383677520835986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400860 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A400857.P1936383677520835986

/-! ## A400857.P15930303512172872399

`A396684(eq[A400852(n+1), A400853(n+1)]+1)`
-/

namespace A400857.P15930303512172872399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A400857.P15930303512172872399

/-! ## A400857.P1917072620479579577

`A396684(eq[A400852(n+1), A400860(n+1)]+1)`
-/

namespace A400857.P1917072620479579577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A400857.P1917072620479579577

/-!
# A400860: Smallest number k such that the multiplicative group of squares modulo k is cyclic of order A396684(n), or 0 if no such k exists.

The programs for A400860, there is no canonical definition to state claims against.
-/

/-! ## A400860.P3256504366394965443

`A002396(n+2)%A381663(A046590(3*n+1))`
-/

namespace A400860.P3256504366394965443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002396 (n + 2)) (A381663 (A046590 (3 * n + 1)).toNat)

end

end A400860.P3256504366394965443

/-! ## A400860.P13101283306609302020

`A002396(n+2)%A217599(n+1)`
-/

namespace A400860.P13101283306609302020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002396 (n + 2)) (A217599 (n + 1))

end

end A400860.P13101283306609302020

/-! ## A400860.P7864042820163979463

`A002396(n+2)%A035336(A068156(n))`
-/

namespace A400860.P7864042820163979463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002396 (n + 2)) (A035336 (A068156 n).toNat)

end

end A400860.P7864042820163979463

/-!
# A400861: a(n) is the largest N such that the integers 1..n can be arranged in a row so that the sums of blocks of adjacent terms (including single terms) cover every integer from 1 to N.

The programs for A400861, there is no canonical definition to state claims against.
-/

/-! ## A400861.P9567518666787741745

`A022778(n+1)-A356163(A006882(n))`
-/

namespace A400861.P9567518666787741745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022778 (n + 1) - A356163 (A006882 n).toNat

end

end A400861.P9567518666787741745

/-! ## A400861.P17352011802573484783

`eq[A040000(n), A055396(A105703(n))]`
-/

namespace A400861.P17352011802573484783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A105703 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400861.P17352011802573484783

/-! ## A400861.P9641029756857147103

`A000217(n)-A029837(A146581(n+1))`
-/

namespace A400861.P9641029756857147103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A029837 (A146581 (n + 1)).toNat

end

end A400861.P9641029756857147103

/-! ## A400861.P7155557642412696411

`A049981(n+1)-A190427(A000108(n))`
-/

namespace A400861.P7155557642412696411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - A190427 (A000108 n).toNat

end

end A400861.P7155557642412696411

/-!
# A400867: Numbers k such that k and k+2 are both Ulam numbers.

The programs for A400867, there is no canonical definition to state claims against.
-/

/-! ## A400867.P12726090624980255457

`∩[∑[A072832(n+2)], A002858(n+1)]`
-/

namespace A400867.P12726090624980255457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A400867.P12726090624980255457

/-!
# A400869: The number of ordered pairs (k_1, k_2) of nonnegative integers bitwise covered by n such that k_1 + k_2 is also bitwise covered by n.

The programs for A400869, there is no canonical definition to state claims against.
-/

/-! ## A400869.P11320838772732937376

`A400870(2^n)`
-/

namespace A400869.P11320838772732937376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400870 (2 ^ n)

end

end A400869.P11320838772732937376

/-! ## A400869.P6103862680108361145

`A400870(A000079(n))%A112041(n+1)`
-/

namespace A400869.P6103862680108361145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400870 (A000079 n).toNat) (A112041 (n + 1))

end

end A400869.P6103862680108361145

/-! ## A400869.P5613614249243726600

`A400870(A112387(2*n))%A001133(n+1)`
-/

namespace A400869.P5613614249243726600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400870 (A112387 (2 * n)).toNat) (A001133 (n + 1))

end

end A400869.P5613614249243726600

/-! ## A400869.P16125242084130221874

`A400870(A112387(2*n))+A000038(3*n+2)`
-/

namespace A400869.P16125242084130221874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400870 (A112387 (2 * n)).toNat + A000038 (3 * n + 2)

end

end A400869.P16125242084130221874

/-! ## A400869.P15074433426887229296

`A400870(A112387(2*n))+A059841(2*n+3)`
-/

namespace A400869.P15074433426887229296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400870 (A112387 (2 * n)).toNat + A059841 (2 * n + 3)

end

end A400869.P15074433426887229296

/-!
# A400870: The number of ordered pairs of infinitary divisors (d_1, d_2) of n such that d_1*d_2 is also an infinitary divisor of n.

The programs for A400870, there is no canonical definition to state claims against.
-/

/-! ## A400870.P10318850059919491360

`∏{e}[1+n, A400869(#)]`
-/

namespace A400870.P10318850059919491360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A400869 (Nat.factorization (f1 n) p)

end

end A400870.P10318850059919491360

/-! ## A400870.P17508267137245294256

`A400872(A129196(n))`
-/

namespace A400870.P17508267137245294256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400872 (A129196 n).toNat

end

end A400870.P17508267137245294256

/-! ## A400870.P8314592019822117915

`gcd(A007425(n+1), A056965(A072861(2*(n+2))))`
-/

namespace A400870.P8314592019822117915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007425 (n + 1)) (A056965 (A072861 (2 * (n + 2))).toNat)

end

end A400870.P8314592019822117915

/-! ## A400870.P2562711518829790103

`A363825(A384558(n+1)*(n+1)*(n+1))`
-/

namespace A400870.P2562711518829790103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363825 (A384558 (n + 1) * (n + 1 : ℤ) * (n + 1 : ℤ)).toNat

end

end A400870.P2562711518829790103

/-! ## A400870.P9466824586414416824

`A363825(A384559(n+1)*(n+1)*(n+1))`
-/

namespace A400870.P9466824586414416824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363825 (A384559 (n + 1) * (n + 1 : ℤ) * (n + 1 : ℤ)).toNat

end

end A400870.P9466824586414416824

/-!
# A400871: The number of ordered pairs of exponential divisors (d_1, d_2) of n^2 such d_1*d_2 is also an exponential divisor of n^2.

The programs for A400871, there is no canonical definition to state claims against.
-/

/-! ## A400871.P4042732092916513726

`∏{e}[1+n, A385429(#)]`
-/

namespace A400871.P4042732092916513726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A385429 (Nat.factorization (f1 n) p)

end

end A400871.P4042732092916513726

/-! ## A400871.P13843330939581813049

`A165038(A112622(1+n))`
-/

namespace A400871.P13843330939581813049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (A112622 (1 + n)).toNat

end

end A400871.P13843330939581813049

/-! ## A400871.P4454796271891324218

`A327567(A289840(∏{e}[n+1, (-2)^#/2]²))`
-/

namespace A400871.P4454796271891324218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (A289840 (SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2) ^ 2)).toNat).toNat

end

end A400871.P4454796271891324218

/-! ## A400871.P679892755603266337

`A001222(A104479(ceil(∑{e}[n+1, #-n/(n+1)])!))`
-/

namespace A400871.P679892755603266337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104479 (Nat.factorial ⌈∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) - (n : ℚ) / (n + 1 : ℚ))⌉.toNat)).toNat

end

end A400871.P679892755603266337

/-! ## A400871.P10690445820290570727

`A349474(A351656(n+1))%A340105(A051698(n))`
-/

namespace A400871.P10690445820290570727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349474 (A351656 (n + 1)).toNat) (A340105 (A051698 n).toNat)

end

end A400871.P10690445820290570727

/-! ## A400871.P9150940309550849716

`A349474(A351656(n+1))+A000038(A340105(n+1))`
-/

namespace A400871.P9150940309550849716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (A351656 (n + 1)).toNat + A000038 (A340105 (n + 1)).toNat

end

end A400871.P9150940309550849716

/-! ## A400871.P6050456446331987350

`A349474(A351656(n+1)%A340105(n+3))`
-/

namespace A400871.P6050456446331987350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (Int.tmod (A351656 (n + 1)) (A340105 (n + 3))).toNat

end

end A400871.P6050456446331987350

/-! ## A400871.P6918120368985642574

`A349474(A351656(n+1))+A000038(A390233(n+1))`
-/

namespace A400871.P6918120368985642574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (A351656 (n + 1)).toNat + A000038 (A390233 (n + 1)).toNat

end

end A400871.P6918120368985642574

/-!
# A400872: The total number of exponential divisors of the exponential divisors of n.

The programs for A400872, the canonical program `A400872.P1320321163544664813` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400872 has offset 1).

The definition of A400872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400872.P1320321163544664813

`∏{e}[1+n, A007425(#)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400872

/-- `∏{e}[1+n, A007425(#)]` -/
def P1320321163544664813.Spec : Prop :=
  ∀ n, P1320321163544664813.a n = A400872 (n + 1)

theorem P1320321163544664813.correct : P1320321163544664813.Spec := by
  intro n
  simp only [A400872, Nat.add_sub_cancel]

end A400872

/-! ## A400872.P4437418686059593067

`A159793(A049419(n+1)%A207015(n+1))/2`
-/

namespace A400872.P4437418686059593067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159793 (Int.tmod (A049419 (n + 1)) (A207015 (n + 1))).toNat : ℚ) / 2

end

end A400872.P4437418686059593067

namespace A400872

/-- `A159793(A049419(n+1)%A207015(n+1))/2` -/
def P4437418686059593067.Spec : Prop :=
  ∀ n, P4437418686059593067.a n = (A400872 (n + 1) : ℚ)

end A400872

/-! ## A400872.P16443729207043684620

`A219609(A112622(1+n))`
-/

namespace A400872.P16443729207043684620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (A112622 (1 + n)).toNat

end

end A400872.P16443729207043684620

namespace A400872

/-- `A219609(A112622(1+n))` -/
def P16443729207043684620.Spec : Prop :=
  ∀ n, P16443729207043684620.a n = A400872 (n + 1)

end A400872

/-! ## A400872.P10054962230693977594

`gcd(A007425(A076663(2*n+3)), A388067(n+1))`
-/

namespace A400872.P10054962230693977594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007425 (A076663 (2 * n + 3)).toNat) (A388067 (n + 1))

end

end A400872.P10054962230693977594

namespace A400872

/-- `gcd(A007425(A076663(2*n+3)), A388067(n+1))` -/
def P10054962230693977594.Spec : Prop :=
  ∀ n, (P10054962230693977594.a n : ℤ) = A400872 (n + 1)

end A400872

/-! ## A400872.P5944615526473455860

`A388067((n+1)%A295512(n+1))`
-/

namespace A400872.P5944615526473455860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (Int.tmod (n + 1 : ℤ) (A295512 (n + 1))).toNat

end

end A400872.P5944615526473455860

namespace A400872

/-- `A388067((n+1)%A295512(n+1))` -/
def P5944615526473455860.Spec : Prop :=
  ∀ n, P5944615526473455860.a n = A400872 (n + 1)

end A400872

/-!
# A400877: Positive numbers k that can be written as k=x*y*z*u, x>y>z>u>1, in at least one way.

The programs for A400877, there is no canonical definition to state claims against.
-/

/-! ## A400877.P11924471399743537619

`lt[11, A032741(n)]`
-/

namespace A400877.P11924471399743537619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400877.P11924471399743537619

/-! ## A400877.P2838488359282283838

`lt[14, A135550(n)]`
-/

namespace A400877.P2838488359282283838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400877.P2838488359282283838

/-! ## A400877.P17538579515279549863

`lt[6, A081757(n+1)]`
-/

namespace A400877.P17538579515279549863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400877.P17538579515279549863

/-! ## A400877.P17460370717298928993

`lt[6, A038548(n+1)]+1`
-/

namespace A400877.P17460370717298928993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400877.P17460370717298928993

/-! ## A400877.P15113216947988216830

`lt[9, A281116(n+1)]+1`
-/

namespace A400877.P15113216947988216830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400877.P15113216947988216830

/-! ## A400877.P9144885401299771007

`lt[10, A045778(n+1)]+1`
-/

namespace A400877.P9144885401299771007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400877.P9144885401299771007

/-! ## A400877.P7432858413272911677

`lt[13, A000005(n+1)]+1`
-/

namespace A400877.P7432858413272911677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400877.P7432858413272911677

/-! ## A400877.P17865758400785128982

`lt[50, 2^A072670(n)]+1`
-/

namespace A400877.P17865758400785128982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072670 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A400877.P17865758400785128982

/-! ## A400877.P802197446190139065

`lt[8, A023645(n+1)-3]+1`
-/

namespace A400877.P802197446190139065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400877.P802197446190139065

/-! ## A400877.P5121467754799868147

`lt[12, A000005(A028310(n))]`
-/

namespace A400877.P5121467754799868147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400877.P5121467754799868147

/-!
# A400878: Number of halting compressed register-machine programs of total length 7*n bits.

The programs for A400878, there is no canonical definition to state claims against.
-/

/-! ## A400878.P15823544510348370059

`A322313(∏[A158649(n)²])`
-/

namespace A400878.P15823544510348370059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158649 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400878.P15823544510348370059

/-! ## A400878.P1637510729211677066

`A035026(A243697(n)+A134478(n))`
-/

namespace A400878.P1637510729211677066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A243697 n + A134478 n).toNat

end

end A400878.P1637510729211677066

/-!
# A400879: Number of n X n binary Riordan matrices that are poset matrices (labeled Riordan posets with n elements).

The programs for A400879, there is no canonical definition to state claims against.
-/

/-! ## A400879.P16594954372640412690

`ceil((A392463(3*(n+1))/5)²)`
-/

namespace A400879.P16594954372640412690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A392463 (3 * (n + 1)) : ℚ) / 5) ^ 2⌉

end

end A400879.P16594954372640412690

/-! ## A400879.P17756874278872250545

`A085766(A057969(n))`
-/

namespace A400879.P17756874278872250545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085766 (A057969 n).toNat

end

end A400879.P17756874278872250545

/-!
# A400881: Number of s-meandric permutations of length n.

The programs for A400881, there is no canonical definition to state claims against.
-/

/-! ## A400881.P11906205194996640775

`A190160(n)+A004523(A114710(n))`
-/

namespace A400881.P11906205194996640775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190160 n + A004523 (A114710 n).toNat

end

end A400881.P11906205194996640775

/-! ## A400881.P10406947367700772541

`A076885(A395614(n))`
-/

namespace A400881.P10406947367700772541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A395614 n).toNat

end

end A400881.P10406947367700772541

/-! ## A400881.P12825848989216235657

`A178325(n)+A170965(A277289(n+1))`
-/

namespace A400881.P12825848989216235657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178325 n + A170965 (A277289 (n + 1)).toNat

end

end A400881.P12825848989216235657

/-!
# A400882: Number of sum-indecomposable s-meandric permutations of length n.

The programs for A400882, there is no canonical definition to state claims against.
-/

/-! ## A400882.P3365782905152021823

`A141206(A007166(n))`
-/

namespace A400882.P3365782905152021823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (A007166 n).toNat

end

end A400882.P3365782905152021823

/-! ## A400882.P13126986557467458088

`A336591(A383972(n^n))`
-/

namespace A400882.P13126986557467458088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (A383972 (n ^ n)).toNat

end

end A400882.P13126986557467458088

/-!
# A400888: Contents of the quarter-turn corrected Stern vectors associated with the column words of the Gosper-Lafitte triangle.

The programs for A400888, there is no canonical definition to state claims against.
-/

/-! ## A400888.P6657906406742900970

`A101809(A366375(n+1))`
-/

namespace A400888.P6657906406742900970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101809 (A366375 (n + 1)).toNat

end

end A400888.P6657906406742900970

/-! ## A400888.P7908172745288496214

`A185319(A364492(n+1))`
-/

namespace A400888.P7908172745288496214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (A364492 (n + 1)).toNat

end

end A400888.P7908172745288496214

/-! ## A400888.P15656345652747580144

`A086671(gcd(A226137(3*n+5), A389610(n+2)))`
-/

namespace A400888.P15656345652747580144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (Int.gcd (A226137 (3 * n + 5)) (A389610 (n + 2)))

end

end A400888.P15656345652747580144

/-! ## A400888.P7159178356278131746

`gcd(12*n, A179108((n+1)/2^val(n+1, 2)))`
-/

namespace A400888.P7159178356278131746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n : ℤ) (A179108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A400888.P7159178356278131746

/-! ## A400888.P7159984411029985628

`gcd(A000005(3*n+2), A370636(A006370(n+1)))`
-/

namespace A400888.P7159984411029985628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (3 * n + 2)) (A370636 (A006370 (n + 1)).toNat)

end

end A400888.P7159984411029985628

/-!
# A400890: Numbers k such that the 2-adic valuation of 3*k+2 is odd.

The programs for A400890, the canonical program `A400890.P15796363409859546705` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400890 has offset 1).

The definition of A400890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400890.P15796363409859546705

`comp[A400891(1+n)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400890

/-- `comp[A400891(1+n)]` -/
def P15796363409859546705.Spec : Prop :=
  ∀ n, (P15796363409859546705.a n : ℤ) = A400890 (n + 1)

theorem P15796363409859546705.correct : P15796363409859546705.Spec := by
  intro n
  simp only [A400890, Nat.add_sub_cancel]

end A400890

/-! ## A400890.P15856411819937939839

`eq[0, A101660(n)]`
-/

namespace A400890.P15856411819937939839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400890.P15856411819937939839

namespace A400890

/-- `eq[0, A101660(n)]` -/
def P15856411819937939839.Spec : Prop :=
  ∀ n, (P15856411819937939839.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P8399058254351177470

`eq[1, A045898(1+n)]`
-/

namespace A400890.P8399058254351177470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400890.P8399058254351177470

namespace A400890

/-- `eq[1, A045898(1+n)]` -/
def P8399058254351177470.Spec : Prop :=
  ∀ n, (P8399058254351177470.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P17838909171920407454

`lt[A329480(1+n), 1]`
-/

namespace A400890.P17838909171920407454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329480 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A400890.P17838909171920407454

namespace A400890

/-- `lt[A329480(1+n), 1]` -/
def P17838909171920407454.Spec : Prop :=
  ∀ n, (P17838909171920407454.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P556367875800324511

`eq[A026498(n), A026513(n)]`
-/

namespace A400890.P556367875800324511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400890.P556367875800324511

namespace A400890

/-- `eq[A026498(n), A026513(n)]` -/
def P556367875800324511.Spec : Prop :=
  ∀ n, (P556367875800324511.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P10525235710623851996

`eq[0, A073059(2*n+1)]`
-/

namespace A400890.P10525235710623851996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073059 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400890.P10525235710623851996

namespace A400890

/-- `eq[0, A073059(2*n+1)]` -/
def P10525235710623851996.Spec : Prop :=
  ∀ n, (P10525235710623851996.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P9477879443326221770

`A004523(A084089(n+1))`
-/

namespace A400890.P9477879443326221770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A084089 (n + 1)).toNat

end

end A400890.P9477879443326221770

namespace A400890

/-- `A004523(A084089(n+1))` -/
def P9477879443326221770.Spec : Prop :=
  ∀ n, P9477879443326221770.a n = A400890 (n + 1)

end A400890

/-! ## A400890.P3903032944297611763

`comp[or(n, A396674(n))]`
-/

namespace A400890.P3903032944297611763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A396674 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400890.P3903032944297611763

namespace A400890

/-- `comp[or(n, A396674(n))]` -/
def P3903032944297611763.Spec : Prop :=
  ∀ n, (P3903032944297611763.a n : ℤ) = A400890 (n + 1)

end A400890

/-! ## A400890.P487360917427081519

`eq[1, A245187(3*n)]`
-/

namespace A400890.P487360917427081519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400890.P487360917427081519

namespace A400890

/-- `eq[1, A245187(3*n)]` -/
def P487360917427081519.Spec : Prop :=
  ∀ n, (P487360917427081519.a n : ℤ) = A400890 (n + 1)

end A400890

/-!
# A400891: Numbers k such that the 2-adic valuation of 3*k+2 is even.

The programs for A400891, the canonical program `A400891.P5500432230218377083` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400891 has offset 1).

The definition of A400891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400891.P5500432230218377083

`lt[val(val(3*n+2, 2)+1, 2), 1]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400891

/-- `lt[val(val(3*n+2, 2)+1, 2), 1]` -/
def P5500432230218377083.Spec : Prop :=
  ∀ n, (P5500432230218377083.a n : ℤ) = A400891 (n + 1)

theorem P5500432230218377083.correct : P5500432230218377083.Spec := by
  intro n
  simp only [A400891, Nat.add_sub_cancel]

end A400891

/-! ## A400891.P14875533971769736896

`comp[A400890(1+n)]`
-/

namespace A400891.P14875533971769736896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400890 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400891.P14875533971769736896

namespace A400891

/-- `comp[A400890(1+n)]` -/
def P14875533971769736896.Spec : Prop :=
  ∀ n, (P14875533971769736896.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P15673923990594358143

`floor(A400894(n+1)/2)`
-/

namespace A400891.P15673923990594358143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A400894 (n + 1) : ℚ) / 2⌋

end

end A400891.P15673923990594358143

namespace A400891

/-- `floor(A400894(n+1)/2)` -/
def P15673923990594358143.Spec : Prop :=
  ∀ n, P15673923990594358143.a n = A400891 (n + 1)

end A400891

/-! ## A400891.P8206493782467769070

`floor(A084088(n+1)/3)`
-/

namespace A400891.P8206493782467769070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084088 (n + 1) : ℚ) / 3⌋

end

end A400891.P8206493782467769070

namespace A400891

/-- `floor(A084088(n+1)/3)` -/
def P8206493782467769070.Spec : Prop :=
  ∀ n, P8206493782467769070.a n = A400891 (n + 1)

end A400891

/-! ## A400891.P17966463347633477774

`lt[0, A329480(1+n)]`
-/

namespace A400891.P17966463347633477774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329480 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400891.P17966463347633477774

namespace A400891

/-- `lt[0, A329480(1+n)]` -/
def P17966463347633477774.Spec : Prop :=
  ∀ n, (P17966463347633477774.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P5358669939204442275

`eq[1, gcd(4, A087230(n))]`
-/

namespace A400891.P5358669939204442275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A087230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400891.P5358669939204442275

namespace A400891

/-- `eq[1, gcd(4, A087230(n))]` -/
def P5358669939204442275.Spec : Prop :=
  ∀ n, (P5358669939204442275.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P9634057939932515098

`eq[1, A073059(2*n+1)]`
-/

namespace A400891.P9634057939932515098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073059 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400891.P9634057939932515098

namespace A400891

/-- `eq[1, A073059(2*n+1)]` -/
def P9634057939932515098.Spec : Prop :=
  ∀ n, (P9634057939932515098.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P1640552685148802314

`A004524(A400894(n+1))`
-/

namespace A400891.P1640552685148802314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A400894 (n + 1)).toNat

end

end A400891.P1640552685148802314

namespace A400891

/-- `A004524(A400894(n+1))` -/
def P1640552685148802314.Spec : Prop :=
  ∀ n, P1640552685148802314.a n = A400891 (n + 1)

end A400891

/-! ## A400891.P15047346434407901526

`A002264(A084088(n+1))`
-/

namespace A400891.P15047346434407901526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A084088 (n + 1)).toNat

end

end A400891.P15047346434407901526

namespace A400891

/-- `A002264(A084088(n+1))` -/
def P15047346434407901526.Spec : Prop :=
  ∀ n, P15047346434407901526.a n = A400891 (n + 1)

end A400891

/-!
# A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

The programs for A400893, the canonical program `A400893.P8227133802892121621` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400893 has offset 1).

The definition of A400893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400893

/-- `2*A400890(n+1)+1` -/
def P8227133802892121621.Spec : Prop :=
  ∀ n, P8227133802892121621.a n = A400893 (n + 1)

theorem P8227133802892121621.correct : P8227133802892121621.Spec := by
  intro n
  simp only [A400893, Nat.add_sub_cancel]

end A400893

/-! ## A400893.P3110669175817674180

`eq[2, A045898(n+1)]`
-/

namespace A400893.P3110669175817674180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400893.P3110669175817674180

namespace A400893

/-- `eq[2, A045898(n+1)]` -/
def P3110669175817674180.Spec : Prop :=
  ∀ n, (P3110669175817674180.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P11515189769042594675

`1+2*A400890(n+1)`
-/

namespace A400893.P11515189769042594675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A400890 (n + 1)

end

end A400893.P11515189769042594675

namespace A400893

/-- `1+2*A400890(n+1)` -/
def P11515189769042594675.Spec : Prop :=
  ∀ n, P11515189769042594675.a n = A400893 (n + 1)

theorem P11515189769042594675.correct : P11515189769042594675.Spec := by
  intro n
  simp only [A400893, Nat.add_sub_cancel, A400893.P11515189769042594675.a, A400893.P8227133802892121621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A400893

/-! ## A400893.P10811652608964362971

`filter[2*n+1, A101660(#)]`
-/

namespace A400893.P10811652608964362971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101660 (f1 j) = 1) n)

end

end A400893.P10811652608964362971

namespace A400893

/-- `filter[2*n+1, A101660(#)]` -/
def P10811652608964362971.Spec : Prop :=
  ∀ n, (P10811652608964362971.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P3459148201170611963

`filter[2*n, A098725(#)]-1`
-/

namespace A400893.P3459148201170611963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j) = 1) n) : ℤ) - 1

end

end A400893.P3459148201170611963

namespace A400893

/-- `filter[2*n, A098725(#)]-1` -/
def P3459148201170611963.Spec : Prop :=
  ∀ n, P3459148201170611963.a n = A400893 (n + 1)

end A400893

/-! ## A400893.P13990316739167292979

`2*comp[A400891(n+1)]+1`
-/

namespace A400893.P13990316739167292979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A400893.P13990316739167292979

namespace A400893

/-- `2*comp[A400891(n+1)]+1` -/
def P13990316739167292979.Spec : Prop :=
  ∀ n, (P13990316739167292979.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P12942232711761079882

`comp[A328981(3*n+1)+n]`
-/

namespace A400893.P12942232711761079882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (3 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400893.P12942232711761079882

namespace A400893

/-- `comp[A328981(3*n+1)+n]` -/
def P12942232711761079882.Spec : Prop :=
  ∀ n, (P12942232711761079882.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P1545215002925703420

`comp[or(A035263(3*n+4), n)]+1`
-/

namespace A400893.P1545215002925703420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035263 (3 * n + 4)) (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A400893.P1545215002925703420

namespace A400893

/-- `comp[or(A035263(3*n+4), n)]+1` -/
def P1545215002925703420.Spec : Prop :=
  ∀ n, (P1545215002925703420.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P18439959703593390702

`A004773(A084089(n+1))`
-/

namespace A400893.P18439959703593390702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A084089 (n + 1)).toNat

end

end A400893.P18439959703593390702

namespace A400893

/-- `A004773(A084089(n+1))` -/
def P18439959703593390702.Spec : Prop :=
  ∀ n, P18439959703593390702.a n = A400893 (n + 1)

end A400893

/-! ## A400893.P14725137707693010666

`A103832(A400890(n+1))`
-/

namespace A400893.P14725137707693010666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (A400890 (n + 1)).toNat

end

end A400893.P14725137707693010666

namespace A400893

/-- `A103832(A400890(n+1))` -/
def P14725137707693010666.Spec : Prop :=
  ∀ n, P14725137707693010666.a n = A400893 (n + 1)

end A400893

/-!
# A400894: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with even valuation based on A400891.

The programs for A400894, the canonical program `A400894.P15283623408944251719` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400894 has offset 1).

The definition of A400894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400894.P15283623408944251719

`2*A400891(n+1)+1`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400894

/-- `2*A400891(n+1)+1` -/
def P15283623408944251719.Spec : Prop :=
  ∀ n, P15283623408944251719.a n = A400894 (n + 1)

theorem P15283623408944251719.correct : P15283623408944251719.Spec := by
  intro n
  simp only [A400894, Nat.add_sub_cancel]

end A400894

/-! ## A400894.P17956210783720544275

`comp[n-(gcd(2, val(xor(n, 2*n)+6, 2))-1)]`
-/

namespace A400894.P17956210783720544275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.gcd 2 (SequenceMachineLib.valuation (Nat.xor n (2 * n) + 6) 2) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400894.P17956210783720544275

namespace A400894

/-- `comp[n-(gcd(2, val(xor(n, 2*n)+6, 2))-1)]` -/
def P17956210783720544275.Spec : Prop :=
  ∀ n, (P17956210783720544275.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P3902110381401853150

`comp[n-A098725(n)]`
-/

namespace A400894.P3902110381401853150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098725 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400894.P3902110381401853150

namespace A400894

/-- `comp[n-A098725(n)]` -/
def P3902110381401853150.Spec : Prop :=
  ∀ n, (P3902110381401853150.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P15047361514090919207

`∪[A331830(n+1), A331831(n+1)]`
-/

namespace A400894.P15047361514090919207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400894.P15047361514090919207

namespace A400894

/-- `∪[A331830(n+1), A331831(n+1)]` -/
def P15047361514090919207.Spec : Prop :=
  ∀ n, (P15047361514090919207.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P11133515210771526063

`A144396(A400891(n+1))`
-/

namespace A400894.P11133515210771526063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A400891 (n + 1)).toNat

end

end A400894.P11133515210771526063

namespace A400894

/-- `A144396(A400891(n+1))` -/
def P11133515210771526063.Spec : Prop :=
  ∀ n, P11133515210771526063.a n = A400894 (n + 1)

end A400894

/-! ## A400894.P15142518194321788390

`filter[2*n+1, A073059(#)]`
-/

namespace A400894.P15142518194321788390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073059 (f1 j) = 1) n)

end

end A400894.P15142518194321788390

namespace A400894

/-- `filter[2*n+1, A073059(#)]` -/
def P15142518194321788390.Spec : Prop :=
  ∀ n, (P15142518194321788390.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P1923050012794785791

`lt[1, A101660(n)]`
-/

namespace A400894.P1923050012794785791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400894.P1923050012794785791

namespace A400894

/-- `lt[1, A101660(n)]` -/
def P1923050012794785791.Spec : Prop :=
  ∀ n, (P1923050012794785791.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P1645145100038398479

`lt[2, A005678(n+1)]`
-/

namespace A400894.P1645145100038398479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400894.P1645145100038398479

namespace A400894

/-- `lt[2, A005678(n+1)]` -/
def P1645145100038398479.Spec : Prop :=
  ∀ n, (P1645145100038398479.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P14024520180417820423

`∑[runs[A073504(n+1)]]`
-/

namespace A400894.P14024520180417820423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073504 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400894.P14024520180417820423

namespace A400894

/-- `∑[runs[A073504(n+1)]]` -/
def P14024520180417820423.Spec : Prop :=
  ∀ n, (P14024520180417820423.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P2327921089475712844

`eq[A026492(n), A026498(n)]`
-/

namespace A400894.P2327921089475712844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400894.P2327921089475712844

namespace A400894

/-- `eq[A026492(n), A026498(n)]` -/
def P2327921089475712844.Spec : Prop :=
  ∀ n, (P2327921089475712844.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P10623476200465811272

`A004396(A084088(n+1))`
-/

namespace A400894.P10623476200465811272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A084088 (n + 1)).toNat

end

end A400894.P10623476200465811272

namespace A400894

/-- `A004396(A084088(n+1))` -/
def P10623476200465811272.Spec : Prop :=
  ∀ n, P10623476200465811272.a n = A400894 (n + 1)

end A400894

/-! ## A400894.P12209435142908535669

`fp[∑[A101660(2*n)]]`
-/

namespace A400894.P12209435142908535669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A400894.P12209435142908535669

namespace A400894

/-- `fp[∑[A101660(2*n)]]` -/
def P12209435142908535669.Spec : Prop :=
  ∀ n, (P12209435142908535669.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P10376156832538916932

`eq[4, A045898(2*n+1)]`
-/

namespace A400894.P10376156832538916932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400894.P10376156832538916932

namespace A400894

/-- `eq[4, A045898(2*n+1)]` -/
def P10376156832538916932.Spec : Prop :=
  ∀ n, (P10376156832538916932.a n : ℤ) = A400894 (n + 1)

end A400894

/-!
# A400896: a(n) = numerator(1 - (n^2 - n + 2)/2^n).

The programs for A400896, the canonical program `A400896.P12266202464247024985` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400896 has offset 1).

The definition of A400896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400896.P12266202464247024985

`A400897(n+1)-A213671(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400896

/-- `A400897(n+1)-A213671(n+1)` -/
def P12266202464247024985.Spec : Prop :=
  ∀ n, P12266202464247024985.a n = A400896 (n + 1)

theorem P12266202464247024985.correct : P12266202464247024985.Spec := by
  intro n
  simp only [A400896, Nat.add_sub_cancel]

end A400896

/-! ## A400896.P10507637804519490255

`A400897(n+1)-A000265(A000124(n))`
-/

namespace A400896.P10507637804519490255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400897 (n + 1) - A000265 (A000124 n).toNat

end

end A400896.P10507637804519490255

namespace A400896

/-- `A400897(n+1)-A000265(A000124(n))` -/
def P10507637804519490255.Spec : Prop :=
  ∀ n, P10507637804519490255.a n = A400896 (n + 1)

end A400896

/-! ## A400896.P2358174752671482239

`A106617(A002662(n))`
-/

namespace A400896.P2358174752671482239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A002662 n).toNat

end

end A400896.P2358174752671482239

namespace A400896

/-- `A106617(A002662(n))` -/
def P2358174752671482239.Spec : Prop :=
  ∀ n, P2358174752671482239.a n = A400896 (n + 1)

end A400896

/-! ## A400896.P8100184977811420733

`A231190(A002662(n)+8)`
-/

namespace A400896.P8100184977811420733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (A002662 n + 8).toNat

end

end A400896.P8100184977811420733

namespace A400896

/-- `A231190(A002662(n)+8)` -/
def P8100184977811420733.Spec : Prop :=
  ∀ n, P8100184977811420733.a n = A400896 (n + 1)

end A400896

/-! ## A400896.P15515473903007093318

`A106617(A000225(n)-A000217(n))`
-/

namespace A400896.P15515473903007093318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A000225 n - A000217 n).toNat

end

end A400896.P15515473903007093318

namespace A400896

/-- `A106617(A000225(n)-A000217(n))` -/
def P15515473903007093318.Spec : Prop :=
  ∀ n, P15515473903007093318.a n = A400896 (n + 1)

end A400896

/-!
# A400897: a(n) = denominator(1 - (n^2 - n + 2)/2^n).

The programs for A400897, the canonical program `A400897.P7569650421368593276` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400897 has offset 1).

The definition of A400897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400897.P7569650421368593276

`2^(n-val(∑[n]+1, 2))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400897

/-- `2^(n-val(∑[n]+1, 2))` -/
def P7569650421368593276.Spec : Prop :=
  ∀ n, P7569650421368593276.a n = (A400897 (n + 1) : ℚ)

end A400897

/-! ## A400897.P6161277520351949305

`A400896(n+1)+A213671(n+1)`
-/

namespace A400897.P6161277520351949305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400896 (n + 1) + A213671 (n + 1)

end

end A400897.P6161277520351949305

namespace A400897

/-- `A400896(n+1)+A213671(n+1)` -/
def P6161277520351949305.Spec : Prop :=
  ∀ n, P6161277520351949305.a n = A400897 (n + 1)

end A400897

/-! ## A400897.P4917096015824738724

`A400896(1+n)+A000265(A000124(n))`
-/

namespace A400897.P4917096015824738724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400896 (1 + n) + A000265 (A000124 n).toNat

end

end A400897.P4917096015824738724

namespace A400897

/-- `A400896(1+n)+A000265(A000124(n))` -/
def P4917096015824738724.Spec : Prop :=
  ∀ n, P4917096015824738724.a n = A400897 (n + 1)

end A400897

/-! ## A400897.P1333883101847715795

`2^(n-A007814(∑[n]+1))`
-/

namespace A400897.P1333883101847715795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A007814 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A400897.P1333883101847715795

namespace A400897

/-- `2^(n-A007814(∑[n]+1))` -/
def P1333883101847715795.Spec : Prop :=
  ∀ n, P1333883101847715795.a n = (A400897 (n + 1) : ℚ)

end A400897

/-! ## A400897.P7745549756196235635

`A000079(n)/A006519(A000124(n))`
-/

namespace A400897.P7745549756196235635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A006519 (A000124 n).toNat : ℚ)

end

end A400897.P7745549756196235635

namespace A400897

/-- `A000079(n)/A006519(A000124(n))` -/
def P7745549756196235635.Spec : Prop :=
  ∀ n, P7745549756196235635.a n = (A400897 (n + 1) : ℚ)

end A400897

