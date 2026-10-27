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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176404: Semiprimes == -+1 (mod 8).

The programs for A176404, the canonical program `A176404.P3232961877870128627` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176404 has offset 1).

The definition of A176404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7795 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176404.P3232961877870128627

`A001358(eq[1, and(9, A001358(n+1)²)]+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176404

/-- `A001358(eq[1, and(9, A001358(n+1)²)]+1)` -/
def P3232961877870128627.Spec : Prop :=
  ∀ n, P3232961877870128627.a n = A176404 (n + 1)

theorem P3232961877870128627.correct : P3232961877870128627.Spec := by
  intro n
  simp only [A176404, Nat.add_sub_cancel]

end A176404

/-! ## A176404.P1941940072716390770

`filter[A199398(2*n+1), A064911(#)]`
-/

namespace A176404.P1941940072716390770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A176404.P1941940072716390770

namespace A176404

/-- `filter[A199398(2*n+1), A064911(#)]` -/
def P1941940072716390770.Spec : Prop :=
  ∀ n, P1941940072716390770.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P55553029312670801

`filter[A199398(2*n+1), A353480(#)]`
-/

namespace A176404.P55553029312670801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176404.P55553029312670801

namespace A176404

/-- `filter[A199398(2*n+1), A353480(#)]` -/
def P55553029312670801.Spec : Prop :=
  ∀ n, P55553029312670801.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P14841532742471538181

`filter[A047522(n+1), A064911(#)]`
-/

namespace A176404.P14841532742471538181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A176404.P14841532742471538181

namespace A176404

/-- `filter[A047522(n+1), A064911(#)]` -/
def P14841532742471538181.Spec : Prop :=
  ∀ n, P14841532742471538181.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P11220034872470123731

`filter[A047522(n+1), A353480(#)]`
-/

namespace A176404.P11220034872470123731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176404.P11220034872470123731

namespace A176404

/-- `filter[A047522(n+1), A353480(#)]` -/
def P11220034872470123731.Spec : Prop :=
  ∀ n, P11220034872470123731.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P14141870157403077619

`filter[A047522(n+2), A359828(#)]`
-/

namespace A176404.P14141870157403077619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A176404.P14141870157403077619

namespace A176404

/-- `filter[A047522(n+2), A359828(#)]` -/
def P14141870157403077619.Spec : Prop :=
  ∀ n, P14141870157403077619.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P135636311560640887

`∩[A001358(n+1), A047522(n+1)]`
-/

namespace A176404.P135636311560640887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P135636311560640887

namespace A176404

/-- `∩[A001358(n+1), A047522(n+1)]` -/
def P135636311560640887.Spec : Prop :=
  ∀ n, (P135636311560640887.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P3109182606089908406

`∩[A046315(n+1), A047522(n+1)]`
-/

namespace A176404.P3109182606089908406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P3109182606089908406

namespace A176404

/-- `∩[A046315(n+1), A047522(n+1)]` -/
def P3109182606089908406.Spec : Prop :=
  ∀ n, (P3109182606089908406.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P1111043924123730688

`∩[A047522(n+1), A077135(n+1)]`
-/

namespace A176404.P1111043924123730688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P1111043924123730688

namespace A176404

/-- `∩[A047522(n+1), A077135(n+1)]` -/
def P1111043924123730688.Spec : Prop :=
  ∀ n, (P1111043924123730688.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P16810099064609336219

`∩[A047522(n+1), A077136(n+1)]`
-/

namespace A176404.P16810099064609336219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P16810099064609336219

namespace A176404

/-- `∩[A047522(n+1), A077136(n+1)]` -/
def P16810099064609336219.Spec : Prop :=
  ∀ n, (P16810099064609336219.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P18322905875372544132

`∩[A001358(n+1), A047467(n+1)-1]`
-/

namespace A176404.P18322905875372544132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P18322905875372544132

namespace A176404

/-- `∩[A001358(n+1), A047467(n+1)-1]` -/
def P18322905875372544132.Spec : Prop :=
  ∀ n, (P18322905875372544132.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P9328772849199939863

`filter[A047526(n+1), A353480(#)]`
-/

namespace A176404.P9328772849199939863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176404.P9328772849199939863

namespace A176404

/-- `filter[A047526(n+1), A353480(#)]` -/
def P9328772849199939863.Spec : Prop :=
  ∀ n, P9328772849199939863.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P6733256591738521023

`filter[A047537(n+1), A353480(#)]`
-/

namespace A176404.P6733256591738521023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176404.P6733256591738521023

namespace A176404

/-- `filter[A047537(n+1), A353480(#)]` -/
def P6733256591738521023.Spec : Prop :=
  ∀ n, P6733256591738521023.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P17731955305824953874

`filter[A047591(n+1), A353480(#)]`
-/

namespace A176404.P17731955305824953874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176404.P17731955305824953874

namespace A176404

/-- `filter[A047591(n+1), A353480(#)]` -/
def P17731955305824953874.Spec : Prop :=
  ∀ n, P17731955305824953874.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P7880387732589413375

`filter[A047526(n+2), A359828(#)]`
-/

namespace A176404.P7880387732589413375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A176404.P7880387732589413375

namespace A176404

/-- `filter[A047526(n+2), A359828(#)]` -/
def P7880387732589413375.Spec : Prop :=
  ∀ n, P7880387732589413375.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P17183405706812643235

`filter[A047591(n+2), A359828(#)]`
-/

namespace A176404.P17183405706812643235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A176404.P17183405706812643235

namespace A176404

/-- `filter[A047591(n+2), A359828(#)]` -/
def P17183405706812643235.Spec : Prop :=
  ∀ n, P17183405706812643235.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P2082695233886056166

`filter[A047537(n+3), A064911(#)]`
-/

namespace A176404.P2082695233886056166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A176404.P2082695233886056166

namespace A176404

/-- `filter[A047537(n+3), A064911(#)]` -/
def P2082695233886056166.Spec : Prop :=
  ∀ n, P2082695233886056166.a n = A176404 (n + 1)

end A176404

/-! ## A176404.P2285185829420426635

`∩[A046315(n+1), A047526(n+1)]`
-/

namespace A176404.P2285185829420426635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P2285185829420426635

namespace A176404

/-- `∩[A046315(n+1), A047526(n+1)]` -/
def P2285185829420426635.Spec : Prop :=
  ∀ n, (P2285185829420426635.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P18434588289312341806

`∩[A046315(n+1), A047537(n+1)]`
-/

namespace A176404.P18434588289312341806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P18434588289312341806

namespace A176404

/-- `∩[A046315(n+1), A047537(n+1)]` -/
def P18434588289312341806.Spec : Prop :=
  ∀ n, (P18434588289312341806.a n : ℤ) = A176404 (n + 1)

end A176404

/-! ## A176404.P3536853276590770476

`∩[A046315(n+1), A047591(n+1)]`
-/

namespace A176404.P3536853276590770476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176404.P3536853276590770476

namespace A176404

/-- `∩[A046315(n+1), A047591(n+1)]` -/
def P3536853276590770476.Spec : Prop :=
  ∀ n, (P3536853276590770476.a n : ℤ) = A176404 (n + 1)

end A176404

/-!
# A176405: Fixed point of morphism 0->0100110, 1->0110110.

The programs for A176405, the canonical program `A176405.P11128722629887834534` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176405 has offset 0).

The definition of A176405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176405.P11128722629887834534

`and(1, A010876(A242603(2*n+1+n)-1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176405

/-- `and(1, A010876(A242603(2*n+1+n)-1))` -/
def P11128722629887834534.Spec : Prop :=
  ∀ n, P11128722629887834534.a n = A176405 n

theorem P11128722629887834534.correct : P11128722629887834534.Spec := by
  intro n
  simp only [A176405]

end A176405

/-! ## A176405.P12219440126332957629

`log2(gcd(2, A277545(3*n+1)))`
-/

namespace A176405.P12219440126332957629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A277545 (3 * n + 1)) : ℝ)

end

end A176405.P12219440126332957629

namespace A176405

/-- `log2(gcd(2, A277545(3*n+1)))` -/
def P12219440126332957629.Spec : Prop :=
  ∀ n, P12219440126332957629.a n = (A176405 n : ℝ)

end A176405

/-! ## A176405.P9249412598358111130

`A004177(A307913(n+1))%2`
-/

namespace A176405.P9249412598358111130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004177 (A307913 (n + 1)).toNat) 2

end

end A176405.P9249412598358111130

namespace A176405

/-- `A004177(A307913(n+1))%2` -/
def P9249412598358111130.Spec : Prop :=
  ∀ n, P9249412598358111130.a n = A176405 n

end A176405

/-! ## A176405.P14944506171653824919

`and(A033999(n)², A004177(A307913(n+1)))`
-/

namespace A176405.P14944506171653824919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n ^ 2) (A004177 (A307913 (n + 1)).toNat)

end

end A176405.P14944506171653824919

namespace A176405

/-- `and(A033999(n)², A004177(A307913(n+1)))` -/
def P14944506171653824919.Spec : Prop :=
  ∀ n, P14944506171653824919.a n = A176405 n

end A176405

/-! ## A176405.P6794838418905009523

`A156595(4*A037475(n))`
-/

namespace A176405.P6794838418905009523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (4 * A037475 n).toNat

end

end A176405.P6794838418905009523

namespace A176405

/-- `A156595(4*A037475(n))` -/
def P6794838418905009523.Spec : Prop :=
  ∀ n, P6794838418905009523.a n = A176405 n

end A176405

/-! ## A176405.P6947742769760117914

`A159684(lcm(63, A016777(n)))`
-/

namespace A176405.P6947742769760117914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (Int.lcm 63 (A016777 n))

end

end A176405.P6947742769760117914

namespace A176405

/-- `A159684(lcm(63, A016777(n)))` -/
def P6947742769760117914.Spec : Prop :=
  ∀ n, P6947742769760117914.a n = A176405 n

end A176405

/-!
# A176406: Odd semiprimes minus 2.

The programs for A176406, the canonical program `A176406.P4368198873740272747` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176406 has offset 1).

The definition of A176406 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176406.P4368198873740272747

`A046315(n+1)-2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176406

/-- `A046315(n+1)-2` -/
def P4368198873740272747.Spec : Prop :=
  ∀ n, P4368198873740272747.a n = A176406 (n + 1)

theorem P4368198873740272747.correct : P4368198873740272747.Spec := by
  intro n
  simp only [A176406, Nat.add_sub_cancel]

end A176406

/-! ## A176406.P9286249651313184158

`sqrt(A075730(n+1))-2`
-/

namespace A176406.P9286249651313184158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075730 (n + 1) : ℝ) - 2

end

end A176406.P9286249651313184158

namespace A176406

/-- `sqrt(A075730(n+1))-2` -/
def P9286249651313184158.Spec : Prop :=
  ∀ n, P9286249651313184158.a n = (A176406 (n + 1) : ℝ)

end A176406

/-! ## A176406.P15633008680199851571

`2*eq[2, A001222(2*n+1)]-1`
-/

namespace A176406.P15633008680199851571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A176406.P15633008680199851571

namespace A176406

/-- `2*eq[2, A001222(2*n+1)]-1` -/
def P15633008680199851571.Spec : Prop :=
  ∀ n, P15633008680199851571.a n = A176406 (n + 1)

end A176406

/-! ## A176406.P7072138014257642378

`2*eq[4, A322327(2*n+3)]+1`
-/

namespace A176406.P7072138014257642378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322327 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176406.P7072138014257642378

namespace A176406

/-- `2*eq[4, A322327(2*n+3)]+1` -/
def P7072138014257642378.Spec : Prop :=
  ∀ n, (P7072138014257642378.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P5458391043096435923

`2*(eq[2, A001222(2*(n+2)+1)]+1)+1`
-/

namespace A176406.P5458391043096435923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A176406.P5458391043096435923

namespace A176406

/-- `2*(eq[2, A001222(2*(n+2)+1)]+1)+1` -/
def P5458391043096435923.Spec : Prop :=
  ∀ n, (P5458391043096435923.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P14516333361476022653

`A001358(A289182(n+1))-2`
-/

namespace A176406.P14516333361476022653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A289182 (n + 1)).toNat - 2

end

end A176406.P14516333361476022653

namespace A176406

/-- `A001358(A289182(n+1))-2` -/
def P14516333361476022653.Spec : Prop :=
  ∀ n, P14516333361476022653.a n = A176406 (n + 1)

end A176406

/-! ## A176406.P12910892854088212535

`record[A000265(A001358(n+3))]-2`
-/

namespace A176406.P12910892854088212535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001358 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A176406.P12910892854088212535

namespace A176406

/-- `record[A000265(A001358(n+3))]-2` -/
def P12910892854088212535.Spec : Prop :=
  ∀ n, P12910892854088212535.a n = A176406 (n + 1)

end A176406

/-! ## A176406.P12699260674974104910

`A037168(n+1)-A131634(n+1)`
-/

namespace A176406.P12699260674974104910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - A131634 (n + 1)

end

end A176406.P12699260674974104910

namespace A176406

/-- `A037168(n+1)-A131634(n+1)` -/
def P12699260674974104910.Spec : Prop :=
  ∀ n, P12699260674974104910.a n = A176406 (n + 1)

theorem P12699260674974104910.correct : P12699260674974104910.Spec := by
  intro n
  simp only [A176406, Nat.add_sub_cancel, A176406.P12699260674974104910.a, A176406.P4368198873740272747.a, A037168, A037168.P225285487484933431.a, A046315, A046315.P4459434404324554998.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A100484, A100484.P9678625670825099636.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176406

/-! ## A176406.P1456729835841167427

`A282844(n+1)-A089241(n+1)`
-/

namespace A176406.P1456729835841167427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A089241 (n + 1)

end

end A176406.P1456729835841167427

namespace A176406

/-- `A282844(n+1)-A089241(n+1)` -/
def P1456729835841167427.Spec : Prop :=
  ∀ n, P1456729835841167427.a n = A176406 (n + 1)

theorem P1456729835841167427.correct : P1456729835841167427.Spec := by
  intro n
  simp only [A176406, Nat.add_sub_cancel, A176406.P1456729835841167427.a, A176406.P4368198873740272747.a, A046315, A046315.P4459434404324554998.a, A089241, A089241.P14705987553220613803.a, A282844, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A100484, A100484.P9678625670825099636.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176406

/-! ## A176406.P13147456350039961058

`eq[1, A353480(n+2)]`
-/

namespace A176406.P13147456350039961058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P13147456350039961058

namespace A176406

/-- `eq[1, A353480(n+2)]` -/
def P13147456350039961058.Spec : Prop :=
  ∀ n, (P13147456350039961058.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P7941945633577654012

`eq[2, A317531(n+2)]`
-/

namespace A176406.P7941945633577654012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P7941945633577654012

namespace A176406

/-- `eq[2, A317531(n+2)]` -/
def P7941945633577654012.Spec : Prop :=
  ∀ n, (P7941945633577654012.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P13161552697325989257

`eq[9, A079065(n+2)]`
-/

namespace A176406.P13161552697325989257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P13161552697325989257

namespace A176406

/-- `eq[9, A079065(n+2)]` -/
def P13161552697325989257.Spec : Prop :=
  ∀ n, (P13161552697325989257.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P2309945477140525821

`eq[gcd(2, n), A001222(n+3)]+1`
-/

namespace A176406.P2309945477140525821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176406.P2309945477140525821

namespace A176406

/-- `eq[gcd(2, n), A001222(n+3)]+1` -/
def P2309945477140525821.Spec : Prop :=
  ∀ n, (P2309945477140525821.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P9587769482921905504

`eq[2, n%2*A001222(n+2)]`
-/

namespace A176406.P9587769482921905504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P9587769482921905504

namespace A176406

/-- `eq[2, n%2*A001222(n+2)]` -/
def P9587769482921905504.Spec : Prop :=
  ∀ n, (P9587769482921905504.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P3268790721932102187

`eq[2, A001222(lcm(2, n)-(n-2))]`
-/

namespace A176406.P3268790721932102187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((Nat.lcm 2 n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P3268790721932102187

namespace A176406

/-- `eq[2, A001222(lcm(2, n)-(n-2))]` -/
def P3268790721932102187.Spec : Prop :=
  ∀ n, (P3268790721932102187.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P11230795369655422125

`eq[2, A001222(n*and(1, n)+2)]`
-/

namespace A176406.P11230795369655422125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * Nat.land 1 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P11230795369655422125

namespace A176406

/-- `eq[2, A001222(n*and(1, n)+2)]` -/
def P11230795369655422125.Spec : Prop :=
  ∀ n, (P11230795369655422125.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P8363708145815753087

`eq[2, A001222((n+2)^and(1, n))]`
-/

namespace A176406.P8363708145815753087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P8363708145815753087

namespace A176406

/-- `eq[2, A001222((n+2)^and(1, n))]` -/
def P8363708145815753087.Spec : Prop :=
  ∀ n, (P8363708145815753087.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P7745678333515631756

`eq[2, A001222(C(n+2, and(1, n)))]`
-/

namespace A176406.P7745678333515631756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 2) (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176406.P7745678333515631756

namespace A176406

/-- `eq[2, A001222(C(n+2, and(1, n)))]` -/
def P7745678333515631756.Spec : Prop :=
  ∀ n, (P7745678333515631756.a n : ℤ) = A176406 (n + 1)

end A176406

/-! ## A176406.P11312608269255586203

`eq[1-a(n-1), A001222(n+1)]-1` with `a(0)=2`
-/

namespace A176406.P11312608269255586203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A176406.P11312608269255586203

namespace A176406

/-- `eq[1-a(n-1), A001222(n+1)]-1` -/
def P11312608269255586203.Spec : Prop :=
  ∀ n, P11312608269255586203.a n = A176406 (n + 1)

end A176406

/-! ## A176406.P15844278372849338650

`eq[A001222(n+2), A107393(n+1)]`
-/

namespace A176406.P15844278372849338650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176406.P15844278372849338650

namespace A176406

/-- `eq[A001222(n+2), A107393(n+1)]` -/
def P15844278372849338650.Spec : Prop :=
  ∀ n, (P15844278372849338650.a n : ℤ) = A176406 (n + 1)

end A176406

/-!
# A176407: Omit all 1's and 2's from n.

The programs for A176407, there is no canonical definition to state claims against.
-/

/-! ## A176407.P772825826388874906

`A004177(A004176(n))`
-/

namespace A176407.P772825826388874906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A004176 n).toNat

end

end A176407.P772825826388874906

/-! ## A176407.P18068214993970443478

`A004177(A035043(A004177(n)))`
-/

namespace A176407.P18068214993970443478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A035043 (A004177 n).toNat).toNat

end

end A176407.P18068214993970443478

/-! ## A176407.P11907629047139189586

`A047813(n)%A265000(A214950(n))`
-/

namespace A176407.P11907629047139189586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047813 n) (A265000 (A214950 n).toNat)

end

end A176407.P11907629047139189586

/-! ## A176407.P6928423113867697866

`A274206(n+10)%A273957(A274206(n+1))`
-/

namespace A176407.P6928423113867697866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274206 (n + 10)) (A273957 (A274206 (n + 1)).toNat)

end

end A176407.P6928423113867697866

/-!
# A176408: a(n) = (n+1)*(a(n-1) +a(n-2)) n>1, a(0)=1,a(1)=0.

The programs for A176408, the canonical program `A176408.P16716352155014917243` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176408 has offset 0).

The definition of A176408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(a(n-1)+a(n-2))` (program `A176408.P16716352155014917243`, by `A176408.P16716352155014917243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176408.P16716352155014917243

`(n+1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176408

/-- `(n+1)*(a(n-1)+a(n-2))` -/
def P16716352155014917243.Spec : Prop :=
  ∀ n, (P16716352155014917243.a n : ℤ) = A176408 n

theorem P16716352155014917243.correct : P16716352155014917243.Spec := by
  intro n
  simp only [A176408]

end A176408

/-! ## A176408.P578061317217372073

`3*floor(((n+2)!+1)/e)-(n+2)!`
-/

namespace A176408.P578061317217372073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(Nat.factorial (n + 2) + 1 : ℝ) / Real.exp 1⌋ - (Nat.factorial (n + 2) : ℤ)

end

end A176408.P578061317217372073

namespace A176408

/-- `3*floor(((n+2)!+1)/e)-(n+2)!` -/
def P578061317217372073.Spec : Prop :=
  ∀ n, P578061317217372073.a n = A176408 n

end A176408

/-! ## A176408.P5987130602554932630

`(a(n-1)+a(n-2))/(n+1)^(-1)` with `a(0)=1, a(1)=0`
-/

namespace A176408.P5987130602554932630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A176408.P5987130602554932630

namespace A176408

/-- `(a(n-1)+a(n-2))/(n+1)^(-1)` -/
def P5987130602554932630.Spec : Prop :=
  ∀ n, P5987130602554932630.a n = (A176408 n : ℚ)

end A176408

/-! ## A176408.P2634677331188800432

`xor(1, A161130(n+1))`
-/

namespace A176408.P2634677331188800432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161130 (n + 1))

end

end A176408.P2634677331188800432

namespace A176408

/-- `xor(1, A161130(n+1))` -/
def P2634677331188800432.Spec : Prop :=
  ∀ n, P2634677331188800432.a n = A176408 n

end A176408

/-! ## A176408.P6522972466466514677

`(n+1)*A316666(n)`
-/

namespace A176408.P6522972466466514677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316666 n

end

end A176408.P6522972466466514677

namespace A176408

/-- `(n+1)*A316666(n)` -/
def P6522972466466514677.Spec : Prop :=
  ∀ n, P6522972466466514677.a n = A176408 n

end A176408

/-! ## A176408.P17426560882489812262

`A316666(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A176408.P17426560882489812262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316666 (n + 1) - a (n - 1)

end

end A176408.P17426560882489812262

namespace A176408

/-- `A316666(n+1)-a(n-1)` -/
def P17426560882489812262.Spec : Prop :=
  ∀ n, P17426560882489812262.a n = A176408 n

end A176408

/-! ## A176408.P1981512864319224296

`(a(n-1)-ceil(-a(n-2)))*A131732(2*n)` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A176408.P1981512864319224296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) - (-a (n - 2))) * A131732 (2 * n)

end

end A176408.P1981512864319224296

namespace A176408

/-- `(a(n-1)-ceil(-a(n-2)))*A131732(2*n)` -/
def P1981512864319224296.Spec : Prop :=
  ∀ n, P1981512864319224296.a n = A176408 n

end A176408

/-! ## A176408.P2702000765682266566

`A000166(n+2)-A055596(n+2)`
-/

namespace A176408.P2702000765682266566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 2) - A055596 (n + 2)

end

end A176408.P2702000765682266566

namespace A176408

/-- `A000166(n+2)-A055596(n+2)` -/
def P2702000765682266566.Spec : Prop :=
  ∀ n, P2702000765682266566.a n = A176408 n

end A176408

/-! ## A176408.P14659756177500070827

`A000240(n+1)+A161130(n+1)-A000166(n+1)`
-/

namespace A176408.P14659756177500070827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) + (A161130 (n + 1) - A000166 (n + 1))

end

end A176408.P14659756177500070827

namespace A176408

/-- `A000240(n+1)+A161130(n+1)-A000166(n+1)` -/
def P14659756177500070827.Spec : Prop :=
  ∀ n, P14659756177500070827.a n = A176408 n

end A176408

/-!
# A176409: Multiples of 3 or 7.

The programs for A176409, the canonical program `A176409.P11255286247257360719` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176409 has offset 1).

The definition of A176409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176409.P11255286247257360719

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=7, a(4)=9, a(5)=12, a(6)=14, a(7)=15, a(8)=18, a(9)=21`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176409

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P11255286247257360719.Spec : Prop :=
  ∀ n, P11255286247257360719.a n = A176409 (n + 1)

theorem P11255286247257360719.correct : P11255286247257360719.Spec := by
  intro n
  simp only [A176409, Nat.add_sub_cancel]

end A176409

/-! ## A176409.P869351889932351814

`∪[3*n, 7*n]`
-/

namespace A176409.P869351889932351814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A176409.P869351889932351814

namespace A176409

/-- `∪[3*n, 7*n]` -/
def P869351889932351814.Spec : Prop :=
  ∀ n, (P869351889932351814.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P13327667535135756136

`lt[lcm(21, n), 7*(n+1)]`
-/

namespace A176409.P13327667535135756136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 21 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176409.P13327667535135756136

namespace A176409

/-- `lt[lcm(21, n), 7*(n+1)]` -/
def P13327667535135756136.Spec : Prop :=
  ∀ n, (P13327667535135756136.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P6605054157415716192

`record[(n+1)%(gcd(63, n+1)+n)]`
-/

namespace A176409.P6605054157415716192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (Nat.gcd 63 (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176409.P6605054157415716192

namespace A176409

/-- `record[(n+1)%(gcd(63, n+1)+n)]` -/
def P6605054157415716192.Spec : Prop :=
  ∀ n, (P6605054157415716192.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P11117766508995329945

`comp[A160545(n+1)]`
-/

namespace A176409.P11117766508995329945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176409.P11117766508995329945

namespace A176409

/-- `comp[A160545(n+1)]` -/
def P11117766508995329945.Spec : Prop :=
  ∀ n, (P11117766508995329945.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P8316999370807760955

`eq[0, n*A322829(n)]`
-/

namespace A176409.P8316999370807760955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176409.P8316999370807760955

namespace A176409

/-- `eq[0, n*A322829(n)]` -/
def P8316999370807760955.Spec : Prop :=
  ∀ n, (P8316999370807760955.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P3566727668065264436

`lt[A106608(n)+n%3, n+1]`
-/

namespace A176409.P3566727668065264436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n + ((n % 3 : ℕ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176409.P3566727668065264436

namespace A176409

/-- `lt[A106608(n)+n%3, n+1]` -/
def P3566727668065264436.Spec : Prop :=
  ∀ n, (P3566727668065264436.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P13788420349914686994

`eq[A132681(n), A322829(n)]`
-/

namespace A176409.P13788420349914686994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P13788420349914686994

namespace A176409

/-- `eq[A132681(n), A322829(n)]` -/
def P13788420349914686994.Spec : Prop :=
  ∀ n, (P13788420349914686994.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P861710886380861984

`eq[A132710(n), A322829(n)]`
-/

namespace A176409.P861710886380861984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P861710886380861984

namespace A176409

/-- `eq[A132710(n), A322829(n)]` -/
def P861710886380861984.Spec : Prop :=
  ∀ n, (P861710886380861984.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P13115395135415049353

`eq[A159075(n), A322829(n)]`
-/

namespace A176409.P13115395135415049353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P13115395135415049353

namespace A176409

/-- `eq[A159075(n), A322829(n)]` -/
def P13115395135415049353.Spec : Prop :=
  ∀ n, (P13115395135415049353.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P10325253664798947538

`eq[A185012(n), A322829(n)]`
-/

namespace A176409.P10325253664798947538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P10325253664798947538

namespace A176409

/-- `eq[A185012(n), A322829(n)]` -/
def P10325253664798947538.Spec : Prop :=
  ∀ n, (P10325253664798947538.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P17371523454021165645

`eq[A295819(n), A322829(n)]`
-/

namespace A176409.P17371523454021165645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P17371523454021165645

namespace A176409

/-- `eq[A295819(n), A322829(n)]` -/
def P17371523454021165645.Spec : Prop :=
  ∀ n, (P17371523454021165645.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P8330686700791424580

`eq[A181405(n+1), A322829(n)]`
-/

namespace A176409.P8330686700791424580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P8330686700791424580

namespace A176409

/-- `eq[A181405(n+1), A322829(n)]` -/
def P8330686700791424580.Spec : Prop :=
  ∀ n, (P8330686700791424580.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P3785470161186863872

`eq[A033580(n-A322829(n)), A033580(n)]`
-/

namespace A176409.P3785470161186863872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 ((n : ℤ) - A322829 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P3785470161186863872

namespace A176409

/-- `eq[A033580(n-A322829(n)), A033580(n)]` -/
def P3785470161186863872.Spec : Prop :=
  ∀ n, (P3785470161186863872.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P515299975280902263

`eq[A285982(n)-A322829(n), A285982(n)]`
-/

namespace A176409.P515299975280902263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n - A322829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P515299975280902263

namespace A176409

/-- `eq[A285982(n)-A322829(n), A285982(n)]` -/
def P515299975280902263.Spec : Prop :=
  ∀ n, (P515299975280902263.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P18329330948828400665

`lt[A020639(20*(n+1)+1), 9]`
-/

namespace A176409.P18329330948828400665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (20 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176409.P18329330948828400665

namespace A176409

/-- `lt[A020639(20*(n+1)+1), 9]` -/
def P18329330948828400665.Spec : Prop :=
  ∀ n, (P18329330948828400665.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P17232084034159038169

`eq[A070532(2*n)*A239286(n+1), A070532(2*n)]`
-/

namespace A176409.P17232084034159038169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070532 (2 * n) * A239286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070532 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176409.P17232084034159038169

namespace A176409

/-- `eq[A070532(2*n)*A239286(n+1), A070532(2*n)]` -/
def P17232084034159038169.Spec : Prop :=
  ∀ n, (P17232084034159038169.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P15649435527358008735

`lt[A087508(A109048(n)), n+1]`
-/

namespace A176409.P15649435527358008735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A109048 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176409.P15649435527358008735

namespace A176409

/-- `lt[A087508(A109048(n)), n+1]` -/
def P15649435527358008735.Spec : Prop :=
  ∀ n, (P15649435527358008735.a n : ℤ) = A176409 (n + 1)

end A176409

/-! ## A176409.P15194145601332567428

`lt[A087508(A109048(n))-A087508(n), 1]`
-/

namespace A176409.P15194145601332567428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A109048 n).toNat - A087508 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A176409.P15194145601332567428

namespace A176409

/-- `lt[A087508(A109048(n))-A087508(n), 1]` -/
def P15194145601332567428.Spec : Prop :=
  ∀ n, (P15194145601332567428.a n : ℤ) = A176409 (n + 1)

end A176409

/-!
# A176410: A symmetrical triangle of adjusted polynomial coefficients based on Hermite orthogonal polynomials.

The programs for A176410, there is no canonical definition to state claims against.
-/

/-! ## A176410.P10328173593106029044

`A008833(2*n+1)-A258069(A083961(n+1))`
-/

namespace A176410.P10328173593106029044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * n + 1) - A258069 (A083961 (n + 1)).toNat

end

end A176410.P10328173593106029044

/-!
# A176411: A symmetrical triangle of leading ones adjusted polynomial coefficients based on Hermite orthogonal polynomials: t(n,m)=CoefficientList[HermiteH[n, x], x][[m + 1]] + Reverse[CoefficientList[ HermiteH[n, x], x]][[m + 1]] - (CoefficientList[HermiteH[n, x], x][[1]] + Reverse[CoefficientList[HermiteH[n, x], x]][[1]]) + 1.

The programs for A176411, there is no canonical definition to state claims against.
-/

/-! ## A176411.P4952449511513942434

`or(1, A176064(n)-1)`
-/

namespace A176411.P4952449511513942434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A176064 n - 1)

end

end A176411.P4952449511513942434

/-! ## A176411.P15564918150641350679

`-or(-A176064(n), A054977(n))`
-/

namespace A176411.P15564918150641350679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A176064 n) (A054977 n)

end

end A176411.P15564918150641350679

/-! ## A176411.P9459183687427607253

`-or(-A176064(n), A057427(n))`
-/

namespace A176411.P9459183687427607253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A176064 n) (A057427 n)

end

end A176411.P9459183687427607253

/-! ## A176411.P6334258174297398525

`-or(-A176064(n), A157928(n))`
-/

namespace A176411.P6334258174297398525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A176064 n) (A157928 n)

end

end A176411.P6334258174297398525

/-! ## A176411.P5465183994671647876

`-or(-A176064(n), A304042(n))`
-/

namespace A176411.P5465183994671647876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A176064 n) (A304042 n)

end

end A176411.P5465183994671647876

/-! ## A176411.P17125297297169059113

`-or(-A176064(n), A176040(n+1))`
-/

namespace A176411.P17125297297169059113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A176064 n) (A176040 (n + 1))

end

end A176411.P17125297297169059113

/-! ## A176411.P860084044039499925

`A176064(n)+A057428(A004197(n))`
-/

namespace A176411.P860084044039499925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176064 n + A057428 (A004197 n).toNat

end

end A176411.P860084044039499925

/-! ## A176411.P8693043471982997457

`A176064(n)-A001221(A103444(n))`
-/

namespace A176411.P8693043471982997457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176064 n - A001221 (A103444 n).toNat

end

end A176411.P8693043471982997457

/-! ## A176411.P11148657112182552016

`A176064(n)-A001221(A152714(n))`
-/

namespace A176411.P11148657112182552016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176064 n - A001221 (A152714 n).toNat

end

end A176411.P11148657112182552016

/-! ## A176411.P1852228977945313107

`A176064(n)-A157928(A007318(n))`
-/

namespace A176411.P1852228977945313107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176064 n - A157928 (A007318 n).toNat

end

end A176411.P1852228977945313107

/-!
# A176412: Concatenation of prime Lucas numbers written in base 2.

The programs for A176412, there is no canonical definition to state claims against.
-/

/-! ## A176412.P8702719820926964427

`A181183(A167335(n+1)+2*n)`
-/

namespace A176412.P8702719820926964427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181183 (A167335 (n + 1) + (2 * n : ℤ)).toNat

end

end A176412.P8702719820926964427

/-! ## A176412.P13038554616718289079

`A181183(A167335(n+1)+n+n)`
-/

namespace A176412.P13038554616718289079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181183 (A167335 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A176412.P13038554616718289079

/-! ## A176412.P7635579879363116154

`A285274(lcm(A018252(2*(n+1)), A360913(n+2)))`
-/

namespace A176412.P7635579879363116154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (Int.lcm (A018252 (2 * (n + 1))) (A360913 (n + 2)))

end

end A176412.P7635579879363116154

/-! ## A176412.P2524203765564450363

`A011655(or(A063643(n+1), A203564(n+1)))`
-/

namespace A176412.P2524203765564450363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.lor (A063643 (n + 1)) (A203564 (n + 1))).toNat

end

end A176412.P2524203765564450363

/-! ## A176412.P15709255901442114588

`A294934(A344607(n)+A208815(n+1))`
-/

namespace A176412.P15709255901442114588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (A344607 n + A208815 (n + 1)).toNat

end

end A176412.P15709255901442114588

/-!
# A176413: a(n) = 19*3^n.

The programs for A176413, the canonical program `A176413.P13743259955619831512` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176413 has offset 0).

The definition of A176413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*3^n` (program `A176413.P13743259955619831512`, by `A176413.P13743259955619831512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176413.P13743259955619831512

`19*3^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176413

/-- `19*3^n` -/
def P13743259955619831512.Spec : Prop :=
  ∀ n, (P13743259955619831512.a n : ℤ) = A176413 n

theorem P13743259955619831512.correct : P13743259955619831512.Spec := by
  intro n
  simp only [A176413]

end A176413

/-!
# A176414: Expansion of (7+8*x)/(1+2*x).

The programs for A176414, the canonical program `A176414.P14934985114699426891` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176414 has offset 0).

The definition of A176414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7+8x)/(1+2x))` (program `A176414.P14934985114699426891`, by `A176414.P14934985114699426891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176414.P14934985114699426891

`ogf((7+8x)/(1+2x))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176414

/-- `ogf((7+8x)/(1+2x))` -/
def P14934985114699426891.Spec : Prop :=
  ∀ n, P14934985114699426891.a n = A176414 n

theorem P14934985114699426891.correct : P14934985114699426891.Spec := by
  intro n
  simp only [A176414]

end A176414

/-! ## A176414.P2503596544712150034

`4*a(n-2)` with `a(0)=7, a(1)=-6, a(2)=12`
-/

namespace A176414.P2503596544712150034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, -6, 12] fun n a =>
  4 * a (n - 2)

end

end A176414.P2503596544712150034

namespace A176414

/-- `4*a(n-2)` -/
def P2503596544712150034.Spec : Prop :=
  ∀ n, P2503596544712150034.a n = A176414 n

end A176414

/-! ## A176414.P14736246885047298624

`a(n-1)/(1/2-1)` with `a(0)=7, a(1)=-6`
-/

namespace A176414.P14736246885047298624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, -6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A176414.P14736246885047298624

namespace A176414

/-- `a(n-1)/(1/2-1)` -/
def P14736246885047298624.Spec : Prop :=
  ∀ n, P14736246885047298624.a n = (A176414 n : ℚ)

end A176414

/-! ## A176414.P667478308500213307

`Δ[A157532(n+1)*A268741(n)]`
-/

namespace A176414.P667478308500213307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) * A268741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176414.P667478308500213307

namespace A176414

/-- `Δ[A157532(n+1)*A268741(n)]` -/
def P667478308500213307.Spec : Prop :=
  ∀ n, P667478308500213307.a n = A176414 n

end A176414

/-! ## A176414.P15350517053378028122

`A122803(n)*A280345(and(1, A122803(n)))`
-/

namespace A176414.P15350517053378028122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A280345 (Int.land 1 (A122803 n)).toNat

end

end A176414.P15350517053378028122

namespace A176414

/-- `A122803(n)*A280345(and(1, A122803(n)))` -/
def P15350517053378028122.Spec : Prop :=
  ∀ n, P15350517053378028122.a n = A176414 n

end A176414

/-!
# A176415: Periodic sequence: repeat (7,1).

The programs for A176415, the canonical program `A176415.P18143454064393950636` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176415 has offset 0).

The definition of A176415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176415.P18143454064393950636

`a(n-2)` with `a(0)=7, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176415

/-- `a(n-2)` -/
def P18143454064393950636.Spec : Prop :=
  ∀ n, (P18143454064393950636.a n : ℤ) = A176415 n

theorem P18143454064393950636.correct : P18143454064393950636.Spec := by
  intro n
  simp only [A176415]

end A176415

/-!
# A176416: Fixed point of morphism 0->0PPMM00, P->0PPMM0P, M=0PPMM0M (where P=+1, M=-1).

The programs for A176416, there is no canonical definition to state claims against.
-/

/-! ## A176416.P3829159786892804969

`A321764(A321742(n+1)+A165959(n+1))`
-/

namespace A176416.P3829159786892804969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321764 (A321742 (n + 1) + A165959 (n + 1)).toNat

end

end A176416.P3829159786892804969

/-!
# A176417: Triangle read by rows: T(n,k) = A022166(n,k)*n!/binomial(n,k) + 1 - n!.

The programs for A176417, there is no canonical definition to state claims against.
-/

/-! ## A176417.P10452754851796914852

`A004195(A176305(n))`
-/

namespace A176417.P10452754851796914852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (A176305 n).toNat

end

end A176417.P10452754851796914852

/-! ## A176417.P2783733939047257155

`A137451(A173887(n))`
-/

namespace A176417.P2783733939047257155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137451 (A173887 n).toNat

end

end A176417.P2783733939047257155

/-! ## A176417.P8349477235931905837

`A187041(A129276(n))`
-/

namespace A176417.P8349477235931905837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (A129276 n).toNat

end

end A176417.P8349477235931905837

/-! ## A176417.P5172744808737988131

`A169730(A154334(n))`
-/

namespace A176417.P5172744808737988131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169730 (A154334 n).toNat

end

end A176417.P5172744808737988131

/-! ## A176417.P15742650394583602397

`A325395(A008300(n))`
-/

namespace A176417.P15742650394583602397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A008300 n).toNat

end

end A176417.P15742650394583602397

/-!
# A176418: Triangle read by rows: T(n,k) = A022167(n,k)*n!/binomial(n,k) + 1 - n!.

The programs for A176418, there is no canonical definition to state claims against.
-/

/-! ## A176418.P17595714570787821576

`A018572(A126770(n))`
-/

namespace A176418.P17595714570787821576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018572 (A126770 n).toNat

end

end A176418.P17595714570787821576

/-! ## A176418.P8875418570942697564

`A115649(A223256(n))`
-/

namespace A176418.P8875418570942697564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115649 (A223256 n).toNat

end

end A176418.P8875418570942697564

/-! ## A176418.P13711102064204403992

`A260124(A176417(n))`
-/

namespace A176418.P13711102064204403992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A176417 n).toNat

end

end A176418.P13711102064204403992

/-! ## A176418.P16477464906516552226

`A002637(A141690(n)²)`
-/

namespace A176418.P16477464906516552226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (A141690 n ^ 2).toNat

end

end A176418.P16477464906516552226

/-! ## A176418.P14489959754724862491

`A121047(A278099(n+1))`
-/

namespace A176418.P14489959754724862491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A278099 (n + 1)).toNat

end

end A176418.P14489959754724862491

/-!
# A176419: Triangle read by rows: T(n,k) = A022168(n,k)*n!/binomial(n,k) + 1 - n!.

The programs for A176419, there is no canonical definition to state claims against.
-/

/-! ## A176419.P9769910549859555537

`A025789(2^A144463(n))`
-/

namespace A176419.P9769910549859555537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A144463 n : ℤ))).toNat

end

end A176419.P9769910549859555537

/-! ## A176419.P17800176789240294321

`A025789(4^A086617(n))`
-/

namespace A176419.P17800176789240294321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A086617 n : ℤ))).toNat

