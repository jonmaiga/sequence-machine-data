import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C043
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A400801: Nonsquarefree numbers that are not divisible by the square of their least prime factor.

The programs for A400801, the canonical program `A400801.P4532615387380128156` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400801 has offset 1).

The definition of A400801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400801.P4532615387380128156

`filter[A080364(n+1), A087049(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A400801

/-- `filter[A080364(n+1), A087049(#)]` -/
def P4532615387380128156.Spec : Prop :=
  ∀ n, P4532615387380128156.a n = A400801 (n + 1)

theorem P4532615387380128156.correct : P4532615387380128156.Spec := by
  intro n
  simp only [A400801, Nat.add_sub_cancel]

end A400801

/-! ## A400801.P12981657610307241738

`filter[A080364(n+1), A353626(#)]`
-/

namespace A400801.P12981657610307241738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A400801.P12981657610307241738

namespace A400801

/-- `filter[A080364(n+1), A353626(#)]` -/
def P12981657610307241738.Spec : Prop :=
  ∀ n, P12981657610307241738.a n = A400801 (n + 1)

end A400801

/-! ## A400801.P5484154779583214681

`filter[A080364(n+1), A355447(#)]`
-/

namespace A400801.P5484154779583214681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A400801.P5484154779583214681

namespace A400801

/-- `filter[A080364(n+1), A355447(#)]` -/
def P5484154779583214681.Spec : Prop :=
  ∀ n, P5484154779583214681.a n = A400801 (n + 1)

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

/-! ## A400803.P10511233112228771323

`A186037(A034510(n+1))`
-/

namespace A400803.P10511233112228771323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186037 (A034510 (n + 1)).toNat

end

end A400803.P10511233112228771323

/-! ## A400803.P6032511244088011814

`A078079(A034439(n+2))`
-/

namespace A400803.P6032511244088011814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078079 (A034439 (n + 2)).toNat

end

end A400803.P6032511244088011814

/-!
# A400810: Size of Type C megastars of star triples in the Spectre aperiodic monotile tiling.

The programs for A400810, the canonical program `A400810.P4336047378170428460` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400810 has offset 1).

The definition of A400810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400810.P4336047378170428460

`ogf((1+4x+x^2)/(1-3x-15x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
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

/-!
# A400811: Size of Type A palindromes of star triples in the Spectre aperiodic monotile tiling.

The programs for A400811, the canonical program `A400811.P8729234673321828537` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400811 has offset 1).

The definition of A400811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400811.P8729234673321828537

`ogf((2+4x)/(1-3x-15x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A400826.P9085526661662789008

`A284203(A289575(n+1))`
-/

namespace A400826.P9085526661662789008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A289575 (n + 1)).toNat

end

end A400826.P9085526661662789008

/-! ## A400826.P15054605885736228778

`A339210(A268495(n+1))`
-/

namespace A400826.P15054605885736228778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339210 (A268495 (n + 1)).toNat

end

end A400826.P15054605885736228778

/-! ## A400826.P5726418859974612395

`A341685(A256340(n+2))`
-/

namespace A400826.P5726418859974612395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341685 (A256340 (n + 2)).toNat

end

end A400826.P5726418859974612395

/-! ## A400826.P18215114297056249498

`A393579(A164416(n+4))`
-/

namespace A400826.P18215114297056249498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393579 (A164416 (n + 4)).toNat

end

end A400826.P18215114297056249498

/-! ## A400826.P4430026660640270751

`A036431(A114203(n))`
-/

namespace A400826.P4430026660640270751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A114203 n).toNat

end

end A400826.P4430026660640270751

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

/-!
# A400829: The (n-2)-th arithmetic derivative of A400828(n): a(n) = A003415^(n-2)(A400828(n)).

The programs for A400829, there is no canonical definition to state claims against.
-/

/-! ## A400829.P4518036697839273117

`A400830(∑[n+2])`
-/

namespace A400829.P4518036697839273117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400829.P4518036697839273117

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

/-!
# A400833: a(n) = Product_{d|n, d squarefree} A276086(A400173(n/d)), where A400173 is Dirichlet convolution of arithmetic derivative with Liouville's lambda and A276086 is the primorial base exp-function.

The programs for A400833, there is no canonical definition to state claims against.
-/

/-! ## A400833.P13719377445558386701

`A400831(A276085(A276086(n+1)))`
-/

namespace A400833.P13719377445558386701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (A276085 (A276086 (n + 1)).toNat).toNat

end

end A400833.P13719377445558386701

/-! ## A400833.P11447914902787249005

`A004180(A400831(n+1))`
-/

namespace A400833.P11447914902787249005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A400831 (n + 1)).toNat

