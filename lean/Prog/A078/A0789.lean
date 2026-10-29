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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A078900: Generalized Fermat numbers of the form (k+1)^2^m + k^2^m, with m>0.

The programs for A078900, there is no canonical definition to state claims against.
-/

/-! ## A078900.P2370057025728195083

`∪[A078901(n+1), A099776(n+1)]`
-/

namespace A078900.P2370057025728195083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078900.P2370057025728195083

/-! ## A078900.P2967055929942981709

`∩[A178218(n+1), A304435(n+1)]`
-/

namespace A078900.P2967055929942981709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078900.P2967055929942981709

/-! ## A078900.P11181875983723179195

`A004741(∪[A002061(n+2), A002061(n+2)²]²)`
-/

namespace A078900.P11181875983723179195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A078900.P11181875983723179195

/-! ## A078900.P1490519469479987158

`∩[A178218(n+1), A304436(n+1)]`
-/

namespace A078900.P1490519469479987158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078900.P1490519469479987158

/-! ## A078900.P17414581378744986205

`∩[A110134(n+1), A178218(n+1)]`
-/

namespace A078900.P17414581378744986205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078900.P17414581378744986205

/-!
# A078901: Generalized Fermat numbers of the form (k+1)^2^m + k^2^m, with m>1.

The programs for A078901, there is no canonical definition to state claims against.
-/

/-! ## A078901.P4064271672863249041

`filter[A078900(n+1), A216280(#)]`
-/

namespace A078901.P4064271672863249041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216280 (f1 j).toNat = 1) n)

end

end A078901.P4064271672863249041

/-! ## A078901.P7396709312382511075

`filter[A078900(n+1), A080343(#)]`
-/

namespace A078901.P7396709312382511075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080343 (f1 j).toNat = 1) n)

end

end A078901.P7396709312382511075

/-! ## A078901.P1492750661531373748

`∩[A060387(n+1), A078900(n+1)]`
-/

namespace A078901.P1492750661531373748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078901.P1492750661531373748

/-!
# A078902: Generalized Fermat primes of the form (k+1)^2^m + k^2^m, with m>1.

The programs for A078902, there is no canonical definition to state claims against.
-/

/-! ## A078902.P12250033655573530088

`∪[A152913(n+1), Δ[A172521(n+1)]]`
-/

namespace A078902.P12250033655573530088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152913 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078902.P12250033655573530088

/-! ## A078902.P817564079595262792

`∩[A002645(n+1), A078901(n+1)]`
-/

namespace A078902.P817564079595262792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078902.P817564079595262792

/-! ## A078902.P11691755557161975845

`∩[A002645(n+1), A078900(n+1)]`
-/

namespace A078902.P11691755557161975845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078902.P11691755557161975845

/-! ## A078902.P6686457235339714815

`∩[A028916(n+1), A078901(n+1)]`
-/

namespace A078902.P6686457235339714815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078902.P6686457235339714815

/-! ## A078902.P12881587984511271634

`∩[A078901(n+1), A140834(n+1)]`
-/

namespace A078902.P12881587984511271634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078902.P12881587984511271634

/-!
# A078903: a(n) = n^2 - Sum_{u=1..n} Sum_{v=1..u} valuation(2*v, 2).

The programs for A078903, the canonical program `A078903.P15563082662112462031` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078903 has offset 1).

The definition of A078903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078903.P15563082662112462031

`A000788(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078903

/-- `A000788(n+1)-(n+1)` -/
def P15563082662112462031.Spec : Prop :=
  ∀ n, P15563082662112462031.a n = A078903 (n + 1)

theorem P15563082662112462031.correct : P15563082662112462031.Spec := by
  intro n
  simp only [A078903, Nat.add_sub_cancel]

end A078903

/-! ## A078903.P8040734006930466958

`∑[n-∑[val(n+1, 2)]]`
-/

namespace A078903.P8040734006930466958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P8040734006930466958

namespace A078903

/-- `∑[n-∑[val(n+1, 2)]]` -/
def P8040734006930466958.Spec : Prop :=
  ∀ n, P8040734006930466958.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P12681409902371672745

`∑[n-∑[log2((xor(n, n+1)+1)/2)]]`
-/

namespace A078903.P12681409902371672745
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.xor n (n + 1) + 1 : ℚ) / 2 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P12681409902371672745

namespace A078903

/-- `∑[n-∑[log2((xor(n, n+1)+1)/2)]]` -/
def P12681409902371672745.Spec : Prop :=
  ∀ n, P12681409902371672745.a n = (A078903 (n + 1) : ℝ)

end A078903

/-! ## A078903.P18397079644264601679

`∑[n-∑[log2(-or(n+1, -(n+1)))]]`
-/

namespace A078903.P18397079644264601679
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P18397079644264601679

namespace A078903

/-- `∑[n-∑[log2(-or(n+1, -(n+1)))]]` -/
def P18397079644264601679.Spec : Prop :=
  ∀ n, P18397079644264601679.a n = (A078903 (n + 1) : ℝ)

end A078903

/-! ## A078903.P1513180255116711868

`∑[A048881(n)]`
-/

namespace A078903.P1513180255116711868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P1513180255116711868

namespace A078903

/-- `∑[A048881(n)]` -/
def P1513180255116711868.Spec : Prop :=
  ∀ n, P1513180255116711868.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P16901969196388664879

`∑[log2(A048896(n))]`
-/

namespace A078903.P16901969196388664879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048896 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P16901969196388664879

namespace A078903

/-- `∑[log2(A048896(n))]` -/
def P16901969196388664879.Spec : Prop :=
  ∀ n, P16901969196388664879.a n = (A078903 (n + 1) : ℝ)

end A078903

/-! ## A078903.P9761731828859004457

`∑[log2(Δ[A193494(n)])]`
-/

namespace A078903.P9761731828859004457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P9761731828859004457

namespace A078903

/-- `∑[log2(Δ[A193494(n)])]` -/
def P9761731828859004457.Spec : Prop :=
  ∀ n, P9761731828859004457.a n = (A078903 (n + 1) : ℝ)

end A078903

/-! ## A078903.P7883673156843641548

`∑[A000120(n+1)-1]`
-/

namespace A078903.P7883673156843641548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P7883673156843641548

namespace A078903

/-- `∑[A000120(n+1)-1]` -/
def P7883673156843641548.Spec : Prop :=
  ∀ n, P7883673156843641548.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P6951771744556701301

`∑[n-A011371(n+1)]`
-/

namespace A078903.P6951771744556701301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P6951771744556701301

namespace A078903

/-- `∑[n-A011371(n+1)]` -/
def P6951771744556701301.Spec : Prop :=
  ∀ n, P6951771744556701301.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P14539980722054953771

`∑[n]-A174605(n+1)`
-/

namespace A078903.P14539980722054953771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174605 (n + 1)

end

end A078903.P14539980722054953771

namespace A078903

/-- `∑[n]-A174605(n+1)` -/
def P14539980722054953771.Spec : Prop :=
  ∀ n, P14539980722054953771.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P2728494397624911509

`∑[2*n-A283208(n)]`
-/

namespace A078903.P2728494397624911509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A283208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P2728494397624911509

namespace A078903

/-- `∑[2*n-A283208(n)]` -/
def P2728494397624911509.Spec : Prop :=
  ∀ n, P2728494397624911509.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P16915359945358553531

`∑[log2(A001316(n+1))-1]`
-/

namespace A078903.P16915359945358553531
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P16915359945358553531

namespace A078903

/-- `∑[log2(A001316(n+1))-1]` -/
def P16915359945358553531.Spec : Prop :=
  ∀ n, P16915359945358553531.a n = (A078903 (n + 1) : ℝ)

end A078903

/-! ## A078903.P1356579290961326983

`∑[∑[A088705(n+1)]-1]`
-/

namespace A078903.P1356579290961326983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P1356579290961326983

namespace A078903

/-- `∑[∑[A088705(n+1)]-1]` -/
def P1356579290961326983.Spec : Prop :=
  ∀ n, P1356579290961326983.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P5213858301124356508

`∑[n-∑[A007814(n+1)]]`
-/

namespace A078903.P5213858301124356508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P5213858301124356508

namespace A078903

/-- `∑[n-∑[A007814(n+1)]]` -/
def P5213858301124356508.Spec : Prop :=
  ∀ n, P5213858301124356508.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P8428587013014834374

`(n+1)²-A122247(n+1)`
-/

namespace A078903.P8428587013014834374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A122247 (n + 1)

end

end A078903.P8428587013014834374

namespace A078903

/-- `(n+1)²-A122247(n+1)` -/
def P8428587013014834374.Spec : Prop :=
  ∀ n, P8428587013014834374.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P17665891316958638415

`∑[n+1-A113474(n+1)]`
-/

namespace A078903.P17665891316958638415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A113474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P17665891316958638415

namespace A078903

/-- `∑[n+1-A113474(n+1)]` -/
def P17665891316958638415.Spec : Prop :=
  ∀ n, P17665891316958638415.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P11041545597244861076

`∑[A092391(n+1)-(n+2)]`
-/

namespace A078903.P11041545597244861076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P11041545597244861076

namespace A078903

/-- `∑[A092391(n+1)-(n+2)]` -/
def P11041545597244861076.Spec : Prop :=
  ∀ n, P11041545597244861076.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P11934336613919048384

`(n+1)²-∑[A005187(n+1)]`
-/

namespace A078903.P11934336613919048384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P11934336613919048384

namespace A078903

/-- `(n+1)²-∑[A005187(n+1)]` -/
def P11934336613919048384.Spec : Prop :=
  ∀ n, P11934336613919048384.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P7413980516725786428

`∑[A000120(A025480(n))]`
-/

namespace A078903.P7413980516725786428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P7413980516725786428

namespace A078903

/-- `∑[A000120(A025480(n))]` -/
def P7413980516725786428.Spec : Prop :=
  ∀ n, P7413980516725786428.a n = A078903 (n + 1)

end A078903

/-! ## A078903.P7572457426249006019

`∑[A000120(A071055(n))]`
-/

namespace A078903.P7572457426249006019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A071055 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078903.P7572457426249006019

namespace A078903

/-- `∑[A000120(A071055(n))]` -/
def P7572457426249006019.Spec : Prop :=
  ∀ n, P7572457426249006019.a n = A078903 (n + 1)

end A078903

/-!
# A078904: a(n) = 4a(n-1) + 3n with a(0) = 0.

The programs for A078904, the canonical program `A078904.P3479442332253945552` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078904 has offset 0).

The definition of A078904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*n` (program `A078904.P3479442332253945552`, by `A078904.P3479442332253945552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078904.P12726602644224858977

`ogf(3x/(1-6x+9x^2-4x^3))`
-/

namespace A078904.P12726602644224858977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -6, 9, -4] n

end

end A078904.P12726602644224858977

namespace A078904

/-- `ogf(3x/(1-6x+9x^2-4x^3))` -/
def P12726602644224858977.Spec : Prop :=
  ∀ n, P12726602644224858977.a n = A078904 n

end A078904

/-! ## A078904.P3479442332253945552

`4*a(n-1)+3*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078904

/-- `4*a(n-1)+3*n` -/
def P3479442332253945552.Spec : Prop :=
  ∀ n, (P3479442332253945552.a n : ℤ) = A078904 n

theorem P3479442332253945552.correct : P3479442332253945552.Spec := by
  intro n
  simp only [A078904]

end A078904

/-! ## A078904.P5508933647417939169

`1/3*(4^(n+1)-3*n-4)`
-/

namespace A078904.P5508933647417939169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 ^ (n + 1) : ℤ) - (3 * n : ℤ) - 4 : ℚ)

end

end A078904.P5508933647417939169

namespace A078904

/-- `1/3*(4^(n+1)-3*n-4)` -/
def P5508933647417939169.Spec : Prop :=
  ∀ n, P5508933647417939169.a n = (A078904 n : ℚ)

theorem P5508933647417939169.correct : P5508933647417939169.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A078904, Nat.add_sub_cancel, A078904.P5508933647417939169.a, A078904.P3479442332253945552.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A078904, Nat.add_sub_cancel, A078904.P5508933647417939169.a, A078904.P3479442332253945552.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A078904

/-! ## A078904.P14000200102009544495

`lcm(3, ∑[1-4^n])`
-/

namespace A078904.P14000200102009544495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078904.P14000200102009544495

namespace A078904

/-- `lcm(3, ∑[1-4^n])` -/
def P14000200102009544495.Spec : Prop :=
  ∀ n, (P14000200102009544495.a n : ℤ) = A078904 n

end A078904

/-! ## A078904.P17756864693279651265

`xor(1, ∑[4^n])-n`
-/

namespace A078904.P17756864693279651265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A078904.P17756864693279651265

namespace A078904

/-- `xor(1, ∑[4^n])-n` -/
def P17756864693279651265.Spec : Prop :=
  ∀ n, P17756864693279651265.a n = A078904 n

end A078904

/-! ## A078904.P3256689163353971119

`∑[ogf(3x/(1-5x+4x^2))]`
-/

namespace A078904.P3256689163353971119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078904.P3256689163353971119

namespace A078904

/-- `∑[ogf(3x/(1-5x+4x^2))]` -/
def P3256689163353971119.Spec : Prop :=
  ∀ n, P3256689163353971119.a n = A078904 n

end A078904

/-! ## A078904.P17787470357835405005

`∑[4^n]+xor(n, -1)`
-/

namespace A078904.P17787470357835405005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.xor (n : ℤ) (-1)

end

end A078904.P17787470357835405005

namespace A078904

/-- `∑[4^n]+xor(n, -1)` -/
def P17787470357835405005.Spec : Prop :=
  ∀ n, P17787470357835405005.a n = A078904 n

end A078904

/-! ## A078904.P13845988152090487738

`lcm(4, floor(4^n/3))-n`
-/

namespace A078904.P13845988152090487738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ⌊(4 ^ n : ℚ) / 3⌋ : ℤ) - (n : ℤ)

end

end A078904.P13845988152090487738

namespace A078904

/-- `lcm(4, floor(4^n/3))-n` -/
def P13845988152090487738.Spec : Prop :=
  ∀ n, P13845988152090487738.a n = A078904 n

end A078904

/-! ## A078904.P16857035292185710430

`or(1, ∑[4^n])-(n+1)`
-/

namespace A078904.P16857035292185710430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n + 1 : ℤ)

end

end A078904.P16857035292185710430

namespace A078904

/-- `or(1, ∑[4^n])-(n+1)` -/
def P16857035292185710430.Spec : Prop :=
  ∀ n, P16857035292185710430.a n = A078904 n

end A078904

/-! ## A078904.P1350227465245070143

`∑[record[(-2)^n]]-(n+1)`
-/

namespace A078904.P1350227465245070143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A078904.P1350227465245070143

namespace A078904

/-- `∑[record[(-2)^n]]-(n+1)` -/
def P1350227465245070143.Spec : Prop :=
  ∀ n, P1350227465245070143.a n = A078904 n

end A078904

/-! ## A078904.P14274344178489020477

`4^n+a(n-1)-1` with `a(0)=0`
-/

namespace A078904.P14274344178489020477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) + (a (n - 1) - 1)

end

end A078904.P14274344178489020477

namespace A078904

/-- `4^n+a(n-1)-1` -/
def P14274344178489020477.Spec : Prop :=
  ∀ n, P14274344178489020477.a n = A078904 n

end A078904

/-! ## A078904.P18127702242457988344

`4^n-(1-a(n-1))` with `a(0)=0`
-/

namespace A078904.P18127702242457988344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) - (1 - a (n - 1))

end

end A078904.P18127702242457988344

namespace A078904

/-- `4^n-(1-a(n-1))` -/
def P18127702242457988344.Spec : Prop :=
  ∀ n, P18127702242457988344.a n = A078904 n

end A078904

/-! ## A078904.P8736968706817223614

`∑[4*a(n-1)]-n` with `a(0)=0, a(1)=4`
-/

namespace A078904.P8736968706817223614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A078904.P8736968706817223614

namespace A078904

/-- `∑[4*a(n-1)]-n` -/
def P8736968706817223614.Spec : Prop :=
  ∀ n, P8736968706817223614.a n = A078904 n

end A078904

/-! ## A078904.P16057292520940986928

`∑[2^(2*n)]-C(n+1, n)`
-/

namespace A078904.P16057292520940986928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n + 1) n : ℤ)

end

end A078904.P16057292520940986928

namespace A078904

/-- `∑[2^(2*n)]-C(n+1, n)` -/
def P16057292520940986928.Spec : Prop :=
  ∀ n, P16057292520940986928.a n = A078904 n

end A078904

/-! ## A078904.P9553402378165406035

`4*n-(n-4*a(n-1))` with `a(0)=0`
-/

namespace A078904.P9553402378165406035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - 4 * a (n - 1))

end

end A078904.P9553402378165406035

namespace A078904

/-- `4*n-(n-4*a(n-1))` -/
def P9553402378165406035.Spec : Prop :=
  ∀ n, P9553402378165406035.a n = A078904 n

end A078904

/-! ## A078904.P16864744174351548072

`∑[gcd(2, 2*n)^(2*n)]-(n+1)`
-/

namespace A078904.P16864744174351548072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) ^ (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A078904.P16864744174351548072

namespace A078904

/-- `∑[gcd(2, 2*n)^(2*n)]-(n+1)` -/
def P16864744174351548072.Spec : Prop :=
  ∀ n, P16864744174351548072.a n = A078904 n

end A078904

/-! ## A078904.P16996450393848954957

`∑[a(n-1)/(1/2)²]-(n+1)` with `a(0)=1`
-/

namespace A078904.P16996450393848954957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℚ)

end

end A078904.P16996450393848954957

namespace A078904

/-- `∑[a(n-1)/(1/2)²]-(n+1)` -/
def P16996450393848954957.Spec : Prop :=
  ∀ n, P16996450393848954957.a n = (A078904 n : ℚ)

end A078904

/-! ## A078904.P12416383034423879417

`∑[A024036(n)]`
-/

namespace A078904.P12416383034423879417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078904.P12416383034423879417

namespace A078904

/-- `∑[A024036(n)]` -/
def P12416383034423879417.Spec : Prop :=
  ∀ n, P12416383034423879417.a n = A078904 n

end A078904

/-! ## A078904.P9697839986432560803

`A080674(n)-n`
-/

namespace A078904.P9697839986432560803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 n - (n : ℤ)

end

end A078904.P9697839986432560803

namespace A078904

/-- `A080674(n)-n` -/
def P9697839986432560803.Spec : Prop :=
  ∀ n, P9697839986432560803.a n = A078904 n

end A078904

/-! ## A078904.P304839607138944880

`A178420(Δ[n²])`
-/

namespace A078904.P304839607138944880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078904.P304839607138944880

namespace A078904

/-- `A178420(Δ[n²])` -/
def P304839607138944880.Spec : Prop :=
  ∀ n, P304839607138944880.a n = A078904 n

end A078904

/-!
# A078905: The q expansion of Lambda^5, a Hauptmodul for Gamma_1(5).

The programs for A078905, there is no canonical definition to state claims against.
-/

/-! ## A078905.P1519783451027286602

`A286509(eq[5, A025581(n)])`
-/

namespace A078905.P1519783451027286602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078905.P1519783451027286602

/-! ## A078905.P10505581506488541456

`A286509(Δ[A026054(n+3)])`
-/

namespace A078905.P10505581506488541456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (f1 (n + 1) - f1 n).toNat

end

end A078905.P10505581506488541456

/-! ## A078905.P15958037382453539822

`A286509(A000217(n+6)-6)`
-/

namespace A078905.P15958037382453539822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A000217 (n + 6) - 6).toNat

end

end A078905.P15958037382453539822

/-! ## A078905.P6945206391998036575

`A286509(A000124(n+5)+n-1)`
-/

namespace A078905.P6945206391998036575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A078905.P6945206391998036575

/-! ## A078905.P2418801803450757394

`A286509(2*n+A000124(n+4)+4)`
-/

namespace A078905.P2418801803450757394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A078905.P2418801803450757394

/-! ## A078905.P10484184804407408699

`A286509(A145018(n+5)+A005408(n))`
-/

namespace A078905.P10484184804407408699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A145018 (n + 5) + A005408 n).toNat

end

end A078905.P10484184804407408699

/-!
# A078906: Expansion of j in powers of Gamma(5)-modular function Lambda^5.

The programs for A078906, there is no canonical definition to state claims against.
-/

/-! ## A078906.P15837923734076172378

`abs(A066404(n))`
-/

namespace A078906.P15837923734076172378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066404 n|

end

end A078906.P15837923734076172378

/-! ## A078906.P6116661367740784877

`A033999(n)*A066404(n)`
-/

namespace A078906.P6116661367740784877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A066404 n

end

end A078906.P6116661367740784877

/-! ## A078906.P15511197101641402473

`A009001(2*n)*A066404(n)`
-/

namespace A078906.P15511197101641402473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A066404 n

end

end A078906.P15511197101641402473

/-! ## A078906.P9398525648448696047

`A057077(2*n)*A066404(n)`
-/

namespace A078906.P9398525648448696047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A066404 n

end

end A078906.P9398525648448696047

/-! ## A078906.P8185047245150491005

`A066404(n)/A057077(A005408(n))`
-/

namespace A078906.P8185047245150491005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066404 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A078906.P8185047245150491005

/-! ## A078906.P14277860833635592802

`lcm(A007318(A000217(n)), A066404(n))`
-/

namespace A078906.P14277860833635592802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A000217 n).toNat) (A066404 n)

end

end A078906.P14277860833635592802

