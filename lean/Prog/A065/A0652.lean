import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065200: Numbers of the form m * p^k, with p prime, k >= 0, m squarefree and p > any prime factor of m.

The programs for A065200, the canonical program `A065200.P4369247061633192074` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065200 has offset 1).

The definition of A065200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065200.P4369247061633192074

`eq[0, A065202(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065200

/-- `eq[0, A065202(n+1)]+1` -/
def P4369247061633192074.Spec : Prop :=
  ∀ n, (P4369247061633192074.a n : ℤ) = A065200 (n + 1)

theorem P4369247061633192074.correct : P4369247061633192074.Spec := by
  intro n
  simp only [A065200, Nat.add_sub_cancel]

end A065200

/-! ## A065200.P843196039504156020

`comp[A065201(n+1)-1]+1`
-/

namespace A065200.P843196039504156020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065200.P843196039504156020

namespace A065200

/-- `comp[A065201(n+1)-1]+1` -/
def P843196039504156020.Spec : Prop :=
  ∀ n, (P843196039504156020.a n : ℤ) = A065200 (n + 1)

end A065200

/-! ## A065200.P9816070165713560817

`comp[A065201(n%(2-a(floor(n/2))))]` with `a(0)=0`
-/

namespace A065200.P9816070165713560817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A065201 (Int.tmod (n : ℤ) (2 - f1 ⌊(n : ℚ) / 2⌋.toNat)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065200.P9816070165713560817

namespace A065200

/-- `comp[A065201(n%(2-a(floor(n/2))))]` -/
def P9816070165713560817.Spec : Prop :=
  ∀ n, (P9816070165713560817.a n : ℤ) = A065200 (n + 1)

end A065200

/-! ## A065200.P2095416806227018300

`lt[A001221(A217434(n+1)), 2]+1`
-/

namespace A065200.P2095416806227018300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A217434 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065200.P2095416806227018300

namespace A065200

/-- `lt[A001221(A217434(n+1)), 2]+1` -/
def P2095416806227018300.Spec : Prop :=
  ∀ n, (P2095416806227018300.a n : ℤ) = A065200 (n + 1)

end A065200

/-! ## A065200.P2835899548541927057

`record[lcm(A007947(n+1), A217434(n+1))]`
-/

namespace A065200.P2835899548541927057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A217434 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065200.P2835899548541927057

namespace A065200

/-- `record[lcm(A007947(n+1), A217434(n+1))]` -/
def P2835899548541927057.Spec : Prop :=
  ∀ n, (P2835899548541927057.a n : ℤ) = A065200 (n + 1)

end A065200

/-! ## A065200.P1248703651158525008

`eq[1, abs(A008683(A243057(n+1)))]+1`
-/

namespace A065200.P1248703651158525008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A243057 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065200.P1248703651158525008

namespace A065200

/-- `eq[1, abs(A008683(A243057(n+1)))]+1` -/
def P1248703651158525008.Spec : Prop :=
  ∀ n, (P1248703651158525008.a n : ℤ) = A065200 (n + 1)

end A065200

/-!
# A065201: Numbers having a non-maximal prime-factor with exponent greater than 1.

The programs for A065201, the canonical program `A065201.P6736131531723427940` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065201 has offset 1).

The definition of A065201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065201.P6736131531723427940

`lt[0, A065202(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065201

/-- `lt[0, A065202(n+1)]+1` -/
def P6736131531723427940.Spec : Prop :=
  ∀ n, (P6736131531723427940.a n : ℤ) = A065201 (n + 1)

theorem P6736131531723427940.correct : P6736131531723427940.Spec := by
  intro n
  simp only [A065201, Nat.add_sub_cancel]

end A065201

/-! ## A065201.P11861806301715222269

`eq[1, A065202(n+2)]+2`
-/

namespace A065201.P11861806301715222269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A065201.P11861806301715222269

namespace A065201

/-- `eq[1, A065202(n+2)]+2` -/
def P11861806301715222269.Spec : Prop :=
  ∀ n, (P11861806301715222269.a n : ℤ) = A065201 (n + 1)

end A065201

/-! ## A065201.P10893756028302256598

`filter[A013929(n+3), A065202(#)]`
-/

namespace A065201.P10893756028302256598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P10893756028302256598

namespace A065201

/-- `filter[A013929(n+3), A065202(#)]` -/
def P10893756028302256598.Spec : Prop :=
  ∀ n, P10893756028302256598.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P10210853519412779501

`∪[A036785(n+1), A112769(n+1)]`
-/

namespace A065201.P10210853519412779501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065201.P10210853519412779501

namespace A065201

/-- `∪[A036785(n+1), A112769(n+1)]` -/
def P10210853519412779501.Spec : Prop :=
  ∀ n, (P10210853519412779501.a n : ℤ) = A065201 (n + 1)

end A065201

/-! ## A065201.P13670663984662149984

`∪[A036785(n+1), A362620(n+1)]`
-/

namespace A065201.P13670663984662149984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065201.P13670663984662149984

namespace A065201

/-- `∪[A036785(n+1), A362620(n+1)]` -/
def P13670663984662149984.Spec : Prop :=
  ∀ n, (P13670663984662149984.a n : ℤ) = A065201 (n + 1)

end A065201

/-! ## A065201.P6994374286866806956

`filter[A126706(n+1), A065202(#)]`
-/

namespace A065201.P6994374286866806956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P6994374286866806956

namespace A065201

/-- `filter[A126706(n+1), A065202(#)]` -/
def P6994374286866806956.Spec : Prop :=
  ∀ n, P6994374286866806956.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P6563648285384391073

`filter[A049199(n+1), A065202(#)]`
-/

namespace A065201.P6563648285384391073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P6563648285384391073

namespace A065201

/-- `filter[A049199(n+1), A065202(#)]` -/
def P6563648285384391073.Spec : Prop :=
  ∀ n, P6563648285384391073.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P10385103618805209845

`filter[A080756(n+1), A065202(#)]`
-/

namespace A065201.P10385103618805209845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P10385103618805209845

namespace A065201

/-- `filter[A080756(n+1), A065202(#)]` -/
def P10385103618805209845.Spec : Prop :=
  ∀ n, P10385103618805209845.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P3152809089092084064

`filter[A162966(n+1), A065202(#)]`
-/

namespace A065201.P3152809089092084064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P3152809089092084064

namespace A065201

/-- `filter[A162966(n+1), A065202(#)]` -/
def P3152809089092084064.Spec : Prop :=
  ∀ n, P3152809089092084064.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P3321209322686771613

`filter[A354360(n+1), A065202(#)]`
-/

namespace A065201.P3321209322686771613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P3321209322686771613

namespace A065201

/-- `filter[A354360(n+1), A065202(#)]` -/
def P3321209322686771613.Spec : Prop :=
  ∀ n, P3321209322686771613.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P11327055224133116128

`filter[A244723(n+1), A065202(#)]`
-/

namespace A065201.P11327055224133116128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P11327055224133116128

namespace A065201

/-- `filter[A244723(n+1), A065202(#)]` -/
def P11327055224133116128.Spec : Prop :=
  ∀ n, P11327055224133116128.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P9041435699515339988

`filter[A255199(n+1), A065202(#)]`
-/

namespace A065201.P9041435699515339988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P9041435699515339988

namespace A065201

/-- `filter[A255199(n+1), A065202(#)]` -/
def P9041435699515339988.Spec : Prop :=
  ∀ n, P9041435699515339988.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P4149655263942326665

`filter[A389462(n+1), A065202(#)]`
-/

namespace A065201.P4149655263942326665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P4149655263942326665

namespace A065201

/-- `filter[A389462(n+1), A065202(#)]` -/
def P4149655263942326665.Spec : Prop :=
  ∀ n, P4149655263942326665.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P2891394220016281967

`filter[A366288(n+1), A065202(#)]`
-/

namespace A065201.P2891394220016281967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P2891394220016281967

namespace A065201

/-- `filter[A366288(n+1), A065202(#)]` -/
def P2891394220016281967.Spec : Prop :=
  ∀ n, P2891394220016281967.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P16483830442591734970

`filter[A307517(n+1), A065202(#)]`
-/

namespace A065201.P16483830442591734970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P16483830442591734970

namespace A065201

/-- `filter[A307517(n+1), A065202(#)]` -/
def P16483830442591734970.Spec : Prop :=
  ∀ n, P16483830442591734970.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P14824985517113229057

`filter[A058080(n+1), A065202(#)]`
-/

namespace A065201.P14824985517113229057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P14824985517113229057

namespace A065201

/-- `filter[A058080(n+1), A065202(#)]` -/
def P14824985517113229057.Spec : Prop :=
  ∀ n, P14824985517113229057.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P16377061242305861705

`filter[A033942(n+1), A065202(#)]`
-/

namespace A065201.P16377061242305861705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P16377061242305861705

namespace A065201

/-- `filter[A033942(n+1), A065202(#)]` -/
def P16377061242305861705.Spec : Prop :=
  ∀ n, P16377061242305861705.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P15561210073972302279

`filter[A111087(n+1), A065202(#)]`
-/

namespace A065201.P15561210073972302279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P15561210073972302279

namespace A065201

/-- `filter[A111087(n+1), A065202(#)]` -/
def P15561210073972302279.Spec : Prop :=
  ∀ n, P15561210073972302279.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P11554781564933549828

`filter[A066423(n+1), A065202(#)]`
-/

namespace A065201.P11554781564933549828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P11554781564933549828

namespace A065201

/-- `filter[A066423(n+1), A065202(#)]` -/
def P11554781564933549828.Spec : Prop :=
  ∀ n, P11554781564933549828.a n = A065201 (n + 1)

end A065201

/-! ## A065201.P9815455052954780213

`filter[A289553(n+1), A065202(#)]`
-/

namespace A065201.P9815455052954780213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A065201.P9815455052954780213

namespace A065201

/-- `filter[A289553(n+1), A065202(#)]` -/
def P9815455052954780213.Spec : Prop :=
  ∀ n, P9815455052954780213.a n = A065201 (n + 1)

end A065201

/-!
# A065202: Characteristic function of A065201: a(n) = if A065201(k) = n for some k then 1 else 0.

The programs for A065202, the canonical program `A065202.P5763603207858660054` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065202 has offset 1).

The definition of A065202 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051119, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065202.P5763603207858660054

`A107078(A051119(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A065202

/-- `A107078(A051119(n+1))` -/
def P5763603207858660054.Spec : Prop :=
  ∀ n, P5763603207858660054.a n = A065202 (n + 1)

theorem P5763603207858660054.correct : P5763603207858660054.Spec := by
  intro n
  simp only [A065202, Nat.add_sub_cancel]

end A065202

/-! ## A065202.P6468062427481506458

`A107078((n+1)/A053585(n+1))`
-/

namespace A065202.P6468062427481506458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A065202.P6468062427481506458

namespace A065202

/-- `A107078((n+1)/A053585(n+1))` -/
def P6468062427481506458.Spec : Prop :=
  ∀ n, P6468062427481506458.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P9201200862012237599

`and(1, A000040(∏{e}[A051119(n+1), #]))`
-/

namespace A065202.P9201200862012237599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A065202.P9201200862012237599

namespace A065202

/-- `and(1, A000040(∏{e}[A051119(n+1), #]))` -/
def P9201200862012237599.Spec : Prop :=
  ∀ n, P9201200862012237599.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P16950564900798855721

`A000040(A046951(A051119(n+1))²)%2`
-/

namespace A065202.P16950564900798855721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A046951 (A051119 (n + 1)).toNat ^ 2).toNat) 2

end

end A065202.P16950564900798855721

namespace A065202

/-- `A000040(A046951(A051119(n+1))²)%2` -/
def P16950564900798855721.Spec : Prop :=
  ∀ n, P16950564900798855721.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P14955793673097099261

`A066301((n+1)/A217434(A217434(n+1)))`
-/

namespace A065202.P14955793673097099261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A217434 (A217434 (n + 1)).toNat : ℚ))).toNat

end

end A065202.P14955793673097099261

namespace A065202

/-- `A066301((n+1)/A217434(A217434(n+1)))` -/
def P14955793673097099261.Spec : Prop :=
  ∀ n, P14955793673097099261.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P2524739996633764819

`A057427(log2(A348044(n+1))%A005361(n+1))`
-/

namespace A065202.P2524739996633764819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A348044 (n + 1) : ℝ))) (A005361 (n + 1))).toNat

end

end A065202.P2524739996633764819

namespace A065202

/-- `A057427(log2(A348044(n+1))%A005361(n+1))` -/
def P2524739996633764819.Spec : Prop :=
  ∀ n, P2524739996633764819.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P55886543870621235

`A001221(A162512(A051119(n+1))²)`
-/

namespace A065202.P55886543870621235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A162512 (A051119 (n + 1)).toNat ^ 2).toNat

end

end A065202.P55886543870621235

namespace A065202

/-- `A001221(A162512(A051119(n+1))²)` -/
def P55886543870621235.Spec : Prop :=
  ∀ n, P55886543870621235.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P10304006615098776263

`A353625((n+1)*A002034(∏{p}[n+1, #]))`
-/

namespace A065202.P10304006615098776263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353625 ((n + 1 : ℤ) * A002034 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A065202.P10304006615098776263

namespace A065202

/-- `A353625((n+1)*A002034(∏{p}[n+1, #]))` -/
def P10304006615098776263.Spec : Prop :=
  ∀ n, P10304006615098776263.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P1311877281434445148

`1-abs(A008683(A243057(n+1)))`
-/

namespace A065202.P1311877281434445148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A008683 (A243057 (n + 1)).toNat|

end

end A065202.P1311877281434445148

namespace A065202

/-- `1-abs(A008683(A243057(n+1)))` -/
def P1311877281434445148.Spec : Prop :=
  ∀ n, P1311877281434445148.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P11682250732917199878

`A326126(A014673(A008833(A243057(n+1))))`
-/

namespace A065202.P11682250732917199878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A014673 (A008833 (A243057 (n + 1)).toNat).toNat).toNat

end

end A065202.P11682250732917199878

namespace A065202

/-- `A326126(A014673(A008833(A243057(n+1))))` -/
def P11682250732917199878.Spec : Prop :=
  ∀ n, P11682250732917199878.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P18093918605330541535

`A056170(A243057(n+1))`
-/

namespace A065202.P18093918605330541535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A243057 (n + 1)).toNat

end

end A065202.P18093918605330541535

namespace A065202

/-- `A056170(A243057(n+1))` -/
def P18093918605330541535.Spec : Prop :=
  ∀ n, P18093918605330541535.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P650477053494377489

`A079275(A217434(n+1)²)`
-/

namespace A065202.P650477053494377489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (A217434 (n + 1) ^ 2).toNat

end

end A065202.P650477053494377489

namespace A065202

/-- `A079275(A217434(n+1)²)` -/
def P650477053494377489.Spec : Prop :=
  ∀ n, P650477053494377489.a n = A065202 (n + 1)

end A065202

/-! ## A065202.P17627445047373876843

`A295884(A051119((n+1)²))`
-/

namespace A065202.P17627445047373876843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A051119 ((n + 1) ^ 2)).toNat

end

end A065202.P17627445047373876843

namespace A065202

/-- `A295884(A051119((n+1)²))` -/
def P17627445047373876843.Spec : Prop :=
  ∀ n, P17627445047373876843.a n = A065202 (n + 1)

end A065202

/-!
# A065203: Total number of primes (without multiplicity) dividing A064413(n).

The programs for A065203, there is no canonical definition to state claims against.
-/

/-! ## A065203.P12053398451002375449

`∑{e}[∏{p}[A064413(n+1), #], #]`
-/

namespace A065203.P12053398451002375449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A065203.P12053398451002375449

/-! ## A065203.P1459592266666440221

`A001221(Δ[A065057(n)])`
-/

namespace A065203.P1459592266666440221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A065203.P1459592266666440221

/-! ## A065203.P13414819710645778547

`A001221(A064413(n+1))`
-/

namespace A065203.P13414819710645778547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064413 (n + 1)).toNat

end

end A065203.P13414819710645778547

/-! ## A065203.P9450605713036234672

`A001221(A278263(n+1))`
-/

namespace A065203.P9450605713036234672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278263 (n + 1)).toNat

end

end A065203.P9450605713036234672

/-! ## A065203.P13936369825516571184

`∑{d}[A064413(n+1), A010051(#)]`
-/

namespace A065203.P13936369825516571184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A065203.P13936369825516571184

/-! ## A065203.P4457972072070502534

`∑{d}[A278263(n+1), A010051(#)]`
-/

namespace A065203.P4457972072070502534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A065203.P4457972072070502534

/-! ## A065203.P9223922182164605337

`∑{p}[A064413(n+1), A001222(#)]`
-/

namespace A065203.P9223922182164605337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A065203.P9223922182164605337

/-! ## A065203.P17416123354394283413

`∑{p}[A064413(n+1), A003557(#)]`
-/

namespace A065203.P17416123354394283413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003557 p

end

end A065203.P17416123354394283413

/-! ## A065203.P10957575100996559923

`A001222(∏{p}[A064413(n+1), #])`
-/

namespace A065203.P10957575100996559923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A065203.P10957575100996559923

/-! ## A065203.P18373681317590824477

`∑{p}[A064413(n+1), A008683(#)²]`
-/

namespace A065203.P18373681317590824477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p ^ 2

end

end A065203.P18373681317590824477

/-! ## A065203.P1699178418240123113

`A001221(A065519(n+1)+1+n)`
-/

namespace A065203.P1699178418240123113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A065203.P1699178418240123113

/-! ## A065203.P3280134983706175170

`A106404(2*A278263(n+1))`
-/

namespace A065203.P3280134983706175170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * A278263 (n + 1)).toNat

end

end A065203.P3280134983706175170

/-! ## A065203.P12353338903471742008

`∑{p}[A064413(n+1), A000001(#)]`
-/

namespace A065203.P12353338903471742008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 p

end

end A065203.P12353338903471742008

/-! ## A065203.P14879498050478830939

`A106404(2*A064413(n+1))`
-/

namespace A065203.P14879498050478830939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * A064413 (n + 1)).toNat

end

end A065203.P14879498050478830939

/-! ## A065203.P8974888558885834558

`∑{p}[A104125(n+1), A001222(#)]`
-/

namespace A065203.P8974888558885834558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A065203.P8974888558885834558

/-! ## A065203.P2448666416536089389

`A061395(A278263(n+1)²)`
-/

namespace A065203.P2448666416536089389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A278263 (n + 1) ^ 2).toNat

end

end A065203.P2448666416536089389

/-! ## A065203.P7782567984231772771

`A001221(A104125(n+1))`
-/

namespace A065203.P7782567984231772771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A104125 (n + 1)).toNat

end

end A065203.P7782567984231772771

/-! ## A065203.P14797787882876081165

`∑{p}[A104125(n+1), A104121(#)]`
-/

namespace A065203.P14797787882876081165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A104121 p

end

end A065203.P14797787882876081165

/-! ## A065203.P276049451171774893

`A106404(A278263(n+1)²)`
-/

namespace A065203.P276049451171774893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A278263 (n + 1) ^ 2).toNat

end

end A065203.P276049451171774893

/-!
# A065204: Least m such that A065203(m) = n.

The programs for A065204, there is no canonical definition to state claims against.
-/

/-! ## A065204.P10102323352538152867

`A064421(A002110(n+1))`
-/

namespace A065204.P10102323352538152867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A002110 (n + 1)).toNat

end

end A065204.P10102323352538152867

/-! ## A065204.P5814599897131987468

`A064421(A335069(n+2))`
-/

namespace A065204.P5814599897131987468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A335069 (n + 2)).toNat

end

end A065204.P5814599897131987468

/-!
# A065205: Number of subsets of proper divisors of n that sum to n.

The programs for A065205, there is no canonical definition to state claims against.
-/

/-! ## A065205.P9390759555667747544

`A033630(n+1)-1`
-/

namespace A065205.P9390759555667747544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n + 1) - 1

end

end A065205.P9390759555667747544

/-! ## A065205.P3091964703546458560

`∑[1-Δ[n-A033630(n)]]`
-/

namespace A065205.P3091964703546458560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065205.P3091964703546458560

/-! ## A065205.P7898088707395789973

`A243492(A166092(gcd(n, n+1)))+A033630(n+1)`
-/

namespace A065205.P7898088707395789973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 (A166092 (Nat.gcd n (n + 1))).toNat + A033630 (n + 1)

end

end A065205.P7898088707395789973

/-! ## A065205.P2637170089124229193

`Δ[∑[A033630(n)]-n]`
-/

namespace A065205.P2637170089124229193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065205.P2637170089124229193

/-! ## A065205.P17527551008164964311

`A057428(n+1)+A033630(n+1)`
-/

namespace A065205.P17527551008164964311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033630 (n + 1)

end