end

end A176419.P17800176789240294321

/-! ## A176419.P4146140840384879007

`A025789(4^A123610(n))`
-/

namespace A176419.P4146140840384879007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A123610 n : ℤ))).toNat

end

end A176419.P4146140840384879007

/-! ## A176419.P18153435273048439707

`A025789(4^A156354(n))`
-/

namespace A176419.P18153435273048439707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A156354 n : ℤ))).toNat

end

end A176419.P18153435273048439707

/-! ## A176419.P9095175436779154981

`A025789(4^A167040(n))`
-/

namespace A176419.P9095175436779154981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A167040 n : ℤ))).toNat

end

end A176419.P9095175436779154981

/-!
# A176420: Triangle read by rows: T(n,k) = 1 + (q-binomial coefficient [n,k] for q=2) - binomial(n,k).

The programs for A176420, the canonical program `A176420.P16704905755318038212` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176420 has offset 0).

The definition of A176420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176420.P16704905755318038212

`A022166(n)-A014473(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176420

/-- `A022166(n)-A014473(n)` -/
def P16704905755318038212.Spec : Prop :=
  ∀ n, P16704905755318038212.a n = A176420 n

theorem P16704905755318038212.correct : P16704905755318038212.Spec := by
  intro n
  simp only [A176420]

end A176420

/-! ## A176420.P12823779239827260497

`A022166(n)+1-A007318(n)`
-/

namespace A176420.P12823779239827260497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (1 - A007318 n)

end

end A176420.P12823779239827260497

namespace A176420

/-- `A022166(n)+1-A007318(n)` -/
def P12823779239827260497.Spec : Prop :=
  ∀ n, P12823779239827260497.a n = A176420 n

theorem P12823779239827260497.correct : P12823779239827260497.Spec := by
  intro n
  simp only [A176420, Nat.add_sub_cancel, A176420.P12823779239827260497.a, A176420.P16704905755318038212.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A022166, A022166.P334113423595562006.a, A157638, A157638.P4487463188860279648.a, A005329, A005329.P11063078373449312137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176420

/-! ## A176420.P16784899253979231287

`A022166(n)+1-abs(A117440(n))`
-/

namespace A176420.P16784899253979231287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (1 - |A117440 n|)

end

end A176420.P16784899253979231287

namespace A176420

/-- `A022166(n)+1-abs(A117440(n))` -/
def P16784899253979231287.Spec : Prop :=
  ∀ n, P16784899253979231287.a n = A176420 n

end A176420

/-! ## A176420.P4659247657440080569

`A022166(n)+1-abs(A130595(n))`
-/

namespace A176420.P4659247657440080569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (1 - |A130595 n|)

end

end A176420.P4659247657440080569

namespace A176420

/-- `A022166(n)+1-abs(A130595(n))` -/
def P4659247657440080569.Spec : Prop :=
  ∀ n, P4659247657440080569.a n = A176420 n

end A176420

/-! ## A176420.P7255450600884123403

`A022166(n)+1-sqrt(A008459(n))`
-/

namespace A176420.P7255450600884123403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℝ) + (1 - Real.sqrt (A008459 n : ℝ))

end

end A176420.P7255450600884123403

namespace A176420

/-- `A022166(n)+1-sqrt(A008459(n))` -/
def P7255450600884123403.Spec : Prop :=
  ∀ n, P7255450600884123403.a n = (A176420 n : ℝ)

end A176420

/-! ## A176420.P590590959142409931

`A022166(n)+1-Δ[A102363(n)]`
-/

namespace A176420.P590590959142409931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (1 - (f1 (n + 1) - f1 n))

end

end A176420.P590590959142409931

namespace A176420

/-- `A022166(n)+1-Δ[A102363(n)]` -/
def P590590959142409931.Spec : Prop :=
  ∀ n, P590590959142409931.a n = A176420 n

end A176420

/-! ## A176420.P4924314125772496888

`A022166(n)+1-A028326(n)/2`
-/

namespace A176420.P4924314125772496888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) + (1 - (A028326 n : ℚ) / 2)

end

end A176420.P4924314125772496888

namespace A176420

/-- `A022166(n)+1-A028326(n)/2` -/
def P4924314125772496888.Spec : Prop :=
  ∀ n, P4924314125772496888.a n = (A176420 n : ℚ)

theorem P4924314125772496888.correct : P4924314125772496888.Spec := by
  intro n
  simp only [A176420, Nat.add_sub_cancel, A176420.P4924314125772496888.a, A176420.P16704905755318038212.a, A014473, A014473.P9301799580602651200.a, A022166, A022166.P334113423595562006.a, A028326, A028326.P7676793339942299677.a, A007318, A007318.P11755526479805562006.a, A157638, A157638.P4487463188860279648.a, A005329, A005329.P11063078373449312137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176420

/-! ## A176420.P4787583262700349672

`a(A008683(n)²)-(A007318(n)-A022166(n))` with `a(0)=1, a(1)=1`
-/

namespace A176420.P4787583262700349672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat - (A007318 n - A022166 n)

end

end A176420.P4787583262700349672

namespace A176420

/-- `a(A008683(n)²)-(A007318(n)-A022166(n))` -/
def P4787583262700349672.Spec : Prop :=
  ∀ n, P4787583262700349672.a n = A176420 n

end A176420

/-! ## A176420.P11277098545873285194

`A157638(n)%(A022166(n)+1)`
-/

namespace A176420.P11277098545873285194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157638 n) (A022166 n + 1)

end

end A176420.P11277098545873285194

namespace A176420

/-- `A157638(n)%(A022166(n)+1)` -/
def P11277098545873285194.Spec : Prop :=
  ∀ n, P11277098545873285194.a n = A176420 n

end A176420

/-! ## A176420.P17568755572674292789

`ceil(sqrt(A174918(n)))`
-/

namespace A176420.P17568755572674292789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A174918 n : ℝ)⌉

end

end A176420.P17568755572674292789

namespace A176420

/-- `ceil(sqrt(A174918(n)))` -/
def P17568755572674292789.Spec : Prop :=
  ∀ n, P17568755572674292789.a n = A176420 n

end A176420

/-! ## A176420.P16203098701985703544

`A024000(A007318(n))+A022166(n)`
-/

namespace A176420.P16203098701985703544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A007318 n).toNat + A022166 n

end

end A176420.P16203098701985703544

namespace A176420

/-- `A024000(A007318(n))+A022166(n)` -/
def P16203098701985703544.Spec : Prop :=
  ∀ n, P16203098701985703544.a n = A176420 n

end A176420

/-!
# A176421: Triangle read by rows: T(n,k) = 1 + (q-binomial coefficient [n,k] for q=3) - binomial(n,k).

The programs for A176421, there is no canonical definition to state claims against.
-/

/-! ## A176421.P9590637264086255911

`A022167(n)-A014473(n)`
-/

namespace A176421.P9590637264086255911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A014473 n

end

end A176421.P9590637264086255911

/-! ## A176421.P674609792452165265

`A022167(n)+1-A007318(n)`
-/

namespace A176421.P674609792452165265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n + (1 - A007318 n)

end

end A176421.P674609792452165265

/-! ## A176421.P1604016715481178898

`A174527(n)+1-A022167(n)`
-/

namespace A176421.P1604016715481178898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174527 n + (1 - A022167 n)

end

end A176421.P1604016715481178898

/-! ## A176421.P8263047261406997531

`A022167(n)+1-abs(A130595(n))`
-/

namespace A176421.P8263047261406997531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n + (1 - |A130595 n|)

end

end A176421.P8263047261406997531

/-! ## A176421.P9181691093437181680

`A157640(n)%(A022167(n)+1)`
-/

namespace A176421.P9181691093437181680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157640 n) (A022167 n + 1)

end

end A176421.P9181691093437181680

/-!
# A176422: Triangle read by rows: T(n,k) = 1 + (q-binomial coefficient [n,k] for q=4) - binomial(n,k).

The programs for A176422, there is no canonical definition to state claims against.
-/

/-! ## A176422.P6929752692861848130

`A022168(n)-A014473(n)`
-/

namespace A176422.P6929752692861848130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n - A014473 n

end

end A176422.P6929752692861848130

/-! ## A176422.P572104422289734579

`A022168(n)+1-A007318(n)`
-/

namespace A176422.P572104422289734579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n + (1 - A007318 n)

end

end A176422.P572104422289734579

/-! ## A176422.P13589848726686782079

`A174528(n)+1-A022168(n)`
-/

namespace A176422.P13589848726686782079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174528 n + (1 - A022168 n)

end

end A176422.P13589848726686782079

/-! ## A176422.P8639941047078750099

`A022168(n)+1-abs(A108086(n))`
-/

namespace A176422.P8639941047078750099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n + (1 - |A108086 n|)

end

end A176422.P8639941047078750099

/-! ## A176422.P3998856062234867730

`A157641(n)%(A022168(n)+1)`
-/

namespace A176422.P3998856062234867730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157641 n) (A022168 n + 1)

end

end A176422.P3998856062234867730

/-! ## A176422.P6921280266028231797

`ceil(sqrt(A174921(n)))`
-/

namespace A176422.P6921280266028231797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A174921 n : ℝ)⌉

end

end A176422.P6921280266028231797

/-!
# A176423: Numbers that are the sum of at least three distinct nonnegative integers in arithmetic progression.

The programs for A176423, the canonical program `A176423.P6772582188731160605` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176423 has offset 1).

The definition of A176423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176423.P16423512161104444322

`A175553(n+1)+2`
-/

namespace A176423.P16423512161104444322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1) + 2

end

end A176423.P16423512161104444322

namespace A176423

/-- `A175553(n+1)+2` -/
def P16423512161104444322.Spec : Prop :=
  ∀ n, P16423512161104444322.a n = A176423 (n + 1)

theorem P16423512161104444322.correct : P16423512161104444322.Spec := by
  intro n
  simp only [A176423, Nat.add_sub_cancel, A176423.P16423512161104444322.a, A176423.P6772582188731160605.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A175553, A175553.P5108297307299290706.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176423

/-! ## A176423.P5617284642305327549

`∪[3*(n+1), A018252(n+5)]`
-/

namespace A176423.P5617284642305327549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P5617284642305327549

namespace A176423

/-- `∪[3*(n+1), A018252(n+5)]` -/
def P5617284642305327549.Spec : Prop :=
  ∀ n, (P5617284642305327549.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P6772582188731160605

`A018252((n+3)%a(n-1))` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176423

/-- `A018252((n+3)%a(n-1))` -/
def P6772582188731160605.Spec : Prop :=
  ∀ n, P6772582188731160605.a n = A176423 (n + 1)

theorem P6772582188731160605.correct : P6772582188731160605.Spec := by
  intro n
  simp only [A176423, Nat.add_sub_cancel]

end A176423

/-! ## A176423.P17166194839947207310

`A000720(a(n-1)+1)+3+n` with `a(0)=3`
-/

namespace A176423.P17166194839947207310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000720 (a (n - 1) + 1).toNat + 3 + (n : ℤ)

end

end A176423.P17166194839947207310

namespace A176423

/-- `A000720(a(n-1)+1)+3+n` -/
def P17166194839947207310.Spec : Prop :=
  ∀ n, P17166194839947207310.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P18134109180271094598

`A018252(n+3)-(n+1)*C(3, n+2)`
-/

namespace A176423.P18134109180271094598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - ((n + 1) * Nat.choose 3 (n + 2) : ℤ)

end

end A176423.P18134109180271094598

namespace A176423

/-- `A018252(n+3)-(n+1)*C(3, n+2)` -/
def P18134109180271094598.Spec : Prop :=
  ∀ n, P18134109180271094598.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P7793588697598879439

`A018252(ceil(a(n-1)/(n+2)+n+1))` with `a(0)=3`
-/

namespace A176423.P7793588697598879439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 ⌈(a (n - 1) : ℚ) / (n + 2 : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A176423.P7793588697598879439

namespace A176423

/-- `A018252(ceil(a(n-1)/(n+2)+n+1))` -/
def P7793588697598879439.Spec : Prop :=
  ∀ n, P7793588697598879439.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P6562778166995366088

`∪[A387319(n+1), A168101(n)]`
-/

namespace A176423.P6562778166995366088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P6562778166995366088

namespace A176423

/-- `∪[A387319(n+1), A168101(n)]` -/
def P6562778166995366088.Spec : Prop :=
  ∀ n, (P6562778166995366088.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P4047923065489952550

`A002808(n+2)+A151798(n)-4`
-/

namespace A176423.P4047923065489952550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) + (A151798 n - 4)

end

end A176423.P4047923065489952550

namespace A176423

/-- `A002808(n+2)+A151798(n)-4` -/
def P4047923065489952550.Spec : Prop :=
  ∀ n, P4047923065489952550.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P6441330261363757923

`∪[A009188(n+1), A055632(n+1)]`
-/

namespace A176423.P6441330261363757923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P6441330261363757923

namespace A176423

/-- `∪[A009188(n+1), A055632(n+1)]` -/
def P6441330261363757923.Spec : Prop :=
  ∀ n, (P6441330261363757923.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P3925268136555997196

`∪[A025004(n+1), A387319(n+1)]`
-/

namespace A176423.P3925268136555997196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P3925268136555997196

namespace A176423

/-- `∪[A025004(n+1), A387319(n+1)]` -/
def P3925268136555997196.Spec : Prop :=
  ∀ n, (P3925268136555997196.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P8789143945030850583

`∪[A088005(n+1), A343311(n+1)]`
-/

namespace A176423.P8789143945030850583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P8789143945030850583

namespace A176423

/-- `∪[A088005(n+1), A343311(n+1)]` -/
def P8789143945030850583.Spec : Prop :=
  ∀ n, (P8789143945030850583.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P3729643052420241143

`∪[A047667(n+1), A387319(n+1)]`
-/

namespace A176423.P3729643052420241143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P3729643052420241143

namespace A176423

/-- `∪[A047667(n+1), A387319(n+1)]` -/
def P3729643052420241143.Spec : Prop :=
  ∀ n, (P3729643052420241143.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P9148159675830172013

`∪[A123581(n+1), A343311(n+1)]`
-/

namespace A176423.P9148159675830172013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P9148159675830172013

namespace A176423

/-- `∪[A123581(n+1), A343311(n+1)]` -/
def P9148159675830172013.Spec : Prop :=
  ∀ n, (P9148159675830172013.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P13424752516969033908

`∪[A088005(n+1), A387319(n+1)]`
-/

namespace A176423.P13424752516969033908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P13424752516969033908

namespace A176423

/-- `∪[A088005(n+1), A387319(n+1)]` -/
def P13424752516969033908.Spec : Prop :=
  ∀ n, (P13424752516969033908.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P15625856489498678857

`∪[A201533(n+1), A343311(n+1)]`
-/

namespace A176423.P15625856489498678857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P15625856489498678857

namespace A176423

/-- `∪[A201533(n+1), A343311(n+1)]` -/
def P15625856489498678857.Spec : Prop :=
  ∀ n, (P15625856489498678857.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P11509221851708571400

`∪[A324584(n+1), A343311(n+1)]`
-/

namespace A176423.P11509221851708571400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176423.P11509221851708571400

namespace A176423

/-- `∪[A324584(n+1), A343311(n+1)]` -/
def P11509221851708571400.Spec : Prop :=
  ∀ n, (P11509221851708571400.a n : ℤ) = A176423 (n + 1)

end A176423

/-! ## A176423.P18155088544766024961

`A018252(A000032(C(3, a(n-1)))+n+1)` with `a(0)=3`
-/

namespace A176423.P18155088544766024961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 (A000032 (Nat.choose 3 (a (n - 1)).toNat) + (n + 1 : ℤ)).toNat

end

end A176423.P18155088544766024961

namespace A176423

/-- `A018252(A000032(C(3, a(n-1)))+n+1)` -/
def P18155088544766024961.Spec : Prop :=
  ∀ n, P18155088544766024961.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P671786998395046436

`A009056(A175553(n+1))`
-/

namespace A176423.P671786998395046436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A175553 (n + 1)).toNat

end

end A176423.P671786998395046436

namespace A176423

/-- `A009056(A175553(n+1))` -/
def P671786998395046436.Spec : Prop :=
  ∀ n, P671786998395046436.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P9216064759280006546

`A061008(a(n-1)+1)+n+1` with `a(0)=3`
-/

namespace A176423.P9216064759280006546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061008 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A176423.P9216064759280006546

namespace A176423

/-- `A061008(a(n-1)+1)+n+1` -/
def P9216064759280006546.Spec : Prop :=
  ∀ n, P9216064759280006546.a n = A176423 (n + 1)

end A176423

/-! ## A176423.P17771817272082150479

`lt[∏{d}[A090369(n+1), #], char[2]+1+n]+1`
-/

namespace A176423.P17771817272082150479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A176423.P17771817272082150479

namespace A176423

/-- `lt[∏{d}[A090369(n+1), #], char[2]+1+n]+1` -/
def P17771817272082150479.Spec : Prop :=
  ∀ n, (P17771817272082150479.a n : ℤ) = A176423 (n + 1)

end A176423

/-!
# A176425: Number of connected planar graphs with at most n edges.

The programs for A176425, there is no canonical definition to state claims against.
-/

/-! ## A176425.P16538296139820745291

`∑[A046091(n)]`
-/

namespace A176425.P16538296139820745291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176425.P16538296139820745291

/-! ## A176425.P15546294739229680269

`record[∑[A343873(n)]/A343863(n)]`
-/

namespace A176425.P15546294739229680269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A343863 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176425.P15546294739229680269

/-! ## A176425.P3127681028770191744

`a(n-1)+A046091(n)%A046090(n)` with `a(0)=1`
-/

namespace A176425.P3127681028770191744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A046091 n) (A046090 n)

end

end A176425.P3127681028770191744

/-! ## A176425.P12930009915468728242

`∑[A002905(n)-A006925(A006926(n))]`
-/

namespace A176425.P12930009915468728242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A006925 (A006926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176425.P12930009915468728242

/-! ## A176425.P11718595351191851629

`∑[A002905(n)-A011817(A002998(n))]`
-/

namespace A176425.P11718595351191851629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A011817 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176425.P11718595351191851629

/-!
# A176427: A symmetrical triangle sequence:q=2;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=-Eulerian[n + 1, m] + 2*c(n, q)/(c(m, q)*c(n - m, q)).

The programs for A176427, there is no canonical definition to state claims against.
-/

/-! ## A176427.P137339694465555700

`2*A022166(n)-A008292(n+1)`
-/

namespace A176427.P137339694465555700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - A008292 (n + 1)

end

end A176427.P137339694465555700

/-! ## A176427.P13017600286026225059

`A022166(n)+A022166(n)-ceil(A176200(n)/2)`
-/

namespace A176427.P13017600286026225059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A022166 n - ⌈(A176200 n : ℚ) / 2⌉)

end

end A176427.P13017600286026225059

/-! ## A176427.P17417019754199493529

`2*A296548(n)/A117401(n)-A065826(n+1)/A002260(n+1)`
-/

namespace A176427.P17417019754199493529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A296548 n : ℚ) / (A117401 n : ℚ)) - (A065826 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A176427.P17417019754199493529

/-! ## A176427.P5701259865649943011

`A004277(A022166(n))-A008292(n+1)`
-/

namespace A176427.P5701259865649943011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022166 n).toNat - A008292 (n + 1)