/-! ## A078906.P4406348483606475826

`A066404(n)/A033999(A138509(n+1))`
-/

namespace A078906.P4406348483606475826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066404 n : ℚ) / (A033999 (A138509 (n + 1)).toNat : ℚ)

end

end A078906.P4406348483606475826

/-! ## A078906.P10196700459652618274

`A066404(n)/A057077(A057077(n)+n)`
-/

namespace A078906.P10196700459652618274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066404 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A078906.P10196700459652618274

/-!
# A078907: Expansion of modular function j/256 in powers of m=k^2=lambda(t).

The programs for A078907, there is no canonical definition to state claims against.
-/

/-! ## A078907.P6390890961410059744

`a(n-1)+1` with `a(0)=1, a(1)=-1, a(2)=3, a(3)=0, a(4)=3, a(5)=3`
-/

namespace A078907.P6390890961410059744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3, 0, 3, 3] fun n a =>
  a (n - 1) + 1

end

end A078907.P6390890961410059744

/-!
# A078908: Let r+i*s be the sum, with multiplicity, of the first-quadrant Gaussian primes dividing n; sequence gives r values (with a(1) = 0).

The programs for A078908, there is no canonical definition to state claims against.
-/

/-! ## A078908.P7912547094203545711

`∑{e}[A181821(n+1), A080088(#)]`
-/

namespace A078908.P7912547094203545711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080088 (Nat.factorization (f1 n).natAbs p)

end

end A078908.P7912547094203545711

/-! ## A078908.P12297102426574575486

`∑{e}[A304660(n+1), A080088(#)]`
-/

namespace A078908.P12297102426574575486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080088 (Nat.factorization (f1 n).natAbs p)

end

end A078908.P12297102426574575486

/-!
# A078909: Let r+i*s be the sum, with multiplicity, of the first-quadrant Gaussian primes dividing n; sequence gives s values.

The programs for A078909, there is no canonical definition to state claims against.
-/

/-! ## A078909.P5118898602868183385

`A078908(A072436(n+1))`
-/

namespace A078909.P5118898602868183385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A072436 (n + 1)).toNat

end

end A078909.P5118898602868183385

/-! ## A078909.P8892066898487769074

`A078908((n+1)/A097706(n+1))`
-/

namespace A078909.P8892066898487769074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A078909.P8892066898487769074

/-! ## A078909.P16150810880671312839

`A078908(n+1)-A078908(A097706(n+1))`
-/

namespace A078909.P16150810880671312839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (n + 1) - A078908 (A097706 (n + 1)).toNat

end

end A078909.P16150810880671312839

/-! ## A078909.P18018267561463126887

`∑{d}[n+1, A099380(A014963(#))]`
-/

namespace A078909.P18018267561463126887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099380 (A014963 d).toNat

end

end A078909.P18018267561463126887

/-! ## A078909.P11969002097996973088

`∑{e}[A181821(A072436(n+1)), A080088(#)]`
-/

namespace A078909.P11969002097996973088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A072436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080088 (Nat.factorization (f1 n).natAbs p)

end

end A078909.P11969002097996973088

/-! ## A078909.P4864178746392927208

`∑{e}[A181821(n+1), A080089(#)]`
-/

namespace A078909.P4864178746392927208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080089 (Nat.factorization (f1 n).natAbs p)

end

end A078909.P4864178746392927208

/-!
# A078910: Let r+i*s be the sum of the distinct first-quadrant Gaussian integers dividing n; sequence gives r values.

The programs for A078910, there is no canonical definition to state claims against.
-/

/-! ## A078910.P8078580674846675342

`A078911(n+1)+A000203(n+1)`
-/

namespace A078910.P8078580674846675342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (n + 1) + A000203 (n + 1)

end

end A078910.P8078580674846675342

/-! ## A078910.P16015502257409517828

`(A078930(n+1)+A000203(n+1))/2`
-/

namespace A078910.P16015502257409517828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078930 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A078910.P16015502257409517828

/-! ## A078910.P11006304500515405707

`∑{d}[n+1, A034448(#)*A362961((n+1)/#)]`
-/

namespace A078910.P11006304500515405707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A362961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078910.P11006304500515405707

/-! ## A078910.P7810620198897323961

`A078911(n+1)+Δ[A160664(n)]`
-/

namespace A078910.P7810620198897323961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (n + 1) + (f1 (n + 1) - f1 n)

end

end A078910.P7810620198897323961

/-! ## A078910.P14871836583583518444

`A078930(n+1)-A078911(n+1)`
-/

namespace A078910.P14871836583583518444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078930 (n + 1) - A078911 (n + 1)

end

end A078910.P14871836583583518444

/-! ## A078910.P5563713122201444481

`n+1+A078911(n+1)+A001065(n+1)`
-/

namespace A078910.P5563713122201444481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A078911 (n + 1) + A001065 (n + 1))

end

end A078910.P5563713122201444481

/-! ## A078910.P7451290900143957072

`A004526(A078930(n+1)+A000203(n+1))`
-/

namespace A078910.P7451290900143957072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078930 (n + 1) + A000203 (n + 1)).toNat

end

end A078910.P7451290900143957072

/-!
# A078911: Let r+i*s be the sum of the distinct first-quadrant Gaussian integers dividing n; sequence gives s values.

The programs for A078911, there is no canonical definition to state claims against.
-/

/-! ## A078911.P16352234811855710450

`A078910(n+1)-A000203(n+1)`
-/

namespace A078911.P16352234811855710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078910 (n + 1) - A000203 (n + 1)

end

end A078911.P16352234811855710450

/-! ## A078911.P14410436659321532854

`A078930(n+1)-A078910(n+1)`
-/

namespace A078911.P14410436659321532854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078930 (n + 1) - A078910 (n + 1)

end

end A078911.P14410436659321532854

/-! ## A078911.P11911380449499177668

`A078910(n+1)+1-A088580(n+1)`
-/

namespace A078911.P11911380449499177668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078910 (n + 1) + (1 - A088580 (n + 1))

end

end A078911.P11911380449499177668

/-! ## A078911.P4388416848809619878

`(A078930(n+1)-A000203(n+1))/2`
-/

namespace A078911.P4388416848809619878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078930 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A078911.P4388416848809619878

/-! ## A078911.P6942969113835093239

`A078930(A000027(n+1))%A078910(n+1)`
-/

namespace A078911.P6942969113835093239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078930 (A000027 (n + 1)).toNat) (A078910 (n + 1))

end

end A078911.P6942969113835093239

/-! ## A078911.P12641894390825618084

`A004526(A078930(n+1)-A000203(n+1))`
-/

namespace A078911.P12641894390825618084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078930 (n + 1) - A000203 (n + 1)).toNat

end

end A078911.P12641894390825618084

/-!
# A078912: a(1)=a(2)=1, a(n)=a(n-1)+a(n-2) if n is odd, a(n)=a(n-1)+a(n/2) if n is even.

The programs for A078912, the canonical program `A078912.P16565108003118510431` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078912 has offset 1).

The definition of A078912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078912.P16565108003118510431

`a(n-1)+a(A029578(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078912

/-- `a(n-1)+a(A029578(n-1))` -/
def P16565108003118510431.Spec : Prop :=
  ∀ n, (P16565108003118510431.a n : ℤ) = A078912 (n + 1)

theorem P16565108003118510431.correct : P16565108003118510431.Spec := by
  intro n
  simp only [A078912, Nat.add_sub_cancel]

end A078912

/-! ## A078912.P6492156465367247194

`a(n-1)+a(n-(A057979(n)+1))` with `a(0)=1, a(1)=1`
-/

namespace A078912.P6492156465367247194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - (A057979 n + 1)).toNat

end

end A078912.P6492156465367247194

namespace A078912

/-- `a(n-1)+a(n-(A057979(n)+1))` -/
def P6492156465367247194.Spec : Prop :=
  ∀ n, (P6492156465367247194.a n : ℤ) = A078912 (n + 1)

end A078912

/-! ## A078912.P6388202429744375255

`A079398(∑[A028920((2-n²)²-1)])`
-/

namespace A078912.P6388202429744375255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 ((2 - (n ^ 2 : ℤ)) ^ 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078912.P6388202429744375255

namespace A078912

/-- `A079398(∑[A028920((2-n²)²-1)])` -/
def P6388202429744375255.Spec : Prop :=
  ∀ n, P6388202429744375255.a n = A078912 (n + 1)

end A078912

/-! ## A078912.P2467554090454387602

`A356859(A108362(n))+A000041(n)`
-/

namespace A078912.P2467554090454387602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356859 (A108362 n).toNat + A000041 n

end

end A078912.P2467554090454387602

namespace A078912

/-- `A356859(A108362(n))+A000041(n)` -/
def P2467554090454387602.Spec : Prop :=
  ∀ n, P2467554090454387602.a n = A078912 (n + 1)

end A078912

/-!
# A078913: a(1)=a(2)=1, a(n)=a(n-1)+a(n-2) if n is not congruent to 3, a(n)=a(n-1)+a(n/3) if n is congruent to 3.

The programs for A078913, there is no canonical definition to state claims against.
-/

/-! ## A078913.P2756579527749933371

`A345020(n)-A046080(A240904(n))`
-/

namespace A078913.P2756579527749933371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345020 n - A046080 (A240904 n).toNat

end

end A078913.P2756579527749933371

/-!
# A078916: a(n) = prime(n) + 2*n.

The programs for A078916, the canonical program `A078916.P17748288243755169363` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078916 has offset 1).

The definition of A078916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+2*(n+1)` (program `A078916.P17748288243755169363`, by `A078916.P17748288243755169363.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078916.P7449312159739599267

`A014688(n+1)+n+1`
-/

namespace A078916.P7449312159739599267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (n + 1 : ℤ)

end

end A078916.P7449312159739599267

namespace A078916

/-- `A014688(n+1)+n+1` -/
def P7449312159739599267.Spec : Prop :=
  ∀ n, P7449312159739599267.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P964661470935634080

`2*(n+1)+A000040(n+1)`
-/

namespace A078916.P964661470935634080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000040 (n + 1)

end

end A078916.P964661470935634080

namespace A078916

/-- `2*(n+1)+A000040(n+1)` -/
def P964661470935634080.Spec : Prop :=
  ∀ n, P964661470935634080.a n = A078916 (n + 1)

theorem P964661470935634080.correct : P964661470935634080.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P964661470935634080.a, A078916.P17748288243755169363.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078916

/-! ## A078916.P17748288243755169363

`A000040(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078916

/-- `A000040(n+1)+2*(n+1)` -/
def P17748288243755169363.Spec : Prop :=
  ∀ n, P17748288243755169363.a n = A078916 (n + 1)

theorem P17748288243755169363.correct : P17748288243755169363.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel]

end A078916

/-! ## A078916.P15730440297216639893

`A129726(n+1)+2`
-/

namespace A078916.P15730440297216639893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129726 (n + 1) + 2

end

end A078916.P15730440297216639893

namespace A078916

/-- `A129726(n+1)+2` -/
def P15730440297216639893.Spec : Prop :=
  ∀ n, P15730440297216639893.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P10860191694835870699

`∑[A230847(n+1)+1]`
-/

namespace A078916.P10860191694835870699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078916.P10860191694835870699

namespace A078916

/-- `∑[A230847(n+1)+1]` -/
def P10860191694835870699.Spec : Prop :=
  ∀ n, P10860191694835870699.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P12018836333194892209

`∑[A054541(n+1)+2]`
-/

namespace A078916.P12018836333194892209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078916.P12018836333194892209

namespace A078916

/-- `∑[A054541(n+1)+2]` -/
def P12018836333194892209.Spec : Prop :=
  ∀ n, P12018836333194892209.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P2976475527477991814

`xor(1, A174008(n+1))+1`
-/

namespace A078916.P2976475527477991814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A174008 (n + 1)) + 1

end

end A078916.P2976475527477991814

namespace A078916

/-- `xor(1, A174008(n+1))+1` -/
def P2976475527477991814.Spec : Prop :=
  ∀ n, P2976475527477991814.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P15831735688509807083

`A095116(n+1)+2+n`
-/

namespace A078916.P15831735688509807083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 2 + (n : ℤ)

end

end A078916.P15831735688509807083

namespace A078916

/-- `A095116(n+1)+2+n` -/
def P15831735688509807083.Spec : Prop :=
  ∀ n, P15831735688509807083.a n = A078916 (n + 1)

theorem P15831735688509807083.correct : P15831735688509807083.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P15831735688509807083.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P18285152542535450908

`A052147(n+1)+2*n`
-/

namespace A078916.P18285152542535450908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (2 * n : ℤ)

end

end A078916.P18285152542535450908

namespace A078916

/-- `A052147(n+1)+2*n` -/
def P18285152542535450908.Spec : Prop :=
  ∀ n, P18285152542535450908.a n = A078916 (n + 1)

theorem P18285152542535450908.correct : P18285152542535450908.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P18285152542535450908.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P11941700400474375149

`A008864(n+1)+Δ[n²]`
-/

namespace A078916.P11941700400474375149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A078916.P11941700400474375149

namespace A078916

/-- `A008864(n+1)+Δ[n²]` -/
def P11941700400474375149.Spec : Prop :=
  ∀ n, P11941700400474375149.a n = A078916 (n + 1)

theorem P11941700400474375149.correct : P11941700400474375149.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P11941700400474375149.f1, A078916.P11941700400474375149.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P5228910840934976933

`A028815(n+1)+Δ[n²]`
-/

namespace A078916.P5228910840934976933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A078916.P5228910840934976933

namespace A078916

/-- `A028815(n+1)+Δ[n²]` -/
def P5228910840934976933.Spec : Prop :=
  ∀ n, P5228910840934976933.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P9069825068255376928

`∑[A230846(n+1)+1]+1`
-/

namespace A078916.P9069825068255376928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078916.P9069825068255376928

namespace A078916

/-- `∑[A230846(n+1)+1]+1` -/
def P9069825068255376928.Spec : Prop :=
  ∀ n, P9069825068255376928.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P8101809950654271524

`∑[A125266(n+1)+2]-1`
-/

namespace A078916.P8101809950654271524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A078916.P8101809950654271524

namespace A078916

/-- `∑[A125266(n+1)+2]-1` -/
def P8101809950654271524.Spec : Prop :=
  ∀ n, P8101809950654271524.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P7128538085102592488

`A004232(n+1)+1-n²`
-/

namespace A078916.P7128538085102592488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) + (1 - (n ^ 2 : ℤ))

end

end A078916.P7128538085102592488

namespace A078916

/-- `A004232(n+1)+1-n²` -/
def P7128538085102592488.Spec : Prop :=
  ∀ n, P7128538085102592488.a n = A078916 (n + 1)

theorem P7128538085102592488.correct : P7128538085102592488.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P7128538085102592488.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P16327627769566075536

`A014689(n+1)+3*(n+1)`
-/

namespace A078916.P16327627769566075536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (3 * (n + 1) : ℤ)

end

end A078916.P16327627769566075536

namespace A078916

/-- `A014689(n+1)+3*(n+1)` -/
def P16327627769566075536.Spec : Prop :=
  ∀ n, P16327627769566075536.a n = A078916 (n + 1)

theorem P16327627769566075536.correct : P16327627769566075536.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P16327627769566075536.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P914115571191063815

`A006093(n+1)+2*n+3`
-/

namespace A078916.P914115571191063815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 * n + 3 : ℤ)

end

end A078916.P914115571191063815

namespace A078916

/-- `A006093(n+1)+2*n+3` -/
def P914115571191063815.Spec : Prop :=
  ∀ n, P914115571191063815.a n = A078916 (n + 1)

theorem P914115571191063815.correct : P914115571191063815.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P914115571191063815.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P6066665292140995036

`A000040(C(n+1, n))+n+2+n`
-/

namespace A078916.P6066665292140995036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) n) + (n + 2 : ℤ) + (n : ℤ)

end

end A078916.P6066665292140995036

namespace A078916

/-- `A000040(C(n+1, n))+n+2+n` -/
def P6066665292140995036.Spec : Prop :=
  ∀ n, P6066665292140995036.a n = A078916 (n + 1)

theorem P6066665292140995036.correct : P6066665292140995036.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P6066665292140995036.a, A078916.P17748288243755169363.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A078916

/-! ## A078916.P5039546415692571651

`A016789(n)+A014692(n+1)`
-/

namespace A078916.P5039546415692571651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A014692 (n + 1)

end

end A078916.P5039546415692571651

namespace A078916

/-- `A016789(n)+A014692(n+1)` -/
def P5039546415692571651.Spec : Prop :=
  ∀ n, P5039546415692571651.a n = A078916 (n + 1)

theorem P5039546415692571651.correct : P5039546415692571651.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P5039546415692571651.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P17605852889049307686

`A131733(n+1)+A004767(n)`
-/

namespace A078916.P17605852889049307686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A004767 n

end

end A078916.P17605852889049307686

namespace A078916

/-- `A131733(n+1)+A004767(n)` -/
def P17605852889049307686.Spec : Prop :=
  ∀ n, P17605852889049307686.a n = A078916 (n + 1)

theorem P17605852889049307686.correct : P17605852889049307686.Spec := by
  intro n
  simp only [A078916, Nat.add_sub_cancel, A078916.P17605852889049307686.a, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004767, A004767.P13352534504447192883.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078916

/-! ## A078916.P14011754705810531386

`A107622(n+1)+A042948(n)`
-/

namespace A078916.P14011754705810531386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107622 (n + 1) + A042948 n

end

end A078916.P14011754705810531386

namespace A078916

/-- `A107622(n+1)+A042948(n)` -/
def P14011754705810531386.Spec : Prop :=
  ∀ n, P14011754705810531386.a n = A078916 (n + 1)

end A078916

/-! ## A078916.P13206291793526993270

`p?[comp[n²]]+2*(n+1)`
-/

namespace A078916.P13206291793526993270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 * (n + 1)

end

end A078916.P13206291793526993270

namespace A078916

/-- `p?[comp[n²]]+2*(n+1)` -/
def P13206291793526993270.Spec : Prop :=
  ∀ n, (P13206291793526993270.a n : ℤ) = A078916 (n + 1)

end A078916

/-!
# A078917: Primes of the form prime(k) + 2*k.

The programs for A078917, the canonical program `A078917.P17733498996506050839` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078917 has offset 1).

The definition of A078917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078917.P17733498996506050839