end A065205.P17527551008164964311

/-! ## A065205.P13933209661836067460

`A033999(2*n+1)+A033630(n+1)`
-/

namespace A065205.P13933209661836067460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033630 (n + 1)

end

end A065205.P13933209661836067460

/-! ## A065205.P8698415451408644829

`A300547(2*n+1)+A033630(2*n+1)*A033630(n+1)`
-/

namespace A065205.P8698415451408644829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (2 * n + 1) + A033630 (2 * n + 1) * A033630 (n + 1)

end

end A065205.P8698415451408644829

/-! ## A065205.P3234349335193568815

`A051777(2*A033630(n+1)²)`
-/

namespace A065205.P3234349335193568815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (2 * A033630 (n + 1) ^ 2).toNat

end

end A065205.P3234349335193568815

/-! ## A065205.P13484216236524415610

`A000196(A028391(A033630(n+1)²))`
-/

namespace A065205.P13484216236524415610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028391 (A033630 (n + 1) ^ 2).toNat).toNat

end

end A065205.P13484216236524415610

/-! ## A065205.P15355426908945122649

`A293814(A004926(n+1))`
-/

namespace A065205.P15355426908945122649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A004926 (n + 1)).toNat

end

end A065205.P15355426908945122649

/-!
# A065206: Numbers which need one 'Reverse and Add' step to reach a palindrome.

The programs for A065206, there is no canonical definition to state claims against.
-/

/-! ## A065206.P3303644012443378587

`∩[A015976(n+1), A029742(n+1)]`
-/

namespace A065206.P3303644012443378587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065206.P3303644012443378587

/-! ## A065206.P14244824311968615864

`lt[A136522(n), char[A015976(n+1)]]`
-/

namespace A065206.P14244824311968615864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065206.P14244824311968615864

/-! ## A065206.P7322398099837379037

`eq[A056965(A056964(n)), A136522(n)]`
-/

namespace A065206.P7322398099837379037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065206.P7322398099837379037

/-! ## A065206.P14080773910152727163

`lt[A256756(A056964(n)), A064834(n)]`
-/

namespace A065206.P14080773910152727163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065206.P14080773910152727163

/-! ## A065206.P10472731079548285899

`lt[A256756(A056964(n)), A241173(n)]`
-/

namespace A065206.P10472731079548285899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065206.P10472731079548285899

/-! ## A065206.P3913544155661066885

`lt[A256756(A056964(n)), A248327(n)]`
-/

namespace A065206.P3913544155661066885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065206.P3913544155661066885

/-! ## A065206.P1842125696874013869

`lt[A256756(A056964(n)), A261424(n)]`
-/

namespace A065206.P1842125696874013869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065206.P1842125696874013869

/-! ## A065206.P18045885119191962693

`lt[A256756(A056964(n)), A262257(n)]`
-/

namespace A065206.P18045885119191962693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065206.P18045885119191962693

/-! ## A065206.P9402981845062529059

`eq[1, A033665(n)]`
-/

namespace A065206.P9402981845062529059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065206.P9402981845062529059

/-! ## A065206.P590037919362465920

`eq[2, A030547(n+1)]+1`
-/

namespace A065206.P590037919362465920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065206.P590037919362465920

/-!
# A065207: Numbers which need two 'Reverse and Add' steps to reach a palindrome.

The programs for A065207, there is no canonical definition to state claims against.
-/

/-! ## A065207.P14113459601004580775

`∩[A029742(n+1), A015977(n)]`
-/

namespace A065207.P14113459601004580775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015977 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065207.P14113459601004580775

/-! ## A065207.P10843155103534145248

`eq[2, A033665(n)]`
-/

namespace A065207.P10843155103534145248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065207.P10843155103534145248

/-! ## A065207.P5786249142306918651

`eq[3, A030547(n+1)]+1`
-/

namespace A065207.P5786249142306918651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065207.P5786249142306918651

/-! ## A065207.P4815468640017237239

`eq[n, n-a(A030547(n)-1)]` with `a(0)=2`
-/

namespace A065207.P4815468640017237239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A030547 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065207.P4815468640017237239

/-! ## A065207.P742199825951442048

`eq[3, A030547(A028310(n))]`
-/

namespace A065207.P742199825951442048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065207.P742199825951442048

/-!
# A065208: Numbers which need three 'Reverse and Add' steps to reach a palindrome.

The programs for A065208, there is no canonical definition to state claims against.
-/

/-! ## A065208.P9403024982585923335

`∩[A015979(n+1), A029742(n+1)]`
-/

namespace A065208.P9403024982585923335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065208.P9403024982585923335

/-! ## A065208.P3683787136082568881

`eq[3, A033665(n)]`
-/

namespace A065208.P3683787136082568881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065208.P3683787136082568881

/-! ## A065208.P3295336694422626494

`eq[4, A030547(n+1)]+1`
-/

namespace A065208.P3295336694422626494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065208.P3295336694422626494

/-! ## A065208.P8791562235164384750

`eq[n, n-a(A030547(n)-1)]` with `a(0)=3`
-/

namespace A065208.P8791562235164384750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) - f2 (A030547 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065208.P8791562235164384750

/-! ## A065208.P1583460309174389969

`eq[4, A030547(A028310(n))]`
-/

namespace A065208.P1583460309174389969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065208.P1583460309174389969

/-!
# A065209: Numbers which need four 'Reverse and Add' steps to reach a palindrome.

The programs for A065209, there is no canonical definition to state claims against.
-/

/-! ## A065209.P4129690423293199175

`∩[A029742(n+1), A015980(n)]`
-/

namespace A065209.P4129690423293199175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065209.P4129690423293199175

/-! ## A065209.P11758718754639643077

`eq[4, A033665(n)]`
-/

namespace A065209.P11758718754639643077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065209.P11758718754639643077

/-! ## A065209.P1749425141147658609

`eq[5, A030547(n+1)]+1`
-/

namespace A065209.P1749425141147658609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065209.P1749425141147658609

/-! ## A065209.P16510453409980027907

`eq[n, n-a(A030547(n)-1)]` with `a(0)=4`
-/

namespace A065209.P16510453409980027907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  (n : ℤ) - f2 (A030547 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065209.P16510453409980027907

/-! ## A065209.P8164151982313489538

`eq[5, A030547(A028310(n))]`
-/

namespace A065209.P8164151982313489538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065209.P8164151982313489538

/-!
# A065210: Numbers which need five 'Reverse and Add' steps to reach a palindrome.

The programs for A065210, there is no canonical definition to state claims against.
-/

/-! ## A065210.P12901649448384630668

`A015982(n+1)+A000007(A015128(n))`
-/

namespace A065210.P12901649448384630668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015982 (n + 1) + A000007 (A015128 n).toNat

end

end A065210.P12901649448384630668

/-! ## A065210.P12165913486441303392

`A184945(A184945(n))+A015982(n+1)`
-/

namespace A065210.P12165913486441303392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A184945 n).toNat + A015982 (n + 1)

end

end A065210.P12165913486441303392

/-! ## A065210.P7247069548615462978

`A015982(n+1)*A333254(A071568(n))`
-/

namespace A065210.P7247069548615462978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015982 (n + 1) * A333254 (A071568 n).toNat

end

end A065210.P7247069548615462978

/-! ## A065210.P3224161633742436635

`A015985(A225656(3*n+4))+A015982(n+1)`
-/

namespace A065210.P3224161633742436635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 (A225656 (3 * n + 4)).toNat + A015982 (n + 1)

end

end A065210.P3224161633742436635

/-! ## A065210.P18151652718806108420

`A015982(A187829(n+1))`
-/

namespace A065210.P18151652718806108420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015982 (A187829 (n + 1)).toNat

end

end A065210.P18151652718806108420

/-!
# A065212: Numbers which need seven 'Reverse and Add' steps to reach a palindrome.

The programs for A065212, there is no canonical definition to state claims against.
-/

/-! ## A065212.P6888602869871959057

`record[A015986(n)%A082216(A015986(n))]`
-/

namespace A065212.P6888602869871959057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015986 n) (A082216 (A015986 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065212.P6888602869871959057

/-! ## A065212.P7151381085196952948

`A015986(A133137(n+9)-9)`
-/

namespace A065212.P7151381085196952948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015986 (A133137 (n + 9) - 9).toNat

end

end A065212.P7151381085196952948

/-! ## A065212.P5836938015134149993

`A015986(record[A057979(A133137(n+1))])`
-/

namespace A065212.P5836938015134149993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A133137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065212.P5836938015134149993

/-! ## A065212.P12729376223535097404

`A015986(A032551(n+1))`
-/

namespace A065212.P12729376223535097404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015986 (A032551 (n + 1)).toNat

end

end A065212.P12729376223535097404

/-!
# A065213: Numbers which need eight 'Reverse and Add' steps to reach a palindrome.

The programs for A065213, there is no canonical definition to state claims against.
-/

/-! ## A065213.P2943045180011980758

`record[A015988(n)%A262038(A015988(n))]`
-/

namespace A065213.P2943045180011980758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015988 n) (A262038 (A015988 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065213.P2943045180011980758

/-! ## A065213.P12448870518557154778

`A015988(eq[1, A029167(n)])`
-/

namespace A065213.P12448870518557154778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065213.P12448870518557154778

/-!
# A065214: Numbers which need nine 'Reverse and Add' steps to reach a palindrome.

The programs for A065214, there is no canonical definition to state claims against.
-/

/-! ## A065214.P4340966669877559541

`A015990(n+1)^A287216(A287641(n))`
-/

namespace A065214.P4340966669877559541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015990 (n + 1) : ℚ) ^ (A287216 (A287641 n).toNat : ℤ)

end

end A065214.P4340966669877559541

/-! ## A065214.P5865843934288895529

`A292241(A025618(n+1))+A015990(n+1)`
-/

namespace A065214.P5865843934288895529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292241 (A025618 (n + 1)).toNat + A015990 (n + 1)

end

end A065214.P5865843934288895529

/-! ## A065214.P5793584212571061953

`A213370(A143095(n+1))+A015990(n+1)`
-/

namespace A065214.P5793584212571061953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A143095 (n + 1)).toNat + A015990 (n + 1)

end

end A065214.P5793584212571061953

/-! ## A065214.P7906186253269462116

`A015990(n+1)%A109297(A301714(2*n+4))`
-/

namespace A065214.P7906186253269462116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015990 (n + 1)) (A109297 (A301714 (2 * n + 4)).toNat)

end

end A065214.P7906186253269462116

/-! ## A065214.P2694335385078019467

`A241917(A001248(n+1))+A015990(n+1)`
-/

namespace A065214.P2694335385078019467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A001248 (n + 1)).toNat + A015990 (n + 1)

end

end A065214.P2694335385078019467

/-!
# A065215: Numbers which need ten 'Reverse and Add' steps to reach a palindrome.

The programs for A065215, there is no canonical definition to state claims against.
-/

/-! ## A065215.P5298596746526820561

`A015991(A136002(n+1)%A083619(n+1))`
-/

namespace A065215.P5298596746526820561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015991 (Int.tmod (A136002 (n + 1)) (A083619 (n + 1))).toNat

end

end A065215.P5298596746526820561

/-! ## A065215.P10893837520914316290

`A015991(A136002(n+1)^gcd(17, n))`
-/

namespace A065215.P10893837520914316290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015991 (A136002 (n + 1) ^ Nat.gcd 17 n).toNat

end

end A065215.P10893837520914316290

/-! ## A065215.P16041811358172309146

`A015991(A136002(n+1)%A123277(n))`
-/

namespace A065215.P16041811358172309146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015991 (Int.tmod (A136002 (n + 1)) (A123277 (n + 34))).toNat

end

end A065215.P16041811358172309146

/-! ## A065215.P11006107203055551698

`A223730(A000079(n))+A015991(A136002(n+1))`
-/

namespace A065215.P11006107203055551698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A000079 n).toNat + A015991 (A136002 (n + 1)).toNat

end

end A065215.P11006107203055551698

/-! ## A065215.P1131390597093496187

`filter[A015991(n+1), A145568(#)]`
-/

namespace A065215.P1131390597093496187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A065215.P1131390597093496187

/-!
# A065216: Numbers which need eleven 'Reverse and Add' steps to reach a palindrome.

The programs for A065216, there is no canonical definition to state claims against.
-/

/-! ## A065216.P8251081931473502496

`A015992(ceil(log2(A090245(n))))`
-/

namespace A065216.P8251081931473502496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015992 ⌈Real.logb 2 (A090245 n : ℝ)⌉.toNat

end

end A065216.P8251081931473502496

/-! ## A065216.P17104075838380567522

`∩[A090062(n+1), A015992(n)]`
-/

namespace A065216.P17104075838380567522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015992 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065216.P17104075838380567522

/-! ## A065216.P14751761780531530210

`∩[A090062(n+1), A235225(n+1)]`
-/

namespace A065216.P14751761780531530210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065216.P14751761780531530210

/-!
# A065217: 

The programs for A065217, there is no canonical definition to state claims against.
-/

/-! ## A065217.P4882937571438858401

`A254379(A141977(2*(n+2)))+A015993(n+1)`
-/

namespace A065217.P4882937571438858401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A141977 (2 * (n + 2))).toNat + A015993 (n + 1)

end

end A065217.P4882937571438858401

/-! ## A065217.P9294208012876337994

`A001221(A112859(3*n+5))*A015993(n+1)`
-/

namespace A065217.P9294208012876337994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A112859 (3 * n + 5)).toNat * A015993 (n + 1)

end

end A065217.P9294208012876337994

/-! ## A065217.P8205251007753570797

`A001222(A002385(n+1))*A015993(n+1)`
-/

namespace A065217.P8205251007753570797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat * A015993 (n + 1)

end

end A065217.P8205251007753570797

/-! ## A065217.P3710406806457006856

`A337101(A088175(3*n+5))+A015993(n+1)`
-/

namespace A065217.P3710406806457006856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A088175 (3 * n + 5)).toNat + A015993 (n + 1)

end

end A065217.P3710406806457006856

/-! ## A065217.P17334980767141784588

`A015993(n+1)%A163630(A124317(3*n+5))`
-/

namespace A065217.P17334980767141784588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015993 (n + 1)) (A163630 (A124317 (3 * n + 5)).toNat)

end

end A065217.P17334980767141784588

/-! ## A065217.P17260414950440036489

`A015993(n+1)^A000578(A348039(2*n+3))`
-/

namespace A065217.P17260414950440036489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015993 (n + 1) : ℚ) ^ (A000578 (A348039 (2 * n + 3)).toNat : ℤ)

end

end A065217.P17260414950440036489

/-! ## A065217.P13339959236547206390

`A004151(A015993(n+1))`
-/

namespace A065217.P13339959236547206390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A015993 (n + 1)).toNat

end

end A065217.P13339959236547206390

/-! ## A065217.P14496628660255464483

`A015993(A136522(A015993(n+1))+n+1)`
-/

namespace A065217.P14496628660255464483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015993 (A136522 (A015993 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A065217.P14496628660255464483

/-! ## A065217.P2662690452381392886

`A015993(n+1)%A038816(A029950(n+1))`
-/

namespace A065217.P2662690452381392886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015993 (n + 1)) (A038816 (A029950 (n + 1)).toNat)

end

end A065217.P2662690452381392886

/-! ## A065217.P12598064007360078931

`A063667(A216165(n+1))+A015993(n+1)`
-/

namespace A065217.P12598064007360078931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (A216165 (n + 1)).toNat + A015993 (n + 1)

end

end A065217.P12598064007360078931

/-! ## A065217.P10656506502391001597

`A010690(A079212(n+1))*A015993(n+1)`
-/

namespace A065217.P10656506502391001597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A079212 (n + 1)).toNat * A015993 (n + 1)

end

end A065217.P10656506502391001597

/-!
# A065218: Consider the subsets of proper divisors of a number that sum to the number. These are numbers that set a record number of such subsets.

The programs for A065218, there is no canonical definition to state claims against.
-/

/-! ## A065218.P13118136500507651359

`∩[A181804(n+1), A261476(n+1)]`
-/

namespace A065218.P13118136500507651359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065218.P13118136500507651359

/-! ## A065218.P8897331537483257636

`A002182(n+3)%A367119(n)`
-/

namespace A065218.P8897331537483257636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002182 (n + 3)) (A367119 n)

end

end A065218.P8897331537483257636

/-! ## A065218.P17081924409872227222

`∩[A002182(n+1), A212308(n+1)]`
-/

namespace A065218.P17081924409872227222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065218.P17081924409872227222

/-! ## A065218.P13413543140935356396

`∩[A002182(n+1), A231959(n+1)]`
-/

namespace A065218.P13413543140935356396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065218.P13413543140935356396

/-!
# A065219: Number of subsets of proper divisors of numbers in A065218 summing to the number.

The programs for A065219, there is no canonical definition to state claims against.
-/

/-! ## A065219.P4536638196287976356

`A065205(A065218(n+1))`
-/

namespace A065219.P4536638196287976356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A065218 (n + 1)).toNat

end

end A065219.P4536638196287976356

/-! ## A065219.P8518091068098102800

`record[A065205(n+1)]`
-/

namespace A065219.P8518091068098102800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065219.P8518091068098102800

/-! ## A065219.P7806051737212028754

`record[A033630(n)-1]`
-/

namespace A065219.P7806051737212028754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065219.P7806051737212028754

/-! ## A065219.P2704329032433936267

`A065205(A210594(n+1))`
-/

namespace A065219.P2704329032433936267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A210594 (n + 1)).toNat

end

end A065219.P2704329032433936267

/-! ## A065219.P13335815915675160255

`A065205(A002182(n+3))`
-/

namespace A065219.P13335815915675160255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A002182 (n + 3)).toNat

end

end A065219.P13335815915675160255

/-!
# A065220: a(n) = Fibonacci(n) - n.

The programs for A065220, the canonical program `A065220.P6653459094866898540` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065220 has offset 0).

The definition of A065220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)-n` (program `A065220.P6653459094866898540`, by `A065220.P6653459094866898540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065220.P7997563245578391607

`a(n-1)+a(n-2)+n-3` with `a(0)=0, a(1)=0`
-/

namespace A065220.P7997563245578391607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + (n : ℤ) - 3

end

end A065220.P7997563245578391607

namespace A065220

/-- `a(n-1)+a(n-2)+n-3` -/
def P7997563245578391607.Spec : Prop :=
  ∀ n, P7997563245578391607.a n = A065220 n

end A065220

/-! ## A065220.P6653459094866898540