end

end A176427.P5701259865649943011

/-! ## A176427.P9565399367698715892

`A004277(A022166(n))-ceil(A176200(n)/2)`
-/

namespace A176427.P9565399367698715892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022166 n).toNat - ⌈(A176200 n : ℚ) / 2⌉

end

end A176427.P9565399367698715892

/-!
# A176428: A symmetrical triangle sequence:q=3;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=-Eulerian[n + 1, m] + 2*c(n, q)/(c(m, q)*c(n - m, q)).

The programs for A176428, there is no canonical definition to state claims against.
-/

/-! ## A176428.P16588172664778632763

`A174527(n)-2*A290448(n)`
-/

namespace A176428.P16588172664778632763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174527 n - 2 * A290448 n

end

end A176428.P16588172664778632763

/-! ## A176428.P10739596251607841428

`2*A022167(n)-A008292(n+1)`
-/

namespace A176428.P10739596251607841428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022167 n - A008292 (n + 1)

end

end A176428.P10739596251607841428

/-! ## A176428.P11925077395526855851

`2*A022167(n)-A173018(A007401(n+1))`
-/

namespace A176428.P11925077395526855851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022167 n - A173018 (A007401 (n + 1)).toNat

end

end A176428.P11925077395526855851

/-! ## A176428.P1269140064501707263

`A174527(n)-A005843(A290448(n))`
-/

namespace A176428.P1269140064501707263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174527 n - A005843 (A290448 n).toNat

end

end A176428.P1269140064501707263

/-! ## A176428.P1267796006410183119

`A004277(A022167(n))-A008292(n+1)`
-/

namespace A176428.P1267796006410183119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022167 n).toNat - A008292 (n + 1)

end

end A176428.P1267796006410183119

/-!
# A176429: A symmetrical triangle sequence:q=4;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=-Eulerian[n + 1, m] + 2*c(n, q)/(c(m, q)*c(n - m, q)).

The programs for A176429, there is no canonical definition to state claims against.
-/

/-! ## A176429.P4372179403679338191

`A174528(n)-2*A290448(n)`
-/

namespace A176429.P4372179403679338191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174528 n - 2 * A290448 n

end

end A176429.P4372179403679338191

/-! ## A176429.P2995639245085358168

`2*A022168(n)-A008292(n+1)`
-/

namespace A176429.P2995639245085358168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - A008292 (n + 1)

end

end A176429.P2995639245085358168

/-! ## A176429.P5773426739865192910

`2*A022168(n)-A123125(A014132(n+1))`
-/

namespace A176429.P5773426739865192910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - A123125 (A014132 (n + 1)).toNat

end

end A176429.P5773426739865192910

/-! ## A176429.P8726380870199794029

`2*A022168(n)-A173018(A007401(n+1))`
-/

namespace A176429.P8726380870199794029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - A173018 (A007401 (n + 1)).toNat

end

end A176429.P8726380870199794029

/-! ## A176429.P4272189749449333292

`A174528(n)-A005843(A290448(n))`
-/

namespace A176429.P4272189749449333292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174528 n - A005843 (A290448 n).toNat

end

end A176429.P4272189749449333292

/-!
# A176430: Integers equal to sqrt(A174864/4).

The programs for A176430, there is no canonical definition to state claims against.
-/

/-! ## A176430.P17897312668139106312

`C(2*a(n-1)+1, 2)` with `a(0)=3`
-/

namespace A176430.P17897312668139106312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (2 * a (n - 1) + 1) 2

end

end A176430.P17897312668139106312

/-!
# A176446: 

The programs for A176446, there is no canonical definition to state claims against.
-/

/-! ## A176446.P4681892740742963978

`a(n-1)+20*a(n-1)²` with `a(0)=1`
-/

namespace A176446.P4681892740742963978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 20 * a (n - 1) ^ 2

end

end A176446.P4681892740742963978

/-! ## A176446.P4792974919420316651