`p?[A078916(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A078917

/-- `p?[A078916(n+1)]` -/
def P17733498996506050839.Spec : Prop :=
  ∀ n, P17733498996506050839.a n = A078917 (n + 1)

theorem P17733498996506050839.correct : P17733498996506050839.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel]

end A078917

/-! ## A078917.P4269335930633531078

`p?[A174008(n+2)]`
-/

namespace A078917.P4269335930633531078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P4269335930633531078

namespace A078917

/-- `p?[A174008(n+2)]` -/
def P4269335930633531078.Spec : Prop :=
  ∀ n, P4269335930633531078.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P16875923798028678962

`p?[A167136(n+1)+n]`
-/

namespace A078917.P16875923798028678962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P16875923798028678962

namespace A078917

/-- `p?[A167136(n+1)+n]` -/
def P16875923798028678962.Spec : Prop :=
  ∀ n, P16875923798028678962.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P15094560964350044251

`p?[A090178(n+2)+n]`
-/

namespace A078917.P15094560964350044251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P15094560964350044251

namespace A078917

/-- `p?[A090178(n+2)+n]` -/
def P15094560964350044251.Spec : Prop :=
  ∀ n, P15094560964350044251.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P16111052414476677632

`p?[∑[A230847(n+1)+1]]`
-/

namespace A078917.P16111052414476677632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P16111052414476677632

namespace A078917

/-- `p?[∑[A230847(n+1)+1]]` -/
def P16111052414476677632.Spec : Prop :=
  ∀ n, P16111052414476677632.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P17425868306332185760

`p?[∑[A054541(n+1)+2]]`
-/

namespace A078917.P17425868306332185760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P17425868306332185760

namespace A078917

/-- `p?[∑[A054541(n+1)+2]]` -/
def P17425868306332185760.Spec : Prop :=
  ∀ n, P17425868306332185760.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P15223955780320504256

`p?[A014688(n+1)+1+n]`
-/

namespace A078917.P15223955780320504256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P15223955780320504256

namespace A078917

/-- `p?[A014688(n+1)+1+n]` -/
def P15223955780320504256.Spec : Prop :=
  ∀ n, P15223955780320504256.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P13498263711486727443

`p?[A095116(n+1)+2+n]`
-/

namespace A078917.P13498263711486727443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P13498263711486727443

namespace A078917

/-- `p?[A095116(n+1)+2+n]` -/
def P13498263711486727443.Spec : Prop :=
  ∀ n, P13498263711486727443.a n = A078917 (n + 1)

theorem P13498263711486727443.correct : P13498263711486727443.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P13498263711486727443.f1, A078917.P13498263711486727443.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A078916, A078916.P17748288243755169363.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P15566487555061142552

`p?[A008578(n+1)+2*n]`
-/

namespace A078917.P15566487555061142552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P15566487555061142552

namespace A078917

/-- `p?[A008578(n+1)+2*n]` -/
def P15566487555061142552.Spec : Prop :=
  ∀ n, P15566487555061142552.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P10623206545556594589

`p?[A052147(n+1)+2*n]`
-/

namespace A078917.P10623206545556594589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P10623206545556594589

namespace A078917

/-- `p?[A052147(n+1)+2*n]` -/
def P10623206545556594589.Spec : Prop :=
  ∀ n, P10623206545556594589.a n = A078917 (n + 1)

theorem P10623206545556594589.correct : P10623206545556594589.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P10623206545556594589.f1, A078917.P10623206545556594589.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A052147, A052147.P15217781913070555828.a, A078916, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P16964939533118754024

`p?[A182986(n+1)+2*n]`
-/

namespace A078917.P16964939533118754024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P16964939533118754024

namespace A078917

/-- `p?[A182986(n+1)+2*n]` -/
def P16964939533118754024.Spec : Prop :=
  ∀ n, P16964939533118754024.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P6654595783526512363

`p?[A008864(n+1)+Δ[n²]]`
-/

namespace A078917.P6654595783526512363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P6654595783526512363

namespace A078917

/-- `p?[A008864(n+1)+Δ[n²]]` -/
def P6654595783526512363.Spec : Prop :=
  ∀ n, P6654595783526512363.a n = A078917 (n + 1)

theorem P6654595783526512363.correct : P6654595783526512363.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P6654595783526512363.f2, A078917.P6654595783526512363.f1, A078917.P6654595783526512363.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A008864, A008864.P9177617808325052279.a, A078916, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P992002810486563008

`p?[2*(n+1)+A000040(n+1)]`
-/

namespace A078917.P992002810486563008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P992002810486563008

namespace A078917

/-- `p?[2*(n+1)+A000040(n+1)]` -/
def P992002810486563008.Spec : Prop :=
  ∀ n, P992002810486563008.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P3494464242229831045

`p?[A014689(n+1)+3*(n+1)]`
-/

namespace A078917.P3494464242229831045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (3 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P3494464242229831045

namespace A078917

/-- `p?[A014689(n+1)+3*(n+1)]` -/
def P3494464242229831045.Spec : Prop :=
  ∀ n, P3494464242229831045.a n = A078917 (n + 1)

theorem P3494464242229831045.correct : P3494464242229831045.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P3494464242229831045.f1, A078917.P3494464242229831045.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A014689, A014689.P6286543075765329050.a, A078916, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P18293354373827533441

`A078916(A076297(n+1))`
-/

namespace A078917.P18293354373827533441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (A076297 (n + 1)).toNat

end

end A078917.P18293354373827533441

namespace A078917

/-- `A078916(A076297(n+1))` -/
def P18293354373827533441.Spec : Prop :=
  ∀ n, P18293354373827533441.a n = A078917 (n + 1)

end A078917

/-! ## A078917.P15086553065932683878

`∩[A078916(n+1), A380468(n+1)]`
-/

namespace A078917.P15086553065932683878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078917.P15086553065932683878

namespace A078917

/-- `∩[A078916(n+1), A380468(n+1)]` -/
def P15086553065932683878.Spec : Prop :=
  ∀ n, (P15086553065932683878.a n : ℤ) = A078917 (n + 1)

end A078917

/-! ## A078917.P1161266027094786228

`p?[A000040(n+1)+A005408(n)+1]`
-/

namespace A078917.P1161266027094786228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A005408 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P1161266027094786228

namespace A078917

/-- `p?[A000040(n+1)+A005408(n)+1]` -/
def P1161266027094786228.Spec : Prop :=
  ∀ n, P1161266027094786228.a n = A078917 (n + 1)

theorem P1161266027094786228.correct : P1161266027094786228.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P1161266027094786228.f1, A078917.P1161266027094786228.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005408, A005408.P17437947328870227736.a, A078916, A078916.P17748288243755169363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P6127043013014697458

`p?[A000040(n+1)+A005843(n+1)]`
-/

namespace A078917.P6127043013014697458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P6127043013014697458

namespace A078917

/-- `p?[A000040(n+1)+A005843(n+1)]` -/
def P6127043013014697458.Spec : Prop :=
  ∀ n, P6127043013014697458.a n = A078917 (n + 1)

theorem P6127043013014697458.correct : P6127043013014697458.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P6127043013014697458.f1, A078917.P6127043013014697458.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A078916, A078916.P17748288243755169363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P18370998075573008489

`p?[A000040(n+1)+A016789(n)-n]`
-/

namespace A078917.P18370998075573008489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A016789 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P18370998075573008489

namespace A078917

/-- `p?[A000040(n+1)+A016789(n)-n]` -/
def P18370998075573008489.Spec : Prop :=
  ∀ n, P18370998075573008489.a n = A078917 (n + 1)

theorem P18370998075573008489.correct : P18370998075573008489.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P18370998075573008489.f1, A078917.P18370998075573008489.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A016789, A016789.P8277564872725303677.a, A078916, A078916.P17748288243755169363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-! ## A078917.P9685582777403700854

`p?[A000040(n+1)+A144396(n+1)-1]`
-/

namespace A078917.P9685582777403700854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A144396 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078917.P9685582777403700854

namespace A078917

/-- `p?[A000040(n+1)+A144396(n+1)-1]` -/
def P9685582777403700854.Spec : Prop :=
  ∀ n, P9685582777403700854.a n = A078917 (n + 1)

theorem P9685582777403700854.correct : P9685582777403700854.Spec := by
  intro n
  simp only [A078917, Nat.add_sub_cancel, A078917.P9685582777403700854.f1, A078917.P9685582777403700854.a, A078917.P17733498996506050839.f1, A078917.P17733498996506050839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A078916, A078916.P17748288243755169363.a, A144396, A144396.P18396969748453668116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078917

/-!
# A078918: a(n) = (a(n-1) + a(n-3)) * a(n-2) / a(n-4). a(1) = a(2) = a(3) = a(4) = 1.

The programs for A078918, the canonical program `A078918.P5220815734358976737` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078918 has offset 1).

The definition of A078918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078918.P5220815734358976737

`6*a(n-2)*a(n-3)-(a(n-2)+a(n-3)+a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078918

/-- `6*a(n-2)*a(n-3)-(a(n-2)+a(n-3)+a(n-5))` -/
def P5220815734358976737.Spec : Prop :=
  ∀ n, P5220815734358976737.a n = A078918 (n + 1)

theorem P5220815734358976737.correct : P5220815734358976737.Spec := by
  intro n
  simp only [A078918, Nat.add_sub_cancel]

end A078918

/-! ## A078918.P14796104372697686456

`(a(n-1)+a(n-3))*a(n-2)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078918.P14796104372697686456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 3)) * a (n - 2) / a (n - 4)

end

end A078918.P14796104372697686456

namespace A078918

/-- `(a(n-1)+a(n-3))*a(n-2)/a(n-4)` -/
def P14796104372697686456.Spec : Prop :=
  ∀ n, P14796104372697686456.a n = (A078918 (n + 1) : ℚ)

end A078918

/-! ## A078918.P2969466990655382267

`A248049(n)/a(n-1)` with `a(0)=1`
-/

namespace A078918.P2969466990655382267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A248049 n : ℚ) / a (n - 1)

end

end A078918.P2969466990655382267

namespace A078918

/-- `A248049(n)/a(n-1)` -/
def P2969466990655382267.Spec : Prop :=
  ∀ n, P2969466990655382267.a n = (A078918 (n + 1) : ℚ)

end A078918

/-! ## A078918.P2434009070448765703

`A245558(A326023(n))`
-/

namespace A078918.P2434009070448765703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A326023 n).toNat

end

end A078918.P2434009070448765703

namespace A078918

/-- `A245558(A326023(n))` -/
def P2434009070448765703.Spec : Prop :=
  ∀ n, P2434009070448765703.a n = A078918 (n + 1)

end A078918

/-! ## A078918.P5296122276867389679

`A245558(A326078(n)+1)`
-/

namespace A078918.P5296122276867389679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A326078 n + 1).toNat

end

end A078918.P5296122276867389679

namespace A078918

/-- `A245558(A326078(n)+1)` -/
def P5296122276867389679.Spec : Prop :=
  ∀ n, P5296122276867389679.a n = A078918 (n + 1)

end A078918

/-!
# A078919: Partial products of A079069.

The programs for A078919, the canonical program `A078919.P10221377572886750604` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078919 has offset 1).

The definition of A078919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078919.P10221377572886750604

`(a(n-2)+a(n-3))*a(n-1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078919

/-- `(a(n-2)+a(n-3))*a(n-1)/a(n-4)` -/
def P10221377572886750604.Spec : Prop :=
  ∀ n, P10221377572886750604.a n = (A078919 (n + 1) : ℚ)

end A078919

/-! ## A078919.P5421961100375362577

`∏[(a(n-2)+1)*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A078919.P5421961100375362577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  (f1 (n - 2) + 1) * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078919.P5421961100375362577

namespace A078919

/-- `∏[(a(n-2)+1)*a(n-3)]` -/
def P5421961100375362577.Spec : Prop :=
  ∀ n, (P5421961100375362577.a n : ℤ) = A078919 (n + 1)

end A078919

/-! ## A078919.P9976035745997533421

`a(n-1)*A079069(n)` with `a(0)=1`
-/

namespace A078919.P9976035745997533421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A079069 n

end

end A078919.P9976035745997533421

namespace A078919

/-- `a(n-1)*A079069(n)` -/
def P9976035745997533421.Spec : Prop :=
  ∀ n, P9976035745997533421.a n = A078919 (n + 1)

end A078919

/-! ## A078919.P12781188222637791646

`∏[A079069(round(sqrt(n²+1)))]`
-/

namespace A078919.P12781188222637791646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079069 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078919.P12781188222637791646

namespace A078919

/-- `∏[A079069(round(sqrt(n²+1)))]` -/
def P12781188222637791646.Spec : Prop :=
  ∀ n, P12781188222637791646.a n = A078919 (n + 1)

end A078919

/-! ## A078919.P8090986242885624778

`∏[A079069(n+1)]/A079069(n+1)`
-/

namespace A078919.P8090986242885624778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079069 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079069 (n + 1) : ℚ)

end

end A078919.P8090986242885624778

namespace A078919

/-- `∏[A079069(n+1)]/A079069(n+1)` -/
def P8090986242885624778.Spec : Prop :=
  ∀ n, P8090986242885624778.a n = (A078919 (n + 1) : ℚ)

end A078919

/-!
# A078920: Upper triangle of Catalan Number Wall.

The programs for A078920, there is no canonical definition to state claims against.
-/

/-! ## A078920.P9886157914785640331

`A123352(gcd(A010816(n), A061579(n)))`
-/

namespace A078920.P9886157914785640331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (Int.gcd (A010816 n) (A061579 n))

end

end A078920.P9886157914785640331

/-! ## A078920.P15175936578932077278

`A123352(A061579(n))`
-/

namespace A078920.P15175936578932077278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A061579 n).toNat

end

end A078920.P15175936578932077278

/-! ## A078920.P8151743875287722385

`A123352(A114327(n)+n)`
-/

namespace A078920.P8151743875287722385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A114327 n + (n : ℤ)).toNat

end

end A078920.P8151743875287722385

/-! ## A078920.P6522569298784263695

`A123352(A038722(n+1)-1)`
-/

namespace A078920.P6522569298784263695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A038722 (n + 1) - 1).toNat

end

end A078920.P6522569298784263695

/-! ## A078920.P9047870190035024488

`A123352(A093995(n+1)-(n+1))`
-/

namespace A078920.P9047870190035024488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A078920.P9047870190035024488

/-! ## A078920.P3923819702970941427

`A123352((n+1-A014132(n+1))²-(n+1))`
-/

namespace A078920.P3923819702970941427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (((n + 1 : ℤ) - A014132 (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A078920.P3923819702970941427

/-! ## A078920.P18326062739953151546

`A123352(A233583(A038722(n+1)))`
-/

namespace A078920.P18326062739953151546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A233583 (A038722 (n + 1)).toNat).toNat

end

end A078920.P18326062739953151546

/-! ## A078920.P17011308363716684064

`A123352(A057944(n)+A025581(n))`
-/

namespace A078920.P17011308363716684064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A057944 n + A025581 n).toNat

end

end A078920.P17011308363716684064

/-! ## A078920.P1621657099371260062

`A123352(A077028(n+1)+1-A077028(n)+n)`
-/

namespace A078920.P1621657099371260062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A077028 (n + 1) + (1 - A077028 n + (n : ℤ))).toNat

end

end A078920.P1621657099371260062

/-! ## A078920.P6009138525737430071

`A123352(A038722(n+2))`
-/

namespace A078920.P6009138525737430071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A038722 (n + 2)).toNat

end

end A078920.P6009138525737430071

/-!
# A078921: Signed variant of A077012.

The programs for A078921, the canonical program `A078921.P6587148150982283279` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078921 has offset 1).

The definition of A078921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078921.P12951957102178765924

`T(n-1,k-1)+(T(n-1,k-1)+row(n)*T(n-2,k-1)-T(n-1,k))*row(n)` with `a(0)=1`
-/

namespace A078921.P12951957102178765924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A078921.P12951957102178765924

namespace A078921

/-- `T(n-1,k-1)+(T(n-1,k-1)+row(n)*T(n-2,k-1)-T(n-1,k))*row(n)` -/
def P12951957102178765924.Spec : Prop :=
  ∀ n, P12951957102178765924.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P6587148150982283279

`A077012(n+1)*A097807(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A078921

/-- `A077012(n+1)*A097807(n)` -/
def P6587148150982283279.Spec : Prop :=
  ∀ n, P6587148150982283279.a n = A078921 (n + 1)

theorem P6587148150982283279.correct : P6587148150982283279.Spec := by
  intro n
  simp only [A078921, Nat.add_sub_cancel]

end A078921

/-! ## A078921.P4205031003261610990

`A074909(n)*A097807(n)*A098361(n)`
-/

namespace A078921.P4205031003261610990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A097807 n * A098361 n

end

end A078921.P4205031003261610990

namespace A078921

/-- `A074909(n)*A097807(n)*A098361(n)` -/
def P4205031003261610990.Spec : Prop :=
  ∀ n, P4205031003261610990.a n = A078921 (n + 1)

theorem P4205031003261610990.correct : P4205031003261610990.Spec := by
  intro n
  simp only [A078921, Nat.add_sub_cancel, A078921.P4205031003261610990.a, A078921.P6587148150982283279.a, A074909, A074909.P6402560185863182536.a, A077012, A077012.P1073452310071073019.a, A097807, A097807.P13019751470320389249.a, A098361, A098361.P4702450051752520523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078921

/-! ## A078921.P12280270940252552311

`A094310(A038722(n+1))*A097807(n)`
-/

namespace A078921.P12280270940252552311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A038722 (n + 1)).toNat * A097807 n

end

end A078921.P12280270940252552311

namespace A078921

/-- `A094310(A038722(n+1))*A097807(n)` -/
def P12280270940252552311.Spec : Prop :=
  ∀ n, P12280270940252552311.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P9431519906756002242

`A156992(n+1)/A103283(n)`
-/

namespace A078921.P9431519906756002242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A103283 n : ℚ)

end

end A078921.P9431519906756002242

namespace A078921

/-- `A156992(n+1)/A103283(n)` -/
def P9431519906756002242.Spec : Prop :=
  ∀ n, P9431519906756002242.a n = (A078921 (n + 1) : ℚ)

end A078921

/-! ## A078921.P5882405210980689128

`A233543(n)*A238363(n+1)`
-/

namespace A078921.P5882405210980689128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A238363 (n + 1)

end

end A078921.P5882405210980689128

namespace A078921

/-- `A233543(n)*A238363(n+1)` -/
def P5882405210980689128.Spec : Prop :=
  ∀ n, P5882405210980689128.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P157752697284475168

`A002262(n)!*A238363(n+1)`
-/

namespace A078921.P157752697284475168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A238363 (n + 1)

end

end A078921.P157752697284475168

namespace A078921

/-- `A002262(n)!*A238363(n+1)` -/
def P157752697284475168.Spec : Prop :=
  ∀ n, P157752697284475168.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P17332419621990634323

`A163351(n)!*A238363(n+1)`
-/

namespace A078921.P17332419621990634323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A238363 (n + 1)

end

end A078921.P17332419621990634323

namespace A078921

/-- `A163351(n)!*A238363(n+1)` -/
def P17332419621990634323.Spec : Prop :=
  ∀ n, P17332419621990634323.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P9981810902084510358

`A298486(n)!*A238363(n+1)`
-/

namespace A078921.P9981810902084510358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A298486 n).toNat : ℤ) * A238363 (n + 1)

end

end A078921.P9981810902084510358

namespace A078921

/-- `A298486(n)!*A238363(n+1)` -/
def P9981810902084510358.Spec : Prop :=
  ∀ n, P9981810902084510358.a n = A078921 (n + 1)

end A078921

/-! ## A078921.P6409616105051066667

`A111492(n+1)*A238363(n+1)/A135278(n)`
-/

namespace A078921.P6409616105051066667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111492 (n + 1) * A238363 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A078921.P6409616105051066667

namespace A078921

/-- `A111492(n+1)*A238363(n+1)/A135278(n)` -/
def P6409616105051066667.Spec : Prop :=
  ∀ n, P6409616105051066667.a n = (A078921 (n + 1) : ℚ)

end A078921

/-!
# A078922: a(n) = 11*a(n-1) - a(n-2) with a(1)=1, a(2) = 10.

The programs for A078922, the canonical program `A078922.P10780578582202658458` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078922 has offset 1).

The definition of A078922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-a(n-2)` (program `A078922.P10780578582202658458`, by `A078922.P10780578582202658458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078922.P11039126373881054206

`ogf((1-x)/(1-11x+x^2))`
-/

namespace A078922.P11039126373881054206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -11, 1] n

end

end A078922.P11039126373881054206

namespace A078922

/-- `ogf((1-x)/(1-11x+x^2))` -/
def P11039126373881054206.Spec : Prop :=
  ∀ n, P11039126373881054206.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P10780578582202658458