end

end A400833.P11447914902787249005

/-! ## A400833.P8372873786722083801

`A400831(A187829(n+1))`
-/

namespace A400833.P8372873786722083801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (A187829 (n + 1)).toNat

end

end A400833.P8372873786722083801

/-! ## A400833.P3216241823814120228

`A400831(A077168(n))`
-/

namespace A400833.P3216241823814120228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (A077168 n).toNat

end

end A400833.P3216241823814120228

/-! ## A400833.P14545087886615899072

`A400831(A004918(n+2))`
-/

namespace A400833.P14545087886615899072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400831 (A004918 (n + 2)).toNat

end

end A400833.P14545087886615899072

/-!
# A400839: Numbers k such that prime(1+k) divides 1+2*prime(k)#/prime(i)# for some i in range 1..k, where prime(n)# = A002110(n) is the n-th primorial number.

The programs for A400839, there is no canonical definition to state claims against.
-/

/-! ## A400839.P14348730678682528986

`A000720(A400842(n+1)-1)`
-/

namespace A400839.P14348730678682528986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400842 (n + 1) - 1).toNat

end

end A400839.P14348730678682528986

/-! ## A400839.P9671582423872721641

`A033270(A400842(n+1))`
-/

namespace A400839.P9671582423872721641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A400842 (n + 1)).toNat

end

end A400839.P9671582423872721641

/-! ## A400839.P2145332780860318273

`eq[A252940(n+1), A401050(n)]`
-/

namespace A400839.P2145332780860318273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400839.P2145332780860318273

/-! ## A400839.P17447961188246693097

`eq[A301281(n+1), A401050(n)]`
-/

namespace A400839.P17447961188246693097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400839.P17447961188246693097

/-! ## A400839.P6668320113374093119

`eq[A301282(n+1), A401050(n)]`
-/

namespace A400839.P6668320113374093119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400839.P6668320113374093119

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

/-! ## A400842.P7107642063027012703

`∩[A303024(n+1), A400843(n+1)]`
-/

namespace A400842.P7107642063027012703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400842.P7107642063027012703

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

/-! ## A400843.P5920825738677628148

`record[A401051(n+1)]`
-/

namespace A400843.P5920825738677628148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400843.P5920825738677628148

/-! ## A400843.P14611822239686488088

`A065091(A401059(n+1))`
-/

namespace A400843.P14611822239686488088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A401059 (n + 1)).toNat

end

end A400843.P14611822239686488088

/-! ## A400843.P15598210827243251567

`A008578(A401059(n+1)+2)`
-/

namespace A400843.P15598210827243251567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401059 (n + 1) + 2).toNat

end

end A400843.P15598210827243251567

/-! ## A400843.P12893629570408680932

`A020639(A401051(2*n+1)²)`
-/

namespace A400843.P12893629570408680932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A401051 (2 * n + 1) ^ 2).toNat

end

end A400843.P12893629570408680932

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

The programs for A400851, the canonical program `A400851.P10122007858320249699` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400851 has offset 0).

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

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400851

/-- `4*a(n-1)+10*a(n-2)` -/
def P10122007858320249699.Spec : Prop :=
  ∀ n, (P10122007858320249699.a n : ℤ) = A400851 n

theorem P10122007858320249699.correct : P10122007858320249699.Spec := by
  intro n
  simp only [A400851]

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