`(20*a(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A176446.P4792974919420316651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (20 * a (n - 1) + 1) * a (n - 1)

end

end A176446.P4792974919420316651

/-! ## A176446.P14973718900767413903

`lcm(lcm(20, a(n-1))+1, a(n-1))` with `a(0)=1`
-/

namespace A176446.P14973718900767413903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.lcm 20 (a (n - 1)) + 1) (a (n - 1))

end

end A176446.P14973718900767413903

/-!
# A176447: a(2n) = -n, a(2n+1) = 2n+1.

The programs for A176447, the canonical program `A176447.P3925027959972573313` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176447 has offset 0).

The definition of A176447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176447.P7236394785438102797

`n*(1-3*(-1)^n)/4`
-/

namespace A176447.P7236394785438102797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 - 3 * (-1) ^ n) : ℚ) / 4

end

end A176447.P7236394785438102797

namespace A176447

/-- `n*(1-3*(-1)^n)/4` -/
def P7236394785438102797.Spec : Prop :=
  ∀ n, P7236394785438102797.a n = (A176447 n : ℚ)

theorem P7236394785438102797.correct : P7236394785438102797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A176447, Nat.add_sub_cancel, A176447.P7236394785438102797.a, A176447.P3925027959972573313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A176447, Nat.add_sub_cancel, A176447.P7236394785438102797.a, A176447.P3925027959972573313.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176447

/-! ## A176447.P3925027959972573313

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176447

/-- `2*a(n-2)-a(n-4)` -/
def P3925027959972573313.Spec : Prop :=
  ∀ n, P3925027959972573313.a n = A176447 n

theorem P3925027959972573313.correct : P3925027959972573313.Spec := by
  intro n
  simp only [A176447]

end A176447

/-! ## A176447.P6478958179900287793

`Δ[C(ceil(xor(1, n)/2), 2)]`
-/

namespace A176447.P6478958179900287793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A176447.P6478958179900287793

namespace A176447

/-- `Δ[C(ceil(xor(1, n)/2), 2)]` -/
def P6478958179900287793.Spec : Prop :=
  ∀ n, P6478958179900287793.a n = A176447 n

end A176447

/-! ## A176447.P9141055670397891137

`floor(n/(3*n%2-2))`
-/

namespace A176447.P9141055670397891137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (((3 * (n % 2) : ℕ) : ℤ) - 2 : ℚ)⌋

end

end A176447.P9141055670397891137

namespace A176447

/-- `floor(n/(3*n%2-2))` -/
def P9141055670397891137.Spec : Prop :=
  ∀ n, P9141055670397891137.a n = A176447 n

end A176447

/-! ## A176447.P1007321947882484801

`lcm(2, 3*n)/2-2*n`
-/

namespace A176447.P1007321947882484801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℚ) / 2 - (2 * n : ℚ)

end

end A176447.P1007321947882484801

namespace A176447

/-- `lcm(2, 3*n)/2-2*n` -/
def P1007321947882484801.Spec : Prop :=
  ∀ n, P1007321947882484801.a n = (A176447 n : ℚ)

end A176447

/-! ## A176447.P17096967099989238638

`-(C(n, 2)/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A176447.P17096967099989238638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  -((Nat.choose n 2 : ℚ) / a (n - 1))

end

end A176447.P17096967099989238638

namespace A176447

/-- `-(C(n, 2)/a(n-1))` -/
def P17096967099989238638.Spec : Prop :=
  ∀ n, P17096967099989238638.a n = (A176447 n : ℚ)

end A176447

/-! ## A176447.P894576805987857924

`ogf((x-x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A176447.P894576805987857924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, 0, -2, 0, 1] n

end

end A176447.P894576805987857924

namespace A176447

/-- `ogf((x-x^2+x^3)/(1-2x^2+x^4))` -/
def P894576805987857924.Spec : Prop :=
  ∀ n, P894576805987857924.a n = A176447 n

end A176447

/-! ## A176447.P6555916664289888906

`floor((n-∑[n])/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A176447.P6555916664289888906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A176447.P6555916664289888906

namespace A176447

/-- `floor((n-∑[n])/a(n-1))` -/
def P6555916664289888906.Spec : Prop :=
  ∀ n, P6555916664289888906.a n = A176447 n

end A176447

/-! ## A176447.P12799354617343955536

`gcd(2*n, (n+1)*∑[n])-n`
-/

namespace A176447.P12799354617343955536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - (n : ℤ)

end

end A176447.P12799354617343955536

namespace A176447

/-- `gcd(2*n, (n+1)*∑[n])-n` -/
def P12799354617343955536.Spec : Prop :=
  ∀ n, P12799354617343955536.a n = A176447 n

end A176447

/-! ## A176447.P11391236627820609682

`(n-∑[n])*1/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A176447.P11391236627820609682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) * (1 / a (n - 1))

end

end A176447.P11391236627820609682

namespace A176447

/-- `(n-∑[n])*1/a(n-1)` -/
def P11391236627820609682.Spec : Prop :=
  ∀ n, P11391236627820609682.a n = (A176447 n : ℚ)

end A176447

/-! ## A176447.P10106189276122439255

`(1-n)*n/(2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A176447.P10106189276122439255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ) : ℚ) * ((n : ℚ) / (2 * a (n - 1)))

end

end A176447.P10106189276122439255

namespace A176447

/-- `(1-n)*n/(2*a(n-1))` -/
def P10106189276122439255.Spec : Prop :=
  ∀ n, P10106189276122439255.a n = (A176447 n : ℚ)

end A176447

/-! ## A176447.P6482539885858912585

`floor(n/((1-n)/a(n-1)-1))` with `a(0)=0, a(1)=1`
-/

namespace A176447.P6482539885858912585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) / ((1 - (n : ℤ) : ℚ) / (a (n - 1) : ℚ) - 1)⌋

end

end A176447.P6482539885858912585

namespace A176447

/-- `floor(n/((1-n)/a(n-1)-1))` -/
def P6482539885858912585.Spec : Prop :=
  ∀ n, P6482539885858912585.a n = A176447 n

end A176447

/-! ## A176447.P5578952405377171242

`a(n-2)+(1-n)/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A176447.P5578952405377171242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (1 - (n : ℤ) : ℚ) / a (n - 1)

end

end A176447.P5578952405377171242

namespace A176447

/-- `a(n-2)+(1-n)/a(n-1)` -/
def P5578952405377171242.Spec : Prop :=
  ∀ n, P5578952405377171242.a n = (A176447 n : ℚ)

end A176447

/-! ## A176447.P2801764380791298012

`∑[1-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A176447.P2801764380791298012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A176447.P2801764380791298012

namespace A176447

/-- `∑[1-a(n-1)]-a(n-1)` -/
def P2801764380791298012.Spec : Prop :=
  ∀ n, P2801764380791298012.a n = A176447 n

end A176447

/-! ## A176447.P1608642144287432283

`Δ[n+2-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A176447.P1608642144287432283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A176447.P1608642144287432283

namespace A176447

/-- `Δ[n+2-a(n-1)]+a(n-2)` -/
def P1608642144287432283.Spec : Prop :=
  ∀ n, P1608642144287432283.a n = A176447 n

end A176447

/-! ## A176447.P10777022112379521334

`a(n-2)+3%(a(n-1)-n)-1` with `a(0)=0, a(1)=1`
-/

namespace A176447.P10777022112379521334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Int.tmod 3 (a (n - 1) - (n : ℤ)) - 1)

end

end A176447.P10777022112379521334

namespace A176447

/-- `a(n-2)+3%(a(n-1)-n)-1` -/
def P10777022112379521334.Spec : Prop :=
  ∀ n, P10777022112379521334.a n = A176447 n

end A176447

/-! ## A176447.P16035641694710571773

`a(n-2)-(a(n-1)-(n-2))%3` with `a(0)=0, a(1)=1`
-/

namespace A176447.P16035641694710571773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.tmod (a (n - 1) - ((n : ℤ) - 2)) 3

end

end A176447.P16035641694710571773

namespace A176447

/-- `a(n-2)-(a(n-1)-(n-2))%3` -/
def P16035641694710571773.Spec : Prop :=
  ∀ n, P16035641694710571773.a n = A176447 n

end A176447

/-! ## A176447.P4068341338025802733

`n-(a(n-1)+1+a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A176447.P4068341338025802733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (a (n - 1) + 1 + (a (n - 1) + a (n - 2)))

end

end A176447.P4068341338025802733

namespace A176447

/-- `n-(a(n-1)+1+a(n-1)+a(n-2))` -/
def P4068341338025802733.Spec : Prop :=
  ∀ n, P4068341338025802733.a n = A176447 n

end A176447

/-! ## A176447.P3143647043808774114

`n-1-a(n-1)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A176447.P3143647043808774114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 - a (n - 1) - a (n - 1) - a (n - 2)

end

end A176447.P3143647043808774114

namespace A176447

/-- `n-1-a(n-1)-a(n-1)-a(n-2)` -/
def P3143647043808774114.Spec : Prop :=
  ∀ n, P3143647043808774114.a n = A176447 n

end A176447

/-!
# A176448: a(n) = 7*2^n - 2.

The programs for A176448, the canonical program `A176448.P14409493927522167505` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176448 has offset 0).

The definition of A176448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-2` (program `A176448.P14409493927522167505`, by `A176448.P14409493927522167505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176448.P14409493927522167505

`7*2^n-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176448

/-- `7*2^n-2` -/
def P14409493927522167505.Spec : Prop :=
  ∀ n, P14409493927522167505.a n = A176448 n

theorem P14409493927522167505.correct : P14409493927522167505.Spec := by
  intro n
  simp only [A176448]

end A176448

/-! ## A176448.P14019546835763183924

`2*(a(n-1)+1)` with `a(0)=5`
-/

namespace A176448.P14019546835763183924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 * (a (n - 1) + 1)

end

end A176448.P14019546835763183924

namespace A176448

/-- `2*(a(n-1)+1)` -/
def P14019546835763183924.Spec : Prop :=
  ∀ n, (P14019546835763183924.a n : ℤ) = A176448 n

theorem P14019546835763183924.correct : P14019546835763183924.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P14019546835763183924.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P14019546835763183924.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P12856865589813915402

`A174317(n+3)`
-/

namespace A176448.P12856865589813915402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (n + 3)

end

end A176448.P12856865589813915402

namespace A176448

/-- `A174317(n+3)` -/
def P12856865589813915402.Spec : Prop :=
  ∀ n, P12856865589813915402.a n = A176448 n

end A176448

/-! ## A176448.P17014732493262435606

`ogf((5-3x)/(1-3x+2x^2))`
-/

namespace A176448.P17014732493262435606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3] [1, -3, 2] n

end

end A176448.P17014732493262435606

namespace A176448

/-- `ogf((5-3x)/(1-3x+2x^2))` -/
def P17014732493262435606.Spec : Prop :=
  ∀ n, P17014732493262435606.a n = A176448 n

end A176448

/-! ## A176448.P6497430666669753382

`abs(2-lcm(7, 2^n))`
-/

namespace A176448.P6497430666669753382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 7 (2 ^ n) : ℤ)|

end

end A176448.P6497430666669753382

namespace A176448

/-- `abs(2-lcm(7, 2^n))` -/
def P6497430666669753382.Spec : Prop :=
  ∀ n, P6497430666669753382.a n = A176448 n

end A176448

/-! ## A176448.P1757439274630731766

`∑[2*a(n-1)]` with `a(0)=5, a(1)=7`
-/

namespace A176448.P1757439274630731766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176448.P1757439274630731766

namespace A176448

/-- `∑[2*a(n-1)]` -/
def P1757439274630731766.Spec : Prop :=
  ∀ n, (P1757439274630731766.a n : ℤ) = A176448 n

end A176448

/-! ## A176448.P9430095280582969666

`lcm(2, a(n-1)+1)` with `a(0)=5, a(1)=12`
-/

namespace A176448.P9430095280582969666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A176448.P9430095280582969666

namespace A176448

/-- `lcm(2, a(n-1)+1)` -/
def P9430095280582969666.Spec : Prop :=
  ∀ n, (P9430095280582969666.a n : ℤ) = A176448 n

end A176448

/-! ## A176448.P7211407942588261766

`2*xor(1, a(n-1))` with `a(0)=5, a(1)=12`
-/

namespace A176448.P7211407942588261766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A176448.P7211407942588261766

namespace A176448

/-- `2*xor(1, a(n-1))` -/
def P7211407942588261766.Spec : Prop :=
  ∀ n, (P7211407942588261766.a n : ℤ) = A176448 n

end A176448

/-! ## A176448.P10619052935675073322

`or(2, 2*a(n-1))` with `a(0)=5, a(1)=12`
-/

namespace A176448.P10619052935675073322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  Nat.lor 2 (2 * a (n - 1))

end

end A176448.P10619052935675073322

namespace A176448

/-- `or(2, 2*a(n-1))` -/
def P10619052935675073322.Spec : Prop :=
  ∀ n, (P10619052935675073322.a n : ℤ) = A176448 n

end A176448

/-! ## A176448.P14238431880348770464

`2*(1-floor(-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A176448.P14238431880348770464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A176448.P14238431880348770464

namespace A176448

/-- `2*(1-floor(-a(n-1)))` -/
def P14238431880348770464.Spec : Prop :=
  ∀ n, P14238431880348770464.a n = A176448 n

theorem P14238431880348770464.correct : P14238431880348770464.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P14238431880348770464.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P14238431880348770464.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P17472662288430789442

`2*(1-ceil(-a(n-1)))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A176448.P17472662288430789442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A176448.P17472662288430789442

namespace A176448

/-- `2*(1-ceil(-a(n-1)))` -/
def P17472662288430789442.Spec : Prop :=
  ∀ n, P17472662288430789442.a n = A176448 n

theorem P17472662288430789442.correct : P17472662288430789442.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P17472662288430789442.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P17472662288430789442.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P17497174285817148360

`2*(1-round(-a(n-1)))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A176448.P17497174285817148360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A176448.P17497174285817148360

namespace A176448

/-- `2*(1-round(-a(n-1)))` -/
def P17497174285817148360.Spec : Prop :=
  ∀ n, P17497174285817148360.a n = A176448 n

theorem P17497174285817148360.correct : P17497174285817148360.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P17497174285817148360.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P17497174285817148360.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P1634452121551346125

`(a(n-1)+1)/(1-1/2)` with `a(0)=5`
-/

namespace A176448.P1634452121551346125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (a (n - 1) + 1) / (1 - (1 : ℚ) / 2)

end

end A176448.P1634452121551346125

namespace A176448

/-- `(a(n-1)+1)/(1-1/2)` -/
def P1634452121551346125.Spec : Prop :=
  ∀ n, P1634452121551346125.a n = (A176448 n : ℚ)

theorem P1634452121551346125.correct : P1634452121551346125.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P1634452121551346125.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P1634452121551346125.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P2414193275706679065

`4*(1-(1-a(n-1))/2)` with `a(0)=5`
-/

namespace A176448.P2414193275706679065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (1 - (1 - a (n - 1)) / 2)

end

end A176448.P2414193275706679065

namespace A176448

/-- `4*(1-(1-a(n-1))/2)` -/
def P2414193275706679065.Spec : Prop :=
  ∀ n, P2414193275706679065.a n = (A176448 n : ℚ)

theorem P2414193275706679065.correct : P2414193275706679065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P2414193275706679065.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P2414193275706679065.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P3231522572523628038

`abs(a(n-1)+a(n-1)+2)` with `a(0)=5`
-/

namespace A176448.P3231522572523628038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A176448.P3231522572523628038

namespace A176448

/-- `abs(a(n-1)+a(n-1)+2)` -/
def P3231522572523628038.Spec : Prop :=
  ∀ n, (P3231522572523628038.a n : ℤ) = A176448 n

theorem P3231522572523628038.correct : P3231522572523628038.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P3231522572523628038.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P3231522572523628038.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P16718238849115900254

`floor(a(n-1)+a(n-1)+2)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A176448.P16718238849115900254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A176448.P16718238849115900254

namespace A176448

/-- `floor(a(n-1)+a(n-1)+2)` -/
def P16718238849115900254.Spec : Prop :=
  ∀ n, (P16718238849115900254.a n : ℤ) = A176448 n

theorem P16718238849115900254.correct : P16718238849115900254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P16718238849115900254.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P16718238849115900254.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P17148432750049393262

`ceil(a(n-1)+a(n-1)+2)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A176448.P17148432750049393262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A176448.P17148432750049393262

namespace A176448

/-- `ceil(a(n-1)+a(n-1)+2)` -/
def P17148432750049393262.Spec : Prop :=
  ∀ n, (P17148432750049393262.a n : ℤ) = A176448 n

theorem P17148432750049393262.correct : P17148432750049393262.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P17148432750049393262.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P17148432750049393262.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P2654392836445533236

`round(a(n-1)+a(n-1)+2)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A176448.P2654392836445533236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A176448.P2654392836445533236

namespace A176448

/-- `round(a(n-1)+a(n-1)+2)` -/
def P2654392836445533236.Spec : Prop :=
  ∀ n, (P2654392836445533236.a n : ℤ) = A176448 n

theorem P2654392836445533236.correct : P2654392836445533236.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176448, Nat.add_sub_cancel, A176448.P2654392836445533236.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176448, Nat.add_sub_cancel, A176448.P2654392836445533236.a, A176448.P14409493927522167505.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176448

/-! ## A176448.P10262696289676528964

`xor(1, a(n-1)+a(n-1)+3)` with `a(0)=5`
-/

namespace A176448.P10262696289676528964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 1 (a (n - 1) + (a (n - 1) + 3))

end

end A176448.P10262696289676528964

namespace A176448

/-- `xor(1, a(n-1)+a(n-1)+3)` -/
def P10262696289676528964.Spec : Prop :=
  ∀ n, (P10262696289676528964.a n : ℤ) = A176448 n

end A176448

/-! ## A176448.P1665174276727735759

`record[a(n-2)+a(n-2)+2]` with `a(0)=5, a(1)=0`
-/

namespace A176448.P1665174276727735759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176448.P1665174276727735759

namespace A176448

/-- `record[a(n-2)+a(n-2)+2]` -/
def P1665174276727735759.Spec : Prop :=
  ∀ n, (P1665174276727735759.a n : ℤ) = A176448 n

end A176448

/-!
# A176449: a(n) = 9*2^n - 2.

The programs for A176449, the canonical program `A176449.P17517383944047529496` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176449 has offset 0).

The definition of A176449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*2^n-2` (program `A176449.P17517383944047529496`, by `A176449.P17517383944047529496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176449.P17517383944047529496

`9*2^n-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176449

/-- `9*2^n-2` -/
def P17517383944047529496.Spec : Prop :=
  ∀ n, P17517383944047529496.a n = A176449 n

theorem P17517383944047529496.correct : P17517383944047529496.Spec := by
  intro n
  simp only [A176449]

end A176449

/-! ## A176449.P8117533711628973838

`2*(a(n-1)+1)` with `a(0)=7`
-/

namespace A176449.P8117533711628973838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  2 * (a (n - 1) + 1)

end

end A176449.P8117533711628973838

namespace A176449

/-- `2*(a(n-1)+1)` -/
def P8117533711628973838.Spec : Prop :=
  ∀ n, (P8117533711628973838.a n : ℤ) = A176449 n

theorem P8117533711628973838.correct : P8117533711628973838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176449, Nat.add_sub_cancel, A176449.P8117533711628973838.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176449, Nat.add_sub_cancel, A176449.P8117533711628973838.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176449

/-! ## A176449.P10959595317796705595

`ogf((7-5x)/(1-3x+2x^2))`
-/

namespace A176449.P10959595317796705595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5] [1, -3, 2] n

end

end A176449.P10959595317796705595

namespace A176449

/-- `ogf((7-5x)/(1-3x+2x^2))` -/
def P10959595317796705595.Spec : Prop :=
  ∀ n, P10959595317796705595.a n = A176449 n

end A176449

/-! ## A176449.P8594108439123790466

`abs(2-lcm(9, 2^n))`
-/

namespace A176449.P8594108439123790466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 9 (2 ^ n) : ℤ)|

end

end A176449.P8594108439123790466

namespace A176449

/-- `abs(2-lcm(9, 2^n))` -/
def P8594108439123790466.Spec : Prop :=
  ∀ n, P8594108439123790466.a n = A176449 n

end A176449

/-! ## A176449.P9482182789787549071

`∑[2*a(n-1)]` with `a(0)=7, a(1)=9`
-/

namespace A176449.P9482182789787549071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 9] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176449.P9482182789787549071

namespace A176449

/-- `∑[2*a(n-1)]` -/
def P9482182789787549071.Spec : Prop :=
  ∀ n, (P9482182789787549071.a n : ℤ) = A176449 n

end A176449

/-! ## A176449.P16987435231178232305

`lcm(2, a(n-1)+1)` with `a(0)=7, a(1)=16`
-/

namespace A176449.P16987435231178232305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 16] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A176449.P16987435231178232305

namespace A176449

/-- `lcm(2, a(n-1)+1)` -/
def P16987435231178232305.Spec : Prop :=
  ∀ n, (P16987435231178232305.a n : ℤ) = A176449 n

end A176449

/-! ## A176449.P14990461064436639046

`2*or(1, a(n-1))` with `a(0)=7, a(1)=16`
-/

namespace A176449.P14990461064436639046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 16] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A176449.P14990461064436639046

namespace A176449

/-- `2*or(1, a(n-1))` -/
def P14990461064436639046.Spec : Prop :=
  ∀ n, (P14990461064436639046.a n : ℤ) = A176449 n

end A176449

/-! ## A176449.P2597922346274025610

`2*xor(1, a(n-1))` with `a(0)=7, a(1)=16`
-/

namespace A176449.P2597922346274025610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 16] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A176449.P2597922346274025610

namespace A176449

/-- `2*xor(1, a(n-1))` -/
def P2597922346274025610.Spec : Prop :=
  ∀ n, (P2597922346274025610.a n : ℤ) = A176449 n

end A176449

/-! ## A176449.P7001281679087507807

`∑[a(n-1)+a(n-1)]` with `a(0)=7, a(1)=9`
-/

namespace A176449.P7001281679087507807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 9] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176449.P7001281679087507807

namespace A176449

/-- `∑[a(n-1)+a(n-1)]` -/
def P7001281679087507807.Spec : Prop :=
  ∀ n, (P7001281679087507807.a n : ℤ) = A176449 n

end A176449

/-! ## A176449.P5784294554614219954

`floor(a(n-1)+a(n-1)+2)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A176449.P5784294554614219954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A176449.P5784294554614219954

namespace A176449

/-- `floor(a(n-1)+a(n-1)+2)` -/
def P5784294554614219954.Spec : Prop :=
  ∀ n, (P5784294554614219954.a n : ℤ) = A176449 n

theorem P5784294554614219954.correct : P5784294554614219954.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176449, Nat.add_sub_cancel, A176449.P5784294554614219954.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176449, Nat.add_sub_cancel, A176449.P5784294554614219954.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176449

/-! ## A176449.P9363405333755422137

`record[A134693(n+1)-2]`
-/