`A000045(n)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065220

/-- `A000045(n)-n` -/
def P6653459094866898540.Spec : Prop :=
  ∀ n, P6653459094866898540.a n = A065220 n

theorem P6653459094866898540.correct : P6653459094866898540.Spec := by
  intro n
  simp only [A065220]

end A065220

/-! ## A065220.P14426075485875598303

`a(n-1)+A000071(n-2)` with `a(0)=0, a(1)=0, a(2)=-1`
-/

namespace A065220.P14426075485875598303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1] fun n a =>
  a (n - 1) + A000071 (n - 2)

end

end A065220.P14426075485875598303

namespace A065220

/-- `a(n-1)+A000071(n-2)` -/
def P14426075485875598303.Spec : Prop :=
  ∀ n, P14426075485875598303.a n = A065220 n

end A065220

/-! ## A065220.P17281706704390318264

`ogf((-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A065220.P17281706704390318264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, 2] [1, -3, 2, 1, -1] n

end

end A065220.P17281706704390318264

namespace A065220

/-- `ogf((-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P17281706704390318264.Spec : Prop :=
  ∀ n, P17281706704390318264.a n = A065220 n

end A065220

/-! ## A065220.P1815314293109498790

`a(n-1)-(3-a(n-2)-n)` with `a(0)=0, a(1)=0`
-/

namespace A065220.P1815314293109498790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - (3 - a (n - 2) - (n : ℤ))

end

end A065220.P1815314293109498790

namespace A065220

/-- `a(n-1)-(3-a(n-2)-n)` -/
def P1815314293109498790.Spec : Prop :=
  ∀ n, P1815314293109498790.a n = A065220 n

end A065220

/-! ## A065220.P12826459270243235606

`abs(A236191(n))-n`
-/

namespace A065220.P12826459270243235606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| - (n : ℤ)

end

end A065220.P12826459270243235606

namespace A065220

/-- `abs(A236191(n))-n` -/
def P12826459270243235606.Spec : Prop :=
  ∀ n, P12826459270243235606.a n = A065220 n

end A065220

/-! ## A065220.P3859157500886982134

`A210673(n+2)+1`
-/

namespace A065220.P3859157500886982134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 2) + 1

end

end A065220.P3859157500886982134

namespace A065220

/-- `A210673(n+2)+1` -/
def P3859157500886982134.Spec : Prop :=
  ∀ n, P3859157500886982134.a n = A065220 n

end A065220

/-! ## A065220.P4266483211279873552

`A001611(n)-(n+1)`
-/

namespace A065220.P4266483211279873552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (n + 1 : ℤ)

end

end A065220.P4266483211279873552

namespace A065220

/-- `A001611(n)-(n+1)` -/
def P4266483211279873552.Spec : Prop :=
  ∀ n, P4266483211279873552.a n = A065220 n

theorem P4266483211279873552.correct : P4266483211279873552.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P4266483211279873552.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P488807531341990986

`A212804(n+1)-n`
-/

namespace A065220.P488807531341990986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - (n : ℤ)

end

end A065220.P488807531341990986

namespace A065220

/-- `A212804(n+1)-n` -/
def P488807531341990986.Spec : Prop :=
  ∀ n, P488807531341990986.a n = A065220 n

end A065220

/-! ## A065220.P11992243321619563134

`A157725(n)-(n+2)`
-/

namespace A065220.P11992243321619563134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - (n + 2 : ℤ)

end

end A065220.P11992243321619563134

namespace A065220

/-- `A157725(n)-(n+2)` -/
def P11992243321619563134.Spec : Prop :=
  ∀ n, P11992243321619563134.a n = A065220 n

theorem P11992243321619563134.correct : P11992243321619563134.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P11992243321619563134.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P16866139583312285491

`A157726(n)-(n+3)`
-/

namespace A065220.P16866139583312285491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - (n + 3 : ℤ)

end

end A065220.P16866139583312285491

namespace A065220

/-- `A157726(n)-(n+3)` -/
def P16866139583312285491.Spec : Prop :=
  ∀ n, P16866139583312285491.a n = A065220 n

theorem P16866139583312285491.correct : P16866139583312285491.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P16866139583312285491.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P10576701746255697791

`A002062(n)-2*n`
-/

namespace A065220.P10576701746255697791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - (2 * n : ℤ)

end

end A065220.P10576701746255697791

namespace A065220

/-- `A002062(n)-2*n` -/
def P10576701746255697791.Spec : Prop :=
  ∀ n, P10576701746255697791.a n = A065220 n

theorem P10576701746255697791.correct : P10576701746255697791.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P10576701746255697791.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P4193026833150065858

`A103609(2*n)-n`
-/

namespace A065220.P4193026833150065858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - (n : ℤ)

end

end A065220.P4193026833150065858

namespace A065220

/-- `A103609(2*n)-n` -/
def P4193026833150065858.Spec : Prop :=
  ∀ n, P4193026833150065858.a n = A065220 n

end A065220

/-! ## A065220.P7019716590154479594

`A157727(n)-(n+4)`
-/

namespace A065220.P7019716590154479594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - (n + 4 : ℤ)

end

end A065220.P7019716590154479594

namespace A065220

/-- `A157727(n)-(n+4)` -/
def P7019716590154479594.Spec : Prop :=
  ∀ n, P7019716590154479594.a n = A065220 n

theorem P7019716590154479594.correct : P7019716590154479594.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P7019716590154479594.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P7148563944529978667

`A157729(n)-(n+5)`
-/

namespace A065220.P7148563944529978667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - (n + 5 : ℤ)

end

end A065220.P7148563944529978667

namespace A065220

/-- `A157729(n)-(n+5)` -/
def P7148563944529978667.Spec : Prop :=
  ∀ n, P7148563944529978667.a n = A065220 n

theorem P7148563944529978667.correct : P7148563944529978667.Spec := by
  intro n
  simp only [A065220, Nat.add_sub_cancel, A065220.P7148563944529978667.a, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065220

/-! ## A065220.P15545922299698411923

`A008346(n)-xor(1, n)`
-/

namespace A065220.P15545922299698411923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n - (Nat.xor 1 n : ℤ)

end

end A065220.P15545922299698411923

namespace A065220

/-- `A008346(n)-xor(1, n)` -/
def P15545922299698411923.Spec : Prop :=
  ∀ n, P15545922299698411923.a n = A065220 n

end A065220

/-! ## A065220.P2341741050947049880

`∑[abs(A152163(n))-1]`
-/

namespace A065220.P2341741050947049880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152163 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065220.P2341741050947049880

namespace A065220

/-- `∑[abs(A152163(n))-1]` -/
def P2341741050947049880.Spec : Prop :=
  ∀ n, P2341741050947049880.a n = A065220 n

end A065220

/-! ## A065220.P5418964310224135594

`A129982(Δ[n²])-n`
-/

namespace A065220.P5418964310224135594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A065220.P5418964310224135594

namespace A065220

/-- `A129982(Δ[n²])-n` -/
def P5418964310224135594.Spec : Prop :=
  ∀ n, P5418964310224135594.a n = A065220 n

end A065220

/-! ## A065220.P17199921739165301076

`∑{d}[n, A007436(#)]-n`
-/

namespace A065220.P17199921739165301076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d - (n : ℤ)

end

end A065220.P17199921739165301076

namespace A065220

/-- `∑{d}[n, A007436(#)]-n` -/
def P17199921739165301076.Spec : Prop :=
  ∀ n, P17199921739165301076.a n = A065220 n

end A065220

/-!
# A065222: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the hexagonal numbers. The final elements of the rows form a(n).

The programs for A065222, there is no canonical definition to state claims against.
-/

/-! ## A065222.P10183184940217169520

`A065230(n+1)-A065202(A065218(n+2))`
-/

namespace A065222.P10183184940217169520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065230 (n + 1) - A065202 (A065218 (n + 2)).toNat

end

end A065222.P10183184940217169520

/-! ## A065222.P14773284897847134975

`A065230(A187829(n+1))+A057428(n)`
-/

namespace A065222.P14773284897847134975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065230 (A187829 (n + 1)).toNat + A057428 n

end

end A065222.P14773284897847134975

/-! ## A065222.P17137230887284982023

`A065230(A187829(n+1))-A057427(n)`
-/

namespace A065222.P17137230887284982023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065230 (A187829 (n + 1)).toNat - A057427 n

end

end A065222.P17137230887284982023

/-! ## A065222.P687567921564246239

`A065230(A187829(n+1))-A178334(n)`
-/

namespace A065222.P687567921564246239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065230 (A187829 (n + 1)).toNat - A178334 n

end

end A065222.P687567921564246239

/-! ## A065222.P12582618891597311028

`A065230(n+1)-A001222(A007671(n+1))`
-/

namespace A065222.P12582618891597311028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065230 (n + 1) - A001222 (A007671 (n + 1)).toNat

end

end A065222.P12582618891597311028

/-!
# A065223: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the heptagonal numbers (A000566). The final elements of the rows form a(n).

The programs for A065223, there is no canonical definition to state claims against.
-/

/-! ## A065223.P10814045658499287930

`A028310(A065231(n+1)-1)`
-/

namespace A065223.P10814045658499287930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A065231 (n + 1) - 1).toNat

end

end A065223.P10814045658499287930

/-! ## A065223.P6771174685073324711

`A065231(n+1)-A000035(A067200(n+1))`
-/

namespace A065223.P6771174685073324711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065231 (n + 1) - A000035 (A067200 (n + 1)).toNat

end

end A065223.P6771174685073324711

/-! ## A065223.P14974687771677834729

`A065231(A187829(n+1))+A057428(n)`
-/

namespace A065223.P14974687771677834729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065231 (A187829 (n + 1)).toNat + A057428 n

end

end A065223.P14974687771677834729

/-!
# A065224: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the octagonal numbers. The final elements of the rows form a(n).

The programs for A065224, there is no canonical definition to state claims against.
-/

/-! ## A065224.P6168800066031061705

`A065232(n+1)+A057428(A244634(n))`
-/

namespace A065224.P6168800066031061705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065232 (n + 1) + A057428 (A244634 n).toNat

end

end A065224.P6168800066031061705

/-! ## A065224.P5164468083731893813

`A065232(n+1)-A001221(A000079(n))`
-/

namespace A065224.P5164468083731893813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065232 (n + 1) - A001221 (A000079 n).toNat

end

end A065224.P5164468083731893813

/-! ## A065224.P4464415799079763905

`A065232(n+1)-A126760(A166444(n))`
-/

namespace A065224.P4464415799079763905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065232 (n + 1) - A126760 (A166444 n).toNat

end

end A065224.P4464415799079763905

/-! ## A065224.P16971002721803003069

`A065232(n+1)-A001221(A074323(2*n+1))`
-/

namespace A065224.P16971002721803003069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065232 (n + 1) - A001221 (A074323 (2 * n + 1)).toNat

end

end A065224.P16971002721803003069

/-! ## A065224.P6671409189916964003

`(A065232(n+1)-A061395(A000079(n)))^A178334(n)`
-/

namespace A065224.P6671409189916964003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065232 (n + 1) - A061395 (A000079 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A065224.P6671409189916964003

/-!
# A065227: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the triangular numbers. The first elements of the rows form a(n).

The programs for A065227, the canonical program `A065227.P6933920780390560153` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065227 has offset 0).

The definition of A065227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065227.P6933920780390560153

`A332663(∑[n])+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065227

/-- `A332663(∑[n])+1` -/
def P6933920780390560153.Spec : Prop :=
  ∀ n, P6933920780390560153.a n = A065227 n

theorem P6933920780390560153.correct : P6933920780390560153.Spec := by
  intro n
  simp only [A065227]

end A065227

/-! ## A065227.P18313924962364653409

`A332662(∑[2*n])+1`
-/

namespace A065227.P18313924962364653409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A065227.P18313924962364653409

namespace A065227

/-- `A332662(∑[2*n])+1` -/
def P18313924962364653409.Spec : Prop :=
  ∀ n, P18313924962364653409.a n = A065227 n

end A065227

/-! ## A065227.P8028703893414706551

`A028242(2*A332662(∑[2*n]))`
-/

namespace A065227.P8028703893414706551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A332662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065227.P8028703893414706551

namespace A065227

/-- `A028242(2*A332662(∑[2*n]))` -/
def P8028703893414706551.Spec : Prop :=
  ∀ n, P8028703893414706551.a n = A065227 n

end A065227

/-! ## A065227.P5388011413800610761

`A008620(3*A332662(∑[2*n]))`
-/

namespace A065227.P5388011413800610761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A332662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065227.P5388011413800610761

namespace A065227

/-- `A008620(3*A332662(∑[2*n]))` -/
def P5388011413800610761.Spec : Prop :=
  ∀ n, P5388011413800610761.a n = A065227 n

end A065227

/-! ## A065227.P13600528249979755902

`n-(A023443(n)-A332662(∑[2*n]))`
-/

namespace A065227.P13600528249979755902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A332662 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A065227.P13600528249979755902

namespace A065227

/-- `n-(A023443(n)-A332662(∑[2*n]))` -/
def P13600528249979755902.Spec : Prop :=
  ∀ n, P13600528249979755902.a n = A065227 n

end A065227

/-!
# A065228: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the square numbers. The first elements of the rows form a(n).

The programs for A065228, the canonical program `A065228.P11115784030113203353` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065228 has offset 0).

The definition of A065228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065228.P11115784030113203353

`A064866(∑[n]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065228

/-- `A064866(∑[n]+1)` -/
def P11115784030113203353.Spec : Prop :=
  ∀ n, P11115784030113203353.a n = A065228 n

theorem P11115784030113203353.correct : P11115784030113203353.Spec := by
  intro n
  simp only [A065228]

end A065228

/-! ## A065228.P17327412641590422715

`A000027(A064866(n*(n+1)/2+1))`
-/

namespace A065228.P17327412641590422715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064866 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2) + 1)).toNat).toNat

end

end A065228.P17327412641590422715

namespace A065228

/-- `A000027(A064866(n*(n+1)/2+1))` -/
def P17327412641590422715.Spec : Prop :=
  ∀ n, P17327412641590422715.a n = A065228 n

end A065228

/-! ## A065228.P8438142426266772542

`A064866(A000124(n))%(xor(n, -4)²+4)`
-/

namespace A065228.P8438142426266772542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064866 (A000124 n).toNat) (Int.xor (n : ℤ) (-4) ^ 2 + 4)

end

end A065228.P8438142426266772542

namespace A065228

/-- `A064866(A000124(n))%(xor(n, -4)²+4)` -/
def P8438142426266772542.Spec : Prop :=
  ∀ n, P8438142426266772542.a n = A065228 n

end A065228

/-! ## A065228.P13820534667737696288

`A064866(A000124(n))%A114949(n)`
-/

namespace A065228.P13820534667737696288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064866 (A000124 n).toNat) (A114949 n)

end

end A065228.P13820534667737696288

namespace A065228

/-- `A064866(A000124(n))%A114949(n)` -/
def P13820534667737696288.Spec : Prop :=
  ∀ n, P13820534667737696288.a n = A065228 n

end A065228

/-! ## A065228.P2628039112852387640

`or(A000007(n), A064866(A000124(n)))`
-/

namespace A065228.P2628039112852387640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A064866 (A000124 n).toNat)

end

end A065228.P2628039112852387640

namespace A065228

/-- `or(A000007(n), A064866(A000124(n)))` -/
def P2628039112852387640.Spec : Prop :=
  ∀ n, P2628039112852387640.a n = A065228 n

end A065228

/-! ## A065228.P18427179096531304870

`A064866(A000124(n))+A000007(n+2)`
-/

namespace A065228.P18427179096531304870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A000124 n).toNat + A000007 (n + 2)

end

end A065228.P18427179096531304870

namespace A065228

/-- `A064866(A000124(n))+A000007(n+2)` -/
def P18427179096531304870.Spec : Prop :=
  ∀ n, P18427179096531304870.a n = A065228 n

end A065228

/-! ## A065228.P2121826820031220765

`A240467(2*n+1)+A064866(A000124(n))`
-/

namespace A065228.P2121826820031220765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (2 * n + 1) + A064866 (A000124 n).toNat

end

end A065228.P2121826820031220765

namespace A065228

/-- `A240467(2*n+1)+A064866(A000124(n))` -/
def P2121826820031220765.Spec : Prop :=
  ∀ n, P2121826820031220765.a n = A065228 n

end A065228

/-! ## A065228.P16323540609321889943

`A064866(A000124(n))*A118102(2*n+3)`
-/

namespace A065228.P16323540609321889943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A000124 n).toNat * A118102 (2 * n + 3)

end

end A065228.P16323540609321889943

namespace A065228

/-- `A064866(A000124(n))*A118102(2*n+3)` -/
def P16323540609321889943.Spec : Prop :=
  ∀ n, P16323540609321889943.a n = A065228 n

end A065228

/-!
# A065236: a(n) = (4*n)!*(n+1)!/(2*n)!.

The programs for A065236, the canonical program `A065236.P2191422335204547360` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065236 has offset 0).

The definition of A065236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065236.P2191422335204547360

`(4*n)!*(n+1)!/(2*n)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065236

/-- `(4*n)!*(n+1)!/(2*n)!` -/
def P2191422335204547360.Spec : Prop :=
  ∀ n, P2191422335204547360.a n = (A065236 n : ℚ)

end A065236

/-! ## A065236.P535620566271225091

`(2*n+1)!*A000108(2*n)*(n+1)!`
-/

namespace A065236.P535620566271225091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℤ) * A000108 (2 * n) * (Nat.factorial (n + 1) : ℤ)

end

end A065236.P535620566271225091

namespace A065236

/-- `(2*n+1)!*A000108(2*n)*(n+1)!` -/
def P535620566271225091.Spec : Prop :=
  ∀ n, P535620566271225091.a n = A065236 n

end A065236

/-! ## A065236.P17319897292830692839

`A000142(n+1)*A009120(n)`
-/

namespace A065236.P17319897292830692839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A009120 n

end

end A065236.P17319897292830692839

namespace A065236

/-- `A000142(n+1)*A009120(n)` -/
def P17319897292830692839.Spec : Prop :=
  ∀ n, P17319897292830692839.a n = A065236 n

end A065236

/-! ## A065236.P5546580664861633072

`A000142(n+1)*A001813(2*n)`
-/

namespace A065236.P5546580664861633072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A001813 (2 * n)

end

end A065236.P5546580664861633072

namespace A065236

/-- `A000142(n+1)*A001813(2*n)` -/
def P5546580664861633072.Spec : Prop :=
  ∀ n, P5546580664861633072.a n = A065236 n

end A065236

/-! ## A065236.P3683525927402460641

`A001147(2*n)*A034177(n+1)`
-/

namespace A065236.P3683525927402460641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (2 * n) * A034177 (n + 1)

end

end A065236.P3683525927402460641

namespace A065236

/-- `A001147(2*n)*A034177(n+1)` -/
def P3683525927402460641.Spec : Prop :=
  ∀ n, P3683525927402460641.a n = A065236 n

end A065236

/-!
# A065237: Number of winning length n strings with a 4-symbol alphabet in "same game".

The programs for A065237, there is no canonical definition to state claims against.
-/

/-! ## A065237.P2895800971999061217

`A323844(∑[n+2]+3)`
-/

namespace A065237.P2895800971999061217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A065237.P2895800971999061217

/-! ## A065237.P379783879163001735

`A323844(A055998(n)+5)+char[9]`
-/

namespace A065237.P379783879163001735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A055998 n + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A065237.P379783879163001735

/-! ## A065237.P9854239940644124077

`A060576(n)*A323844(A055998(n)+5)`
-/

namespace A065237.P9854239940644124077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A323844 (A055998 n + 5).toNat

end

end A065237.P9854239940644124077

/-! ## A065237.P4597112024496656639

`A323844(A055998(n)+5)%A000108(comp[n²])`
-/

namespace A065237.P4597112024496656639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323844 (A055998 n + 5).toNat) (A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A065237.P4597112024496656639

/-! ## A065237.P13719146669950155857

`A323844(A133263(n+2))+A098108(2*(n+2))`
-/

namespace A065237.P13719146669950155857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A133263 (n + 2)).toNat + A098108 (2 * (n + 2))

end

end A065237.P13719146669950155857

/-!
# A065238: Number of winning length n strings with a 5-symbol alphabet in "same game".

The programs for A065238, there is no canonical definition to state claims against.
-/

/-! ## A065238.P5328552555305909345

`A323844(∑[n+3]+6)`
-/

namespace A065238.P5328552555305909345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A065238.P5328552555305909345

/-! ## A065238.P3239535345352392870

`A323844(A167614(n+2))+A011737(n)`
-/

namespace A065238.P3239535345352392870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A167614 (n + 2)).toNat + A011737 n

end

end A065238.P3239535345352392870

/-! ## A065238.P5853551864716171059

`A323844(A167614(n+2))+A011738(n)`
-/

namespace A065238.P5853551864716171059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A167614 (n + 2)).toNat + A011738 n

end

end A065238.P5853551864716171059

/-! ## A065238.P5446405483825643331

`A323844(A167614(n+2))+A025469(n)`
-/

namespace A065238.P5446405483825643331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A167614 (n + 2)).toNat + A025469 n

end

end A065238.P5446405483825643331

/-!
# A065239: Number of winning length n strings with a 6-symbol alphabet in "same game".

The programs for A065239, there is no canonical definition to state claims against.
-/

/-! ## A065239.P10707408499187465919

`A323844(∑[n+4]+10)`
-/

namespace A065239.P10707408499187465919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A065239.P10707408499187465919

/-! ## A065239.P15986236154355878691

`A353398(A195818(n)+A001045(n))`
-/

namespace A065239.P15986236154355878691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353398 (A195818 n + A001045 n).toNat

end

end A065239.P15986236154355878691

/-!
# A065240: Number of winning length n strings with a 7-symbol alphabet in "same game".

The programs for A065240, there is no canonical definition to state claims against.
-/

/-! ## A065240.P14271719885136939019

`A064458(14*A065239(n))`
-/

namespace A065240.P14271719885136939019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (14 * A065239 n).toNat

end

end A065240.P14271719885136939019

/-! ## A065240.P13954055381749704560

`A323844(A056115(n)+20)`
-/

namespace A065240.P13954055381749704560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A056115 n + 20).toNat

end

end A065240.P13954055381749704560

/-!
# A065241: Number of winning length n strings with an 8-symbol alphabet in "same game".

The programs for A065241, there is no canonical definition to state claims against.
-/

/-! ## A065241.P6634778605008106205

`∑{d}[A220496(A127328(n)), #]`
-/

namespace A065241.P6634778605008106205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A127328 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A065241.P6634778605008106205

/-! ## A065241.P739669189798952946

`A340008(A319612(n)+A197122(n))`
-/

namespace A065241.P739669189798952946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (A319612 n + A197122 n).toNat

end

end A065241.P739669189798952946

/-!
# A065242: Number of winning length n strings with a 9-symbol alphabet in "same game".

The programs for A065242, there is no canonical definition to state claims against.
-/

/-! ## A065242.P980479074799993202

`A057355(A065243(n)+A065239(n))`
-/

namespace A065242.P980479074799993202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A065243 n + A065239 n).toNat