/-!
# A400870: The number of ordered pairs of infinitary divisors (d_1, d_2) of n such that d_1*d_2 is also an infinitary divisor of n.

The programs for A400870, there is no canonical definition to state claims against.
-/

/-! ## A400870.P1646331987947533770

`∏{e}[n+1, A400869(#)]`
-/

namespace A400870.P1646331987947533770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A400869 (Nat.factorization (f1 n) p)

end

end A400870.P1646331987947533770

/-! ## A400870.P17508267137245294256

`A400872(A129196(n))`
-/

namespace A400870.P17508267137245294256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400872 (A129196 n).toNat

end

end A400870.P17508267137245294256

/-! ## A400870.P18346283397687936212

`A307000(n+1-A342376(A037291(n+1)))`
-/

namespace A400870.P18346283397687936212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307000 ((n + 1 : ℤ) - A342376 (A037291 (n + 1)).toNat).toNat

end

end A400870.P18346283397687936212

/-! ## A400870.P11529250195072815761

`A307000(n+1-A342376(A127707(n+1)))`
-/

namespace A400870.P11529250195072815761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307000 ((n + 1 : ℤ) - A342376 (A127707 (n + 1)).toNat).toNat

end

end A400870.P11529250195072815761

/-!
# A400871: The number of ordered pairs of exponential divisors (d_1, d_2) of n^2 such d_1*d_2 is also an exponential divisor of n^2.

The programs for A400871, there is no canonical definition to state claims against.
-/

/-! ## A400871.P13976831719832492855

`∏{e}[n+1, A385429(#)]`
-/

namespace A400871.P13976831719832492855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A385429 (Nat.factorization (f1 n) p)

end

end A400871.P13976831719832492855

/-! ## A400871.P16987577372668486511

`A165038(A112622(n+1))`
-/

namespace A400871.P16987577372668486511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (A112622 (n + 1)).toNat

end

end A400871.P16987577372668486511

/-! ## A400871.P18275333217438952292

`A070036(A112622(n+1))`
-/

namespace A400871.P18275333217438952292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070036 (A112622 (n + 1)).toNat

end

end A400871.P18275333217438952292

/-! ## A400871.P2907356595402126685

`A105079(A112624(n+1))`
-/

namespace A400871.P2907356595402126685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105079 (A112624 (n + 1)).toNat

end

end A400871.P2907356595402126685

/-! ## A400871.P1599598856054793151

`A207328(A038036(n+1))`
-/

namespace A400871.P1599598856054793151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (A038036 (n + 1)).toNat

end

end A400871.P1599598856054793151

/-!
# A400872: The total number of exponential divisors of the exponential divisors of n.

The programs for A400872, the canonical program `A400872.P2371818492116596202` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400872 has offset 1).

The definition of A400872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400872.P2371818492116596202

`∏{e}[n+1, A007425(#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A400872

/-- `∏{e}[n+1, A007425(#)]` -/
def P2371818492116596202.Spec : Prop :=
  ∀ n, P2371818492116596202.a n = A400872 (n + 1)

theorem P2371818492116596202.correct : P2371818492116596202.Spec := by
  intro n
  simp only [A400872, Nat.add_sub_cancel]

end A400872

/-! ## A400872.P15305275612324035148

`A219609(A112622(n+1))`
-/

namespace A400872.P15305275612324035148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (A112622 (n + 1)).toNat

end

end A400872.P15305275612324035148

namespace A400872

/-- `A219609(A112622(n+1))` -/
def P15305275612324035148.Spec : Prop :=
  ∀ n, P15305275612324035148.a n = A400872 (n + 1)

end A400872

/-! ## A400872.P6123759620534438510

`gcd(A070793(n+1), A388067(n+1))`
-/

namespace A400872.P6123759620534438510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070793 (n + 1)) (A388067 (n + 1))

end

end A400872.P6123759620534438510

namespace A400872

/-- `gcd(A070793(n+1), A388067(n+1))` -/
def P6123759620534438510.Spec : Prop :=
  ∀ n, (P6123759620534438510.a n : ℤ) = A400872 (n + 1)

end A400872

/-! ## A400872.P441197497302965386

`gcd(A254932(n), A388067(n+1))`
-/

namespace A400872.P441197497302965386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254932 n) (A388067 (n + 1))