namespace A176449.P9363405333755422137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176449.P9363405333755422137

namespace A176449

/-- `record[A134693(n+1)-2]` -/
def P9363405333755422137.Spec : Prop :=
  ∀ n, P9363405333755422137.a n = A176449 n

end A176449

/-! ## A176449.P11178196045241451120

`A309523(A047617(n+1))`
-/

namespace A176449.P11178196045241451120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309523 (A047617 (n + 1)).toNat

end

end A176449.P11178196045241451120

namespace A176449

/-- `A309523(A047617(n+1))` -/
def P11178196045241451120.Spec : Prop :=
  ∀ n, P11178196045241451120.a n = A176449 n

end A176449

/-! ## A176449.P6955462044757708243

`floor(3*a(n-1)-(a(n-1)-2))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A176449.P6955462044757708243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 2)

end

end A176449.P6955462044757708243

namespace A176449

/-- `floor(3*a(n-1)-(a(n-1)-2))` -/
def P6955462044757708243.Spec : Prop :=
  ∀ n, P6955462044757708243.a n = A176449 n

theorem P6955462044757708243.correct : P6955462044757708243.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176449, Nat.add_sub_cancel, A176449.P6955462044757708243.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176449, Nat.add_sub_cancel, A176449.P6955462044757708243.a, A176449.P17517383944047529496.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176449

/-! ## A176449.P16677726809915232098

`Δ[a(n-1)+a(n-1)+n+3+n]` with `a(0)=2`
-/

namespace A176449.P16677726809915232098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (n + 3 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A176449.P16677726809915232098

namespace A176449

/-- `Δ[a(n-1)+a(n-1)+n+3+n]` -/
def P16677726809915232098.Spec : Prop :=
  ∀ n, P16677726809915232098.a n = A176449 n

end A176449

/-! ## A176449.P10561520422304326967

`Δ[A099041(n)]`
-/

namespace A176449.P10561520422304326967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176449.P10561520422304326967

namespace A176449

/-- `Δ[A099041(n)]` -/
def P10561520422304326967.Spec : Prop :=
  ∀ n, P10561520422304326967.a n = A176449 n

theorem P10561520422304326967.correct : P10561520422304326967.Spec := by
  intro n
  simp only [A176449, Nat.add_sub_cancel, A176449.P10561520422304326967.f1, A176449.P10561520422304326967.a, A176449.P17517383944047529496.a, A099041, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176449

/-! ## A176449.P7686622006665486156

`Δ[A116454(n+2)]`
-/

namespace A176449.P7686622006665486156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176449.P7686622006665486156

namespace A176449

/-- `Δ[A116454(n+2)]` -/
def P7686622006665486156.Spec : Prop :=
  ∀ n, P7686622006665486156.a n = A176449 n

end A176449

/-! ## A176449.P4860938166801092133

`A053209(n+2)/2`
-/

namespace A176449.P4860938166801092133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053209 (n + 2) : ℚ) / 2

end

end A176449.P4860938166801092133

namespace A176449

/-- `A053209(n+2)/2` -/
def P4860938166801092133.Spec : Prop :=
  ∀ n, P4860938166801092133.a n = (A176449 n : ℚ)

end A176449

/-! ## A176449.P8378090206524793106

`Δ[A005010(n)-2*n]`
-/

namespace A176449.P8378090206524793106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176449.P8378090206524793106

namespace A176449

/-- `Δ[A005010(n)-2*n]` -/
def P8378090206524793106.Spec : Prop :=
  ∀ n, P8378090206524793106.a n = A176449 n

theorem P8378090206524793106.correct : P8378090206524793106.Spec := by
  intro n
  simp only [A176449, Nat.add_sub_cancel, A176449.P8378090206524793106.f1, A176449.P8378090206524793106.a, A176449.P17517383944047529496.a, A005010, A005010.P13530636184195266107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176449

/-! ## A176449.P10614836364018757852

`(A154251(n+2)+3)/2`
-/

namespace A176449.P10614836364018757852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154251 (n + 2) + 3 : ℚ) / 2

end

end A176449.P10614836364018757852

namespace A176449

/-- `(A154251(n+2)+3)/2` -/
def P10614836364018757852.Spec : Prop :=
  ∀ n, P10614836364018757852.a n = (A176449 n : ℚ)

end A176449

/-! ## A176449.P6469040596332741751

`A224692(2*n+3)/2`
-/

namespace A176449.P6469040596332741751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224692 (2 * n + 3) : ℚ) / 2

end

end A176449.P6469040596332741751

namespace A176449

/-- `A224692(2*n+3)/2` -/
def P6469040596332741751.Spec : Prop :=
  ∀ n, P6469040596332741751.a n = (A176449 n : ℚ)

end A176449

/-!
# A176451: Number of primes between two consecutive nonprimes in A037143.

The programs for A176451, the canonical program `A176451.P36513650681906829` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176451 has offset 1).

The definition of A176451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176451.P36513650681906829

`A088700(4-4%(n+4)+n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176451

/-- `A088700(4-4%(n+4)+n)` -/
def P36513650681906829.Spec : Prop :=
  ∀ n, P36513650681906829.a n = A176451 (n + 1)

theorem P36513650681906829.correct : P36513650681906829.Spec := by
  intro n
  simp only [A176451, Nat.add_sub_cancel]

end A176451

/-! ## A176451.P2530427026148437046

`A088700(n*a((n+1)%n))` with `a(0)=2`
-/

namespace A176451.P2530427026148437046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 ((n : ℤ) * a ((n + 1) % n)).toNat

end

end A176451.P2530427026148437046

namespace A176451

/-- `A088700(n*a((n+1)%n))` -/
def P2530427026148437046.Spec : Prop :=
  ∀ n, P2530427026148437046.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P10578711866230218051

`A088700(A000038(n)²+n)`
-/

namespace A176451.P10578711866230218051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A176451.P10578711866230218051

namespace A176451

/-- `A088700(A000038(n)²+n)` -/
def P10578711866230218051.Spec : Prop :=
  ∀ n, P10578711866230218051.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P14931912726001620196

`A088700(xor(n, A000038(n)²))`
-/

namespace A176451.P14931912726001620196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (Int.xor (n : ℤ) (A000038 n ^ 2)).toNat

end

end A176451.P14931912726001620196

namespace A176451

/-- `A088700(xor(n, A000038(n)²))` -/
def P14931912726001620196.Spec : Prop :=
  ∀ n, P14931912726001620196.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P10625688340698076308

`A088700(2*A000038(n)+n)`
-/

namespace A176451.P10625688340698076308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (2 * A000038 n + (n : ℤ)).toNat

end

end A176451.P10625688340698076308

namespace A176451

/-- `A088700(2*A000038(n)+n)` -/
def P10625688340698076308.Spec : Prop :=
  ∀ n, P10625688340698076308.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P6324641210285848101

`A088700(gcd(n, A106232(n+1)))`
-/

namespace A176451.P6324641210285848101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (Int.gcd (n : ℤ) (A106232 (n + 1)))

end

end A176451.P6324641210285848101

namespace A176451

/-- `A088700(gcd(n, A106232(n+1)))` -/
def P6324641210285848101.Spec : Prop :=
  ∀ n, P6324641210285848101.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P18417295317550661120

`A088700(xor(n, 2*A000038(n)))`
-/

namespace A176451.P18417295317550661120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (Int.xor (n : ℤ) (2 * A000038 n)).toNat

end

end A176451.P18417295317550661120

namespace A176451

/-- `A088700(xor(n, 2*A000038(n)))` -/
def P18417295317550661120.Spec : Prop :=
  ∀ n, P18417295317550661120.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P1043391199270873346

`A088700(abs(n-A000038(n)²))`
-/

namespace A176451.P1043391199270873346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 |(n : ℤ) - A000038 n ^ 2|.toNat

end

end A176451.P1043391199270873346

namespace A176451

/-- `A088700(abs(n-A000038(n)²))` -/
def P1043391199270873346.Spec : Prop :=
  ∀ n, P1043391199270873346.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P382362799664864197

`A088700(A000038(n)+abs(1-n)+1)`
-/

namespace A176451.P382362799664864197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (A000038 n + (|1 - (n : ℤ)| + 1)).toNat

end

end A176451.P382362799664864197

namespace A176451

/-- `A088700(A000038(n)+abs(1-n)+1)` -/
def P382362799664864197.Spec : Prop :=
  ∀ n, P382362799664864197.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P4865311133949331448

`A088700(n-A345063(a(n-1)+1)+1)` with `a(0)=2`
-/

namespace A176451.P4865311133949331448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 ((n : ℤ) - A345063 (a (n - 1) + 1).toNat + 1).toNat

end

end A176451.P4865311133949331448

namespace A176451

/-- `A088700(n-A345063(a(n-1)+1)+1)` -/
def P4865311133949331448.Spec : Prop :=
  ∀ n, P4865311133949331448.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P89663978727584268

`A088700(n-and(1, A030432(a(n-1)+1))+1)` with `a(0)=2`
-/

namespace A176451.P89663978727584268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 ((n : ℤ) - Int.land 1 (A030432 (a (n - 1) + 1).toNat) + 1).toNat

end

end A176451.P89663978727584268

namespace A176451

/-- `A088700(n-and(1, A030432(a(n-1)+1))+1)` -/
def P89663978727584268.Spec : Prop :=
  ∀ n, P89663978727584268.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P17463673854598205162

`A088700(n-A088700(and(1, a(n-1))+1)+1)` with `a(0)=2`
-/

namespace A176451.P17463673854598205162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 ((n : ℤ) - A088700 (Int.land 1 (a (n - 1)) + 1).toNat + 1).toNat

end

end A176451.P17463673854598205162

namespace A176451

/-- `A088700(n-A088700(and(1, a(n-1))+1)+1)` -/
def P17463673854598205162.Spec : Prop :=
  ∀ n, P17463673854598205162.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P3056657280776739691

`A088700(n-A035263(a(n-1)+a(n-1)+1)+1)` with `a(0)=2`
-/

namespace A176451.P3056657280776739691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 ((n : ℤ) - A035263 (a (n - 1) + a (n - 1) + 1).toNat + 1).toNat

end

end A176451.P3056657280776739691

namespace A176451

/-- `A088700(n-A035263(a(n-1)+a(n-1)+1)+1)` -/
def P3056657280776739691.Spec : Prop :=
  ∀ n, P3056657280776739691.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P4718892061557058930

`A088700(A000007(n)+n)+A000007(n)`
-/

namespace A176451.P4718892061557058930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (A000007 n + (n : ℤ)).toNat + A000007 n

end

end A176451.P4718892061557058930

namespace A176451

/-- `A088700(A000007(n)+n)+A000007(n)` -/
def P4718892061557058930.Spec : Prop :=
  ∀ n, P4718892061557058930.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P4785300363349762886

`A088700(Δ[A304450(n+1)]%6+n)`
-/

namespace A176451.P4785300363349762886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (Int.tmod (f1 (n + 1) - f1 n) 6 + (n : ℤ)).toNat

end

end A176451.P4785300363349762886

namespace A176451

/-- `A088700(Δ[A304450(n+1)]%6+n)` -/
def P4785300363349762886.Spec : Prop :=
  ∀ n, P4785300363349762886.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P12765620083005750402

`Δ[A000720(A207790(A131098(n+1)))]`
-/

namespace A176451.P12765620083005750402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A207790 (A131098 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176451.P12765620083005750402

namespace A176451

/-- `Δ[A000720(A207790(A131098(n+1)))]` -/
def P12765620083005750402.Spec : Prop :=
  ∀ n, P12765620083005750402.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P8674646864685681853

`A088700(gcd(n, A008458(A008458(n))))`
-/

namespace A176451.P8674646864685681853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (Int.gcd (n : ℤ) (A008458 (A008458 n).toNat))

end

end A176451.P8674646864685681853

namespace A176451

/-- `A088700(gcd(n, A008458(A008458(n))))` -/
def P8674646864685681853.Spec : Prop :=
  ∀ n, P8674646864685681853.a n = A176451 (n + 1)

end A176451

/-! ## A176451.P3781359149857483202

`A088700(A233583(n+1)+A000038(n))`
-/

namespace A176451.P3781359149857483202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (A233583 (n + 1) + A000038 n).toNat

end

end A176451.P3781359149857483202

namespace A176451

/-- `A088700(A233583(n+1)+A000038(n))` -/
def P3781359149857483202.Spec : Prop :=
  ∀ n, P3781359149857483202.a n = A176451 (n + 1)

end A176451

/-!
# A176453: Decimal expansion of 4+2*sqrt(5).

The programs for A176453, there is no canonical definition to state claims against.
-/

/-! ## A176453.P15256987174402474305

`A010476(n)+A000038(n)²`
-/

namespace A176453.P15256987174402474305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) + A000038 n ^ 2

end

end A176453.P15256987174402474305

/-! ## A176453.P4228206783974685717

`4/A040002(n)*A010476(n)`
-/

namespace A176453.P4228206783974685717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A040002 n : ℚ) * (A010476 (n + 1) : ℚ)

end

end A176453.P4228206783974685717

/-! ## A176453.P12677443351464092510

`(A000007(n)+1)²*A134974(n)`
-/

namespace A176453.P12677443351464092510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) ^ 2 * A134974 (n + 1)

end

end A176453.P12677443351464092510

/-! ## A176453.P3078522445418839753

`A010476(n)*(3-A040001(2*n))`
-/

namespace A176453.P3078522445418839753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) * (3 - A040001 (2 * n))

end

end A176453.P3078522445418839753

/-! ## A176453.P16690865059926032801

`(12/2)²/A040306(n)*A010476(n)`
-/

namespace A176453.P16690865059926032801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 : ℚ) / 2) ^ 2 / (A040306 n : ℚ) * (A010476 (n + 1) : ℚ)

end

end A176453.P16690865059926032801

/-! ## A176453.P10142161123461653528

`A010476(n)*A035214(A001316(n))`
-/

namespace A176453.P10142161123461653528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) * A035214 (A001316 n).toNat

end

end A176453.P10142161123461653528

/-! ## A176453.P3456637804836894980

`lcm(A010476(n), A040071(A004273(n)))`
-/

namespace A176453.P3456637804836894980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010476 (n + 1)) (A040071 (A004273 n).toNat)

end

end A176453.P3456637804836894980

/-! ## A176453.P7820181572525054175

`A007318(Δ[A027709(n)])*A010476(n)`
-/

namespace A176453.P7820181572525054175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A010476 (n + 1)

end

end A176453.P7820181572525054175

/-! ## A176453.P15323727658113831180

`A010476(n)*A081604(Δ[A027709(n)])`
-/

namespace A176453.P15323727658113831180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) * A081604 (f1 (n + 1) - f1 n).toNat

end

end A176453.P15323727658113831180

/-! ## A176453.P17084833202273632645

`A010476(n)*A329683(Δ[A027709(n)])`
-/

namespace A176453.P17084833202273632645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) * A329683 (f1 (n + 1) - f1 n).toNat

end

end A176453.P17084833202273632645

/-! ## A176453.P13424440774871378666

`A000038(n)+A134974(n)+A000038(n)²`
-/

namespace A176453.P13424440774871378666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A134974 (n + 1) + A000038 n ^ 2)

end

end A176453.P13424440774871378666

/-! ## A176453.P9072619370758295789

`A380982(n+1)`
-/

namespace A176453.P9072619370758295789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380982 (n + 1 + 1)

end

end A176453.P9072619370758295789

/-! ## A176453.P15630165215004314995

`A010698(n+1)+A010476(n)-A040015(n)`
-/

namespace A176453.P15630165215004314995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 (n + 1) + (A010476 (n + 1) - A040015 n)

end

end A176453.P15630165215004314995

/-! ## A176453.P12457490764306144043

`A040210(n+1)/A040210(n)*A010476(n)`
-/

namespace A176453.P12457490764306144043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040210 (n + 1) : ℚ) / (A040210 n : ℚ) * (A010476 (n + 1) : ℚ)

end

end A176453.P12457490764306144043

/-! ## A176453.P377185698329971562

`A040600(n+1)/A040600(n)*A010476(n)`
-/

namespace A176453.P377185698329971562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040600 (n + 1) : ℚ) / (A040600 n : ℚ) * (A010476 (n + 1) : ℚ)

end

end A176453.P377185698329971562

/-! ## A176453.P1447980772466877781

`A040650(n+1)/A040650(n)*A010476(n)`
-/

namespace A176453.P1447980772466877781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040650 (n + 1) : ℚ) / (A040650 n : ℚ) * (A010476 (n + 1) : ℚ)

end

end A176453.P1447980772466877781

/-! ## A176453.P313371527253417072

`A010476(n)*A040001(A016789(n))/A040001(n)`
-/

namespace A176453.P313371527253417072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) * A040001 (A016789 n).toNat : ℚ) / (A040001 n : ℚ)

end

end A176453.P313371527253417072

/-!
# A176458: Decimal expansion of 4+sqrt(17).

The programs for A176458, there is no canonical definition to state claims against.
-/

/-! ## A176458.P17266741110026305605

`A010473(n)*A054977(n)`
-/

namespace A176458.P17266741110026305605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010473 (n + 1) * A054977 n

end

end A176458.P17266741110026305605

/-! ## A176458.P13083518454769251277

`A010473(n)+A000038(n)²`
-/

namespace A176458.P13083518454769251277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010473 (n + 1) + A000038 n ^ 2

end

end A176458.P13083518454769251277

/-! ## A176458.P9642885742556763914

`(A000007(n)+1)*A010473(n)`
-/

namespace A176458.P9642885742556763914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A010473 (n + 1)

end

end A176458.P9642885742556763914

/-! ## A176458.P9568301852174894443

`4/A040002(n)*A010473(n)`
-/

namespace A176458.P9568301852174894443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A040002 n : ℚ) * (A010473 (n + 1) : ℚ)

end

end A176458.P9568301852174894443

/-! ## A176458.P9787227749054743285

`8+A010473(n)-A040012(n)`
-/

namespace A176458.P9787227749054743285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 + (A010473 (n + 1) - A040012 n)

end

end A176458.P9787227749054743285

/-! ## A176458.P345928415286988836

`12*A010473(n)/A040030(n)`
-/

namespace A176458.P345928415286988836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((A010473 (n + 1) : ℚ) / (A040030 n : ℚ))

end

end A176458.P345928415286988836

/-! ## A176458.P12037617191895651329

`(8/2)²/A040056(n)*A010473(n)`
-/

namespace A176458.P12037617191895651329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 : ℚ) / 2) ^ 2 / (A040056 n : ℚ) * (A010473 (n + 1) : ℚ)

end

end A176458.P12037617191895651329

/-! ## A176458.P16136468683273371326

`A040380(n+1)/A040380(n)*A010473(n)`
-/

namespace A176458.P16136468683273371326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040380 (n + 1) : ℚ) / (A040380 n : ℚ) * (A010473 (n + 1) : ℚ)

end

end A176458.P16136468683273371326

/-! ## A176458.P12553910677366261475

`A040930(n+1)/A040930(n)*A010473(n)`
-/

namespace A176458.P12553910677366261475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040930 (n + 1) : ℚ) / (A040930 n : ℚ) * (A010473 (n + 1) : ℚ)

end

end A176458.P12553910677366261475

/-! ## A176458.P9308579144236154927

`A000034(A008458(n))*A010473(n)`
-/

namespace A176458.P9308579144236154927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008458 n).toNat * A010473 (n + 1)

end

end A176458.P9308579144236154927

/-! ## A176458.P15656286415364711944

`A010473(n)*A014963(A017089(n))`
-/

namespace A176458.P15656286415364711944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010473 (n + 1) * A014963 (A017089 n).toNat

end

end A176458.P15656286415364711944

/-! ## A176458.P14733973209847547526

`A010473(n)*A014963(A017113(n))`
-/

namespace A176458.P14733973209847547526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010473 (n + 1) * A014963 (A017113 n).toNat

end

end A176458.P14733973209847547526

/-!
# A176462: Numbers k such that neither k-1 nor k+1 is prime or semiprime.

The programs for A176462, there is no canonical definition to state claims against.
-/

/-! ## A176462.P7473044485697476066

`A166685(n+2)%A115842(n+1)²`
-/

namespace A176462.P7473044485697476066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166685 (n + 2)) (A115842 (n + 1) ^ 2)

end

end A176462.P7473044485697476066

/-! ## A176462.P14263789277165786215

`A130773(eq[A178334(n), A323162(n+1)])`
-/

namespace A176462.P14263789277165786215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176462.P14263789277165786215

/-! ## A176462.P16697357196174910465

`A199969(2*eq[A178334(n), A323162(n+1)]+2)`
-/

namespace A176462.P16697357196174910465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A176462.P16697357196174910465

/-! ## A176462.P5900177324755359734

`A057427(n)+2*eq[A178334(n), A323162(n+1)]`
-/

namespace A176462.P5900177324755359734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A176462.P5900177324755359734

/-! ## A176462.P12999268671315578449

`A166685(n+2)%A001043(A301695(n))`
-/

namespace A176462.P12999268671315578449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166685 (n + 2)) (A001043 (A301695 n).toNat)

end

end A176462.P12999268671315578449

/-! ## A176462.P2481595229940329571

`A166685(n+2)-A010816(A093931(n+1))`
-/

namespace A176462.P2481595229940329571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166685 (n + 2) - A010816 (A093931 (n + 1)).toNat

end

end A176462.P2481595229940329571

/-! ## A176462.P1222424310226353006

`A043545(A023187(n+1))*A166685(n+2)`
-/

namespace A176462.P1222424310226353006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A023187 (n + 1)).toNat * A166685 (n + 2)

end

end A176462.P1222424310226353006

/-! ## A176462.P15239520342524209758

`A166685(n+2)-A010816(A093922(n+1))`
-/

namespace A176462.P15239520342524209758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166685 (n + 2) - A010816 (A093922 (n + 1)).toNat

end

end A176462.P15239520342524209758

/-! ## A176462.P16571922520898822878