end

end A065242.P980479074799993202

/-! ## A065242.P11763762243427696335

`A344851(A344849(n)+3*n)`
-/

namespace A065242.P11763762243427696335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344851 (A344849 n + (3 * n : ℤ)).toNat

end

end A065242.P11763762243427696335

/-!
# A065243: Number of winning length n strings with a 10-symbol alphabet in "same game".

The programs for A065243, there is no canonical definition to state claims against.
-/

/-! ## A065243.P1471802308113261508

`A052413(A065242(n)+1)`
-/

namespace A065243.P1471802308113261508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A065242 n + 1).toNat

end

end A065243.P1471802308113261508

/-!
# A065244: Primes of form p = 2 + Sum_{k = 1..m} k^2 for some m.

The programs for A065244, there is no canonical definition to state claims against.
-/

/-! ## A065244.P14963343584546701976

`A153056(A065245(n+1))`
-/

namespace A065244.P14963343584546701976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 (A065245 (n + 1)).toNat

end

end A065244.P14963343584546701976

/-! ## A065244.P15932457923959229269

`A179904(A065245(n+1)%((n+3)^3))`
-/

namespace A065244.P15932457923959229269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (Int.tmod (A065245 (n + 1)) ((n + 3) ^ 3 : ℤ)).toNat

end

end A065244.P15932457923959229269

/-! ## A065244.P17718585211868030445

`A179904(or(A000007(n), A065245(n+1)))`
-/

namespace A065244.P17718585211868030445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (Int.lor (A000007 n) (A065245 (n + 1))).toNat

end

end A065244.P17718585211868030445

/-! ## A065244.P8164495334611145394

`A179904(A065245(n+1)+A008683(8*(n+1)))`
-/

namespace A065244.P8164495334611145394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (A065245 (n + 1) + A008683 (8 * (n + 1))).toNat

end

end A065244.P8164495334611145394

/-!
# A065245: Positive numbers k such that 2 + Sum_{j = 1..k} j^2 is a prime.

The programs for A065245, there is no canonical definition to state claims against.
-/

/-! ## A065245.P4662129916828506192

`lt[A001222(∑[(n+1)²]+2), 2]+1`
-/

namespace A065245.P4662129916828506192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A065245.P4662129916828506192

/-! ## A065245.P15987131808480714849

`eq[1, A001222(A179904(n))]`
-/

namespace A065245.P15987131808480714849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A179904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065245.P15987131808480714849

/-! ## A065245.P17699344887479192104

`lt[A085341(A153056(n)), 1]`
-/

namespace A065245.P17699344887479192104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (A153056 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065245.P17699344887479192104

/-! ## A065245.P4030966171783968051

`eq[2, A175851(A153057(n))]`
-/

namespace A065245.P4030966171783968051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A153057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065245.P4030966171783968051

/-! ## A065245.P14131517561036102303

`eq[1, A001222(A000330(n+1)+2)]+1`
-/

namespace A065245.P14131517561036102303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000330 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065245.P14131517561036102303

/-!
# A065246: Formal neural networks with n components.

The programs for A065246, there is no canonical definition to state claims against.
-/

/-! ## A065246.P11961819638538639641

`A000609(n)^n`
-/

namespace A065246.P11961819638538639641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000609 n ^ n

end

end A065246.P11961819638538639641

/-!
# A065247: 

The programs for A065247, there is no canonical definition to state claims against.
-/

/-! ## A065247.P9230295365260043699

`A000312(A000079(n))-A065246(n)`
-/

namespace A065247.P9230295365260043699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000079 n).toNat - A065246 n

end

end A065247.P9230295365260043699

/-!
# A065248: 

The programs for A065248, there is no canonical definition to state claims against.
-/

/-! ## A065248.P11208712281843462397

`A064436(n+1)^(n+1)`
-/

namespace A065248.P11208712281843462397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064436 (n + 1) ^ (n + 1)

end

end A065248.P11208712281843462397

/-!
# A065249: Permutation of N induced by the order-preserving permutation of the positive rational numbers (x -> x/2), positions in Stern-Brocot tree.

The programs for A065249, there is no canonical definition to state claims against.
-/

/-! ## A065249.P17069973756904412883

`A054429(A065250(A054429(n+1)))`
-/

namespace A065249.P17069973756904412883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065250 (A054429 (n + 1)).toNat).toNat

end

end A065249.P17069973756904412883

/-!
# A065250: Permutation of N induced by the order-preserving permutation of the positive rational numbers (x -> 2x), positions in Stern-Brocot tree.

The programs for A065250, there is no canonical definition to state claims against.
-/

/-! ## A065250.P9725259598601745005

`A054429(A065249(A054429(n+1)))`
-/

namespace A065250.P9725259598601745005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065249 (A054429 (n + 1)).toNat).toNat

end

end A065250.P9725259598601745005

/-!
# A065251: Simple quasi-periodic sequence consisting of the terms 1, 0 and -1.

The programs for A065251, the canonical program `A065251.P3642109721607212568` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065251 has offset 1).

The definition of A065251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065251.P3642109721607212568

`1-lt[xor(n, floor(n/2)), n]%3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065251

/-- `1-lt[xor(n, floor(n/2)), n]%3` -/
def P3642109721607212568.Spec : Prop :=
  ∀ n, P3642109721607212568.a n = A065251 (n + 1)

theorem P3642109721607212568.correct : P3642109721607212568.Spec := by
  intro n
  simp only [A065251, Nat.add_sub_cancel]

end A065251

/-! ## A065251.P15699236330000293263

`(floor(log2(n+1))%2-n)%3+1`
-/

namespace A065251.P15699236330000293263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((Nat.log 2 (n + 1) % 2 : ℕ) : ℤ) - (n : ℤ)) 3 + 1

end

end A065251.P15699236330000293263

namespace A065251

/-- `(floor(log2(n+1))%2-n)%3+1` -/
def P15699236330000293263.Spec : Prop :=
  ∀ n, P15699236330000293263.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P17571394001572205689

`1-lt[n, 2*and(n, 2*n)]%3`
-/

namespace A065251.P17571394001572205689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 3 : ℕ) : ℤ)

end

end A065251.P17571394001572205689

namespace A065251

/-- `1-lt[n, 2*and(n, 2*n)]%3` -/
def P17571394001572205689.Spec : Prop :=
  ∀ n, P17571394001572205689.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P6529945801721218101

`-lt[n, 2*and(n, 2*n)]%3+1`
-/

namespace A065251.P6529945801721218101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)) 3 + 1

end

end A065251.P6529945801721218101

namespace A065251

/-- `-lt[n, 2*and(n, 2*n)]%3+1` -/
def P6529945801721218101.Spec : Prop :=
  ∀ n, P6529945801721218101.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P503523457770031498

`1-lt[or(n, 2*n), n*ϕ²]%3`
-/

namespace A065251.P503523457770031498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.goldenRatio ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n % 3 : ℕ) : ℤ)

end

end A065251.P503523457770031498

namespace A065251

/-- `1-lt[or(n, 2*n), n*ϕ²]%3` -/
def P503523457770031498.Spec : Prop :=
  ∀ n, P503523457770031498.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P13599210041624941825

`round(sin(((2^floor(log2(n+1))+2*n)%3)²))`
-/

namespace A065251.P13599210041624941825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((((2 ^ Nat.log 2 (n + 1) + 2 * n) % 3) ^ 2 : ℕ) : ℝ))

end

end A065251.P13599210041624941825

namespace A065251

/-- `round(sin(((2^floor(log2(n+1))+2*n)%3)²))` -/
def P13599210041624941825.Spec : Prop :=
  ∀ n, P13599210041624941825.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P822977611454492952

`1-A004755(n+1)%3`
-/

namespace A065251.P822977611454492952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A004755 (n + 1)) 3

end

end A065251.P822977611454492952

namespace A065251

/-- `1-A004755(n+1)%3` -/
def P822977611454492952.Spec : Prop :=
  ∀ n, P822977611454492952.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P1437855179024279364

`1-A004758(n+1)%3`
-/

namespace A065251.P1437855179024279364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A004758 (n + 1)) 3

end

end A065251.P1437855179024279364

namespace A065251

/-- `1-A004758(n+1)%3` -/
def P1437855179024279364.Spec : Prop :=
  ∀ n, P1437855179024279364.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P14987440179014311021

`1-A053645(n+1)%3`
-/

namespace A065251.P14987440179014311021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A053645 (n + 1)) 3

end

end A065251.P14987440179014311021

namespace A065251

/-- `1-A053645(n+1)%3` -/
def P14987440179014311021.Spec : Prop :=
  ∀ n, P14987440179014311021.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P14048244377623255599

`1-lt[A003188(n), n]%3`
-/

namespace A065251.P14048244377623255599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 3 : ℕ) : ℤ)

end

end A065251.P14048244377623255599

namespace A065251

/-- `1-lt[A003188(n), n]%3` -/
def P14048244377623255599.Spec : Prop :=
  ∀ n, P14048244377623255599.a n = A065251 (n + 1)

theorem P14048244377623255599.correct : P14048244377623255599.Spec := by
  intro n
  simp only [A065251, Nat.add_sub_cancel, A065251.P14048244377623255599.f1, A065251.P14048244377623255599.f2, A065251.P14048244377623255599.a, A065251.P3642109721607212568.f1, A065251.P3642109721607212568.f2, A065251.P3642109721607212568.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065251

/-! ## A065251.P13786625091004542662

`1-(A206332(n+1)+1)%3`
-/

namespace A065251.P13786625091004542662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A206332 (n + 1) + 1) 3

end

end A065251.P13786625091004542662

namespace A065251

/-- `1-(A206332(n+1)+1)%3` -/
def P13786625091004542662.Spec : Prop :=
  ∀ n, P13786625091004542662.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P15860147807279769275

`A010892((2*(n+1))%(2^ceil(log2(n+1))))`
-/

namespace A065251.P15860147807279769275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (Int.tmod (2 * (n + 1) : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A065251.P15860147807279769275

namespace A065251

/-- `A010892((2*(n+1))%(2^ceil(log2(n+1))))` -/
def P15860147807279769275.Spec : Prop :=
  ∀ n, P15860147807279769275.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P4955820717130096530

`A084091(A006257(n+1))`
-/

namespace A065251.P4955820717130096530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A006257 (n + 1)).toNat

end

end A065251.P4955820717130096530

namespace A065251

/-- `A084091(A006257(n+1))` -/
def P4955820717130096530.Spec : Prop :=
  ∀ n, P4955820717130096530.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P3523116590290603214

`A057078(A053645(n+1))`
-/

namespace A065251.P3523116590290603214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A053645 (n + 1)).toNat

end

end A065251.P3523116590290603214

namespace A065251

/-- `A057078(A053645(n+1))` -/
def P3523116590290603214.Spec : Prop :=
  ∀ n, P3523116590290603214.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P3759450273822884772

`A084091(A256251(n+1))`
-/

namespace A065251.P3759450273822884772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A256251 (n + 1)).toNat

end

end A065251.P3759450273822884772

namespace A065251

/-- `A084091(A256251(n+1))` -/
def P3759450273822884772.Spec : Prop :=
  ∀ n, P3759450273822884772.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P632291740184560849

`A084091(A080565(n+2))`
-/

namespace A065251.P632291740184560849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A080565 (n + 2)).toNat

end

end A065251.P632291740184560849

namespace A065251

/-- `A084091(A080565(n+2))` -/
def P632291740184560849.Spec : Prop :=
  ∀ n, P632291740184560849.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P6394763585224572983

`1-A004760(n+3)%3`
-/

namespace A065251.P6394763585224572983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A004760 (n + 3)) 3

end

end A065251.P6394763585224572983

namespace A065251

/-- `1-A004760(n+3)%3` -/
def P6394763585224572983.Spec : Prop :=
  ∀ n, P6394763585224572983.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P3074319787278194702

`A049347(floor(log2(n+1))%2+2*n)`
-/

namespace A065251.P3074319787278194702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Nat.log 2 (n + 1) % 2 + 2 * n)

end

end A065251.P3074319787278194702

namespace A065251

/-- `A049347(floor(log2(n+1))%2+2*n)` -/
def P3074319787278194702.Spec : Prop :=
  ∀ n, P3074319787278194702.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P3033503724728381127

`1-A065252(2*n+3)`
-/

namespace A065251.P3033503724728381127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065252 (2 * n + 3)

end

end A065251.P3033503724728381127

namespace A065251

/-- `1-A065252(2*n+3)` -/
def P3033503724728381127.Spec : Prop :=
  ∀ n, P3033503724728381127.a n = A065251 (n + 1)

end A065251

/-! ## A065251.P10267723286633304311

`A057078(A004755(n+1))`
-/

namespace A065251.P10267723286633304311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A004755 (n + 1)).toNat

end

end A065251.P10267723286633304311

namespace A065251

/-- `A057078(A004755(n+1))` -/
def P10267723286633304311.Spec : Prop :=
  ∀ n, P10267723286633304311.a n = A065251 (n + 1)

end A065251

/-!
# A065252: The sequence A065251 reduced modulo 3 (i.e., replace every -1 with 2).

The programs for A065252, the canonical program `A065252.P11004860730195619418` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065252 has offset 1).

The definition of A065252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065252.P1848603379325798266

`(5^floor(log2(n+1))-n)%3`
-/

namespace A065252.P1848603379325798266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((5 ^ Nat.log 2 (n + 1) : ℤ) - (n : ℤ)) 3

end

end A065252.P1848603379325798266

namespace A065252

/-- `(5^floor(log2(n+1))-n)%3` -/
def P1848603379325798266.Spec : Prop :=
  ∀ n, P1848603379325798266.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P11004860730195619418

`dr(and(11, (floor(log2(n+1))%2-n)%3+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065252

/-- `dr(and(11, (floor(log2(n+1))%2-n)%3+1))` -/
def P11004860730195619418.Spec : Prop :=
  ∀ n, (P11004860730195619418.a n : ℤ) = A065252 (n + 1)

theorem P11004860730195619418.correct : P11004860730195619418.Spec := by
  intro n
  simp only [A065252, Nat.add_sub_cancel]

end A065252

/-! ## A065252.P12292496654146555635

`dr(and(11, 1-lt[n, 2*and(n, 2*n)]%3))`
-/

namespace A065252.P12292496654146555635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 11 (1 - ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 3 : ℕ) : ℤ)))

end

end A065252.P12292496654146555635

namespace A065252

/-- `dr(and(11, 1-lt[n, 2*and(n, 2*n)]%3))` -/
def P12292496654146555635.Spec : Prop :=
  ∀ n, (P12292496654146555635.a n : ℤ) = A065252 (n + 1)

end A065252

/-! ## A065252.P1550983795112181825

`dr(and(11, -lt[n, 2*and(n, 2*n)]%3+1))`
-/

namespace A065252.P1550983795112181825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 11 (Int.tmod (-(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)) 3 + 1))

end

end A065252.P1550983795112181825

namespace A065252

/-- `dr(and(11, -lt[n, 2*and(n, 2*n)]%3+1))` -/
def P1550983795112181825.Spec : Prop :=
  ∀ n, (P1550983795112181825.a n : ℤ) = A065252 (n + 1)

end A065252

/-! ## A065252.P9848460764551756187

`dr(A006257(n+1)%3)`
-/

namespace A065252.P9848460764551756187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A006257 (n + 1)) 3)

end

end A065252.P9848460764551756187

namespace A065252

/-- `dr(A006257(n+1)%3)` -/
def P9848460764551756187.Spec : Prop :=
  ∀ n, (P9848460764551756187.a n : ℤ) = A065252 (n + 1)

end A065252

/-! ## A065252.P5527095868841233288

`dr(A153777(n+1)%3)`
-/

namespace A065252.P5527095868841233288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A153777 (n + 1)) 3)

end

end A065252.P5527095868841233288

namespace A065252

/-- `dr(A153777(n+1)%3)` -/
def P5527095868841233288.Spec : Prop :=
  ∀ n, (P5527095868841233288.a n : ℤ) = A065252 (n + 1)

end A065252

/-! ## A065252.P13529151685743238358

`dr(and(11, A065251(n+1)))`
-/

namespace A065252.P13529151685743238358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 11 (A065251 (n + 1)))

end

end A065252.P13529151685743238358

namespace A065252

/-- `dr(and(11, A065251(n+1)))` -/
def P13529151685743238358.Spec : Prop :=
  ∀ n, (P13529151685743238358.a n : ℤ) = A065252 (n + 1)

end A065252

/-! ## A065252.P568777256302092514

`2-A062050(n+1)%3`
-/

namespace A065252.P568777256302092514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A062050 (n + 1)) 3

end

end A065252.P568777256302092514

namespace A065252

/-- `2-A062050(n+1)%3` -/
def P568777256302092514.Spec : Prop :=
  ∀ n, P568777256302092514.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P12737479949031819555

`2-(A004755(n+1)+1)%3`
-/

namespace A065252.P12737479949031819555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A004755 (n + 1) + 1) 3

end

end A065252.P12737479949031819555

namespace A065252

/-- `2-(A004755(n+1)+1)%3` -/
def P12737479949031819555.Spec : Prop :=
  ∀ n, P12737479949031819555.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P16640971163606941800

`2-(A004758(n+1)+1)%3`
-/

namespace A065252.P16640971163606941800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A004758 (n + 1) + 1) 3

end

end A065252.P16640971163606941800

namespace A065252

/-- `2-(A004758(n+1)+1)%3` -/
def P16640971163606941800.Spec : Prop :=
  ∀ n, P16640971163606941800.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P3915970594246427162

`2-(A053645(n+1)+1)%3`
-/

namespace A065252.P3915970594246427162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A053645 (n + 1) + 1) 3

end

end A065252.P3915970594246427162

namespace A065252

/-- `2-(A053645(n+1)+1)%3` -/
def P3915970594246427162.Spec : Prop :=
  ∀ n, P3915970594246427162.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P11563454149706372871

`2-(A206332(n+1)-1)%3`
-/

namespace A065252.P11563454149706372871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A206332 (n + 1) - 1) 3

end

end A065252.P11563454149706372871

namespace A065252

/-- `2-(A206332(n+1)-1)%3` -/
def P11563454149706372871.Spec : Prop :=
  ∀ n, P11563454149706372871.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P107411263756008313

`A010872(A006257(n+1))`
-/

namespace A065252.P107411263756008313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006257 (n + 1)).toNat

end

end A065252.P107411263756008313

namespace A065252

/-- `A010872(A006257(n+1))` -/
def P107411263756008313.Spec : Prop :=
  ∀ n, P107411263756008313.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P8541173403756998534

`abs(Δ[A256249(n)]%3)`
-/

namespace A065252.P8541173403756998534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 3|

end

end A065252.P8541173403756998534

namespace A065252

/-- `abs(Δ[A256249(n)]%3)` -/
def P8541173403756998534.Spec : Prop :=
  ∀ n, P8541173403756998534.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P8762389269615442963

`log2(gcd(4, A010078(n+2)%3))`
-/

namespace A065252.P8762389269615442963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (Int.tmod (A010078 (n + 2)) 3) : ℝ)

end

end A065252.P8762389269615442963

namespace A065252

/-- `log2(gcd(4, A010078(n+2)%3))` -/
def P8762389269615442963.Spec : Prop :=
  ∀ n, P8762389269615442963.a n = (A065252 (n + 1) : ℝ)

end A065252

/-! ## A065252.P5467237387836103342

`A010872(Δ[A256249(n)])`
-/

namespace A065252.P5467237387836103342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (f1 (n + 1) - f1 n).toNat

end

end A065252.P5467237387836103342

namespace A065252

/-- `A010872(Δ[A256249(n)])` -/
def P5467237387836103342.Spec : Prop :=
  ∀ n, P5467237387836103342.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P14209237591742838378

`A099544(A139708(n+1))`
-/

namespace A065252.P14209237591742838378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (A139708 (n + 1)).toNat

end

end A065252.P14209237591742838378

namespace A065252

/-- `A099544(A139708(n+1))` -/
def P14209237591742838378.Spec : Prop :=
  ∀ n, P14209237591742838378.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P7416876155966407762

`1-A065251(2*n+3)`
-/

namespace A065252.P7416876155966407762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065251 (2 * n + 3)

end

end A065252.P7416876155966407762

namespace A065252

/-- `1-A065251(2*n+3)` -/
def P7416876155966407762.Spec : Prop :=
  ∀ n, P7416876155966407762.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P12496663618214500975

`2-A010078(2*(n+2))%3`
-/

namespace A065252.P12496663618214500975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A010078 (2 * (n + 2))) 3

end

end A065252.P12496663618214500975

namespace A065252

/-- `2-A010078(2*(n+2))%3` -/
def P12496663618214500975.Spec : Prop :=
  ∀ n, P12496663618214500975.a n = A065252 (n + 1)