end

end A400872.P441197497302965386

namespace A400872

/-- `gcd(A254932(n), A388067(n+1))` -/
def P441197497302965386.Spec : Prop :=
  ∀ n, (P441197497302965386.a n : ℤ) = A400872 (n + 1)

end A400872

/-! ## A400872.P10383454397359709463

`gcd(A111332(n), A388067(n+1))`
-/

namespace A400872.P10383454397359709463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A388067 (n + 1))

end

end A400872.P10383454397359709463

namespace A400872

/-- `gcd(A111332(n), A388067(n+1))` -/
def P10383454397359709463.Spec : Prop :=
  ∀ n, (P10383454397359709463.a n : ℤ) = A400872 (n + 1)

end A400872

/-!
# A400877: Positive numbers k that can be written as k=x*y*z*u, x>y>z>u>1, in at least one way.

The programs for A400877, there is no canonical definition to state claims against.
-/

/-! ## A400877.P8388578040369952492

`A140067(A319678(n+2))`
-/

namespace A400877.P8388578040369952492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A319678 (n + 2)).toNat

end

end A400877.P8388578040369952492

/-! ## A400877.P10292224069199879920

`A328879(A179704(n+1))`
-/

namespace A400877.P10292224069199879920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328879 (A179704 (n + 1)).toNat

end

end A400877.P10292224069199879920

/-! ## A400877.P1336675620339499685

`∩[A068350(n+1), A271578(n+1)]`
-/

namespace A400877.P1336675620339499685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400877.P1336675620339499685

/-!
# A400879: Number of n X n binary Riordan matrices that are poset matrices (labeled Riordan posets with n elements).

The programs for A400879, there is no canonical definition to state claims against.
-/

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

/-! ## A400881.P10406947367700772541

`A076885(A395614(n))`
-/

namespace A400881.P10406947367700772541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A395614 n).toNat

end

end A400881.P10406947367700772541

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

/-!
# A400890: Numbers k such that the 2-adic valuation of 3*k+2 is odd.

The programs for A400890, the canonical program `A400890.P16191853028762974710` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400890 has offset 1).

The definition of A400890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400890.P16191853028762974710