`eq[n, A004442(A000267(A180107(n)))]`
-/

namespace A176462.P16571922520898822878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A000267 (A180107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176462.P16571922520898822878

/-!
# A176463: Irregular triangle read by rows: T(n,k) = number of Huffman-equivalence classes of ternary trees with 3n+1 leaves and 4k leaves on the bottom level (n>=1, k>=1).

The programs for A176463, there is no canonical definition to state claims against.
-/

/-! ## A176463.P14183380878320034665

`A140997(record[A186233(2*(n+1))-1])`
-/

namespace A176463.P14183380878320034665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186233 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176463.P14183380878320034665

/-! ## A176463.P2657930297827237221

`A140997(record[A064097(A099900(n))])`
-/

namespace A176463.P2657930297827237221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A099900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176463.P2657930297827237221

/-!
# A176464: The positions of primes in A065516.

The programs for A176464, the canonical program `A176464.P9685000066694146912` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176464 has offset 1).

The definition of A176464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176464.P9685000066694146912

`A072000(A272309(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176464

/-- `A072000(A272309(n+1))` -/
def P9685000066694146912.Spec : Prop :=
  ∀ n, P9685000066694146912.a n = A176464 (n + 1)

theorem P9685000066694146912.correct : P9685000066694146912.Spec := by
  intro n
  simp only [A176464, Nat.add_sub_cancel]

end A176464

/-! ## A176464.P10299081939129273636

`eq[1, A001222(A065516(n+1))]+1`
-/

namespace A176464.P10299081939129273636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065516 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176464.P10299081939129273636

namespace A176464

/-- `eq[1, A001222(A065516(n+1))]+1` -/
def P10299081939129273636.Spec : Prop :=
  ∀ n, (P10299081939129273636.a n : ℤ) = A176464 (n + 1)

end A176464

/-! ## A176464.P5955322644675113360

`eq[1, A001222(Δ[A001358(n+1)])]+1`
-/

namespace A176464.P5955322644675113360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176464.P5955322644675113360

namespace A176464

/-- `eq[1, A001222(Δ[A001358(n+1)])]+1` -/
def P5955322644675113360.Spec : Prop :=
  ∀ n, (P5955322644675113360.a n : ℤ) = A176464 (n + 1)

end A176464

/-! ## A176464.P7431218723483131422

`∑{d}[A272309(n+1), A174956(#)]`
-/

namespace A176464.P7431218723483131422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A176464.P7431218723483131422

namespace A176464

/-- `∑{d}[A272309(n+1), A174956(#)]` -/
def P7431218723483131422.Spec : Prop :=
  ∀ n, P7431218723483131422.a n = A176464 (n + 1)

end A176464

/-! ## A176464.P2152775736180880857

`A174956(A272309(n+1))%A016825(n)`
-/

namespace A176464.P2152775736180880857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174956 (A272309 (n + 1)).toNat) (A016825 n)

end

end A176464.P2152775736180880857

namespace A176464

/-- `A174956(A272309(n+1))%A016825(n)` -/
def P2152775736180880857.Spec : Prop :=
  ∀ n, P2152775736180880857.a n = A176464 (n + 1)

end A176464

/-!
# A176467: A symmetrical triangle:q=2;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=A060187(n,m)-c(n,q)/(c(m,q)*c(n-m,q))+1.

The programs for A176467, there is no canonical definition to state claims against.
-/

/-! ## A176467.P16757025080021930580

`A060187(n+1)+1-A022166(n)`
-/

namespace A176467.P16757025080021930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (1 - A022166 n)

end

end A176467.P16757025080021930580

/-! ## A176467.P12788646113067011474

`A154695(n)/A271709(n)+1-A022166(n)`
-/

namespace A176467.P12788646113067011474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154695 n : ℚ) / (A271709 n : ℚ) + 1 - (A022166 n : ℚ)

end

end A176467.P12788646113067011474

/-! ## A176467.P2651777304832988359

`(A168551(n)+A168517(n))/2+1-A022166(n)`
-/

namespace A176467.P2651777304832988359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168551 n + A168517 n : ℚ) / 2 + (1 - A022166 n : ℚ)

end

end A176467.P2651777304832988359

/-! ## A176467.P12618067613434164889

`A256890(n)/A257613(n)*A257612(n)+1-A022166(n)`
-/

namespace A176467.P12618067613434164889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256890 n : ℚ) / (A257613 n : ℚ) * (A257612 n : ℚ) + (1 - A022166 n : ℚ)

end

end A176467.P12618067613434164889

/-! ## A176467.P15009716055132504136

`A008292(n+1)+A168524(n)-A141696(n+1)+1-A022166(n)`
-/

namespace A176467.P15009716055132504136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168524 n - A141696 (n + 1)) + 1 - A022166 n

end

end A176467.P15009716055132504136

/-!
# A176468: A symmetrical triangle:q=3;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=A060187(n,m)-c(n,q)/(c(m,q)*c(n-m,q))+1.

The programs for A176468, there is no canonical definition to state claims against.
-/

/-! ## A176468.P3050704525356450530

`A060187(n+1)+1-A022167(n)`
-/

namespace A176468.P3050704525356450530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (1 - A022167 n)

end

end A176468.P3050704525356450530

/-! ## A176468.P4153114519415856242

`A176420(n)+A176467(n)-A176421(n)`
-/

namespace A176468.P4153114519415856242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176420 n + (A176467 n - A176421 n)

end

end A176468.P4153114519415856242

/-! ## A176468.P6454978969477356854

`A257625(n)/A098355(n)+1-A022167(n)`
-/

namespace A176468.P6454978969477356854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257625 n : ℚ) / (A098355 n : ℚ) + 1 - (A022167 n : ℚ)

end

end A176468.P6454978969477356854

/-! ## A176468.P4399311465542165910

`A257612(n)/A137688(n)+1-A022167(n)`
-/

namespace A176468.P4399311465542165910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ) + 1 - (A022167 n : ℚ)

end

end A176468.P4399311465542165910

/-! ## A176468.P6742139954897726746

`2*A154335(n)-A154336(n)+1-A022167(n)`
-/

namespace A176468.P6742139954897726746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154335 n - A154336 n + 1 - A022167 n

end

end A176468.P6742139954897726746

/-!
# A176469: A symmetrical triangle:q=4;c(n,q)=Product[1 - q^i, {i, 1, n}];t(n,m,q)=A060187(n,m)-c(n,q)/(c(m,q)*c(n-m,q))+1.

The programs for A176469, there is no canonical definition to state claims against.
-/

/-! ## A176469.P12344556614526809129

`A060187(n+1)+1-A022168(n)`
-/

namespace A176469.P12344556614526809129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (1 - A022168 n)

end

end A176469.P12344556614526809129

/-! ## A176469.P1957038816899515810

`A022166(n)+A176467(n)-A022168(n)`
-/

namespace A176469.P1957038816899515810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A176467 n - A022168 n)

end

end A176469.P1957038816899515810

/-! ## A176469.P12713610330164365866

`A176420(n)+A176467(n)-A176422(n)`
-/

namespace A176469.P12713610330164365866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176420 n + (A176467 n - A176422 n)

end

end A176469.P12713610330164365866

/-! ## A176469.P13990058927682206683

`A176421(n)+A176468(n)-A176422(n)`
-/

namespace A176469.P13990058927682206683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176421 n + (A176468 n - A176422 n)

end

end A176469.P13990058927682206683

/-! ## A176469.P4501031283237402538

`A060187(n+1)-A004442(A022168(n))`
-/

namespace A176469.P4501031283237402538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - A004442 (A022168 n).toNat

end

end A176469.P4501031283237402538

/-!
# A176470: Primes of the form 5*x^2 - 3*y^2, where x and y are consecutive numbers.

The programs for A176470, the canonical program `A176470.P1022862602826551583` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176470 has offset 1).

The definition of A176470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176470.P706565377970102139

`∩[A107167(n+1), A307028(n+1)]`
-/

namespace A176470.P706565377970102139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176470.P706565377970102139

namespace A176470

/-- `∩[A107167(n+1), A307028(n+1)]` -/
def P706565377970102139.Spec : Prop :=
  ∀ n, (P706565377970102139.a n : ℤ) = A176470 (n + 1)

end A176470

/-! ## A176470.P2639447989719398080

`∩[A141303(n+1), A307028(n+1)]`
-/

namespace A176470.P2639447989719398080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176470.P2639447989719398080

namespace A176470

/-- `∩[A141303(n+1), A307028(n+1)]` -/
def P2639447989719398080.Spec : Prop :=
  ∀ n, (P2639447989719398080.a n : ℤ) = A176470 (n + 1)

end A176470

/-! ## A176470.P1022862602826551583

`p?[∑[4*n]-7]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176470

/-- `p?[∑[4*n]-7]` -/
def P1022862602826551583.Spec : Prop :=
  ∀ n, P1022862602826551583.a n = A176470 (n + 1)

theorem P1022862602826551583.correct : P1022862602826551583.Spec := by
  intro n
  simp only [A176470, Nat.add_sub_cancel]

end A176470

/-! ## A176470.P8318872336322958688

`or(1, p?[(n+1)*2*n-7])`
-/

namespace A176470.P8318872336322958688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176470.P8318872336322958688

namespace A176470

/-- `or(1, p?[(n+1)*2*n-7])` -/
def P8318872336322958688.Spec : Prop :=
  ∀ n, P8318872336322958688.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P8489959360202372894

`xor(1, p?[(n+1)*2*n-7]-1)`
-/

namespace A176470.P8489959360202372894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A176470.P8489959360202372894

namespace A176470

/-- `xor(1, p?[(n+1)*2*n-7]-1)` -/
def P8489959360202372894.Spec : Prop :=
  ∀ n, P8489959360202372894.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P1032161439480112051

`-xor(p?[4*C(n, 2)-7]-1, -1)`
-/

namespace A176470.P1032161439480112051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) (-1)

end

end A176470.P1032161439480112051

namespace A176470

/-- `-xor(p?[4*C(n, 2)-7]-1, -1)` -/
def P1032161439480112051.Spec : Prop :=
  ∀ n, P1032161439480112051.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P13395720531269828595

`abs(1-p?[(n+1)*2*n-7])+1`
-/

namespace A176470.P13395720531269828595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A176470.P13395720531269828595

namespace A176470

/-- `abs(1-p?[(n+1)*2*n-7])+1` -/
def P13395720531269828595.Spec : Prop :=
  ∀ n, P13395720531269828595.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P483224236791927846

`p?[A000982(n+4)-8]/A007318(C(2, n))`
-/

namespace A176470.P483224236791927846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A176470.P483224236791927846

namespace A176470

/-- `p?[A000982(n+4)-8]/A007318(C(2, n))` -/
def P483224236791927846.Spec : Prop :=
  ∀ n, P483224236791927846.a n = (A176470 (n + 1) : ℚ)

end A176470

/-! ## A176470.P8784625112043136610

`A007318(and(3, -n))*p?[A000982(n+4)-8]`
-/

namespace A176470.P8784625112043136610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176470.P8784625112043136610

namespace A176470

/-- `A007318(and(3, -n))*p?[A000982(n+4)-8]` -/
def P8784625112043136610.Spec : Prop :=
  ∀ n, P8784625112043136610.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P17089183396918127765

`p?[A000982(n+4)-8]+A008683(4*(n+1))`
-/

namespace A176470.P17089183396918127765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A176470.P17089183396918127765

namespace A176470

/-- `p?[A000982(n+4)-8]+A008683(4*(n+1))` -/
def P17089183396918127765.Spec : Prop :=
  ∀ n, P17089183396918127765.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P7947903564526229796

`A014963(10*(n+1))*p?[A000982(n+4)-8]`
-/

namespace A176470.P7947903564526229796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176470.P7947903564526229796

namespace A176470

/-- `A014963(10*(n+1))*p?[A000982(n+4)-8]` -/
def P7947903564526229796.Spec : Prop :=
  ∀ n, P7947903564526229796.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P6059474803769617279

`p?[A000982(n+4)-8]/A000041(C(2, n+2))`
-/

namespace A176470.P6059474803769617279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A176470.P6059474803769617279

namespace A176470

/-- `p?[A000982(n+4)-8]/A000041(C(2, n+2))` -/
def P6059474803769617279.Spec : Prop :=
  ∀ n, P6059474803769617279.a n = (A176470 (n + 1) : ℚ)

end A176470

/-! ## A176470.P6744738931684459308

`A000041(gcd(n, n+1))*p?[A000982(n+4)-8]`
-/

namespace A176470.P6744738931684459308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176470.P6744738931684459308

namespace A176470

/-- `A000041(gcd(n, n+1))*p?[A000982(n+4)-8]` -/
def P6744738931684459308.Spec : Prop :=
  ∀ n, P6744738931684459308.a n = A176470 (n + 1)

end A176470

/-! ## A176470.P6964498091032806631

`p?[A000982(n+4)-8]%A018252(n+2)²²`
-/

namespace A176470.P6964498091032806631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A018252 (n + 2) ^ 2) ^ 2)

end

end A176470.P6964498091032806631

namespace A176470

/-- `p?[A000982(n+4)-8]%A018252(n+2)²²` -/
def P6964498091032806631.Spec : Prop :=
  ∀ n, P6964498091032806631.a n = A176470 (n + 1)

end A176470

/-!
# A176473: The coefficients (times n!) of the expansion of the sum {k=1 to Inf.} of Sin(x^n).

The programs for A176473, there is no canonical definition to state claims against.
-/

/-! ## A176473.P14129826116852291630

`A328310(A006318(n+1))+A070946(n)`
-/

namespace A176473.P14129826116852291630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A006318 (n + 1)).toNat + A070946 n

end

end A176473.P14129826116852291630

/-! ## A176473.P6759578417894109701

`A236308(A151058(n))`
-/

namespace A176473.P6759578417894109701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236308 (A151058 n).toNat

end

end A176473.P6759578417894109701

/-!
# A176475: The coefficients (times n!) of the expansion of the sum {k=1 to Inf.} of Tan(x^n).

The programs for A176475, there is no canonical definition to state claims against.
-/

/-! ## A176475.P14969288999401881210

`∑[A007305((n+1)^n)]-1`
-/

namespace A176475.P14969288999401881210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176475.P14969288999401881210

/-! ## A176475.P12562490860585968421

`A209253(∏[∑[2^floor(n/2)]])`
-/

namespace A176475.P12562490860585968421
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209253 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A176475.P12562490860585968421

/-!
# A176476: Partial sums of A012814.

The programs for A176476, the canonical program `A176476.P7775561646492067395` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176476 has offset 0).

The definition of A176476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176476.P7775561646492067395

`6*a(n-1)-9*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=27`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176476

/-- `6*a(n-1)-9*a(n-2)+5*a(n-3)-a(n-4)` -/
def P7775561646492067395.Spec : Prop :=
  ∀ n, P7775561646492067395.a n = A176476 n

theorem P7775561646492067395.correct : P7775561646492067395.Spec := by
  intro n
  simp only [A176476]

end A176476

/-! ## A176476.P17931412528572913124

`A012855(n+3)-1`
-/

namespace A176476.P17931412528572913124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 3) - 1

end

end A176476.P17931412528572913124

namespace A176476

/-- `A012855(n+3)-1` -/
def P17931412528572913124.Spec : Prop :=
  ∀ n, P17931412528572913124.a n = A176476 n

end A176476

/-! ## A176476.P3859930484884987842

`ogf(x/(1-6x+9x^2-5x^3+x^4))`
-/

namespace A176476.P3859930484884987842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 9, -5, 1] n

end

end A176476.P3859930484884987842

namespace A176476

/-- `ogf(x/(1-6x+9x^2-5x^3+x^4))` -/
def P3859930484884987842.Spec : Prop :=
  ∀ n, P3859930484884987842.a n = A176476 n

end A176476

/-! ## A176476.P5879706174778737633

`∑[A012814(n)]`
-/

namespace A176476.P5879706174778737633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P5879706174778737633

namespace A176476

/-- `∑[A012814(n)]` -/
def P5879706174778737633.Spec : Prop :=
  ∀ n, P5879706174778737633.a n = A176476 n

end A176476

/-! ## A176476.P14768758332930148126

`∑[∑[A012781(n)]]`
-/

namespace A176476.P14768758332930148126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012781 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P14768758332930148126

namespace A176476

/-- `∑[∑[A012781(n)]]` -/
def P14768758332930148126.Spec : Prop :=
  ∀ n, P14768758332930148126.a n = A176476 n

end A176476

/-! ## A176476.P3048669277802633063

`A182097(5*n)-1`
-/

namespace A176476.P3048669277802633063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (5 * n) - 1

end

end A176476.P3048669277802633063

namespace A176476

/-- `A182097(5*n)-1` -/
def P3048669277802633063.Spec : Prop :=
  ∀ n, P3048669277802633063.a n = A176476 n

end A176476

/-! ## A176476.P1801868169767558920

`A052954(5*n)-2`
-/

namespace A176476.P1801868169767558920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (5 * n) - 2

end

end A176476.P1801868169767558920

namespace A176476

/-- `A052954(5*n)-2` -/
def P1801868169767558920.Spec : Prop :=
  ∀ n, P1801868169767558920.a n = A176476 n

end A176476

/-! ## A176476.P13875652897140361930

`∑[A000931(5*n+2)]`
-/

namespace A176476.P13875652897140361930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P13875652897140361930

namespace A176476

/-- `∑[A000931(5*n+2)]` -/
def P13875652897140361930.Spec : Prop :=
  ∀ n, P13875652897140361930.a n = A176476 n

end A176476

/-! ## A176476.P2719109465116810094

`A078027(5*(n+1))-1`
-/

namespace A176476.P2719109465116810094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * (n + 1)) - 1

end

end A176476.P2719109465116810094

namespace A176476

/-- `A078027(5*(n+1))-1` -/
def P2719109465116810094.Spec : Prop :=
  ∀ n, P2719109465116810094.a n = A176476 n

end A176476

/-! ## A176476.P7245031951775074566

`A000931(5*n+3)-1`
-/

namespace A176476.P7245031951775074566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 3) - 1

end

end A176476.P7245031951775074566

namespace A176476

/-- `A000931(5*n+3)-1` -/
def P7245031951775074566.Spec : Prop :=
  ∀ n, P7245031951775074566.a n = A176476 n

end A176476

/-! ## A176476.P7686318552962843764

`∑[∑[A133034(5*(n+1))]]`
-/

namespace A176476.P7686318552962843764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P7686318552962843764

namespace A176476

/-- `∑[∑[A133034(5*(n+1))]]` -/
def P7686318552962843764.Spec : Prop :=
  ∀ n, P7686318552962843764.a n = A176476 n

end A176476

/-! ## A176476.P14841922601267470791

`∑[∑[A000931(A016861(n))]]`
-/

namespace A176476.P14841922601267470791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A016861 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P14841922601267470791

namespace A176476

/-- `∑[∑[A000931(A016861(n))]]` -/
def P14841922601267470791.Spec : Prop :=
  ∀ n, P14841922601267470791.a n = A176476 n

end A176476

/-! ## A176476.P401085826435087319

`A012772(n)-(A012814(n)+1)`
-/

namespace A176476.P401085826435087319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 n - (A012814 n + 1)

end

end A176476.P401085826435087319

namespace A176476

/-- `A012772(n)-(A012814(n)+1)` -/
def P401085826435087319.Spec : Prop :=
  ∀ n, P401085826435087319.a n = A176476 n

end A176476

/-! ## A176476.P2766683578596764938

`A012781(n)+A012864(n)-1`
-/

namespace A176476.P2766683578596764938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012781 n + (A012864 n - 1)

end

end A176476.P2766683578596764938

namespace A176476

/-- `A012781(n)+A012864(n)-1` -/
def P2766683578596764938.Spec : Prop :=
  ∀ n, P2766683578596764938.a n = A176476 n

end A176476

/-! ## A176476.P15278691026610688926

`∑[∑[A000931(A008706(n)+1)]]`
-/

namespace A176476.P15278691026610688926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008706 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176476.P15278691026610688926

namespace A176476

/-- `∑[∑[A000931(A008706(n)+1)]]` -/
def P15278691026610688926.Spec : Prop :=
  ∀ n, P15278691026610688926.a n = A176476 n

end A176476

/-! ## A176476.P45927527711109240

`A127682(A160912(n+1)+2)-1`
-/

namespace A176476.P45927527711109240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A160912 (n + 1) + 2).toNat - 1

end

end A176476.P45927527711109240

namespace A176476

/-- `A127682(A160912(n+1)+2)-1` -/
def P45927527711109240.Spec : Prop :=
  ∀ n, P45927527711109240.a n = A176476 n

end A176476

/-! ## A176476.P8000767857461142332

`A134816(A131098(n+1)+n)-1`
-/

namespace A176476.P8000767857461142332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A131098 (n + 1) + (n : ℤ)).toNat - 1

end

end A176476.P8000767857461142332

namespace A176476

/-- `A134816(A131098(n+1)+n)-1` -/
def P8000767857461142332.Spec : Prop :=
  ∀ n, P8000767857461142332.a n = A176476 n

end A176476

/-! ## A176476.P14240227237560307026

`A012814(n)-(1-A078027(A008587(n)))`
-/

namespace A176476.P14240227237560307026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n - (1 - A078027 (A008587 n).toNat)

end

end A176476.P14240227237560307026

namespace A176476

/-- `A012814(n)-(1-A078027(A008587(n)))` -/
def P14240227237560307026.Spec : Prop :=
  ∀ n, P14240227237560307026.a n = A176476 n

end A176476

/-! ## A176476.P2958491032641136630

`Δ[A012814(n)]-(A012493(n)+1)`
-/

namespace A176476.P2958491032641136630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A012493 n + 1)

end

end A176476.P2958491032641136630

namespace A176476

/-- `Δ[A012814(n)]-(A012493(n)+1)` -/
def P2958491032641136630.Spec : Prop :=
  ∀ n, P2958491032641136630.a n = A176476 n

end A176476

/-!
# A176478: Years in which there are five Saturdays in the month of February.

The programs for A176478, there is no canonical definition to state claims against.
-/

/-! ## A176478.P9747760313756746732

`A224948(n+7)`
-/

namespace A176478.P9747760313756746732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224948 (n + 7)

end

end A176478.P9747760313756746732

/-!
# A176479: a(n) = (n+1)*A001003(n).

The programs for A176479, the canonical program `A176479.P6065574295959308531` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176479 has offset 0).

The definition of A176479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176479.P6065574295959308531

`(n+1)*A001003(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176479

/-- `(n+1)*A001003(n)` -/
def P6065574295959308531.Spec : Prop :=
  ∀ n, P6065574295959308531.a n = A176479 n

theorem P6065574295959308531.correct : P6065574295959308531.Spec := by
  intro n
  simp only [A176479]

end A176479

/-! ## A176479.P8813733834450695028

`A247623(2*n)`
-/

namespace A176479.P8813733834450695028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (2 * n)

end

end A176479.P8813733834450695028

namespace A176479

/-- `A247623(2*n)` -/
def P8813733834450695028.Spec : Prop :=
  ∀ n, P8813733834450695028.a n = A176479 n

end A176479

/-! ## A176479.P2082002057598348928

`ceil(A050146(n+1)/2)`
-/

namespace A176479.P2082002057598348928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050146 (n + 1) : ℚ) / 2⌉