`11*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078922

/-- `11*a(n-1)-a(n-2)` -/
def P10780578582202658458.Spec : Prop :=
  ∀ n, P10780578582202658458.a n = A078922 (n + 1)

theorem P10780578582202658458.correct : P10780578582202658458.Spec := by
  intro n
  simp only [A078922, Nat.add_sub_cancel]

end A078922

/-! ## A078922.P3108243647383400983

`A006190(2*(n+1)-1)`
-/

namespace A078922.P3108243647383400983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (2 * (n + 1) - 1)

end

end A078922.P3108243647383400983

namespace A078922

/-- `A006190(2*(n+1)-1)` -/
def P3108243647383400983.Spec : Prop :=
  ∀ n, P3108243647383400983.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P11729203619836439711

`∑[A052906(2*n)]`
-/

namespace A078922.P11729203619836439711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078922.P11729203619836439711

namespace A078922

/-- `∑[A052906(2*n)]` -/
def P11729203619836439711.Spec : Prop :=
  ∀ n, P11729203619836439711.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P17435685165247129068

`A305889(4*n+2)`
-/

namespace A078922.P17435685165247129068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (4 * n + 2)

end

end A078922.P17435685165247129068

namespace A078922

/-- `A305889(4*n+2)` -/
def P17435685165247129068.Spec : Prop :=
  ∀ n, P17435685165247129068.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P17704980715459961904

`A249579(8*n+4)`
-/

namespace A078922.P17704980715459961904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (8 * n + 4)

end

end A078922.P17704980715459961904

namespace A078922

/-- `A249579(8*n+4)` -/
def P17704980715459961904.Spec : Prop :=
  ∀ n, P17704980715459961904.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P5950100733385865209

`A052991(Δ[n²])/2`
-/

namespace A078922.P5950100733385865209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052991 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A078922.P5950100733385865209

namespace A078922

/-- `A052991(Δ[n²])/2` -/
def P5950100733385865209.Spec : Prop :=
  ∀ n, P5950100733385865209.a n = (A078922 (n + 1) : ℚ)

end A078922

/-! ## A078922.P12503037730835621604

`Δ[A322573(2*n)/2]`
-/

namespace A078922.P12503037730835621604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322573 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078922.P12503037730835621604

namespace A078922

/-- `Δ[A322573(2*n)/2]` -/
def P12503037730835621604.Spec : Prop :=
  ∀ n, P12503037730835621604.a n = (A078922 (n + 1) : ℚ)

end A078922

/-! ## A078922.P11068004274350669563

`A107855(2*(2*n+3))`
-/

namespace A078922.P11068004274350669563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (2 * n + 3))

end

end A078922.P11068004274350669563

namespace A078922

/-- `A107855(2*(2*n+3))` -/
def P11068004274350669563.Spec : Prop :=
  ∀ n, P11068004274350669563.a n = A078922 (n + 1)

end A078922

/-! ## A078922.P6316249460034164707

`A057076(n)-a(n-1)` with `a(0)=1`
-/

namespace A078922.P6316249460034164707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057076 n - a (n - 1)

end

end A078922.P6316249460034164707

namespace A078922

/-- `A057076(n)-a(n-1)` -/
def P6316249460034164707.Spec : Prop :=
  ∀ n, P6316249460034164707.a n = A078922 (n + 1)

end A078922

/-!
# A078923: Possible values of sigma(n)-n.

The programs for A078923, there is no canonical definition to state claims against.
-/

/-! ## A078923.P15436994354792487969

`comp[A005114(n+1)]`
-/

namespace A078923.P15436994354792487969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078923.P15436994354792487969

/-! ## A078923.P8232928860116118190

`eq[1, A253641(A024558(n+1))]`
-/

namespace A078923.P8232928860116118190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A024558 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078923.P8232928860116118190

/-! ## A078923.P10723618608069790201

`eq[1, A334215(A034699(n+1))]`
-/

namespace A078923.P10723618608069790201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334215 (A034699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078923.P10723618608069790201

/-! ## A078923.P10414827472293979126

`eq[1, A334215(A223491(n+1))]`
-/

namespace A078923.P10414827472293979126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334215 (A223491 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078923.P10414827472293979126

/-! ## A078923.P1509187456490756605

`record[A118759(n)/A295920(A024558(n+1))]`
-/

namespace A078923.P1509187456490756605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118759 n : ℚ) / (A295920 (A024558 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078923.P1509187456490756605

/-! ## A078923.P11401519720672590210

`eq[A186039(n)², A295920(A024558(n+1))]`
-/

namespace A078923.P11401519720672590210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186039 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A024558 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078923.P11401519720672590210

/-! ## A078923.P5208021341591391920

`eq[A057427(n+1), A295920(A024558(n+1))]`
-/

namespace A078923.P5208021341591391920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A024558 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078923.P5208021341591391920

/-! ## A078923.P13832862748726862846

`record[A000027(n+1)-A295920(A024558(n+1))]`
-/

namespace A078923.P13832862748726862846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A295920 (A024558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078923.P13832862748726862846

/-! ## A078923.P6593853186340119854

`record[A028242(2*n)-A295920(A024558(n+1))]`
-/

namespace A078923.P6593853186340119854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A295920 (A024558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078923.P6593853186340119854

/-!
# A078924: Array of coefficients of characteristic polynomials of M_n, the n X n matrix with entries m_(i,j) = i mod j.

The programs for A078924, there is no canonical definition to state claims against.
-/

/-! ## A078924.P125068602790887019

`Δ[A083894(A109976(n+2)+n²)]`
-/

namespace A078924.P125068602790887019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (A109976 (n + 2) + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078924.P125068602790887019

/-! ## A078924.P8212623471833955880

`A079200(A079205(n+2))-char[∑[n]]`
-/

namespace A078924.P8212623471833955880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 (A079205 (n + 2)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A078924.P8212623471833955880

/-! ## A078924.P2334272891768580425

`A277582(round((A133783(3*n+2)+1)*n/3))`
-/

namespace A078924.P2334272891768580425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277582 (SequenceMachineLib.roundAway ((A133783 (3 * n + 2) + 1 : ℚ) * ((n : ℚ) / 3))).toNat

end

end A078924.P2334272891768580425

/-! ## A078924.P18176402547041954701

`A325268(n)-A070238(A048655(n))`
-/

namespace A078924.P18176402547041954701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 n - A070238 (A048655 n).toNat

end

end A078924.P18176402547041954701

/-! ## A078924.P17807193430937437148

`A325268(n)+A134323(A209593(n+1))`
-/

namespace A078924.P17807193430937437148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 n + A134323 (A209593 (n + 1)).toNat

end

end A078924.P17807193430937437148

/-!
# A078925: Triangle of T1(n,m) = number of bracelets (necklaces that can be turned over) with m white beads and (2n+1-m) black ones, for 1<=m<=n.

The programs for A078925, there is no canonical definition to state claims against.
-/

/-! ## A078925.P10541662653615809195

`A062575(or(A181511(n+1), A321391(n)))`
-/

namespace A078925.P10541662653615809195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (Int.lor (A181511 (n + 1)) (A321391 n)).toNat

end

end A078925.P10541662653615809195

/-! ## A078925.P18222746603733147591

`A059953(A201811(n+1))`
-/

namespace A078925.P18222746603733147591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A201811 (n + 1)).toNat

end

end A078925.P18222746603733147591

/-! ## A078925.P9165499874360196102

`A221671(A187115(n+2))`
-/

namespace A078925.P9165499874360196102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A187115 (n + 2)).toNat

end

end A078925.P9165499874360196102

/-! ## A078925.P10083845416508735957

`∑{d}[A121757(n), A339884(#)]`
-/

namespace A078925.P10083845416508735957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A339884 d

end

end A078925.P10083845416508735957

/-! ## A078925.P5899412603399777319

`A059952(A201811(n+1)+1)`
-/

namespace A078925.P5899412603399777319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059952 (A201811 (n + 1) + 1).toNat

end

end A078925.P5899412603399777319

/-!
# A078926: Number of primitive Pythagorean triangles with perimeter 2n.

The programs for A078926, there is no canonical definition to state claims against.
-/

/-! ## A078926.P11014080344470970147

`A070109(2*(n+1))`
-/

namespace A078926.P11014080344470970147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (2 * (n + 1))

end

end A078926.P11014080344470970147

/-! ## A078926.P4304002547326295713

`dr(A070109(n+2+n))`
-/

namespace A078926.P4304002547326295713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A070109 (n + 2 + n))

end

end A078926.P4304002547326295713

/-! ## A078926.P16575945106497938447

`A070109(A005408(n)+1)%4`
-/

namespace A078926.P16575945106497938447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070109 (A005408 n + 1).toNat) 4

end

end A078926.P16575945106497938447

/-! ## A078926.P11873735985865211382

`A070109(n+2+n)/A000041(gcd(n, n+1))`
-/

namespace A078926.P11873735985865211382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070109 (n + 2 + n) : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A078926.P11873735985865211382

/-! ## A078926.P4258176803111002570

`∑{d}[n+1, A008683(#)*A270417((n+1)/#)]`
-/

namespace A078926.P4258176803111002570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A270417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078926.P4258176803111002570

/-! ## A078926.P11460832800848576640

`A070109(n+2+n)^A000203(n+1)`
-/

namespace A078926.P11460832800848576640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070109 (n + 2 + n) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A078926.P11460832800848576640

/-! ## A078926.P15053985800273186275

`A070109(A005408(n)+1)^A193066(n+1)`
-/

namespace A078926.P15053985800273186275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070109 (A005408 n + 1).toNat : ℚ) ^ (A193066 (n + 1) : ℤ)

end

end A078926.P15053985800273186275

/-! ## A078926.P13754140596248562596

`A070109(A000267((n+1)²))²`
-/

namespace A078926.P13754140596248562596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (A000267 ((n + 1) ^ 2)).toNat ^ 2

end

end A078926.P13754140596248562596

/-! ## A078926.P690788829634189925

`and(A096900(n+1), A340507(n))`
-/

namespace A078926.P690788829634189925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096900 (n + 1)) (A340507 n)

end

end A078926.P690788829634189925

/-! ## A078926.P8809748690146926110

`and(A144891(n+1), A239657(n+1))`
-/

namespace A078926.P8809748690146926110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144891 (n + 1)) (A239657 (n + 1))

end

end A078926.P8809748690146926110

/-!
# A078927: Smallest s for which there are exactly n primitive Pythagorean triangles with perimeter 2s; i.e., smallest s such that A078926(s) = n.

The programs for A078927, there is no canonical definition to state claims against.
-/

/-! ## A078927.P15596676468426369545

`A078928(n+1)/2`
-/

namespace A078927.P15596676468426369545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078928 (n + 1) : ℚ) / 2

end

end A078927.P15596676468426369545

/-!
# A078928: Smallest p for which there are exactly n primitive Pythagorean triangles with perimeter p; i.e., smallest p such that A070109(p) = n.

The programs for A078928, there is no canonical definition to state claims against.
-/

/-! ## A078928.P4587486786402432136

`2*A078927(n+1)`
-/

namespace A078928.P4587486786402432136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078927 (n + 1)

end

end A078928.P4587486786402432136

/-! ## A078928.P1193432341652757283

`A078927(n+1)+A078927(Δ[n²]-n)`
-/

namespace A078928.P1193432341652757283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078927 (n + 1) + A078927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A078928.P1193432341652757283

/-! ## A078928.P8206591700616157127

`A078927(n+1)/2^A008683(A002148(n))`
-/

namespace A078928.P8206591700616157127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078927 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)

end

end A078928.P8206591700616157127

/-!
# A078929: Least k > 0 such that A000002(n+k) = A000002(n).

The programs for A078929, the canonical program `A078929.P14579446228243976712` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078929 has offset 1).

The definition of A078929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078929.P14579446228243976712

`2-Δ[Δ[a(n-2)+gcd(2, a(a(n-1)))]]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078929

/-- `2-Δ[Δ[a(n-2)+gcd(2, a(a(n-1)))]]` -/
def P14579446228243976712.Spec : Prop :=
  ∀ n, P14579446228243976712.a n = A078929 (n + 1)

theorem P14579446228243976712.correct : P14579446228243976712.Spec := by
  intro n
  simp only [A078929, Nat.add_sub_cancel]

end A078929

/-! ## A078929.P7495111469331658765

`Δ[A157687(n+1)]+2`
-/

namespace A078929.P7495111469331658765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A078929.P7495111469331658765

namespace A078929

/-- `Δ[A157687(n+1)]+2` -/
def P7495111469331658765.Spec : Prop :=
  ∀ n, P7495111469331658765.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P15378447464013018034

`2-Δ[A156728(n+1)]`
-/

namespace A078929.P15378447464013018034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A078929.P15378447464013018034

namespace A078929

/-- `2-Δ[A156728(n+1)]` -/
def P15378447464013018034.Spec : Prop :=
  ∀ n, P15378447464013018034.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P6751435891460548868

`2-Δ[abs(A054354(n+1))]`
-/

namespace A078929.P6751435891460548868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054354 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A078929.P6751435891460548868

namespace A078929

/-- `2-Δ[abs(A054354(n+1))]` -/
def P6751435891460548868.Spec : Prop :=
  ∀ n, P6751435891460548868.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P5580525952013440601

`2-Δ[abs(Δ[A000002(n+1)])]`
-/

namespace A078929.P5580525952013440601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A078929.P5580525952013440601

namespace A078929

/-- `2-Δ[abs(Δ[A000002(n+1)])]` -/
def P5580525952013440601.Spec : Prop :=
  ∀ n, P5580525952013440601.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P9906777754762784083

`3-Δ[A054353(A156351(n+1))]`
-/

namespace A078929.P9906777754762784083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A156351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A078929.P9906777754762784083

namespace A078929

/-- `3-Δ[A054353(A156351(n+1))]` -/
def P9906777754762784083.Spec : Prop :=
  ∀ n, P9906777754762784083.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P16129715733111907911

`A156352(Δ[A156728(n+1)]+13)`
-/

namespace A078929.P16129715733111907911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (f1 (n + 1) - f1 n + 13).toNat

end

end A078929.P16129715733111907911

namespace A078929

/-- `A156352(Δ[A156728(n+1)]+13)` -/
def P16129715733111907911.Spec : Prop :=
  ∀ n, P16129715733111907911.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P1449112638287122225

`A001222(Δ[A156728(n+1)]+46)`
-/

namespace A078929.P1449112638287122225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 46).toNat

end

end A078929.P1449112638287122225

namespace A078929

/-- `A001222(Δ[A156728(n+1)]+46)` -/
def P1449112638287122225.Spec : Prop :=
  ∀ n, P1449112638287122225.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P13902579378320680757

`A000041(Δ[-A156728(n+1)]+2)`
-/

namespace A078929.P13902579378320680757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n + 2).toNat

end

end A078929.P13902579378320680757

namespace A078929

/-- `A000041(Δ[-A156728(n+1)]+2)` -/
def P13902579378320680757.Spec : Prop :=
  ∀ n, P13902579378320680757.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P9073782694308342636

`A000041(2-Δ[A054354(n+1)²])`
-/

namespace A078929.P9073782694308342636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A078929.P9073782694308342636

namespace A078929

/-- `A000041(2-Δ[A054354(n+1)²])` -/
def P9073782694308342636.Spec : Prop :=
  ∀ n, P9073782694308342636.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P12806953150664938393

`A001149(2-Δ[A054354(n+1)²])`
-/

namespace A078929.P12806953150664938393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001149 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A078929.P12806953150664938393

namespace A078929

/-- `A001149(2-Δ[A054354(n+1)²])` -/
def P12806953150664938393.Spec : Prop :=
  ∀ n, P12806953150664938393.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P1882953754736907461

`A014963(2-Δ[A054354(n+1)²])`
-/

namespace A078929.P1882953754736907461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A078929.P1882953754736907461

namespace A078929

/-- `A014963(2-Δ[A054354(n+1)²])` -/
def P1882953754736907461.Spec : Prop :=
  ∀ n, P1882953754736907461.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P855699133410441420

`A000045(3-Δ[A054354(n+1)²])`
-/

namespace A078929.P855699133410441420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A078929.P855699133410441420

namespace A078929

/-- `A000045(3-Δ[A054354(n+1)²])` -/
def P855699133410441420.Spec : Prop :=
  ∀ n, P855699133410441420.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P4607120136034422727

`Δ[A216345(A156253(n+1)+1)]+1`
-/

namespace A078929.P4607120136034422727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A156253 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A078929.P4607120136034422727

namespace A078929

/-- `Δ[A216345(A156253(n+1)+1)]+1` -/
def P4607120136034422727.Spec : Prop :=
  ∀ n, P4607120136034422727.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P17677089906689904187

`A156728(n+1)+2-A156728(n+2)`
-/

namespace A078929.P17677089906689904187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1) + 2 - A156728 (n + 2)

end

end A078929.P17677089906689904187

namespace A078929

/-- `A156728(n+1)+2-A156728(n+2)` -/
def P17677089906689904187.Spec : Prop :=
  ∀ n, P17677089906689904187.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P9891894002675376507

`2-Δ[lcm(A008836(n+1), A054354(n+1))]`
-/

namespace A078929.P9891894002675376507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A054354 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A078929.P9891894002675376507

namespace A078929

/-- `2-Δ[lcm(A008836(n+1), A054354(n+1))]` -/
def P9891894002675376507.Spec : Prop :=
  ∀ n, P9891894002675376507.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P11450043272037510130

`2-Δ[Δ[A156253(n+1)]]`
-/

namespace A078929.P11450043272037510130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A078929.P11450043272037510130

namespace A078929

/-- `2-Δ[Δ[A156253(n+1)]]` -/
def P11450043272037510130.Spec : Prop :=
  ∀ n, P11450043272037510130.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P609137164025224653

`2-Δ[abs(Δ[A049705(n+1)])]`
-/

namespace A078929.P609137164025224653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A078929.P609137164025224653

namespace A078929

/-- `2-Δ[abs(Δ[A049705(n+1)])]` -/
def P609137164025224653.Spec : Prop :=
  ∀ n, P609137164025224653.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P17951344330687954047

`Δ[A160051(Δ[A156253(n+1)])]+2`
-/

namespace A078929.P17951344330687954047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A078929.P17951344330687954047

namespace A078929

/-- `Δ[A160051(Δ[A156253(n+1)])]+2` -/
def P17951344330687954047.Spec : Prop :=
  ∀ n, P17951344330687954047.a n = A078929 (n + 1)

end A078929

/-! ## A078929.P15607119038957563062

`Δ[xor(A109613(2*n), A156728(n+1))]`
-/

namespace A078929.P15607119038957563062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109613 (2 * n)) (A156728 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078929.P15607119038957563062

namespace A078929

/-- `Δ[xor(A109613(2*n), A156728(n+1))]` -/
def P15607119038957563062.Spec : Prop :=
  ∀ n, P15607119038957563062.a n = A078929 (n + 1)

end A078929

/-!
# A078930: Let r+i*s be the sum of the distinct first-quadrant Gaussian integers dividing n; sequence gives r+s values.

The programs for A078930, there is no canonical definition to state claims against.
-/

/-! ## A078930.P13876813365524568493

`A078910(n+1)+A078911(n+1)`
-/

namespace A078930.P13876813365524568493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078910 (n + 1) + A078911 (n + 1)

end

end A078930.P13876813365524568493

/-! ## A078930.P10279043697337319261

`A000203(n+1)+2*A078911(n+1)`
-/

namespace A078930.P10279043697337319261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A078911 (n + 1)

end

end A078930.P10279043697337319261

/-! ## A078930.P3242607016295410904

`2*A078910(n+1)-A000203(n+1)`
-/

namespace A078930.P3242607016295410904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078910 (n + 1) - A000203 (n + 1)

end

end A078930.P3242607016295410904

/-! ## A078930.P5781385624395274472

`Δ[A160664(n)]+2*A078911(n+1)`
-/

namespace A078930.P5781385624395274472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A078911 (n + 1)

end

end A078930.P5781385624395274472

/-! ## A078930.P7141200862411939651

`A039653(n+1)+A005408(A078911(n+1))`
-/

namespace A078930.P7141200862411939651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + A005408 (A078911 (n + 1)).toNat

end

end A078930.P7141200862411939651

/-! ## A078930.P14139845499301142170

`A005408(A078910(n+1))-A088580(n+1)`
-/

namespace A078930.P14139845499301142170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A078910 (n + 1)).toNat - A088580 (n + 1)

end

end A078930.P14139845499301142170

/-!
# A078931: Numbers k that divide prime(k)+1 or prime(k)-1.

The programs for A078931, there is no canonical definition to state claims against.
-/

/-! ## A078931.P17692078697245594445

`A000720(A162567(n+1))`
-/

namespace A078931.P17692078697245594445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A162567 (n + 1)).toNat

end

end A078931.P17692078697245594445

/-! ## A078931.P3126885357206114999

`∪[A023143(n+1), A045924(n+1)]`
-/

namespace A078931.P3126885357206114999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078931.P3126885357206114999

/-! ## A078931.P3587918613883639274

`A219109(A162567(n+1)+1)`
-/

namespace A078931.P3587918613883639274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A162567 (n + 1) + 1).toNat

end

end A078931.P3587918613883639274

/-! ## A078931.P6242679943839846827

`eq[A025883(n), A157235(n+1)]`
-/

namespace A078931.P6242679943839846827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078931.P6242679943839846827

/-! ## A078931.P8604127037837083789

`A116998(A272814(n+1))`
-/

namespace A078931.P8604127037837083789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (A272814 (n + 1)).toNat

end

end A078931.P8604127037837083789

/-!
# A078932: Number of compositions (ordered partitions) of n into powers of 3.

The programs for A078932, there is no canonical definition to state claims against.
-/

/-! ## A078932.P7767260107784535830

`A230313(a(n-3))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078932.P7767260107784535830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A230313 (a (n - 3)).toNat + a (n - 1)

end

end A078932.P7767260107784535830

/-! ## A078932.P3546704067885561023

`A206740(n+1)-A046660(A064268(n+1))`
-/

namespace A078932.P3546704067885561023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206740 (n + 1) - A046660 (A064268 (n + 1)).toNat

end

end A078932.P3546704067885561023

/-! ## A078932.P16860709518388713731

`A206740(A043320(n+1))`
-/

namespace A078932.P16860709518388713731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206740 (A043320 (n + 1)).toNat

end

end A078932.P16860709518388713731

/-! ## A078932.P10457916066940905397

`A206740(A044917(n+1))`
-/

namespace A078932.P10457916066940905397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206740 (A044917 (n + 1)).toNat

end

end A078932.P10457916066940905397

/-! ## A078932.P7588274516206964763

`A206740(A055645(n+1))`
-/

namespace A078932.P7588274516206964763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206740 (A055645 (n + 1)).toNat

end

end A078932.P7588274516206964763

/-!
# A078934: Smallest semiperimeter of integral rectangle with area n*(n+1)/2.

The programs for A078934, there is no canonical definition to state claims against.
-/

/-! ## A078934.P13613734895876936575

`A078936(n+1)+A078935(n+1)`
-/

namespace A078934.P13613734895876936575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) + A078935 (n + 1)

end

end A078934.P13613734895876936575

/-! ## A078934.P17071618270428609995

`A285120(n+1)+2*A078935(n+1)`
-/

namespace A078934.P17071618270428609995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285120 (n + 1) + 2 * A078935 (n + 1)

end

end A078934.P17071618270428609995

/-! ## A078934.P5391131727695052636

`2*A078936(n+1)-A285120(n+1)`
-/

namespace A078934.P5391131727695052636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078936 (n + 1) - A285120 (n + 1)

end

end A078934.P5391131727695052636

/-! ## A078934.P1203431442735716048

`A092510(∑[n+1])+A001414(∑[n+1])`
-/

namespace A078934.P1203431442735716048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (∑ j ∈ Finset.range (n + 1), f1 j) + A001414 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A078934.P1203431442735716048

/-! ## A078934.P1272682060664604815

`A063655(∑[1+n])`
-/

namespace A078934.P1272682060664604815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078934.P1272682060664604815

/-! ## A078934.P9036756130336014217

`A228286(∑[n+1]+1)`
-/

namespace A078934.P9036756130336014217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228286 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078934.P9036756130336014217

/-! ## A078934.P3385893995197190670

`A387830(∑[n+1])+2`
-/

namespace A078934.P3385893995197190670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387830 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A078934.P3385893995197190670

/-! ## A078934.P7406067277262700291

`A262767(∑[n+1])/2`
-/

namespace A078934.P7406067277262700291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A078934.P7406067277262700291

/-! ## A078934.P285762077864875399

`∑[n+1]-A220114(∑[n+1])`
-/

namespace A078934.P285762077864875399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A220114 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A078934.P285762077864875399

/-! ## A078934.P6149644336315498134

`A078935(n+1)+A033677(A000217(n+1))`
-/

namespace A078934.P6149644336315498134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078935 (n + 1) + A033677 (A000217 (n + 1)).toNat

end

end A078934.P6149644336315498134

/-! ## A078934.P11748759821574830393

`A078936(n+1)+A033676(A000217(n+1))`
-/

namespace A078934.P11748759821574830393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) + A033676 (A000217 (n + 1)).toNat

end

end A078934.P11748759821574830393

/-!
# A078935: Largest divisor of n*(n+1)/2 that is <= sqrt(n*(n+1)/2).

The programs for A078935, there is no canonical definition to state claims against.
-/