end A065252

/-! ## A065252.P9271361876095045974

`A080425(A206332(n+1))`
-/

namespace A065252.P9271361876095045974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A206332 (n + 1)).toNat

end

end A065252.P9271361876095045974

namespace A065252

/-- `A080425(A206332(n+1))` -/
def P9271361876095045974.Spec : Prop :=
  ∀ n, P9271361876095045974.a n = A065252 (n + 1)

end A065252

/-!
# A065253: a(n) = 10*(A064823(n)-1) + A000796(n).

The programs for A065253, there is no canonical definition to state claims against.
-/

/-! ## A065253.P12269835926380093902

`10*(A064823(n+1)-1)+A000796(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065253.P12269835926380093902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A064823 (n + 1) - 1) + A000796 (n + 1)

end

end A065253.P12269835926380093902

/-!
# A065254: "Inverse" to A065253.

The programs for A065254, there is no canonical definition to state claims against.
-/

/-! ## A065254.P4697084520280154614

`A333128(A156136(∑[n]))`
-/

namespace A065254.P4697084520280154614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333128 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065254.P4697084520280154614

/-! ## A065254.P18389948083901675010

`A133137(A032445(n+1))`
-/

namespace A065254.P18389948083901675010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A032445 (n + 1)).toNat

end

end A065254.P18389948083901675010

/-! ## A065254.P9007469297296286112

`A333128(A062399(n+1))`
-/

namespace A065254.P9007469297296286112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333128 (A062399 (n + 1)).toNat

end

end A065254.P9007469297296286112

/-! ## A065254.P12331520475804803061

`A085736(A333128(n+1))`
-/

namespace A065254.P12331520475804803061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A333128 (n + 1)).toNat

end

end A065254.P12331520475804803061

/-! ## A065254.P3649632352102700491

`A333128(A120126(n+1))`
-/

namespace A065254.P3649632352102700491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333128 (A120126 (n + 1)).toNat

end

end A065254.P3649632352102700491

/-!
# A065256: Quintal Queens permutation of N: halve or multiply by 3 (mod 5) each digit (0->0, 1->3, 2->1, 3->4, 4->2) of the base 5 representation of n.

The programs for A065256, there is no canonical definition to state claims against.
-/

/-! ## A065256.P8203223599130033181

`A065258(n+1)-1`
-/

namespace A065256.P8203223599130033181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065258 (n + 1) - 1

end

end A065256.P8203223599130033181

/-! ## A065256.P3420165225152923912

`A004515(A055115(n))`
-/

namespace A065256.P3420165225152923912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A055115 n).toNat

end

end A065256.P3420165225152923912

/-! ## A065256.P11109811941146565487

`A055115(n)-A309991(n)`
-/

namespace A065256.P11109811941146565487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 n - A309991 n

end

end A065256.P11109811941146565487

/-! ## A065256.P1589747785213155485

`A309991(A309991(n)+n)+n`
-/

namespace A065256.P1589747785213155485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (A309991 n + (n : ℤ)).toNat + (n : ℤ)

end

end A065256.P1589747785213155485

/-! ## A065256.P11390530269049259832

`A004515(A004515(A004515(n)))`
-/

namespace A065256.P11390530269049259832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A004515 (A004515 n).toNat).toNat

end

end A065256.P11390530269049259832

/-! ## A065256.P78767155806032528

`A055115(A309991(n)+n)`
-/

namespace A065256.P78767155806032528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 (A309991 n + (n : ℤ)).toNat

end

end A065256.P78767155806032528

/-! ## A065256.P8773145506084095483

`A023443(A065258(n+1))`
-/

namespace A065256.P8773145506084095483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065258 (n + 1)).toNat

end

end A065256.P8773145506084095483

/-! ## A065256.P12617168982704664240

`A289207(A065258(n+1)+1)`
-/

namespace A065256.P12617168982704664240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A065258 (n + 1) + 1).toNat

end

end A065256.P12617168982704664240

/-!
# A065257: Quintal Queens permutation of N: double (mod 5) each digit (0->0, 1->2, 2->4, 3->1, 4->3) of the base-5 representation of n-1, add one.

The programs for A065257, there is no canonical definition to state claims against.
-/

/-! ## A065257.P637197270057891045

`A004515(n)+1`
-/

namespace A065257.P637197270057891045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n + 1

end

end A065257.P637197270057891045

/-! ## A065257.P7848984771274986908

`A309991(n)+1+n`
-/

namespace A065257.P7848984771274986908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n + 1 + (n : ℤ)

end

end A065257.P7848984771274986908

/-! ## A065257.P6010766009174688521

`A004515(n)-(n-1)-A001489(n)`
-/

namespace A065257.P6010766009174688521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n - ((n : ℤ) - 1) - A001489 n

end

end A065257.P6010766009174688521

/-! ## A065257.P1169622451308505483

`A055115(A065256(n))+1`
-/

namespace A065257.P1169622451308505483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 (A065256 n).toNat + 1

end

end A065257.P1169622451308505483

/-! ## A065257.P9028177200594556504

`A008619(2*A004515(n))`
-/

namespace A065257.P9028177200594556504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A004515 n).toNat

end

end A065257.P9028177200594556504

/-! ## A065257.P5980054632492786154

`A008611(3*A004515(n))`
-/

namespace A065257.P5980054632492786154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A004515 n).toNat

end

end A065257.P5980054632492786154

/-! ## A065257.P2846844625219441841

`A065258(A065258(A065258(n+1)))`
-/

namespace A065257.P2846844625219441841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065258 (A065258 (A065258 (n + 1)).toNat).toNat

end

end A065257.P2846844625219441841

/-! ## A065257.P15673095882736096787

`A008612(6*A004515(n))`
-/

namespace A065257.P15673095882736096787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A004515 n).toNat

end

end A065257.P15673095882736096787

/-! ## A065257.P9600328148900421115

`A319047(∑[n+2]-1)+1+n`
-/

namespace A065257.P9600328148900421115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1 + (n : ℤ)

end

end A065257.P9600328148900421115

/-! ## A065257.P6334025405441513268

`A319047(∑[n+1]+n)+n+1`
-/

namespace A065257.P6334025405441513268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j + n) + (n + 1 : ℤ)

end

end A065257.P6334025405441513268

/-!
# A065258: Quintal Queens permutation of N: halve or multiply by 3 (mod 5) each digit (0->0, 1->3, 2->1, 3->4, 4->2) of the base 5 representation of n-1, add one.

The programs for A065258, there is no canonical definition to state claims against.
-/

/-! ## A065258.P1488093299081373868

`A065256(n)+1`
-/

namespace A065258.P1488093299081373868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065256 n + 1

end

end A065258.P1488093299081373868

/-! ## A065258.P8375002595133760256

`A004515(A055115(n))+1`
-/

namespace A065258.P8375002595133760256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A055115 n).toNat + 1

end

end A065258.P8375002595133760256

/-! ## A065258.P3915639032866337815

`A055115(n)+1-A309991(n)`
-/

namespace A065258.P3915639032866337815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 n + (1 - A309991 n)

end

end A065258.P3915639032866337815

/-! ## A065258.P8563576621898412652

`A008619(2*A065256(n))`
-/

namespace A065258.P8563576621898412652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A065256 n).toNat

end

end A065258.P8563576621898412652

/-! ## A065258.P16690781545296480394

`A027656(2*A065256(n))`
-/

namespace A065258.P16690781545296480394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A065256 n).toNat

end

end A065258.P16690781545296480394

/-! ## A065258.P10054139929189671933

`A028242(2*A065256(n))`
-/

namespace A065258.P10054139929189671933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A065256 n).toNat

end

end A065258.P10054139929189671933

/-! ## A065258.P17750936338842088891

`A029579(2*A065256(n))`
-/

namespace A065258.P17750936338842088891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A065256 n).toNat

end

end A065258.P17750936338842088891

/-! ## A065258.P1139792023803137195

`A052938(2*A065256(n))`
-/

namespace A065258.P1139792023803137195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A065256 n).toNat

end

end A065258.P1139792023803137195

/-! ## A065258.P15424708753960028309

`A080513(2*A065256(n))`
-/

namespace A065258.P15424708753960028309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A065256 n).toNat

end

end A065258.P15424708753960028309

/-! ## A065258.P12203435105238164177

`A008611(3*A065256(n))`
-/

namespace A065258.P12203435105238164177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A065256 n).toNat

end

end A065258.P12203435105238164177

/-! ## A065258.P14394776605041923279

`A008620(3*A065256(n))`
-/

namespace A065258.P14394776605041923279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A065256 n).toNat

end

end A065258.P14394776605041923279

/-! ## A065258.P17762507553439695671

`A065257(A065257(A065257(n+1)))`
-/

namespace A065258.P17762507553439695671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065257 (A065257 (A065257 (n + 1)).toNat).toNat

end

end A065258.P17762507553439695671

/-!
# A065259: A057114 conjugated with A059893, inverse of A065260.

The programs for A065259, the canonical program `A065259.P1655135024653917412` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065259 has offset 1).

The definition of A065259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065259.P1655135024653917412

`2*a(n-4)-a(n-8)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=2, a(4)=11, a(5)=5, a(6)=15, a(7)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065259

/-- `2*a(n-4)-a(n-8)` -/
def P1655135024653917412.Spec : Prop :=
  ∀ n, P1655135024653917412.a n = A065259 (n + 1)

theorem P1655135024653917412.correct : P1655135024653917412.Spec := by
  intro n
  simp only [A065259, Nat.add_sub_cancel]

end A065259

/-! ## A065259.P4379769658624580581

`A059893(A057114(A059893(n+1)))`
-/

namespace A065259.P4379769658624580581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A057114 (A059893 (n + 1)).toNat).toNat

end

end A065259.P4379769658624580581

namespace A065259

/-- `A059893(A057114(A059893(n+1)))` -/
def P4379769658624580581.Spec : Prop :=
  ∀ n, P4379769658624580581.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P14062189567896958819

`xor(1, A059031(n+1))-1`
-/

namespace A065259.P14062189567896958819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059031 (n + 1)) - 1

end

end A065259.P14062189567896958819

namespace A065259

/-- `xor(1, A059031(n+1))-1` -/
def P14062189567896958819.Spec : Prop :=
  ∀ n, P14062189567896958819.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P14778073798974578782

`A065171(n+2)-1`
-/

namespace A065259.P14778073798974578782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (n + 2) - 1

end

end A065259.P14778073798974578782

namespace A065259

/-- `A065171(n+2)-1` -/
def P14778073798974578782.Spec : Prop :=
  ∀ n, P14778073798974578782.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P2810163322706037230

`xor(1, A145979(n+1)-3)+1`
-/

namespace A065259.P2810163322706037230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A145979 (n + 1) - 3) + 1

end

end A065259.P2810163322706037230

namespace A065259

/-- `xor(1, A145979(n+1)-3)+1` -/
def P2810163322706037230.Spec : Prop :=
  ∀ n, P2810163322706037230.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P11576120224502785514

`ceil((xor(1, n)*A176895(n+1)+1)/2)`
-/

namespace A065259.P11576120224502785514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 1 n : ℤ) * A176895 (n + 1) + 1 : ℚ) / 2⌉

end

end A065259.P11576120224502785514

namespace A065259

/-- `ceil((xor(1, n)*A176895(n+1)+1)/2)` -/
def P11576120224502785514.Spec : Prop :=
  ∀ n, P11576120224502785514.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P16628792784367741101

`A065260(A092486(n+1))-1`
-/

namespace A065259.P16628792784367741101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A092486 (n + 1)).toNat - 1

end

end A065259.P16628792784367741101

namespace A065259

/-- `A065260(A092486(n+1))-1` -/
def P16628792784367741101.Spec : Prop :=
  ∀ n, P16628792784367741101.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P8419557169963631010

`A247555(A116966(n+1))-1`
-/

namespace A065259.P8419557169963631010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A116966 (n + 1)).toNat - 1

end

end A065259.P8419557169963631010

namespace A065259

/-- `A247555(A116966(n+1))-1` -/
def P8419557169963631010.Spec : Prop :=
  ∀ n, P8419557169963631010.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P13144964339498275610

`A066104(n+1)-A124625(A026741(n+1)+1)`
-/

namespace A065259.P13144964339498275610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (n + 1) - A124625 (A026741 (n + 1) + 1).toNat

end

end A065259.P13144964339498275610

namespace A065259

/-- `A066104(n+1)-A124625(A026741(n+1)+1)` -/
def P13144964339498275610.Spec : Prop :=
  ∀ n, P13144964339498275610.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P518882108404955134

`A074305(A006368(n)+1)`
-/

namespace A065259.P518882108404955134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A006368 n + 1).toNat

end

end A065259.P518882108404955134

namespace A065259

/-- `A074305(A006368(n)+1)` -/
def P518882108404955134.Spec : Prop :=
  ∀ n, P518882108404955134.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P17740689743421732986

`A006369(A342131(n+1))`
-/

namespace A065259.P17740689743421732986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A342131 (n + 1)).toNat

end

end A065259.P17740689743421732986

namespace A065259

/-- `A006369(A342131(n+1))` -/
def P17740689743421732986.Spec : Prop :=
  ∀ n, P17740689743421732986.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P14344031652828814573

`A006369(A006368(n+2)-1)`
-/

namespace A065259.P14344031652828814573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006368 (n + 2) - 1).toNat

end

end A065259.P14344031652828814573

namespace A065259

/-- `A006369(A006368(n+2)-1)` -/
def P14344031652828814573.Spec : Prop :=
  ∀ n, P14344031652828814573.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P9706286176402362406

`A159966(A065172(n+1))`
-/

namespace A065259.P9706286176402362406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A065172 (n + 1)).toNat

end

end A065259.P9706286176402362406

namespace A065259

/-- `A159966(A065172(n+1))` -/
def P9706286176402362406.Spec : Prop :=
  ∀ n, P9706286176402362406.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P5210952823577764893

`A014681(A145979(n+1)-2)`
-/

namespace A065259.P5210952823577764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A145979 (n + 1) - 2).toNat

end

end A065259.P5210952823577764893

namespace A065259

/-- `A014681(A145979(n+1)-2)` -/
def P5210952823577764893.Spec : Prop :=
  ∀ n, P5210952823577764893.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P9521023556155602015

`A026741(A066104(n+1)-A026741(n+1)%2)`
-/

namespace A065259.P9521023556155602015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A066104 (n + 1) - Int.tmod (A026741 (n + 1)) 2).toNat

end

end A065259.P9521023556155602015

namespace A065259

/-- `A026741(A066104(n+1)-A026741(n+1)%2)` -/
def P9521023556155602015.Spec : Prop :=
  ∀ n, P9521023556155602015.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P6915799625341440849

`A023443(A065171(n+2))`
-/

namespace A065259.P6915799625341440849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065171 (n + 2)).toNat

end

end A065259.P6915799625341440849

namespace A065259

/-- `A023443(A065171(n+2))` -/
def P6915799625341440849.Spec : Prop :=
  ∀ n, P6915799625341440849.a n = A065259 (n + 1)

end A065259

/-! ## A065259.P3167485478275351852

`A054429(A065260(A054429(n+1)))`
-/

namespace A065259.P3167485478275351852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065260 (A054429 (n + 1)).toNat).toNat

end

end A065259.P3167485478275351852

namespace A065259

/-- `A054429(A065260(A054429(n+1)))` -/
def P3167485478275351852.Spec : Prop :=
  ∀ n, P3167485478275351852.a n = A065259 (n + 1)

end A065259

/-!
# A065260: A057115 conjugated with A059893, inverse of A065259.

The programs for A065260, the canonical program `A065260.P8099633097199352646` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065260 has offset 1).

The definition of A065260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065260.P8099633097199352646