`comp[A400891(n+1)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A400890

/-- `comp[A400891(n+1)]` -/
def P16191853028762974710.Spec : Prop :=
  ∀ n, (P16191853028762974710.a n : ℤ) = A400890 (n + 1)

theorem P16191853028762974710.correct : P16191853028762974710.Spec := by
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

/-! ## A400890.P3431450194213272476

`eq[1, A045898(n+1)]`
-/

namespace A400890.P3431450194213272476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400890.P3431450194213272476

namespace A400890

/-- `eq[1, A045898(n+1)]` -/
def P3431450194213272476.Spec : Prop :=
  ∀ n, (P3431450194213272476.a n : ℤ) = A400890 (n + 1)

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

/-! ## A400890.P2708674570672135100

`(A400893(n+1)-1)/2`
-/

namespace A400890.P2708674570672135100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400893 (n + 1) - 1 : ℚ) / 2

end

end A400890.P2708674570672135100

namespace A400890

/-- `(A400893(n+1)-1)/2` -/
def P2708674570672135100.Spec : Prop :=
  ∀ n, P2708674570672135100.a n = (A400890 (n + 1) : ℚ)

theorem P2708674570672135100.correct : P2708674570672135100.Spec := by
  intro n
  simp only [A400890, Nat.add_sub_cancel, A400890.P2708674570672135100.a, A400890.P16191853028762974710.f1, A400890.P16191853028762974710.a, A400891, A400891.P3266793894534689506.a, A400893, A400893.P8227133802892121621.a, A084088, A084088.P9034609164511326196.f1, A084088.P9034609164511326196.f2, A084088.P9034609164511326196.a, A000035, A000035.P2023072528413494694.a, A123726, A123726.P5691545094621419725.f1, A123726.P5691545094621419725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400890

/-! ## A400890.P15018507157100564339

`A004524(A400893(n+1))`
-/

namespace A400890.P15018507157100564339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A400893 (n + 1)).toNat

end

end A400890.P15018507157100564339

namespace A400890

/-- `A004524(A400893(n+1))` -/
def P15018507157100564339.Spec : Prop :=
  ∀ n, P15018507157100564339.a n = A400890 (n + 1)

end A400890

/-!
# A400891: Numbers k such that the 2-adic valuation of 3*k+2 is even.

The programs for A400891, the canonical program `A400891.P3266793894534689506` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400891 has offset 1).

The definition of A400891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400891.P5905805382506801568

`comp[A400890(n+1)]`
-/

namespace A400891.P5905805382506801568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400891.P5905805382506801568

namespace A400891

/-- `comp[A400890(n+1)]` -/
def P5905805382506801568.Spec : Prop :=
  ∀ n, (P5905805382506801568.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P4327178090986131716

`(A400894(n+1)-1)/2`
-/

namespace A400891.P4327178090986131716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400894 (n + 1) - 1 : ℚ) / 2

end

end A400891.P4327178090986131716

namespace A400891

/-- `(A400894(n+1)-1)/2` -/
def P4327178090986131716.Spec : Prop :=
  ∀ n, P4327178090986131716.a n = (A400891 (n + 1) : ℚ)

end A400891

/-! ## A400891.P3266793894534689506

`(A084088(n+1)-2)/3`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400891

/-- `(A084088(n+1)-2)/3` -/
def P3266793894534689506.Spec : Prop :=
  ∀ n, P3266793894534689506.a n = (A400891 (n + 1) : ℚ)

end A400891

/-! ## A400891.P7799164508733404111

`A246425(A400894(n+1))-1`
-/

namespace A400891.P7799164508733404111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A400894 (n + 1)).toNat - 1

end

end A400891.P7799164508733404111

namespace A400891

/-- `A246425(A400894(n+1))-1` -/
def P7799164508733404111.Spec : Prop :=
  ∀ n, P7799164508733404111.a n = A400891 (n + 1)

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

/-! ## A400891.P1916870683438617550

`eq[0, A280749(n)]`
-/

namespace A400891.P1916870683438617550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400891.P1916870683438617550

namespace A400891

/-- `eq[0, A280749(n)]` -/
def P1916870683438617550.Spec : Prop :=
  ∀ n, (P1916870683438617550.a n : ℤ) = A400891 (n + 1)

end A400891

/-! ## A400891.P4249370791853189001

`eq[A080300(n), A280751(n)]`
-/

namespace A400891.P4249370791853189001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400891.P4249370791853189001

namespace A400891

/-- `eq[A080300(n), A280751(n)]` -/
def P4249370791853189001.Spec : Prop :=
  ∀ n, (P4249370791853189001.a n : ℤ) = A400891 (n + 1)

end A400891

/-!
# A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

The programs for A400893, the canonical program `A400893.P8227133802892121621` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400893 has offset 1).

The definition of A400893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`

The canonical program, it is in `Seq.B004.C004`.
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

/-! ## A400893.P9163295651355163678

`eq[A010123(n), A101660(n)]`
-/

namespace A400893.P9163295651355163678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400893.P9163295651355163678

namespace A400893