/-! ## A078935.P10935262787707838330

`∑[n+1]/A078936(n+1)`
-/

namespace A078935.P10935262787707838330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A078936 (n + 1) : ℚ)

end

end A078935.P10935262787707838330

/-! ## A078935.P11518331111370801422

`A078934(n+1)-A078936(n+1)`
-/

namespace A078935.P11518331111370801422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (n + 1) - A078936 (n + 1)

end

end A078935.P11518331111370801422

/-! ## A078935.P5920229829748325253

`A078936(n+1)-A285120(n+1)`
-/

namespace A078935.P5920229829748325253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) - A285120 (n + 1)

end

end A078935.P5920229829748325253

/-! ## A078935.P4787323383273846594

`A033676(∑[n+1])`
-/

namespace A078935.P4787323383273846594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078935.P4787323383273846594

/-! ## A078935.P4559492888962095544

`A046805(∑[n+1])`
-/

namespace A078935.P4559492888962095544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078935.P4559492888962095544

/-! ## A078935.P1594626960957848233

`A162348((n+1)²+n)`
-/

namespace A078935.P1594626960957848233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 ((n + 1) ^ 2 + n)

end

end A078935.P1594626960957848233

/-! ## A078935.P9460956338287036942

`∑[n+1]/A033677(∑[n+1])`
-/

namespace A078935.P9460956338287036942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A033677 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A078935.P9460956338287036942

/-! ## A078935.P8980000370988631597

`A033676(C(n+2, 2))%(2*(n+1))`
-/

namespace A078935.P8980000370988631597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033676 (Nat.choose (n + 2) 2)) (2 * (n + 1) : ℤ)

end

end A078935.P8980000370988631597

/-! ## A078935.P1951054941581871844

`A028310(A033676(C(n+2, 2)))`
-/

namespace A078935.P1951054941581871844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A033676 (Nat.choose (n + 2) 2)).toNat

end

end A078935.P1951054941581871844

/-! ## A078935.P14402350148431614097

`A000027(A033676(∑[-xor(n, -1)]))`
-/

namespace A078935.P14402350148431614097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A078935.P14402350148431614097

/-! ## A078935.P13853204111136740796

`A028310(A033676(∑[Δ[n²]-n]))`
-/

namespace A078935.P13853204111136740796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A033676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A078935.P13853204111136740796

/-! ## A078935.P12502289177784370484

`A078934(n+1)-A033677(A000217(n+1))`
-/

namespace A078935.P12502289177784370484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (n + 1) - A033677 (A000217 (n + 1)).toNat

end

end A078935.P12502289177784370484

/-!
# A078936: Smallest divisor of n*(n+1)/2 that is >= sqrt(n*(n+1)/2).

The programs for A078936, there is no canonical definition to state claims against.
-/

/-! ## A078936.P10770971716975405125

`A078934(n+1)-A078935(n+1)`
-/

namespace A078936.P10770971716975405125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (n + 1) - A078935 (n + 1)

end

end A078936.P10770971716975405125

/-! ## A078936.P14287231338850649600

`A033677(A000217(n+1))`
-/

namespace A078936.P14287231338850649600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A000217 (n + 1)).toNat

end

end A078936.P14287231338850649600

/-! ## A078936.P8209912129595429234

`∑[n+1]/A078935(n+1)`
-/

namespace A078936.P8209912129595429234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A078935 (n + 1) : ℚ)

end

end A078936.P8209912129595429234

/-! ## A078936.P8074035167374241797

`A285120(n+1)+A078935(n+1)`
-/

namespace A078936.P8074035167374241797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285120 (n + 1) + A078935 (n + 1)

end

end A078936.P8074035167374241797

/-! ## A078936.P5444751945556610103

`A033677(∑[n+1])`
-/

namespace A078936.P5444751945556610103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078936.P5444751945556610103

/-! ## A078936.P8842004570657040806

`A162348(∑[2*(n+1)])`
-/

namespace A078936.P8842004570657040806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078936.P8842004570657040806

/-! ## A078936.P625213239690783573

`∑[n+1]/A033676(∑[n+1])`
-/

namespace A078936.P625213239690783573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A033676 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A078936.P625213239690783573

/-! ## A078936.P4085045938979851280

`∑[n+1]/A046805(∑[n+1])`
-/

namespace A078936.P4085045938979851280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A046805 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A078936.P4085045938979851280

/-! ## A078936.P14917497684750510859

`root(A033677(Δ[n²]+C(n, 2))², 2)`
-/

namespace A078936.P14917497684750510859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033677 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose n 2 : ℤ)).toNat ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A078936.P14917497684750510859

/-! ## A078936.P4720736925776812711

`A000027(A033677(C(n+2, 2)))`
-/

namespace A078936.P4720736925776812711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033677 (Nat.choose (n + 2) 2)).toNat

end

end A078936.P4720736925776812711

/-! ## A078936.P12222028971937890229

`A078934(n+1)-A033676(A000217(n+1))`
-/

namespace A078936.P12222028971937890229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (n + 1) - A033676 (A000217 (n + 1)).toNat

end

end A078936.P12222028971937890229

/-!
# A078937: Square of lower triangular matrix of A056857 (successive equalities in set partitions of n).

The programs for A078937, there is no canonical definition to state claims against.
-/

/-! ## A078937.P12229681694255655459

`A001861(A025581(n))*A007318(n)`
-/

namespace A078937.P12229681694255655459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001861 (A025581 n).toNat * A007318 n

end

end A078937.P12229681694255655459

/-! ## A078937.P10065344151997141844

`A007318(n)*A301830(A096334(n))`
-/

namespace A078937.P10065344151997141844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A301830 (A096334 n).toNat

end

end A078937.P10065344151997141844

/-!
# A078938: Cube of lower triangular matrix of A056857 (successive equalities in set partitions of n).

The programs for A078938, there is no canonical definition to state claims against.
-/

/-! ## A078938.P1717238182682504119

`A007318(n)*A027710(A025581(n))`
-/

namespace A078938.P1717238182682504119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A027710 (A025581 n).toNat

end

end A078938.P1717238182682504119

/-! ## A078938.P7437915993148770959

`abs(A027710(A025581(n))*A117440(n))`
-/

namespace A078938.P7437915993148770959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027710 (A025581 n).toNat * A117440 n|

end

end A078938.P7437915993148770959

/-! ## A078938.P10187649079019810062

`sqrt(A008459(n))*A027710(A025581(n))`
-/

namespace A078938.P10187649079019810062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A027710 (A025581 n).toNat : ℝ)

end

end A078938.P10187649079019810062

/-! ## A078938.P2748213509089140388

`(A014473(n)+1)*A027710(A025581(n))`
-/

namespace A078938.P2748213509089140388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A027710 (A025581 n).toNat

end

end A078938.P2748213509089140388

/-!
# A078939: Fourth power of lower triangular matrix of A056857 (successive equalities in set partitions of n).

The programs for A078939, there is no canonical definition to state claims against.
-/

/-! ## A078939.P10557131180219609714

`A007318(n)*A078944(A025581(n))`
-/

namespace A078939.P10557131180219609714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A078944 (A025581 n).toNat

end

end A078939.P10557131180219609714

/-! ## A078939.P196266176612249545

`abs(A078944(A025581(n))*A108086(n))`
-/

namespace A078939.P196266176612249545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078944 (A025581 n).toNat * A108086 n|

end

end A078939.P196266176612249545

/-! ## A078939.P16401526634774583039

`A172119(A080714(n+2))`
-/

namespace A078939.P16401526634774583039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 (A080714 (n + 2)).toNat

end

end A078939.P16401526634774583039

/-!
# A078940: Row sums of A078938.

The programs for A078940, there is no canonical definition to state claims against.
-/

/-! ## A078940.P6856321302509247030

`A027710(n+1)/3`
-/

namespace A078940.P6856321302509247030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027710 (n + 1) : ℚ) / 3

end

end A078940.P6856321302509247030

/-! ## A078940.P9157947465625387060

`A078938(∑[n+1])/3`
-/

namespace A078940.P9157947465625387060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078938 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A078940.P9157947465625387060

/-! ## A078940.P1965837790936526351

`A189233(A167614(n+3))/3`
-/

namespace A078940.P1965837790936526351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189233 (A167614 (n + 3)).toNat : ℚ) / 3

end

end A078940.P1965837790936526351

/-! ## A078940.P15552140665679168727

`A335975(∑[n+3]+n+3)`
-/

namespace A078940.P15552140665679168727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A078940.P15552140665679168727

/-! ## A078940.P8608358157952071523

`2*A292860(A046691(n+3))/6`
-/

namespace A078940.P8608358157952071523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A292860 (A046691 (n + 3)).toNat : ℚ) / 6

end

end A078940.P8608358157952071523

/-! ## A078940.P4036095017597766074

`A068199(n+2)/6`
-/

namespace A078940.P4036095017597766074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068199 (n + 2) : ℚ) / 6

end

end A078940.P4036095017597766074

/-!
# A078941: Flipping burnt pancakes. Maximum number of spatula flips to sort a stack of n pancakes of different sizes, each burnt on one side, so that the smallest ends up on top, ..., the largest at the bottom and each has its burnt side down.

The programs for A078941, there is no canonical definition to state claims against.
-/

/-! ## A078941.P16054272776460401717

`A078942(n+1)+A025437(n)`
-/

namespace A078941.P16054272776460401717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078942 (n + 1) + A025437 n

end

end A078941.P16054272776460401717

/-! ## A078941.P10795354811567108634

`A078942(n+1)+A025442(n)`
-/

namespace A078941.P10795354811567108634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078942 (n + 1) + A025442 n

end

end A078941.P10795354811567108634

/-! ## A078941.P17138355673620758794

`A123546(n)+A078942(n+1)`
-/

namespace A078941.P17138355673620758794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 n + A078942 (n + 1)

end

end A078941.P17138355673620758794

/-! ## A078941.P13899517928131707303

`A151795(n)+A078942(n+1)`
-/

namespace A078941.P13899517928131707303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 n + A078942 (n + 1)

end

end A078941.P13899517928131707303

/-! ## A078941.P10675012191195278406

`A180649(n)+A078942(n+1)`
-/

namespace A078941.P10675012191195278406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 n + A078942 (n + 1)

end

end A078941.P10675012191195278406

/-!
# A078943: a(1)=1; a(n+1) is either a(n)-n or a(n)+n, where we choose the smallest positive integer that's not among the values a(1), ..., a(n).

The programs for A078943, there is no canonical definition to state claims against.
-/

/-! ## A078943.P7717644151831699287

`A005132(n)+1`
-/

namespace A078943.P7717644151831699287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n + 1

end

end A078943.P7717644151831699287

/-! ## A078943.P2516041568847071301

`A063733(n+1)`
-/

namespace A078943.P2516041568847071301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1)

end

end A078943.P2516041568847071301

/-! ## A078943.P1742442989243362119

`A113880(n)+1`
-/

namespace A078943.P1742442989243362119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113880 n + 1

end

end A078943.P1742442989243362119

/-! ## A078943.P16175543916772556476

`A118201(n)+1`
-/

namespace A078943.P16175543916772556476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n + 1

end

end A078943.P16175543916772556476

/-! ## A078943.P10152290350899892373

`A274647(n)+1`
-/

namespace A078943.P10152290350899892373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274647 n + 1

end

end A078943.P10152290350899892373

/-!
# A078944: First column of A078939, the fourth power of lower triangular matrix A056857.

The programs for A078944, there is no canonical definition to state claims against.
-/

/-! ## A078944.P10871701156312135063

`A078939(∑[n])`
-/

namespace A078944.P10871701156312135063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078944.P10871701156312135063

/-! ## A078944.P1996060858812109090

`A189233(A155212(n)+12)`
-/

namespace A078944.P1996060858812109090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A155212 n + 12).toNat

end

end A078944.P1996060858812109090

/-! ## A078944.P1827924546253905685

`A189233(eq[4, A002262(n)])`
-/

namespace A078944.P1827924546253905685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078944.P1827924546253905685

/-! ## A078944.P2146011635293103812

`A189233(eq[2, A144328(n+1)-2])`
-/

namespace A078944.P2146011635293103812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078944.P2146011635293103812

/-! ## A078944.P8687876851942087094

`A189233(eq[2, A144328(n+1)/2])`
-/

namespace A078944.P8687876851942087094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A078944.P8687876851942087094

/-! ## A078944.P16009676596081604010

`A189233(A133263(n+4)+3-A260438(2*(n+1)))`
-/

namespace A078944.P16009676596081604010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A133263 (n + 4) + 3 - A260438 (2 * (n + 1))).toNat

end

end A078944.P16009676596081604010

/-! ## A078944.P4865793780415484747

`record[A292860(A052905(n))]`
-/

namespace A078944.P4865793780415484747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078944.P4865793780415484747

/-! ## A078944.P4553721160306297859

`A292860(A052905(n+2))`
-/

namespace A078944.P4553721160306297859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A052905 (n + 2)).toNat

end

end A078944.P4553721160306297859

/-! ## A078944.P10491650398897312025

`A292860(eq[4, A025581(n)])`
-/

namespace A078944.P10491650398897312025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078944.P10491650398897312025

/-! ## A078944.P16991350428584335398

`record[A292860(A055999(n)+1)]`
-/

namespace A078944.P16991350428584335398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078944.P16991350428584335398

/-!
# A078945: Row sums of A078939.

The programs for A078945, there is no canonical definition to state claims against.
-/

/-! ## A078945.P5738755858738254579

`A078944(n+1)/4`
-/

namespace A078945.P5738755858738254579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078944 (n + 1) : ℚ) / 4

end

end A078945.P5738755858738254579

/-! ## A078945.P3544904808690315461

`A078939(∑[n+1])/4`
-/

namespace A078945.P3544904808690315461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078939 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A078945.P3544904808690315461

/-! ## A078945.P6753972456584668856

`A335975(∑[n+5]+5)`
-/

namespace A078945.P6753972456584668856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A078945.P6753972456584668856

/-! ## A078945.P5307494897968506303

`A292860(A052905(n+3))/4`
-/

namespace A078945.P5307494897968506303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292860 (A052905 (n + 3)).toNat : ℚ) / 4

end

end A078945.P5307494897968506303

/-! ## A078945.P9165153053937792931

`A292860(A000096(n+5)-4)/4`
-/

namespace A078945.P9165153053937792931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292860 (A000096 (n + 5) - 4).toNat : ℚ) / 4

end

end A078945.P9165153053937792931

/-! ## A078945.P14682891099410702982

`A292860(A000217(n+6)-5)/4`
-/

namespace A078945.P14682891099410702982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292860 (A000217 (n + 6) - 5).toNat : ℚ) / 4

end

end A078945.P14682891099410702982

/-! ## A078945.P12168270497231708050

`A292860(A020705(n)²-A000096(n))/4`
-/

namespace A078945.P12168270497231708050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292860 (A020705 n ^ 2 - A000096 n).toNat : ℚ) / 4

end

end A078945.P12168270497231708050

/-!
# A078946: Primes p such that p, p+2, p+6, p+12 and p+14 are consecutive primes.

The programs for A078946, there is no canonical definition to state claims against.
-/

/-! ## A078946.P17628503053402614164

`∑[A342502(n+1)]+5`
-/

namespace A078946.P17628503053402614164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A078946.P17628503053402614164

/-! ## A078946.P9032975431294437468

`∩[A078847(n+1), A276848(n+1)]`
-/

namespace A078946.P9032975431294437468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P9032975431294437468

/-! ## A078946.P145771449785578544

`∩[A276848(n+1), A290706(n+1)-12]`
-/

namespace A078946.P145771449785578544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290706 (n + 1) - 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P145771449785578544

/-! ## A078946.P17086944437487341496

`∩[A078847(n+1), A079292(n+1)]`
-/

namespace A078946.P17086944437487341496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P17086944437487341496

/-! ## A078946.P2559021511165317958

`∩[A079292(n+1), A172454(n+2)]`
-/

namespace A078946.P2559021511165317958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P2559021511165317958

/-! ## A078946.P10658843831135626948

`∩[A078847(n+1), A089629(n+1)]`
-/

namespace A078946.P10658843831135626948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P10658843831135626948

/-! ## A078946.P13781424491111368239

`∩[A078847(n+1), A105411(n+1)]`
-/

namespace A078946.P13781424491111368239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P13781424491111368239

/-! ## A078946.P13043982937959300836

`∩[A089629(n+1), A172454(n+1)]`
-/

namespace A078946.P13043982937959300836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P13043982937959300836

/-! ## A078946.P11083542455786712780

`∩[A105411(n+1), A172454(n+1)]`
-/

namespace A078946.P11083542455786712780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P11083542455786712780

/-! ## A078946.P16879617061883594879

`∩[A172454(n+1), A190792(n+1)-2]`
-/

namespace A078946.P16879617061883594879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P16879617061883594879

/-! ## A078946.P17952914667598532055

`∩[A022004(n+1), A190792(n+1)-2]`
-/

namespace A078946.P17952914667598532055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P17952914667598532055

/-! ## A078946.P6912233581543172569

`∩[A046118(n+1), A079292(n+1)]`
-/

namespace A078946.P6912233581543172569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P6912233581543172569

/-! ## A078946.P16848828157120635198

`∩[A046118(n+1), A089629(n+1)]`
-/

namespace A078946.P16848828157120635198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P16848828157120635198

/-! ## A078946.P7013085043804564858

`∩[A046118(n+1), A105411(n+1)]`
-/

namespace A078946.P7013085043804564858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P7013085043804564858

/-! ## A078946.P8874312164489212138

`∩[A046118(n+1), A276848(n+1)]`
-/

namespace A078946.P8874312164489212138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P8874312164489212138

/-! ## A078946.P13912751528220314742

`∩[A190792(n+1)-2, A341357(n+1)]`
-/

namespace A078946.P13912751528220314742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P13912751528220314742

/-! ## A078946.P10270228453284920874

`∩[A023241(n+1), A089629(n+1)]`
-/

namespace A078946.P10270228453284920874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P10270228453284920874

/-! ## A078946.P12950116273016712930

`∩[A023241(n+1), A105411(n+1)]`
-/

namespace A078946.P12950116273016712930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P12950116273016712930

/-! ## A078946.P9357405716806053448

`∩[A181605(n+1), A276848(n+1)]`
-/

namespace A078946.P9357405716806053448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P9357405716806053448

/-! ## A078946.P14040820507260047747

`∩[A276848(n+1), A282323(n+1)]`
-/

namespace A078946.P14040820507260047747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078946.P14040820507260047747

/-!
# A078947: Primes p such that the differences between the 5 consecutive primes starting with p are (2,4,6,6).

The programs for A078947, there is no canonical definition to state claims against.
-/

/-! ## A078947.P998538738227048831

`∩[A023271(n+1), A078847(n+1)]`
-/

namespace A078947.P998538738227048831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078947.P998538738227048831

/-! ## A078947.P2141727174037207239

`p?[A078852(n+1)-2]`
-/

namespace A078947.P2141727174037207239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078852 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078947.P2141727174037207239

/-! ## A078947.P4566198533548218361

`p?[p?[A047948(n+1)-4]-2]`
-/

namespace A078947.P4566198533548218361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078947.P4566198533548218361

/-! ## A078947.P9363189609107623581

`p?[p?[A053070(n+1)-10]-2]`
-/

namespace A078947.P9363189609107623581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078947.P9363189609107623581

/-! ## A078947.P2611886029142457946

`p?[p?[A181424(n+1)-16]-2]`
-/

namespace A078947.P2611886029142457946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078947.P2611886029142457946

/-!
# A078948: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,4,2).

The programs for A078948, there is no canonical definition to state claims against.
-/

/-! ## A078948.P15895669900073885768

`∩[A078848(n+1), A276848(n+1)]`
-/

namespace A078948.P15895669900073885768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P15895669900073885768

/-! ## A078948.P9940267771399150041

`∩[A078848(n+1), A079292(n+1)]`
-/

namespace A078948.P9940267771399150041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P9940267771399150041

/-! ## A078948.P5067929687737377127

`∩[A078848(n+1), A089629(n+1)]`
-/

namespace A078948.P5067929687737377127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P5067929687737377127

/-! ## A078948.P6390307977267678293

`∩[A078848(n+1), A105411(n+1)]`
-/

namespace A078948.P6390307977267678293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P6390307977267678293

/-! ## A078948.P12106626589086148770

`∩[A089629(n+1), A233540(n+1)]`
-/

namespace A078948.P12106626589086148770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P12106626589086148770

/-! ## A078948.P3785570556062751872

`∩[A105411(n+1), A233540(n+1)]`
-/

namespace A078948.P3785570556062751872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P3785570556062751872

/-! ## A078948.P9549864469511006034

`∩[A190792(n+1)-2, A233540(n+1)]`
-/

namespace A078948.P9549864469511006034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P9549864469511006034

/-! ## A078948.P299674741558813220

`∩[A049437(n+1), A079292(n+1)]`
-/

namespace A078948.P299674741558813220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P299674741558813220

/-! ## A078948.P1448312162312800314

`∩[A049437(n+1), A190792(n+1)-2]`
-/

namespace A078948.P1448312162312800314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P1448312162312800314

/-! ## A078948.P14202174625785171441

`∩[A079292(n+1), A345213(n+1)]`
-/

namespace A078948.P14202174625785171441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P14202174625785171441

/-! ## A078948.P4112160783208114566

`∩[A190792(n+1)-2, A345213(n+1)]`
-/

namespace A078948.P4112160783208114566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P4112160783208114566