`2*a(n-4)-a(n-8)` with `a(0)=2, a(1)=4, a(2)=1, a(3)=8, a(4)=6, a(5)=12, a(6)=3, a(7)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065260

/-- `2*a(n-4)-a(n-8)` -/
def P8099633097199352646.Spec : Prop :=
  ∀ n, P8099633097199352646.a n = A065260 (n + 1)

theorem P8099633097199352646.correct : P8099633097199352646.Spec := by
  intro n
  simp only [A065260, Nat.add_sub_cancel]

end A065260

/-! ## A065260.P12178005232155307495

`A059893(A057115(A059893(n+1)))`
-/

namespace A065260.P12178005232155307495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A057115 (A059893 (n + 1)).toNat).toNat

end

end A065260.P12178005232155307495

namespace A065260

/-- `A059893(A057115(A059893(n+1)))` -/
def P12178005232155307495.Spec : Prop :=
  ∀ n, P12178005232155307495.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P15507750584493943566

`∑[and(2, n-1)²]/gcd(n+2, n-2)`
-/

namespace A065260.P15507750584493943566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2) : ℚ)

end

end A065260.P15507750584493943566

namespace A065260

/-- `∑[and(2, n-1)²]/gcd(n+2, n-2)` -/
def P15507750584493943566.Spec : Prop :=
  ∀ n, P15507750584493943566.a n = (A065260 (n + 1) : ℚ)

end A065260

/-! ## A065260.P8040123911507840261

`A059031(xor(1, n)+1)-1`
-/

namespace A065260.P8040123911507840261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059031 (Nat.xor 1 n + 1) - 1

end

end A065260.P8040123911507840261

namespace A065260

/-- `A059031(xor(1, n)+1)-1` -/
def P8040123911507840261.Spec : Prop :=
  ∀ n, P8040123911507840261.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P8111051709485565632

`-xor(1, -A065259(xor(1, n)+1))`
-/

namespace A065260.P8111051709485565632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A065259 (Nat.xor 1 n + 1))

end

end A065260.P8111051709485565632

namespace A065260

/-- `-xor(1, -A065259(xor(1, n)+1))` -/
def P8111051709485565632.Spec : Prop :=
  ∀ n, P8111051709485565632.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P852864443266727522

`A065171(A092486(n))`
-/

namespace A065260.P852864443266727522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (A092486 n).toNat

end

end A065260.P852864443266727522

namespace A065260

/-- `A065171(A092486(n))` -/
def P852864443266727522.Spec : Prop :=
  ∀ n, P852864443266727522.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P16600718906180770459

`A065171(A159966(n+1))`
-/

namespace A065260.P16600718906180770459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (A159966 (n + 1)).toNat

end

end A065260.P16600718906180770459

namespace A065260

/-- `A065171(A159966(n+1))` -/
def P16600718906180770459.Spec : Prop :=
  ∀ n, P16600718906180770459.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P8774377241563149670

`A065172(n+2)-1`
-/

namespace A065260.P8774377241563149670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065172 (n + 2) - 1

end

end A065260.P8774377241563149670

namespace A065260

/-- `A065172(n+2)-1` -/
def P8774377241563149670.Spec : Prop :=
  ∀ n, P8774377241563149670.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P16826939668217173956

`A247555(A298364(n+1))`
-/

namespace A065260.P16826939668217173956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A298364 (n + 1)).toNat

end

end A065260.P16826939668217173956

namespace A065260

/-- `A247555(A298364(n+1))` -/
def P16826939668217173956.Spec : Prop :=
  ∀ n, P16826939668217173956.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P8456701894454735382

`A145979(A014681(n+1))-2`
-/

namespace A065260.P8456701894454735382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A014681 (n + 1)).toNat - 2

end

end A065260.P8456701894454735382

namespace A065260

/-- `A145979(A014681(n+1))-2` -/
def P8456701894454735382.Spec : Prop :=
  ∀ n, P8456701894454735382.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P15607517691741498146

`A265667(A074306(n+1))`
-/

namespace A065260.P15607517691741498146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A074306 (n + 1)).toNat

end

end A065260.P15607517691741498146

namespace A065260

/-- `A265667(A074306(n+1))` -/
def P15607517691741498146.Spec : Prop :=
  ∀ n, P15607517691741498146.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P15210069427578444946

`A367286(A006368(n+1))`
-/

namespace A065260.P15210069427578444946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A006368 (n + 1)).toNat

end

end A065260.P15210069427578444946

namespace A065260

/-- `A367286(A006368(n+1))` -/
def P15210069427578444946.Spec : Prop :=
  ∀ n, P15210069427578444946.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P11180018388121464383

`A265667(A249693(n)+1)`
-/

namespace A065260.P11180018388121464383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A249693 n + 1).toNat

end

end A065260.P11180018388121464383

namespace A065260

/-- `A265667(A249693(n)+1)` -/
def P11180018388121464383.Spec : Prop :=
  ∀ n, P11180018388121464383.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P13205277579456801362

`A367286(A342131(n)+1)`
-/

namespace A065260.P13205277579456801362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A342131 n + 1).toNat

end

end A065260.P13205277579456801362

namespace A065260

/-- `A367286(A342131(n)+1)` -/
def P13205277579456801362.Spec : Prop :=
  ∀ n, P13205277579456801362.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P5411392195710469852

`A006369(A342131(n)+2)-1`
-/

namespace A065260.P5411392195710469852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A342131 n + 2).toNat - 1

end

end A065260.P5411392195710469852

namespace A065260

/-- `A006369(A342131(n)+2)-1` -/
def P5411392195710469852.Spec : Prop :=
  ∀ n, P5411392195710469852.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P8130629156470684756

`A006369(A006368(n+1)+1)-1`
-/

namespace A065260.P8130629156470684756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006368 (n + 1) + 1).toNat - 1

end

end A065260.P8130629156470684756

namespace A065260

/-- `A006369(A006368(n+1)+1)-1` -/
def P8130629156470684756.Spec : Prop :=
  ∀ n, P8130629156470684756.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P8998912867059915484

`A367286(A006369(n+1)-A168223(n+1))`
-/

namespace A065260.P8998912867059915484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A006369 (n + 1) - A168223 (n + 1)).toNat

end

end A065260.P8998912867059915484

namespace A065260

/-- `A367286(A006369(n+1)-A168223(n+1))` -/
def P8998912867059915484.Spec : Prop :=
  ∀ n, P8998912867059915484.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P18357252474572635405

`A065171(A065259(A065171(n+1)))`
-/

namespace A065260.P18357252474572635405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (A065259 (A065171 (n + 1)).toNat).toNat

end

end A065260.P18357252474572635405

namespace A065260

/-- `A065171(A065259(A065171(n+1)))` -/
def P18357252474572635405.Spec : Prop :=
  ∀ n, P18357252474572635405.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P2811533150684682690

`A023443(A065172(n+2))`
-/

namespace A065260.P2811533150684682690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065172 (n + 2)).toNat

end

end A065260.P2811533150684682690

namespace A065260

/-- `A023443(A065172(n+2))` -/
def P2811533150684682690.Spec : Prop :=
  ∀ n, P2811533150684682690.a n = A065260 (n + 1)

end A065260

/-! ## A065260.P4433882179236676966

`A159966(A065259(n+2))-1`
-/

namespace A065260.P4433882179236676966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A065259 (n + 2)).toNat - 1

end

end A065260.P4433882179236676966

namespace A065260

/-- `A159966(A065259(n+2))-1` -/
def P4433882179236676966.Spec : Prop :=
  ∀ n, P4433882179236676966.a n = A065260 (n + 1)

end A065260

/-!
# A065261: The siteswap sequence (the deltas p[i]-i, i in ]-inf,+inf[, folded from Z to N, mapping 0->1, 1->2, -1->3, 2->4, -2->5, etc.) for A065260.

The programs for A065261, the canonical program `A065261.P7216788646373031993` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065261 has offset 1).

The definition of A065261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065261.P7216788646373031993

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=3, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065261

/-- `2*a(n-4)-a(n-8)` -/
def P7216788646373031993.Spec : Prop :=
  ∀ n, P7216788646373031993.a n = A065261 (n + 1)

theorem P7216788646373031993.correct : P7216788646373031993.Spec := by
  intro n
  simp only [A065261, Nat.add_sub_cancel]

end A065261

/-! ## A065261.P1683422497040220924

`floor(∑[n]/(2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A065261.P1683422497040220924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * a (n - 2) : ℚ)⌋

end

end A065261.P1683422497040220924

namespace A065261

/-- `floor(∑[n]/(2*a(n-2)))` -/
def P1683422497040220924.Spec : Prop :=
  ∀ n, P1683422497040220924.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P15799711129795668359

`gcd(ceil((n+1)/2*∑[n]), ∑[n+1])`
-/

namespace A065261.P15799711129795668359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n + 1 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A065261.P15799711129795668359

namespace A065261

/-- `gcd(ceil((n+1)/2*∑[n]), ∑[n+1])` -/
def P15799711129795668359.Spec : Prop :=
  ∀ n, (P15799711129795668359.a n : ℤ) = A065261 (n + 1)

end A065261

/-! ## A065261.P16419599886010467232

`floor(a(n-4)+n/a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A065261.P16419599886010467232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  ⌊(a (n - 4) : ℚ) + (n : ℚ) / (a (n - 2) : ℚ)⌋

end

end A065261.P16419599886010467232

namespace A065261

/-- `floor(a(n-4)+n/a(n-2))` -/
def P16419599886010467232.Spec : Prop :=
  ∀ n, P16419599886010467232.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P2596971862589440102

`round((n+1)/A177002(n))`
-/

namespace A065261.P2596971862589440102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A177002 n : ℚ))

end

end A065261.P2596971862589440102

namespace A065261

/-- `round((n+1)/A177002(n))` -/
def P2596971862589440102.Spec : Prop :=
  ∀ n, P2596971862589440102.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P13026211151546210597

`round((n+1)/dr(A061393(n)))`
-/

namespace A065261.P13026211151546210597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (A061393 n) : ℚ))

end

end A065261.P13026211151546210597

namespace A065261

/-- `round((n+1)/dr(A061393(n)))` -/
def P13026211151546210597.Spec : Prop :=
  ∀ n, P13026211151546210597.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P16472683507033690152

`A026741(gcd(n, ∑[n]²)+1)`
-/

namespace A065261.P16472683507033690152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 1)

end

end A065261.P16472683507033690152

namespace A065261

/-- `A026741(gcd(n, ∑[n]²)+1)` -/
def P16472683507033690152.Spec : Prop :=
  ∀ n, P16472683507033690152.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P16306162251639083573

`A065262(n/(char[2*n]+1)+1)`
-/

namespace A065261.P16306162251639083573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (SequenceMachineLib.roundAway ((n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1)).toNat

end

end A065261.P16306162251639083573

namespace A065261

/-- `A065262(n/(char[2*n]+1)+1)` -/
def P16306162251639083573.Spec : Prop :=
  ∀ n, P16306162251639083573.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P1965581467524049413

`A026741(A283971(n)+1)`
-/

namespace A065261.P1965581467524049413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A283971 n + 1).toNat

end

end A065261.P1965581467524049413

namespace A065261

/-- `A026741(A283971(n)+1)` -/
def P1965581467524049413.Spec : Prop :=
  ∀ n, P1965581467524049413.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P8846260126711063166

`A026741(n/A236398(n+1)+1)`
-/

namespace A065261.P8846260126711063166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A236398 (n + 1) : ℚ) + 1)).toNat

end

end A065261.P8846260126711063166

namespace A065261

/-- `A026741(n/A236398(n+1)+1)` -/
def P8846260126711063166.Spec : Prop :=
  ∀ n, P8846260126711063166.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P2398621016450956186

`A062828(n+1)%A047307(n+1)`
-/

namespace A065261.P2398621016450956186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062828 (n + 1)) (A047307 (n + 1))

end

end A065261.P2398621016450956186

namespace A065261

/-- `A062828(n+1)%A047307(n+1)` -/
def P2398621016450956186.Spec : Prop :=
  ∀ n, P2398621016450956186.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P10823879978539521619

`A133092(n+1)%A047487(n+1)`
-/

namespace A065261.P10823879978539521619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133092 (n + 1)) (A047487 (n + 1))

end

end A065261.P10823879978539521619

namespace A065261

/-- `A133092(n+1)%A047487(n+1)` -/
def P10823879978539521619.Spec : Prop :=
  ∀ n, P10823879978539521619.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P2903081144556569304

`ceil((n+1)/gcd(A001504(n), A003485(n)))`
-/

namespace A065261.P2903081144556569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Int.gcd (A001504 n) (A003485 n) : ℚ)⌉

end

end A065261.P2903081144556569304

namespace A065261

/-- `ceil((n+1)/gcd(A001504(n), A003485(n)))` -/
def P2903081144556569304.Spec : Prop :=
  ∀ n, P2903081144556569304.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P16898682324196549001

`A165355(A026741(n))-A026741(n)`
-/

namespace A065261.P16898682324196549001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A026741 n).toNat - A026741 n

end

end A065261.P16898682324196549001

namespace A065261

/-- `A165355(A026741(n))-A026741(n)` -/
def P16898682324196549001.Spec : Prop :=
  ∀ n, P16898682324196549001.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P12545037673432375649

`A140201(n+1)/gcd(2*n, A140201(n+1))`
-/

namespace A065261.P12545037673432375649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140201 (n + 1) : ℚ) / (Int.gcd (2 * n : ℤ) (A140201 (n + 1)) : ℚ)

end

end A065261.P12545037673432375649

namespace A065261

/-- `A140201(n+1)/gcd(2*n, A140201(n+1))` -/
def P12545037673432375649.Spec : Prop :=
  ∀ n, P12545037673432375649.a n = (A065261 (n + 1) : ℚ)

end A065261

/-! ## A065261.P11024285257138771626

`n+2-A158416(A158416(n)+n)`
-/

namespace A065261.P11024285257138771626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A158416 (A158416 n + (n : ℤ)).toNat

end

end A065261.P11024285257138771626

namespace A065261

/-- `n+2-A158416(A158416(n)+n)` -/
def P11024285257138771626.Spec : Prop :=
  ∀ n, P11024285257138771626.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P8978339271993534168

`n+1-A142150(A142150(n)+1+n)`
-/

namespace A065261.P8978339271993534168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A142150 (A142150 n + 1 + (n : ℤ)).toNat

end

end A065261.P8978339271993534168

namespace A065261

/-- `n+1-A142150(A142150(n)+1+n)` -/
def P8978339271993534168.Spec : Prop :=
  ∀ n, P8978339271993534168.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P5682538465654860400

`A026741(A087620(2*A026741(n)))`
-/

namespace A065261.P5682538465654860400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A087620 (2 * A026741 n).toNat).toNat

end

end A065261.P5682538465654860400

namespace A065261

/-- `A026741(A087620(2*A026741(n)))` -/
def P5682538465654860400.Spec : Prop :=
  ∀ n, P5682538465654860400.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P13529584095547430322

`A302773(2*A026741(n))-A026741(n)`
-/

namespace A065261.P13529584095547430322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302773 (2 * A026741 n).toNat - A026741 n

end

end A065261.P13529584095547430322

namespace A065261

/-- `A302773(2*A026741(n))-A026741(n)` -/
def P13529584095547430322.Spec : Prop :=
  ∀ n, P13529584095547430322.a n = A065261 (n + 1)

end A065261

/-! ## A065261.P8067876621956169472

`A003602(A047411(n+1))`
-/

namespace A065261.P8067876621956169472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047411 (n + 1)).toNat

end

end A065261.P8067876621956169472

namespace A065261

/-- `A003602(A047411(n+1))` -/
def P8067876621956169472.Spec : Prop :=
  ∀ n, P8067876621956169472.a n = A065261 (n + 1)

end A065261

/-!
# A065262: The nonpositive side (-1, -2, -3, ...) of the site swap sequence A065261. The bisection of odd terms of A065261.

The programs for A065262, the canonical program `A065262.P12135470620216614774` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065262 has offset 1).

The definition of A065262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065262.P12135470620216614774

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065262

/-- `2*a(n-2)-a(n-4)` -/
def P12135470620216614774.Spec : Prop :=
  ∀ n, P12135470620216614774.a n = A065262 (n + 1)

theorem P12135470620216614774.correct : P12135470620216614774.Spec := by
  intro n
  simp only [A065262, Nat.add_sub_cancel]

end A065262

/-! ## A065262.P5604185868080574661

`∑[∑[ogf((1+x+3x^2)/(1+2x+x^2))]]`
-/

namespace A065262.P5604185868080574661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065262.P5604185868080574661

namespace A065262

/-- `∑[∑[ogf((1+x+3x^2)/(1+2x+x^2))]]` -/
def P5604185868080574661.Spec : Prop :=
  ∀ n, P5604185868080574661.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P1521119272950714453

`floor(n*2^(-1)^n)+1`
-/

namespace A065262.P1521119272950714453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((-1) ^ n : ℤ)⌋ + 1

end

end A065262.P1521119272950714453

namespace A065262

/-- `floor(n*2^(-1)^n)+1` -/
def P1521119272950714453.Spec : Prop :=
  ∀ n, P1521119272950714453.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P4882240511750268866

`ogf((1+x+3x^2)/(1-2x^2+x^4))`
-/

namespace A065262.P4882240511750268866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, 0, -2, 0, 1] n

end

end A065262.P4882240511750268866

namespace A065262

/-- `ogf((1+x+3x^2)/(1-2x^2+x^4))` -/
def P4882240511750268866.Spec : Prop :=
  ∀ n, P4882240511750268866.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P14362706936685764968

`ceil(or(1, n²)/a(n-1))` with `a(0)=1`
-/

namespace A065262.P14362706936685764968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Nat.lor 1 (n ^ 2) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A065262.P14362706936685764968

namespace A065262

/-- `ceil(or(1, n²)/a(n-1))` -/
def P14362706936685764968.Spec : Prop :=
  ∀ n, P14362706936685764968.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P9525298878687326628

`∑[gcd(2, n)²-a(n-1)]` with `a(0)=1`
-/

namespace A065262.P9525298878687326628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.gcd 2 n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065262.P9525298878687326628

namespace A065262

/-- `∑[gcd(2, n)²-a(n-1)]` -/
def P9525298878687326628.Spec : Prop :=
  ∀ n, P9525298878687326628.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P10899363729141353890

`∑[comp[or(2, n)]]/a(n-1)` with `a(0)=1`
-/

namespace A065262.P10899363729141353890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A065262.P10899363729141353890

namespace A065262

/-- `∑[comp[or(2, n)]]/a(n-1)` -/
def P10899363729141353890.Spec : Prop :=
  ∀ n, P10899363729141353890.a n = (A065262 (n + 1) : ℚ)

end A065262

/-! ## A065262.P17091076907209391946

`ceil((2*n+1)/4^and(1, n))`
-/

namespace A065262.P17091076907209391946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (4 ^ Nat.land 1 n : ℚ)⌉

end

end A065262.P17091076907209391946

namespace A065262

/-- `ceil((2*n+1)/4^and(1, n))` -/
def P17091076907209391946.Spec : Prop :=
  ∀ n, P17091076907209391946.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P18386417711141516236

`round((2*n+1)/4^and(1, n))`
-/

namespace A065262.P18386417711141516236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (4 ^ Nat.land 1 n : ℚ))

end

end A065262.P18386417711141516236

namespace A065262

/-- `round((2*n+1)/4^and(1, n))` -/
def P18386417711141516236.Spec : Prop :=
  ∀ n, P18386417711141516236.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P8253155707922015289

`ceil((2*n+1)/gcd(4, (n+1)²))`
-/

namespace A065262.P8253155707922015289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (Nat.gcd 4 ((n + 1) ^ 2) : ℚ)⌉

end

end A065262.P8253155707922015289

namespace A065262

/-- `ceil((2*n+1)/gcd(4, (n+1)²))` -/
def P8253155707922015289.Spec : Prop :=
  ∀ n, P8253155707922015289.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P3103949814633055851

`ceil((2*n+1)/(and(1, n)+1)²)`
-/

namespace A065262.P3103949814633055851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / ((Nat.land 1 n + 1) ^ 2 : ℚ)⌉

end

end A065262.P3103949814633055851

namespace A065262

/-- `ceil((2*n+1)/(and(1, n)+1)²)` -/
def P3103949814633055851.Spec : Prop :=
  ∀ n, P3103949814633055851.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P404346136852893485

`round((2*n+1)/(and(1, n)+1)²)`
-/

namespace A065262.P404346136852893485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / ((Nat.land 1 n + 1) ^ 2 : ℚ))

end

end A065262.P404346136852893485

namespace A065262

/-- `round((2*n+1)/(and(1, n)+1)²)` -/
def P404346136852893485.Spec : Prop :=
  ∀ n, P404346136852893485.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P10782781752535047133

`floor((∑[2*n]-1)/a(n-1))` with `a(0)=1`
-/

namespace A065262.P10782781752535047133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A065262.P10782781752535047133

namespace A065262

/-- `floor((∑[2*n]-1)/a(n-1))` -/
def P10782781752535047133.Spec : Prop :=
  ∀ n, P10782781752535047133.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P5887236135955143713

`∑[a(n-2)+3*(-1)^n]` with `a(0)=1, a(1)=0`
-/

namespace A065262.P5887236135955143713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 3 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065262.P5887236135955143713

namespace A065262

/-- `∑[a(n-2)+3*(-1)^n]` -/
def P5887236135955143713.Spec : Prop :=
  ∀ n, P5887236135955143713.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P6306868404890079349

`floor(n*(1/2+n))/a(n-1)` with `a(0)=1`
-/

namespace A065262.P6306868404890079349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌊(n : ℚ) * ((1 : ℚ) / 2 + (n : ℚ))⌋ : ℚ) / a (n - 1)

end

end A065262.P6306868404890079349

namespace A065262

/-- `floor(n*(1/2+n))/a(n-1)` -/
def P6306868404890079349.Spec : Prop :=
  ∀ n, P6306868404890079349.a n = (A065262 (n + 1) : ℚ)

end A065262

/-! ## A065262.P11526537290877289292

`ceil((2*n+1)/or(n+1, -2)²)`
-/

namespace A065262.P11526537290877289292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-2) ^ 2 : ℚ)⌉

end

end A065262.P11526537290877289292

namespace A065262

/-- `ceil((2*n+1)/or(n+1, -2)²)` -/
def P11526537290877289292.Spec : Prop :=
  ∀ n, P11526537290877289292.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P18426351675248314780

`round((2*n+1)/or(n+1, -2)²)`
-/

namespace A065262.P18426351675248314780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-2) ^ 2 : ℚ))

end

end A065262.P18426351675248314780

namespace A065262

/-- `round((2*n+1)/or(n+1, -2)²)` -/
def P18426351675248314780.Spec : Prop :=
  ∀ n, P18426351675248314780.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P11813846262066521619

`floor(a(n-2)+2^(n/a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A065262.P11813846262066521619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (2 : ℝ) ^ ((n : ℚ) / (a (n - 1) : ℚ) : ℝ)⌋

end

end A065262.P11813846262066521619

namespace A065262

/-- `floor(a(n-2)+2^(n/a(n-1)))` -/
def P11813846262066521619.Spec : Prop :=
  ∀ n, P11813846262066521619.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P1431035334033640570

`∑[1-A084056(n)]`
-/

namespace A065262.P1431035334033640570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065262.P1431035334033640570

namespace A065262

/-- `∑[1-A084056(n)]` -/
def P1431035334033640570.Spec : Prop :=
  ∀ n, P1431035334033640570.a n = A065262 (n + 1)

end A065262

/-! ## A065262.P13779757180930325916

`A065261(Δ[n²])`
-/

namespace A065262.P13779757180930325916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065262.P13779757180930325916

namespace A065262

/-- `A065261(Δ[n²])` -/
def P13779757180930325916.Spec : Prop :=
  ∀ n, P13779757180930325916.a n = A065262 (n + 1)

end A065262

/-!
# A065263: Infinite binary tree inspired permutation of N: 1 -> 3, 11ab..yz -> 11ab..yz1, 10ab..y0 -> 10ab..y, 10ab..y1 -> 11AB..Y0 (where 1AB..Y0 is the complement of 0ab..y1).

The programs for A065263, there is no canonical definition to state claims against.
-/

/-! ## A065263.P13850594520727555627

`A065266(n+1)+A065287(n+1)-A065290(n+1)`
-/

namespace A065263.P13850594520727555627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065266 (n + 1) + (A065287 (n + 1) - A065290 (n + 1))

end

end A065263.P13850594520727555627

/-! ## A065263.P17179166039501197691

`A054429(A065264(A054429(n+1)))`
-/

namespace A065263.P17179166039501197691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065264 (A054429 (n + 1)).toNat).toNat

end

end A065263.P17179166039501197691

/-! ## A065263.P12598969699697363415

`A059893(A065265(A059893(n+1)))`
-/

namespace A065263.P12598969699697363415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065265 (A059893 (n + 1)).toNat).toNat

end

end A065263.P12598969699697363415

/-! ## A065263.P5516336292689170973

`A059894(A065266(A059894(n+1)))`
-/

namespace A065263.P5516336292689170973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065266 (A059894 (n + 1)).toNat).toNat

end

end A065263.P5516336292689170973

/-! ## A065263.P8262525886107692300

`A065281(A065270(A065275(n+1)))`
-/

namespace A065263.P8262525886107692300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065281 (A065270 (A065275 (n + 1)).toNat).toNat

end

end A065263.P8262525886107692300

/-! ## A065263.P12616070516310499876

`A065287(A065264(A065287(n+1)))`
-/

namespace A065263.P12616070516310499876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065287 (A065264 (A065287 (n + 1)).toNat).toNat

end

end A065263.P12616070516310499876

/-! ## A065263.P5334863841579144542