end

end A176479.P2082002057598348928

namespace A176479

/-- `ceil(A050146(n+1)/2)` -/
def P2082002057598348928.Spec : Prop :=
  ∀ n, P2082002057598348928.a n = A176479 n

end A176479

/-! ## A176479.P16434277739020643347

`ceil(A110110(2*n)/2)`
-/

namespace A176479.P16434277739020643347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110110 (2 * n) : ℚ) / 2⌉

end

end A176479.P16434277739020643347

namespace A176479

/-- `ceil(A110110(2*n)/2)` -/
def P16434277739020643347.Spec : Prop :=
  ∀ n, P16434277739020643347.a n = A176479 n

end A176479

/-! ## A176479.P13864944495152390414

`abs((n+1)*A080243(n))`
-/

namespace A176479.P13864944495152390414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A080243 n|

end

end A176479.P13864944495152390414

namespace A176479

/-- `abs((n+1)*A080243(n))` -/
def P13864944495152390414.Spec : Prop :=
  ∀ n, P13864944495152390414.a n = A176479 n

end A176479

/-! ## A176479.P10575897178117084149

`(n+1)*A104219(∑[n])`
-/

namespace A176479.P10575897178117084149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176479.P10575897178117084149

namespace A176479

/-- `(n+1)*A104219(∑[n])` -/
def P10575897178117084149.Spec : Prop :=
  ∀ n, P10575897178117084149.a n = A176479 n

end A176479

/-! ## A176479.P18218420264882404339

`(n+1)*A172094(∑[n])`
-/

namespace A176479.P18218420264882404339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176479.P18218420264882404339

namespace A176479

/-- `(n+1)*A172094(∑[n])` -/
def P18218420264882404339.Spec : Prop :=
  ∀ n, P18218420264882404339.a n = A176479 n

end A176479

/-! ## A176479.P1061101169553592396

`(n+1)*A186826(∑[n])`
-/

namespace A176479.P1061101169553592396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186826 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176479.P1061101169553592396

namespace A176479

/-- `(n+1)*A186826(∑[n])` -/
def P1061101169553592396.Spec : Prop :=
  ∀ n, P1061101169553592396.a n = A176479 n

end A176479

/-! ## A176479.P8350160980077221399

`record[A247623(A014681(n))]`
-/

namespace A176479.P8350160980077221399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176479.P8350160980077221399

namespace A176479

/-- `record[A247623(A014681(n))]` -/
def P8350160980077221399.Spec : Prop :=
  ∀ n, P8350160980077221399.a n = A176479 n

end A176479

/-! ## A176479.P1180849255270679356

`record[A247623(A083220(n))]`
-/

namespace A176479.P1180849255270679356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176479.P1180849255270679356

namespace A176479

/-- `record[A247623(A083220(n))]` -/
def P1180849255270679356.Spec : Prop :=
  ∀ n, P1180849255270679356.a n = A176479 n

end A176479

/-! ## A176479.P16301550357240457276

`record[A247623(A124625(n))]`
-/

namespace A176479.P16301550357240457276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176479.P16301550357240457276

namespace A176479

/-- `record[A247623(A124625(n))]` -/
def P16301550357240457276.Spec : Prop :=
  ∀ n, P16301550357240457276.a n = A176479 n

end A176479

/-! ## A176479.P507646765876857232

`A110110(A004277(n))/2`
-/

namespace A176479.P507646765876857232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 (A004277 n).toNat : ℚ) / 2

end

end A176479.P507646765876857232

namespace A176479

/-- `A110110(A004277(n))/2` -/
def P507646765876857232.Spec : Prop :=
  ∀ n, P507646765876857232.a n = (A176479 n : ℚ)

end A176479

/-! ## A176479.P10768993230204611063

`A050151(n)+A001003(n)`
-/

namespace A176479.P10768993230204611063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050151 n + A001003 n

end

end A176479.P10768993230204611063

namespace A176479

/-- `A050151(n)+A001003(n)` -/
def P10768993230204611063.Spec : Prop :=
  ∀ n, P10768993230204611063.a n = A176479 n

end A176479

/-! ## A176479.P3498820277277105498

`A001850(n)-A047781(n)`
-/

namespace A176479.P3498820277277105498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A047781 n

end

end A176479.P3498820277277105498

namespace A176479

/-- `A001850(n)-A047781(n)` -/
def P3498820277277105498.Spec : Prop :=
  ∀ n, P3498820277277105498.a n = A176479 n

end A176479

/-! ## A176479.P7642138961594692420

`record[A247623(abs(A099254(n)))]`
-/

namespace A176479.P7642138961594692420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 |A099254 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176479.P7642138961594692420

namespace A176479

/-- `record[A247623(abs(A099254(n)))]` -/
def P7642138961594692420.Spec : Prop :=
  ∀ n, P7642138961594692420.a n = A176479 n

end A176479

/-! ## A176479.P3089004305670418536

`A110110(A004273(n)+1)/2`
-/

namespace A176479.P3089004305670418536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 (A004273 n + 1).toNat : ℚ) / 2

end

end A176479.P3089004305670418536

namespace A176479

/-- `A110110(A004273(n)+1)/2` -/
def P3089004305670418536.Spec : Prop :=
  ∀ n, P3089004305670418536.a n = (A176479 n : ℚ)

end A176479

/-! ## A176479.P6506842079800010694

`(n+1)*A011117(A000096(n))`
-/

namespace A176479.P6506842079800010694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011117 (A000096 n).toNat

end

end A176479.P6506842079800010694

namespace A176479

/-- `(n+1)*A011117(A000096(n))` -/
def P6506842079800010694.Spec : Prop :=
  ∀ n, P6506842079800010694.a n = A176479 n

end A176479

/-! ## A176479.P11852602398243227246

`A001850(n)-A002003(n)/2`
-/

namespace A176479.P11852602398243227246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 n : ℚ) - (A002003 n : ℚ) / 2

end

end A176479.P11852602398243227246

namespace A176479

/-- `A001850(n)-A002003(n)/2` -/
def P11852602398243227246.Spec : Prop :=
  ∀ n, P11852602398243227246.a n = (A176479 n : ℚ)

end A176479

/-! ## A176479.P6559963932770337676

`A047781(n+1)-(A050151(n)+A047781(n))`
-/

namespace A176479.P6559963932770337676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (n + 1) - (A050151 n + A047781 n)

end

end A176479.P6559963932770337676

namespace A176479

/-- `A047781(n+1)-(A050151(n)+A047781(n))` -/
def P6559963932770337676.Spec : Prop :=
  ∀ n, P6559963932770337676.a n = A176479 n

end A176479

/-!
# A176480: Triangle: let b(n) = 3*b(n - 1) - 2*b(n - 2) + b(n - 3), then T(n,m) = b(n) - b(m) - b(n - m) + 1.

The programs for A176480, there is no canonical definition to state claims against.
-/

/-! ## A176480.P13375625035021222739

`A227394(A176481(n))`
-/

namespace A176480.P13375625035021222739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A176481 n).toNat

end

end A176480.P13375625035021222739

/-! ## A176480.P18324715778652919223

`A055570(ceil(sqrt(A174639(n))))`
-/

namespace A176480.P18324715778652919223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 ⌈Real.sqrt (A174639 n : ℝ)⌉.toNat

end

end A176480.P18324715778652919223

/-! ## A176480.P12340674503436246418

`A276775(A131235(n))`
-/

namespace A176480.P12340674503436246418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276775 (A131235 n).toNat

end

end A176480.P12340674503436246418

/-! ## A176480.P17150971332786549749

`A352745(A300923(n+1)+1)`
-/

namespace A176480.P17150971332786549749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A300923 (n + 1) + 1).toNat

end

end A176480.P17150971332786549749

/-!
# A176481: Triangle, read by rows, defined by T(n, k) = b(n) - b(k) - b(n-k) + 2, where b(n) = A001333(n).

The programs for A176481, there is no canonical definition to state claims against.
-/

/-! ## A176481.P12476099997468789699

`A309131(A008518(n))-1`
-/

namespace A176481.P12476099997468789699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309131 (A008518 n).toNat - 1

end

end A176481.P12476099997468789699

/-! ## A176481.P18047170341030618177

`A157454(or(6, A174528(n)))`
-/

namespace A176481.P18047170341030618177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (Int.lor 6 (A174528 n)).toNat

end

end A176481.P18047170341030618177

/-! ## A176481.P10492548077255650640

`A007305(A172377(n+1)+2)`
-/

namespace A176481.P10492548077255650640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A172377 (n + 1) + 2).toNat

end

end A176481.P10492548077255650640

/-!
# A176482: Triangle, read by rows, defined by T(n, k) = b(n) - b(k) - b(n-k) + 1 (see formula section for recurrence for b(n)).

The programs for A176482, there is no canonical definition to state claims against.
-/

/-! ## A176482.P3704928965918873225

`or(1, A176698(A004874(n+1)))`
-/

namespace A176482.P3704928965918873225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A176698 (A004874 (n + 1)).toNat)

end

end A176482.P3704928965918873225

/-! ## A176482.P3795374898763085609

`A045912(n)-A185036(A283674(n))`
-/

namespace A176482.P3795374898763085609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 n - A185036 (A283674 n).toNat

end

end A176482.P3795374898763085609

/-! ## A176482.P7846989490534827797

`or(A176698(n), A354993(A176677(n)))`
-/

namespace A176482.P7846989490534827797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176698 n) (A354993 (A176677 n).toNat)

end

end A176482.P7846989490534827797

/-! ## A176482.P13560599866063774425

`A045912(n)%A003991(A284119(n+1))`
-/

namespace A176482.P13560599866063774425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045912 n) (A003991 (A284119 (n + 1)).toNat)

end

end A176482.P13560599866063774425

/-!
# A176483: Triangle, read by rows, defined by T(n, k) = b(n) - b(k) - b(n-k) + 1, where b(n) = 5*b(n-1) - 4*b(n-2) + 3*b(n-3) - 2*b(n-4) - b(n-5) and b(0) = 0, b(1) = 1, b(2) = 5, b(3) = 21, b(4) = 88.

The programs for A176483, there is no canonical definition to state claims against.
-/

/-! ## A176483.P11623318799081794038

`A111795(A008459(n))`
-/

namespace A176483.P11623318799081794038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111795 (A008459 n).toNat

end

end A176483.P11623318799081794038

/-! ## A176483.P15691815706110712053

`A028237(A099759(n))`
-/

namespace A176483.P15691815706110712053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A099759 n).toNat

end

end A176483.P15691815706110712053

/-! ## A176483.P5904442873892319205

`A013914(A143087(n))`
-/

namespace A176483.P5904442873892319205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013914 (A143087 n).toNat

end

end A176483.P5904442873892319205

/-! ## A176483.P4068445806214746804

`A013914(A144470(n))`
-/

namespace A176483.P4068445806214746804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013914 (A144470 n).toNat

end

end A176483.P4068445806214746804

/-! ## A176483.P11859682718009938023

`A013914(A174377(n))`
-/

namespace A176483.P11859682718009938023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013914 (A174377 n).toNat

end

end A176483.P11859682718009938023

/-!
# A176484: Triangle t(n,m) read by rows: t(n,n)= 1, t(n,m) = (-1)^(n+m)*(m+1), 0<=m<n.

The programs for A176484, there is no canonical definition to state claims against.
-/

/-! ## A176484.P29118294012156758

`A140756(n*char[comp[∑[n-1]]]+1)`
-/

namespace A176484.P29118294012156758
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A176484.P29118294012156758

/-! ## A176484.P17757347284188129105

`A140756(n+1)^(1-char[∑[n-1]])`
-/

namespace A176484.P17757347284188129105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A176484.P17757347284188129105

/-! ## A176484.P9323666425380832253

`(and(2, comp[∑[n]]+n)-1)*A128227(n)`
-/

namespace A176484.P9323666425380832253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A128227 n

end

end A176484.P9323666425380832253

/-! ## A176484.P15854032087742807625

`Δ[A057028(n+1)]^(1-char[∑[n-1]])`
-/

namespace A176484.P15854032087742807625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A176484.P15854032087742807625

/-! ## A176484.P7960428567367759232

`Δ[A209278(n+1)]^(1-char[∑[n-1]])`
-/

namespace A176484.P7960428567367759232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A176484.P7960428567367759232

/-! ## A176484.P6941962949622209728

`A144328(n+2)/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A176484.P6941962949622209728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 2) : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A176484.P6941962949622209728

/-! ## A176484.P5109232077813987744

`A097807(n)*A128227(n)`
-/

namespace A176484.P5109232077813987744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A128227 n

end

end A176484.P5109232077813987744

/-! ## A176484.P2246775845418762861

`A140756(n+1)/A051340(n)`
-/

namespace A176484.P2246775845418762861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A176484.P2246775845418762861

/-! ## A176484.P10895631282786159872

`A097807(n)*A144328(n+2)`
-/

namespace A176484.P10895631282786159872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A144328 (n + 2)

end

end A176484.P10895631282786159872

/-! ## A176484.P2080153095284076967

`A140756(n+1)/Δ[A063656(n)]`
-/

namespace A176484.P2080153095284076967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A176484.P2080153095284076967

/-!
# A176485: First column of triangle in A176452.

The programs for A176485, there is no canonical definition to state claims against.
-/

/-! ## A176485.P5373404570656365790

`A294775(∑[n+3])`
-/

namespace A176485.P5373404570656365790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176485.P5373404570656365790

/-! ## A176485.P10330617052529958517

`xor(1, xor(1, A294775(A055998(n+1))))`
-/

namespace A176485.P10330617052529958517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A294775 (A055998 (n + 1)).toNat))

end

end A176485.P10330617052529958517

/-! ## A176485.P17171893252421571127

`A294775(A055998(n+1))%A198276(n)`
-/

namespace A176485.P17171893252421571127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A055998 (n + 1)).toNat) (A198276 n)

end

end A176485.P17171893252421571127

/-! ## A176485.P6391006608105267250

`A294775(A027379(n+1))%(2*A077442(n))`
-/

namespace A176485.P6391006608105267250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A027379 (n + 1)).toNat) (2 * A077442 n)

end

end A176485.P6391006608105267250

/-! ## A176485.P5684260285023049055

`A294775(A055998(n+1))+A077896(2*n+1)`
-/

namespace A176485.P5684260285023049055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055998 (n + 1)).toNat + A077896 (2 * n + 1)

end

end A176485.P5684260285023049055

/-! ## A176485.P17911437043195354119

`A000035(A016813(n))*A294775(A055998(n+1))`
-/

namespace A176485.P17911437043195354119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A016813 n).toNat * A294775 (A055998 (n + 1)).toNat

end

end A176485.P17911437043195354119

/-! ## A176485.P15940261962133313107

`A000035(A003961(n+1))*A294775(A055998(n+1))`
-/

namespace A176485.P15940261962133313107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003961 (n + 1)).toNat * A294775 (A055998 (n + 1)).toNat

end

end A176485.P15940261962133313107

/-! ## A176485.P6198269136863311705

`A001222(A190792(n+1))*A294775(A055998(n+1))`
-/

namespace A176485.P6198269136863311705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A190792 (n + 1)).toNat * A294775 (A055998 (n + 1)).toNat

end

end A176485.P6198269136863311705

/-! ## A176485.P10194279050992838062

`A040444(4*A017461(n))*A294775(A055998(n+1))`
-/

namespace A176485.P10194279050992838062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040444 (4 * A017461 n).toNat * A294775 (A055998 (n + 1)).toNat

end

end A176485.P10194279050992838062

/-! ## A176485.P3018512230590260053

`A294775(A055998(n+1))^A338117(A000040(n+1))`
-/

namespace A176485.P3018512230590260053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A055998 (n + 1)).toNat : ℚ) ^ (A338117 (A000040 (n + 1)).toNat : ℤ)

end

end A176485.P3018512230590260053

/-! ## A176485.P14265266777877987115

`A294775(A055998(n+1))+A000035(n)*A077957(n)`
-/

namespace A176485.P14265266777877987115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055998 (n + 1)).toNat + A000035 n * A077957 n

end

end A176485.P14265266777877987115

/-!
# A176487: Triangle read by rows: T(n,k) = binomial(n,k) + A008292(n+1,k+1) - 1.

The programs for A176487, the canonical program `A176487.P5024915074260981774` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176487 has offset 0).

The definition of A176487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176487.P1067696965347547170

`2*A141689(n+1)-1`
-/

namespace A176487.P1067696965347547170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - 1

end

end A176487.P1067696965347547170

namespace A176487

/-- `2*A141689(n+1)-1` -/
def P1067696965347547170.Spec : Prop :=
  ∀ n, P1067696965347547170.a n = A176487 n

end A176487

/-! ## A176487.P5024915074260981774

`A014473(n)+A008292(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176487

/-- `A014473(n)+A008292(n+1)` -/
def P5024915074260981774.Spec : Prop :=
  ∀ n, P5024915074260981774.a n = A176487 n

theorem P5024915074260981774.correct : P5024915074260981774.Spec := by
  intro n
  simp only [A176487]

end A176487

/-! ## A176487.P7497268243461304304

`A123125(comp[∑[n]])+A014473(n)`
-/

namespace A176487.P7497268243461304304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A014473 n

end

end A176487.P7497268243461304304

namespace A176487

/-- `A123125(comp[∑[n]])+A014473(n)` -/
def P7497268243461304304.Spec : Prop :=
  ∀ n, P7497268243461304304.a n = A176487 n

end A176487

/-! ## A176487.P16133174643934053673

`A008292(n+1)+A007318(n)-1`
-/

namespace A176487.P16133174643934053673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A007318 n - 1)

end

end A176487.P16133174643934053673

namespace A176487

/-- `A008292(n+1)+A007318(n)-1` -/
def P16133174643934053673.Spec : Prop :=
  ∀ n, P16133174643934053673.a n = A176487 n

theorem P16133174643934053673.correct : P16133174643934053673.Spec := by
  intro n
  simp only [A176487, Nat.add_sub_cancel, A176487.P16133174643934053673.a, A176487.P5024915074260981774.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176487

/-! ## A176487.P1144788218855867254

`(A141690(n)+A131060(n))/2`
-/

namespace A176487.P1144788218855867254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141690 n + A131060 n : ℚ) / 2

end

end A176487.P1144788218855867254

namespace A176487

/-- `(A141690(n)+A131060(n))/2` -/
def P1144788218855867254.Spec : Prop :=
  ∀ n, P1144788218855867254.a n = (A176487 n : ℚ)

theorem P1144788218855867254.correct : P1144788218855867254.Spec := by
  intro n
  simp only [A176487, Nat.add_sub_cancel, A176487.P1144788218855867254.a, A176487.P5024915074260981774.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, A131060, A131060.P6336280471409396356.a, A141690, A141690.P1589277232017455012.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176487

/-! ## A176487.P16939004334806204657

`(A176200(n)+A109128(n))/2`
-/

namespace A176487.P16939004334806204657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 n + A109128 n : ℚ) / 2

end

end A176487.P16939004334806204657

namespace A176487

/-- `(A176200(n)+A109128(n))/2` -/
def P16939004334806204657.Spec : Prop :=
  ∀ n, P16939004334806204657.a n = (A176487 n : ℚ)

theorem P16939004334806204657.correct : P16939004334806204657.Spec := by
  intro n
  simp only [A176487, Nat.add_sub_cancel, A176487.P16939004334806204657.a, A176487.P5024915074260981774.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, A109128, A109128.P7867596798531783597.a, A176200, A176200.P6006487728366513129.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176487

/-! ## A176487.P14410747713178517853

`A176200(n)-2*A290448(n)`
-/

namespace A176487.P14410747713178517853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n - 2 * A290448 n

end

end A176487.P14410747713178517853

namespace A176487

/-- `A176200(n)-2*A290448(n)` -/
def P14410747713178517853.Spec : Prop :=
  ∀ n, P14410747713178517853.a n = A176487 n

end A176487

/-! ## A176487.P11500613316658966427

`floor(A007318(n)+A176200(n)/2)`
-/

namespace A176487.P11500613316658966427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 n : ℚ) + (A176200 n : ℚ) / 2⌋

end

end A176487.P11500613316658966427

namespace A176487

/-- `floor(A007318(n)+A176200(n)/2)` -/
def P11500613316658966427.Spec : Prop :=
  ∀ n, P11500613316658966427.a n = A176487 n

end A176487

/-! ## A176487.P8302108223284958012

`A356116(n+1)+A132789(n+1)`
-/

namespace A176487.P8302108223284958012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356116 (n + 1) + A132789 (n + 1)