/-! ## A078948.P16474427843281341094

`∩[A046141(n+1), A089629(n+1)]`
-/

namespace A078948.P16474427843281341094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P16474427843281341094

/-! ## A078948.P8656187373949462680

`∩[A046141(n+1), A105411(n+1)]`
-/

namespace A078948.P8656187373949462680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P8656187373949462680

/-! ## A078948.P5594044879965616202

`∩[A046134(n+1), A190792(n+1)-2]`
-/

namespace A078948.P5594044879965616202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P5594044879965616202

/-! ## A078948.P7895966082453986001

`∩[A023241(n+1)-2, A089629(n+1)]`
-/

namespace A078948.P7895966082453986001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P7895966082453986001

/-! ## A078948.P5108444790408412208

`∩[A023241(n+2)-2, A046135(n+2)]`
-/

namespace A078948.P5108444790408412208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P5108444790408412208

/-! ## A078948.P12626283208574709328

`∩[A060229(n+1), A276848(n+1)]`
-/

namespace A078948.P12626283208574709328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P12626283208574709328

/-! ## A078948.P2907245153550135171

`∩[A030433(n+1), A276848(n+1)]`
-/

namespace A078948.P2907245153550135171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078948.P2907245153550135171

/-!
# A078949: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,4,6).

The programs for A078949, there is no canonical definition to state claims against.
-/

/-! ## A078949.P627544659748049468

`∩[A046134(n+1), A293395(n+1)]`
-/

namespace A078949.P627544659748049468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P627544659748049468

/-! ## A078949.P3839317804772586185

`∩[A046141(n+1), A293395(n+1)]`
-/

namespace A078949.P3839317804772586185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P3839317804772586185

/-! ## A078949.P16712514010520252344

`∩[A049437(n+1), A293395(n+1)]`
-/

namespace A078949.P16712514010520252344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P16712514010520252344

/-! ## A078949.P2524211468870517737

`∩[A078848(n+1), A293395(n+1)]`
-/

namespace A078949.P2524211468870517737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P2524211468870517737

/-! ## A078949.P1927652311787860941

`∩[A233540(n+1), A293395(n+1)]`
-/

namespace A078949.P1927652311787860941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P1927652311787860941

/-! ## A078949.P9681720844227670702

`∩[A293395(n+1), A345213(n+1)]`
-/

namespace A078949.P9681720844227670702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P9681720844227670702

/-! ## A078949.P8069106511969786903

`∩[A078856(n+1)-2, A293395(n+1)]`
-/

namespace A078949.P8069106511969786903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P8069106511969786903

/-! ## A078949.P10299124816424674148

`∩[A049436(n+1), A293395(n+1)]`
-/

namespace A078949.P10299124816424674148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078949.P10299124816424674148

/-! ## A078949.P264178939730630824

`p?[A078856(n+1)-2]`
-/

namespace A078949.P264178939730630824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078949.P264178939730630824

/-!
# A078950: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,6,4).

The programs for A078950, there is no canonical definition to state claims against.
-/

/-! ## A078950.P6183989667873873737

`∩[A078849(n+1), A078858(n+1)-2]`
-/

namespace A078950.P6183989667873873737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078950.P6183989667873873737

/-! ## A078950.P8246125036172108976

`p?[A078858(n+1)-2]`
-/

namespace A078950.P8246125036172108976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078950.P8246125036172108976

/-! ## A078950.P17075175223012618073

`p?[p?[A078562(n+1)-6]-2]`
-/

namespace A078950.P17075175223012618073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078950.P17075175223012618073

/-! ## A078950.P3715095094474037087

`p?[A118824(2*n+5)+A078858(n+1)]`
-/

namespace A078950.P3715095094474037087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 5) + A078858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078950.P3715095094474037087

/-! ## A078950.P12897599885325668237

`record[A020639(A078858(n+1)-2)]`
-/

namespace A078950.P12897599885325668237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078858 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078950.P12897599885325668237

/-!
# A078951: Primes p such that the differences between the 5 consecutive primes starting with p are (2,6,6,6).

The programs for A078951, there is no canonical definition to state claims against.
-/

/-! ## A078951.P2968252580492050242

`∩[A033451(n+1)-2, A078849(n+1)]`
-/

namespace A078951.P2968252580492050242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078951.P2968252580492050242

/-! ## A078951.P13332551270154119563

`p?[A033449(n+1)-2]`
-/

namespace A078951.P13332551270154119563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078951.P13332551270154119563

/-! ## A078951.P14855399277555498083

`p?[A033451(n+1)-2]`
-/

namespace A078951.P14855399277555498083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078951.P14855399277555498083

/-! ## A078951.P12390753163476278374

`p?[A090837(n+1)-2]`
-/

namespace A078951.P12390753163476278374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090837 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078951.P12390753163476278374

/-! ## A078951.P14901688443044042481

`p?[A054801(n+1)-8]`
-/

namespace A078951.P14901688443044042481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078951.P14901688443044042481

/-!
# A078952: Primes p such that the differences between the 5 consecutive primes starting with p are (4,2,4,6).

The programs for A078952, there is no canonical definition to state claims against.
-/

/-! ## A078952.P10731573022280779970

`∩[A052378(n+1), A078847(n+1)-4]`
-/

namespace A078952.P10731573022280779970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078952.P10731573022280779970

/-! ## A078952.P12586313833266218145

`p?[A078847(n+1)-4]`
-/

namespace A078952.P12586313833266218145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P12586313833266218145

/-! ## A078952.P7495668085401324844

`p?[A290706(n+1)-16]`
-/

namespace A078952.P7495668085401324844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290706 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P7495668085401324844

/-! ## A078952.P693350866662812582

`p?[p?[A078561(n+1)-2]-4]`
-/

namespace A078952.P693350866662812582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P693350866662812582

/-! ## A078952.P7923329251107212072

`p?[∩[A022004(n+1), A190792(n+1)]-4]`
-/

namespace A078952.P7923329251107212072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P7923329251107212072

/-! ## A078952.P17009032725830466023

`p?[∩[A190792(n+1), A341357(n+1)]-4]`
-/

namespace A078952.P17009032725830466023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P17009032725830466023

/-! ## A078952.P8413034161786426873

`p?[∩[A023241(n+1), A286313(n+1)-2]-4]`
-/

namespace A078952.P8413034161786426873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078952.P8413034161786426873

/-!
# A078953: Primes p such that the differences between the 5 consecutive primes starting with p are (4,2,6,4).

The programs for A078953, there is no canonical definition to state claims against.
-/

/-! ## A078953.P9957473033551769097

`∩[A078850(n+1), A384298(n+1)]`
-/

namespace A078953.P9957473033551769097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078953.P9957473033551769097

/-! ## A078953.P13614663534258324935

`∩[A052164(n+1), A384298(n+1)]`
-/

namespace A078953.P13614663534258324935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078953.P13614663534258324935

/-! ## A078953.P9677444998626662875

`∩[A049492(n+1), A078850(n+1)]`
-/

namespace A078953.P9677444998626662875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078953.P9677444998626662875

/-! ## A078953.P173571826433910901

`p?[A078848(n+1)-4]`
-/

namespace A078953.P173571826433910901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078953.P173571826433910901

/-! ## A078953.P968476492318191470

`p?[∩[A046141(n+1), A049437(n+1)]-4]`
-/

namespace A078953.P968476492318191470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078953.P968476492318191470

/-!
# A078954: Primes p such that the differences between the 5 consecutive primes starting with p are (4,6,2,4).

The programs for A078954, there is no canonical definition to state claims against.
-/

/-! ## A078954.P10645457226354705725

`∩[A078851(n+1), A384298(n+1)]`
-/

namespace A078954.P10645457226354705725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078954.P10645457226354705725

/-! ## A078954.P3234695919165057446

`∩[A078851(n+1), A078853(n+1)-4]`
-/

namespace A078954.P3234695919165057446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078853 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078954.P3234695919165057446

/-! ## A078954.P13769587732376785735

`∩[A049492(n+1), A078851(n+1)]`
-/

namespace A078954.P13769587732376785735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078954.P13769587732376785735

/-! ## A078954.P6017248726449899352

`∩[A078561(n+1), A384298(n+1)]`
-/

namespace A078954.P6017248726449899352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078954.P6017248726449899352

/-! ## A078954.P8247327670647524293

`p?[A078853(n+1)-4]`
-/

namespace A078954.P8247327670647524293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078853 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078954.P8247327670647524293

/-!
# A078955: Primes p such that the differences between the 5 consecutive primes starting with p are (4,6,2,6).

The programs for A078955, there is no canonical definition to state claims against.
-/

/-! ## A078955.P15730076795637213561

`p?[A078854(n+1)-4]`
-/

namespace A078955.P15730076795637213561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078955.P15730076795637213561

/-! ## A078955.P6760796111898565097

`p?[A258879(n+1)-11]`
-/

namespace A078955.P6760796111898565097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258879 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078955.P6760796111898565097

/-! ## A078955.P76160107165800149

`p?[A140565(2*n+1)-4]`
-/

namespace A078955.P76160107165800149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (2 * n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078955.P76160107165800149

/-! ## A078955.P17541208392993960434

`p?[or(1, A140565(A016813(n))-4)]`
-/

namespace A078955.P17541208392993960434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140565 (A016813 n).toNat - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078955.P17541208392993960434

/-! ## A078955.P14360188909231141989

`p?[A140565(A016813(n))-4-A000007(n)]`
-/

namespace A078955.P14360188909231141989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (A016813 n).toNat - 4 - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078955.P14360188909231141989

/-!
# A078956: Primes p such that the differences between the 5 consecutive primes starting with p are (4,6,6,2).

The programs for A078956, there is no canonical definition to state claims against.
-/

/-! ## A078956.P7177641238473457400

`∩[A078852(n+1), A078857(n+1)-4]`
-/

namespace A078956.P7177641238473457400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078956.P7177641238473457400

/-! ## A078956.P9298429345809666338

`p?[A078857(n+1)-4]`
-/

namespace A078956.P9298429345809666338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078956.P9298429345809666338

/-! ## A078956.P3283337841730600490

`∩[A078852(n+1), A153418(n+1)]`
-/

namespace A078956.P3283337841730600490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078956.P3283337841730600490

/-! ## A078956.P6496648802519750300

`record[A006530(A078857(n+1)-4)]`
-/

namespace A078956.P6496648802519750300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078857 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078956.P6496648802519750300

/-! ## A078956.P3681800749745387976

`record[A020639(A078857(n+1)-4)]`
-/

namespace A078956.P3681800749745387976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078857 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078956.P3681800749745387976

/-!
# A078957: Primes p such that the differences between the 5 consecutive primes starting with p are (4,6,6,6).

The programs for A078957, there is no canonical definition to state claims against.
-/

/-! ## A078957.P15083827102577666666

`p?[A033449(n+1)-4]`
-/

namespace A078957.P15083827102577666666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078957.P15083827102577666666

/-! ## A078957.P5411928188108770206

`p?[A033451(n+1)-4]`
-/

namespace A078957.P5411928188108770206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078957.P5411928188108770206

/-! ## A078957.P4985598353596683536

`p?[A090834(n+1)-4]`
-/

namespace A078957.P4985598353596683536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090834 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078957.P4985598353596683536

/-! ## A078957.P16665100880983191095

`p?[A054801(n+1)-10]`
-/

namespace A078957.P16665100880983191095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078957.P16665100880983191095

/-! ## A078957.P3172567154439645245

`p?[A173892(n+1)-10]`
-/

namespace A078957.P3172567154439645245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173892 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078957.P3172567154439645245

/-!
# A078958: Primes p such that the differences between the 5 consecutive primes starting with p are (6,2,4,6).

The programs for A078958, there is no canonical definition to state claims against.
-/

/-! ## A078958.P3647586486576149308

`∩[A023271(n+1), A078853(n+1)]`
-/

namespace A078958.P3647586486576149308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078958.P3647586486576149308

/-! ## A078958.P7436344414343024273

`∩[A046122(n+1)-6, A078853(n+1)]`
-/

namespace A078958.P7436344414343024273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078958.P7436344414343024273

/-! ## A078958.P5198051652392783341

`∩[A023271(n+1), A049438(n+1)]`
-/

namespace A078958.P5198051652392783341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078958.P5198051652392783341

/-! ## A078958.P1060703294677433951

`∩[A023271(n+1), A355727(n+1)]`
-/

namespace A078958.P1060703294677433951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078958.P1060703294677433951

/-! ## A078958.P1685692138770336383

`∩[A078853(n+1), A275682(n+1)]`
-/

namespace A078958.P1685692138770336383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078958.P1685692138770336383

/-!
# A078959: Primes p such that the differences between the 5 consecutive primes starting with p are (6,2,6,4).

The programs for A078959, there is no canonical definition to state claims against.
-/

/-! ## A078959.P8839619983553400496

`∩[A078848(n+1)-6, A078854(n+1)]`
-/

namespace A078959.P8839619983553400496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078959.P8839619983553400496

/-! ## A078959.P13526762003776499747

`p?[A078848(n+1)-6]`
-/

namespace A078959.P13526762003776499747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078959.P13526762003776499747

/-! ## A078959.P12613843563400453783

`p?[A233540(n+3)-6]`
-/

namespace A078959.P12613843563400453783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 3) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078959.P12613843563400453783

/-! ## A078959.P4510352319720542988

`p?[∩[A046141(n+1), A049437(n+1)]-6]`
-/

namespace A078959.P4510352319720542988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078959.P4510352319720542988

/-! ## A078959.P6384176166424863269

`∩[A078854(n+1), A153418(n+1)]`
-/

namespace A078959.P6384176166424863269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078959.P6384176166424863269

/-!
# A078960: Primes p such that the differences between the 5 consecutive primes starting with p are (6,2,6,6).

The programs for A078960, there is no canonical definition to state claims against.
-/

/-! ## A078960.P10266222226023307942

`∩[A078849(n+1)-6, A078854(n+1)]`
-/

namespace A078960.P10266222226023307942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078849 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078960.P10266222226023307942

/-! ## A078960.P7513292784722792907

`p?[A078849(n+1)-6]`
-/

namespace A078960.P7513292784722792907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078849 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078960.P7513292784722792907

/-! ## A078960.P3998160522030468769

`p?[p?[A047948(n+1)-2]-6]`
-/

namespace A078960.P3998160522030468769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078960.P3998160522030468769

/-! ## A078960.P11676729762838476431

`p?[p?[A006562(n+1)-8]-6]`
-/

namespace A078960.P11676729762838476431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078960.P11676729762838476431

/-! ## A078960.P2053808811824684202

`p?[p?[A000040(A219096(n+1))-2]-6]`
-/

namespace A078960.P2053808811824684202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A219096 (n + 1)).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078960.P2053808811824684202

/-!
# A078961: Primes p such that the differences between the 5 consecutive primes starting with p are (6,4,2,4).

The programs for A078961, there is no canonical definition to state claims against.
-/

/-! ## A078961.P15207358319206306471

`∩[A078855(n+1), A382810(n+1)]`
-/

namespace A078961.P15207358319206306471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078961.P15207358319206306471

/-! ## A078961.P9638880863658291886

`∩[A190792(n+1), A382810(n+1)]`
-/

namespace A078961.P9638880863658291886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078961.P9638880863658291886

/-! ## A078961.P14481544788959318236

`∩[A049488(n+1), A078855(n+1)]`
-/

namespace A078961.P14481544788959318236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078961.P14481544788959318236

/-! ## A078961.P13680396196826907828

`∩[A049488(n+1), A290635(n+1)-12]`
-/

namespace A078961.P13680396196826907828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290635 (n + 1) - 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078961.P13680396196826907828

/-! ## A078961.P191830715661356267

`∩[A054804(n+1), A382810(n+1)]`
-/

namespace A078961.P191830715661356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078961.P191830715661356267

/-!
# A078962: Primes p such that the differences between the 5 consecutive primes starting with p are (6,4,2,6).

The programs for A078962, there is no canonical definition to state claims against.
-/

/-! ## A078962.P17922813499124810657

`∩[A078562(n+1), A345213(n+1)-10]`
-/

namespace A078962.P17922813499124810657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1) - 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078962.P17922813499124810657

/-! ## A078962.P5060625254257570934

`p?[A078850(n+1)-6]`
-/

namespace A078962.P5060625254257570934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078850 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078962.P5060625254257570934

/-! ## A078962.P14214406962027581034

`p?[p?[A049437(n+1)-4]-6]`
-/

namespace A078962.P14214406962027581034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078962.P14214406962027581034

/-! ## A078962.P6252362427505305605

`p?[p?[A073650(n+1)-6]-6]`
-/

namespace A078962.P6252362427505305605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073650 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078962.P6252362427505305605

/-! ## A078962.P13934193719909383479

`p?[p?[p?[A117876(n+1)-2]-4]-6]`
-/

namespace A078962.P13934193719909383479
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117876 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078962.P13934193719909383479

/-!
# A078963: Primes p such that the differences between the 5 consecutive primes starting with p are (6,4,6,2).

The programs for A078963, there is no canonical definition to state claims against.
-/

/-! ## A078963.P6502841340000589432

`∩[A078851(n+1)-6, A078856(n+1)]`
-/

namespace A078963.P6502841340000589432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078851 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078963.P6502841340000589432

/-! ## A078963.P17697591112471705133

`∩[A049438(n+1)-10, A078856(n+1)]`
-/

namespace A078963.P17697591112471705133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078963.P17697591112471705133

/-! ## A078963.P13114595521936339526

`∩[A049438(n+1)-10, A078562(n+1)]`
-/

namespace A078963.P13114595521936339526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078963.P13114595521936339526

/-! ## A078963.P11612925531130103862

`∩[A078856(n+1), A293395(n+1)]`
-/

namespace A078963.P11612925531130103862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078963.P11612925531130103862

/-! ## A078963.P10472636347283651934

`∩[A293395(n+1), A382810(n+1)]`
-/

namespace A078963.P10472636347283651934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078963.P10472636347283651934

/-!
# A078964: Primes p such that the differences between the 5 consecutive primes starting with p are (6,4,6,6).

The programs for A078964, there is no canonical definition to state claims against.
-/

/-! ## A078964.P4598189512472072536

`∩[A078852(n+1)-6, A078856(n+1)]`
-/

namespace A078964.P4598189512472072536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078852 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078964.P4598189512472072536

/-! ## A078964.P16305991941779632226

`∩[A047948(n+1)-10, A078562(n+1)]`
-/

namespace A078964.P16305991941779632226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078964.P16305991941779632226

/-! ## A078964.P15208223299541480616

`∩[A022887(n+1), A078856(n+1)]`
-/

namespace A078964.P15208223299541480616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078964.P15208223299541480616

/-! ## A078964.P4415753010567636543

`∩[A022887(n+1), A382810(n+1)]`
-/

namespace A078964.P4415753010567636543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078964.P4415753010567636543

/-!
# A078965: Primes p such that the differences between the 5 consecutive primes starting with p are (6,6,2,6).

The programs for A078965, there is no canonical definition to state claims against.
-/

/-! ## A078965.P17504831884354025526

`∩[A078854(n+1)-6, A078857(n+1)]`
-/

namespace A078965.P17504831884354025526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P17504831884354025526

/-! ## A078965.P5616556314437262119

`∩[A078857(n+1), A384526(n+1)]`
-/

namespace A078965.P5616556314437262119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P5616556314437262119

/-! ## A078965.P9711846032123016463

`∩[A355727(n+1), A384526(n+1)]`
-/

namespace A078965.P9711846032123016463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P9711846032123016463

/-! ## A078965.P2250509392702181466

`∩[A047948(n+1), A384526(n+1)]`
-/

namespace A078965.P2250509392702181466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P2250509392702181466

/-! ## A078965.P2839493698085693777

`∩[A122535(n+1), A384526(n+1)]`
-/

namespace A078965.P2839493698085693777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P2839493698085693777

/-! ## A078965.P14270614694456645271

`∩[A022887(n+1), A078857(n+1)]`
-/

namespace A078965.P14270614694456645271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P14270614694456645271

/-! ## A078965.P12514012694572127714

`∩[A185938(n+1), A384526(n+1)]`
-/

namespace A078965.P12514012694572127714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P12514012694572127714

/-! ## A078965.P14777396161756242115

`∩[A078857(n+1), A153419(n+1)]`
-/

namespace A078965.P14777396161756242115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078965.P14777396161756242115

/-!
# A078966: Primes p such that the differences between the 5 consecutive primes starting with p are (6,6,4,2).

The programs for A078966, there is no canonical definition to state claims against.
-/

/-! ## A078966.P15291290130950595850

`∩[A078855(n+1)-6, A078858(n+1)]`
-/

namespace A078966.P15291290130950595850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078855 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078966.P15291290130950595850

/-! ## A078966.P5403378406822272995

`∩[A023271(n+1), A078858(n+1)]`
-/

namespace A078966.P5403378406822272995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078966.P5403378406822272995

/-! ## A078966.P9587162371155267288

`p?[A078855(n+1)-6]`
-/

namespace A078966.P9587162371155267288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078855 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078966.P9587162371155267288

/-! ## A078966.P461956327854384623

`p?[A290635(n+1)-18]`
-/

namespace A078966.P461956327854384623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290635 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078966.P461956327854384623

/-! ## A078966.P14510085625578342078

`p?[∩[A046139(n+1), A190792(n+1)]-6]`
-/

namespace A078966.P14510085625578342078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078966.P14510085625578342078

/-!
# A078967: Primes p such that the differences between the 5 consecutive primes starting with p are (6,6,4,6).