`A065287(A065289(A065266(n+1)))`
-/

namespace A065263.P5334863841579144542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065287 (A065289 (A065266 (n + 1)).toNat).toNat

end

end A065263.P5334863841579144542

/-!
# A065264: Inverse permutation to A065263.

The programs for A065264, there is no canonical definition to state claims against.
-/

/-! ## A065264.P6465394658490336876

`A065265(n+1)+A065288(n+1)-A065289(n+1)`
-/

namespace A065264.P6465394658490336876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065265 (n + 1) + (A065288 (n + 1) - A065289 (n + 1))

end

end A065264.P6465394658490336876

/-! ## A065264.P11971119480875217597

`A065288(A065263(A065288(n+1)))`
-/

namespace A065264.P11971119480875217597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (A065263 (A065288 (n + 1)).toNat).toNat

end

end A065264.P11971119480875217597

/-! ## A065264.P11908886387616743486

`A059893(A065266(A059893(n+1)))`
-/

namespace A065264.P11908886387616743486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065266 (A059893 (n + 1)).toNat).toNat

end

end A065264.P11908886387616743486

/-! ## A065264.P8037697815389104081

`A065288(A065266(A065289(n+1)))`
-/

namespace A065264.P8037697815389104081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (A065266 (A065289 (n + 1)).toNat).toNat

end

end A065264.P8037697815389104081

/-! ## A065264.P10863380323402732769

`A054429(A065263(A054429(n+1)))`
-/

namespace A065264.P10863380323402732769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065263 (A054429 (n + 1)).toNat).toNat

end

end A065264.P10863380323402732769

/-! ## A065264.P325384415436615944

`A059894(A065265(A059894(n+1)))`
-/

namespace A065264.P325384415436615944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065265 (A059894 (n + 1)).toNat).toNat

end

end A065264.P325384415436615944

/-!
# A065265: A065263 conjugated with A059893, inverse of A065266.

The programs for A065265, there is no canonical definition to state claims against.
-/

/-! ## A065265.P15188179722403584936

`A059893(A065263(A059893(n+1)))`
-/

namespace A065265.P15188179722403584936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065263 (A059893 (n + 1)).toNat).toNat

end

end A065265.P15188179722403584936

/-! ## A065265.P9541675674984100586

`A065264(n+1)+A065289(n+1)-A065288(n+1)`
-/

namespace A065265.P9541675674984100586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (n + 1) + (A065289 (n + 1) - A065288 (n + 1))

end

end A065265.P9541675674984100586

/-! ## A065265.P14880376958295824140

`A065289(A065287(A065264(n+1)))`
-/

namespace A065265.P14880376958295824140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065289 (A065287 (A065264 (n + 1)).toNat).toNat

end

end A065265.P14880376958295824140

/-! ## A065265.P13579051028077590813

`A065289(A065263(A065288(n+1)))`
-/

namespace A065265.P13579051028077590813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065289 (A065263 (A065288 (n + 1)).toNat).toNat

end

end A065265.P13579051028077590813

/-! ## A065265.P8408683504304025973

`A054429(A065266(A054429(n+1)))`
-/

namespace A065265.P8408683504304025973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065266 (A054429 (n + 1)).toNat).toNat

end

end A065265.P8408683504304025973

/-! ## A065265.P5851967405067130568

`A059894(A065264(A059894(n+1)))`
-/

namespace A065265.P5851967405067130568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065264 (A059894 (n + 1)).toNat).toNat

end

end A065265.P5851967405067130568

/-! ## A065265.P377946673897028076

`A065289(A065266(A065289(n+1)))`
-/

namespace A065265.P377946673897028076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065289 (A065266 (A065289 (n + 1)).toNat).toNat

end

end A065265.P377946673897028076

/-!
# A065266: A065264 conjugated with A059893, inverse of A065265.

The programs for A065266, there is no canonical definition to state claims against.
-/

/-! ## A065266.P13365471736692811712

`A059893(A065264(A059893(n+1)))`
-/

namespace A065266.P13365471736692811712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065264 (A059893 (n + 1)).toNat).toNat

end

end A065266.P13365471736692811712

/-! ## A065266.P321095202624381025

`A065263(n+1)+A065290(n+1)-A065287(n+1)`
-/

namespace A065266.P321095202624381025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (n + 1) + (A065290 (n + 1) - A065287 (n + 1))

end

end A065266.P321095202624381025

/-! ## A065266.P5294133130863605104

`A065290(A065288(A065263(n+1)))`
-/

namespace A065266.P5294133130863605104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (A065288 (A065263 (n + 1)).toNat).toNat

end

end A065266.P5294133130863605104

/-! ## A065266.P14897413268532456615

`A065290(A065264(A065287(n+1)))`
-/

namespace A065266.P14897413268532456615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (A065264 (A065287 (n + 1)).toNat).toNat

end

end A065266.P14897413268532456615

/-! ## A065266.P11554105064799841364

`A065290(A059893(A065263(A059893(A065290(n+1)))))`
-/

namespace A065266.P11554105064799841364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (A059893 (A065263 (A059893 (A065290 (n + 1)).toNat).toNat).toNat).toNat

end

end A065266.P11554105064799841364

/-! ## A065266.P2499529776310012408

`A059894(A065263(A059894(n+1)))`
-/

namespace A065266.P2499529776310012408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065263 (A059894 (n + 1)).toNat).toNat

end

end A065266.P2499529776310012408

/-!
# A065267: The siteswap sequence (the deltas p[i]-i, i in ]-inf,+inf[, folded from Z to N, mapping 0->1, 1->2, -1->3, 2->4, -2->5, etc.) for A065266.

The programs for A065267, there is no canonical definition to state claims against.
-/

/-! ## A065267.P7064291165010514853

`A257628(A219766(n+1))+A065291(n+1)`
-/

namespace A065267.P7064291165010514853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A219766 (n + 1)).toNat + A065291 (n + 1)

end

end A065267.P7064291165010514853

/-!
# A065268: The bisection of odd terms (the <= 0 half of Z) of A065267.

The programs for A065268, there is no canonical definition to state claims against.
-/

/-! ## A065268.P12150325431305922197

`A014601(a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2`
-/

namespace A065268.P12150325431305922197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 2] fun n a =>
  A014601 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A065268.P12150325431305922197

/-! ## A065268.P12601964062313764265

`A180200(A063946(n)+A035327(n))`
-/

namespace A065268.P12601964062313764265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A063946 n + A035327 n).toNat

end

end A065268.P12601964062313764265

/-! ## A065268.P6394861081440218120

`A014682(A171781(n+1)-A006257(n))`
-/

namespace A065268.P6394861081440218120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A171781 (n + 1) - A006257 n).toNat

end

end A065268.P6394861081440218120

/-! ## A065268.P1183839223759155026

`A065274(A171781(n+1)-A006257(n))`
-/

namespace A065268.P1183839223759155026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065274 (A171781 (n + 1) - A006257 n).toNat

end

end A065268.P1183839223759155026

/-! ## A065268.P6430236218661496814

`A065267(xor(A006257(n), A171781(n+1)))`
-/

namespace A065268.P6430236218661496814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065267 (Int.xor (A006257 n) (A171781 (n + 1))).toNat

end

end A065268.P6430236218661496814

/-! ## A065268.P11796381391858094764

`A065274(A065273(A062383(n+1)+1)+n)`
-/

namespace A065268.P11796381391858094764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065274 (A065273 (A062383 (n + 1) + 1).toNat + (n : ℤ)).toNat

end

end A065268.P11796381391858094764

/-!
# A065269: Infinite binary tree inspired permutation of N: 1 -> 1, 11ab..yz -> 11ab..yz0, 10ab..y1 -> 10ab..y, 10ab..y0 -> 11AB..Y1 (where 1AB..Y1 is the complement of 0ab..y0).

The programs for A065269, there is no canonical definition to state claims against.
-/

/-! ## A065269.P10716711601563902796

`A059893(A065271(A059893(n+1)))`
-/

namespace A065269.P10716711601563902796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065271 (A059893 (n + 1)).toNat).toNat

end

end A065269.P10716711601563902796

/-! ## A065269.P2374628234688307615

`A054429(A065270(A054429(n+1)))`
-/

namespace A065269.P2374628234688307615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065270 (A054429 (n + 1)).toNat).toNat

end

end A065269.P2374628234688307615

/-! ## A065269.P2775501081603212249

`A059894(A065272(A059894(n+1)))`
-/

namespace A065269.P2775501081603212249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065272 (A059894 (n + 1)).toNat).toNat

end

end A065269.P2775501081603212249

/-! ## A065269.P3542056765441420091

`A065275(A065264(A065281(n+1)))`
-/

namespace A065269.P3542056765441420091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065275 (A065264 (A065281 (n + 1)).toNat).toNat

end

end A065269.P3542056765441420091

/-!
# A065270: Inverse permutation to A065269.

The programs for A065270, there is no canonical definition to state claims against.
-/

/-! ## A065270.P12556011319227460823

`A054429(A065269(A054429(n+1)))`
-/

namespace A065270.P12556011319227460823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065269 (A054429 (n + 1)).toNat).toNat

end

end A065270.P12556011319227460823

/-! ## A065270.P15309456094531816450

`A059893(A065272(A059893(n+1)))`
-/

namespace A065270.P15309456094531816450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065272 (A059893 (n + 1)).toNat).toNat

end

end A065270.P15309456094531816450

/-! ## A065270.P16438211122290853283

`A059894(A065271(A059894(n+1)))`
-/

namespace A065270.P16438211122290853283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065271 (A059894 (n + 1)).toNat).toNat

end

end A065270.P16438211122290853283

/-!
# A065271: A065269 conjugated with A059893, inverse of A065272.

The programs for A065271, there is no canonical definition to state claims against.
-/

/-! ## A065271.P17436388131633469304

`A059893(A065269(A059893(n+1)))`
-/

namespace A065271.P17436388131633469304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065269 (A059893 (n + 1)).toNat).toNat

end

end A065271.P17436388131633469304

/-! ## A065271.P17716883429687205453

`A054429(A065272(A054429(n+1)))`
-/

namespace A065271.P17716883429687205453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065272 (A054429 (n + 1)).toNat).toNat

end

end A065271.P17716883429687205453

/-!
# A065272: A065270 conjugated with A059893, inverse of A065271.

The programs for A065272, there is no canonical definition to state claims against.
-/

/-! ## A065272.P17652855651340273253

`A059893(A065270(A059893(n+1)))`
-/

namespace A065272.P17652855651340273253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065270 (A059893 (n + 1)).toNat).toNat

end

end A065272.P17652855651340273253

/-! ## A065272.P6894818776820769009

`A054429(A065271(A054429(n+1)))`
-/

namespace A065272.P6894818776820769009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065271 (A054429 (n + 1)).toNat).toNat

end

end A065272.P6894818776820769009

/-!
# A065274: The bisection of odd terms (the <= 0 half of Z) of A065273.

The programs for A065274, there is no canonical definition to state claims against.
-/

/-! ## A065274.P119251232328716226

`A065273(A005408(and(n, A073138(n))))`
-/

namespace A065274.P119251232328716226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 (A005408 (Int.land (n : ℤ) (A073138 n)).toNat).toNat

end

end A065274.P119251232328716226

/-! ## A065274.P13104531101565835320

`A065273(2*(n-A025438(n))+1)`
-/

namespace A065274.P13104531101565835320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 (2 * ((n : ℤ) - A025438 n) + 1).toNat

end

end A065274.P13104531101565835320

/-! ## A065274.P1342393193057668943

`A065273(A065271(A065270(A059893(2*n+1))))`
-/

namespace A065274.P1342393193057668943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 (A065271 (A065270 (A059893 (2 * n + 1)).toNat).toNat).toNat

end

end A065274.P1342393193057668943

/-! ## A065274.P10865743288748492588

`A065273(A065271(A059893(A065272(2*n+1))))`
-/

namespace A065274.P10865743288748492588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 (A065271 (A059893 (A065272 (2 * n + 1)).toNat).toNat).toNat

end

end A065274.P10865743288748492588

/-! ## A065274.P13131891990225023395

`A065273(Δ[n²])`
-/

namespace A065274.P13131891990225023395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065274.P13131891990225023395

/-!
# A065275: Infinite binary tree inspired permutation of N: 1 -> 3, 11ab..yz -> 11ab..yz0, 10ab..y0 -> 10ab..y, 10ab..y1 -> 11ab..y1.

The programs for A065275, there is no canonical definition to state claims against.
-/

/-! ## A065275.P326400541570438388

`xor(A065287(n+1)%A000265(n+1), A065263(n+1))`
-/

namespace A065275.P326400541570438388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A065287 (n + 1)) (A000265 (n + 1))) (A065263 (n + 1))

end

end A065275.P326400541570438388

/-! ## A065275.P11014006226124125543

`A059893(A065277(A059893(n+1)))`
-/

namespace A065275.P11014006226124125543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065277 (A059893 (n + 1)).toNat).toNat

end

end A065275.P11014006226124125543

/-! ## A065275.P2810070363045045950

`A065269(A065282(A065263(n+1)))`
-/

namespace A065275.P2810070363045045950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065269 (A065282 (A065263 (n + 1)).toNat).toNat

end

end A065275.P2810070363045045950

/-! ## A065275.P8414153143397503415

`A065287(A065276(A065287(n+1)))`
-/

namespace A065275.P8414153143397503415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065287 (A065276 (A065287 (n + 1)).toNat).toNat

end

end A065275.P8414153143397503415

/-! ## A065275.P7361681828269536058

`A065263(A065287(A065270(A065287(A065269(n+1)))))`
-/

namespace A065275.P7361681828269536058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (A065287 (A065270 (A065287 (A065269 (n + 1)).toNat).toNat).toNat).toNat

end

end A065275.P7361681828269536058

/-!
# A065276: The inverse permutation to A065275.

The programs for A065276, there is no canonical definition to state claims against.
-/

/-! ## A065276.P7186510576971434691

`A065288(A065275(A065288(n+1)))`
-/

namespace A065276.P7186510576971434691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (A065275 (A065288 (n + 1)).toNat).toNat

end

end A065276.P7186510576971434691

/-! ## A065276.P3191766084537536255

`A059893(A065278(A059893(n+1)))`
-/

namespace A065276.P3191766084537536255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065278 (A059893 (n + 1)).toNat).toNat

end

end A065276.P3191766084537536255

/-! ## A065276.P4526107600042511304

`A065287(A065282(A065275(A065287(A065282(n+1)))))`
-/

namespace A065276.P4526107600042511304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065287 (A065282 (A065275 (A065287 (A065282 (n + 1)).toNat).toNat).toNat).toNat

end

end A065276.P4526107600042511304

/-!
# A065277: A065275 conjugated with A059893, inverse of A065278.

The programs for A065277, there is no canonical definition to state claims against.
-/

/-! ## A065277.P4561934809036341378

`A059893(A065275(A059893(n+1)))`
-/

namespace A065277.P4561934809036341378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065275 (A059893 (n + 1)).toNat).toNat

end

end A065277.P4561934809036341378

/-! ## A065277.P16558904407191285734

`A065289(xor(A057427(n), A065283(n+1)))`
-/

namespace A065277.P16558904407191285734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065289 (Int.xor (A057427 n) (A065283 (n + 1))).toNat

end

end A065277.P16558904407191285734

/-!
# A065278: A065276 conjugated with A059893, inverse of A065277.

The programs for A065278, there is no canonical definition to state claims against.
-/

/-! ## A065278.P11097781586631400230

`A059893(A065276(A059893(n+1)))`
-/

namespace A065278.P11097781586631400230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065276 (A059893 (n + 1)).toNat).toNat

end

end A065278.P11097781586631400230

/-! ## A065278.P14542129023762002675

`A065290(A065277(A065290(n+1)))`
-/

namespace A065278.P14542129023762002675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (A065277 (A065290 (n + 1)).toNat).toNat

end

end A065278.P14542129023762002675

/-!
# A065279: The siteswap sequence (the deltas p[i]-i, i in ]-inf,+inf[, folded from Z to N, mapping 0->1, 1->2, -1->3, 2->4, -2->5, etc.) for A065278.

The programs for A065279, there is no canonical definition to state claims against.
-/

/-! ## A065279.P5947939040080568559

`gcd(∑{d}[A262688(n), #], A000010(n+1))`
-/

namespace A065279.P5947939040080568559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A000010 (n + 1))

end

end A065279.P5947939040080568559

/-! ## A065279.P16842804152132271604

`gcd(A000005(A002712(n)), A258210(n))`
-/

namespace A065279.P16842804152132271604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A002712 n).toNat) (A258210 n)

end

end A065279.P16842804152132271604

/-! ## A065279.P75769482760809650

`gcd(A000010(n+1), A114434(A005316(n)))`
-/

namespace A065279.P75769482760809650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A114434 (A005316 n).toNat)

end

end A065279.P75769482760809650

/-! ## A065279.P11216745540891116241

`gcd(A000203(A262033(n)), A293484(n+1))`
-/

namespace A065279.P11216745540891116241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A262033 n).toNat) (A293484 (n + 1))

end

end A065279.P11216745540891116241

/-! ## A065279.P1408559120217889735

`gcd(A256739(n+1), A256739(A072346(n)))`
-/

namespace A065279.P1408559120217889735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256739 (n + 1)) (A256739 (A072346 n).toNat)

end

end A065279.P1408559120217889735

/-!
# A065280: The bisection of odd terms (the <= 0 half of Z) of A065279.

The programs for A065280, there is no canonical definition to state claims against.
-/

/-! ## A065280.P10326692608637307531

`A065279(A065275(2*n+1)-(2*n+1))`
-/

namespace A065280.P10326692608637307531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (A065275 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A065280.P10326692608637307531

/-! ## A065280.P3674848812391463512

`A065279(A153152(A065278(2*n+1)))`
-/

namespace A065280.P3674848812391463512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (A153152 (A065278 (2 * n + 1)).toNat).toNat

end

end A065280.P3674848812391463512

/-! ## A065280.P16928210069959058828

`A065279(A065277(A153151(2*n+1)))`
-/

namespace A065280.P16928210069959058828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (A065277 (A153151 (2 * n + 1)).toNat).toNat

end

end A065280.P16928210069959058828

/-! ## A065280.P7257499552024225329

`A065279(xor(2*n, A161618(n+1)))`
-/

namespace A065280.P7257499552024225329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (Int.xor (2 * n : ℤ) (A161618 (n + 1))).toNat

end

end A065280.P7257499552024225329

/-! ## A065280.P7761358836909783434

`A065279(and(-A161618(n+1), A005408(n)))`
-/

namespace A065280.P7761358836909783434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (Int.land (-A161618 (n + 1)) (A005408 n)).toNat

end

end A065280.P7761358836909783434

/-!
# A065281: Infinite binary tree inspired permutation of N: 1 -> 1, 11ab..yz -> 11ab..yz1, 10ab..y1 -> 10ab..y, 10ab..y0 -> 11ab..y0.

The programs for A065281, there is no canonical definition to state claims against.
-/

/-! ## A065281.P2830053963626478624

`A059893(A065283(A059893(n+1)))`
-/

namespace A065281.P2830053963626478624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065283 (A059893 (n + 1)).toNat).toNat

end

end A065281.P2830053963626478624

/-! ## A065281.P10853282925057313588

`A065263(A065276(A065269(n+1)))`
-/

namespace A065281.P10853282925057313588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (A065276 (A065269 (n + 1)).toNat).toNat

end

end A065281.P10853282925057313588

/-! ## A065281.P9649812584810481542

`A065287(A065282(A065287(n+1)))`
-/

namespace A065281.P9649812584810481542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065287 (A065282 (A065287 (n + 1)).toNat).toNat

end

end A065281.P9649812584810481542

/-!
# A065282: Inverse permutation to A065281.

The programs for A065282, there is no canonical definition to state claims against.
-/

/-! ## A065282.P14359363311275448715

`A059893(A065284(A059893(n+1)))`
-/

namespace A065282.P14359363311275448715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065284 (A059893 (n + 1)).toNat).toNat

end

end A065282.P14359363311275448715

/-! ## A065282.P11023786411569768422

`A065288(A065281(A065288(n+1)))`
-/

namespace A065282.P11023786411569768422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (A065281 (A065288 (n + 1)).toNat).toNat

end

end A065282.P11023786411569768422

/-! ## A065282.P5399361266278870876

`A065276(A065287(A065281(A065276(A065287(n+1)))))`
-/

namespace A065282.P5399361266278870876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (A065287 (A065281 (A065276 (A065287 (n + 1)).toNat).toNat).toNat).toNat

end

end A065282.P5399361266278870876

/-!
# A065283: A065281 conjugated with A059893, inverse of A065284.

The programs for A065283, there is no canonical definition to state claims against.
-/

/-! ## A065283.P10570869573522695673

`A059893(A065281(A059893(n+1)))`
-/