end

end A176487.P8302108223284958012

namespace A176487

/-- `A356116(n+1)+A132789(n+1)` -/
def P8302108223284958012.Spec : Prop :=
  ∀ n, P8302108223284958012.a n = A176487 n

end A176487

/-! ## A176487.P8170721039574568121

`A176561(n)+1-A001263(n+1)`
-/

namespace A176487.P8170721039574568121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176561 n + (1 - A001263 (n + 1))

end

end A176487.P8170721039574568121

namespace A176487

/-- `A176561(n)+1-A001263(n+1)` -/
def P8170721039574568121.Spec : Prop :=
  ∀ n, P8170721039574568121.a n = A176487 n

end A176487

/-!
# A176488: Triangle T(n,k) = A008292(n+1,k+1) + A176487(n,k) - 1, 0<=k<=n.

The programs for A176488, there is no canonical definition to state claims against.
-/

/-! ## A176488.P5213123199040244171

`A176200(n)+A014473(n)`
-/

namespace A176488.P5213123199040244171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + A014473 n

end

end A176488.P5213123199040244171

/-! ## A176488.P12366163342049260361

`A356116(n+1)+A176561(n)`
-/

namespace A176488.P12366163342049260361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356116 (n + 1) + A176561 n

end

end A176488.P12366163342049260361

/-! ## A176488.P5101811528732484625

`A007318(n)+A176200(n)-1`
-/

namespace A176488.P5101811528732484625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A176200 n - 1)

end

end A176488.P5101811528732484625

/-! ## A176488.P1863898054016953517

`A109128(n)+A141690(n)-1`
-/

namespace A176488.P1863898054016953517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A141690 n - 1)

end

end A176488.P1863898054016953517

/-! ## A176488.P6020262973203154896

`A176204(n)+1-A141690(n)`
-/

namespace A176488.P6020262973203154896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176204 n + (1 - A141690 n)

end

end A176488.P6020262973203154896

/-! ## A176488.P9024737782975822299

`A028326(n)+A141690(n)-2`
-/

namespace A176488.P9024737782975822299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A141690 n - 2)

end

end A176488.P9024737782975822299

/-! ## A176488.P12578221667663158257

`A141690(n)+2*A014473(n)`
-/

namespace A176488.P12578221667663158257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + 2 * A014473 n

end

end A176488.P12578221667663158257

/-! ## A176488.P16981360175083453081

`2*A176487(n)-A007318(n)`
-/

namespace A176488.P16981360175083453081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176487 n - A007318 n

end

end A176488.P16981360175083453081

/-! ## A176488.P16283110384825306106

`(A176204(n)+A109128(n))/2`
-/

namespace A176488.P16283110384825306106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176204 n + A109128 n : ℚ) / 2

end

end A176488.P16283110384825306106

/-! ## A176488.P13120029438236083541

`A008292(n+1)+A176487(n)-1`
-/

namespace A176488.P13120029438236083541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A176487 n - 1)

end

end A176488.P13120029438236083541

/-!
# A176489: Triangle T(n,k) = A176487(n,k)+A176488(n,k)-1 read by rows 0<=k<=n.

The programs for A176489, there is no canonical definition to state claims against.
-/

/-! ## A176489.P16225985188862991390

`A176487(n)+A176488(n)-1`
-/

namespace A176489.P16225985188862991390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176487 n + (A176488 n - 1)

end

end A176489.P16225985188862991390

/-! ## A176489.P8826419244259247

`A141696(n+1)+A131061(n)-1`
-/

namespace A176489.P8826419244259247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + (A131061 n - 1)

end

end A176489.P8826419244259247

/-! ## A176489.P14066475218223573982

`2*A176488(n)-A008292(n+1)`
-/

namespace A176489.P14066475218223573982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176488 n - A008292 (n + 1)

end

end A176489.P14066475218223573982

/-! ## A176489.P7258475056393783037

`A141696(n+1)+A008586(A014473(n))`
-/

namespace A176489.P7258475056393783037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + A008586 (A014473 n).toNat

end

end A176489.P7258475056393783037

/-! ## A176489.P17849974508464888827

`A141696(n+1)+A004442(A131061(n))`
-/

namespace A176489.P17849974508464888827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + A004442 (A131061 n).toNat

end

end A176489.P17849974508464888827

/-! ## A176489.P12068064462496946453

`A141696(n+1)+A004524(A168625(n))`
-/

namespace A176489.P12068064462496946453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + A004524 (A168625 n).toNat

end

end A176489.P12068064462496946453

/-! ## A176489.P13627440748333445036

`A131060(n)+A176204(n)-A176487(n)`
-/

namespace A176489.P13627440748333445036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A176204 n - A176487 n)

end

end A176489.P13627440748333445036

/-! ## A176489.P12949888494087567622

`A176204(n)+A176487(n)-A141690(n)`
-/

namespace A176489.P12949888494087567622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176204 n + (A176487 n - A141690 n)

end

end A176489.P12949888494087567622

/-! ## A176489.P5125333085023549735

`A109128(n)+A176204(n)-A008292(n+1)`
-/

namespace A176489.P5125333085023549735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A176204 n - A008292 (n + 1))

end

end A176489.P5125333085023549735

/-!
# A176490: Triangle T(n,k) = A008292(n+1,k+1) + A060187(n+1,k+1)- 1 read along rows 0<=k<=n.

The programs for A176490, there is no canonical definition to state claims against.
-/

/-! ## A176490.P13412981079541467444

`2*A154334(n)-1`
-/

namespace A176490.P13412981079541467444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - 1

end

end A176490.P13412981079541467444

/-! ## A176490.P737084536994934021

`A168523(n)+A014473(n)`
-/

namespace A176490.P737084536994934021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + A014473 n

end

end A176490.P737084536994934021

/-! ## A176490.P7289976170640180140

`A176491(n)-A014473(n)`
-/

namespace A176490.P7289976170640180140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176491 n - A014473 n

end

end A176490.P7289976170640180140

/-! ## A176490.P1085016687270900663

`A007318(n)+A168523(n)-1`
-/

namespace A176490.P1085016687270900663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168523 n - 1)

end

end A176490.P1085016687270900663

/-! ## A176490.P860123784952559266

`A176491(n)+1-A007318(n)`
-/

namespace A176490.P860123784952559266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176491 n + (1 - A007318 n)

end

end A176490.P860123784952559266

/-!
# A176491: Triangle T(n,k) = binomial(n,k) + A176490(n,k) - 1 read along rows 0<=k<=n.

The programs for A176491, there is no canonical definition to state claims against.
-/

/-! ## A176491.P8870911265399511112

`A176490(n)+A014473(n)`
-/

namespace A176491.P8870911265399511112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176490 n + A014473 n

end

end A176491.P8870911265399511112

/-! ## A176491.P4897305671057494960

`A007318(n)+A176490(n)-1`
-/

namespace A176491.P4897305671057494960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A176490 n - 1)

end

end A176491.P4897305671057494960

/-! ## A176491.P13756456862960733175

`A109128(n)+A168523(n)-1`
-/

namespace A176491.P13756456862960733175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A168523 n - 1)

end

end A176491.P13756456862960733175

/-! ## A176491.P7578836433214330737

`A028326(n)+A168523(n)-2`
-/

namespace A176491.P7578836433214330737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A168523 n - 2)

end

end A176491.P7578836433214330737

/-! ## A176491.P8831268378428043299

`A168523(n)+2*A014473(n)`
-/

namespace A176491.P8831268378428043299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n + 2 * A014473 n

end

end A176491.P8831268378428043299

/-!
# A176492: Triangle T(n,k) = A176492(n,k) + A008292(n+1,k+1) - 1 read along rows 0<=k<=n.

The programs for A176492, there is no canonical definition to state claims against.
-/

/-! ## A176492.P10145561954000579806

`A141690(n)+A178122(n)-1`
-/

namespace A176492.P10145561954000579806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A178122 n - 1)

end

end A176492.P10145561954000579806

/-! ## A176492.P3385916666378355456

`A176487(n)+A176490(n)-1`
-/

namespace A176492.P3385916666378355456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176487 n + (A176490 n - 1)

end

end A176492.P3385916666378355456

/-! ## A176492.P11516183149806867320

`A168524(n)+3*A014473(n)`
-/

namespace A176492.P11516183149806867320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168524 n + 3 * A014473 n

end

end A176492.P11516183149806867320

/-! ## A176492.P9949782768231809383

`A008292(n+1)+A176491(n)-1`
-/

namespace A176492.P9949782768231809383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A176491 n - 1)

end

end A176492.P9949782768231809383

/-! ## A176492.P449874093743637211

`A060187(n+1)+A176488(n)-1`
-/

namespace A176492.P449874093743637211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A176488 n - 1)

end

end A176492.P449874093743637211

/-!
# A176493: A091137(n)/(n+1).

The programs for A176493, the canonical program `A176493.P3138652312455790460` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176493 has offset 0).

The definition of A176493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176493.P3138652312455790460

`A091137(n)/(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176493

/-- `A091137(n)/(n+1)` -/
def P3138652312455790460.Spec : Prop :=
  ∀ n, P3138652312455790460.a n = (A176493 n : ℚ)

end A176493

/-! ## A176493.P727744373029735095

`A174727(n)/A027760(n+1)`
-/

namespace A176493.P727744373029735095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174727 n : ℚ) / (A027760 (n + 1) : ℚ)

end

end A176493.P727744373029735095

namespace A176493

/-- `A174727(n)/A027760(n+1)` -/
def P727744373029735095.Spec : Prop :=
  ∀ n, P727744373029735095.a n = (A176493 n : ℚ)

end A176493

/-! ## A176493.P1968022264449132402

`∏[A141056(n)]/(n+1)`
-/

namespace A176493.P1968022264449132402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A176493.P1968022264449132402

namespace A176493

/-- `∏[A141056(n)]/(n+1)` -/
def P1968022264449132402.Spec : Prop :=
  ∀ n, P1968022264449132402.a n = (A176493 n : ℚ)

end A176493

/-! ## A176493.P1727174918433988794

`A165313(∑[n+1])/(n+1)`
-/

namespace A176493.P1727174918433988794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165313 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A176493.P1727174918433988794

namespace A176493

/-- `A165313(∑[n+1])/(n+1)` -/
def P1727174918433988794.Spec : Prop :=
  ∀ n, P1727174918433988794.a n = (A176493 n : ℚ)

end A176493

/-! ## A176493.P8309671227068419856

`A248771(6*(n+1))/(n+1)`
-/

namespace A176493.P8309671227068419856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248771 (6 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A176493.P8309671227068419856

namespace A176493

/-- `A248771(6*(n+1))/(n+1)` -/
def P8309671227068419856.Spec : Prop :=
  ∀ n, P8309671227068419856.a n = (A176493 n : ℚ)

end A176493

/-!
# A176494: Least m >= 1 for which |2^m - prime(n)| is prime.

The programs for A176494, there is no canonical definition to state claims against.
-/

/-! ## A176494.P6888240031505522989

`A252168(A006254(n+1))`
-/

namespace A176494.P6888240031505522989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (A006254 (n + 1)).toNat

end

end A176494.P6888240031505522989

/-! ## A176494.P6662101898503847796

`A252168(A111333(n+2))`
-/

namespace A176494.P6662101898503847796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (A111333 (n + 2)).toNat

end

end A176494.P6662101898503847796

/-! ## A176494.P7025993170235555920

`A252168(A130291(n+2))`
-/

namespace A176494.P7025993170235555920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (A130291 (n + 2)).toNat

end

end A176494.P7025993170235555920

/-! ## A176494.P3628138457855985558

`A252168(eq[1, A252168(n+1)])`
-/

namespace A176494.P3628138457855985558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176494.P3628138457855985558

/-! ## A176494.P9095159996012134264

`A252168(lt[A252168(n+1), 2])`
-/

namespace A176494.P9095159996012134264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A176494.P9095159996012134264

/-!
# A176495: 

The programs for A176495, there is no canonical definition to state claims against.
-/

/-! ## A176495.P15272039977234400804

`A168607(3*lt[A013598(3*n), 3])`
-/

namespace A176495.P15272039977234400804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A176495.P15272039977234400804

/-! ## A176495.P15481786523975268169

`A168607(eq[A013598(n), A100063(n)])`
-/

namespace A176495.P15481786523975268169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176495.P15481786523975268169

/-!
# A176496: a(n) = Sum_{k=1..n} 2^nonprime(k).

The programs for A176496, the canonical program `A176496.P3468510325933949683` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176496 has offset 1).

The definition of A176496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176496.P3468510325933949683

`a(n-1)+2^A018252(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176496

/-- `a(n-1)+2^A018252(n+1)` -/
def P3468510325933949683.Spec : Prop :=
  ∀ n, P3468510325933949683.a n = (A176496 (n + 1) : ℚ)

end A176496

/-! ## A176496.P2247646201836417834

`∑[2^lt[∑{p}[n, #], n]]`
-/

namespace A176496.P2247646201836417834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P2247646201836417834

namespace A176496

/-- `∑[2^lt[∑{p}[n, #], n]]` -/
def P2247646201836417834.Spec : Prop :=
  ∀ n, (P2247646201836417834.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P4211804037962456765

`∑[2^A018252(n+1)]`
-/

namespace A176496.P4211804037962456765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A018252 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P4211804037962456765

namespace A176496

/-- `∑[2^A018252(n+1)]` -/
def P4211804037962456765.Spec : Prop :=
  ∀ n, P4211804037962456765.a n = (A176496 (n + 1) : ℚ)

end A176496

/-! ## A176496.P5717214950970265455

`∑[2^A141468(n+2)]`
-/

namespace A176496.P5717214950970265455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A141468 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P5717214950970265455

namespace A176496

/-- `∑[2^A141468(n+2)]` -/
def P5717214950970265455.Spec : Prop :=
  ∀ n, P5717214950970265455.a n = (A176496 (n + 1) : ℚ)

end A176496

/-! ## A176496.P13167462002184165574

`A073718(n)+a(n-1)` with `a(0)=2`
-/

namespace A176496.P13167462002184165574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073718 n + a (n - 1)

end

end A176496.P13167462002184165574

namespace A176496

/-- `A073718(n)+a(n-1)` -/
def P13167462002184165574.Spec : Prop :=
  ∀ n, P13167462002184165574.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P11208351639464476589

`∑[2^comp[A006530(n+1)]]+1`
-/

namespace A176496.P11208351639464476589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A176496.P11208351639464476589

namespace A176496

/-- `∑[2^comp[A006530(n+1)]]+1` -/
def P11208351639464476589.Spec : Prop :=
  ∀ n, (P11208351639464476589.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P13993794695171213

`∑[2^comp[A014963(n+1)]]+1`
-/

namespace A176496.P13993794695171213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A176496.P13993794695171213

namespace A176496

/-- `∑[2^comp[A014963(n+1)]]+1` -/
def P13993794695171213.Spec : Prop :=
  ∀ n, (P13993794695171213.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P13319111335533241718

`∑[2^comp[A020639(n+1)]]+1`
-/

namespace A176496.P13319111335533241718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A176496.P13319111335533241718

namespace A176496

/-- `∑[2^comp[A020639(n+1)]]+1` -/
def P13319111335533241718.Spec : Prop :=
  ∀ n, (P13319111335533241718.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P292244082773866565

`∑[2^(comp[record[A000010(n+1)]]+1)]`
-/

namespace A176496.P292244082773866565
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P292244082773866565

namespace A176496

/-- `∑[2^(comp[record[A000010(n+1)]]+1)]` -/
def P292244082773866565.Spec : Prop :=
  ∀ n, (P292244082773866565.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P17242732128663279514

`∑[2^(comp[A000040(n+1)-1]+1)]`
-/

namespace A176496.P17242732128663279514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P17242732128663279514

namespace A176496

/-- `∑[2^(comp[A000040(n+1)-1]+1)]` -/
def P17242732128663279514.Spec : Prop :=
  ∀ n, (P17242732128663279514.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P12689045654764532389

`∑[2^(comp[eq[1, A001222(n+1)]]+1)]`
-/

namespace A176496.P12689045654764532389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P12689045654764532389

namespace A176496

/-- `∑[2^(comp[eq[1, A001222(n+1)]]+1)]` -/
def P12689045654764532389.Spec : Prop :=
  ∀ n, (P12689045654764532389.a n : ℤ) = A176496 (n + 1)

end A176496

/-! ## A176496.P10807278882650219116

`∑[A000079(A018252(n+1))]`
-/

namespace A176496.P10807278882650219116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P10807278882650219116

namespace A176496

/-- `∑[A000079(A018252(n+1))]` -/
def P10807278882650219116.Spec : Prop :=
  ∀ n, P10807278882650219116.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P2060609348495699013

`∑[A048656(A007821(n+1))]`
-/

namespace A176496.P2060609348495699013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A007821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P2060609348495699013

namespace A176496

/-- `∑[A048656(A007821(n+1))]` -/
def P2060609348495699013.Spec : Prop :=
  ∀ n, P2060609348495699013.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P11900946990962675272

`∑[A000079(A141468(n+2))]`
-/

namespace A176496.P11900946990962675272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A141468 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P11900946990962675272

namespace A176496

/-- `∑[A000079(A141468(n+2))]` -/
def P11900946990962675272.Spec : Prop :=
  ∀ n, P11900946990962675272.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P13146186173279651608

`∑[A011782(A018252(n+1)+1)]`
-/

namespace A176496.P13146186173279651608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176496.P13146186173279651608

namespace A176496

/-- `∑[A011782(A018252(n+1)+1)]` -/
def P13146186173279651608.Spec : Prop :=
  ∀ n, P13146186173279651608.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P9612286222075384837

`∑[A000225(comp[A006530(n+1)])+1]+1`
-/

namespace A176496.P9612286222075384837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A176496.P9612286222075384837

namespace A176496

/-- `∑[A000225(comp[A006530(n+1)])+1]+1` -/
def P9612286222075384837.Spec : Prop :=
  ∀ n, P9612286222075384837.a n = A176496 (n + 1)

end A176496

/-! ## A176496.P1710957021766766050

`A131577(A018252(n+1)+1)+a(n-1)` with `a(0)=2`
-/

namespace A176496.P1710957021766766050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131577 (A018252 (n + 1) + 1).toNat + a (n - 1)

end

end A176496.P1710957021766766050

namespace A176496

/-- `A131577(A018252(n+1)+1)+a(n-1)` -/
def P1710957021766766050.Spec : Prop :=
  ∀ n, P1710957021766766050.a n = A176496 (n + 1)

end A176496

/-!
# A176497: a(n) is the cardinality of the "Cross Set" which is the subset of distinct resistances that can be produced by a circuit of n unit resistors using only series or parallel combinations which cannot be decomposed as a single unit resistor in either series or parallel with a circuit of n-1 unit resistors.

The programs for A176497, there is no canonical definition to state claims against.
-/

/-! ## A176497.P5092267613387320195

`A048211(n+1)%A048211(n^floor(atan(n)))`
-/

namespace A176497.P5092267613387320195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048211 (n + 1)) (A048211 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat)

end

end A176497.P5092267613387320195

/-! ## A176497.P4480779866237075773

`A048211(n+1)%A048211(A028310(n))`
-/

namespace A176497.P4480779866237075773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048211 (n + 1)) (A048211 (A028310 n).toNat)

end

end A176497.P4480779866237075773

/-!
# A176499: Haros-Farey sequence whose argument is the Fibonacci number; Farey(m) where m = Fibonacci(n + 1).

The programs for A176499, the canonical program `A176499.P11961058461514971734` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176499 has offset 1).

The definition of A176499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176499.P11961058461514971734

`A005728(A000045(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176499

/-- `A005728(A000045(n+2))` -/
def P11961058461514971734.Spec : Prop :=
  ∀ n, P11961058461514971734.a n = A176499 (n + 1)

theorem P11961058461514971734.correct : P11961058461514971734.Spec := by
  intro n
  simp only [A176499, Nat.add_sub_cancel]

end A176499

/-! ## A176499.P3940679213373811787

`(A176500(n+1)+3)/2`
-/

namespace A176499.P3940679213373811787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176500 (n + 1) + 3 : ℚ) / 2

end

end A176499.P3940679213373811787

namespace A176499

/-- `(A176500(n+1)+3)/2` -/
def P3940679213373811787.Spec : Prop :=
  ∀ n, P3940679213373811787.a n = (A176499 (n + 1) : ℚ)

theorem P3940679213373811787.correct : P3940679213373811787.Spec := by
  intro n
  simp only [A176499, Nat.add_sub_cancel, A176499.P3940679213373811787.a, A176499.P11961058461514971734.a, A000045, A000045.P11838749114346432762.a, A005728, A005728.P12032251568510858139.a, A176500, A176500.P10455789036156632366.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176499

/-! ## A176499.P14657713233136863041

`A002088(record[A247309(n)])+1`
-/

namespace A176499.P14657713233136863041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A176499.P14657713233136863041

namespace A176499

/-- `A002088(record[A247309(n)])+1` -/
def P14657713233136863041.Spec : Prop :=
  ∀ n, P14657713233136863041.a n = A176499 (n + 1)

end A176499

/-! ## A176499.P2201088571057148793

`A002088(A212804(n+3))+1`
-/

namespace A176499.P2201088571057148793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A212804 (n + 3)).toNat + 1

end

end A176499.P2201088571057148793

namespace A176499

/-- `A002088(A212804(n+3))+1` -/
def P2201088571057148793.Spec : Prop :=
  ∀ n, P2201088571057148793.a n = A176499 (n + 1)

end A176499

/-! ## A176499.P14564639876411483366

`A002088(record[A104763(n+1)])+1`
-/

namespace A176499.P14564639876411483366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A176499.P14564639876411483366

namespace A176499

/-- `A002088(record[A104763(n+1)])+1` -/
def P14564639876411483366.Spec : Prop :=
  ∀ n, P14564639876411483366.a n = A176499 (n + 1)

end A176499