The programs for A078967, there is no canonical definition to state claims against.
-/

/-! ## A078967.P10649526262854436286

`∩[A078856(n+1)-6, A078858(n+1)]`
-/

namespace A078967.P10649526262854436286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078856 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078967.P10649526262854436286

/-!
# A078968: Primes p such that the differences between the 5 consecutive primes starting with p are (6,6,6,2).

The programs for A078968, there is no canonical definition to state claims against.
-/

/-! ## A078968.P15968607231396172929

`∩[A033451(n+1), A078857(n+1)-6]`
-/

namespace A078968.P15968607231396172929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078857 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078968.P15968607231396172929

/-! ## A078968.P7258751210120296899

`∩[A033451(n+1), A049438(n+1)-12]`
-/

namespace A078968.P7258751210120296899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1) - 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078968.P7258751210120296899

/-!
# A078969: Primes p such that the differences between the 5 consecutive primes starting with p are (6,6,6,4).

The programs for A078969, there is no canonical definition to state claims against.
-/

/-! ## A078969.P17448883858677350576

`∩[A033451(n+1), A078858(n+1)-6]`
-/

namespace A078969.P17448883858677350576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078969.P17448883858677350576

/-! ## A078969.P8402022539241492580

`p?[A078858(n+1)-6]`
-/

namespace A078969.P8402022539241492580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078858 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078969.P8402022539241492580

/-! ## A078969.P104566327470315119

`p?[∩[A047948(n+1), A078562(n+1)-6]-6]`
-/

namespace A078969.P104566327470315119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078969.P104566327470315119

/-!
# A078971: Numbers n such that C(4n,n)/(3n+1) (A002293) is not divisible by 4.

The programs for A078971, there is no canonical definition to state claims against.
-/

/-! ## A078971.P6994734466500349274

`∪[A002450(n), A113049(n)]`
-/

namespace A078971.P6994734466500349274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113049 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078971.P6994734466500349274

/-! ## A078971.P6553973420483773628

`record[round(A243573(n+1)/6)]`
-/

namespace A078971.P6553973420483773628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A243573 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078971.P6553973420483773628

/-! ## A078971.P16223812088605369461

`record[A072800(A057501(n))]`
-/

namespace A078971.P16223812088605369461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072800 (A057501 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078971.P16223812088605369461

/-! ## A078971.P17663646851344814116

`record[gcd(A003754(n+1), A060142(n))]`
-/

namespace A078971.P17663646851344814116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003754 (n + 1)) (A060142 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078971.P17663646851344814116

/-! ## A078971.P16407575693875581570

`lt[and(3*n+1, and(n, 3*n)), 2]`
-/

namespace A078971.P16407575693875581570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 * n + 1) (Nat.land n (3 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078971.P16407575693875581570

/-!
# A078972: Brilliant numbers: semiprimes (products of two primes, A001358) whose prime factors have the same number of decimal digits.

The programs for A078972, there is no canonical definition to state claims against.
-/

/-! ## A078972.P5550468000930062387

`A239585(n+1)*A239586(n+1)`
-/

namespace A078972.P5550468000930062387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239585 (n + 1) * A239586 (n + 1)

end

end A078972.P5550468000930062387

/-! ## A078972.P14775451921631406358

`∪[A001248(n+1), A085647(n+1)]`
-/

namespace A078972.P14775451921631406358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P14775451921631406358

/-! ## A078972.P12419643615964932198

`∪[A000040(n+1)², A085647(n+1)]`
-/

namespace A078972.P12419643615964932198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P12419643615964932198

/-! ## A078972.P4355095641547063956

`∩[A001358(n+1), A199009(n+1)]`
-/

namespace A078972.P4355095641547063956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P4355095641547063956

/-! ## A078972.P7848758981950205196

`∩[A001358(n+1), A162421(n+1)]`
-/

namespace A078972.P7848758981950205196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P7848758981950205196

/-! ## A078972.P9167099371356616718

`filter[A162421(n+1), A064911(#)]`
-/

namespace A078972.P9167099371356616718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078972.P9167099371356616718

/-! ## A078972.P8725875251245568002

`filter[A199009(n+1), A064911(#)]`
-/

namespace A078972.P8725875251245568002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078972.P8725875251245568002

/-! ## A078972.P11420250252931754145

`filter[A199009(n+1), A101040(#)]`
-/

namespace A078972.P11420250252931754145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A078972.P11420250252931754145

/-! ## A078972.P5284053553732349572

`∩[A162421(n+1), A176540(n+1)]`
-/

namespace A078972.P5284053553732349572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P5284053553732349572

/-! ## A078972.P3277630573197332066

`∩[A176540(n+1), A199009(n+1)]`
-/

namespace A078972.P3277630573197332066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P3277630573197332066

/-! ## A078972.P17118677811409485814

`∪[A085647(n+1), A236024(n+1)]`
-/

namespace A078972.P17118677811409485814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P17118677811409485814

/-! ## A078972.P3906960046819781399

`∩[A037143(n+1), A199009(n+1)]`
-/

namespace A078972.P3906960046819781399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078972.P3906960046819781399

/-!
# A078973: Total dimension of the homology of a free 2-step nilpotent Lie algebra of rank n.

The programs for A078973, there is no canonical definition to state claims against.
-/

/-! ## A078973.P9252982100165681993

`∏[A005430(n+1)/A152548(n)]`
-/

namespace A078973.P9252982100165681993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005430 (n + 1) : ℚ) / (A152548 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078973.P9252982100165681993

/-! ## A078973.P4501566583927647227

`A372145(2*n+1)/A006125(n+1)`
-/

namespace A078973.P4501566583927647227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372145 (2 * n + 1) : ℚ) / (A006125 (n + 1) : ℚ)

end

end A078973.P4501566583927647227

/-!
# A078978: Sequence is S(oo), where S(1)={1,2,3,4}, S(n+1)=S(n)S'(n) and S'(n) is obtained from S(n) by changing its last term using the cyclic permutation 1->2->3->4->1.

The programs for A078978, the canonical program `A078978.P13672447014390308062` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078978 has offset 1).

The definition of A078978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078978.P13672447014390308062

`dr(or(28, val(A003485(n), 2)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078978

/-- `dr(or(28, val(A003485(n), 2)))` -/
def P13672447014390308062.Spec : Prop :=
  ∀ n, (P13672447014390308062.a n : ℤ) = A078978 (n + 1)

theorem P13672447014390308062.correct : P13672447014390308062.Spec := by
  intro n
  simp only [A078978, Nat.add_sub_cancel]

end A078978

/-! ## A078978.P12047591051736008745

`A092412(n+1)+val((7^(n%4))%10, 3)`
-/

namespace A078978.P12047591051736008745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (n + 1) + (SequenceMachineLib.valuation (7 ^ (n % 4) % 10) 3 : ℤ)

end

end A078978.P12047591051736008745

namespace A078978

/-- `A092412(n+1)+val((7^(n%4))%10, 3)` -/
def P12047591051736008745.Spec : Prop :=
  ∀ n, P12047591051736008745.a n = A078978 (n + 1)

end A078978

/-! ## A078978.P1150388802592459508

`A010883(val(A003485(n), 2))`
-/

namespace A078978.P1150388802592459508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (SequenceMachineLib.valuation (A003485 n).toNat 2)

end

end A078978.P1150388802592459508

namespace A078978

/-- `A010883(val(A003485(n), 2))` -/
def P1150388802592459508.Spec : Prop :=
  ∀ n, P1150388802592459508.a n = A078978 (n + 1)

end A078978

/-! ## A078978.P9677603892811592317

`A005811(or(4, val(A003485(n), 2))+3)`
-/

namespace A078978.P9677603892811592317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.lor 4 (SequenceMachineLib.valuation (A003485 n).toNat 2) + 3)

end

end A078978.P9677603892811592317

namespace A078978

/-- `A005811(or(4, val(A003485(n), 2))+3)` -/
def P9677603892811592317.Spec : Prop :=
  ∀ n, P9677603892811592317.a n = A078978 (n + 1)

end A078978

/-! ## A078978.P12857365128184930075

`A001511(A053165(A003485(n)))`
-/

namespace A078978.P12857365128184930075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A053165 (A003485 n).toNat).toNat

end

end A078978.P12857365128184930075

namespace A078978

/-- `A001511(A053165(A003485(n)))` -/
def P12857365128184930075.Spec : Prop :=
  ∀ n, P12857365128184930075.a n = A078978 (n + 1)

end A078978

/-! ## A078978.P829363806820061348

`A001511(A032438(n)+A006530(A001511(n+1)))`
-/

namespace A078978.P829363806820061348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A032438 n + A006530 (A001511 (n + 1)).toNat).toNat

end

end A078978.P829363806820061348

namespace A078978

/-- `A001511(A032438(n)+A006530(A001511(n+1)))` -/
def P829363806820061348.Spec : Prop :=
  ∀ n, P829363806820061348.a n = A078978 (n + 1)

end A078978

/-!
# A078979: a(n) = A078711(n) - 1.

The programs for A078979, the canonical program `A078979.P9508410524524561952` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078979 has offset 1).

The definition of A078979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078979.P9508410524524561952

`A078711(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078979

/-- `A078711(n+1)-1` -/
def P9508410524524561952.Spec : Prop :=
  ∀ n, P9508410524524561952.a n = A078979 (n + 1)

theorem P9508410524524561952.correct : P9508410524524561952.Spec := by
  intro n
  simp only [A078979, Nat.add_sub_cancel]

end A078979

/-! ## A078979.P18432537028694765046

`val(∑[(n%3)!], 2)%3`
-/

namespace A078979.P18432537028694765046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 3

end

end A078979.P18432537028694765046

namespace A078979

/-- `val(∑[(n%3)!], 2)%3` -/
def P18432537028694765046.Spec : Prop :=
  ∀ n, (P18432537028694765046.a n : ℤ) = A078979 (n + 1)

theorem P18432537028694765046.correct : P18432537028694765046.Spec := by
  intro n
  simp only [A078979, Nat.add_sub_cancel, A078979.P18432537028694765046.f1, A078979.P18432537028694765046.a, A078979.P9508410524524561952.a, A078711, A078711.P7982440714869731280.f1, A078711.P7982440714869731280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078979

/-! ## A078979.P11149981258193077614

`val(comp[4*n+2]+1, 2)%3`
-/

namespace A078979.P11149981258193077614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2 % 3

end

end A078979.P11149981258193077614

namespace A078979

/-- `val(comp[4*n+2]+1, 2)%3` -/
def P11149981258193077614.Spec : Prop :=
  ∀ n, (P11149981258193077614.a n : ℤ) = A078979 (n + 1)

end A078979

/-! ## A078979.P17531455730186786998

`(val(n+1, 2)*C(n, 2)+n)%3`
-/

namespace A078979.P17531455730186786998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 * Nat.choose n 2 + n) % 3

end

end A078979.P17531455730186786998

namespace A078979

/-- `(val(n+1, 2)*C(n, 2)+n)%3` -/
def P17531455730186786998.Spec : Prop :=
  ∀ n, (P17531455730186786998.a n : ℤ) = A078979 (n + 1)

end A078979

/-! ## A078979.P9552841513364893262

`(a(lcm(2, 1-n)/2)+1)%(4-gcd(3, n))` with `a(0)=0`
-/

namespace A078979.P9552841513364893262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat + 1) (4 - (Nat.gcd 3 n : ℤ))

end

end A078979.P9552841513364893262

namespace A078979

/-- `(a(lcm(2, 1-n)/2)+1)%(4-gcd(3, n))` -/
def P9552841513364893262.Spec : Prop :=
  ∀ n, P9552841513364893262.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P17005691621064995114

`A096271(round(4*n/3))`
-/

namespace A078979.P17005691621064995114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat

end

end A078979.P17005691621064995114

namespace A078979

/-- `A096271(round(4*n/3))` -/
def P17005691621064995114.Spec : Prop :=
  ∀ n, P17005691621064995114.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P3514819753397137844

`(A100833(n+1)-1)%3`
-/

namespace A078979.P3514819753397137844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100833 (n + 1) - 1) 3

end

end A078979.P3514819753397137844

namespace A078979

/-- `(A100833(n+1)-1)%3` -/
def P3514819753397137844.Spec : Prop :=
  ∀ n, P3514819753397137844.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P7527808077128388668

`5%A078711(C(n+1, n))`
-/

namespace A078979.P7527808077128388668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A078711 (Nat.choose (n + 1) n))

end

end A078979.P7527808077128388668

namespace A078979

/-- `5%A078711(C(n+1, n))` -/
def P7527808077128388668.Spec : Prop :=
  ∀ n, P7527808077128388668.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P9270272975078807909

`A017293(val(∑[gcd(3, n+1)+1], 2))%3`
-/

namespace A078979.P9270272975078807909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017293 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2)) 3

end

end A078979.P9270272975078807909

namespace A078979

/-- `A017293(val(∑[gcd(3, n+1)+1], 2))%3` -/
def P9270272975078807909.Spec : Prop :=
  ∀ n, P9270272975078807909.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P14439107596554962750

`A078734(A004773(n+1))-1`
-/

namespace A078979.P14439107596554962750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A004773 (n + 1)).toNat - 1

end

end A078979.P14439107596554962750

namespace A078979

/-- `A078734(A004773(n+1))-1` -/
def P14439107596554962750.Spec : Prop :=
  ∀ n, P14439107596554962750.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P9498272984588398987

`A001513(n)%A078711(n+1)`
-/

namespace A078979.P9498272984588398987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A078711 (n + 1))

end

end A078979.P9498272984588398987

namespace A078979

/-- `A001513(n)%A078711(n+1)` -/
def P9498272984588398987.Spec : Prop :=
  ∀ n, P9498272984588398987.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P2363141116751196541

`A001538(n)%A078711(n+1)`
-/

namespace A078979.P2363141116751196541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A078711 (n + 1))

end

end A078979.P2363141116751196541

namespace A078979

/-- `A001538(n)%A078711(n+1)` -/
def P2363141116751196541.Spec : Prop :=
  ∀ n, P2363141116751196541.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P5813897765224770960

`A002146(n)%A078711(n+1)`
-/

namespace A078979.P5813897765224770960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A078711 (n + 1))

end

end A078979.P5813897765224770960

namespace A078979

/-- `A002146(n)%A078711(n+1)` -/
def P5813897765224770960.Spec : Prop :=
  ∀ n, P5813897765224770960.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P9636436026792320164

`A002148(n)%A078711(n+1)`
-/

namespace A078979.P9636436026792320164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A078711 (n + 1))

end

end A078979.P9636436026792320164

namespace A078979

/-- `A002148(n)%A078711(n+1)` -/
def P9636436026792320164.Spec : Prop :=
  ∀ n, P9636436026792320164.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P17904379275826908373

`A004538(n)%A078711(n+1)`
-/

namespace A078979.P17904379275826908373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A078711 (n + 1))

end

end A078979.P17904379275826908373

namespace A078979

/-- `A004538(n)%A078711(n+1)` -/
def P17904379275826908373.Spec : Prop :=
  ∀ n, P17904379275826908373.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P10287797477047867899

`A004767(n)%A078711(n+1)`
-/

namespace A078979.P10287797477047867899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A078711 (n + 1))

end

end A078979.P10287797477047867899

namespace A078979

/-- `A004767(n)%A078711(n+1)` -/
def P10287797477047867899.Spec : Prop :=
  ∀ n, P10287797477047867899.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P3027157749540346902

`A004771(n)%A078711(n+1)`
-/

namespace A078979.P3027157749540346902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (A078711 (n + 1))

end

end A078979.P3027157749540346902

namespace A078979

/-- `A004771(n)%A078711(n+1)` -/
def P3027157749540346902.Spec : Prop :=
  ∀ n, P3027157749540346902.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P15310460989567858150

`A005898(n)%A078711(n+1)`
-/

namespace A078979.P15310460989567858150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005898 n) (A078711 (n + 1))

end

end A078979.P15310460989567858150

namespace A078979

/-- `A005898(n)%A078711(n+1)` -/
def P15310460989567858150.Spec : Prop :=
  ∀ n, P15310460989567858150.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P3284807939070021598

`A005904(n)%A078711(n+1)`
-/

namespace A078979.P3284807939070021598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005904 n) (A078711 (n + 1))

end

end A078979.P3284807939070021598

namespace A078979

/-- `A005904(n)%A078711(n+1)` -/
def P3284807939070021598.Spec : Prop :=
  ∀ n, P3284807939070021598.a n = A078979 (n + 1)

end A078979

/-! ## A078979.P8360265698868433989

`A008390(n)%A078711(n+1)`
-/

namespace A078979.P8360265698868433989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008390 n) (A078711 (n + 1))

end

end A078979.P8360265698868433989

namespace A078979

/-- `A008390(n)%A078711(n+1)` -/
def P8360265698868433989.Spec : Prop :=
  ∀ n, P8360265698868433989.a n = A078979 (n + 1)

end A078979

/-!
# A078982: Denominators of continued fraction convergents to cosh(1).

The programs for A078982, there is no canonical definition to state claims against.
-/

/-! ## A078982.P11715211780602259175

`round(A078983(n)/cosh(1))`
-/

namespace A078982.P11715211780602259175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078983 n : ℝ) / Real.cosh (1 : ℝ))

end

end A078982.P11715211780602259175

/-!
# A078986: Chebyshev T(n,19) polynomial.

The programs for A078986, the canonical program `A078986.P15021320357365892867` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078986 has offset 0).

The definition of A078986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078986.P14905988091395734513

`ogf((1-19x)/(1-38x+x^2))`
-/

namespace A078986.P14905988091395734513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -19] [1, -38, 1] n

end

end A078986.P14905988091395734513

namespace A078986

/-- `ogf((1-19x)/(1-38x+x^2))` -/
def P14905988091395734513.Spec : Prop :=
  ∀ n, P14905988091395734513.a n = A078986 n

end A078986

/-! ## A078986.P15021320357365892867

`38*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078986

/-- `38*a(n-1)-a(n-2)` -/
def P15021320357365892867.Spec : Prop :=
  ∀ n, P15021320357365892867.a n = A078986 n

theorem P15021320357365892867.correct : P15021320357365892867.Spec := by
  intro n
  simp only [A078986]

end A078986

/-! ## A078986.P12432423281627518115

`A005667(2*n)`
-/

namespace A078986.P12432423281627518115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 (2 * n)

end

end A078986.P12432423281627518115

namespace A078986

/-- `A005667(2*n)` -/
def P12432423281627518115.Spec : Prop :=
  ∀ n, P12432423281627518115.a n = A078986 n

end A078986

/-! ## A078986.P4887260622135172041

`A343034(Δ[n²])`
-/

namespace A078986.P4887260622135172041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078986.P4887260622135172041

namespace A078986

/-- `A343034(Δ[n²])` -/
def P4887260622135172041.Spec : Prop :=
  ∀ n, P4887260622135172041.a n = A078986 n

end A078986

/-! ## A078986.P13493210855021010290

`Δ[A173127(n)/6]`
-/

namespace A078986.P13493210855021010290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173127 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078986.P13493210855021010290

namespace A078986

/-- `Δ[A173127(n)/6]` -/
def P13493210855021010290.Spec : Prop :=
  ∀ n, P13493210855021010290.a n = (A078986 n : ℚ)

end A078986

/-! ## A078986.P10380446859569503134

`2*A132593(n)+1`
-/

namespace A078986.P10380446859569503134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132593 n + 1

end

end A078986.P10380446859569503134

namespace A078986

/-- `2*A132593(n)+1` -/
def P10380446859569503134.Spec : Prop :=
  ∀ n, P10380446859569503134.a n = A078986 n

end A078986

/-! ## A078986.P9509417418220518598

`2*A247335(n)-1`
-/

namespace A078986.P9509417418220518598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247335 n - 1

end

end A078986.P9509417418220518598

namespace A078986

/-- `2*A247335(n)-1` -/
def P9509417418220518598.Spec : Prop :=
  ∀ n, P9509417418220518598.a n = A078986 n

end A078986

/-! ## A078986.P4827677395804852724

`A085447(2*n)/2`
-/

namespace A078986.P4827677395804852724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085447 (2 * n) : ℚ) / 2

end

end A078986.P4827677395804852724

namespace A078986

/-- `A085447(2*n)/2` -/
def P4827677395804852724.Spec : Prop :=
  ∀ n, P4827677395804852724.a n = (A078986 n : ℚ)

end A078986

/-! ## A078986.P16271101894709631605

`record[gcd(val(n+1, 2), A005667(n))]`
-/

namespace A078986.P16271101894709631605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A005667 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078986.P16271101894709631605

namespace A078986

/-- `record[gcd(val(n+1, 2), A005667(n))]` -/
def P16271101894709631605.Spec : Prop :=
  ∀ n, (P16271101894709631605.a n : ℤ) = A078986 n

end A078986

/-! ## A078986.P15637228973787127704

`record[A005667(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A078986.P15637228973787127704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A005667 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078986.P15637228973787127704

namespace A078986

/-- `record[A005667(C(n, a(n-1)))]` -/
def P15637228973787127704.Spec : Prop :=
  ∀ n, P15637228973787127704.a n = A078986 n

end A078986

/-!
# A078987: Chebyshev U(n,x) polynomial evaluated at x=19.

The programs for A078987, the canonical program `A078987.P4757325056334261773` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078987 has offset 0).

The definition of A078987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078987.P16961660494150578198

`ogf(1/(1-38x+x^2))`
-/

namespace A078987.P16961660494150578198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -38, 1] n

end

end A078987.P16961660494150578198

namespace A078987