namespace A065283.P10570869573522695673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065281 (A059893 (n + 1)).toNat).toNat

end

end A065283.P10570869573522695673

/-! ## A065283.P8549858025766379699

`xor(A057427(n), A065290(A065277(n+1)))`
-/

namespace A065283.P8549858025766379699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A065290 (A065277 (n + 1)).toNat)

end

end A065283.P8549858025766379699

/-! ## A065283.P11086528179606968340

`A065277(xor(1-char[1], A065289(n+1)))`
-/

namespace A065283.P11086528179606968340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065277 (Int.xor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A065289 (n + 1))).toNat

end

end A065283.P11086528179606968340

/-! ## A065283.P16737487232798616934

`xor(A057427(n), A065278(A065289(n+1)))`
-/

namespace A065283.P16737487232798616934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A065278 (A065289 (n + 1)).toNat)

end

end A065283.P16737487232798616934

/-!
# A065284: A065282 conjugated with A059893, inverse of A065283.

The programs for A065284, there is no canonical definition to state claims against.
-/

/-! ## A065284.P11461248534385872767

`A059893(A065282(A059893(n+1)))`
-/

namespace A065284.P11461248534385872767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065282 (A059893 (n + 1)).toNat).toNat

end

end A065284.P11461248534385872767

/-! ## A065284.P13296318282956837904

`A065290(A059893(A065281(A059893(A065290(n+1)))))`
-/

namespace A065284.P13296318282956837904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (A059893 (A065281 (A059893 (A065290 (n + 1)).toNat).toNat).toNat).toNat

end

end A065284.P13296318282956837904

/-!
# A065286: The bisection of odd terms (the <= 0 half of Z) of A065285.

The programs for A065286, there is no canonical definition to state claims against.
-/

/-! ## A065286.P413678285471922228

`(2*n)%A063946(A004277(n))`
-/

namespace A065286.P413678285471922228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A063946 (A004277 n).toNat)

end

end A065286.P413678285471922228

/-! ## A065286.P1568019072267937610

`2*(A063946(n)-A352228(n+1))`
-/

namespace A065286.P1568019072267937610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063946 n - A352228 (n + 1))

end

end A065286.P1568019072267937610

/-! ## A065286.P7333808420767577112

`(n+n)%A123108(A063946(4*n))`
-/

namespace A065286.P7333808420767577112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + n : ℤ) (A123108 (A063946 (4 * n)).toNat)

end

end A065286.P7333808420767577112

/-! ## A065286.P15010360541843182215

`A004277(n)%A153141(A004277(n))`
-/

namespace A065286.P15010360541843182215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n) (A153141 (A004277 n).toNat)

end

end A065286.P15010360541843182215

/-! ## A065286.P5407844424878912204

`A005843(n)%A154442(A004277(n))`
-/

namespace A065286.P5407844424878912204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (A154442 (A004277 n).toNat)

end

end A065286.P5407844424878912204

/-! ## A065286.P14023277007868872132

`A005843(A063946(n)-A352228(n+1))`
-/

namespace A065286.P14023277007868872132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063946 n - A352228 (n + 1)).toNat

end

end A065286.P14023277007868872132

/-! ## A065286.P6981032368081405435

`A008574(n)%A063946(A008574(n))/2`
-/

namespace A065286.P6981032368081405435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A008574 n) (A063946 (A008574 n).toNat) : ℚ) / 2

end

end A065286.P6981032368081405435

/-! ## A065286.P11015977754428788984

`Δ[A002061(n)]%A153141(A092533(4*n))`
-/

namespace A065286.P11015977754428788984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A153141 (A092533 (4 * n)).toNat)

end

end A065286.P11015977754428788984

/-! ## A065286.P8461001034976044492

`record[A014681(n)]%A063946(A004275(n+1))`
-/

namespace A065286.P8461001034976044492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A063946 (A004275 (n + 1)).toNat)

end

end A065286.P8461001034976044492

/-! ## A065286.P17248458656338588822

`record[A153733(n)]%A063946(A004275(n+1))`
-/

namespace A065286.P17248458656338588822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A063946 (A004275 (n + 1)).toNat)

end

end A065286.P17248458656338588822

/-!
# A065287: Infinite binary tree inspired permutation of N: 1 -> 3, 11ab..yz -> 11ab..yz1, 10ab..y0 -> 10ab..y, 10ab..y1 -> 11ab..y0.

The programs for A065287, there is no canonical definition to state claims against.
-/

/-! ## A065287.P10923299936583222481

`A065263(n+1)+A065290(n+1)-A065266(n+1)`
-/

namespace A065287.P10923299936583222481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (n + 1) + (A065290 (n + 1) - A065266 (n + 1))

end

end A065287.P10923299936583222481

/-! ## A065287.P9871051977728001849

`A054429(A065288(A054429(n+1)))`
-/

namespace A065287.P9871051977728001849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065288 (A054429 (n + 1)).toNat).toNat

end

end A065287.P9871051977728001849

/-! ## A065287.P1807217325148539648

`A059893(A065289(A059893(n+1)))`
-/

namespace A065287.P1807217325148539648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065289 (A059893 (n + 1)).toNat).toNat

end

end A065287.P1807217325148539648

/-! ## A065287.P6564818162212393736

`A065263(A065288(A065263(n+1)))`
-/

namespace A065287.P6564818162212393736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (A065288 (A065263 (n + 1)).toNat).toNat

end

end A065287.P6564818162212393736

/-! ## A065287.P2381049283565981455

`A065275(A065288(A065275(n+1)))`
-/

namespace A065287.P2381049283565981455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065275 (A065288 (A065275 (n + 1)).toNat).toNat

end

end A065287.P2381049283565981455

/-! ## A065287.P3659588255450948470

`A065281(A065288(A065281(n+1)))`
-/

namespace A065287.P3659588255450948470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065281 (A065288 (A065281 (n + 1)).toNat).toNat

end

end A065287.P3659588255450948470

/-! ## A065287.P408794515245711241

`A065263(A059893(A065263(A059893(A065290(n+1)))))`
-/

namespace A065287.P408794515245711241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065263 (A059893 (A065263 (A059893 (A065290 (n + 1)).toNat).toNat).toNat).toNat

end

end A065287.P408794515245711241

/-!
# A065288: Inverse permutation to A065287.

The programs for A065288, there is no canonical definition to state claims against.
-/

/-! ## A065288.P9986744336269350754

`A065264(n+1)+A065289(n+1)-A065265(n+1)`
-/

namespace A065288.P9986744336269350754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (n + 1) + (A065289 (n + 1) - A065265 (n + 1))

end

end A065288.P9986744336269350754

/-! ## A065288.P10882817220281576579

`A065264(A065287(A065264(n+1)))`
-/

namespace A065288.P10882817220281576579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (A065287 (A065264 (n + 1)).toNat).toNat

end

end A065288.P10882817220281576579

/-! ## A065288.P13120079606148808934

`A065276(A065287(A065276(n+1)))`
-/

namespace A065288.P13120079606148808934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (A065287 (A065276 (n + 1)).toNat).toNat

end

end A065288.P13120079606148808934

/-! ## A065288.P11942433444924051758

`A059893(A065290(A059893(n+1)))`
-/

namespace A065288.P11942433444924051758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065290 (A059893 (n + 1)).toNat).toNat

end

end A065288.P11942433444924051758

/-! ## A065288.P9314770447941647723

`A059893(A065266(A059893(A065266(A065289(n+1)))))`
-/

namespace A065288.P9314770447941647723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065266 (A059893 (A065266 (A065289 (n + 1)).toNat).toNat).toNat).toNat

end

end A065288.P9314770447941647723

/-! ## A065288.P9250706350934947702

`A054429(A065287(A054429(n+1)))`
-/

namespace A065288.P9250706350934947702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065287 (A054429 (n + 1)).toNat).toNat

end

end A065288.P9250706350934947702

/-! ## A065288.P12567312971233071500

`A065282(A065287(A065282(n+1)))`
-/

namespace A065288.P12567312971233071500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065282 (A065287 (A065282 (n + 1)).toNat).toNat

end

end A065288.P12567312971233071500

/-!
# A065289: A065287 conjugated with A059893, inverse of A065290.

The programs for A065289, there is no canonical definition to state claims against.
-/

/-! ## A065289.P7423816619735422105

`A059893(A065287(A059893(n+1)))`
-/

namespace A065289.P7423816619735422105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065287 (A059893 (n + 1)).toNat).toNat

end

end A065289.P7423816619735422105

/-! ## A065289.P1470119966461988845

`A065265(n+1)+A065288(n+1)-A065264(n+1)`
-/

namespace A065289.P1470119966461988845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065265 (n + 1) + (A065288 (n + 1) - A065264 (n + 1))

end

end A065289.P1470119966461988845

/-! ## A065289.P17422925089388328602

`A065265(A065287(A065264(n+1)))`
-/

namespace A065289.P17422925089388328602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065265 (A065287 (A065264 (n + 1)).toNat).toNat

end

end A065289.P17422925089388328602

/-! ## A065289.P14776178873575235226

`A054429(A065290(A054429(n+1)))`
-/

namespace A065289.P14776178873575235226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065290 (A054429 (n + 1)).toNat).toNat

end

end A065289.P14776178873575235226

/-! ## A065289.P9784406194068633777

`A059893(A065263(A059893(A065263(A065288(n+1)))))`
-/

namespace A065289.P9784406194068633777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065263 (A059893 (A065263 (A065288 (n + 1)).toNat).toNat).toNat).toNat

end

end A065289.P9784406194068633777

/-!
# A065290: A065288 conjugated with A059893, inverse of A065289.

The programs for A065290, there is no canonical definition to state claims against.
-/

/-! ## A065290.P2990186087998414228

`A059893(A065288(A059893(n+1)))`
-/

namespace A065290.P2990186087998414228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065288 (A059893 (n + 1)).toNat).toNat

end

end A065290.P2990186087998414228

/-! ## A065290.P1198557325232683247

`A065266(n+1)+A065287(n+1)-A065263(n+1)`
-/

namespace A065290.P1198557325232683247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065266 (n + 1) + (A065287 (n + 1) - A065263 (n + 1))

end

end A065290.P1198557325232683247

/-! ## A065290.P4387764897692509683

`A065266(A065264(A065287(n+1)))`
-/

namespace A065290.P4387764897692509683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065266 (A065264 (A065287 (n + 1)).toNat).toNat

end

end A065290.P4387764897692509683

/-! ## A065290.P2805164323272339469

`A065266(A065289(A065266(n+1)))`
-/

namespace A065290.P2805164323272339469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065266 (A065289 (A065266 (n + 1)).toNat).toNat

end

end A065290.P2805164323272339469

/-! ## A065290.P13042781848234306540

`A059894(A065287(A059894(n+1)))`
-/

namespace A065290.P13042781848234306540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065287 (A059894 (n + 1)).toNat).toNat

end

end A065290.P13042781848234306540

/-! ## A065290.P507653167282566241

`A065284(A059893(A065287(A059893(A065284(n+1)))))`
-/

namespace A065290.P507653167282566241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065284 (A059893 (A065287 (A059893 (A065284 (n + 1)).toNat).toNat).toNat).toNat

end

end A065290.P507653167282566241

/-!
# A065291: The siteswap sequence (the deltas p[i]-i, i in ]-inf,+inf[, folded from Z to N, mapping 0->1, 1->2, -1->3, 2->4, -2->5, etc.) for A065290.

The programs for A065291, there is no canonical definition to state claims against.
-/

/-! ## A065291.P6060145033920914974

`A065267(n+1)-A257628(A219766(n+1))`
-/

namespace A065291.P6060145033920914974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065267 (n + 1) - A257628 (A219766 (n + 1)).toNat

end

end A065291.P6060145033920914974

/-!
# A065292: The bisection of odd terms (the <= 0 half of Z) of A065291.

The programs for A065292, there is no canonical definition to state claims against.
-/

/-! ## A065292.P16052714173974214825

`A065291(Δ[n²])`
-/

namespace A065292.P16052714173974214825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065292.P16052714173974214825

/-! ## A065292.P8599918665644389025

`A065291(2*n+1)%98`
-/

namespace A065292.P8599918665644389025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065291 (2 * n + 1)) 98

end

end A065292.P8599918665644389025

/-! ## A065292.P5021544205716493694

`A000027(A065291(2*n+1))`
-/

namespace A065292.P5021544205716493694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A065291 (2 * n + 1)).toNat

end

end A065292.P5021544205716493694

/-! ## A065292.P9309225849042671933

`A065261(2*A065291(2*n+1))`
-/

namespace A065292.P9309225849042671933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (2 * A065291 (2 * n + 1)).toNat

end

end A065292.P9309225849042671933

/-!
# A065293: Number of values of s, 0 <= s <= n-1, such that 2^s mod n = s.

The programs for A065293, there is no canonical definition to state claims against.
-/

/-! ## A065293.P17740660332563313198

`A355745(A241835(2*n+5)-A228431(n+1))`
-/

namespace A065293.P17740660332563313198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A241835 (2 * n + 5) - A228431 (n + 1)).toNat

end

end A065293.P17740660332563313198

/-! ## A065293.P2242292220095332839

`A010060(∑[xor(2, (2*(n+2)+2)²-n)])`
-/

namespace A065293.P2242292220095332839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((2 * (n + 2) + 2) ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065293.P2242292220095332839

/-! ## A065293.P6134018806530719802

`A093879(807+Δ[floor((2*n)²/(2*n+1))^3]+n²)`
-/

namespace A065293.P6134018806530719802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (807 + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ))).toNat

end

end A065293.P6134018806530719802

/-! ## A065293.P1516837748910915708

`A323096(A354268(n))`
-/

namespace A065293.P1516837748910915708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323096 (A354268 n).toNat

end

end A065293.P1516837748910915708

/-! ## A065293.P4767876283988789614

`A144599(A109561(n+1))`
-/

namespace A065293.P4767876283988789614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144599 (A109561 (n + 1)).toNat

end

end A065293.P4767876283988789614

/-!
# A065294: Values of k such that A065293(k) = 0.

The programs for A065294, there is no canonical definition to state claims against.
-/

/-! ## A065294.P4195952637342816301

`eq[0, A065293(n+1)]+1`
-/

namespace A065294.P4195952637342816301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065293 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065294.P4195952637342816301

/-! ## A065294.P12829922747535374620

`record[n%A072872(n+2)+2]`
-/

namespace A065294.P12829922747535374620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A072872 (n + 2)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065294.P12829922747535374620

/-! ## A065294.P5161946306007348096

`eq[0, A065293(A000007(n)+n)]`
-/

namespace A065294.P5161946306007348096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065293 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065294.P5161946306007348096

/-! ## A065294.P17484062658425471467

`eq[0, A065293(A123108(2*n))]`
-/

namespace A065294.P17484062658425471467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065293 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065294.P17484062658425471467

/-! ## A065294.P239649915593504781

`lt[n, A135359(n+1)]+1`
-/

namespace A065294.P239649915593504781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065294.P239649915593504781

/-! ## A065294.P17224664867925102110

`record[(n+1)%A135359(n+2)+1]`
-/

namespace A065294.P17224664867925102110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A135359 (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065294.P17224664867925102110

/-!
# A065295: Number of values of s, 0 < s <= n-1, such that s^s == s (mod n).

The programs for A065295, there is no canonical definition to state claims against.
-/

/-! ## A065295.P12954320407336459205

`A233521(n+1)-A016365(A085544(n+1))`
-/

namespace A065295.P12954320407336459205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233521 (n + 1) - A016365 (A085544 (n + 1)).toNat

end

end A065295.P12954320407336459205

/-! ## A065295.P7600381445796752758

`A233521(n+1)-A016365(A154789(n+1))²`
-/

namespace A065295.P7600381445796752758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233521 (n + 1) - A016365 (A154789 (n + 1)).toNat ^ 2

end

end A065295.P7600381445796752758

/-! ## A065295.P8573454988860283418

`A233521(n+1)-A016365(A154789(n+1)-A016365(n))`
-/

namespace A065295.P8573454988860283418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233521 (n + 1) - A016365 (A154789 (n + 1) - A016365 n).toNat

end

end A065295.P8573454988860283418

/-! ## A065295.P12772061433007304240

`A088043(n+1)-A072491(A000079(n))`
-/

namespace A065295.P12772061433007304240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088043 (n + 1) - A072491 (A000079 n).toNat

end

end A065295.P12772061433007304240

/-! ## A065295.P9898334878652690881

`A046053(n+1)-A091447(A001678(n))`
-/

namespace A065295.P9898334878652690881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1) - A091447 (A001678 n).toNat

end

end A065295.P9898334878652690881

/-!
# A065296: Values of n such that A065295(n) = 1.

The programs for A065296, there is no canonical definition to state claims against.
-/

/-! ## A065296.P18142226026415171843

`p?[A000040(n+1)*A233519(n+1)]`
-/

namespace A065296.P18142226026415171843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A233519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P18142226026415171843

/-! ## A065296.P212889471719241963

`p?[A008578(n+2)*A233519(n+1)]`
-/

namespace A065296.P212889471719241963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A233519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P212889471719241963

/-! ## A065296.P6482853475080433219

`eq[1, A065295(n+1)]+1`
-/

namespace A065296.P6482853475080433219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065296.P6482853475080433219

/-! ## A065296.P15574704134392251636

`p?[A001414(n+1)*A065295(n+1)]`
-/

namespace A065296.P15574704134392251636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A065295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P15574704134392251636

/-! ## A065296.P8253785826705888877

`p?[A033677(n+1)*A065295(n+1)]`
-/

namespace A065296.P8253785826705888877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A065295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P8253785826705888877

/-! ## A065296.P8455637945536749896

`p?[A065295(n+1)*A223491(n+1)]`
-/

namespace A065296.P8455637945536749896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (n + 1) * A223491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P8455637945536749896

/-! ## A065296.P17362994852533359755

`record[(2-A065295(n+1))*A006530(n+1)]`
-/

namespace A065296.P17362994852533359755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A065295 (n + 1)) * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065296.P17362994852533359755

/-! ## A065296.P990506949388512719

`record[(2-A065295(n+1))*A014963(n+1)]`
-/

namespace A065296.P990506949388512719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A065295 (n + 1)) * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065296.P990506949388512719

/-! ## A065296.P10478815405709108227

`record[(2-A065295(n+1))*A020639(n+1)]`
-/

namespace A065296.P10478815405709108227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A065295 (n + 1)) * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065296.P10478815405709108227

/-! ## A065296.P1489438578139978348

`p?[A015919(n+1)*A065295(A015919(n+1))]`
-/

namespace A065296.P1489438578139978348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) * A065295 (A015919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065296.P1489438578139978348

/-!
# A065297: a(n+1) is the smallest number > a(n) such that the digits of a(n)^2 are all (with multiplicity) properly contained in the digits of a(n+1)^2, with a(0)=1.

The programs for A065297, there is no canonical definition to state claims against.
-/

/-! ## A065297.P2439245986546531023

`sqrt(A067711(n))`
-/

namespace A065297.P2439245986546531023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067711 n : ℝ)

end

end A065297.P2439245986546531023

/-! ## A065297.P13597899874137450745

`root(A067711(n), A001316(A001316(n)))`
-/

namespace A065297.P13597899874137450745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067711 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A065297.P13597899874137450745

/-! ## A065297.P9438373063853704449

`root(A067711(n), A133265(A133265(n)))`
-/

namespace A065297.P9438373063853704449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067711 n : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A065297.P9438373063853704449

/-!
# A065298: a(n+1) is the smallest number > a(n) such that the digits of a(n)^2 are all (with multiplicity) properly contained in the digits of a(n+1)^2, with a(0)=2.

The programs for A065298, there is no canonical definition to state claims against.
-/

/-! ## A065298.P14509032400706280266

`sqrt(A067714(n))`
-/

namespace A065298.P14509032400706280266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067714 n : ℝ)

end

end A065298.P14509032400706280266

/-! ## A065298.P18371034898854790599

`root(A067714(n), A001316(A001316(n)))`
-/

namespace A065298.P18371034898854790599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067714 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A065298.P18371034898854790599

/-! ## A065298.P2042813797273136179

`root(A067714(n), A133265(A133265(n)))`
-/

namespace A065298.P2042813797273136179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067714 n : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A065298.P2042813797273136179

/-!
# A065299: Numbers k such that sigma(k)*phi(k) is squarefree.

The programs for A065299, there is no canonical definition to state claims against.
-/

/-! ## A065299.P130438374996699968

`∑[A276881(A042819(n))]`
-/

namespace A065299.P130438374996699968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (A042819 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065299.P130438374996699968

/-! ## A065299.P18362700546647205338

`A262087(∑[A256663(n)!])`
-/

namespace A065299.P18362700546647205338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A256663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065299.P18362700546647205338