/-- `eq[A010123(n), A101660(n)]` -/
def P9163295651355163678.Spec : Prop :=
  ∀ n, (P9163295651355163678.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P17812604005172961742

`eq[A010127(n), A101660(n)]`
-/

namespace A400893.P17812604005172961742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400893.P17812604005172961742

namespace A400893

/-- `eq[A010127(n), A101660(n)]` -/
def P17812604005172961742.Spec : Prop :=
  ∀ n, (P17812604005172961742.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P11450198912661891615

`eq[A010131(n), A101660(n)]`
-/

namespace A400893.P11450198912661891615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400893.P11450198912661891615

namespace A400893

/-- `eq[A010131(n), A101660(n)]` -/
def P11450198912661891615.Spec : Prop :=
  ∀ n, (P11450198912661891615.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P6775326772774030976

`eq[A010132(n), A101660(n)]`
-/

namespace A400893.P6775326772774030976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400893.P6775326772774030976

namespace A400893

/-- `eq[A010132(n), A101660(n)]` -/
def P6775326772774030976.Spec : Prop :=
  ∀ n, (P6775326772774030976.a n : ℤ) = A400893 (n + 1)

end A400893

/-! ## A400893.P9850326190211062840

`eq[A010137(n), A101660(n)]`
-/

namespace A400893.P9850326190211062840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400893.P9850326190211062840

namespace A400893

/-- `eq[A010137(n), A101660(n)]` -/
def P9850326190211062840.Spec : Prop :=
  ∀ n, (P9850326190211062840.a n : ℤ) = A400893 (n + 1)

end A400893

/-!
# A400894: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with even valuation based on A400891.

The programs for A400894, the canonical program `A400894.P15283623408944251719` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400894 has offset 1).

The definition of A400894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400894.P15283623408944251719

`2*A400891(n+1)+1`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A400894

/-- `2*A400891(n+1)+1` -/
def P15283623408944251719.Spec : Prop :=
  ∀ n, P15283623408944251719.a n = A400894 (n + 1)

theorem P15283623408944251719.correct : P15283623408944251719.Spec := by
  intro n
  simp only [A400894, Nat.add_sub_cancel]

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

/-! ## A400894.P15254057601843114585

`eq[2, A101660(n)]`
-/

namespace A400894.P15254057601843114585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400894.P15254057601843114585

namespace A400894

/-- `eq[2, A101660(n)]` -/
def P15254057601843114585.Spec : Prop :=
  ∀ n, (P15254057601843114585.a n : ℤ) = A400894 (n + 1)

end A400894

/-! ## A400894.P286090709091886250

`eq[3, A005678(n+1)]`
-/

namespace A400894.P286090709091886250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400894.P286090709091886250

namespace A400894

/-- `eq[3, A005678(n+1)]` -/
def P286090709091886250.Spec : Prop :=
  ∀ n, (P286090709091886250.a n : ℤ) = A400894 (n + 1)

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

The programs for A400896, there is no canonical definition to state claims against.
-/

/-! ## A400896.P12266202464247024985

`A400897(n+1)-A213671(n+1)`
-/

namespace A400896.P12266202464247024985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400897 (n + 1) - A213671 (n + 1)

end

end A400896.P12266202464247024985

/-! ## A400896.P2358174752671482239

`A106617(A002662(n))`
-/

namespace A400896.P2358174752671482239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A002662 n).toNat

end

end A400896.P2358174752671482239

/-! ## A400896.P6505795354584378235

`A227140(A324172(n+1))`
-/

namespace A400896.P6505795354584378235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A324172 (n + 1)).toNat

end

end A400896.P6505795354584378235

/-!
# A400897: a(n) = denominator(1 - (n^2 - n + 2)/2^n).

The programs for A400897, there is no canonical definition to state claims against.
-/

/-! ## A400897.P6161277520351949305

`A400896(n+1)+A213671(n+1)`
-/

namespace A400897.P6161277520351949305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400896 (n + 1) + A213671 (n + 1)

end

end A400897.P6161277520351949305

/-! ## A400897.P7925509706652553160

`A082908(A132109(n))`
-/

namespace A400897.P7925509706652553160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A132109 n).toNat

end

end A400897.P7925509706652553160

/-! ## A400897.P4347311047172937657

`A082908(A020873(n+1))`
-/

namespace A400897.P4347311047172937657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A020873 (n + 1)).toNat

end

end A400897.P4347311047172937657