/-- `ogf(1/(1-38x+x^2))` -/
def P16961660494150578198.Spec : Prop :=
  ∀ n, P16961660494150578198.a n = A078987 n

end A078987

/-! ## A078987.P4757325056334261773

`38*a(n-1)-a(n-2)` with `a(0)=1, a(1)=38`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078987

/-- `38*a(n-1)-a(n-2)` -/
def P4757325056334261773.Spec : Prop :=
  ∀ n, P4757325056334261773.a n = A078987 n

theorem P4757325056334261773.correct : P4757325056334261773.Spec := by
  intro n
  simp only [A078987]

end A078987

/-! ## A078987.P4135958486837370474

`∑{#}[floor(n/2), (-1)^#*C(n-#, #)*38^(n-2*#)]`
-/

namespace A078987.P4135958486837370474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) : ℚ) * (38 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A078987.P4135958486837370474

namespace A078987

/-- `∑{#}[floor(n/2), (-1)^#*C(n-#, #)*38^(n-2*#)]` -/
def P4135958486837370474.Spec : Prop :=
  ∀ n, P4135958486837370474.a n = (A078987 n : ℚ)

end A078987

/-! ## A078987.P14997796477870967659

`((19+6*sqrt(10))^(n+1)-(19-6*sqrt(10))^(n+1))/(12*sqrt(10))`
-/

namespace A078987.P14997796477870967659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((19 + 6 * Real.sqrt (10 : ℝ)) ^ (n + 1) - (19 - 6 * Real.sqrt (10 : ℝ)) ^ (n + 1)) / (12 * Real.sqrt (10 : ℝ))

end

end A078987.P14997796477870967659

namespace A078987

/-- `((19+6*sqrt(10))^(n+1)-(19-6*sqrt(10))^(n+1))/(12*sqrt(10))` -/
def P14997796477870967659.Spec : Prop :=
  ∀ n, P14997796477870967659.a n = (A078987 n : ℝ)

theorem P14997796477870967659.correct : P14997796477870967659.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078987, Nat.add_sub_cancel, A078987.P14997796477870967659.a, A078987.P4757325056334261773.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078987, Nat.add_sub_cancel, A078987.P14997796477870967659.a, A078987.P4757325056334261773.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078987

/-! ## A078987.P863247090283792697

`∑[A097315(n)]`
-/

namespace A078987.P863247090283792697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078987.P863247090283792697

namespace A078987

/-- `∑[A097315(n)]` -/
def P863247090283792697.Spec : Prop :=
  ∀ n, P863247090283792697.a n = A078987 n

end A078987

/-! ## A078987.P9798365081480222802

`A041683(Δ[n²])`
-/

namespace A078987.P9798365081480222802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078987.P9798365081480222802

namespace A078987

/-- `A041683(Δ[n²])` -/
def P9798365081480222802.Spec : Prop :=
  ∀ n, P9798365081480222802.a n = A078987 n

end A078987

/-! ## A078987.P17033062336255334464

`∑[A041067(2*n)]`
-/

namespace A078987.P17033062336255334464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078987.P17033062336255334464

namespace A078987

/-- `∑[A041067(2*n)]` -/
def P17033062336255334464.Spec : Prop :=
  ∀ n, P17033062336255334464.a n = A078987 n

end A078987

/-! ## A078987.P3837996491044983999

`∑[A041161(2*n)]`
-/

namespace A078987.P3837996491044983999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078987.P3837996491044983999

namespace A078987

/-- `∑[A041161(2*n)]` -/
def P3837996491044983999.Spec : Prop :=
  ∀ n, P3837996491044983999.a n = A078987 n

end A078987

/-! ## A078987.P7593723612113111212

`∑[A041683(2*n)]`
-/

namespace A078987.P7593723612113111212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078987.P7593723612113111212

namespace A078987

/-- `∑[A041683(2*n)]` -/
def P7593723612113111212.Spec : Prop :=
  ∀ n, P7593723612113111212.a n = A078987 n

end A078987

/-! ## A078987.P16207825109923873451

`∑[A005668(Δ[n²])]`
-/

namespace A078987.P16207825109923873451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078987.P16207825109923873451

namespace A078987

/-- `∑[A005668(Δ[n²])]` -/
def P16207825109923873451.Spec : Prop :=
  ∀ n, P16207825109923873451.a n = A078987 n

end A078987

/-!
# A078988: Chebyshev sequence with Diophantine property.

The programs for A078988, the canonical program `A078988.P13429261737595213920` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078988 has offset 0).

The definition of A078988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078988.P12998814944077636370

`ogf((1-x)/(1-66x+x^2))`
-/

namespace A078988.P12998814944077636370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -66, 1] n

end

end A078988.P12998814944077636370

namespace A078988

/-- `ogf((1-x)/(1-66x+x^2))` -/
def P12998814944077636370.Spec : Prop :=
  ∀ n, P12998814944077636370.a n = A078988 n

end A078988

/-! ## A078988.P13429261737595213920

`66*a(n-1)-a(n-2)` with `a(0)=1, a(1)=65`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078988

/-- `66*a(n-1)-a(n-2)` -/
def P13429261737595213920.Spec : Prop :=
  ∀ n, P13429261737595213920.a n = A078988 n

theorem P13429261737595213920.correct : P13429261737595213920.Spec := by
  intro n
  simp only [A078988]

end A078988

/-! ## A078988.P15532094975384643179

`A041025(2*n)`
-/

namespace A078988.P15532094975384643179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (2 * n)

end

end A078988.P15532094975384643179

namespace A078988

/-- `A041025(2*n)` -/
def P15532094975384643179.Spec : Prop :=
  ∀ n, P15532094975384643179.a n = A078988 n

end A078988

/-! ## A078988.P6840452620996357926

`A041119(2*n)`
-/

namespace A078988.P6840452620996357926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041119 (2 * n)

end

end A078988.P6840452620996357926

namespace A078988

/-- `A041119(2*n)` -/
def P6840452620996357926.Spec : Prop :=
  ∀ n, P6840452620996357926.a n = A078988 n

end A078988

/-! ## A078988.P1144921280745346343

`A041511(2*n)`
-/

namespace A078988.P1144921280745346343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041511 (2 * n)

end

end A078988.P1144921280745346343

namespace A078988

/-- `A041511(2*n)` -/
def P1144921280745346343.Spec : Prop :=
  ∀ n, P1144921280745346343.a n = A078988 n

end A078988

/-! ## A078988.P13307498787616773791

`A195564(3*n+1)`
-/

namespace A078988.P13307498787616773791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195564 (3 * n + 1)

end

end A078988.P13307498787616773791

namespace A078988

/-- `A195564(3*n+1)` -/
def P13307498787616773791.Spec : Prop :=
  ∀ n, P13307498787616773791.a n = A078988 n

end A078988

/-! ## A078988.P5035482970376404906

`Δ[A121740(n+1)/8]`
-/

namespace A078988.P5035482970376404906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121740 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078988.P5035482970376404906

namespace A078988

/-- `Δ[A121740(n+1)/8]` -/
def P5035482970376404906.Spec : Prop :=
  ∀ n, P5035482970376404906.a n = (A078988 n : ℚ)

end A078988

/-! ## A078988.P7208610742836614685

`A155197(2*n+1)/7`
-/

namespace A078988.P7208610742836614685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155197 (2 * n + 1) : ℚ) / 7

end

end A078988.P7208610742836614685

namespace A078988

/-- `A155197(2*n+1)/7` -/
def P7208610742836614685.Spec : Prop :=
  ∀ n, P7208610742836614685.a n = (A078988 n : ℚ)

end A078988

/-! ## A078988.P3454269719007435401

`record[gcd(val(n+1, 2), A041025(n))]`
-/

namespace A078988.P3454269719007435401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A041025 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078988.P3454269719007435401

namespace A078988

/-- `record[gcd(val(n+1, 2), A041025(n))]` -/
def P3454269719007435401.Spec : Prop :=
  ∀ n, (P3454269719007435401.a n : ℤ) = A078988 n

end A078988

/-! ## A078988.P6632373161152683047

`record[A041025(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A078988.P6632373161152683047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A041025 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078988.P6632373161152683047

namespace A078988

/-- `record[A041025(C(n, a(n-1)))]` -/
def P6632373161152683047.Spec : Prop :=
  ∀ n, P6632373161152683047.a n = A078988 n

end A078988

/-!
# A078989: Chebyshev sequence with Diophantine property.

The programs for A078989, the canonical program `A078989.P5235145267088269611` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078989 has offset 0).

The definition of A078989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078989.P2107082383462916845

`ogf((1+x)/(1-66x+x^2))`
-/

namespace A078989.P2107082383462916845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -66, 1] n

end

end A078989.P2107082383462916845

namespace A078989

/-- `ogf((1+x)/(1-66x+x^2))` -/
def P2107082383462916845.Spec : Prop :=
  ∀ n, P2107082383462916845.a n = A078989 n

end A078989

/-! ## A078989.P5235145267088269611

`66*a(n-1)-a(n-2)` with `a(0)=1, a(1)=67`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078989

/-- `66*a(n-1)-a(n-2)` -/
def P5235145267088269611.Spec : Prop :=
  ∀ n, P5235145267088269611.a n = A078989 n

theorem P5235145267088269611.correct : P5235145267088269611.Spec := by
  intro n
  simp only [A078989]

end A078989

/-! ## A078989.P16872532023291426976

`A041024(2*n)/4`
-/

namespace A078989.P16872532023291426976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041024 (2 * n) : ℚ) / 4

end

end A078989.P16872532023291426976

namespace A078989

/-- `A041024(2*n)/4` -/
def P16872532023291426976.Spec : Prop :=
  ∀ n, P16872532023291426976.a n = (A078989 n : ℚ)

end A078989

/-! ## A078989.P16846251448738704873

`A041118(2*n)/8`
-/

namespace A078989.P16846251448738704873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041118 (2 * n) : ℚ) / 8

end

end A078989.P16846251448738704873

namespace A078989

/-- `A041118(2*n)/8` -/
def P16846251448738704873.Spec : Prop :=
  ∀ n, P16846251448738704873.a n = (A078989 n : ℚ)

end A078989

/-! ## A078989.P14036051324732702753

`A086594(Δ[n²])/8`
-/

namespace A078989.P14036051324732702753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 8

end

end A078989.P14036051324732702753

namespace A078989

/-- `A086594(Δ[n²])/8` -/
def P14036051324732702753.Spec : Prop :=
  ∀ n, P14036051324732702753.a n = (A078989 n : ℚ)

end A078989

/-! ## A078989.P3145160441347336238

`∑[A086594(2*n)]-1`
-/

namespace A078989.P3145160441347336238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A078989.P3145160441347336238

namespace A078989

/-- `∑[A086594(2*n)]-1` -/
def P3145160441347336238.Spec : Prop :=
  ∀ n, P3145160441347336238.a n = A078989 n

end A078989

/-! ## A078989.P14684589708675726297

`A088317(2*n+1)/4`
-/

namespace A078989.P14684589708675726297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088317 (2 * n + 1) : ℚ) / 4

end

end A078989.P14684589708675726297

namespace A078989

/-- `A088317(2*n+1)/4` -/
def P14684589708675726297.Spec : Prop :=
  ∀ n, P14684589708675726297.a n = (A078989 n : ℚ)

end A078989

/-! ## A078989.P5250735542999056222

`A004298(n)-a(n-1)` with `a(0)=1`
-/

namespace A078989.P5250735542999056222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004298 n - a (n - 1)

end

end A078989.P5250735542999056222

namespace A078989

/-- `A004298(n)-a(n-1)` -/
def P5250735542999056222.Spec : Prop :=
  ∀ n, P5250735542999056222.a n = A078989 n

end A078989

/-! ## A078989.P6384955214257578426

`∑[2*A078988(n)]-A078988(n)`
-/

namespace A078989.P6384955214257578426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078988 n

end

end A078989.P6384955214257578426

namespace A078989

/-- `∑[2*A078988(n)]-A078988(n)` -/
def P6384955214257578426.Spec : Prop :=
  ∀ n, P6384955214257578426.a n = A078989 n

end A078989

/-! ## A078989.P5948440750911646961

`A041511(2*n+1)-A041511(2*n)`
-/

namespace A078989.P5948440750911646961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041511 (2 * n + 1) - A041511 (2 * n)

end

end A078989.P5948440750911646961

namespace A078989

/-- `A041511(2*n+1)-A041511(2*n)` -/
def P5948440750911646961.Spec : Prop :=
  ∀ n, P5948440750911646961.a n = A078989 n

end A078989

/-!
# A078991: Coefficients of the polynomials in the numerator of the generating function x/(1-x-x^2) for the Fibonacci sequence and its successive derivatives starting with the highest power of x.

The programs for A078991, there is no canonical definition to state claims against.
-/

/-! ## A078991.P3578595312631080358

`A078992(A271439(n))-A073424(n)`
-/

namespace A078991.P3578595312631080358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078992 (A271439 n).toNat - A073424 n

end

end A078991.P3578595312631080358

/-! ## A078991.P17876338572496013228

`A079461(A061579(n+1)-1)`
-/

namespace A078991.P17876338572496013228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079461 (A061579 (n + 1) - 1).toNat

end

end A078991.P17876338572496013228

/-! ## A078991.P1437567425141591832

`A079461(A114327(n+1)+n)`
-/

namespace A078991.P1437567425141591832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079461 (A114327 (n + 1) + (n : ℤ)).toNat

end

end A078991.P1437567425141591832

/-!
# A078992: Nonzero coefficients of the polynomials in the numerator of the generating function x/(1-x-x^2) for the Fibonacci sequence and its successive derivatives starting with the highest power of x.

The programs for A078992, there is no canonical definition to state claims against.
-/

/-! ## A078992.P1186955254097200768

`A078991(comp[∑[n+1]])`
-/

namespace A078992.P1186955254097200768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078991 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A078992.P1186955254097200768

/-! ## A078992.P6602888170100460114

`A079462(∑[2*n]%comp[∑[n]])`
-/

namespace A078992.P6602888170100460114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079462 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A078992.P6602888170100460114

/-! ## A078992.P1061741378912635027

`A079462(∑[char[∑[n]]]²-(n+1))`
-/

namespace A078992.P1061741378912635027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079462 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A078992.P1061741378912635027

/-! ## A078992.P15301570105363039325

`A079461(A185782(n+1)+n)`
-/

namespace A078992.P15301570105363039325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079461 (A185782 (n + 1) + (n : ℤ)).toNat

end

end A078992.P15301570105363039325

/-!
# A078994: Determinant of n X n matrix M(n) where m(i,i)=i if i>j, m(i,j)=i-j if j>i, m(i,j)=j-i.

The programs for A078994, there is no canonical definition to state claims against.
-/

/-! ## A078994.P14317202306134976666

`2-A131074(A279560(n))`
-/

namespace A078994.P14317202306134976666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131074 (A279560 n).toNat

end

end A078994.P14317202306134976666

/-! ## A078994.P14384270203354796490

`A124778(2*(n+2))-A071842(A174249(n))`
-/

namespace A078994.P14384270203354796490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (2 * (n + 2)) - A071842 (A174249 n).toNat

end

end A078994.P14384270203354796490

/-!
# A078995: a(n) = Sum_{k=0..n} C(4*k,k)*C(4*(n-k),n-k).

The programs for A078995, the canonical program `A078995.P18400072414629190553` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078995 has offset 0).

The definition of A078995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*#, #)*C(4*(n-#), n-#)]` (program `A078995.P18400072414629190553`, by `A078995.P18400072414629190553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078995.P10197310675829083200

`∑{#}[n, 3^(n-#)*C(4*n+1, #)]`
-/

namespace A078995.P10197310675829083200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ)

end

end A078995.P10197310675829083200

namespace A078995

/-- `∑{#}[n, 3^(n-#)*C(4*n+1, #)]` -/
def P10197310675829083200.Spec : Prop :=
  ∀ n, P10197310675829083200.a n = (A078995 n : ℚ)

end A078995

/-! ## A078995.P18400072414629190553

`∑{#}[n, C(4*#, #)*C(4*(n-#), n-#)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078995

/-- `∑{#}[n, C(4*#, #)*C(4*(n-#), n-#)]` -/
def P18400072414629190553.Spec : Prop :=
  ∀ n, (P18400072414629190553.a n : ℤ) = A078995 n

theorem P18400072414629190553.correct : P18400072414629190553.Spec := by
  intro n
  simp only [A078995]

end A078995

/-! ## A078995.P1358406517379654615

`A385251(n+1)-A386611(n)`
-/

namespace A078995.P1358406517379654615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385251 (n + 1) - A386611 n

end

end A078995.P1358406517379654615

namespace A078995

/-- `A385251(n+1)-A386611(n)` -/
def P1358406517379654615.Spec : Prop :=
  ∀ n, P1358406517379654615.a n = A078995 n

end A078995

/-! ## A078995.P6786256741089380212

`record[A358050(A052905(n))]`
-/

namespace A078995.P6786256741089380212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078995.P6786256741089380212

namespace A078995

/-- `record[A358050(A052905(n))]` -/
def P6786256741089380212.Spec : Prop :=
  ∀ n, P6786256741089380212.a n = A078995 n

end A078995

/-! ## A078995.P11177473015910176819

`A358050(A052905(n+2))`
-/

namespace A078995.P11177473015910176819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A052905 (n + 2)).toNat

end

end A078995.P11177473015910176819

namespace A078995

/-- `A358050(A052905(n+2))` -/
def P11177473015910176819.Spec : Prop :=
  ∀ n, P11177473015910176819.a n = A078995 n

end A078995

/-! ## A078995.P8137766378981226513

`A358050(A000217(n+5)-5)`
-/

namespace A078995.P8137766378981226513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A000217 (n + 5) - 5).toNat

end

end A078995.P8137766378981226513

namespace A078995

/-- `A358050(A000217(n+5)-5)` -/
def P8137766378981226513.Spec : Prop :=
  ∀ n, P8137766378981226513.a n = A078995 n

end A078995

/-!
# A078996: Triangle read by rows: let f(x) = x/(1-x-x^2); n-th row gives coefficients of denominator polynomial of n-th derivative f(x)^(n), with highest powers first, for n >= 0.

The programs for A078996, there is no canonical definition to state claims against.
-/

/-! ## A078996.P4459745116239781587

`A084610(A118980(floor(3/(n+1))+1)+n)`
-/

namespace A078996.P4459745116239781587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A118980 (⌊3 / (n + 1 : ℚ)⌋ + 1).toNat + (n : ℤ)).toNat

end

end A078996.P4459745116239781587

/-! ## A078996.P11220736331531953100

`A084610(round(3/A000040(n+1)+n+1))`
-/

namespace A078996.P11220736331531953100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (SequenceMachineLib.roundAway (3 / (A000040 (n + 1) : ℚ) + (n + 1 : ℚ))).toNat

end

end A078996.P11220736331531953100

/-! ## A078996.P14301564598203078823

`A084610(round(ratio[A000776(n)]))`
-/

namespace A078996.P14301564598203078823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A078996.P14301564598203078823

/-! ## A078996.P3515128824748875543

`A084610(n+1)/A033999(A103969(2*n+5))`
-/

namespace A078996.P3515128824748875543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084610 (n + 1) : ℚ) / (A033999 (A103969 (2 * n + 5)).toNat : ℚ)

end

end A078996.P3515128824748875543

/-!
# A078997: Nonzero coefficients of the polynomials in the denominator of the generating function x/(1-x-x^2) for the Fibonacci sequence and its successive derivatives starting with the highest power of x.

The programs for A078997, there is no canonical definition to state claims against.
-/

/-! ## A078997.P2746241564262325914

`A078996(A064459(A187829(n+1)+A017533(n)))`
-/

namespace A078997.P2746241564262325914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078996 (A064459 (A187829 (n + 1) + A017533 n).toNat).toNat

end

end A078997.P2746241564262325914

/-!
# A078998: Choose a(n) so that a(1)+a(2)+...+a(n) = concatenation of n first natural numbers.

The programs for A078998, there is no canonical definition to state claims against.
-/

/-! ## A078998.P3164462570252048431

`A007908(n+1)-A360287(A000975(n))`
-/

namespace A078998.P3164462570252048431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - A360287 (A000975 n).toNat

end

end A078998.P3164462570252048431

/-! ## A078998.P2306218547682536286

`Δ[A360287(floor(∑[2^n/3]))]`
-/

namespace A078998.P2306218547682536286
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078998.P2306218547682536286

/-! ## A078998.P16138472355190189059

`A007908(n+1)-A048794(A000225(n))`
-/

namespace A078998.P16138472355190189059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - A048794 (A000225 n).toNat

end

end A078998.P16138472355190189059

/-! ## A078998.P2959581252522305345

`Δ[A048794(2^n-1)]`
-/

namespace A078998.P2959581252522305345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078998.P2959581252522305345

/-! ## A078998.P16313448761249362580

`abs(Δ[A048794(A000225(n))])`
-/

namespace A078998.P16313448761249362580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A078998.P16313448761249362580

/-!
# A078999: Coefficients A_n for the s=4 tennis ball problem.

The programs for A078999, the canonical program `A078999.P11453563147354574415` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078999 has offset 0).

The definition of A078999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078999.P11453563147354574415

`(A078995(n+1)-(5*n+6)*A002293(n+1))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A078999

/-- `(A078995(n+1)-(5*n+6)*A002293(n+1))/2` -/
def P11453563147354574415.Spec : Prop :=
  ∀ n, P11453563147354574415.a n = (A078999 n : ℚ)

end A078999

