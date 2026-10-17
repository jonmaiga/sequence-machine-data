import SequenceMachineLib
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C010
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A138604: Short legs of more than two primitive Pythagorean triangles.

The programs for A138604, there is no canonical definition to state claims against.
-/

/-! ## A138604.P1278866662417320899

`lt[2, A024359(n+1)]+1`
-/

namespace A138604.P1278866662417320899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138604.P1278866662417320899

/-! ## A138604.P13021550360126991922

`lt[2, A024359(A028310(n))]`
-/

namespace A138604.P13021550360126991922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138604.P13021550360126991922

/-! ## A138604.P915326027691387459

`A020725(lt[2, A024359(n+1)])`
-/

namespace A138604.P915326027691387459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138604.P915326027691387459

/-! ## A138604.P14424474634364059281

`A153152(lt[2, A024359(n+1)])`
-/

namespace A138604.P14424474634364059281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138604.P14424474634364059281

/-! ## A138604.P2285016611215344698

`lt[2, A024359(A233583(n+1))]`
-/

namespace A138604.P2285016611215344698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138604.P2285016611215344698

/-!
# A138605: Short legs of more than 3 primitive Pythagorean triangles.

The programs for A138605, there is no canonical definition to state claims against.
-/

/-! ## A138605.P5367420943403960974

`A350140(A065514(n+5)*A250068(n+1))`
-/

namespace A138605.P5367420943403960974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (A065514 (n + 5) * A250068 (n + 1)).toNat

end

end A138605.P5367420943403960974

/-!
# A138606: List first F(1) odd numbers, then first F(2) even numbers (starting from 2), then the next F(3) odd numbers, then the next F(4) even numbers, etc., where F(n) = A000045(n), the n-th Fibonacci number.

The programs for A138606, the canonical program `A138606.P12451982431508658228` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138606 has offset 1).

The definition of A138606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138606.P12451982431508658228

`A005408(n)-a(n-A194029(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138606

/-- `A005408(n)-a(n-A194029(n+1))` -/
def P12451982431508658228.Spec : Prop :=
  ∀ n, P12451982431508658228.a n = A138606 (n + 1)

theorem P12451982431508658228.correct : P12451982431508658228.Spec := by
  intro n
  simp only [A138606, Nat.add_sub_cancel]

end A138606

/-! ## A138606.P16628297374549808141

`Δ[A027688(n)]-A062114(A072649(n+1))`
-/

namespace A138606.P16628297374549808141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062114 (A072649 (n + 1)).toNat

end

end A138606.P16628297374549808141

namespace A138606

/-- `Δ[A027688(n)]-A062114(A072649(n+1))` -/
def P16628297374549808141.Spec : Prop :=
  ∀ n, P16628297374549808141.a n = A138606 (n + 1)

end A138606

/-! ## A138606.P8427015424918918713

`A005843(n+1)-A062114(Δ[A256967(n+1)])`
-/

namespace A138606.P8427015424918918713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A062114 (f1 (n + 1) - f1 n).toNat

end

end A138606.P8427015424918918713

namespace A138606

/-- `A005843(n+1)-A062114(Δ[A256967(n+1)])` -/
def P8427015424918918713.Spec : Prop :=
  ∀ n, P8427015424918918713.a n = A138606 (n + 1)

end A138606

/-! ## A138606.P3659763754997551168

`A004442(2*n)+1-A062114(Δ[A256967(n+1)])`
-/

namespace A138606.P3659763754997551168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n) + (1 - A062114 (f1 (n + 1) - f1 n).toNat)

end

end A138606.P3659763754997551168

namespace A138606

/-- `A004442(2*n)+1-A062114(Δ[A256967(n+1)])` -/
def P3659763754997551168.Spec : Prop :=
  ∀ n, P3659763754997551168.a n = A138606 (n + 1)

end A138606

/-!
# A138609: List the first term from A042963, then 2 terms from A014601 (starting from 3), 3 terms from A042963, 4 terms from A014601, etc.

The programs for A138609, the canonical program `A138609.P859534551479299323` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138609 has offset 1).

The definition of A138609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074147, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138609.P859534551479299323

`A116966(A074147(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138609

/-- `A116966(A074147(n+1)-1)` -/
def P859534551479299323.Spec : Prop :=
  ∀ n, P859534551479299323.a n = A138609 (n + 1)

theorem P859534551479299323.correct : P859534551479299323.Spec := by
  intro n
  simp only [A138609, Nat.add_sub_cancel]

end A138609

/-! ## A138609.P9647487983834910737

`A080412(floor(∑[4*n]/∑[char[∑[n]]]²))+1`
-/

namespace A138609.P9647487983834910737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)⌋.toNat + 1

end

end A138609.P9647487983834910737

namespace A138609

/-- `A080412(floor(∑[4*n]/∑[char[∑[n]]]²))+1` -/
def P9647487983834910737.Spec : Prop :=
  ∀ n, P9647487983834910737.a n = A138609 (n + 1)

end A138609

/-! ## A138609.P5254260526759502430

`A116966(A116941(n))`
-/

namespace A138609.P5254260526759502430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A116941 n).toNat

end

end A138609.P5254260526759502430

namespace A138609

/-- `A116966(A116941(n))` -/
def P5254260526759502430.Spec : Prop :=
  ∀ n, P5254260526759502430.a n = A138609 (n + 1)

end A138609

/-! ## A138609.P11020510128363050665

`A116966(n-floor(A114327(n)/2))`
-/

namespace A138609.P11020510128363050665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 ((n : ℤ) - ⌊(A114327 n : ℚ) / 2⌋).toNat

end

end A138609.P11020510128363050665

namespace A138609

/-- `A116966(n-floor(A114327(n)/2))` -/
def P11020510128363050665.Spec : Prop :=
  ∀ n, P11020510128363050665.a n = A138609 (n + 1)

end A138609

/-! ## A138609.P5292642430747696094

`A116966(comp[2*n²]-A004736(n+1))`
-/

namespace A138609.P5292642430747696094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A004736 (n + 1)).toNat

end

end A138609.P5292642430747696094

namespace A138609

/-- `A116966(comp[2*n²]-A004736(n+1))` -/
def P5292642430747696094.Spec : Prop :=
  ∀ n, P5292642430747696094.a n = A138609 (n + 1)

end A138609

/-! ## A138609.P16354641383470051126

`A074147(A166016(A074147(n+1)))`
-/

namespace A138609.P16354641383470051126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A166016 (A074147 (n + 1)).toNat).toNat

end

end A138609.P16354641383470051126

namespace A138609

/-- `A074147(A166016(A074147(n+1)))` -/
def P16354641383470051126.Spec : Prop :=
  ∀ n, P16354641383470051126.a n = A138609 (n + 1)

end A138609

/-!
# A138610: Nonsquarefree numbers congruent to 3 mod 4.

The programs for A138610, the canonical program `A138610.P14114159251167345094` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138610 has offset 1).

The definition of A138610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138610.P14114159251167345094

`filter[A053850(n+1), A373979(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138610

/-- `filter[A053850(n+1), A373979(#)]` -/
def P14114159251167345094.Spec : Prop :=
  ∀ n, P14114159251167345094.a n = A138610 (n + 1)

theorem P14114159251167345094.correct : P14114159251167345094.Spec := by
  intro n
  simp only [A138610, Nat.add_sub_cancel]

end A138610

/-! ## A138610.P5702966995895929486

`filter[A068781(n+1), A373979(#)]`
-/

namespace A138610.P5702966995895929486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P5702966995895929486

namespace A138610

/-- `filter[A068781(n+1), A373979(#)]` -/
def P5702966995895929486.Spec : Prop :=
  ∀ n, P5702966995895929486.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P1499194419057735161

`A068781(eq[3, and(3, A068781(n+1))]+1)`
-/

namespace A138610.P1499194419057735161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A068781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A138610.P1499194419057735161

namespace A138610

/-- `A068781(eq[3, and(3, A068781(n+1))]+1)` -/
def P1499194419057735161.Spec : Prop :=
  ∀ n, P1499194419057735161.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P5020718951296489803

`filter[A319927(n+1), A373979(#)]`
-/

namespace A138610.P5020718951296489803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P5020718951296489803

namespace A138610

/-- `filter[A319927(n+1), A373979(#)]` -/
def P5020718951296489803.Spec : Prop :=
  ∀ n, P5020718951296489803.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P13372428772250472378

`filter[A307579(n+1), A373979(#)]`
-/

namespace A138610.P13372428772250472378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P13372428772250472378

namespace A138610

/-- `filter[A307579(n+1), A373979(#)]` -/
def P13372428772250472378.Spec : Prop :=
  ∀ n, P13372428772250472378.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P15758269771608915092

`filter[A038838(n+1), A373979(#)]`
-/

namespace A138610.P15758269771608915092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P15758269771608915092

namespace A138610

/-- `filter[A038838(n+1), A373979(#)]` -/
def P15758269771608915092.Spec : Prop :=
  ∀ n, P15758269771608915092.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P14798363176544869969

`∩[A013929(n+1), A016825(n)+1]`
-/

namespace A138610.P14798363176544869969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P14798363176544869969

namespace A138610

/-- `∩[A013929(n+1), A016825(n)+1]` -/
def P14798363176544869969.Spec : Prop :=
  ∀ n, (P14798363176544869969.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P17187572121071045687

`filter[A091236(n+1), A087049(#)]`
-/

namespace A138610.P17187572121071045687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A138610.P17187572121071045687

namespace A138610

/-- `filter[A091236(n+1), A087049(#)]` -/
def P17187572121071045687.Spec : Prop :=
  ∀ n, P17187572121071045687.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P514331978375493710

`filter[A091236(n+1), A353569(#)]`
-/

namespace A138610.P514331978375493710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A138610.P514331978375493710

namespace A138610

/-- `filter[A091236(n+1), A353569(#)]` -/
def P514331978375493710.Spec : Prop :=
  ∀ n, P514331978375493710.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P13757256523129392111

`filter[A091236(n+1), A353626(#)]`
-/

namespace A138610.P13757256523129392111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A138610.P13757256523129392111

namespace A138610

/-- `filter[A091236(n+1), A353626(#)]` -/
def P13757256523129392111.Spec : Prop :=
  ∀ n, P13757256523129392111.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P3732022858995199762

`∩[A038838(n+1), A091236(n+1)]`
-/

namespace A138610.P3732022858995199762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P3732022858995199762

namespace A138610

/-- `∩[A038838(n+1), A091236(n+1)]` -/
def P3732022858995199762.Spec : Prop :=
  ∀ n, (P3732022858995199762.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P1824911865455495324

`∩[A053850(n+1), A091236(n+1)]`
-/

namespace A138610.P1824911865455495324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P1824911865455495324

namespace A138610

/-- `∩[A053850(n+1), A091236(n+1)]` -/
def P1824911865455495324.Spec : Prop :=
  ∀ n, (P1824911865455495324.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P14356812216517767208

`∩[A068781(n+1), A091236(n+1)]`
-/

namespace A138610.P14356812216517767208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P14356812216517767208

namespace A138610

/-- `∩[A068781(n+1), A091236(n+1)]` -/
def P14356812216517767208.Spec : Prop :=
  ∀ n, (P14356812216517767208.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P7465384025118087762

`∩[A091236(n+1), A307579(n+1)]`
-/

namespace A138610.P7465384025118087762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P7465384025118087762

namespace A138610

/-- `∩[A091236(n+1), A307579(n+1)]` -/
def P7465384025118087762.Spec : Prop :=
  ∀ n, (P7465384025118087762.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P12559479223685494256

`∩[A091236(n+1), A319927(n+1)]`
-/

namespace A138610.P12559479223685494256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P12559479223685494256

namespace A138610

/-- `∩[A091236(n+1), A319927(n+1)]` -/
def P12559479223685494256.Spec : Prop :=
  ∀ n, (P12559479223685494256.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P6105993306120612222

`eq[and(3, n+2), A008683(n+1)]+1`
-/

namespace A138610.P6105993306120612222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138610.P6105993306120612222

namespace A138610

/-- `eq[and(3, n+2), A008683(n+1)]+1` -/
def P6105993306120612222.Spec : Prop :=
  ∀ n, (P6105993306120612222.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P1018474673794344584

`lt[1, A088440(A105570(n)+1)]`
-/

namespace A138610.P1018474673794344584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A105570 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138610.P1018474673794344584

namespace A138610

/-- `lt[1, A088440(A105570(n)+1)]` -/
def P1018474673794344584.Spec : Prop :=
  ∀ n, (P1018474673794344584.a n : ℤ) = A138610 (n + 1)

end A138610

/-! ## A138610.P12672993697447206320

`filter[A335437(n+1), A373979(#)]`
-/

namespace A138610.P12672993697447206320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P12672993697447206320

namespace A138610

/-- `filter[A335437(n+1), A373979(#)]` -/
def P12672993697447206320.Spec : Prop :=
  ∀ n, P12672993697447206320.a n = A138610 (n + 1)

end A138610

/-! ## A138610.P1230563972370539656

`∩[A091236(n+1), A335437(n+1)]`
-/

namespace A138610.P1230563972370539656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138610.P1230563972370539656

namespace A138610

/-- `∩[A091236(n+1), A335437(n+1)]` -/
def P1230563972370539656.Spec : Prop :=
  ∀ n, (P1230563972370539656.a n : ℤ) = A138610 (n + 1)

end A138610

/-!
# A138611: 6^n mod 4^n.

The programs for A138611, the canonical program `A138611.P16171131123845880623` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138611 has offset 0).

The definition of A138611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138611.P16171131123845880623

`2^n*A002380(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138611

/-- `2^n*A002380(n)` -/
def P16171131123845880623.Spec : Prop :=
  ∀ n, P16171131123845880623.a n = A138611 n

theorem P16171131123845880623.correct : P16171131123845880623.Spec := by
  intro n
  simp only [A138611]

end A138611

/-! ## A138611.P14500360911636002471

`2^n*(3^n)%A000079(n)`
-/

namespace A138611.P14500360911636002471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.tmod (3 ^ n : ℤ) (A000079 n)

end

end A138611.P14500360911636002471

namespace A138611

/-- `2^n*(3^n)%A000079(n)` -/
def P14500360911636002471.Spec : Prop :=
  ∀ n, P14500360911636002471.a n = A138611 n

end A138611

/-! ## A138611.P1591890752092041702

`A002380(n)*A000079(n)`
-/

namespace A138611.P1591890752092041702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A000079 n

end

end A138611.P1591890752092041702

namespace A138611

/-- `A002380(n)*A000079(n)` -/
def P1591890752092041702.Spec : Prop :=
  ∀ n, P1591890752092041702.a n = A138611 n

end A138611

/-! ## A138611.P813813312656001238

`A002380(n)*A155559(n)`
-/

namespace A138611.P813813312656001238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A155559 n

end

end A138611.P813813312656001238

namespace A138611

/-- `A002380(n)*A155559(n)` -/
def P813813312656001238.Spec : Prop :=
  ∀ n, P813813312656001238.a n = A138611 n

end A138611

/-! ## A138611.P15970495964684051430

`A002380(n)*A171449(n)`
-/

namespace A138611.P15970495964684051430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A171449 n

end

end A138611.P15970495964684051430

namespace A138611

/-- `A002380(n)*A171449(n)` -/
def P15970495964684051430.Spec : Prop :=
  ∀ n, P15970495964684051430.a n = A138611 n

end A138611

/-! ## A138611.P12076764211459661665

`A002380(n)*A171559(n)`
-/

namespace A138611.P12076764211459661665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A171559 n

end

end A138611.P12076764211459661665

namespace A138611

/-- `A002380(n)*A171559(n)` -/
def P12076764211459661665.Spec : Prop :=
  ∀ n, P12076764211459661665.a n = A138611 n

end A138611

/-! ## A138611.P11557780907779394850

`A002380(n)*A011782(n+1)`
-/

namespace A138611.P11557780907779394850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A011782 (n + 1)

end

end A138611.P11557780907779394850

namespace A138611

/-- `A002380(n)*A011782(n+1)` -/
def P11557780907779394850.Spec : Prop :=
  ∀ n, P11557780907779394850.a n = A138611 n

end A138611

/-! ## A138611.P9772751731347048015

`2*A002380(n)*A011782(n)`
-/

namespace A138611.P9772751731347048015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002380 n * A011782 n)

end

end A138611.P9772751731347048015

namespace A138611

/-- `2*A002380(n)*A011782(n)` -/
def P9772751731347048015.Spec : Prop :=
  ∀ n, P9772751731347048015.a n = A138611 n

end A138611

/-! ## A138611.P9444309062570259488

`A002380(n)*A171869(n+4)`
-/

namespace A138611.P9444309062570259488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A171869 (n + 4)

end

end A138611.P9444309062570259488

namespace A138611

/-- `A002380(n)*A171869(n+4)` -/
def P9444309062570259488.Spec : Prop :=
  ∀ n, P9444309062570259488.a n = A138611 n

end A138611

/-! ## A138611.P8927677463642702451

`A002380(n)/2*Δ[A126646(n)]`
-/

namespace A138611.P8927677463642702451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002380 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A138611.P8927677463642702451

namespace A138611

/-- `A002380(n)/2*Δ[A126646(n)]` -/
def P8927677463642702451.Spec : Prop :=
  ∀ n, P8927677463642702451.a n = (A138611 n : ℚ)

end A138611

/-! ## A138611.P14113521075842775981

`A002380(n)/2*record[A135530(n)]`
-/

namespace A138611.P14113521075842775981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002380 n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A138611.P14113521075842775981

namespace A138611

/-- `A002380(n)/2*record[A135530(n)]` -/
def P14113521075842775981.Spec : Prop :=
  ∀ n, P14113521075842775981.a n = (A138611 n : ℚ)

end A138611

/-! ## A138611.P2220032322459351799

`A002380(n)*A135530(2*n+1)`
-/

namespace A138611.P2220032322459351799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A135530 (2 * n + 1)

end

end A138611.P2220032322459351799

namespace A138611

/-- `A002380(n)*A135530(2*n+1)` -/
def P2220032322459351799.Spec : Prop :=
  ∀ n, P2220032322459351799.a n = A138611 n

end A138611

/-! ## A138611.P8522966842937776525

`A002380(n)+A000225(n)*A002380(n)`
-/

namespace A138611.P8522966842937776525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n + A000225 n * A002380 n

end

end A138611.P8522966842937776525

namespace A138611

/-- `A002380(n)+A000225(n)*A002380(n)` -/
def P8522966842937776525.Spec : Prop :=
  ∀ n, P8522966842937776525.a n = A138611 n

end A138611

/-! ## A138611.P816815894208519503

`A005061(n)-A065622(n)`
-/

namespace A138611.P816815894208519503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n - A065622 n

end

end A138611.P816815894208519503

namespace A138611

/-- `A005061(n)-A065622(n)` -/
def P816815894208519503.Spec : Prop :=
  ∀ n, P816815894208519503.a n = A138611 n

end A138611

/-! ## A138611.P1102920416559847351

`A167762(2*n)-A065622(n)`
-/

namespace A138611.P1102920416559847351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * n) - A065622 n

end

end A138611.P1102920416559847351

namespace A138611

/-- `A167762(2*n)-A065622(n)` -/
def P1102920416559847351.Spec : Prop :=
  ∀ n, P1102920416559847351.a n = A138611 n

end A138611

/-! ## A138611.P13583842029711008042

`(6^n)%(4^n)`
-/

namespace A138611.P13583842029711008042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n % 4 ^ n

end

end A138611.P13583842029711008042

namespace A138611

/-- `(6^n)%(4^n)` -/
def P13583842029711008042.Spec : Prop :=
  ∀ n, (P13583842029711008042.a n : ℤ) = A138611 n

end A138611

/-! ## A138611.P10130555588956570628

`A000225(n)+and(A000225(n)², A063766(n))`
-/

namespace A138611.P10130555588956570628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A000225 n ^ 2) (A063766 n)

end

end A138611.P10130555588956570628

namespace A138611

/-- `A000225(n)+and(A000225(n)², A063766(n))` -/
def P10130555588956570628.Spec : Prop :=
  ∀ n, P10130555588956570628.a n = A138611 n

end A138611

/-! ## A138611.P3235560118144968005

`sqrt(A001019(n))%A000079(n)*A000079(n)`
-/

namespace A138611.P3235560118144968005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001019 n : ℝ))) (A000079 n) * A000079 n

end

end A138611.P3235560118144968005

namespace A138611

/-- `sqrt(A001019(n))%A000079(n)*A000079(n)` -/
def P3235560118144968005.Spec : Prop :=
  ∀ n, P3235560118144968005.a n = A138611 n

end A138611

/-!
# A138612: Permutation of natural numbers generated with the sieve algorithm described in the comment lines.

The programs for A138612, there is no canonical definition to state claims against.
-/

/-! ## A138612.P15339218310664731579

`A304584(n)+A270643(A001006(n))`
-/

namespace A138612.P15339218310664731579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304584 n + A270643 (A001006 n).toNat

end

end A138612.P15339218310664731579

/-!
# A138613: a(n) = sigma_2(a(n-1)): sum of squares of divisors of a(n-1) with a(1)=2.

The programs for A138613, the canonical program `A138613.P11341622902578865221` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138613 has offset 1).

The definition of A138613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138613.P11341622902578865221

`A001157(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138613

/-- `A001157(a(n-1))` -/
def P11341622902578865221.Spec : Prop :=
  ∀ n, P11341622902578865221.a n = A138613 (n + 1)

theorem P11341622902578865221.correct : P11341622902578865221.Spec := by
  intro n
  simp only [A138613, Nat.add_sub_cancel]

end A138613

/-!
# A138614: Expansion of (2*x-1)*(x^2-x-1) / ( 1-2*x^2+2*x^4 ).

The programs for A138614, the canonical program `A138614.P16444557196922960541` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138614 has offset 0).

The definition of A138614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138614.P16444557196922960541

`A138232(n)-A138231(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138614

/-- `A138232(n)-A138231(n)` -/
def P16444557196922960541.Spec : Prop :=
  ∀ n, P16444557196922960541.a n = A138614 n

theorem P16444557196922960541.correct : P16444557196922960541.Spec := by
  intro n
  simp only [A138614]

end A138614

/-! ## A138614.P10707672986552750655

`A138231(n+1)-2*A138231(n)`
-/

namespace A138614.P10707672986552750655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1) - 2 * A138231 n

end

end A138614.P10707672986552750655

namespace A138614

/-- `A138231(n+1)-2*A138231(n)` -/
def P10707672986552750655.Spec : Prop :=
  ∀ n, P10707672986552750655.a n = A138614 n

end A138614

/-! ## A138614.P17353912476818928527

`2*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=0`
-/

namespace A138614.P17353912476818928527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 0] fun n a =>
  2 * (a (n - 2) - a (n - 4))

end

end A138614.P17353912476818928527

namespace A138614

/-- `2*(a(n-2)-a(n-4))` -/
def P17353912476818928527.Spec : Prop :=
  ∀ n, P17353912476818928527.a n = A138614 n

end A138614

/-! ## A138614.P8518459342995826399

`A138231(A165754(n))-A138231(n)`
-/

namespace A138614.P8518459342995826399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (A165754 n).toNat - A138231 n

end

end A138614.P8518459342995826399

namespace A138614

/-- `A138231(A165754(n))-A138231(n)` -/
def P8518459342995826399.Spec : Prop :=
  ∀ n, P8518459342995826399.a n = A138614 n

end A138614

/-! ## A138614.P18045199682622186168

`Δ[A138231(A025480(2*n))]-A138231(n)`
-/

namespace A138614.P18045199682622186168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (A025480 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A138231 n

end

end A138614.P18045199682622186168

namespace A138614

/-- `Δ[A138231(A025480(2*n))]-A138231(n)` -/
def P18045199682622186168.Spec : Prop :=
  ∀ n, P18045199682622186168.a n = A138614 n

end A138614

/-! ## A138614.P1764070850658668224

`Δ[A138232(n+1)+A138231(n+3)]`
-/

namespace A138614.P1764070850658668224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (n + 1) + A138231 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138614.P1764070850658668224

namespace A138614

/-- `Δ[A138232(n+1)+A138231(n+3)]` -/
def P1764070850658668224.Spec : Prop :=
  ∀ n, P1764070850658668224.a n = A138614 n

end A138614

/-! ## A138614.P15807918912925952270

`A138232(n+3)+Δ[A138232(n+1)]`
-/

namespace A138614.P15807918912925952270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (n + 3) + (f1 (n + 1) - f1 n)

end

end A138614.P15807918912925952270

namespace A138614

/-- `A138232(n+3)+Δ[A138232(n+1)]` -/
def P15807918912925952270.Spec : Prop :=
  ∀ n, P15807918912925952270.a n = A138614 n

end A138614

/-!
# A138615: Numbers of the form n^4 - m^2, where 0 < m < n^2.

The programs for A138615, there is no canonical definition to state claims against.
-/

/-! ## A138615.P1241533588187898972

`A177988(comp[A278041(2*n)]+2)`
-/

namespace A138615.P1241533588187898972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A138615.P1241533588187898972

/-! ## A138615.P10412415155044502063

`A177988(lt[A070166(n), A057113(n)])`
-/

namespace A138615.P10412415155044502063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138615.P10412415155044502063

/-! ## A138615.P7670503090238454399

`A177988(lt[A028913(n), A158928(n+1)])`
-/

namespace A138615.P7670503090238454399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138615.P7670503090238454399

/-! ## A138615.P15839053812427127721

`A177988(comp[A210567(n)-A001414(n+1)])`
-/

namespace A138615.P15839053812427127721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A001414 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A138615.P15839053812427127721

/-! ## A138615.P454031991143473314

`filter[A177988(n+2), A370598(#)]`
-/

namespace A138615.P454031991143473314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A138615.P454031991143473314

/-!
# A138616: a(n) = 7^n mod 2^n.

The programs for A138616, the canonical program `A138616.P5732187192065374334` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138616 has offset 0).

The definition of A138616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138616.P5732187192065374334

`A138654(n)%(2^n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138616

/-- `A138654(n)%(2^n)` -/
def P5732187192065374334.Spec : Prop :=
  ∀ n, P5732187192065374334.a n = A138616 n

theorem P5732187192065374334.correct : P5732187192065374334.Spec := by
  intro n
  simp only [A138616]

end A138616

/-! ## A138616.P13520087295085323908

`and(A000225(n), A138654(n))`
-/

namespace A138616.P13520087295085323908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A138654 n)

end

end A138616.P13520087295085323908

namespace A138616

/-- `and(A000225(n), A138654(n))` -/
def P13520087295085323908.Spec : Prop :=
  ∀ n, P13520087295085323908.a n = A138616 n

end A138616

/-! ## A138616.P2602261934627035822

`and(A099393(n), A138654(n))`
-/

namespace A138616.P2602261934627035822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099393 n) (A138654 n)

end

end A138616.P2602261934627035822

namespace A138616

/-- `and(A099393(n), A138654(n))` -/
def P2602261934627035822.Spec : Prop :=
  ∀ n, P2602261934627035822.a n = A138616 n

end A138616

/-! ## A138616.P8165397744613394813

`and(A138654(n), A255047(n))`
-/

namespace A138616.P8165397744613394813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138654 n) (A255047 n)

end

end A138616.P8165397744613394813

namespace A138616

/-- `and(A138654(n), A255047(n))` -/
def P8165397744613394813.Spec : Prop :=
  ∀ n, P8165397744613394813.a n = A138616 n

end A138616

/-! ## A138616.P373237049604118810

`and(A092431(n+1), A138654(n))`
-/

namespace A138616.P373237049604118810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092431 (n + 1)) (A138654 n)

end

end A138616.P373237049604118810

namespace A138616

/-- `and(A092431(n+1), A138654(n))` -/
def P373237049604118810.Spec : Prop :=
  ∀ n, P373237049604118810.a n = A138616 n

end A138616

/-! ## A138616.P2277639015443405699

`A139786(n)%A000079(n)`
-/

namespace A138616.P2277639015443405699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139786 n) (A000079 n)

end

end A138616.P2277639015443405699

namespace A138616

/-- `A139786(n)%A000079(n)` -/
def P2277639015443405699.Spec : Prop :=
  ∀ n, P2277639015443405699.a n = A138616 n

end A138616

/-! ## A138616.P246724273636561840

`(7^n)%(2^n)`
-/

namespace A138616.P246724273636561840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n % 2 ^ n

end

end A138616.P246724273636561840

namespace A138616

/-- `(7^n)%(2^n)` -/
def P246724273636561840.Spec : Prop :=
  ∀ n, (P246724273636561840.a n : ℤ) = A138616 n

end A138616

/-! ## A138616.P5279280175808528332

`and(2^n-1, 7^n)`
-/

namespace A138616.P5279280175808528332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (7 ^ n : ℤ)

end

end A138616.P5279280175808528332

namespace A138616

/-- `and(2^n-1, 7^n)` -/
def P5279280175808528332.Spec : Prop :=
  ∀ n, P5279280175808528332.a n = A138616 n

end A138616

/-! ## A138616.P9372747828256791206

`and(∑[2^n], A109808(n+1))/2`
-/

namespace A138616.P9372747828256791206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A109808 (n + 1)) : ℚ) / 2

end

end A138616.P9372747828256791206

namespace A138616

/-- `and(∑[2^n], A109808(n+1))/2` -/
def P9372747828256791206.Spec : Prop :=
  ∀ n, P9372747828256791206.a n = (A138616 n : ℚ)

end A138616

/-!
# A138617: a(n) = 7^n mod 3^n.

The programs for A138617, the canonical program `A138617.P1771556776334823177` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138617 has offset 0).

The definition of A138617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138617.P1771556776334823177

`(7^n)%(3^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138617

/-- `(7^n)%(3^n)` -/
def P1771556776334823177.Spec : Prop :=
  ∀ n, (P1771556776334823177.a n : ℤ) = A138617 n

theorem P1771556776334823177.correct : P1771556776334823177.Spec := by
  intro n
  simp only [A138617]

end A138617

/-! ## A138617.P11751883957390255317

`A024076(n)%A000244(n)+n`
-/

namespace A138617.P11751883957390255317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024076 n) (A000244 n) + (n : ℤ)

end

end A138617.P11751883957390255317

namespace A138617

/-- `A024076(n)%A000244(n)+n` -/
def P11751883957390255317.Spec : Prop :=
  ∀ n, P11751883957390255317.a n = A138617 n

end A138617

/-! ## A138617.P2707534970593748199

`--A000420(n)%A000244(n)`
-/

namespace A138617.P2707534970593748199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000420 n) (A000244 n)

end

end A138617.P2707534970593748199

namespace A138617

/-- `--A000420(n)%A000244(n)` -/
def P2707534970593748199.Spec : Prop :=
  ∀ n, P2707534970593748199.a n = A138617 n

end A138617

/-! ## A138617.P6531444186474488306

`abs(A000420(n)%Δ[A003462(n)])`
-/

namespace A138617.P6531444186474488306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000420 n) (f1 (n + 1) - f1 n)|

end

end A138617.P6531444186474488306

namespace A138617

/-- `abs(A000420(n)%Δ[A003462(n)])` -/
def P6531444186474488306.Spec : Prop :=
  ∀ n, P6531444186474488306.a n = A138617 n

end A138617

/-! ## A138617.P15299646479135348903

`abs(Δ[A341590(n)]%A000244(n))`
-/

namespace A138617.P15299646479135348903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000244 n)|

end

end A138617.P15299646479135348903

namespace A138617

/-- `abs(Δ[A341590(n)]%A000244(n))` -/
def P15299646479135348903.Spec : Prop :=
  ∀ n, P15299646479135348903.a n = A138617 n

end A138617

/-! ## A138617.P15612736568149789658

`A103458(n)%(A103453(n)+1)-1`
-/

namespace A138617.P15612736568149789658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103458 n) (A103453 n + 1) - 1

end

end A138617.P15612736568149789658

namespace A138617

/-- `A103458(n)%(A103453(n)+1)-1` -/
def P15612736568149789658.Spec : Prop :=
  ∀ n, P15612736568149789658.a n = A138617 n

end A138617

/-! ## A138617.P2133950435268319521

`A000420(n)-A000244(n)*A094975(n)`
-/

namespace A138617.P2133950435268319521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A000244 n * A094975 n

end

end A138617.P2133950435268319521

namespace A138617

/-- `A000420(n)-A000244(n)*A094975(n)` -/
def P2133950435268319521.Spec : Prop :=
  ∀ n, P2133950435268319521.a n = A138617 n

end A138617

/-!
# A138618: Triangle of exponentials of Mangoldt function M(n) read by rows, in which row products give the natural numbers.

The programs for A138618, the canonical program `A138618.P17518203585378134010` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138618 has offset 1).

The definition of A138618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138618.P10926394765140552696

`∏{d}[A140256(n+1), #]`
-/

namespace A138618.P10926394765140552696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A138618.P10926394765140552696

namespace A138618

/-- `∏{d}[A140256(n+1), #]` -/
def P10926394765140552696.Spec : Prop :=
  ∀ n, (P10926394765140552696.a n : ℤ) = A138618 (n + 1)

end A138618

/-! ## A138618.P16452654565862608238

`∏{d}[A141700(n+1), #]`
-/

namespace A138618.P16452654565862608238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A138618.P16452654565862608238

namespace A138618

/-- `∏{d}[A141700(n+1), #]` -/
def P16452654565862608238.Spec : Prop :=
  ∀ n, (P16452654565862608238.a n : ℤ) = A138618 (n + 1)

end A138618

/-! ## A138618.P13354029287044386932

`∏{p}[A054372(n+1), #]`
-/

namespace A138618.P13354029287044386932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A138618.P13354029287044386932

namespace A138618

/-- `∏{p}[A054372(n+1), #]` -/
def P13354029287044386932.Spec : Prop :=
  ∀ n, (P13354029287044386932.a n : ℤ) = A138618 (n + 1)

end A138618

/-! ## A138618.P12346725343504567187

`A014963(A051537(n+1))`
-/

namespace A138618.P12346725343504567187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051537 (n + 1)).toNat

end

end A138618.P12346725343504567187

namespace A138618

/-- `A014963(A051537(n+1))` -/
def P12346725343504567187.Spec : Prop :=
  ∀ n, P12346725343504567187.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P17518203585378134010

`A072211(A085383(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138618

/-- `A072211(A085383(n+1))` -/
def P17518203585378134010.Spec : Prop :=
  ∀ n, P17518203585378134010.a n = A138618 (n + 1)

theorem P17518203585378134010.correct : P17518203585378134010.Spec := by
  intro n
  simp only [A138618, Nat.add_sub_cancel]

end A138618

/-! ## A138618.P11302995695348569152

`A028310(A140256(n+1))`
-/

namespace A138618.P11302995695348569152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A140256 (n + 1)).toNat

end

end A138618.P11302995695348569152

namespace A138618

/-- `A028310(A140256(n+1))` -/
def P11302995695348569152.Spec : Prop :=
  ∀ n, P11302995695348569152.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P1703098495935146805

`A028310(A141700(n+1))`
-/

namespace A138618.P1703098495935146805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A141700 (n + 1)).toNat

end

end A138618.P1703098495935146805

namespace A138618

/-- `A028310(A141700(n+1))` -/
def P1703098495935146805.Spec : Prop :=
  ∀ n, P1703098495935146805.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P16112858509140248880

`A014963(A338797(n+1))`
-/

namespace A138618.P16112858509140248880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A338797 (n + 1)).toNat

end

end A138618.P16112858509140248880

namespace A138618

/-- `A014963(A338797(n+1))` -/
def P16112858509140248880.Spec : Prop :=
  ∀ n, P16112858509140248880.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P11883079604167640392

`A014963(∏{d}[A126988(n+1), #])`
-/

namespace A138618.P11883079604167640392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A138618.P11883079604167640392

namespace A138618

/-- `A014963(∏{d}[A126988(n+1), #])` -/
def P11883079604167640392.Spec : Prop :=
  ∀ n, P11883079604167640392.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P3017303449025940415

`A014963(∏{p}[A126988(n+1), #])`
-/

namespace A138618.P3017303449025940415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A138618.P3017303449025940415

namespace A138618

/-- `A014963(∏{p}[A126988(n+1), #])` -/
def P3017303449025940415.Spec : Prop :=
  ∀ n, P3017303449025940415.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P1437011481582050972

`∏{p}[A140256(n+1), A006530(#)]`
-/

namespace A138618.P1437011481582050972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A138618.P1437011481582050972

namespace A138618

/-- `∏{p}[A140256(n+1), A006530(#)]` -/
def P1437011481582050972.Spec : Prop :=
  ∀ n, P1437011481582050972.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P14448729901681665809

`∏{p}[A141700(n+1), A006530(#)]`
-/

namespace A138618.P14448729901681665809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A138618.P14448729901681665809

namespace A138618

/-- `∏{p}[A141700(n+1), A006530(#)]` -/
def P14448729901681665809.Spec : Prop :=
  ∀ n, P14448729901681665809.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P1904653529310101787

`∏{p}[A140256(n+1), A020639(#)]`
-/

namespace A138618.P1904653529310101787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A138618.P1904653529310101787

namespace A138618

/-- `∏{p}[A140256(n+1), A020639(#)]` -/
def P1904653529310101787.Spec : Prop :=
  ∀ n, P1904653529310101787.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P3850643719745248056

`A140256(C(A140256(n+1), 2)+1)`
-/

namespace A138618.P3850643719745248056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (Nat.choose (A140256 (n + 1)).toNat 2 + 1)

end

end A138618.P3850643719745248056

namespace A138618

/-- `A140256(C(A140256(n+1), 2)+1)` -/
def P3850643719745248056.Spec : Prop :=
  ∀ n, P3850643719745248056.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P15973985127094584364

`gcd(A140256(n+1), A155031(n+1))`
-/

namespace A138618.P15973985127094584364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140256 (n + 1)) (A155031 (n + 1))

end

end A138618.P15973985127094584364

namespace A138618

/-- `gcd(A140256(n+1), A155031(n+1))` -/
def P15973985127094584364.Spec : Prop :=
  ∀ n, (P15973985127094584364.a n : ℤ) = A138618 (n + 1)

end A138618

/-! ## A138618.P13053006484070046593

`A014963(A316431(A087112(n+1)))`
-/

namespace A138618.P13053006484070046593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A316431 (A087112 (n + 1)).toNat).toNat

end

end A138618.P13053006484070046593

namespace A138618

/-- `A014963(A316431(A087112(n+1)))` -/
def P13053006484070046593.Spec : Prop :=
  ∀ n, P13053006484070046593.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P14206283672034318027

`A029579(A140256(A029579(2*n)))`
-/

namespace A138618.P14206283672034318027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A140256 (A029579 (2 * n)).toNat).toNat

end

end A138618.P14206283672034318027

namespace A138618

/-- `A029579(A140256(A029579(2*n)))` -/
def P14206283672034318027.Spec : Prop :=
  ∀ n, P14206283672034318027.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P17141366280155234148

`A014963(A054531(n+1)*A164306(n+1))`
-/

namespace A138618.P17141366280155234148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054531 (n + 1) * A164306 (n + 1)).toNat

end

end A138618.P17141366280155234148

namespace A138618

/-- `A014963(A054531(n+1)*A164306(n+1))` -/
def P17141366280155234148.Spec : Prop :=
  ∀ n, P17141366280155234148.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P13885844483640282410

`A006530(A054372(n+1)+A000005(8*n+9)%2)`
-/

namespace A138618.P13885844483640282410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054372 (n + 1) + Int.tmod (A000005 (8 * n + 9)) 2).toNat

end

end A138618.P13885844483640282410

namespace A138618

/-- `A006530(A054372(n+1)+A000005(8*n+9)%2)` -/
def P13885844483640282410.Spec : Prop :=
  ∀ n, P13885844483640282410.a n = A138618 (n + 1)

end A138618

/-! ## A138618.P18148969795181128439

`A006530(A054372(n+1)+A000203(8*n+9)%2)`
-/

namespace A138618.P18148969795181128439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054372 (n + 1) + Int.tmod (A000203 (8 * n + 9)) 2).toNat

end

end A138618.P18148969795181128439

namespace A138618

/-- `A006530(A054372(n+1)+A000203(8*n+9)%2)` -/
def P18148969795181128439.Spec : Prop :=
  ∀ n, P18148969795181128439.a n = A138618 (n + 1)

end A138618

/-!
# A138619: Number of permutations of length n which are contained in a pin sequence.

The programs for A138619, there is no canonical definition to state claims against.
-/

/-! ## A138619.P7349503641126601676

`A302492(A150288(n))`
-/

namespace A138619.P7349503641126601676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A150288 n).toNat

end

end A138619.P7349503641126601676

/-! ## A138619.P6445349607528907277

`A352728(A332977(n)!)`
-/

namespace A138619.P6445349607528907277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352728 (Nat.factorial (A332977 n).toNat)

end

end A138619.P6445349607528907277

/-!
# A138620: Nonnegative integers n such that 12*n-1 is prime.

The programs for A138620, the canonical program `A138620.P9967393734829156767` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138620 has offset 1).

The definition of A138620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138620.P17346031786843314874

`A167057(n+1)+1`
-/

namespace A138620.P17346031786843314874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1) + 1

end

end A138620.P17346031786843314874

namespace A138620

/-- `A167057(n+1)+1` -/
def P17346031786843314874.Spec : Prop :=
  ∀ n, P17346031786843314874.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P9967393734829156767

`round(A068231(n+1)/12)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138620

/-- `round(A068231(n+1)/12)` -/
def P9967393734829156767.Spec : Prop :=
  ∀ n, P9967393734829156767.a n = A138620 (n + 1)

theorem P9967393734829156767.correct : P9967393734829156767.Spec := by
  intro n
  simp only [A138620, Nat.add_sub_cancel]

end A138620

/-! ## A138620.P7500710993287515485

`record[gcd(n+1, A295012(n+1))]`
-/

namespace A138620.P7500710993287515485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A295012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138620.P7500710993287515485

namespace A138620

/-- `record[gcd(n+1, A295012(n+1))]` -/
def P7500710993287515485.Spec : Prop :=
  ∀ n, (P7500710993287515485.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P10984616872954067884

`A295012(eq[n+1, A295012(n+1)]+1)`
-/

namespace A138620.P10984616872954067884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A138620.P10984616872954067884

namespace A138620

/-- `A295012(eq[n+1, A295012(n+1)]+1)` -/
def P10984616872954067884.Spec : Prop :=
  ∀ n, P10984616872954067884.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P12819025408396711260

`record[A024898(n+1)/A020639(A024898(n+1))]`
-/

namespace A138620.P12819025408396711260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024898 (n + 1) : ℚ) / (A020639 (A024898 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138620.P12819025408396711260

namespace A138620

/-- `record[A024898(n+1)/A020639(A024898(n+1))]` -/
def P12819025408396711260.Spec : Prop :=
  ∀ n, P12819025408396711260.a n = (A138620 (n + 1) : ℚ)

end A138620

/-! ## A138620.P14757741039270341266

`A260295(A167057(n+1))`
-/

namespace A138620.P14757741039270341266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 (A167057 (n + 1)).toNat

end

end A138620.P14757741039270341266

namespace A138620

/-- `A260295(A167057(n+1))` -/
def P14757741039270341266.Spec : Prop :=
  ∀ n, P14757741039270341266.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P2571374309943668825

`A116563(A160593(n+1))`
-/

namespace A138620.P2571374309943668825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116563 (A160593 (n + 1)).toNat

end

end A138620.P2571374309943668825

namespace A138620

/-- `A116563(A160593(n+1))` -/
def P2571374309943668825.Spec : Prop :=
  ∀ n, P2571374309943668825.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P16013089099665564401

`eq[1, A001222(abs(1-12*n))]`
-/

namespace A138620.P16013089099665564401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (12 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138620.P16013089099665564401

namespace A138620

/-- `eq[1, A001222(abs(1-12*n))]` -/
def P16013089099665564401.Spec : Prop :=
  ∀ n, (P16013089099665564401.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P12978527300917244585

`eq[2, A000005(abs(1-12*n))]`
-/

namespace A138620.P12978527300917244585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |1 - (12 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138620.P12978527300917244585

namespace A138620

/-- `eq[2, A000005(abs(1-12*n))]` -/
def P12978527300917244585.Spec : Prop :=
  ∀ n, (P12978527300917244585.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P17527654745387008129

`eq[1, A001222(12*n+11)]+1`
-/

namespace A138620.P17527654745387008129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138620.P17527654745387008129

namespace A138620

/-- `eq[1, A001222(12*n+11)]+1` -/
def P17527654745387008129.Spec : Prop :=
  ∀ n, (P17527654745387008129.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P13734983633740557486

`record[(n+1)*A101264(6*n+5)]`
-/

namespace A138620.P13734983633740557486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101264 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138620.P13734983633740557486

namespace A138620

/-- `record[(n+1)*A101264(6*n+5)]` -/
def P13734983633740557486.Spec : Prop :=
  ∀ n, P13734983633740557486.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P14994391428290467423

`lt[A000005(A017629(n)+2), 3]+1`
-/

namespace A138620.P14994391428290467423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017629 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138620.P14994391428290467423

namespace A138620

/-- `lt[A000005(A017629(n)+2), 3]+1` -/
def P14994391428290467423.Spec : Prop :=
  ∀ n, (P14994391428290467423.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P359021354818024148

`lt[A000005(A017377(n)+n+n+2), 3]+1`
-/

namespace A138620.P359021354818024148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 n + (n : ℤ) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138620.P359021354818024148

namespace A138620

/-- `lt[A000005(A017377(n)+n+n+2), 3]+1` -/
def P359021354818024148.Spec : Prop :=
  ∀ n, (P359021354818024148.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P968324299599411574

`lt[A017605(n), A000010(A017653(n))]+1`
-/

namespace A138620.P968324299599411574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A138620.P968324299599411574

namespace A138620

/-- `lt[A017605(n), A000010(A017653(n))]+1` -/
def P968324299599411574.Spec : Prop :=
  ∀ n, (P968324299599411574.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P568656502781072792

`eq[1, A046645(12*n+11)]+1`
-/

namespace A138620.P568656502781072792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138620.P568656502781072792

namespace A138620

/-- `eq[1, A046645(12*n+11)]+1` -/
def P568656502781072792.Spec : Prop :=
  ∀ n, (P568656502781072792.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P6630403901536584369

`lt[A098098(A005408(n)), 2*(n+2)]+1`
-/

namespace A138620.P6630403901536584369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 (A005408 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138620.P6630403901536584369

namespace A138620

/-- `lt[A098098(A005408(n)), 2*(n+2)]+1` -/
def P6630403901536584369.Spec : Prop :=
  ∀ n, (P6630403901536584369.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P10650699579281877978

`lt[A001222(A016945(2*n+1)+2), 2]+1`
-/

namespace A138620.P10650699579281877978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016945 (2 * n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138620.P10650699579281877978

namespace A138620

/-- `lt[A001222(A016945(2*n+1)+2), 2]+1` -/
def P10650699579281877978.Spec : Prop :=
  ∀ n, (P10650699579281877978.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P14243009857745503075

`eq[1, A121561(A008458(2*n))]`
-/

namespace A138620.P14243009857745503075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (A008458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138620.P14243009857745503075

namespace A138620

/-- `eq[1, A121561(A008458(2*n))]` -/
def P14243009857745503075.Spec : Prop :=
  ∀ n, (P14243009857745503075.a n : ℤ) = A138620 (n + 1)

end A138620

/-! ## A138620.P5197387429146480193

`A001617(p?[12*n-1])`
-/

namespace A138620.P5197387429146480193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138620.P5197387429146480193

namespace A138620

/-- `A001617(p?[12*n-1])` -/
def P5197387429146480193.Spec : Prop :=
  ∀ n, P5197387429146480193.a n = A138620 (n + 1)

end A138620

/-! ## A138620.P5631098948398176205

`A001617(A068231(n+1))`
-/

namespace A138620.P5631098948398176205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A068231 (n + 1)).toNat

end

end A138620.P5631098948398176205

namespace A138620

/-- `A001617(A068231(n+1))` -/
def P5631098948398176205.Spec : Prop :=
  ∀ n, P5631098948398176205.a n = A138620 (n + 1)

end A138620

/-!
# A138621: a(1)=2. For n >=2, a(n) = p(n) *(floor(a(n-1)/p(n)) +2), where p(n) is the n-th prime.

The programs for A138621, there is no canonical definition to state claims against.
-/

/-! ## A138621.P7780045951817954855

`A000040(n+1)*A090529(floor(5*2^(n-2)))`
-/

namespace A138621.P7780045951817954855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A090529 ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat

end

end A138621.P7780045951817954855

/-! ## A138621.P14020108370326440457

`A000040(n+1)*A100678(A110436(n+1))`
-/

namespace A138621.P14020108370326440457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A100678 (A110436 (n + 1)).toNat

end

end A138621.P14020108370326440457

/-! ## A138621.P5167462575239015500

`A000040(n+1)*A358372(A275972(2*(n+1)))`
-/

namespace A138621.P5167462575239015500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A358372 (A275972 (2 * (n + 1))).toNat

end

end A138621.P5167462575239015500

/-! ## A138621.P5655335372977270800

`A000040(n+1)*A084558(A101946(n))`
-/

namespace A138621.P5655335372977270800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A084558 (A101946 n).toNat

end

end A138621.P5655335372977270800

/-! ## A138621.P1680506524170299476

`A000040(n+1)*A186189(A005228(n+1))`
-/

namespace A138621.P1680506524170299476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A186189 (A005228 (n + 1)).toNat

end

end A138621.P1680506524170299476

/-!
# A138622: Nonnegative integers k such that 14*k-1 is prime.

The programs for A138622, the canonical program `A138622.P13494788232116545639` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138622 has offset 1).

The definition of A138622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138622.P13494788232116545639

`ceil(A024900(n+1)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138622

/-- `ceil(A024900(n+1)/2)` -/
def P13494788232116545639.Spec : Prop :=
  ∀ n, P13494788232116545639.a n = A138622 (n + 1)

theorem P13494788232116545639.correct : P13494788232116545639.Spec := by
  intro n
  simp only [A138622, Nat.add_sub_cancel]

end A138622

/-! ## A138622.P2744586286622001645

`(A045473(n+1)+1)/14`
-/

namespace A138622.P2744586286622001645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045473 (n + 1) + 1 : ℚ) / 14

end

end A138622.P2744586286622001645

namespace A138622

/-- `(A045473(n+1)+1)/14` -/
def P2744586286622001645.Spec : Prop :=
  ∀ n, P2744586286622001645.a n = (A138622 (n + 1) : ℚ)

end A138622

/-! ## A138622.P10107534179555384457

`(eq[1, A001222(7*n+6)]+1)/2`
-/

namespace A138622.P10107534179555384457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A138622.P10107534179555384457

namespace A138622

/-- `(eq[1, A001222(7*n+6)]+1)/2` -/
def P10107534179555384457.Spec : Prop :=
  ∀ n, P10107534179555384457.a n = (A138622 (n + 1) : ℚ)

end A138622

/-! ## A138622.P17032137270382580872

`(eq[2, A000005(5*(n+1)+2*n+1)]+1)/2`
-/

namespace A138622.P17032137270382580872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) + (2 * n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A138622.P17032137270382580872

namespace A138622

/-- `(eq[2, A000005(5*(n+1)+2*n+1)]+1)/2` -/
def P17032137270382580872.Spec : Prop :=
  ∀ n, P17032137270382580872.a n = (A138622 (n + 1) : ℚ)

end A138622

/-! ## A138622.P5376243723931794758

`lt[A001222(A008595(n+1)+n), 2]+1`
-/

namespace A138622.P5376243723931794758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008595 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138622.P5376243723931794758

namespace A138622

/-- `lt[A001222(A008595(n+1)+n), 2]+1` -/
def P5376243723931794758.Spec : Prop :=
  ∀ n, (P5376243723931794758.a n : ℤ) = A138622 (n + 1)

end A138622

/-! ## A138622.P11171151174416719014

`A000463(A024900(n+1))`
-/

namespace A138622.P11171151174416719014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A024900 (n + 1)).toNat

end

end A138622.P11171151174416719014

namespace A138622

/-- `A000463(A024900(n+1))` -/
def P11171151174416719014.Spec : Prop :=
  ∀ n, P11171151174416719014.a n = A138622 (n + 1)

end A138622

/-! ## A138622.P12859916038390904357

`A246277(eq[2, A000005(abs(n+1-8*n))])`
-/

namespace A138622.P12859916038390904357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |(n + 1 : ℤ) - (8 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138622.P12859916038390904357

namespace A138622

/-- `A246277(eq[2, A000005(abs(n+1-8*n))])` -/
def P12859916038390904357.Spec : Prop :=
  ∀ n, P12859916038390904357.a n = A138622 (n + 1)

end A138622

/-! ## A138622.P14673931997669267069

`(lt[A001222(A016969(n)+n+1), 2]+1)/2`
-/

namespace A138622.P14673931997669267069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / 2

end

end A138622.P14673931997669267069

namespace A138622

/-- `(lt[A001222(A016969(n)+n+1), 2]+1)/2` -/
def P14673931997669267069.Spec : Prop :=
  ∀ n, P14673931997669267069.a n = (A138622 (n + 1) : ℚ)

end A138622

/-! ## A138622.P7885718872346407355

`eq[2, A278223(7*(n+1))]+1`
-/

namespace A138622.P7885718872346407355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (7 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138622.P7885718872346407355

namespace A138622

/-- `eq[2, A278223(7*(n+1))]+1` -/
def P7885718872346407355.Spec : Prop :=
  ∀ n, (P7885718872346407355.a n : ℤ) = A138622 (n + 1)

end A138622

/-! ## A138622.P1577522109115236055

`eq[1, A175078(14*n+1)]`
-/

namespace A138622.P1577522109115236055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (14 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138622.P1577522109115236055

namespace A138622

/-- `eq[1, A175078(14*n+1)]` -/
def P1577522109115236055.Spec : Prop :=
  ∀ n, (P1577522109115236055.a n : ℤ) = A138622 (n + 1)

end A138622

/-! ## A138622.P4799988950628519703

`eq[2, A001222(Δ[(7*n+3)²])]+1`
-/

namespace A138622.P4799988950628519703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138622.P4799988950628519703

namespace A138622

/-- `eq[2, A001222(Δ[(7*n+3)²])]+1` -/
def P4799988950628519703.Spec : Prop :=
  ∀ n, (P4799988950628519703.a n : ℤ) = A138622 (n + 1)

end A138622

/-! ## A138622.P15772190083321956790

`A106615(p?[7*n-1]+1)`
-/

namespace A138622.P15772190083321956790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A138622.P15772190083321956790

namespace A138622

/-- `A106615(p?[7*n-1]+1)` -/
def P15772190083321956790.Spec : Prop :=
  ∀ n, P15772190083321956790.a n = A138622 (n + 1)

end A138622

/-! ## A138622.P9618279450618591007

`A008617(A045473(n+1))`
-/

namespace A138622.P9618279450618591007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A045473 (n + 1)).toNat

end

end A138622.P9618279450618591007

namespace A138622

/-- `A008617(A045473(n+1))` -/
def P9618279450618591007.Spec : Prop :=
  ∀ n, P9618279450618591007.a n = A138622 (n + 1)

end A138622

/-! ## A138622.P13348699378517206540

`A008617(A045464(n+2))`
-/

namespace A138622.P13348699378517206540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A045464 (n + 2)).toNat

end

end A138622.P13348699378517206540

namespace A138622

/-- `A008617(A045464(n+2))` -/
def P13348699378517206540.Spec : Prop :=
  ∀ n, P13348699378517206540.a n = A138622 (n + 1)

end A138622

/-!
# A138623: Primes congruent to 5 mod 17.

The programs for A138623, the canonical program `A138623.P14695164853864982315` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138623 has offset 1).

The definition of A138623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138623.P14695164853864982315

`∪[A142479(n+1), A142489(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138623

/-- `∪[A142479(n+1), A142489(n+1)]` -/
def P14695164853864982315.Spec : Prop :=
  ∀ n, (P14695164853864982315.a n : ℤ) = A138623 (n + 1)

theorem P14695164853864982315.correct : P14695164853864982315.Spec := by
  intro n
  simp only [A138623, Nat.add_sub_cancel]

end A138623

/-! ## A138623.P7046389615902399774

`p?[17*n+5]`
-/

namespace A138623.P7046389615902399774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138623.P7046389615902399774

namespace A138623

/-- `p?[17*n+5]` -/
def P7046389615902399774.Spec : Prop :=
  ∀ n, (P7046389615902399774.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P12230953264808272124

`or(1, p?[17*n-12])`
-/

namespace A138623.P12230953264808272124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138623.P12230953264808272124

namespace A138623

/-- `or(1, p?[17*n-12])` -/
def P12230953264808272124.Spec : Prop :=
  ∀ n, P12230953264808272124.a n = A138623 (n + 1)

end A138623

/-! ## A138623.P6058162540102424746

`∩[A215132(n+1), A215169(n+1)]`
-/

namespace A138623.P6058162540102424746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P6058162540102424746

namespace A138623

/-- `∩[A215132(n+1), A215169(n+1)]` -/
def P6058162540102424746.Spec : Prop :=
  ∀ n, (P6058162540102424746.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P2033011918407180192

`∩[A215132(n+1), A215212(n+1)]`
-/

namespace A138623.P2033011918407180192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P2033011918407180192

namespace A138623

/-- `∩[A215132(n+1), A215212(n+1)]` -/
def P2033011918407180192.Spec : Prop :=
  ∀ n, (P2033011918407180192.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P5262872555658477230

`∩[A215132(n+1), A215273(n+1)]`
-/

namespace A138623.P5262872555658477230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P5262872555658477230

namespace A138623

/-- `∩[A215132(n+1), A215273(n+1)]` -/
def P5262872555658477230.Spec : Prop :=
  ∀ n, (P5262872555658477230.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P2138334961788844605

`∩[A038890(n+1), A215169(n+1)]`
-/

namespace A138623.P2138334961788844605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P2138334961788844605

namespace A138623

/-- `∩[A038890(n+1), A215169(n+1)]` -/
def P2138334961788844605.Spec : Prop :=
  ∀ n, (P2138334961788844605.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P8431275631695710513

`∩[A038890(n+1), A215273(n+1)]`
-/

namespace A138623.P8431275631695710513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P8431275631695710513

namespace A138623

/-- `∩[A038890(n+1), A215273(n+1)]` -/
def P8431275631695710513.Spec : Prop :=
  ∀ n, (P8431275631695710513.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P2270730713356832213

`or(p?[A242215(n)-n], A254651(n))`
-/

namespace A138623.P2270730713356832213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A254651 n)

end

end A138623.P2270730713356832213

namespace A138623

/-- `or(p?[A242215(n)-n], A254651(n))` -/
def P2270730713356832213.Spec : Prop :=
  ∀ n, P2270730713356832213.a n = A138623 (n + 1)

end A138623

/-! ## A138623.P637838677683058655

`∩[A038890(n+1), A154612(n)-2]`
-/

namespace A138623.P637838677683058655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P637838677683058655

namespace A138623

/-- `∩[A038890(n+1), A154612(n)-2]` -/
def P637838677683058655.Spec : Prop :=
  ∀ n, (P637838677683058655.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P1609196360127642341

`∩[A040140(n+1), A154612(n)-2]`
-/

namespace A138623.P1609196360127642341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P1609196360127642341

namespace A138623

/-- `∩[A040140(n+1), A154612(n)-2]` -/
def P1609196360127642341.Spec : Prop :=
  ∀ n, (P1609196360127642341.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P9451136768704051032

`∩[A215156(n+1), A154612(n)-2]`
-/

namespace A138623.P9451136768704051032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P9451136768704051032

namespace A138623

/-- `∩[A215156(n+1), A154612(n)-2]` -/
def P9451136768704051032.Spec : Prop :=
  ∀ n, (P9451136768704051032.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P17105550348008320334

`∩[A215161(n+1), A154612(n)-2]`
-/

namespace A138623.P17105550348008320334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P17105550348008320334

namespace A138623

/-- `∩[A215161(n+1), A154612(n)-2]` -/
def P17105550348008320334.Spec : Prop :=
  ∀ n, (P17105550348008320334.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P18257017374846266541

`∩[A215212(n+1), A154612(n)-2]`
-/

namespace A138623.P18257017374846266541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P18257017374846266541

namespace A138623

/-- `∩[A215212(n+1), A154612(n)-2]` -/
def P18257017374846266541.Spec : Prop :=
  ∀ n, (P18257017374846266541.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P16946882674564107935

`∩[A049549(n+1), A154612(n)-2]`
-/

namespace A138623.P16946882674564107935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P16946882674564107935

namespace A138623

/-- `∩[A049549(n+1), A154612(n)-2]` -/
def P16946882674564107935.Spec : Prop :=
  ∀ n, (P16946882674564107935.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P9968985951333797146

`∩[A261123(n+1), A154612(n)-2]`
-/

namespace A138623.P9968985951333797146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P9968985951333797146

namespace A138623

/-- `∩[A261123(n+1), A154612(n)-2]` -/
def P9968985951333797146.Spec : Prop :=
  ∀ n, (P9968985951333797146.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P5991080904235629426

`∩[A065396(n+1), A242215(n)-n]`
-/

namespace A138623.P5991080904235629426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P5991080904235629426

namespace A138623

/-- `∩[A065396(n+1), A242215(n)-n]` -/
def P5991080904235629426.Spec : Prop :=
  ∀ n, (P5991080904235629426.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P10519303880265613384

`∩[A261123(n+1), A242215(n)-n]`
-/

namespace A138623.P10519303880265613384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P10519303880265613384

namespace A138623

/-- `∩[A261123(n+1), A242215(n)-n]` -/
def P10519303880265613384.Spec : Prop :=
  ∀ n, (P10519303880265613384.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P18059035713159579096

`∩[A000040(n+1), A154612(n)-2]`
-/

namespace A138623.P18059035713159579096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P18059035713159579096

namespace A138623

/-- `∩[A000040(n+1), A154612(n)-2]` -/
def P18059035713159579096.Spec : Prop :=
  ∀ n, (P18059035713159579096.a n : ℤ) = A138623 (n + 1)

end A138623

/-! ## A138623.P6920402283154435618

`∩[A006005(n+1), A154612(n)-2]`
-/

namespace A138623.P6920402283154435618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P6920402283154435618

namespace A138623

/-- `∩[A006005(n+1), A154612(n)-2]` -/
def P6920402283154435618.Spec : Prop :=
  ∀ n, (P6920402283154435618.a n : ℤ) = A138623 (n + 1)

end A138623

/-!
# A138624: Nonnegative integers k such that 17*k+5 is prime.

The programs for A138624, the canonical program `A138624.P17333592088374729543` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138624 has offset 1).

The definition of A138624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138624.P17333592088374729543

`floor(A138623(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138624

/-- `floor(A138623(n+1)/17)` -/
def P17333592088374729543.Spec : Prop :=
  ∀ n, P17333592088374729543.a n = A138624 (n + 1)

theorem P17333592088374729543.correct : P17333592088374729543.Spec := by
  intro n
  simp only [A138624, Nat.add_sub_cancel]

end A138624

/-! ## A138624.P17142410719283195343

`floor(p?[a(n-1)+17]/17)` with `a(0)=5`
-/

namespace A138624.P17142410719283195343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17⌋

end

end A138624.P17142410719283195343

namespace A138624

/-- `floor(p?[a(n-1)+17]/17)` -/
def P17142410719283195343.Spec : Prop :=
  ∀ n, P17142410719283195343.a n = A138624 (n + 1)

end A138624

/-! ## A138624.P9403096480217688478

`eq[1, A001222(17*n+5)]`
-/

namespace A138624.P9403096480217688478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138624.P9403096480217688478

namespace A138624

/-- `eq[1, A001222(17*n+5)]` -/
def P9403096480217688478.Spec : Prop :=
  ∀ n, (P9403096480217688478.a n : ℤ) = A138624 (n + 1)

end A138624

/-! ## A138624.P9053869730183297018

`eq[2, A000005(17*n+5)]`
-/

namespace A138624.P9053869730183297018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138624.P9053869730183297018

namespace A138624

/-- `eq[2, A000005(17*n+5)]` -/
def P9053869730183297018.Spec : Prop :=
  ∀ n, (P9053869730183297018.a n : ℤ) = A138624 (n + 1)

end A138624

/-! ## A138624.P15926478725984351355

`lt[A000005(34*n/2+5), 3]`
-/

namespace A138624.P15926478725984351355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (34 * ((n : ℚ) / 2) + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138624.P15926478725984351355

namespace A138624

/-- `lt[A000005(34*n/2+5), 3]` -/
def P15926478725984351355.Spec : Prop :=
  ∀ n, (P15926478725984351355.a n : ℤ) = A138624 (n + 1)

end A138624

/-! ## A138624.P12742166636879592262

`eq[1, A003415(17*n+5)]`
-/

namespace A138624.P12742166636879592262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (17 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138624.P12742166636879592262

namespace A138624

/-- `eq[1, A003415(17*n+5)]` -/
def P12742166636879592262.Spec : Prop :=
  ∀ n, (P12742166636879592262.a n : ℤ) = A138624 (n + 1)

end A138624

/-! ## A138624.P14608470195791483954

`record[n%A014963(17*n+5)]`
-/

namespace A138624.P14608470195791483954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (17 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138624.P14608470195791483954

namespace A138624

/-- `record[n%A014963(17*n+5)]` -/
def P14608470195791483954.Spec : Prop :=
  ∀ n, P14608470195791483954.a n = A138624 (n + 1)

end A138624

/-!
# A138625: Primes congruent to 12 mod 17.

The programs for A138625, the canonical program `A138625.P13957777743230489249` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138625 has offset 1).

The definition of A138625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138625.P13957777743230489249

`∪[A142494(n+1), A142504(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138625

/-- `∪[A142494(n+1), A142504(n+1)]` -/
def P13957777743230489249.Spec : Prop :=
  ∀ n, (P13957777743230489249.a n : ℤ) = A138625 (n + 1)

theorem P13957777743230489249.correct : P13957777743230489249.Spec := by
  intro n
  simp only [A138625, Nat.add_sub_cancel]

end A138625

/-! ## A138625.P1152913156975901028

`p?[17*n-5]`
-/

namespace A138625.P1152913156975901028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138625.P1152913156975901028

namespace A138625

/-- `p?[17*n-5]` -/
def P1152913156975901028.Spec : Prop :=
  ∀ n, P1152913156975901028.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P37720867269871874

`or(1, p?[17*n+12])`
-/

namespace A138625.P37720867269871874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138625.P37720867269871874

namespace A138625

/-- `or(1, p?[17*n+12])` -/
def P37720867269871874.Spec : Prop :=
  ∀ n, (P37720867269871874.a n : ℤ) = A138625 (n + 1)

end A138625

/-! ## A138625.P3198225113354003533

`A350963(A138626(n+1))`
-/

namespace A138625.P3198225113354003533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (A138626 (n + 1)).toNat

end

end A138625.P3198225113354003533

namespace A138625

/-- `A350963(A138626(n+1))` -/
def P3198225113354003533.Spec : Prop :=
  ∀ n, P3198225113354003533.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P8660333918962635911

`∩[A000040(n+1), A063305(n+2)-n]`
-/

namespace A138625.P8660333918962635911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138625.P8660333918962635911

namespace A138625

/-- `∩[A000040(n+1), A063305(n+2)-n]` -/
def P8660333918962635911.Spec : Prop :=
  ∀ n, (P8660333918962635911.a n : ℤ) = A138625 (n + 1)

end A138625

/-! ## A138625.P1776292266766475351

`∩[A083249(n+1), A063305(n+2)-n]`
-/

namespace A138625.P1776292266766475351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138625.P1776292266766475351

namespace A138625

/-- `∩[A083249(n+1), A063305(n+2)-n]` -/
def P1776292266766475351.Spec : Prop :=
  ∀ n, (P1776292266766475351.a n : ℤ) = A138625 (n + 1)

end A138625

/-! ## A138625.P12534954273820163066

`record[A006530(34*(n+1)-5)]`
-/

namespace A138625.P12534954273820163066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (34 * (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138625.P12534954273820163066

namespace A138625

/-- `record[A006530(34*(n+1)-5)]` -/
def P12534954273820163066.Spec : Prop :=
  ∀ n, P12534954273820163066.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P12009484625301901405

`filter[A350963(2*n), A010051(#)]`
-/

namespace A138625.P12009484625301901405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138625.P12009484625301901405

namespace A138625

/-- `filter[A350963(2*n), A010051(#)]` -/
def P12009484625301901405.Spec : Prop :=
  ∀ n, P12009484625301901405.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P5044824143691396963

`filter[A350963(2*n), A379969(#)]`
-/

namespace A138625.P5044824143691396963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A138625.P5044824143691396963

namespace A138625

/-- `filter[A350963(2*n), A379969(#)]` -/
def P5044824143691396963.Spec : Prop :=
  ∀ n, P5044824143691396963.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P10587266641583989690

`record[A020639(A082285(n+1)+n)]`
-/

namespace A138625.P10587266641583989690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082285 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138625.P10587266641583989690

namespace A138625

/-- `record[A020639(A082285(n+1)+n)]` -/
def P10587266641583989690.Spec : Prop :=
  ∀ n, P10587266641583989690.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P1710719063116164418

`filter[A350963(2*n), A302777(#)]`
-/

namespace A138625.P1710719063116164418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A138625.P1710719063116164418

namespace A138625

/-- `filter[A350963(2*n), A302777(#)]` -/
def P1710719063116164418.Spec : Prop :=
  ∀ n, P1710719063116164418.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P18115420257338392858

`filter[A350963(2*n), A323153(#)]`
-/

namespace A138625.P18115420257338392858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A138625.P18115420257338392858

namespace A138625

/-- `filter[A350963(2*n), A323153(#)]` -/
def P18115420257338392858.Spec : Prop :=
  ∀ n, P18115420257338392858.a n = A138625 (n + 1)

end A138625

/-! ## A138625.P11356903823672792453

`filter[A350963(2*n), A353670(#)]`
-/

namespace A138625.P11356903823672792453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A138625.P11356903823672792453

namespace A138625

/-- `filter[A350963(2*n), A353670(#)]` -/
def P11356903823672792453.Spec : Prop :=
  ∀ n, P11356903823672792453.a n = A138625 (n + 1)

end A138625

/-!
# A138626: Nonnegative integers n such that 17*n-5 is prime.

The programs for A138626, the canonical program `A138626.P1319008390697014529` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138626 has offset 1).

The definition of A138626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138626.P1319008390697014529

`ceil(A138625(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138626

/-- `ceil(A138625(n+1)/17)` -/
def P1319008390697014529.Spec : Prop :=
  ∀ n, P1319008390697014529.a n = A138626 (n + 1)

theorem P1319008390697014529.correct : P1319008390697014529.Spec := by
  intro n
  simp only [A138626, Nat.add_sub_cancel]

end A138626

/-! ## A138626.P14359984185063220581

`round(A138625(n+1)/17)%A167487(n+12)`
-/

namespace A138626.P14359984185063220581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138625 (n + 1) : ℚ) / 17)) (A167487 (n + 12))

end

end A138626.P14359984185063220581

namespace A138626

/-- `round(A138625(n+1)/17)%A167487(n+12)` -/
def P14359984185063220581.Spec : Prop :=
  ∀ n, P14359984185063220581.a n = A138626 (n + 1)

end A138626

/-! ## A138626.P15998033157935461837

`A028310(round(A138625(n+1)/17))`
-/

namespace A138626.P15998033157935461837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A138625 (n + 1) : ℚ) / 17)).toNat

end

end A138626.P15998033157935461837

namespace A138626

/-- `A028310(round(A138625(n+1)/17))` -/
def P15998033157935461837.Spec : Prop :=
  ∀ n, P15998033157935461837.a n = A138626 (n + 1)

end A138626

/-! ## A138626.P12394283587989861032

`A254667(round(A138625(n+1)/17))`
-/

namespace A138626.P12394283587989861032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A138625 (n + 1) : ℚ) / 17)).toNat

end

end A138626.P12394283587989861032

namespace A138626

/-- `A254667(round(A138625(n+1)/17))` -/
def P12394283587989861032.Spec : Prop :=
  ∀ n, P12394283587989861032.a n = A138626 (n + 1)

end A138626

/-! ## A138626.P16727604351497107006

`record[(n+2)%A020639(A082285(n+1)+n)]`
-/

namespace A138626.P16727604351497107006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A020639 (A082285 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138626.P16727604351497107006

namespace A138626

/-- `record[(n+2)%A020639(A082285(n+1)+n)]` -/
def P16727604351497107006.Spec : Prop :=
  ∀ n, P16727604351497107006.a n = A138626 (n + 1)

end A138626

/-! ## A138626.P14941434653668593728

`lt[A001222(A016969(n)+11*n+7), 2]+1`
-/

namespace A138626.P14941434653668593728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + (11 * n : ℤ) + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138626.P14941434653668593728

namespace A138626

/-- `lt[A001222(A016969(n)+11*n+7), 2]+1` -/
def P14941434653668593728.Spec : Prop :=
  ∀ n, (P14941434653668593728.a n : ℤ) = A138626 (n + 1)

end A138626

/-!
# A138627: Primes congruent to 10 mod 17.

The programs for A138627, the canonical program `A138627.P4252768369542355220` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138627 has offset 1).

The definition of A138627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138627.P4252768369542355220

`∪[A142482(n+1), A142503(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138627

/-- `∪[A142482(n+1), A142503(n+1)]` -/
def P4252768369542355220.Spec : Prop :=
  ∀ n, (P4252768369542355220.a n : ℤ) = A138627 (n + 1)

theorem P4252768369542355220.correct : P4252768369542355220.Spec := by
  intro n
  simp only [A138627, Nat.add_sub_cancel]

end A138627

/-! ## A138627.P9240088702156909881

`p?[17*n-7]`
-/

namespace A138627.P9240088702156909881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138627.P9240088702156909881

namespace A138627

/-- `p?[17*n-7]` -/
def P9240088702156909881.Spec : Prop :=
  ∀ n, P9240088702156909881.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P9867782645094930520

`or(1, p?[A082286(n)-n])`
-/

namespace A138627.P9867782645094930520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138627.P9867782645094930520

namespace A138627

/-- `or(1, p?[A082286(n)-n])` -/
def P9867782645094930520.Spec : Prop :=
  ∀ n, P9867782645094930520.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P537223859514577882

`A001414(p?[A017077(n+1)+A017077(n)+n])`
-/

namespace A138627.P537223859514577882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (n + 1) + (A017077 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138627.P537223859514577882

namespace A138627

/-- `A001414(p?[A017077(n+1)+A017077(n)+n])` -/
def P537223859514577882.Spec : Prop :=
  ∀ n, P537223859514577882.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P16775336265101496954

`∑{p}[p?[A016825(A016825(n))+n], #]`
-/

namespace A138627.P16775336265101496954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016825 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A138627.P16775336265101496954

namespace A138627

/-- `∑{p}[p?[A016825(A016825(n))+n], #]` -/
def P16775336265101496954.Spec : Prop :=
  ∀ n, (P16775336265101496954.a n : ℤ) = A138627 (n + 1)

end A138627

/-! ## A138627.P7355513321343204082

`filter[A212161(2*n+1), A010051(#)]`
-/

namespace A138627.P7355513321343204082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138627.P7355513321343204082

namespace A138627

/-- `filter[A212161(2*n+1), A010051(#)]` -/
def P7355513321343204082.Spec : Prop :=
  ∀ n, P7355513321343204082.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P16416207723281432760

`filter[A212161(2*n+1), A355937(#)]`
-/

namespace A138627.P16416207723281432760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A138627.P16416207723281432760

namespace A138627

/-- `filter[A212161(2*n+1), A355937(#)]` -/
def P16416207723281432760.Spec : Prop :=
  ∀ n, P16416207723281432760.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P6180725223307720449

`A000265(p?[A017089(2*n+1)+n])`
-/

namespace A138627.P6180725223307720449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138627.P6180725223307720449

namespace A138627

/-- `A000265(p?[A017089(2*n+1)+n])` -/
def P6180725223307720449.Spec : Prop :=
  ∀ n, P6180725223307720449.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P16168870536057357516

`or(1, p?[A016825(A016825(n+1))+n+1])`
-/

namespace A138627.P16168870536057357516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016825 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138627.P16168870536057357516

namespace A138627

/-- `or(1, p?[A016825(A016825(n+1))+n+1])` -/
def P16168870536057357516.Spec : Prop :=
  ∀ n, P16168870536057357516.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P8832223860427950274

`record[p?[A105452(A016897(n))-n]]`
-/

namespace A138627.P8832223860427950274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105452 (A016897 n).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138627.P8832223860427950274

namespace A138627

/-- `record[p?[A105452(A016897(n))-n]]` -/
def P8832223860427950274.Spec : Prop :=
  ∀ n, P8832223860427950274.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P11267271036958979955

`filter[A212161(2*n+1), A302777(#)]`
-/

namespace A138627.P11267271036958979955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A138627.P11267271036958979955

namespace A138627

/-- `filter[A212161(2*n+1), A302777(#)]` -/
def P11267271036958979955.Spec : Prop :=
  ∀ n, P11267271036958979955.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P13471818290221069433

`filter[A212161(2*n+1), A323152(#)]`
-/

namespace A138627.P13471818290221069433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A138627.P13471818290221069433

namespace A138627

/-- `filter[A212161(2*n+1), A323152(#)]` -/
def P13471818290221069433.Spec : Prop :=
  ∀ n, P13471818290221069433.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P3522279334672265054

`filter[A212161(2*n+1), A323153(#)]`
-/

namespace A138627.P3522279334672265054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A138627.P3522279334672265054

namespace A138627

/-- `filter[A212161(2*n+1), A323153(#)]` -/
def P3522279334672265054.Spec : Prop :=
  ∀ n, P3522279334672265054.a n = A138627 (n + 1)

end A138627

/-! ## A138627.P1055018079069350531

`record[A090368(A125169(n+1)+n)]`
-/

namespace A138627.P1055018079069350531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A125169 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138627.P1055018079069350531

namespace A138627

/-- `record[A090368(A125169(n+1)+n)]` -/
def P1055018079069350531.Spec : Prop :=
  ∀ n, P1055018079069350531.a n = A138627 (n + 1)

end A138627

/-!
# A138628: Positive integers k such that 17*k-7 is prime.

The programs for A138628, the canonical program `A138628.P9747259890444117167` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138628 has offset 1).

The definition of A138628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138628.P9747259890444117167

`ceil(A138627(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138628

/-- `ceil(A138627(n+1)/17)` -/
def P9747259890444117167.Spec : Prop :=
  ∀ n, P9747259890444117167.a n = A138628 (n + 1)

theorem P9747259890444117167.correct : P9747259890444117167.Spec := by
  intro n
  simp only [A138628, Nat.add_sub_cancel]

end A138628

/-! ## A138628.P18329800809088330897

`round(A138627(n+1)/17)%A048058(n)`
-/

namespace A138628.P18329800809088330897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17)) (A048058 n)

end

end A138628.P18329800809088330897

namespace A138628

/-- `round(A138627(n+1)/17)%A048058(n)` -/
def P18329800809088330897.Spec : Prop :=
  ∀ n, P18329800809088330897.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P13002441103720913440

`floor(A138627(n+1)/17)+A005408(n)%2`
-/

namespace A138628.P13002441103720913440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138627 (n + 1) : ℚ) / 17⌋ + Int.tmod (A005408 n) 2

end

end A138628.P13002441103720913440

namespace A138628

/-- `floor(A138627(n+1)/17)+A005408(n)%2` -/
def P13002441103720913440.Spec : Prop :=
  ∀ n, P13002441103720913440.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P12676534848266170428

`round(A138627(n+1)/17)+A014206(n)%2`
-/

namespace A138628.P12676534848266170428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) + Int.tmod (A014206 n) 2

end

end A138628.P12676534848266170428

namespace A138628

/-- `round(A138627(n+1)/17)+A014206(n)%2` -/
def P12676534848266170428.Spec : Prop :=
  ∀ n, P12676534848266170428.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P5751011417474853900

`and(A000034(n)-3, round(A138627(n+1)/17))`
-/

namespace A138628.P5751011417474853900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n - 3) (SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17))

end

end A138628.P5751011417474853900

namespace A138628

/-- `and(A000034(n)-3, round(A138627(n+1)/17))` -/
def P5751011417474853900.Spec : Prop :=
  ∀ n, P5751011417474853900.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P8752896310639360188

`round(A138627(n+1)/17)+A000120(n)%-1`
-/

namespace A138628.P8752896310639360188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) + Int.tmod (A000120 n) (-1)

end

end A138628.P8752896310639360188

namespace A138628

/-- `round(A138627(n+1)/17)+A000120(n)%-1` -/
def P8752896310639360188.Spec : Prop :=
  ∀ n, P8752896310639360188.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P14226538598086421985

`round(A138627(n+1)/17)+A007318(n)%-1`
-/

namespace A138628.P14226538598086421985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) + Int.tmod (A007318 n) (-1)

end

end A138628.P14226538598086421985

namespace A138628

/-- `round(A138627(n+1)/17)+A007318(n)%-1` -/
def P14226538598086421985.Spec : Prop :=
  ∀ n, P14226538598086421985.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P2672024285934264783

`floor(A138627(n+1)/17-A008683(A007918(n)))`
-/

namespace A138628.P2672024285934264783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138627 (n + 1) : ℚ) / 17 - (A008683 (A007918 n).toNat : ℚ)⌋

end

end A138628.P2672024285934264783

namespace A138628

/-- `floor(A138627(n+1)/17-A008683(A007918(n)))` -/
def P2672024285934264783.Spec : Prop :=
  ∀ n, P2672024285934264783.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P9466187416769382839

`round(A000007(A320193(n))+A138627(n+1)/17)`
-/

namespace A138628.P9466187416769382839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (A320193 n).toNat : ℚ) + (A138627 (n + 1) : ℚ) / 17)

end

end A138628.P9466187416769382839

namespace A138628

/-- `round(A000007(A320193(n))+A138627(n+1)/17)` -/
def P9466187416769382839.Spec : Prop :=
  ∀ n, P9466187416769382839.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P8521673130124837648

`round(A138627(n+1)/17)*A001222(A139837(n+1))`
-/

namespace A138628.P8521673130124837648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) * A001222 (A139837 (n + 1)).toNat

end

end A138628.P8521673130124837648

namespace A138628

/-- `round(A138627(n+1)/17)*A001222(A139837(n+1))` -/
def P8521673130124837648.Spec : Prop :=
  ∀ n, P8521673130124837648.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P17819068581890242720

`lt[A001222(A017569(ceil((3*n+1)/2))-n), 2]+1`
-/

namespace A138628.P17819068581890242720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017569 ⌈(3 * n + 1 : ℚ) / 2⌉.toNat - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138628.P17819068581890242720

namespace A138628

/-- `lt[A001222(A017569(ceil((3*n+1)/2))-n), 2]+1` -/
def P17819068581890242720.Spec : Prop :=
  ∀ n, (P17819068581890242720.a n : ℤ) = A138628 (n + 1)

end A138628

/-! ## A138628.P11889797247481259257

`-round(A138627(n+1)/17)*A008683(A142329(n+1))`
-/

namespace A138628.P11889797247481259257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) * A008683 (A142329 (n + 1)).toNat)

end

end A138628.P11889797247481259257

namespace A138628

/-- `-round(A138627(n+1)/17)*A008683(A142329(n+1))` -/
def P11889797247481259257.Spec : Prop :=
  ∀ n, P11889797247481259257.a n = A138628 (n + 1)

end A138628

/-! ## A138628.P14814582425446877591

`round(A138627(n+1)/17)*A008683(A086005(n+1))`
-/

namespace A138628.P14814582425446877591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138627 (n + 1) : ℚ) / 17) * A008683 (A086005 (n + 1)).toNat

end

end A138628.P14814582425446877591

namespace A138628

/-- `round(A138627(n+1)/17)*A008683(A086005(n+1))` -/
def P14814582425446877591.Spec : Prop :=
  ∀ n, P14814582425446877591.a n = A138628 (n + 1)

end A138628

/-!
# A138629: Primes of form 17*n+7.

The programs for A138629, the canonical program `A138629.P1510362924462901834` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138629 has offset 1).

The definition of A138629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138629.P1510362924462901834

`∪[A142480(n+1), A142501(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138629

/-- `∪[A142480(n+1), A142501(n+1)]` -/
def P1510362924462901834.Spec : Prop :=
  ∀ n, (P1510362924462901834.a n : ℤ) = A138629 (n + 1)

theorem P1510362924462901834.correct : P1510362924462901834.Spec := by
  intro n
  simp only [A138629, Nat.add_sub_cancel]

end A138629

/-! ## A138629.P10480408564289008607

`p?[17*n+7]`
-/

namespace A138629.P10480408564289008607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138629.P10480408564289008607

namespace A138629

/-- `p?[17*n+7]` -/
def P10480408564289008607.Spec : Prop :=
  ∀ n, (P10480408564289008607.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P3746306560415193623

`or(1, p?[17*n-10])`
-/

namespace A138629.P3746306560415193623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138629.P3746306560415193623

namespace A138629

/-- `or(1, p?[17*n-10])` -/
def P3746306560415193623.Spec : Prop :=
  ∀ n, P3746306560415193623.a n = A138629 (n + 1)

end A138629

/-! ## A138629.P9435534466545541293

`∏{d}[p?[a(n-1)+17], #]` with `a(0)=7`
-/

namespace A138629.P9435534466545541293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A138629.P9435534466545541293

namespace A138629

/-- `∏{d}[p?[a(n-1)+17], #]` -/
def P9435534466545541293.Spec : Prop :=
  ∀ n, (P9435534466545541293.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P736842949495580789

`∩[A038890(n+1), A215208(n+1)]`
-/

namespace A138629.P736842949495580789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P736842949495580789

namespace A138629

/-- `∩[A038890(n+1), A215208(n+1)]` -/
def P736842949495580789.Spec : Prop :=
  ∀ n, (P736842949495580789.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P7270536539086465096

`A154612(A138630(n+1))`
-/

namespace A138629.P7270536539086465096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 (A138630 (n + 1)).toNat

end

end A138629.P7270536539086465096

namespace A138629

/-- `A154612(A138630(n+1))` -/
def P7270536539086465096.Spec : Prop :=
  ∀ n, P7270536539086465096.a n = A138629 (n + 1)

end A138629

/-! ## A138629.P7319400562056413945

`∩[A038890(n+1), A154612(n)]`
-/

namespace A138629.P7319400562056413945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P7319400562056413945

namespace A138629

/-- `∩[A038890(n+1), A154612(n)]` -/
def P7319400562056413945.Spec : Prop :=
  ∀ n, (P7319400562056413945.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P10815978985737033889

`∩[A040140(n+1), A154612(n)]`
-/

namespace A138629.P10815978985737033889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P10815978985737033889

namespace A138629

/-- `∩[A040140(n+1), A154612(n)]` -/
def P10815978985737033889.Spec : Prop :=
  ∀ n, (P10815978985737033889.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P111715723927932424

`∩[A215156(n+1), A154612(n)]`
-/

namespace A138629.P111715723927932424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P111715723927932424

namespace A138629

/-- `∩[A215156(n+1), A154612(n)]` -/
def P111715723927932424.Spec : Prop :=
  ∀ n, (P111715723927932424.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P464751119883221804

`∩[A215161(n+1), A154612(n)]`
-/

namespace A138629.P464751119883221804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P464751119883221804

namespace A138629

/-- `∩[A215161(n+1), A154612(n)]` -/
def P464751119883221804.Spec : Prop :=
  ∀ n, (P464751119883221804.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P10222286917732873761

`∩[A215208(n+1), A154612(n)]`
-/

namespace A138629.P10222286917732873761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P10222286917732873761

namespace A138629

/-- `∩[A215208(n+1), A154612(n)]` -/
def P10222286917732873761.Spec : Prop :=
  ∀ n, (P10222286917732873761.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P11752539247160936079

`∩[A215212(n+1), A154612(n)]`
-/

namespace A138629.P11752539247160936079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P11752539247160936079

namespace A138629

/-- `∩[A215212(n+1), A154612(n)]` -/
def P11752539247160936079.Spec : Prop :=
  ∀ n, (P11752539247160936079.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P9855846958768966863

`∩[A138645(n+1), A154612(n)]`
-/

namespace A138629.P9855846958768966863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P9855846958768966863

namespace A138629

/-- `∩[A138645(n+1), A154612(n)]` -/
def P9855846958768966863.Spec : Prop :=
  ∀ n, (P9855846958768966863.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P16604875902063941979

`∩[A049549(n+1), A154612(n)]`
-/

namespace A138629.P16604875902063941979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P16604875902063941979

namespace A138629

/-- `∩[A049549(n+1), A154612(n)]` -/
def P16604875902063941979.Spec : Prop :=
  ∀ n, (P16604875902063941979.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P6942983558211199047

`∩[A070303(n+1), A154612(n)]`
-/

namespace A138629.P6942983558211199047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P6942983558211199047

namespace A138629

/-- `∩[A070303(n+1), A154612(n)]` -/
def P6942983558211199047.Spec : Prop :=
  ∀ n, (P6942983558211199047.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P2827481180793606961

`∩[A065376(n+1), A154612(n)]`
-/

namespace A138629.P2827481180793606961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P2827481180793606961

namespace A138629

/-- `∩[A065376(n+1), A154612(n)]` -/
def P2827481180793606961.Spec : Prop :=
  ∀ n, (P2827481180793606961.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P2427788894688758502

`∩[A261123(n+1), A154612(n)]`
-/

namespace A138629.P2427788894688758502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P2427788894688758502

namespace A138629

/-- `∩[A261123(n+1), A154612(n)]` -/
def P2427788894688758502.Spec : Prop :=
  ∀ n, (P2427788894688758502.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P15977610194463491638

`∩[A000040(n+1), A154612(n)]`
-/

namespace A138629.P15977610194463491638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P15977610194463491638

namespace A138629

/-- `∩[A000040(n+1), A154612(n)]` -/
def P15977610194463491638.Spec : Prop :=
  ∀ n, (P15977610194463491638.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P4056005378730260777

`∩[A004139(n+1), A154612(n)]`
-/

namespace A138629.P4056005378730260777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P4056005378730260777

namespace A138629

/-- `∩[A004139(n+1), A154612(n)]` -/
def P4056005378730260777.Spec : Prop :=
  ∀ n, (P4056005378730260777.a n : ℤ) = A138629 (n + 1)

end A138629

/-! ## A138629.P6211081551246131580

`∩[A006005(n+1), A154612(n)]`
-/

namespace A138629.P6211081551246131580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P6211081551246131580

namespace A138629

/-- `∩[A006005(n+1), A154612(n)]` -/
def P6211081551246131580.Spec : Prop :=
  ∀ n, (P6211081551246131580.a n : ℤ) = A138629 (n + 1)

end A138629

/-!
# A138630: Nonnegative integers k such that 17*k+7 is prime.

The programs for A138630, the canonical program `A138630.P18334919423305993658` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138630 has offset 1).

The definition of A138630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138630.P18334919423305993658

`floor(A138629(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138630

/-- `floor(A138629(n+1)/17)` -/
def P18334919423305993658.Spec : Prop :=
  ∀ n, P18334919423305993658.a n = A138630 (n + 1)

theorem P18334919423305993658.correct : P18334919423305993658.Spec := by
  intro n
  simp only [A138630, Nat.add_sub_cancel]

end A138630

/-! ## A138630.P10626139109552626084

`floor(p?[a(n-1)+17]/17)` with `a(0)=9, a(1)=7`
-/

namespace A138630.P10626139109552626084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17⌋

end

end A138630.P10626139109552626084

namespace A138630

/-- `floor(p?[a(n-1)+17]/17)` -/
def P10626139109552626084.Spec : Prop :=
  ∀ n, P10626139109552626084.a n = A138630 (n + 1)

end A138630

/-! ## A138630.P6776832429969630324

`eq[1, A001222(17*n+7)]`
-/

namespace A138630.P6776832429969630324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138630.P6776832429969630324

namespace A138630

/-- `eq[1, A001222(17*n+7)]` -/
def P6776832429969630324.Spec : Prop :=
  ∀ n, (P6776832429969630324.a n : ℤ) = A138630 (n + 1)

end A138630

/-! ## A138630.P14277991364210768805

`eq[2, A000005(17*n+7)]`
-/

namespace A138630.P14277991364210768805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138630.P14277991364210768805

namespace A138630

/-- `eq[2, A000005(17*n+7)]` -/
def P14277991364210768805.Spec : Prop :=
  ∀ n, (P14277991364210768805.a n : ℤ) = A138630 (n + 1)

end A138630

/-! ## A138630.P12882439220466796145

`lt[A001222(16*n+n+7), 2]`
-/

namespace A138630.P12882439220466796145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138630.P12882439220466796145

namespace A138630

/-- `lt[A001222(16*n+n+7), 2]` -/
def P12882439220466796145.Spec : Prop :=
  ∀ n, (P12882439220466796145.a n : ℤ) = A138630 (n + 1)

end A138630

/-! ## A138630.P14233566303590717399

`lt[A000005(A016969(2*n)+A016873(n)), 3]`
-/

namespace A138630.P14233566303590717399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 (2 * n) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138630.P14233566303590717399

namespace A138630

/-- `lt[A000005(A016969(2*n)+A016873(n)), 3]` -/
def P14233566303590717399.Spec : Prop :=
  ∀ n, (P14233566303590717399.a n : ℤ) = A138630 (n + 1)

end A138630

/-! ## A138630.P8072475314127452729

`eq[2, A086489(A154612(n)-2)]`
-/

namespace A138630.P8072475314127452729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086489 (A154612 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138630.P8072475314127452729

namespace A138630

/-- `eq[2, A086489(A154612(n)-2)]` -/
def P8072475314127452729.Spec : Prop :=
  ∀ n, (P8072475314127452729.a n : ℤ) = A138630 (n + 1)

end A138630

/-! ## A138630.P10578035182297111356

`record[n%A014963(A154612(n))]`
-/

namespace A138630.P10578035182297111356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (A154612 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138630.P10578035182297111356

namespace A138630

/-- `record[n%A014963(A154612(n))]` -/
def P10578035182297111356.Spec : Prop :=
  ∀ n, P10578035182297111356.a n = A138630 (n + 1)

end A138630

/-! ## A138630.P13303947901304361261

`eq[2, A085099(A215137(n)+2)]`
-/

namespace A138630.P13303947901304361261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A215137 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138630.P13303947901304361261

namespace A138630

/-- `eq[2, A085099(A215137(n)+2)]` -/
def P13303947901304361261.Spec : Prop :=
  ∀ n, (P13303947901304361261.a n : ℤ) = A138630 (n + 1)

end A138630

/-!
# A138631: Primes of the form 17*k + 9.

The programs for A138631, the canonical program `A138631.P2121086656400073767` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138631 has offset 1).

The definition of A138631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138631.P2121086656400073767

`∪[A142492(n+1), A142502(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138631

/-- `∪[A142492(n+1), A142502(n+1)]` -/
def P2121086656400073767.Spec : Prop :=
  ∀ n, (P2121086656400073767.a n : ℤ) = A138631 (n + 1)

theorem P2121086656400073767.correct : P2121086656400073767.Spec := by
  intro n
  simp only [A138631, Nat.add_sub_cancel]

end A138631

/-! ## A138631.P17301006060428804535

`or(1, p?[17*n-8])`
-/

namespace A138631.P17301006060428804535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138631.P17301006060428804535

namespace A138631

/-- `or(1, p?[17*n-8])` -/
def P17301006060428804535.Spec : Prop :=
  ∀ n, P17301006060428804535.a n = A138631 (n + 1)

end A138631

/-! ## A138631.P10275084542043951109

`p?[a(n-1)+17]` with `a(0)=9`
-/

namespace A138631.P10275084542043951109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138631.P10275084542043951109

namespace A138631

/-- `p?[a(n-1)+17]` -/
def P10275084542043951109.Spec : Prop :=
  ∀ n, (P10275084542043951109.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P4795687007919148977

`root(p?[17*n-8], 2)²`
-/

namespace A138631.P4795687007919148977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A138631.P4795687007919148977

namespace A138631

/-- `root(p?[17*n-8], 2)²` -/
def P4795687007919148977.Spec : Prop :=
  ∀ n, P4795687007919148977.a n = (A138631 (n + 1) : ℝ)

end A138631

/-! ## A138631.P11680248684059780782

`p?[3*(6*n+3)-n]`
-/

namespace A138631.P11680248684059780782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (6 * n + 3) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138631.P11680248684059780782

namespace A138631

/-- `p?[3*(6*n+3)-n]` -/
def P11680248684059780782.Spec : Prop :=
  ∀ n, P11680248684059780782.a n = A138631 (n + 1)

end A138631

/-! ## A138631.P9360785943851400885

`p?[17*n-8]%p?[17*n-8]²`
-/

namespace A138631.P9360785943851400885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2)

end

end A138631.P9360785943851400885

namespace A138631

/-- `p?[17*n-8]%p?[17*n-8]²` -/
def P9360785943851400885.Spec : Prop :=
  ∀ n, P9360785943851400885.a n = A138631 (n + 1)

end A138631

/-! ## A138631.P3530375621970401454

`∩[A049549(n+1), A154612(n)+2]`
-/

namespace A138631.P3530375621970401454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P3530375621970401454

namespace A138631

/-- `∩[A049549(n+1), A154612(n)+2]` -/
def P3530375621970401454.Spec : Prop :=
  ∀ n, (P3530375621970401454.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P6699450271748957564

`∩[A065376(n+1), A154612(n)+2]`
-/

namespace A138631.P6699450271748957564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P6699450271748957564

namespace A138631

/-- `∩[A065376(n+1), A154612(n)+2]` -/
def P6699450271748957564.Spec : Prop :=
  ∀ n, (P6699450271748957564.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P3936926290368057451

`∩[A000040(n+1), A154612(n)+2]`
-/

namespace A138631.P3936926290368057451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P3936926290368057451

namespace A138631

/-- `∩[A000040(n+1), A154612(n)+2]` -/
def P3936926290368057451.Spec : Prop :=
  ∀ n, (P3936926290368057451.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P18039870543883364812

`∩[A004139(n+1), A154612(n)+2]`
-/

namespace A138631.P18039870543883364812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P18039870543883364812

namespace A138631

/-- `∩[A004139(n+1), A154612(n)+2]` -/
def P18039870543883364812.Spec : Prop :=
  ∀ n, (P18039870543883364812.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P15356130339229709321

`∩[A006005(n+1), A154612(n)+2]`
-/

namespace A138631.P15356130339229709321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P15356130339229709321

namespace A138631

/-- `∩[A006005(n+1), A154612(n)+2]` -/
def P15356130339229709321.Spec : Prop :=
  ∀ n, (P15356130339229709321.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P9805211153448577317

`∩[A008578(n+1), A154612(n)+2]`
-/

namespace A138631.P9805211153448577317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P9805211153448577317

namespace A138631

/-- `∩[A008578(n+1), A154612(n)+2]` -/
def P9805211153448577317.Spec : Prop :=
  ∀ n, (P9805211153448577317.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P4195455290782012063

`record[A020639(Δ[A022275(n+2)])]`
-/

namespace A138631.P4195455290782012063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138631.P4195455290782012063

namespace A138631

/-- `record[A020639(Δ[A022275(n+2)])]` -/
def P4195455290782012063.Spec : Prop :=
  ∀ n, P4195455290782012063.a n = A138631 (n + 1)

end A138631

/-! ## A138631.P3248276097973617712

`∩[A004768(2*n)+n, A000040(n+2)]`
-/

namespace A138631.P3248276097973617712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P3248276097973617712

namespace A138631

/-- `∩[A004768(2*n)+n, A000040(n+2)]` -/
def P3248276097973617712.Spec : Prop :=
  ∀ n, (P3248276097973617712.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P1577306765642145242

`∩[A017077(2*n+1)+n, A000040(n+2)]`
-/

namespace A138631.P1577306765642145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P1577306765642145242

namespace A138631

/-- `∩[A017077(2*n+1)+n, A000040(n+2)]` -/
def P1577306765642145242.Spec : Prop :=
  ∀ n, (P1577306765642145242.a n : ℤ) = A138631 (n + 1)

end A138631

/-! ## A138631.P11995856935034771274

`record[A006530(Δ[A282853(2*(n+1))])]`
-/

namespace A138631.P11995856935034771274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282853 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138631.P11995856935034771274

namespace A138631

/-- `record[A006530(Δ[A282853(2*(n+1))])]` -/
def P11995856935034771274.Spec : Prop :=
  ∀ n, P11995856935034771274.a n = A138631 (n + 1)

end A138631

/-!
# A138632: Nonnegative integers k such that 17*k+9 is prime.

The programs for A138632, the canonical program `A138632.P18181026254445876438` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138632 has offset 1).

The definition of A138632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138632.P18181026254445876438

`floor(A138631(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138632

/-- `floor(A138631(n+1)/17)` -/
def P18181026254445876438.Spec : Prop :=
  ∀ n, P18181026254445876438.a n = A138632 (n + 1)

theorem P18181026254445876438.correct : P18181026254445876438.Spec := by
  intro n
  simp only [A138632, Nat.add_sub_cancel]

end A138632

/-! ## A138632.P7963742967570256240

`floor(p?[a(n-1)+17]/17)` with `a(0)=9`
-/

namespace A138632.P7963742967570256240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17⌋

end

end A138632.P7963742967570256240

namespace A138632

/-- `floor(p?[a(n-1)+17]/17)` -/
def P7963742967570256240.Spec : Prop :=
  ∀ n, P7963742967570256240.a n = A138632 (n + 1)

end A138632

/-! ## A138632.P2301540838594769059

`eq[1, A001222(17*n+9)]`
-/

namespace A138632.P2301540838594769059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138632.P2301540838594769059

namespace A138632

/-- `eq[1, A001222(17*n+9)]` -/
def P2301540838594769059.Spec : Prop :=
  ∀ n, (P2301540838594769059.a n : ℤ) = A138632 (n + 1)

end A138632

/-! ## A138632.P10582553148079870206

`eq[2, A000005(17*n+9)]`
-/

namespace A138632.P10582553148079870206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138632.P10582553148079870206

namespace A138632

/-- `eq[2, A000005(17*n+9)]` -/
def P10582553148079870206.Spec : Prop :=
  ∀ n, (P10582553148079870206.a n : ℤ) = A138632 (n + 1)

end A138632

/-! ## A138632.P914010826754996820

`lt[A000005(8*n+9*(n+1)), 3]`
-/

namespace A138632.P914010826754996820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138632.P914010826754996820

namespace A138632

/-- `lt[A000005(8*n+9*(n+1)), 3]` -/
def P914010826754996820.Spec : Prop :=
  ∀ n, (P914010826754996820.a n : ℤ) = A138632 (n + 1)

end A138632

/-! ## A138632.P10852783532694660501

`ceil(A138631(n+1)/17-A309873(A001399(n))²)`
-/

namespace A138632.P10852783532694660501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138631 (n + 1) : ℚ) / 17 - (A309873 (A001399 n).toNat ^ 2 : ℚ)⌉

end

end A138632.P10852783532694660501

namespace A138632

/-- `ceil(A138631(n+1)/17-A309873(A001399(n))²)` -/
def P10852783532694660501.Spec : Prop :=
  ∀ n, P10852783532694660501.a n = A138632 (n + 1)

end A138632

/-! ## A138632.P4575326370248241280

`lt[A305809(17*(2*n+1)+1), 3]`
-/

namespace A138632.P4575326370248241280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (17 * (2 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138632.P4575326370248241280

namespace A138632

/-- `lt[A305809(17*(2*n+1)+1), 3]` -/
def P4575326370248241280.Spec : Prop :=
  ∀ n, (P4575326370248241280.a n : ℤ) = A138632 (n + 1)

end A138632

/-! ## A138632.P13546442443703094422

`eq[2, A086489(A154612(n))]`
-/

namespace A138632.P13546442443703094422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086489 (A154612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138632.P13546442443703094422

namespace A138632

/-- `eq[2, A086489(A154612(n))]` -/
def P13546442443703094422.Spec : Prop :=
  ∀ n, (P13546442443703094422.a n : ℤ) = A138632 (n + 1)

end A138632

/-!
# A138633: Primes of the form 17*k - 9.

The programs for A138633, the canonical program `A138633.P16398703878555134908` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138633 has offset 1).

The definition of A138633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138633.P16398703878555134908

`∪[A142481(n+1), A142491(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138633

/-- `∪[A142481(n+1), A142491(n+1)]` -/
def P16398703878555134908.Spec : Prop :=
  ∀ n, (P16398703878555134908.a n : ℤ) = A138633 (n + 1)

theorem P16398703878555134908.correct : P16398703878555134908.Spec := by
  intro n
  simp only [A138633, Nat.add_sub_cancel]

end A138633

/-! ## A138633.P5564129985446677011

`p?[17*n+8]`
-/

namespace A138633.P5564129985446677011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138633.P5564129985446677011

namespace A138633

/-- `p?[17*n+8]` -/
def P5564129985446677011.Spec : Prop :=
  ∀ n, (P5564129985446677011.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P10608891574784423457

`∩[A049549(n+1), A154612(n)+1]`
-/

namespace A138633.P10608891574784423457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P10608891574784423457

namespace A138633

/-- `∩[A049549(n+1), A154612(n)+1]` -/
def P10608891574784423457.Spec : Prop :=
  ∀ n, (P10608891574784423457.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P11676185000774342392

`∩[A070303(n+1), A154612(n)+1]`
-/

namespace A138633.P11676185000774342392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P11676185000774342392

namespace A138633

/-- `∩[A070303(n+1), A154612(n)+1]` -/
def P11676185000774342392.Spec : Prop :=
  ∀ n, (P11676185000774342392.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P240642854707777271

`∩[A000040(n+1), A154612(n)+1]`
-/

namespace A138633.P240642854707777271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P240642854707777271

namespace A138633

/-- `∩[A000040(n+1), A154612(n)+1]` -/
def P240642854707777271.Spec : Prop :=
  ∀ n, (P240642854707777271.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P10047305780416679530

`∩[A004139(n+1), A154612(n)+1]`
-/

namespace A138633.P10047305780416679530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P10047305780416679530

namespace A138633

/-- `∩[A004139(n+1), A154612(n)+1]` -/
def P10047305780416679530.Spec : Prop :=
  ∀ n, (P10047305780416679530.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P7427777173411711125

`∩[A006005(n+1), A154612(n)+1]`
-/

namespace A138633.P7427777173411711125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P7427777173411711125

namespace A138633

/-- `∩[A006005(n+1), A154612(n)+1]` -/
def P7427777173411711125.Spec : Prop :=
  ∀ n, (P7427777173411711125.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P8861792836537394576

`∩[A008578(n+1), A154612(n)+1]`
-/

namespace A138633.P8861792836537394576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P8861792836537394576

namespace A138633

/-- `∩[A008578(n+1), A154612(n)+1]` -/
def P8861792836537394576.Spec : Prop :=
  ∀ n, (P8861792836537394576.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P757213646868379087

`∩[A033946(n+1), A154612(n)+1]`
-/

namespace A138633.P757213646868379087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P757213646868379087

namespace A138633

/-- `∩[A033946(n+1), A154612(n)+1]` -/
def P757213646868379087.Spec : Prop :=
  ∀ n, (P757213646868379087.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P2583790550524849089

`∩[A067126(n+1), A154612(n)+1]`
-/

namespace A138633.P2583790550524849089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P2583790550524849089

namespace A138633

/-- `∩[A067126(n+1), A154612(n)+1]` -/
def P2583790550524849089.Spec : Prop :=
  ∀ n, (P2583790550524849089.a n : ℤ) = A138633 (n + 1)

end A138633

/-! ## A138633.P2184219343979192387

`record[A020639(17*(n+1)+42)]`
-/

namespace A138633.P2184219343979192387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * (n + 1) + 42)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138633.P2184219343979192387

namespace A138633

/-- `record[A020639(17*(n+1)+42)]` -/
def P2184219343979192387.Spec : Prop :=
  ∀ n, P2184219343979192387.a n = A138633 (n + 1)

end A138633

/-! ## A138633.P11158476939052488126

`record[A006530(5*A017041(n+1)-(n+1))]`
-/

namespace A138633.P11158476939052488126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A017041 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138633.P11158476939052488126

namespace A138633

/-- `record[A006530(5*A017041(n+1)-(n+1))]` -/
def P11158476939052488126.Spec : Prop :=
  ∀ n, P11158476939052488126.a n = A138633 (n + 1)

end A138633

/-! ## A138633.P18015897780477390638

`A007947(p?[A022274(n+1)-A022274(n)])`
-/

namespace A138633.P18015897780477390638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 (n + 1) - A022274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138633.P18015897780477390638

namespace A138633

/-- `A007947(p?[A022274(n+1)-A022274(n)])` -/
def P18015897780477390638.Spec : Prop :=
  ∀ n, P18015897780477390638.a n = A138633 (n + 1)

end A138633

/-! ## A138633.P16703917228681070746

`A007947(p?[A004771(n+n)+n+1])`
-/

namespace A138633.P16703917228681070746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138633.P16703917228681070746

namespace A138633

/-- `A007947(p?[A004771(n+n)+n+1])` -/
def P16703917228681070746.Spec : Prop :=
  ∀ n, P16703917228681070746.a n = A138633 (n + 1)

end A138633

/-! ## A138633.P5787058349977530420

`A055653(p?[A154612(n)+1])`
-/

namespace A138633.P5787058349977530420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138633.P5787058349977530420

namespace A138633

/-- `A055653(p?[A154612(n)+1])` -/
def P5787058349977530420.Spec : Prop :=
  ∀ n, P5787058349977530420.a n = A138633 (n + 1)

end A138633

/-! ## A138633.P10018746826798522480

`A055653(p?[xor(1, A154612(n))])`
-/

namespace A138633.P10018746826798522480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A154612 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138633.P10018746826798522480

namespace A138633

/-- `A055653(p?[xor(1, A154612(n))])` -/
def P10018746826798522480.Spec : Prop :=
  ∀ n, P10018746826798522480.a n = A138633 (n + 1)

end A138633

/-!
# A138634: Nonnegative integers k such that 17*k-9 is prime.

The programs for A138634, the canonical program `A138634.P7859391578108386486` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138634 has offset 1).

The definition of A138634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138634.P7859391578108386486

`ceil(A138633(n+1)/17)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138634

/-- `ceil(A138633(n+1)/17)` -/
def P7859391578108386486.Spec : Prop :=
  ∀ n, P7859391578108386486.a n = A138634 (n + 1)

theorem P7859391578108386486.correct : P7859391578108386486.Spec := by
  intro n
  simp only [A138634, Nat.add_sub_cancel]

end A138634

/-! ## A138634.P7247759452666279938

`floor(A057427(n+1)+A138633(n+1)/17)`
-/

namespace A138634.P7247759452666279938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (n + 1) : ℚ) + (A138633 (n + 1) : ℚ) / 17⌋

end

end A138634.P7247759452666279938

namespace A138634

/-- `floor(A057427(n+1)+A138633(n+1)/17)` -/
def P7247759452666279938.Spec : Prop :=
  ∀ n, P7247759452666279938.a n = A138634 (n + 1)

end A138634

/-! ## A138634.P191820049514995944

`floor(A138633(n+1)/17-(n-A008619(A005843(n))))`
-/

namespace A138634.P191820049514995944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138633 (n + 1) : ℚ) / 17 - ((n : ℤ) - A008619 (A005843 n).toNat : ℚ)⌋

end

end A138634.P191820049514995944

namespace A138634

/-- `floor(A138633(n+1)/17-(n-A008619(A005843(n))))` -/
def P191820049514995944.Spec : Prop :=
  ∀ n, P191820049514995944.a n = A138634 (n + 1)

end A138634

/-! ## A138634.P7414082784679511800

`floor(p?[a(n-1)+17]/17)+1` with `a(0)=9, a(1)=8`
-/

namespace A138634.P7414082784679511800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 8] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17⌋ + 1

end

end A138634.P7414082784679511800

namespace A138634

/-- `floor(p?[a(n-1)+17]/17)+1` -/
def P7414082784679511800.Spec : Prop :=
  ∀ n, P7414082784679511800.a n = A138634 (n + 1)

end A138634

/-! ## A138634.P2844477716630568795

`round(A138633(n+1)/17-A008683(A062584(n)))`
-/

namespace A138634.P2844477716630568795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138633 (n + 1) : ℚ) / 17 - (A008683 (A062584 n).toNat : ℚ))

end

end A138634.P2844477716630568795

namespace A138634

/-- `round(A138633(n+1)/17-A008683(A062584(n)))` -/
def P2844477716630568795.Spec : Prop :=
  ∀ n, P2844477716630568795.a n = A138634 (n + 1)

end A138634

/-! ## A138634.P7284185415408347631

`lt[A001222(12*lt[n, A283443(n)]+2-n), 2]+1`
-/

namespace A138634.P7284185415408347631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2 - n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A138634.P7284185415408347631

namespace A138634

/-- `lt[A001222(12*lt[n, A283443(n)]+2-n), 2]+1` -/
def P7284185415408347631.Spec : Prop :=
  ∀ n, (P7284185415408347631.a n : ℤ) = A138634 (n + 1)

end A138634

/-! ## A138634.P10994206943319539525

`eq[1, A001222(A130824(A130824(n))+1+n)]`
-/

namespace A138634.P10994206943319539525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130824 (A130824 n).toNat + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138634.P10994206943319539525

namespace A138634

/-- `eq[1, A001222(A130824(A130824(n))+1+n)]` -/
def P10994206943319539525.Spec : Prop :=
  ∀ n, (P10994206943319539525.a n : ℤ) = A138634 (n + 1)

end A138634

/-! ## A138634.P5765864107045211275

`eq[8, A000005(A018839(2*n))]`
-/

namespace A138634.P5765864107045211275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018839 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138634.P5765864107045211275

namespace A138634

/-- `eq[8, A000005(A018839(2*n))]` -/
def P5765864107045211275.Spec : Prop :=
  ∀ n, (P5765864107045211275.a n : ℤ) = A138634 (n + 1)

end A138634

/-!
# A138635: a(n) =3*a(n-3)-3*a(n-6)+2*a(n-9).

The programs for A138635, the canonical program `A138635.P15297172901983410713` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138635 has offset 0).

The definition of A138635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)-3*a(n-6)+2*a(n-9)` (program `A138635.P15297172901983410713`, by `A138635.P15297172901983410713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138635.P15297172901983410713

`3*a(n-3)-3*a(n-6)+2*a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138635

/-- `3*a(n-3)-3*a(n-6)+2*a(n-9)` -/
def P15297172901983410713.Spec : Prop :=
  ∀ n, P15297172901983410713.a n = A138635 n

theorem P15297172901983410713.correct : P15297172901983410713.Spec := by
  intro n
  simp only [A138635]

end A138635

/-! ## A138635.P8359252536808594480

`A024494(A047290(n+2))%(A052953(n+1)-1)`
-/

namespace A138635.P8359252536808594480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024494 (A047290 (n + 2)).toNat) (A052953 (n + 1) - 1)

end

end A138635.P8359252536808594480

namespace A138635

/-- `A024494(A047290(n+2))%(A052953(n+1)-1)` -/
def P8359252536808594480.Spec : Prop :=
  ∀ n, P8359252536808594480.a n = A138635 n

end A138635

/-! ## A138635.P9013452486926609236

`A004396(A158745(n))-A173862(n+1)`
-/

namespace A138635.P9013452486926609236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A158745 n).toNat - A173862 (n + 1)

end

end A138635.P9013452486926609236

namespace A138635

/-- `A004396(A158745(n))-A173862(n+1)` -/
def P9013452486926609236.Spec : Prop :=
  ∀ n, P9013452486926609236.a n = A138635 n

end A138635

/-! ## A138635.P10375484174975293136

`A376645(3^A376647(2*(n+1)))`
-/

namespace A138635.P10375484174975293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376645 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A376647 (2 * (n + 1)) : ℤ))).toNat

end

end A138635.P10375484174975293136

namespace A138635

/-- `A376645(3^A376647(2*(n+1)))` -/
def P10375484174975293136.Spec : Prop :=
  ∀ n, P10375484174975293136.a n = A138635 n

end A138635

/-! ## A138635.P2919795155146604343

`A376647(2*n+2)*A376663(A011782(n))`
-/

namespace A138635.P2919795155146604343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376647 (2 * n + 2) * A376663 (A011782 n).toNat

end

end A138635.P2919795155146604343

namespace A138635

/-- `A376647(2*n+2)*A376663(A011782(n))` -/
def P2919795155146604343.Spec : Prop :=
  ∀ n, P2919795155146604343.a n = A138635 n

end A138635

/-!
# A138636: a(n) = 6 * prime(n).

The programs for A138636, the canonical program `A138636.P3084393635927371621` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138636 has offset 1).

The definition of A138636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138636.P3084393635927371621

`6*p?[round(8*n/7)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138636

/-- `6*p?[round(8*n/7)]` -/
def P3084393635927371621.Spec : Prop :=
  ∀ n, P3084393635927371621.a n = A138636 (n + 1)

theorem P3084393635927371621.correct : P3084393635927371621.Spec := by
  intro n
  simp only [A138636, Nat.add_sub_cancel]

end A138636

/-! ## A138636.P9543494831762500781

`Δ[6*A007504(n)]`
-/

namespace A138636.P9543494831762500781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138636.P9543494831762500781

namespace A138636

/-- `Δ[6*A007504(n)]` -/
def P9543494831762500781.Spec : Prop :=
  ∀ n, P9543494831762500781.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P9596881149752733904

`A330410(n+1)+1`
-/

namespace A138636.P9596881149752733904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1) + 1

end

end A138636.P9596881149752733904

namespace A138636

/-- `A330410(n+1)+1` -/
def P9596881149752733904.Spec : Prop :=
  ∀ n, P9596881149752733904.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P3137808155073044748

`2*A001748(n+1)`
-/

namespace A138636.P3137808155073044748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1)

end

end A138636.P3137808155073044748

namespace A138636

/-- `2*A001748(n+1)` -/
def P3137808155073044748.Spec : Prop :=
  ∀ n, P3137808155073044748.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P13393284544244832418

`3*A100484(n+1)`
-/

namespace A138636.P13393284544244832418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A100484 (n + 1)

end

end A138636.P13393284544244832418

namespace A138636

/-- `3*A100484(n+1)` -/
def P13393284544244832418.Spec : Prop :=
  ∀ n, P13393284544244832418.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P18275506092715506513

`6*A000040(n+1)`
-/

namespace A138636.P18275506092715506513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1)

end

end A138636.P18275506092715506513

namespace A138636

/-- `6*A000040(n+1)` -/
def P18275506092715506513.Spec : Prop :=
  ∀ n, P18275506092715506513.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P15417604304241428878

`A129071(n+1)-7`
-/

namespace A138636.P15417604304241428878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) - 7

end

end A138636.P15417604304241428878

namespace A138636

/-- `A129071(n+1)-7` -/
def P15417604304241428878.Spec : Prop :=
  ∀ n, P15417604304241428878.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P17042995978635131506

`3*sqrt(A069262(n+1))`
-/

namespace A138636.P17042995978635131506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A069262 (n + 1) : ℝ)

end

end A138636.P17042995978635131506

namespace A138636

/-- `3*sqrt(A069262(n+1))` -/
def P17042995978635131506.Spec : Prop :=
  ∀ n, P17042995978635131506.a n = (A138636 (n + 1) : ℝ)

end A138636

/-! ## A138636.P15478411675251632814

`3*(A037168(n+1)+2)`
-/

namespace A138636.P15478411675251632814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A037168 (n + 1) + 2)

end

end A138636.P15478411675251632814

namespace A138636

/-- `3*(A037168(n+1)+2)` -/
def P15478411675251632814.Spec : Prop :=
  ∀ n, P15478411675251632814.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P649515361206162762

`3*(A072055(n+1)-1)`
-/

namespace A138636.P649515361206162762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A072055 (n + 1) - 1)

end

end A138636.P649515361206162762

namespace A138636

/-- `3*(A072055(n+1)-1)` -/
def P649515361206162762.Spec : Prop :=
  ∀ n, P649515361206162762.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P4582922597397614146

`3*(A089241(n+1)-2)`
-/

namespace A138636.P4582922597397614146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089241 (n + 1) - 2)

end

end A138636.P4582922597397614146

namespace A138636

/-- `3*(A089241(n+1)-2)` -/
def P4582922597397614146.Spec : Prop :=
  ∀ n, P4582922597397614146.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P8691321023798411313

`3*(A131426(n+1)+3)`
-/

namespace A138636.P8691321023798411313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A131426 (n + 1) + 3)

end

end A138636.P8691321023798411313

namespace A138636

/-- `3*(A131426(n+1)+3)` -/
def P8691321023798411313.Spec : Prop :=
  ∀ n, P8691321023798411313.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P16985835590111330515

`3/2*A001749(n+1)`
-/

namespace A138636.P16985835590111330515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A001749 (n + 1) : ℚ)

end

end A138636.P16985835590111330515

namespace A138636

/-- `3/2*A001749(n+1)` -/
def P16985835590111330515.Spec : Prop :=
  ∀ n, P16985835590111330515.a n = (A138636 (n + 1) : ℚ)

end A138636

/-! ## A138636.P14429430550931699626

`3*(2*A040976(n+1)+3)+3`
-/

namespace A138636.P14429430550931699626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A040976 (n + 1) + 3) + 3

end

end A138636.P14429430550931699626

namespace A138636

/-- `3*(2*A040976(n+1)+3)+3` -/
def P14429430550931699626.Spec : Prop :=
  ∀ n, P14429430550931699626.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P12985691819829682922

`2*3*A000040(2*n-(n-1))`
-/

namespace A138636.P12985691819829682922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A138636.P12985691819829682922

namespace A138636

/-- `2*3*A000040(2*n-(n-1))` -/
def P12985691819829682922.Spec : Prop :=
  ∀ n, P12985691819829682922.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P18483606822278904

`A010693(n)*A107620(n+1)`
-/

namespace A138636.P18483606822278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A107620 (n + 1)

end

end A138636.P18483606822278904

namespace A138636

/-- `A010693(n)*A107620(n+1)` -/
def P18483606822278904.Spec : Prop :=
  ∀ n, P18483606822278904.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P16802728680547171269

`A107621(n+1)*A176059(n)`
-/

namespace A138636.P16802728680547171269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107621 (n + 1) * A176059 n

end

end A138636.P16802728680547171269

namespace A138636

/-- `A107621(n+1)*A176059(n)` -/
def P16802728680547171269.Spec : Prop :=
  ∀ n, P16802728680547171269.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P12245014531947692043

`lcm(A010704(n), A107621(n+1))`
-/

namespace A138636.P12245014531947692043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010704 n) (A107621 (n + 1))

end

end A138636.P12245014531947692043

namespace A138636

/-- `lcm(A010704(n), A107621(n+1))` -/
def P12245014531947692043.Spec : Prop :=
  ∀ n, (P12245014531947692043.a n : ℤ) = A138636 (n + 1)

end A138636

/-! ## A138636.P13182054823612675530

`A001750(n+1)+A000040(n+1)`
-/

namespace A138636.P13182054823612675530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + A000040 (n + 1)

end

end A138636.P13182054823612675530

namespace A138636

/-- `A001750(n+1)+A000040(n+1)` -/
def P13182054823612675530.Spec : Prop :=
  ∀ n, P13182054823612675530.a n = A138636 (n + 1)

end A138636

/-! ## A138636.P2558254669704947342

`A100484(n+1)+A001749(n+1)`
-/

namespace A138636.P2558254669704947342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A001749 (n + 1)

end

end A138636.P2558254669704947342

namespace A138636

/-- `A100484(n+1)+A001749(n+1)` -/
def P2558254669704947342.Spec : Prop :=
  ∀ n, P2558254669704947342.a n = A138636 (n + 1)

end A138636

/-!
# A138637: Products of prime quadruples.

The programs for A138637, there is no canonical definition to state claims against.
-/

/-! ## A138637.P16648603558361527126

`(A056777(n+1)+12)*A056777(n+1)`
-/

namespace A138637.P16648603558361527126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056777 (n + 1) + 12) * A056777 (n + 1)

end

end A138637.P16648603558361527126

/-! ## A138637.P15337421793192793202

`A046302(A064026(n+2))`
-/

namespace A138637.P15337421793192793202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046302 (A064026 (n + 2)).toNat

end

end A138637.P15337421793192793202

/-!
# A138638: Primes of form 19*n-1.

The programs for A138638, the canonical program `A138638.P12754287615835535040` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138638 has offset 1).

The definition of A138638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138638.P12754287615835535040

`∪[A142688(n+1), A142700(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138638

/-- `∪[A142688(n+1), A142700(n+1)]` -/
def P12754287615835535040.Spec : Prop :=
  ∀ n, (P12754287615835535040.a n : ℤ) = A138638 (n + 1)

theorem P12754287615835535040.correct : P12754287615835535040.Spec := by
  intro n
  simp only [A138638, Nat.add_sub_cancel]

end A138638

/-! ## A138638.P8941716964127137519

`p?[19*n-1]`
-/

namespace A138638.P8941716964127137519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138638.P8941716964127137519

namespace A138638

/-- `p?[19*n-1]` -/
def P8941716964127137519.Spec : Prop :=
  ∀ n, P8941716964127137519.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P7309223423581186296

`or(1, p?[37*(n+1)+n])`
-/

namespace A138638.P7309223423581186296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138638.P7309223423581186296

namespace A138638

/-- `or(1, p?[37*(n+1)+n])` -/
def P7309223423581186296.Spec : Prop :=
  ∀ n, (P7309223423581186296.a n : ℤ) = A138638 (n + 1)

end A138638

/-! ## A138638.P8845410363267464964

`record[A020639(19*(n+1)+18)]`
-/

namespace A138638.P8845410363267464964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * (n + 1) + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138638.P8845410363267464964

namespace A138638

/-- `record[A020639(19*(n+1)+18)]` -/
def P8845410363267464964.Spec : Prop :=
  ∀ n, P8845410363267464964.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P2248557886493502408

`record[A006530(38*(n+1)-1)]`
-/

namespace A138638.P2248557886493502408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (38 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138638.P2248557886493502408

namespace A138638

/-- `record[A006530(38*(n+1)-1)]` -/
def P2248557886493502408.Spec : Prop :=
  ∀ n, P2248557886493502408.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P10356614284519354257

`filter[A113541(2*(n+1)), A010051(#)]`
-/

namespace A138638.P10356614284519354257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138638.P10356614284519354257

namespace A138638

/-- `filter[A113541(2*(n+1)), A010051(#)]` -/
def P10356614284519354257.Spec : Prop :=
  ∀ n, P10356614284519354257.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P1666099069172915438

`filter[A113541(2*(n+1)), A355937(#)]`
-/

namespace A138638.P1666099069172915438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A138638.P1666099069172915438

namespace A138638

/-- `filter[A113541(2*(n+1)), A355937(#)]` -/
def P1666099069172915438.Spec : Prop :=
  ∀ n, P1666099069172915438.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P12696709945765703475

`∩[A113541(n+1), A191063(n+1)]`
-/

namespace A138638.P12696709945765703475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138638.P12696709945765703475

namespace A138638

/-- `∩[A113541(n+1), A191063(n+1)]` -/
def P12696709945765703475.Spec : Prop :=
  ∀ n, (P12696709945765703475.a n : ℤ) = A138638 (n + 1)

end A138638

/-! ## A138638.P14199605880014328567

`filter[A113541(2*(n+1)), A302777(#)]`
-/

namespace A138638.P14199605880014328567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A138638.P14199605880014328567

namespace A138638

/-- `filter[A113541(2*(n+1)), A302777(#)]` -/
def P14199605880014328567.Spec : Prop :=
  ∀ n, P14199605880014328567.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P5524504776658728763

`filter[A113541(2*(n+1)), A323152(#)]`
-/

namespace A138638.P5524504776658728763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A138638.P5524504776658728763

namespace A138638

/-- `filter[A113541(2*(n+1)), A323152(#)]` -/
def P5524504776658728763.Spec : Prop :=
  ∀ n, P5524504776658728763.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P4581762933837620421

`filter[A113541(2*(n+1)), A323153(#)]`
-/

namespace A138638.P4581762933837620421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A138638.P4581762933837620421

namespace A138638

/-- `filter[A113541(2*(n+1)), A323153(#)]` -/
def P4581762933837620421.Spec : Prop :=
  ∀ n, P4581762933837620421.a n = A138638 (n + 1)

end A138638

/-! ## A138638.P8536344656588430336

`filter[A113541(2*(n+1)), A174275(#)]`
-/

namespace A138638.P8536344656588430336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A138638.P8536344656588430336

namespace A138638

/-- `filter[A113541(2*(n+1)), A174275(#)]` -/
def P8536344656588430336.Spec : Prop :=
  ∀ n, P8536344656588430336.a n = A138638 (n + 1)

end A138638

/-!
# A138639: Nonnegative integers n such that 19*n-1 is prime.

The programs for A138639, the canonical program `A138639.P4190226665619492302` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138639 has offset 1).

The definition of A138639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138639.P4190226665619492302

`ceil(A138638(n+1)/19)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138639

/-- `ceil(A138638(n+1)/19)` -/
def P4190226665619492302.Spec : Prop :=
  ∀ n, P4190226665619492302.a n = A138639 (n + 1)

theorem P4190226665619492302.correct : P4190226665619492302.Spec := by
  intro n
  simp only [A138639, Nat.add_sub_cancel]

end A138639

/-! ## A138639.P16705508411202145374

`ceil(p?[19*n-1]/19)`
-/

namespace A138639.P16705508411202145374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 19⌉

end

end A138639.P16705508411202145374

namespace A138639

/-- `ceil(p?[19*n-1]/19)` -/
def P16705508411202145374.Spec : Prop :=
  ∀ n, P16705508411202145374.a n = A138639 (n + 1)

end A138639

/-! ## A138639.P1105653613990288874

`round(A138638(n+1)/19)%p?[A016921(n)]`
-/

namespace A138639.P1105653613990288874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138638 (n + 1) : ℚ) / 19)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138639.P1105653613990288874

namespace A138639

/-- `round(A138638(n+1)/19)%p?[A016921(n)]` -/
def P1105653613990288874.Spec : Prop :=
  ∀ n, P1105653613990288874.a n = A138639 (n + 1)

end A138639

/-! ## A138639.P1515682736498537825

`record[round(A138638(A077610(n+1))/19)]`
-/

namespace A138639.P1515682736498537825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138638 (A077610 (n + 1)).toNat : ℚ) / 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138639.P1515682736498537825

namespace A138639

/-- `record[round(A138638(A077610(n+1))/19)]` -/
def P1515682736498537825.Spec : Prop :=
  ∀ n, P1515682736498537825.a n = A138639 (n + 1)

end A138639

/-! ## A138639.P10479338262340884726

`A014681(floor(A138638(n+1)/19))`
-/

namespace A138639.P10479338262340884726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ⌊(A138638 (n + 1) : ℚ) / 19⌋.toNat

end

end A138639.P10479338262340884726

namespace A138639

/-- `A014681(floor(A138638(n+1)/19))` -/
def P10479338262340884726.Spec : Prop :=
  ∀ n, P10479338262340884726.a n = A138639 (n + 1)

end A138639

/-! ## A138639.P157910795814069091

`eq[1, A001222(abs(n+1-20*n))]`
-/

namespace A138639.P157910795814069091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(n + 1 : ℤ) - (20 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138639.P157910795814069091

namespace A138639

/-- `eq[1, A001222(abs(n+1-20*n))]` -/
def P157910795814069091.Spec : Prop :=
  ∀ n, (P157910795814069091.a n : ℤ) = A138639 (n + 1)

end A138639

/-! ## A138639.P1442215457614477491

`lt[A001222(18*(n+1)+n), 2]+1`
-/

namespace A138639.P1442215457614477491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (18 * (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138639.P1442215457614477491

namespace A138639

/-- `lt[A001222(18*(n+1)+n), 2]+1` -/
def P1442215457614477491.Spec : Prop :=
  ∀ n, (P1442215457614477491.a n : ℤ) = A138639 (n + 1)

end A138639

/-! ## A138639.P17280699412670150253

`lt[A000005(18*(n+1)+n)², 14]+1`
-/

namespace A138639.P17280699412670150253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (18 * (n + 1) + n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138639.P17280699412670150253

namespace A138639

/-- `lt[A000005(18*(n+1)+n)², 14]+1` -/
def P17280699412670150253.Spec : Prop :=
  ∀ n, (P17280699412670150253.a n : ℤ) = A138639 (n + 1)

end A138639

/-! ## A138639.P5985875746972282427

`floor(A138638(n+1)/19-A008683(A006489(n+1)))`
-/

namespace A138639.P5985875746972282427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138638 (n + 1) : ℚ) / 19 - (A008683 (A006489 (n + 1)).toNat : ℚ)⌋

end

end A138639.P5985875746972282427

namespace A138639

/-- `floor(A138638(n+1)/19-A008683(A006489(n+1)))` -/
def P5985875746972282427.Spec : Prop :=
  ∀ n, P5985875746972282427.a n = A138639 (n + 1)

end A138639

/-! ## A138639.P17322791937570370624

`eq[A059841(n), A175078(A215144(n))]`
-/

namespace A138639.P17322791937570370624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A215144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138639.P17322791937570370624

namespace A138639

/-- `eq[A059841(n), A175078(A215144(n))]` -/
def P17322791937570370624.Spec : Prop :=
  ∀ n, (P17322791937570370624.a n : ℤ) = A138639 (n + 1)

end A138639

/-!
# A138640: Primes of form 19*n-2.

The programs for A138640, the canonical program `A138640.P14203383669018237772` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138640 has offset 1).

The definition of A138640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138640.P14203383669018237772

`∪[A142676(n+1), A142699(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138640

/-- `∪[A142676(n+1), A142699(n+1)]` -/
def P14203383669018237772.Spec : Prop :=
  ∀ n, (P14203383669018237772.a n : ℤ) = A138640 (n + 1)

theorem P14203383669018237772.correct : P14203383669018237772.Spec := by
  intro n
  simp only [A138640, Nat.add_sub_cancel]

end A138640

/-! ## A138640.P9350302756732324170

`p?[19*n-2]`
-/

namespace A138640.P9350302756732324170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138640.P9350302756732324170

namespace A138640

/-- `p?[19*n-2]` -/
def P9350302756732324170.Spec : Prop :=
  ∀ n, P9350302756732324170.a n = A138640 (n + 1)

end A138640

/-! ## A138640.P4804421893235727360

`∩[A004139(n+1), A239129(n+1)+n]`
-/

namespace A138640.P4804421893235727360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P4804421893235727360

namespace A138640

/-- `∩[A004139(n+1), A239129(n+1)+n]` -/
def P4804421893235727360.Spec : Prop :=
  ∀ n, (P4804421893235727360.a n : ℤ) = A138640 (n + 1)

end A138640

/-! ## A138640.P10203768083040837239

`∩[A157996(n+1), A239129(n+1)+n]`
-/

namespace A138640.P10203768083040837239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P10203768083040837239

namespace A138640

/-- `∩[A157996(n+1), A239129(n+1)+n]` -/
def P10203768083040837239.Spec : Prop :=
  ∀ n, (P10203768083040837239.a n : ℤ) = A138640 (n + 1)

end A138640

/-! ## A138640.P9894250618022043939

`record[A020639(19*(n+1)-2)]`
-/

namespace A138640.P9894250618022043939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138640.P9894250618022043939

namespace A138640

/-- `record[A020639(19*(n+1)-2)]` -/
def P9894250618022043939.Spec : Prop :=
  ∀ n, P9894250618022043939.a n = A138640 (n + 1)

end A138640

/-! ## A138640.P3148789404881029729

`or(1, p?[A017365(n+1+n)-(n+1)])`
-/

namespace A138640.P3148789404881029729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (n + 1 + n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138640.P3148789404881029729

namespace A138640

/-- `or(1, p?[A017365(n+1+n)-(n+1)])` -/
def P3148789404881029729.Spec : Prop :=
  ∀ n, P3148789404881029729.a n = A138640 (n + 1)

end A138640

/-! ## A138640.P10156230021134316728

`A000265(p?[A195035(n+1)+2*(n+1)])`
-/

namespace A138640.P10156230021134316728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138640.P10156230021134316728

namespace A138640

/-- `A000265(p?[A195035(n+1)+2*(n+1)])` -/
def P10156230021134316728.Spec : Prop :=
  ∀ n, P10156230021134316728.a n = A138640 (n + 1)

end A138640

/-! ## A138640.P1723793135551803147

`∩[A017353(2*n+1)-n, A000040(n+2)]`
-/

namespace A138640.P1723793135551803147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P1723793135551803147

namespace A138640

/-- `∩[A017353(2*n+1)-n, A000040(n+2)]` -/
def P1723793135551803147.Spec : Prop :=
  ∀ n, (P1723793135551803147.a n : ℤ) = A138640 (n + 1)

end A138640

/-! ## A138640.P8253864331653726922

`∩[A106863(n+1), A315676(n)]`
-/

namespace A138640.P8253864331653726922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P8253864331653726922

namespace A138640

/-- `∩[A106863(n+1), A315676(n)]` -/
def P8253864331653726922.Spec : Prop :=
  ∀ n, (P8253864331653726922.a n : ℤ) = A138640 (n + 1)

end A138640

/-! ## A138640.P8637509318062384758

`∩[A191019(n+1), A315676(n)]`
-/

namespace A138640.P8637509318062384758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P8637509318062384758

namespace A138640

/-- `∩[A191019(n+1), A315676(n)]` -/
def P8637509318062384758.Spec : Prop :=
  ∀ n, (P8637509318062384758.a n : ℤ) = A138640 (n + 1)

end A138640

/-!
# A138641: Nonnegative integers n such that 19*n-2 is prime.

The programs for A138641, the canonical program `A138641.P13288651267268791020` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138641 has offset 1).

The definition of A138641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138641.P6917508313920842606

`A108977(n+1)+1`
-/

namespace A138641.P6917508313920842606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108977 (n + 1) + 1

end

end A138641.P6917508313920842606

namespace A138641

/-- `A108977(n+1)+1` -/
def P6917508313920842606.Spec : Prop :=
  ∀ n, P6917508313920842606.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P13288651267268791020

`ceil(A138640(n+1)/19)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138641

/-- `ceil(A138640(n+1)/19)` -/
def P13288651267268791020.Spec : Prop :=
  ∀ n, P13288651267268791020.a n = A138641 (n + 1)

theorem P13288651267268791020.correct : P13288651267268791020.Spec := by
  intro n
  simp only [A138641, Nat.add_sub_cancel]

end A138641

/-! ## A138641.P18347858071213445863

`A008683(8*(n+1))+round(A138640(n+1)/19)`
-/

namespace A138641.P18347858071213445863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + SequenceMachineLib.roundAway ((A138640 (n + 1) : ℚ) / 19)

end

end A138641.P18347858071213445863

namespace A138641

/-- `A008683(8*(n+1))+round(A138640(n+1)/19)` -/
def P18347858071213445863.Spec : Prop :=
  ∀ n, P18347858071213445863.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P3061657322329720485

`round(A138640(n+1)/19)%A000041(n+6)`
-/

namespace A138641.P3061657322329720485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138640 (n + 1) : ℚ) / 19)) (A000041 (n + 6))

end

end A138641.P3061657322329720485

namespace A138641

/-- `round(A138640(n+1)/19)%A000041(n+6)` -/
def P3061657322329720485.Spec : Prop :=
  ∀ n, P3061657322329720485.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P13092219383780641712

`ceil(p?[19*n-2]/19)`
-/

namespace A138641.P13092219383780641712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 19⌉

end

end A138641.P13092219383780641712

namespace A138641

/-- `ceil(p?[19*n-2]/19)` -/
def P13092219383780641712.Spec : Prop :=
  ∀ n, P13092219383780641712.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P17128801028889753680

`round(p?[19*n-2]/19)`
-/

namespace A138641.P17128801028889753680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 19)

end

end A138641.P17128801028889753680

namespace A138641

/-- `round(p?[19*n-2]/19)` -/
def P17128801028889753680.Spec : Prop :=
  ∀ n, P17128801028889753680.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P18303743454514215323

`floor(p?[19*n-2]/19)+1`
-/

namespace A138641.P18303743454514215323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 19⌋ + 1

end

end A138641.P18303743454514215323

namespace A138641

/-- `floor(p?[19*n-2]/19)+1` -/
def P18303743454514215323.Spec : Prop :=
  ∀ n, P18303743454514215323.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P15565677272956783002

`A004442(A108977(n+1))`
-/

namespace A138641.P15565677272956783002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A108977 (n + 1)).toNat

end

end A138641.P15565677272956783002

namespace A138641

/-- `A004442(A108977(n+1))` -/
def P15565677272956783002.Spec : Prop :=
  ∀ n, P15565677272956783002.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P10149829885981658542

`A007318(∑[n])*round(A138640(n+1)/19)`
-/

namespace A138641.P10149829885981658542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A138640 (n + 1) : ℚ) / 19)

end

end A138641.P10149829885981658542

namespace A138641

/-- `A007318(∑[n])*round(A138640(n+1)/19)` -/
def P10149829885981658542.Spec : Prop :=
  ∀ n, P10149829885981658542.a n = A138641 (n + 1)

end A138641

/-! ## A138641.P7576373836221723265

`eq[1, A061358(19*n)]`
-/

namespace A138641.P7576373836221723265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (19 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138641.P7576373836221723265

namespace A138641

/-- `eq[1, A061358(19*n)]` -/
def P7576373836221723265.Spec : Prop :=
  ∀ n, (P7576373836221723265.a n : ℤ) = A138641 (n + 1)

end A138641

/-!
# A138642: Primes of form 19*n-3.

The programs for A138642, the canonical program `A138642.P13385308254066036135` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138642 has offset 1).

The definition of A138642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138642.P3677119116695559245

`19*A138643(n+1)-3`
-/

namespace A138642.P3677119116695559245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A138643 (n + 1) - 3

end

end A138642.P3677119116695559245

namespace A138642

/-- `19*A138643(n+1)-3` -/
def P3677119116695559245.Spec : Prop :=
  ∀ n, P3677119116695559245.a n = A138642 (n + 1)

end A138642

/-! ## A138642.P13385308254066036135

`∪[A142675(n+1), A142687(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138642

/-- `∪[A142675(n+1), A142687(n+1)]` -/
def P13385308254066036135.Spec : Prop :=
  ∀ n, (P13385308254066036135.a n : ℤ) = A138642 (n + 1)

theorem P13385308254066036135.correct : P13385308254066036135.Spec := by
  intro n
  simp only [A138642, Nat.add_sub_cancel]

end A138642

/-! ## A138642.P10657879056374436500

`p?[19*n-3]`
-/

namespace A138642.P10657879056374436500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138642.P10657879056374436500

namespace A138642

/-- `p?[19*n-3]` -/
def P10657879056374436500.Spec : Prop :=
  ∀ n, P10657879056374436500.a n = A138642 (n + 1)

end A138642

/-! ## A138642.P7284980834968100098

`or(1, p?[19*n+16])`
-/

namespace A138642.P7284980834968100098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138642.P7284980834968100098

namespace A138642

/-- `or(1, p?[19*n+16])` -/
def P7284980834968100098.Spec : Prop :=
  ∀ n, (P7284980834968100098.a n : ℤ) = A138642 (n + 1)

end A138642

/-! ## A138642.P14735623609087077798

`A000027(p?[n+1+3*A016969(n)])`
-/

namespace A138642.P14735623609087077798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 3 * A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138642.P14735623609087077798

namespace A138642

/-- `A000027(p?[n+1+3*A016969(n)])` -/
def P14735623609087077798.Spec : Prop :=
  ∀ n, P14735623609087077798.a n = A138642 (n + 1)

end A138642

/-! ## A138642.P16590091334762324325

`∩[A004139(n+2), A239129(n+2)+n]`
-/

namespace A138642.P16590091334762324325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138642.P16590091334762324325

namespace A138642

/-- `∩[A004139(n+2), A239129(n+2)+n]` -/
def P16590091334762324325.Spec : Prop :=
  ∀ n, (P16590091334762324325.a n : ℤ) = A138642 (n + 1)

end A138642

/-! ## A138642.P13592806515779637675

`∩[A157996(n+2), A239129(n+2)+n]`
-/

namespace A138642.P13592806515779637675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138642.P13592806515779637675

namespace A138642

/-- `∩[A157996(n+2), A239129(n+2)+n]` -/
def P13592806515779637675.Spec : Prop :=
  ∀ n, (P13592806515779637675.a n : ℤ) = A138642 (n + 1)

end A138642

/-! ## A138642.P2049752654964099492

`record[A006530(18*(n+4)+n+1)]`
-/

namespace A138642.P2049752654964099492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (18 * (n + 4) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138642.P2049752654964099492

namespace A138642

/-- `record[A006530(18*(n+4)+n+1)]` -/
def P2049752654964099492.Spec : Prop :=
  ∀ n, P2049752654964099492.a n = A138642 (n + 1)

end A138642

/-! ## A138642.P7917283774496544812

`A000265(p?[A306771(2*(n+1))+n+1])`
-/

namespace A138642.P7917283774496544812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138642.P7917283774496544812

namespace A138642

/-- `A000265(p?[A306771(2*(n+1))+n+1])` -/
def P7917283774496544812.Spec : Prop :=
  ∀ n, P7917283774496544812.a n = A138642 (n + 1)

end A138642

/-! ## A138642.P7478657522556518852

`∩[A160912(2*n+1)-n, A000040(n+2)]`
-/

namespace A138642.P7478657522556518852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138642.P7478657522556518852

namespace A138642

/-- `∩[A160912(2*n+1)-n, A000040(n+2)]` -/
def P7478657522556518852.Spec : Prop :=
  ∀ n, (P7478657522556518852.a n : ℤ) = A138642 (n + 1)

end A138642

/-! ## A138642.P13881027844721262713

`A093178(p?[A103214(n)-A016897(n)])`
-/

namespace A138642.P13881027844721262713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138642.P13881027844721262713

namespace A138642

/-- `A093178(p?[A103214(n)-A016897(n)])` -/
def P13881027844721262713.Spec : Prop :=
  ∀ n, P13881027844721262713.a n = A138642 (n + 1)

end A138642

/-!
# A138643: Nonnegative integers k such that 19*k-3 is prime.

The programs for A138643, the canonical program `A138643.P5751644139118484023` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138643 has offset 1).

The definition of A138643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138643.P5751644139118484023

`ceil(A138642(n+1)/19)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138643

/-- `ceil(A138642(n+1)/19)` -/
def P5751644139118484023.Spec : Prop :=
  ∀ n, P5751644139118484023.a n = A138643 (n + 1)

theorem P5751644139118484023.correct : P5751644139118484023.Spec := by
  intro n
  simp only [A138643, Nat.add_sub_cancel]

end A138643

/-! ## A138643.P18111697503006217045

`round(A138642(abs(n-2*n)+1)/19)`
-/

namespace A138643.P18111697503006217045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138642 (|(n : ℤ) - (2 * n : ℤ)| + 1).toNat : ℚ) / 19)

end

end A138643.P18111697503006217045

namespace A138643

/-- `round(A138642(abs(n-2*n)+1)/19)` -/
def P18111697503006217045.Spec : Prop :=
  ∀ n, P18111697503006217045.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P17689321831743744336

`lcm(round(A138642(n+1)/19), A000034(n))`
-/

namespace A138643.P17689321831743744336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A138642 (n + 1) : ℚ) / 19)) (A000034 n)

end

end A138643.P17689321831743744336

namespace A138643

/-- `lcm(round(A138642(n+1)/19), A000034(n))` -/
def P17689321831743744336.Spec : Prop :=
  ∀ n, (P17689321831743744336.a n : ℤ) = A138643 (n + 1)

end A138643

/-! ## A138643.P8961223625918877060

`round(A138642(n+1)/19)%A020742(n)²`
-/

namespace A138643.P8961223625918877060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A138642 (n + 1) : ℚ) / 19)) (A020742 n ^ 2)

end

end A138643.P8961223625918877060

namespace A138643

/-- `round(A138642(n+1)/19)%A020742(n)²` -/
def P8961223625918877060.Spec : Prop :=
  ∀ n, P8961223625918877060.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P17622915946005101699

`A309873(n+1)²*round(A138642(n+1)/19)`
-/

namespace A138643.P17622915946005101699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * SequenceMachineLib.roundAway ((A138642 (n + 1) : ℚ) / 19)

end

end A138643.P17622915946005101699

namespace A138643

/-- `A309873(n+1)²*round(A138642(n+1)/19)` -/
def P17622915946005101699.Spec : Prop :=
  ∀ n, P17622915946005101699.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P7951735027812242430

`floor(A138642(n+1)/19-(A274641(n)-A274640(n)))`
-/

namespace A138643.P7951735027812242430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138642 (n + 1) : ℚ) / 19 - (A274641 n - A274640 n : ℚ)⌋

end

end A138643.P7951735027812242430

namespace A138643

/-- `floor(A138642(n+1)/19-(A274641(n)-A274640(n)))` -/
def P7951735027812242430.Spec : Prop :=
  ∀ n, P7951735027812242430.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P1151612236690999263

`A000007(n+1)+round(A138642(n+1)/19)`
-/

namespace A138643.P1151612236690999263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A138642 (n + 1) : ℚ) / 19)

end

end A138643.P1151612236690999263

namespace A138643

/-- `A000007(n+1)+round(A138642(n+1)/19)` -/
def P1151612236690999263.Spec : Prop :=
  ∀ n, P1151612236690999263.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P16031456228369843972

`A005843(round(A138642(n+1)/19)/2)`
-/

namespace A138643.P16031456228369843972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A138642 (n + 1) : ℚ) / 19) : ℚ) / 2)).toNat

end

end A138643.P16031456228369843972

namespace A138643

/-- `A005843(round(A138642(n+1)/19)/2)` -/
def P16031456228369843972.Spec : Prop :=
  ∀ n, P16031456228369843972.a n = A138643 (n + 1)

end A138643

/-! ## A138643.P8215528644889464456

`eq[2, A001222(A306331(2*(n+1))+1)]+1`
-/

namespace A138643.P8215528644889464456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306331 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138643.P8215528644889464456

namespace A138643

/-- `eq[2, A001222(A306331(2*(n+1))+1)]+1` -/
def P8215528644889464456.Spec : Prop :=
  ∀ n, (P8215528644889464456.a n : ℤ) = A138643 (n + 1)

end A138643

/-! ## A138643.P11520378651591273618

`round(A083861(A000217(n))+A138642(n+1)/19)`
-/

namespace A138643.P11520378651591273618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083861 (A000217 n).toNat : ℚ) + (A138642 (n + 1) : ℚ) / 19)

end

end A138643.P11520378651591273618

namespace A138643

/-- `round(A083861(A000217(n))+A138642(n+1)/19)` -/
def P11520378651591273618.Spec : Prop :=
  ∀ n, P11520378651591273618.a n = A138643 (n + 1)

end A138643

/-!
# A138644: Primes p such that 5*p+2 is composite.

The programs for A138644, there is no canonical definition to state claims against.
-/

/-! ## A138644.P3663887372112633659

`A000040(lt[A280720(n+1), 1]+1)`
-/

namespace A138644.P3663887372112633659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A138644.P3663887372112633659

/-! ## A138644.P17600983538977345405

`p?[gcd(A000040(n+1), A280720(n+1))]`
-/

namespace A138644.P17600983538977345405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A280720 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138644.P17600983538977345405

/-! ## A138644.P3299616442321325646

`A000040(eq[1, A280720(n+1)+1]+1)`
-/

namespace A138644.P3299616442321325646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A138644.P3299616442321325646

/-! ## A138644.P2032547656867093582

`p?[A000040(n+2)-A280720(n+2)²]`
-/

namespace A138644.P2032547656867093582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A280720 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P2032547656867093582

/-! ## A138644.P17822010671201673163

`p?[A010051(A017353(n))+A005408(n)]`
-/

namespace A138644.P17822010671201673163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017353 n).toNat + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P17822010671201673163

/-! ## A138644.P16880196330540023956

`p?[A323162(A017353(n))+A005843(n)]`
-/

namespace A138644.P16880196330540023956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A017353 n).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P16880196330540023956

/-! ## A138644.P2956179553258678324

`p?[lt[1, A001222(5*n+2)]]`
-/

namespace A138644.P2956179553258678324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138644.P2956179553258678324

/-! ## A138644.P4495373996549147521

`record[A006530(lt[1, A001222(4*(n+1)+3+n)]+1)]`
-/

namespace A138644.P4495373996549147521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (n + 1) + 3 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138644.P4495373996549147521

/-! ## A138644.P3965587264668288727

`lt[A107393(n), A107393(A008587(n)+2)]`
-/

namespace A138644.P3965587264668288727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A008587 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138644.P3965587264668288727

/-! ## A138644.P3089933189324901453

`p?[n*A208645(5*n)]`
-/

namespace A138644.P3089933189324901453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A208645 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P3089933189324901453

/-! ## A138644.P10819909008439690165

`p?[lt[A014963(5*(n+1)+2), n+2]+1]`
-/

namespace A138644.P10819909008439690165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1) + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138644.P10819909008439690165

/-! ## A138644.P10940441282115480006

`p?[n-A055671(A008587(n)+2)]`
-/

namespace A138644.P10940441282115480006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055671 (A008587 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P10940441282115480006

/-! ## A138644.P418649513357692595

`p?[A208645(A008574(n+1)+n+1)+n]`
-/

namespace A138644.P418649513357692595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A008574 (n + 1) + (n + 1 : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P418649513357692595

/-! ## A138644.P5087011134855807019

`p?[n-A174956(A017317(n))]`
-/

namespace A138644.P5087011134855807019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A174956 (A017317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138644.P5087011134855807019

/-! ## A138644.P6693828760353441612

`p?[gcd(n, A046926(A017341(n)))]`
-/

namespace A138644.P6693828760353441612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046926 (A017341 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138644.P6693828760353441612

/-!
# A138645: Primes p such that 7*p+2 is composite.

The programs for A138645, the canonical program `A138645.P15363821371440670128` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138645 has offset 1).

The definition of A138645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138645.P15363821371440670128

`p?[A010051(7*n+2)+n]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138645

/-- `p?[A010051(7*n+2)+n]` -/
def P15363821371440670128.Spec : Prop :=
  ∀ n, P15363821371440670128.a n = A138645 (n + 1)

theorem P15363821371440670128.correct : P15363821371440670128.Spec := by
  intro n
  simp only [A138645, Nat.add_sub_cancel]

end A138645

/-! ## A138645.P16222276244313655743

`p?[A153351(n+1)]`
-/

namespace A138645.P16222276244313655743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138645.P16222276244313655743

namespace A138645

/-- `p?[A153351(n+1)]` -/
def P16222276244313655743.Spec : Prop :=
  ∀ n, P16222276244313655743.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P862647127204290244

`p?[comp[A105772(n+1)]]`
-/

namespace A138645.P862647127204290244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138645.P862647127204290244

namespace A138645

/-- `p?[comp[A105772(n+1)]]` -/
def P862647127204290244.Spec : Prop :=
  ∀ n, (P862647127204290244.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P13346210988029868213

`p?[lt[1, A001222(7*n+2)]]`
-/

namespace A138645.P13346210988029868213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138645.P13346210988029868213

namespace A138645

/-- `p?[lt[1, A001222(7*n+2)]]` -/
def P13346210988029868213.Spec : Prop :=
  ∀ n, (P13346210988029868213.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P529322398527881306

`record[A020639(A153351(n+2))]`
-/

namespace A138645.P529322398527881306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A153351 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138645.P529322398527881306

namespace A138645

/-- `record[A020639(A153351(n+2))]` -/
def P529322398527881306.Spec : Prop :=
  ∀ n, P529322398527881306.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P9361967103538976409

`filter[A153351(n+1), A010051(#)]`
-/

namespace A138645.P9361967103538976409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138645.P9361967103538976409

namespace A138645

/-- `filter[A153351(n+1), A010051(#)]` -/
def P9361967103538976409.Spec : Prop :=
  ∀ n, P9361967103538976409.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P17623068628092011890

`∩[A000040(n+1), A153351(n+1)]`
-/

namespace A138645.P17623068628092011890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138645.P17623068628092011890

namespace A138645

/-- `∩[A000040(n+1), A153351(n+1)]` -/
def P17623068628092011890.Spec : Prop :=
  ∀ n, (P17623068628092011890.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P383044823460950868

`∩[A045319(n+1), A153351(n+1)]`
-/

namespace A138645.P383044823460950868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138645.P383044823460950868

namespace A138645

/-- `∩[A045319(n+1), A153351(n+1)]` -/
def P383044823460950868.Spec : Prop :=
  ∀ n, (P383044823460950868.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P7122390624233913082

`∩[A045344(n+1), A153351(n+1)]`
-/

namespace A138645.P7122390624233913082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138645.P7122390624233913082

namespace A138645

/-- `∩[A045344(n+1), A153351(n+1)]` -/
def P7122390624233913082.Spec : Prop :=
  ∀ n, (P7122390624233913082.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P675092653836593499

`∩[A153351(n+1), A182986(n+1)]`
-/

namespace A138645.P675092653836593499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138645.P675092653836593499

namespace A138645

/-- `∩[A153351(n+1), A182986(n+1)]` -/
def P675092653836593499.Spec : Prop :=
  ∀ n, (P675092653836593499.a n : ℤ) = A138645 (n + 1)

end A138645

/-! ## A138645.P250817836720087304

`filter[A153351(n+2), A080339(#)]`
-/

namespace A138645.P250817836720087304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A138645.P250817836720087304

namespace A138645

/-- `filter[A153351(n+2), A080339(#)]` -/
def P250817836720087304.Spec : Prop :=
  ∀ n, P250817836720087304.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P9736874638346598615

`p?[n*A005171(7*n+2)]`
-/

namespace A138645.P9736874638346598615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005171 (7 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138645.P9736874638346598615

namespace A138645

/-- `p?[n*A005171(7*n+2)]` -/
def P9736874638346598615.Spec : Prop :=
  ∀ n, P9736874638346598615.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P14328075387235574474

`p?[A080339(7*n+2)+n]`
-/

namespace A138645.P14328075387235574474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (7 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138645.P14328075387235574474

namespace A138645

/-- `p?[A080339(7*n+2)+n]` -/
def P14328075387235574474.Spec : Prop :=
  ∀ n, P14328075387235574474.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P1418720380215538562

`p?[n-A055672(7*n+2)]`
-/

namespace A138645.P1418720380215538562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055672 (7 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138645.P1418720380215538562

namespace A138645

/-- `p?[n-A055672(7*n+2)]` -/
def P1418720380215538562.Spec : Prop :=
  ∀ n, P1418720380215538562.a n = A138645 (n + 1)

end A138645

/-! ## A138645.P15647267594863579412

`∩[A153351(n+1), A240960(n+1)]`
-/

namespace A138645.P15647267594863579412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138645.P15647267594863579412

namespace A138645

/-- `∩[A153351(n+1), A240960(n+1)]` -/
def P15647267594863579412.Spec : Prop :=
  ∀ n, (P15647267594863579412.a n : ℤ) = A138645 (n + 1)

end A138645

/-!
# A138646: Primes p such that 5*p-2 is composite.

The programs for A138646, there is no canonical definition to state claims against.
-/

/-! ## A138646.P14200605202449538577

`p?[lt[2, A000005(5*n+3)]+1]`
-/

namespace A138646.P14200605202449538577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138646.P14200605202449538577

/-! ## A138646.P11333045335679475697

`p?[n+1-A061397(5*n+3)]`
-/

namespace A138646.P11333045335679475697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061397 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P11333045335679475697

/-! ## A138646.P11226210015050755053

`p?[lcm(n+2, A014963(5*n+8))]`
-/

namespace A138646.P11226210015050755053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A014963 (5 * n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138646.P11226210015050755053

/-! ## A138646.P109250404134847349

`p?[lt[A014963(5*n+3), n+2]+1]`
-/

namespace A138646.P109250404134847349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138646.P109250404134847349

/-! ## A138646.P10885662111366097253

`p?[A285701(5*n+3)+C(xor(1, n), n)]`
-/

namespace A138646.P10885662111366097253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (5 * n + 3) + (Nat.choose (Nat.xor 1 n) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P10885662111366097253

/-! ## A138646.P7471326017215146214

`p?[A010051(5*n+3)+gcd(n+1, n%2)]`
-/

namespace A138646.P7471326017215146214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (5 * n + 3) + (Nat.gcd (n + 1) (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P7471326017215146214

/-! ## A138646.P14188513488839651857

`p?[n-A055671(A019428(n))]`
-/

namespace A138646.P14188513488839651857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055671 (A019428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P14188513488839651857

/-! ## A138646.P12375638066471588386

`p?[lt[1, A001222(A016885(n))]+1]`
-/

namespace A138646.P12375638066471588386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016885 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138646.P12375638066471588386

/-! ## A138646.P3317780567534991333

`p?[A014963(A063206(n+1))+n]`
-/

namespace A138646.P3317780567534991333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A063206 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P3317780567534991333

/-! ## A138646.P10810512078651607494

`p?[n*A014963(A019428(n+1))+1]`
-/

namespace A138646.P10810512078651607494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014963 (A019428 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138646.P10810512078651607494

/-!
# A138648: 7^n mod 5^n.

The programs for A138648, the canonical program `A138648.P8869332298152923980` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138648 has offset 0).

The definition of A138648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138648.P8869332298152923980

`(7^n)%(5^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138648

/-- `(7^n)%(5^n)` -/
def P8869332298152923980.Spec : Prop :=
  ∀ n, (P8869332298152923980.a n : ℤ) = A138648 n

theorem P8869332298152923980.correct : P8869332298152923980.Spec := by
  intro n
  simp only [A138648]

end A138648

/-! ## A138648.P3431887292468111433

`--A000420(n)%A000351(n)`
-/

namespace A138648.P3431887292468111433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000420 n) (A000351 n)

end

end A138648.P3431887292468111433

namespace A138648

/-- `--A000420(n)%A000351(n)` -/
def P3431887292468111433.Spec : Prop :=
  ∀ n, P3431887292468111433.a n = A138648 n

end A138648

/-! ## A138648.P18101269266975439513

`abs(Δ[A023000(n)]%A000351(n))`
-/

namespace A138648.P18101269266975439513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000351 n)|

end

end A138648.P18101269266975439513

namespace A138648

/-- `abs(Δ[A023000(n)]%A000351(n))` -/
def P18101269266975439513.Spec : Prop :=
  ∀ n, P18101269266975439513.a n = A138648 n

end A138648

/-! ## A138648.P6690260774585843117

`abs(A000420(n)%Δ[A047850(n)])`
-/

namespace A138648.P6690260774585843117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000420 n) (f1 (n + 1) - f1 n)|

end

end A138648.P6690260774585843117

namespace A138648

/-- `abs(A000420(n)%Δ[A047850(n)])` -/
def P6690260774585843117.Spec : Prop :=
  ∀ n, P6690260774585843117.a n = A138648 n

end A138648

/-! ## A138648.P12132901418142251908

`n--A024076(n)%A000351(n)`
-/

namespace A138648.P12132901418142251908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-A024076 n) (A000351 n)

end

end A138648.P12132901418142251908

namespace A138648

/-- `n--A024076(n)%A000351(n)` -/
def P12132901418142251908.Spec : Prop :=
  ∀ n, P12132901418142251908.a n = A138648 n

end A138648

/-! ## A138648.P1911377046589422514

`A057427(n)+A024075(n)%A000351(n)`
-/

namespace A138648.P1911377046589422514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.tmod (A024075 n) (A000351 n)

end

end A138648.P1911377046589422514

namespace A138648

/-- `A057427(n)+A024075(n)%A000351(n)` -/
def P1911377046589422514.Spec : Prop :=
  ∀ n, P1911377046589422514.a n = A138648 n

end A138648

/-! ## A138648.P4150381105582504775

`A001047(n)+A135162(n)%A000351(n)`
-/

namespace A138648.P4150381105582504775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n + Int.tmod (A135162 n) (A000351 n)

end

end A138648.P4150381105582504775

namespace A138648

/-- `A001047(n)+A135162(n)%A000351(n)` -/
def P4150381105582504775.Spec : Prop :=
  ∀ n, P4150381105582504775.a n = A138648 n

end A138648

/-!
# A138649: a(n) = 6^n mod 5^n.

The programs for A138649, the canonical program `A138649.P10023842156466070747` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138649 has offset 0).

The definition of A138649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138649.P10023842156466070747

`(6^n)%(5^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138649

/-- `(6^n)%(5^n)` -/
def P10023842156466070747.Spec : Prop :=
  ∀ n, (P10023842156466070747.a n : ℤ) = A138649 n

theorem P10023842156466070747.correct : P10023842156466070747.Spec := by
  intro n
  simp only [A138649]

end A138649

/-! ## A138649.P11398831950140814597

`abs(A000400(n)%Δ[A003463(n)])`
-/

namespace A138649.P11398831950140814597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000400 n) (f1 (n + 1) - f1 n)|

end

end A138649.P11398831950140814597

namespace A138649

/-- `abs(A000400(n)%Δ[A003463(n)])` -/
def P11398831950140814597.Spec : Prop :=
  ∀ n, P11398831950140814597.a n = A138649 n

end A138649

/-! ## A138649.P15394165731113172846

`n--A024063(n)%A000351(n)`
-/

namespace A138649.P15394165731113172846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-A024063 n) (A000351 n)

end

end A138649.P15394165731113172846

namespace A138649

/-- `n--A024063(n)%A000351(n)` -/
def P15394165731113172846.Spec : Prop :=
  ∀ n, P15394165731113172846.a n = A138649 n

end A138649

/-! ## A138649.P17999040991330987651

`abs((A024049(n)-A024062(n))%A000351(n))`
-/

namespace A138649.P17999040991330987651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A024049 n - A024062 n) (A000351 n)|

end

end A138649.P17999040991330987651

namespace A138649

/-- `abs((A024049(n)-A024062(n))%A000351(n))` -/
def P17999040991330987651.Spec : Prop :=
  ∀ n, P17999040991330987651.a n = A138649 n

end A138649

/-! ## A138649.P3420310002182111531

`-(A000351(n)-A000400(n))%A000351(n)`
-/

namespace A138649.P3420310002182111531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A000351 n - A000400 n) (A000351 n)

end

end A138649.P3420310002182111531

namespace A138649

/-- `-(A000351(n)-A000400(n))%A000351(n)` -/
def P3420310002182111531.Spec : Prop :=
  ∀ n, P3420310002182111531.a n = A138649 n

end A138649

/-! ## A138649.P15730024146977317729

`A005062(n)%A000351(n)*A006519(A044714(n+1))`
-/

namespace A138649.P15730024146977317729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005062 n) (A000351 n) * A006519 (A044714 (n + 1)).toNat

end

end A138649.P15730024146977317729

namespace A138649

/-- `A005062(n)%A000351(n)*A006519(A044714(n+1))` -/
def P15730024146977317729.Spec : Prop :=
  ∀ n, P15730024146977317729.a n = A138649 n

end A138649

/-! ## A138649.P17443069702526864300

`A001027(n)%A001024(n)/A000244(n)`
-/

namespace A138649.P17443069702526864300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001027 n) (A001024 n) : ℚ) / (A000244 n : ℚ)

end

end A138649.P17443069702526864300

namespace A138649

/-- `A001027(n)%A001024(n)/A000244(n)` -/
def P17443069702526864300.Spec : Prop :=
  ∀ n, P17443069702526864300.a n = (A138649 n : ℚ)

end A138649

/-!
# A138650: Table where T(n,k) is the number of unordered trees with n edges (n+1 nodes) whose node out-degrees form the k-th partition of the integer n (in Mathematica order).

The programs for A138650, there is no canonical definition to state claims against.
-/

/-! ## A138650.P6764300412486206237

`A080645(A072811(n))+A000007(A270100(n))`
-/

namespace A138650.P6764300412486206237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080645 (A072811 n).toNat + A000007 (A270100 n).toNat

end

end A138650.P6764300412486206237

/-! ## A138650.P18274811414590212269

`A358372(A072811(n)!)`
-/

namespace A138650.P18274811414590212269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (Nat.factorial (A072811 n).toNat)

end

end A138650.P18274811414590212269

/-! ## A138650.P7994694473806013074

`A258594(5^A072811(n))`
-/

namespace A138650.P7994694473806013074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258594 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A072811 n : ℤ))).toNat

end

end A138650.P7994694473806013074

/-! ## A138650.P15426504980366362138

`A341434(5^A072811(n))`
-/

namespace A138650.P15426504980366362138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341434 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A072811 n : ℤ))).toNat

end

end A138650.P15426504980366362138

/-! ## A138650.P14929632285720096359

`A111094(A072811(n)%A111151(n+1))`
-/

namespace A138650.P14929632285720096359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (Int.tmod (A072811 n) (A111151 (n + 1))).toNat

end

end A138650.P14929632285720096359

/-!
# A138651: Number of distinct values obtained when each of the operators # in the expression 1#2#3#...#n is replaced by + (add) or x (multiply) in all possible ways, for n=1,2,3,...

The programs for A138651, there is no canonical definition to state claims against.
-/

/-! ## A138651.P16958166827874907544

`A354166(A239484(2*(n+4))+A038056(n+1))`
-/

namespace A138651.P16958166827874907544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A239484 (2 * (n + 4)) + A038056 (n + 1)).toNat

end

end A138651.P16958166827874907544

/-! ## A138651.P7548928097286676597

`A354166(A002846(n+1)*A318991(3*(n+1)))`
-/

namespace A138651.P7548928097286676597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A002846 (n + 1) * A318991 (3 * (n + 1))).toNat

end

end A138651.P7548928097286676597

/-! ## A138651.P5888162962745975011

`A230490(2^n)`
-/

namespace A138651.P5888162962745975011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230490 (2 ^ n)

end

end A138651.P5888162962745975011

/-! ## A138651.P7797935410585057417

`Δ[round(log(A051185(n+1)))]`
-/

namespace A138651.P7797935410585057417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A051185 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138651.P7797935410585057417

/-!
# A138652: Number of differences (not all necessarily distinct) between consecutive divisors of 2n which are also divisors of 2n.

The programs for A138652, there is no canonical definition to state claims against.
-/

/-! ## A138652.P3108158537256403479

`Δ[A113241(n)]-A360118(2*(n+1))`
-/

namespace A138652.P3108158537256403479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360118 (2 * (n + 1))

end

end A138652.P3108158537256403479

/-! ## A138652.P10568697635905734758

`A066660(n+1)-A360118(2*(n+1))`
-/

namespace A138652.P10568697635905734758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - A360118 (2 * (n + 1))

end

end A138652.P10568697635905734758

/-! ## A138652.P2783779621432122839

`A000005(2*(n+1))-A349410(A007989(3*n+1))`
-/

namespace A138652.P2783779621432122839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A349410 (A007989 (3 * n + 1)).toNat

end

end A138652.P2783779621432122839

/-! ## A138652.P14393441912977031119

`∏{e}[2*(n+1), #+1]-A378282(A055932(n+1))`
-/

namespace A138652.P14393441912977031119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A378282 (A055932 (n + 1)).toNat

end

end A138652.P14393441912977031119

/-! ## A138652.P12471266436474871375

`∑{d}[n+1, A007424(A000051(#))]`
-/

namespace A138652.P12471266436474871375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007424 (A000051 d).toNat

end

end A138652.P12471266436474871375

/-!
# A138653: a(n) = 3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4).

The programs for A138653, the canonical program `A138653.P1433887018691917698` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138653 has offset 0).

The definition of A138653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` (program `A138653.P1433887018691917698`, by `A138653.P1433887018691917698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138653.P1433887018691917698

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138653

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` -/
def P1433887018691917698.Spec : Prop :=
  ∀ n, P1433887018691917698.a n = A138653 n

theorem P1433887018691917698.correct : P1433887018691917698.Spec := by
  intro n
  simp only [A138653]

end A138653

/-! ## A138653.P4095618751560212656

`A079398(3*n+4)`
-/

namespace A138653.P4095618751560212656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (3 * n + 4)

end

end A138653.P4095618751560212656

namespace A138653

/-- `A079398(3*n+4)` -/
def P4095618751560212656.Spec : Prop :=
  ∀ n, P4095618751560212656.a n = A138653 n

end A138653

/-! ## A138653.P7868093155083571055

`A122521(6*n+7)`
-/

namespace A138653.P7868093155083571055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (6 * n + 7)

end

end A138653.P7868093155083571055

namespace A138653

/-- `A122521(6*n+7)` -/
def P7868093155083571055.Spec : Prop :=
  ∀ n, P7868093155083571055.a n = A138653 n

end A138653

/-! ## A138653.P3328257966324068531

`A385106(n)+a(n-1)` with `a(0)=1`
-/

namespace A138653.P3328257966324068531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A385106 n + a (n - 1)

end

end A138653.P3328257966324068531

namespace A138653

/-- `A385106(n)+a(n-1)` -/
def P3328257966324068531.Spec : Prop :=
  ∀ n, P3328257966324068531.a n = A138653 n

end A138653

/-! ## A138653.P8074908200300353109

`∑[A079398(A008486(n))]`
-/

namespace A138653.P8074908200300353109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138653.P8074908200300353109

namespace A138653

/-- `∑[A079398(A008486(n))]` -/
def P8074908200300353109.Spec : Prop :=
  ∀ n, P8074908200300353109.a n = A138653 n

end A138653

/-! ## A138653.P10126751743685568007

`∑[A122521(A008458(n))]`
-/

namespace A138653.P10126751743685568007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138653.P10126751743685568007

namespace A138653

/-- `∑[A122521(A008458(n))]` -/
def P10126751743685568007.Spec : Prop :=
  ∀ n, P10126751743685568007.a n = A138653 n

end A138653

/-! ## A138653.P6082860542718242368

`∑[A079398(A004278(n+2)+n)]`
-/

namespace A138653.P6082860542718242368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A004278 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138653.P6082860542718242368

namespace A138653

/-- `∑[A079398(A004278(n+2)+n)]` -/
def P6082860542718242368.Spec : Prop :=
  ∀ n, P6082860542718242368.a n = A138653 n

end A138653

/-! ## A138653.P15908439438090291427

`Δ[A123552(3*n)]`
-/

namespace A138653.P15908439438090291427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123552 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138653.P15908439438090291427

namespace A138653

/-- `Δ[A123552(3*n)]` -/
def P15908439438090291427.Spec : Prop :=
  ∀ n, P15908439438090291427.a n = A138653 n

end A138653

/-! ## A138653.P7056294347702488474

`Δ[Δ[A385106(n+2)]]`
-/

namespace A138653.P7056294347702488474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385106 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138653.P7056294347702488474

namespace A138653

/-- `Δ[Δ[A385106(n+2)]]` -/
def P7056294347702488474.Spec : Prop :=
  ∀ n, P7056294347702488474.a n = A138653 n

end A138653

/-!
# A138654: 7^n mod 4^n.

The programs for A138654, the canonical program `A138654.P17408833288183830298` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138654 has offset 0).

The definition of A138654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138654.P17408833288183830298

`(7^n)%(4^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138654

/-- `(7^n)%(4^n)` -/
def P17408833288183830298.Spec : Prop :=
  ∀ n, (P17408833288183830298.a n : ℤ) = A138654 n

theorem P17408833288183830298.correct : P17408833288183830298.Spec := by
  intro n
  simp only [A138654]

end A138654

/-! ## A138654.P12303559722503107493

`and(4^n-1, 7^n)`
-/

namespace A138654.P12303559722503107493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (7 ^ n : ℤ)

end

end A138654.P12303559722503107493

namespace A138654

/-- `and(4^n-1, 7^n)` -/
def P12303559722503107493.Spec : Prop :=
  ∀ n, P12303559722503107493.a n = A138654 n

end A138654

/-! ## A138654.P4924797670397204804

`abs(A000420(n)%A262710(n))`
-/

namespace A138654.P4924797670397204804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000420 n) (A262710 n)|

end

end A138654.P4924797670397204804

namespace A138654

/-- `abs(A000420(n)%A262710(n))` -/
def P4924797670397204804.Spec : Prop :=
  ∀ n, P4924797670397204804.a n = A138654 n

end A138654

/-! ## A138654.P9810171517016471894

`--A000420(n)%A000302(n)`
-/

namespace A138654.P9810171517016471894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000420 n) (A000302 n)

end

end A138654.P9810171517016471894

namespace A138654

/-- `--A000420(n)%A000302(n)` -/
def P9810171517016471894.Spec : Prop :=
  ∀ n, P9810171517016471894.a n = A138654 n

end A138654

/-! ## A138654.P2191977269881215288

`A156266(n)%A151403(n)/A000108(n)`
-/

namespace A138654.P2191977269881215288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A156266 n) (A151403 n) : ℚ) / (A000108 n : ℚ)

end

end A138654.P2191977269881215288

namespace A138654

/-- `A156266(n)%A151403(n)/A000108(n)` -/
def P2191977269881215288.Spec : Prop :=
  ∀ n, P2191977269881215288.a n = (A138654 n : ℚ)

end A138654

/-!
# A138655: Primes p such that 36*p-1 and 36*p+1 are twin primes.

The programs for A138655, there is no canonical definition to state claims against.
-/

/-! ## A138655.P16939017932528665419

`record[p?[A007913(A045753(n+3))]]`
-/

namespace A138655.P16939017932528665419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A045753 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138655.P16939017932528665419

/-! ## A138655.P5036753490836821446

`p?[lt[A137876(2*(n+1)), 3]+1]`
-/

namespace A138655.P5036753490836821446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138655.P5036753490836821446

/-! ## A138655.P1285839033731986010

`p?[A006370(A137877(n+1))]`
-/

namespace A138655.P1285839033731986010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A137877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138655.P1285839033731986010

/-! ## A138655.P4913952460877154853

`p?[A029578(A137877(n+2))]`
-/

namespace A138655.P4913952460877154853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A137877 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138655.P4913952460877154853

/-! ## A138655.P44836773614348953

`eq[A003415(n), A182481(A008458(n))]`
-/

namespace A138655.P44836773614348953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138655.P44836773614348953

/-!
# A138656: Primes p such that 42*p - 1 and 42*p + 1 are twin primes.

The programs for A138656, there is no canonical definition to state claims against.
-/

/-! ## A138656.P5681743724940443074

`p?[A255591(A173904(n+1))]`
-/

namespace A138656.P5681743724940443074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A173904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138656.P5681743724940443074

/-! ## A138656.P9148023359289767589

`p?[A323912(A124520(n+1))]`
-/

namespace A138656.P9148023359289767589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323912 (A124520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138656.P9148023359289767589

/-!
# A138657: Primes p such that 48*p - 1 and 48*p + 1 are twin primes.

The programs for A138657, there is no canonical definition to state claims against.
-/

/-! ## A138657.P15779744018279397237

`p?[A137920(n+1)-A006530(A137920(n+1))]`
-/

namespace A138657.P15779744018279397237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1) - A006530 (A137920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138657.P15779744018279397237

/-! ## A138657.P11838349783728043858

`p?[A072480(A137920(n+1))]`
-/

namespace A138657.P11838349783728043858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A137920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138657.P11838349783728043858

/-! ## A138657.P15257401701569397696

`p?[A072480(A124065(n+1)/3)]`
-/

namespace A138657.P15257401701569397696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (SequenceMachineLib.roundAway ((A124065 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138657.P15257401701569397696

/-! ## A138657.P6748731144112712477

`p?[A255591(2*A124521(n+1))]`
-/

namespace A138657.P6748731144112712477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (2 * A124521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138657.P6748731144112712477

/-!
# A138658: Primes p such that 54*p-1 and 54*p+1 are twin primes.

The programs for A138658, there is no canonical definition to state claims against.
-/

/-! ## A138658.P16279570552600348241

`p?[record[A263390(A137877(n+1))]]`
-/

namespace A138658.P16279570552600348241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A137877 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138658.P16279570552600348241

/-! ## A138658.P14251676248967380532

`eq[n, A049559(A137876(3*(n+1))+n)]+1`
-/

namespace A138658.P14251676248967380532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A137876 (3 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138658.P14251676248967380532

/-!
# A138659: Primes p such that 60*p - 1 and 60*p + 1 are twin primes.

The programs for A138659, there is no canonical definition to state claims against.
-/

/-! ## A138659.P7801300366289716378

`record[A020639(A093411(A124518(n+1)))]`
-/

namespace A138659.P7801300366289716378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093411 (A124518 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138659.P7801300366289716378

/-! ## A138659.P16220586843091187547

`p?[A006370(A176114(n+1))]`
-/

namespace A138659.P16220586843091187547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A176114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138659.P16220586843091187547

/-! ## A138659.P10380978926957862906

`p?[A001281(A176114(n+2))]`
-/

namespace A138659.P10380978926957862906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A176114 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138659.P10380978926957862906

/-! ## A138659.P3958804586538171178

`record[p?[A090395(A153877(n+1))]]`
-/

namespace A138659.P3958804586538171178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A153877 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138659.P3958804586538171178

/-! ## A138659.P11298920316834752588

`p?[A000217(A124518(n+1))%A176114(n+1)]`
-/

namespace A138659.P11298920316834752588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A124518 (n + 1)).toNat) (A176114 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138659.P11298920316834752588

/-!
# A138660: Primes p such that (12*p - 1, 12*p + 1) and (18*p - 1, 18*p + 1) are twin primes.

The programs for A138660, the canonical program `A138660.P7096998422197970140` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138660 has offset 1).

The definition of A138660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138660.P7096998422197970140

`∩[A138242(n+1), A138248(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A138660

/-- `∩[A138242(n+1), A138248(n+1)]` -/
def P7096998422197970140.Spec : Prop :=
  ∀ n, (P7096998422197970140.a n : ℤ) = A138660 (n + 1)

theorem P7096998422197970140.correct : P7096998422197970140.Spec := by
  intro n
  simp only [A138660, Nat.add_sub_cancel]

end A138660

/-! ## A138660.P5940218077435060295

`p?[∩[A124519(n+1), A137877(n+1)]]`
-/

namespace A138660.P5940218077435060295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A138660.P5940218077435060295

namespace A138660

/-- `p?[∩[A124519(n+1), A137877(n+1)]]` -/
def P5940218077435060295.Spec : Prop :=
  ∀ n, (P5940218077435060295.a n : ℤ) = A138660 (n + 1)

end A138660

/-!
# A138662: First term of the first run of at least n consecutive numbers in A137292.

The programs for A138662, there is no canonical definition to state claims against.
-/

/-! ## A138662.P18002204658788576433

`or(A065515(n+1), A339354((n+1)*((n+1)^n-n^(n+1)/(n+1))))`
-/

namespace A138662.P18002204658788576433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065515 (n + 1)) (A339354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (((n + 1) ^ n : ℚ) - (n ^ (n + 1) : ℚ) / (n + 1 : ℚ)))).toNat)

end

end A138662.P18002204658788576433

/-!
# A138663: a(n) = number of positive integers k, k <= n, where the number of ones in the binary representation of each k is coprime to n.

The programs for A138663, there is no canonical definition to state claims against.
-/

/-! ## A138663.P7220117076914641610

`A134198(n+1)+A016389(A004769(n))`
-/

namespace A138663.P7220117076914641610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) + A016389 (A004769 n).toNat

end

end A138663.P7220117076914641610

/-! ## A138663.P2962542252079234447

`A277030(n+1)+A043289(A137199(n))`
-/

namespace A138663.P2962542252079234447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 1) + A043289 (A137199 n).toNat

end

end A138663.P2962542252079234447

/-! ## A138663.P11807768489502628793

`A039649(n+1)-A014702(A232163(n))`
-/

namespace A138663.P11807768489502628793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A014702 (A232163 n).toNat

end

end A138663.P11807768489502628793

/-! ## A138663.P17149472530549821221

`A134198(n+1)-A003982(A209621(n))`
-/

namespace A138663.P17149472530549821221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) - A003982 (A209621 n).toNat

end

end A138663.P17149472530549821221

/-! ## A138663.P15507649240512647167

`A269242(A283286(n+1))+A000010(n+1)`
-/

namespace A138663.P15507649240512647167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 (A283286 (n + 1)).toNat + A000010 (n + 1)

end

end A138663.P15507649240512647167

/-!
# A138664: a(n) = number of positive integers k, k <= n, where the number of one's in the binary representation of each k divides n.

The programs for A138664, there is no canonical definition to state claims against.
-/

/-! ## A138664.P3682723497056533237

`A051953(n+1)+A001221(A288476(n))`
-/

namespace A138664.P3682723497056533237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A001221 (A288476 n).toNat

end

end A138664.P3682723497056533237

/-! ## A138664.P17988653333425016602

`A051953(n+1)+A043566(A007283(n))`
-/

namespace A138664.P17988653333425016602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A043566 (A007283 n).toNat

end

end A138664.P17988653333425016602

/-! ## A138664.P12199800394168614227

`A237442(A001333(n))+A051953(n+1)`
-/

namespace A138664.P12199800394168614227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A001333 n).toNat + A051953 (n + 1)

end

end A138664.P12199800394168614227

/-! ## A138664.P4803481912084725797

`A060129(A099515(n))-A051950(n+2)`
-/

namespace A138664.P4803481912084725797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 (A099515 n).toNat - A051950 (n + 2)

end

end A138664.P4803481912084725797

/-!
# A138665: Primes of the form 2*p(k)+3*p(k+1)+4*p(k+2) for some k, where p(k)=A000040(k).

The programs for A138665, there is no canonical definition to state claims against.
-/

/-! ## A138665.P4196124075258510970

`A354442(A049094(2*n+3)+2)`
-/

namespace A138665.P4196124075258510970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354442 (A049094 (2 * n + 3) + 2).toNat

end

end A138665.P4196124075258510970

/-!
# A138666: Numbers n such that every sum of consecutive positive numbers ending in n is not prime.

The programs for A138666, the canonical program `A138666.P6051759932238396872` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138666 has offset 1).

The definition of A138666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138666.P14334925328780116346

`lt[n*A056563(n), n]`
-/

namespace A138666.P14334925328780116346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138666.P14334925328780116346

namespace A138666

/-- `lt[n*A056563(n), n]` -/
def P14334925328780116346.Spec : Prop :=
  ∀ n, (P14334925328780116346.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P16854735591202253019

`lt[A056563(n+1), 1]+1`
-/

namespace A138666.P16854735591202253019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138666.P16854735591202253019

namespace A138666

/-- `lt[A056563(n+1), 1]+1` -/
def P16854735591202253019.Spec : Prop :=
  ∀ n, (P16854735591202253019.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P6051759932238396872

`A065475(A166602(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138666

/-- `A065475(A166602(n+1))` -/
def P6051759932238396872.Spec : Prop :=
  ∀ n, P6051759932238396872.a n = A138666 (n + 1)

theorem P6051759932238396872.correct : P6051759932238396872.Spec := by
  intro n
  simp only [A138666, Nat.add_sub_cancel]

end A138666

/-! ## A138666.P1018735361644692906

`eq[A000007(n), A056563(n)]`
-/

namespace A138666.P1018735361644692906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138666.P1018735361644692906

namespace A138666

/-- `eq[A000007(n), A056563(n)]` -/
def P1018735361644692906.Spec : Prop :=
  ∀ n, (P1018735361644692906.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P15781015228633987856

`eq[A000038(n), A056563(n)]`
-/

namespace A138666.P15781015228633987856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138666.P15781015228633987856

namespace A138666

/-- `eq[A000038(n), A056563(n)]` -/
def P15781015228633987856.Spec : Prop :=
  ∀ n, (P15781015228633987856.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P18430433404457843406

`A014684(A166602(n+1)+1)`
-/

namespace A138666.P18430433404457843406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A166602 (n + 1) + 1).toNat

end

end A138666.P18430433404457843406

namespace A138666

/-- `A014684(A166602(n+1)+1)` -/
def P18430433404457843406.Spec : Prop :=
  ∀ n, P18430433404457843406.a n = A138666 (n + 1)

end A138666

/-! ## A138666.P2405271317098069785

`A166602(n+1)+A057427(n)`
-/

namespace A138666.P2405271317098069785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1) + A057427 n

end

end A138666.P2405271317098069785

namespace A138666

/-- `A166602(n+1)+A057427(n)` -/
def P2405271317098069785.Spec : Prop :=
  ∀ n, P2405271317098069785.a n = A138666 (n + 1)

end A138666

/-! ## A138666.P218772289444295291

`A166602(n+1)-A057428(n)`
-/

namespace A138666.P218772289444295291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1) - A057428 n

end

end A138666.P218772289444295291

namespace A138666

/-- `A166602(n+1)-A057428(n)` -/
def P218772289444295291.Spec : Prop :=
  ∀ n, P218772289444295291.a n = A138666 (n + 1)

end A138666

/-! ## A138666.P18322632557119678928

`filter[A104275(n+1), A005171(#)]`
-/

namespace A138666.P18322632557119678928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A138666.P18322632557119678928

namespace A138666

/-- `filter[A104275(n+1), A005171(#)]` -/
def P18322632557119678928.Spec : Prop :=
  ∀ n, P18322632557119678928.a n = A138666 (n + 1)

end A138666

/-! ## A138666.P13261385700286504665

`eq[A056563(n), A154281(n+1)]`
-/

namespace A138666.P13261385700286504665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138666.P13261385700286504665

namespace A138666

/-- `eq[A056563(n), A154281(n+1)]` -/
def P13261385700286504665.Spec : Prop :=
  ∀ n, (P13261385700286504665.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P13978388024948780973

`A166602(n+1)+1-A000007(n)`
-/

namespace A138666.P13978388024948780973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1) + (1 - A000007 n)

end

end A138666.P13978388024948780973

namespace A138666

/-- `A166602(n+1)+1-A000007(n)` -/
def P13978388024948780973.Spec : Prop :=
  ∀ n, P13978388024948780973.a n = A138666 (n + 1)

end A138666

/-! ## A138666.P9254032894493636524

`∩[A018252(n+1), A104275(n+1)]`
-/

namespace A138666.P9254032894493636524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P9254032894493636524

namespace A138666

/-- `∩[A018252(n+1), A104275(n+1)]` -/
def P9254032894493636524.Spec : Prop :=
  ∀ n, (P9254032894493636524.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P10817387290712497839

`∩[A056653(n+1), A104275(n+1)]`
-/

namespace A138666.P10817387290712497839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P10817387290712497839

namespace A138666

/-- `∩[A056653(n+1), A104275(n+1)]` -/
def P10817387290712497839.Spec : Prop :=
  ∀ n, (P10817387290712497839.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P16284121579665109969

`∩[A065090(n+1), A104275(n+1)]`
-/

namespace A138666.P16284121579665109969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P16284121579665109969

namespace A138666

/-- `∩[A065090(n+1), A104275(n+1)]` -/
def P16284121579665109969.Spec : Prop :=
  ∀ n, (P16284121579665109969.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P5240535850325608595

`∩[A104275(n+1), A141468(n+1)]`
-/

namespace A138666.P5240535850325608595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P5240535850325608595

namespace A138666

/-- `∩[A104275(n+1), A141468(n+1)]` -/
def P5240535850325608595.Spec : Prop :=
  ∀ n, (P5240535850325608595.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P17249478968379861879

`∩[A104275(n+1), A171581(n+1)]`
-/

namespace A138666.P17249478968379861879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P17249478968379861879

namespace A138666

/-- `∩[A104275(n+1), A171581(n+1)]` -/
def P17249478968379861879.Spec : Prop :=
  ∀ n, (P17249478968379861879.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P10716034515729452771

`∩[A104275(n+1), A173905(n+1)]`
-/

namespace A138666.P10716034515729452771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P10716034515729452771

namespace A138666

/-- `∩[A104275(n+1), A173905(n+1)]` -/
def P10716034515729452771.Spec : Prop :=
  ∀ n, (P10716034515729452771.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P14978166367428349510

`eq[char[A056592(2*n+1)], A056563(n)]`
-/

namespace A138666.P14978166367428349510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056592 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A138666.P14978166367428349510

namespace A138666

/-- `eq[char[A056592(2*n+1)], A056563(n)]` -/
def P14978166367428349510.Spec : Prop :=
  ∀ n, (P14978166367428349510.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P16999139509226984000

`∩[A018252(n+1), A047845(n+1)+1]`
-/

namespace A138666.P16999139509226984000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P16999139509226984000

namespace A138666

/-- `∩[A018252(n+1), A047845(n+1)+1]` -/
def P16999139509226984000.Spec : Prop :=
  ∀ n, (P16999139509226984000.a n : ℤ) = A138666 (n + 1)

end A138666

/-! ## A138666.P15527546655115253277

`∩[A047845(n+1)+1, A065090(n+1)]`
-/

namespace A138666.P15527546655115253277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138666.P15527546655115253277

namespace A138666

/-- `∩[A047845(n+1)+1, A065090(n+1)]` -/
def P15527546655115253277.Spec : Prop :=
  ∀ n, (P15527546655115253277.a n : ℤ) = A138666 (n + 1)

end A138666

/-!
# A138670: Indices of 0's in Stewart's choral sequence.

The programs for A138670, the canonical program `A138670.P6235823398242760626` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138670 has offset 0).

The definition of A138670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138670.P6235823398242760626

`eq[1, C(a(floor(n/3)), n%3)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138670

/-- `eq[1, C(a(floor(n/3)), n%3)]` -/
def P6235823398242760626.Spec : Prop :=
  ∀ n, (P6235823398242760626.a n : ℤ) = A138670 n

theorem P6235823398242760626.correct : P6235823398242760626.Spec := by
  intro n
  simp only [A138670]

end A138670

/-! ## A138670.P5394010023097279590

`record[(n-lcm(2, n)/2)/((n+1)/3^val(n+1, 3))%3]`
-/

namespace A138670.P5394010023097279590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2) / (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138670.P5394010023097279590

namespace A138670

/-- `record[(n-lcm(2, n)/2)/((n+1)/3^val(n+1, 3))%3]` -/
def P5394010023097279590.Spec : Prop :=
  ∀ n, P5394010023097279590.a n = (A138670 n : ℚ)

end A138670

/-! ## A138670.P1980631874238412748

`comp[A138671(n)]`
-/

namespace A138670.P1980631874238412748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138670.P1980631874238412748

namespace A138670

/-- `comp[A138671(n)]` -/
def P1980631874238412748.Spec : Prop :=
  ∀ n, (P1980631874238412748.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P2596056460520170754

`A189636(n+1)-1`
-/

namespace A138670.P2596056460520170754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189636 (n + 1) - 1

end

end A138670.P2596056460520170754

namespace A138670

/-- `A189636(n+1)-1` -/
def P2596056460520170754.Spec : Prop :=
  ∀ n, P2596056460520170754.a n = A138670 n

end A138670

/-! ## A138670.P4219638615656571642

`comp[A189637(n+1)-1]`
-/

namespace A138670.P4219638615656571642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138670.P4219638615656571642

namespace A138670

/-- `comp[A189637(n+1)-1]` -/
def P4219638615656571642.Spec : Prop :=
  ∀ n, (P4219638615656571642.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P9312349029774552592

`∑[A106036(n)]-A106036(n)`
-/

namespace A138670.P9312349029774552592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106036 n

end

end A138670.P9312349029774552592

namespace A138670

/-- `∑[A106036(n)]-A106036(n)` -/
def P9312349029774552592.Spec : Prop :=
  ∀ n, P9312349029774552592.a n = A138670 n

end A138670

/-! ## A138670.P13940974435917684964

`lt[n, A004488(A004488(n)+1)]`
-/

namespace A138670.P13940974435917684964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004488 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138670.P13940974435917684964

namespace A138670

/-- `lt[n, A004488(A004488(n)+1)]` -/
def P13940974435917684964.Spec : Prop :=
  ∀ n, (P13940974435917684964.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P4638471268295634760

`lt[A005812(n), A005812(n+1)]`
-/

namespace A138670.P4638471268295634760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138670.P4638471268295634760

namespace A138670

/-- `lt[A005812(n), A005812(n+1)]` -/
def P4638471268295634760.Spec : Prop :=
  ∀ n, (P4638471268295634760.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P5884476098122915316

`eq[0, A116178(n)]`
-/

namespace A138670.P5884476098122915316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138670.P5884476098122915316

namespace A138670

/-- `eq[0, A116178(n)]` -/
def P5884476098122915316.Spec : Prop :=
  ∀ n, (P5884476098122915316.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P879548928602305847

`lt[A308364(n), A308364(n+1)]`
-/

namespace A138670.P879548928602305847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138670.P879548928602305847

namespace A138670

/-- `lt[A308364(n), A308364(n+1)]` -/
def P879548928602305847.Spec : Prop :=
  ∀ n, (P879548928602305847.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P16172308717798481796

`record[A026202(n+1)-1]`
-/

namespace A138670.P16172308717798481796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138670.P16172308717798481796

namespace A138670

/-- `record[A026202(n+1)-1]` -/
def P16172308717798481796.Spec : Prop :=
  ∀ n, P16172308717798481796.a n = A138670 n

end A138670

/-! ## A138670.P2534082977593324038

`eq[1, Δ[A061295(n)]]`
-/

namespace A138670.P2534082977593324038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138670.P2534082977593324038

namespace A138670

/-- `eq[1, Δ[A061295(n)]]` -/
def P2534082977593324038.Spec : Prop :=
  ∀ n, (P2534082977593324038.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P16485293706308523399

`eq[1, A305490(n+1)]`
-/

namespace A138670.P16485293706308523399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138670.P16485293706308523399

namespace A138670

/-- `eq[1, A305490(n+1)]` -/
def P16485293706308523399.Spec : Prop :=
  ∀ n, (P16485293706308523399.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P8736222597836585165

`eq[1, gcd(2, A253887(n+1))]`
-/

namespace A138670.P8736222597836585165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A253887 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138670.P8736222597836585165

namespace A138670

/-- `eq[1, gcd(2, A253887(n+1))]` -/
def P8736222597836585165.Spec : Prop :=
  ∀ n, (P8736222597836585165.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P11049152978964488033

`lt[A026203(n+1), n+2]`
-/

namespace A138670.P11049152978964488033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138670.P11049152978964488033

namespace A138670

/-- `lt[A026203(n+1), n+2]` -/
def P11049152978964488033.Spec : Prop :=
  ∀ n, (P11049152978964488033.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P13249024571064347036

`A004483(A189636(n+1))`
-/

namespace A138670.P13249024571064347036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A189636 (n + 1)).toNat

end

end A138670.P13249024571064347036

namespace A138670

/-- `A004483(A189636(n+1))` -/
def P13249024571064347036.Spec : Prop :=
  ∀ n, P13249024571064347036.a n = A138670 n

end A138670

/-! ## A138670.P9967915835285080139

`eq[A026203(n+1), A117909(n)]`
-/

namespace A138670.P9967915835285080139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138670.P9967915835285080139

namespace A138670

/-- `eq[A026203(n+1), A117909(n)]` -/
def P9967915835285080139.Spec : Prop :=
  ∀ n, (P9967915835285080139.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P2092659362580422447

`eq[A026203(n+1), A133310(n)]`
-/

namespace A138670.P2092659362580422447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138670.P2092659362580422447

namespace A138670

/-- `eq[A026203(n+1), A133310(n)]` -/
def P2092659362580422447.Spec : Prop :=
  ∀ n, (P2092659362580422447.a n : ℤ) = A138670 n

end A138670

/-! ## A138670.P17050418202953958857

`eq[A026203(n+1), A269098(n)]`
-/

namespace A138670.P17050418202953958857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269098 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138670.P17050418202953958857

namespace A138670

/-- `eq[A026203(n+1), A269098(n)]` -/
def P17050418202953958857.Spec : Prop :=
  ∀ n, (P17050418202953958857.a n : ℤ) = A138670 n

end A138670

/-!
# A138671: Indices of 1's in Stewart's choral sequence.

The programs for A138671, the canonical program `A138671.P3491732659812855299` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138671 has offset 0).

The definition of A138671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138671.P3491732659812855299

`eq[0, C(a(floor(n/3)), n%3)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A138671

/-- `eq[0, C(a(floor(n/3)), n%3)]` -/
def P3491732659812855299.Spec : Prop :=
  ∀ n, (P3491732659812855299.a n : ℤ) = A138671 n

theorem P3491732659812855299.correct : P3491732659812855299.Spec := by
  intro n
  simp only [A138671]

end A138671

/-! ## A138671.P14853133461062148468

`A189637(n+1)-1`
-/

namespace A138671.P14853133461062148468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1) - 1

end

end A138671.P14853133461062148468

namespace A138671

/-- `A189637(n+1)-1` -/
def P14853133461062148468.Spec : Prop :=
  ∀ n, P14853133461062148468.a n = A138671 n

end A138671

/-! ## A138671.P8566537083131759871

`A066182(A189637(n+1))`
-/

namespace A138671.P8566537083131759871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A189637 (n + 1)).toNat

end

end A138671.P8566537083131759871

namespace A138671

/-- `A066182(A189637(n+1))` -/
def P8566537083131759871.Spec : Prop :=
  ∀ n, P8566537083131759871.a n = A138671 n

end A138671

/-! ## A138671.P13428703573691662602

`lt[A005812(n+1), A005812(n)]`
-/

namespace A138671.P13428703573691662602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138671.P13428703573691662602

namespace A138671

/-- `lt[A005812(n+1), A005812(n)]` -/
def P13428703573691662602.Spec : Prop :=
  ∀ n, (P13428703573691662602.a n : ℤ) = A138671 n

end A138671

/-! ## A138671.P12376543020245519554

`lt[0, A116178(n)]`
-/

namespace A138671.P12376543020245519554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138671.P12376543020245519554

namespace A138671

/-- `lt[0, A116178(n)]` -/
def P12376543020245519554.Spec : Prop :=
  ∀ n, (P12376543020245519554.a n : ℤ) = A138671 n

end A138671

/-! ## A138671.P2058965788294141246

`eq[A010125(n), A116178(n)]`
-/

namespace A138671.P2058965788294141246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138671.P2058965788294141246

namespace A138671

/-- `eq[A010125(n), A116178(n)]` -/
def P2058965788294141246.Spec : Prop :=
  ∀ n, (P2058965788294141246.a n : ℤ) = A138671 n

end A138671

/-! ## A138671.P5784688388143156732

`eq[A010142(n), A116178(n)]`
-/

namespace A138671.P5784688388143156732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138671.P5784688388143156732

namespace A138671

/-- `eq[A010142(n), A116178(n)]` -/
def P5784688388143156732.Spec : Prop :=
  ∀ n, (P5784688388143156732.a n : ℤ) = A138671 n

end A138671

/-! ## A138671.P5371927489024697804

`filter[A375242(n+1), A116178(#)]`
-/

namespace A138671.P5371927489024697804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P5371927489024697804

namespace A138671

/-- `filter[A375242(n+1), A116178(#)]` -/
def P5371927489024697804.Spec : Prop :=
  ∀ n, P5371927489024697804.a n = A138671 n

end A138671

/-! ## A138671.P4455840833798059705

`filter[A001651(n+1), A116178(#)]`
-/

namespace A138671.P4455840833798059705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P4455840833798059705

namespace A138671

/-- `filter[A001651(n+1), A116178(#)]` -/
def P4455840833798059705.Spec : Prop :=
  ∀ n, P4455840833798059705.a n = A138671 n

end A138671

/-! ## A138671.P395795691142290258

`filter[A007417(n+1), A116178(#)]`
-/

namespace A138671.P395795691142290258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P395795691142290258

namespace A138671

/-- `filter[A007417(n+1), A116178(#)]` -/
def P395795691142290258.Spec : Prop :=
  ∀ n, P395795691142290258.a n = A138671 n

end A138671

/-! ## A138671.P5592138802532893989

`filter[A074232(n+2), A116178(#)]`
-/

namespace A138671.P5592138802532893989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P5592138802532893989

namespace A138671

/-- `filter[A074232(n+2), A116178(#)]` -/
def P5592138802532893989.Spec : Prop :=
  ∀ n, P5592138802532893989.a n = A138671 n

end A138671

/-! ## A138671.P5567923958431346664

`filter[A047253(n+1), A116178(#)]`
-/

namespace A138671.P5567923958431346664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P5567923958431346664

namespace A138671

/-- `filter[A047253(n+1), A116178(#)]` -/
def P5567923958431346664.Spec : Prop :=
  ∀ n, P5567923958431346664.a n = A138671 n

end A138671

/-! ## A138671.P16763154862365678334

`filter[A047263(n+1), A116178(#)]`
-/

namespace A138671.P16763154862365678334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P16763154862365678334

namespace A138671

/-- `filter[A047263(n+1), A116178(#)]` -/
def P16763154862365678334.Spec : Prop :=
  ∀ n, P16763154862365678334.a n = A138671 n

end A138671

/-! ## A138671.P4163413466458182057

`filter[A101545(n+1), A116178(#)]`
-/

namespace A138671.P4163413466458182057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P4163413466458182057

namespace A138671

/-- `filter[A101545(n+1), A116178(#)]` -/
def P4163413466458182057.Spec : Prop :=
  ∀ n, P4163413466458182057.a n = A138671 n

end A138671

/-! ## A138671.P10276366780422093491

`filter[A168183(n+1), A116178(#)]`
-/

namespace A138671.P10276366780422093491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P10276366780422093491

namespace A138671

/-- `filter[A168183(n+1), A116178(#)]` -/
def P10276366780422093491.Spec : Prop :=
  ∀ n, P10276366780422093491.a n = A138671 n

end A138671

/-! ## A138671.P9622272758194080378

`filter[A168186(n+1), A116178(#)]`
-/

namespace A138671.P9622272758194080378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P9622272758194080378

namespace A138671

/-- `filter[A168186(n+1), A116178(#)]` -/
def P9622272758194080378.Spec : Prop :=
  ∀ n, P9622272758194080378.a n = A138671 n

end A138671

/-! ## A138671.P11464618338292246726

`filter[A074940(n+1), A116178(#)]`
-/

namespace A138671.P11464618338292246726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P11464618338292246726

namespace A138671

/-- `filter[A074940(n+1), A116178(#)]` -/
def P11464618338292246726.Spec : Prop :=
  ∀ n, P11464618338292246726.a n = A138671 n

end A138671

/-! ## A138671.P215540291220419839

`filter[A014132(n+1), A116178(#)]`
-/

namespace A138671.P215540291220419839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P215540291220419839

namespace A138671

/-- `filter[A014132(n+1), A116178(#)]` -/
def P215540291220419839.Spec : Prop :=
  ∀ n, P215540291220419839.a n = A138671 n

end A138671

/-! ## A138671.P6199013163477108522

`filter[A232741(n+1), A116178(#)]`
-/

namespace A138671.P6199013163477108522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A138671.P6199013163477108522

namespace A138671

/-- `filter[A232741(n+1), A116178(#)]` -/
def P6199013163477108522.Spec : Prop :=
  ∀ n, P6199013163477108522.a n = A138671 n

end A138671

/-!
# A138672: a(n) = prime(n)^3 mod prime(n-1).

The programs for A138672, the canonical program `A138672.P13453583101781817498` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138672 has offset 2).

The definition of A138672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138672.P13453583101781817498

`A129701(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138672

/-- `A129701(n+1)%A000040(n+1)` -/
def P13453583101781817498.Spec : Prop :=
  ∀ n, P13453583101781817498.a n = A138672 (n + 2)

theorem P13453583101781817498.correct : P13453583101781817498.Spec := by
  intro n
  simp only [A138672, Nat.add_sub_cancel]

end A138672

/-! ## A138672.P9424908742497087982

`A133534(n+1)%A000040(n+1)`
-/

namespace A138672.P9424908742497087982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133534 (n + 1)) (A000040 (n + 1))

end

end A138672.P9424908742497087982

namespace A138672

/-- `A133534(n+1)%A000040(n+1)` -/
def P9424908742497087982.Spec : Prop :=
  ∀ n, P9424908742497087982.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P7140199522739086259

`(A065091(n+1)^3)%A000040(n+1)`
-/

namespace A138672.P7140199522739086259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1) ^ 3) (A000040 (n + 1))

end

end A138672.P7140199522739086259

namespace A138672

/-- `(A065091(n+1)^3)%A000040(n+1)` -/
def P7140199522739086259.Spec : Prop :=
  ∀ n, P7140199522739086259.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P13477343915451598192

`A000578(A001223(n+1))%A000040(n+1)`
-/

namespace A138672.P13477343915451598192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138672.P13477343915451598192

namespace A138672

/-- `A000578(A001223(n+1))%A000040(n+1)` -/
def P13477343915451598192.Spec : Prop :=
  ∀ n, P13477343915451598192.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P8297462516242914173

`A030078(n+2)%Δ[A007504(n)]`
-/

namespace A138672.P8297462516242914173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 2)) (f1 (n + 1) - f1 n)

end

end A138672.P8297462516242914173

namespace A138672

/-- `A030078(n+2)%Δ[A007504(n)]` -/
def P8297462516242914173.Spec : Prop :=
  ∀ n, P8297462516242914173.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P421937127402854186

`Δ[A030078(n+1)]%A000040(n+1)`
-/

namespace A138672.P421937127402854186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A138672.P421937127402854186

namespace A138672

/-- `Δ[A030078(n+1)]%A000040(n+1)` -/
def P421937127402854186.Spec : Prop :=
  ∀ n, P421937127402854186.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P6119629117922174605

`(A000040(n+2)^3)%A000040(n+1)`
-/

namespace A138672.P6119629117922174605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 3) (A000040 (n + 1))

end

end A138672.P6119629117922174605

namespace A138672

/-- `(A000040(n+2)^3)%A000040(n+1)` -/
def P6119629117922174605.Spec : Prop :=
  ∀ n, P6119629117922174605.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P4936868965754573470

`Δ[∑[A054541(n+1)]^3]%(A040976(n+1)+2)`
-/

namespace A138672.P4936868965754573470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A040976 (n + 1) + 2)

end

end A138672.P4936868965754573470

namespace A138672

/-- `Δ[∑[A054541(n+1)]^3]%(A040976(n+1)+2)` -/
def P4936868965754573470.Spec : Prop :=
  ∀ n, P4936868965754573470.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P6105956964229503171

`(A000040(n+2)*A001248(n+2))%A000040(n+1)`
-/

namespace A138672.P6105956964229503171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) * A001248 (n + 2)) (A000040 (n + 1))

end

end A138672.P6105956964229503171

namespace A138672

/-- `(A000040(n+2)*A001248(n+2))%A000040(n+1)` -/
def P6105956964229503171.Spec : Prop :=
  ∀ n, P6105956964229503171.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P6264232711601137741

`(p?[2*n+1]^3)%record[A014963(n+2)]`
-/

namespace A138672.P6264232711601137741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3 : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138672.P6264232711601137741

namespace A138672

/-- `(p?[2*n+1]^3)%record[A014963(n+2)]` -/
def P6264232711601137741.Spec : Prop :=
  ∀ n, P6264232711601137741.a n = A138672 (n + 2)

end A138672

/-! ## A138672.P15202446918240441574

`Δ[record[A051664(n+1)^3]]%(A040976(n+1)+2)`
-/

namespace A138672.P15202446918240441574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A040976 (n + 1) + 2)

end

end A138672.P15202446918240441574

namespace A138672

/-- `Δ[record[A051664(n+1)^3]]%(A040976(n+1)+2)` -/
def P15202446918240441574.Spec : Prop :=
  ∀ n, P15202446918240441574.a n = A138672 (n + 2)

end A138672

/-!
# A138673: a(n) = prime(n)^4 mod prime(n-1).

The programs for A138673, the canonical program `A138673.P13662131802977014439` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138673 has offset 2).

The definition of A138673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138673.P13662131802977014439

`A133535(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138673

/-- `A133535(n+1)%A000040(n+1)` -/
def P13662131802977014439.Spec : Prop :=
  ∀ n, P13662131802977014439.a n = A138673 (n + 2)

theorem P13662131802977014439.correct : P13662131802977014439.Spec := by
  intro n
  simp only [A138673, Nat.add_sub_cancel]

end A138673

/-! ## A138673.P2255708523950528433

`A276963(n+1)%A000040(n+1)`
-/

namespace A138673.P2255708523950528433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276963 (n + 1)) (A000040 (n + 1))

end

end A138673.P2255708523950528433

namespace A138673

/-- `A276963(n+1)%A000040(n+1)` -/
def P2255708523950528433.Spec : Prop :=
  ∀ n, P2255708523950528433.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P16413262765276627016

`Δ[A048852(n)]²%A000040(n+1)`
-/

namespace A138673.P16413262765276627016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A000040 (n + 1))

end

end A138673.P16413262765276627016

namespace A138673

/-- `Δ[A048852(n)]²%A000040(n+1)` -/
def P16413262765276627016.Spec : Prop :=
  ∀ n, P16413262765276627016.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P12502783750825764701

`A069482(n+1)²%A000040(n+1)`
-/

namespace A138673.P12502783750825764701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069482 (n + 1) ^ 2) (A000040 (n + 1))

end

end A138673.P12502783750825764701

namespace A138673

/-- `A069482(n+1)²%A000040(n+1)` -/
def P12502783750825764701.Spec : Prop :=
  ∀ n, P12502783750825764701.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P7254233163276942076

`A038702(n+2)²%A000040(n+1)`
-/

namespace A138673.P7254233163276942076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138673.P7254233163276942076

namespace A138673

/-- `A038702(n+2)²%A000040(n+1)` -/
def P7254233163276942076.Spec : Prop :=
  ∀ n, P7254233163276942076.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P10787867525128327367

`(A001223(n+1)^4)%A000040(n+1)`
-/

namespace A138673.P10787867525128327367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) ^ 4) (A000040 (n + 1))

end

end A138673.P10787867525128327367

namespace A138673

/-- `(A001223(n+1)^4)%A000040(n+1)` -/
def P10787867525128327367.Spec : Prop :=
  ∀ n, P10787867525128327367.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P11052583043379498160

`A000583(A001223(n+1))%A000040(n+1)`
-/

namespace A138673.P11052583043379498160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138673.P11052583043379498160

namespace A138673

/-- `A000583(A001223(n+1))%A000040(n+1)` -/
def P11052583043379498160.Spec : Prop :=
  ∀ n, P11052583043379498160.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P15463849899551848470

`A000583(A065091(n+1)%A000040(n+1))%A000040(n+1)`
-/

namespace A138673.P15463849899551848470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (Int.tmod (A065091 (n + 1)) (A000040 (n + 1))).toNat) (A000040 (n + 1))

end

end A138673.P15463849899551848470

namespace A138673

/-- `A000583(A065091(n+1)%A000040(n+1))%A000040(n+1)` -/
def P15463849899551848470.Spec : Prop :=
  ∀ n, P15463849899551848470.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P7135870423723075981

`A001248(n+2)²%A008578(n+2)`
-/

namespace A138673.P7135870423723075981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 2) ^ 2) (A008578 (n + 2))

end

end A138673.P7135870423723075981

namespace A138673

/-- `A001248(n+2)²%A008578(n+2)` -/
def P7135870423723075981.Spec : Prop :=
  ∀ n, P7135870423723075981.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P5699319710420117278

`(A000040(n+2)^4)%A000040(n+1)`
-/

namespace A138673.P5699319710420117278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 4) (A000040 (n + 1))

end

end A138673.P5699319710420117278

namespace A138673

/-- `(A000040(n+2)^4)%A000040(n+1)` -/
def P5699319710420117278.Spec : Prop :=
  ∀ n, P5699319710420117278.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P17932759893413441662

`Δ[A000040(n+1)]²²%record[A006530(n+2)]`
-/

namespace A138673.P17932759893413441662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) - f1 n) ^ 2) ^ 2) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138673.P17932759893413441662

namespace A138673

/-- `Δ[A000040(n+1)]²²%record[A006530(n+2)]` -/
def P17932759893413441662.Spec : Prop :=
  ∀ n, P17932759893413441662.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P12041883709613736504

`record[A020639(n+3)^4]%record[A006530(n+2)]`
-/

namespace A138673.P12041883709613736504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138673.P12041883709613736504

namespace A138673

/-- `record[A020639(n+3)^4]%record[A006530(n+2)]` -/
def P12041883709613736504.Spec : Prop :=
  ∀ n, P12041883709613736504.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P9904703337615269816

`Δ[record[A000010(n+1)]]²²%A000040(n+1)`
-/

namespace A138673.P9904703337615269816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) - f1 n) ^ 2) ^ 2) (A000040 (n + 1))

end

end A138673.P9904703337615269816

namespace A138673

/-- `Δ[record[A000010(n+1)]]²²%A000040(n+1)` -/
def P9904703337615269816.Spec : Prop :=
  ∀ n, P9904703337615269816.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P2354781966246831611

`A000040(n+2)²²%record[A014963(n+2)]`
-/

namespace A138673.P2354781966246831611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A000040 (n + 2) ^ 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A138673.P2354781966246831611

namespace A138673

/-- `A000040(n+2)²²%record[A014963(n+2)]` -/
def P2354781966246831611.Spec : Prop :=
  ∀ n, P2354781966246831611.a n = A138673 (n + 2)

end A138673

/-! ## A138673.P5875987118270574343

`Δ[A000040(n+1)²²]%record[A051664(n+1)]`
-/

namespace A138673.P5875987118270574343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138673.P5875987118270574343

namespace A138673

/-- `Δ[A000040(n+1)²²]%record[A051664(n+1)]` -/
def P5875987118270574343.Spec : Prop :=
  ∀ n, P5875987118270574343.a n = A138673 (n + 2)

end A138673

/-!
# A138674: a(n) = prime(n)^5 mod prime(n-1).

The programs for A138674, the canonical program `A138674.P18389301819403337778` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138674 has offset 2).

The definition of A138674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138674.P18389301819403337778

`A133536(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138674

/-- `A133536(n+1)%A000040(n+1)` -/
def P18389301819403337778.Spec : Prop :=
  ∀ n, P18389301819403337778.a n = A138674 (n + 2)

theorem P18389301819403337778.correct : P18389301819403337778.Spec := by
  intro n
  simp only [A138674, Nat.add_sub_cancel]

end A138674

/-! ## A138674.P14366934395460575612

`(A001223(n+1)^5)%A000040(n+1)`
-/

namespace A138674.P14366934395460575612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) ^ 5) (A000040 (n + 1))

end

end A138674.P14366934395460575612

namespace A138674

/-- `(A001223(n+1)^5)%A000040(n+1)` -/
def P14366934395460575612.Spec : Prop :=
  ∀ n, P14366934395460575612.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P612821932756930026

`A000584(A001223(n+1))%A000040(n+1)`
-/

namespace A138674.P612821932756930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138674.P612821932756930026

namespace A138674

/-- `A000584(A001223(n+1))%A000040(n+1)` -/
def P612821932756930026.Spec : Prop :=
  ∀ n, P612821932756930026.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P14632976252491433425

`A050997(n+2)%A000040(n+1)`
-/

namespace A138674.P14632976252491433425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 2)) (A000040 (n + 1))

end

end A138674.P14632976252491433425

namespace A138674

/-- `A050997(n+2)%A000040(n+1)` -/
def P14632976252491433425.Spec : Prop :=
  ∀ n, P14632976252491433425.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P4443392738146023738

`(A000040(n+2)^5)%A000040(n+1)`
-/

namespace A138674.P4443392738146023738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 5) (A000040 (n + 1))

end

end A138674.P4443392738146023738

namespace A138674

/-- `(A000040(n+2)^5)%A000040(n+1)` -/
def P4443392738146023738.Spec : Prop :=
  ∀ n, P4443392738146023738.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P4015246289893012657

`record[A006530(n+3)^5]%record[A020639(n+2)]`
-/

namespace A138674.P4015246289893012657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) ^ 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138674.P4015246289893012657

namespace A138674

/-- `record[A006530(n+3)^5]%record[A020639(n+2)]` -/
def P4015246289893012657.Spec : Prop :=
  ∀ n, P4015246289893012657.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P241375036903767068

`Δ[record[A351193(n+2)]]%A000040(n+1)`
-/

namespace A138674.P241375036903767068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A138674.P241375036903767068

namespace A138674

/-- `Δ[record[A351193(n+2)]]%A000040(n+1)` -/
def P241375036903767068.Spec : Prop :=
  ∀ n, P241375036903767068.a n = A138674 (n + 2)

end A138674

/-! ## A138674.P4844575317557086686

`A000584(A000040(n+2))%p?[A001057(n)]`
-/

namespace A138674.P4844575317557086686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 (A000040 (n + 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138674.P4844575317557086686

namespace A138674

/-- `A000584(A000040(n+2))%p?[A001057(n)]` -/
def P4844575317557086686.Spec : Prop :=
  ∀ n, P4844575317557086686.a n = A138674 (n + 2)

end A138674

/-!
# A138675: a(n) = prime(n)^6 mod prime(n-1).

The programs for A138675, the canonical program `A138675.P18377254725840946739` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138675 has offset 2).

The definition of A138675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138675.P18377254725840946739

`A133537(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138675

/-- `A133537(n+1)%A000040(n+1)` -/
def P18377254725840946739.Spec : Prop :=
  ∀ n, P18377254725840946739.a n = A138675 (n + 2)

theorem P18377254725840946739.correct : P18377254725840946739.Spec := by
  intro n
  simp only [A138675, Nat.add_sub_cancel]

end A138675

/-! ## A138675.P5529647432753676996

`A001014(A001223(n+1))%A000040(n+1)`
-/

namespace A138675.P5529647432753676996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138675.P5529647432753676996

namespace A138675

/-- `A001014(A001223(n+1))%A000040(n+1)` -/
def P5529647432753676996.Spec : Prop :=
  ∀ n, P5529647432753676996.a n = A138675 (n + 2)

end A138675

/-! ## A138675.P15231003595682070973

`A030516(n+2)%A000040(n+1)`
-/

namespace A138675.P15231003595682070973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030516 (n + 2)) (A000040 (n + 1))

end

end A138675.P15231003595682070973

namespace A138675

/-- `A030516(n+2)%A000040(n+1)` -/
def P15231003595682070973.Spec : Prop :=
  ∀ n, P15231003595682070973.a n = A138675 (n + 2)

end A138675

/-! ## A138675.P6789289417557741420

`A030078(n+2)²%A000040(n+1)`
-/

namespace A138675.P6789289417557741420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138675.P6789289417557741420

namespace A138675

/-- `A030078(n+2)²%A000040(n+1)` -/
def P6789289417557741420.Spec : Prop :=
  ∀ n, P6789289417557741420.a n = A138675 (n + 2)

end A138675

/-! ## A138675.P14217216066684947862

`(A000040(n+2)^6)%A000040(n+1)`
-/

namespace A138675.P14217216066684947862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 6) (A000040 (n + 1))

end

end A138675.P14217216066684947862

namespace A138675

/-- `(A000040(n+2)^6)%A000040(n+1)` -/
def P14217216066684947862.Spec : Prop :=
  ∀ n, P14217216066684947862.a n = A138675 (n + 2)

end A138675

/-! ## A138675.P17934159058837765995

`(p?[2*n+1]^6)%record[A014963(n+2)]`
-/

namespace A138675.P17934159058837765995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 6 : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A138675.P17934159058837765995

namespace A138675

/-- `(p?[2*n+1]^6)%record[A014963(n+2)]` -/
def P17934159058837765995.Spec : Prop :=
  ∀ n, P17934159058837765995.a n = A138675 (n + 2)

end A138675

/-! ## A138675.P5712730847490363731

`A001014(A000040(n+2))%A000040(n+1)`
-/

namespace A138675.P5712730847490363731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 (A000040 (n + 2)).toNat) (A000040 (n + 1))

end

end A138675.P5712730847490363731

namespace A138675

/-- `A001014(A000040(n+2))%A000040(n+1)` -/
def P5712730847490363731.Spec : Prop :=
  ∀ n, P5712730847490363731.a n = A138675 (n + 2)

end A138675

/-!
# A138676: a(n) = prime(n)^7 mod prime(n-1).

The programs for A138676, the canonical program `A138676.P15800436432943780900` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138676 has offset 2).

The definition of A138676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138676.P15800436432943780900

`A086874(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138676

/-- `A086874(n+1)%A000040(n+1)` -/
def P15800436432943780900.Spec : Prop :=
  ∀ n, P15800436432943780900.a n = A138676 (n + 2)

theorem P15800436432943780900.correct : P15800436432943780900.Spec := by
  intro n
  simp only [A138676, Nat.add_sub_cancel]

end A138676

/-! ## A138676.P12239620153227988365

`A133538(n+1)%A000040(n+1)`
-/

namespace A138676.P12239620153227988365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133538 (n + 1)) (A000040 (n + 1))

end

end A138676.P12239620153227988365

namespace A138676

/-- `A133538(n+1)%A000040(n+1)` -/
def P12239620153227988365.Spec : Prop :=
  ∀ n, P12239620153227988365.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P18004845006397776156

`A001015(A001223(n+1))%A000040(n+1)`
-/

namespace A138676.P18004845006397776156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138676.P18004845006397776156

namespace A138676

/-- `A001015(A001223(n+1))%A000040(n+1)` -/
def P18004845006397776156.Spec : Prop :=
  ∀ n, P18004845006397776156.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P12308253876879137011

`(A000040(n+2)^7)%A000040(n+1)`
-/

namespace A138676.P12308253876879137011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 7) (A000040 (n + 1))

end

end A138676.P12308253876879137011

namespace A138676

/-- `(A000040(n+2)^7)%A000040(n+1)` -/
def P12308253876879137011.Spec : Prop :=
  ∀ n, P12308253876879137011.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P558407495407051129

`A001015(Δ[A000040(n+1)])%A000040(n+1)`
-/

namespace A138676.P558407495407051129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1))

end

end A138676.P558407495407051129

namespace A138676

/-- `A001015(Δ[A000040(n+1)])%A000040(n+1)` -/
def P558407495407051129.Spec : Prop :=
  ∀ n, P558407495407051129.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P18344842826002168001

`(A000040(n+2)*A030516(n+2))%A000040(n+1)`
-/

namespace A138676.P18344842826002168001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) * A030516 (n + 2)) (A000040 (n + 1))

end

end A138676.P18344842826002168001

namespace A138676

/-- `(A000040(n+2)*A030516(n+2))%A000040(n+1)` -/
def P18344842826002168001.Spec : Prop :=
  ∀ n, P18344842826002168001.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P17685450099871328248

`(Δ[A008578(n+2)]^7)%A008578(n+2)`
-/

namespace A138676.P17685450099871328248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 7) (A008578 (n + 2))

end

end A138676.P17685450099871328248

namespace A138676

/-- `(Δ[A008578(n+2)]^7)%A008578(n+2)` -/
def P17685450099871328248.Spec : Prop :=
  ∀ n, P17685450099871328248.a n = A138676 (n + 2)

end A138676

/-! ## A138676.P8125941442393442789

`A001015(A000040(n+2))%A000040(n+1)`
-/

namespace A138676.P8125941442393442789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 (A000040 (n + 2)).toNat) (A000040 (n + 1))

end

end A138676.P8125941442393442789

namespace A138676

/-- `A001015(A000040(n+2))%A000040(n+1)` -/
def P8125941442393442789.Spec : Prop :=
  ∀ n, P8125941442393442789.a n = A138676 (n + 2)

end A138676

/-!
# A138677: Prime(n)^8 mod prime(n-1).

The programs for A138677, the canonical program `A138677.P14282766057730873660` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138677 has offset 2).

The definition of A138677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138677.P14282766057730873660

`A069482(n+1)²²%A000040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138677

/-- `A069482(n+1)²²%A000040(n+1)` -/
def P14282766057730873660.Spec : Prop :=
  ∀ n, P14282766057730873660.a n = A138677 (n + 2)

theorem P14282766057730873660.correct : P14282766057730873660.Spec := by
  intro n
  simp only [A138677, Nat.add_sub_cancel]

end A138677

/-! ## A138677.P2223975058122029083

`A038702(n+2)²²%A000040(n+1)`
-/

namespace A138677.P2223975058122029083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A038702 (n + 2) ^ 2) ^ 2) (A000040 (n + 1))

end

end A138677.P2223975058122029083

namespace A138677

/-- `A038702(n+2)²²%A000040(n+1)` -/
def P2223975058122029083.Spec : Prop :=
  ∀ n, P2223975058122029083.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P6647256625073919047

`A000583(A076821(n+1))%Δ[A007504(n)]`
-/

namespace A138677.P6647256625073919047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (A076821 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A138677.P6647256625073919047

namespace A138677

/-- `A000583(A076821(n+1))%Δ[A007504(n)]` -/
def P6647256625073919047.Spec : Prop :=
  ∀ n, P6647256625073919047.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P17594670621490382425

`A001016(A001223(n+1))%A000040(n+1)`
-/

namespace A138677.P17594670621490382425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138677.P17594670621490382425

namespace A138677

/-- `A001016(A001223(n+1))%A000040(n+1)` -/
def P17594670621490382425.Spec : Prop :=
  ∀ n, P17594670621490382425.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P16000587032590968290

`A030514(n+2)²%A008578(n+2)`
-/

namespace A138677.P16000587032590968290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030514 (n + 2) ^ 2) (A008578 (n + 2))

end

end A138677.P16000587032590968290

namespace A138677

/-- `A030514(n+2)²%A008578(n+2)` -/
def P16000587032590968290.Spec : Prop :=
  ∀ n, P16000587032590968290.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P15823071736785430701

`(A000040(n+2)^8)%A000040(n+1)`
-/

namespace A138677.P15823071736785430701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 8) (A000040 (n + 1))

end

end A138677.P15823071736785430701

namespace A138677

/-- `(A000040(n+2)^8)%A000040(n+1)` -/
def P15823071736785430701.Spec : Prop :=
  ∀ n, P15823071736785430701.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P9894852533511361116

`Δ[A001248(n+1)]²²%A000040(n+1)`
-/

namespace A138677.P9894852533511361116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) - f1 n) ^ 2) ^ 2) (A000040 (n + 1))

end

end A138677.P9894852533511361116

namespace A138677

/-- `Δ[A001248(n+1)]²²%A000040(n+1)` -/
def P9894852533511361116.Spec : Prop :=
  ∀ n, P9894852533511361116.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P619005037230650245

`A001016(Δ[A000040(n+1)])%A000040(n+1)`
-/

namespace A138677.P619005037230650245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1))

end

end A138677.P619005037230650245

namespace A138677

/-- `A001016(Δ[A000040(n+1)])%A000040(n+1)` -/
def P619005037230650245.Spec : Prop :=
  ∀ n, P619005037230650245.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P4376979045696650595

`A001016(A001223(n+1))%p?[A001057(n)]`
-/

namespace A138677.P4376979045696650595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 (A001223 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138677.P4376979045696650595

namespace A138677

/-- `A001016(A001223(n+1))%p?[A001057(n)]` -/
def P4376979045696650595.Spec : Prop :=
  ∀ n, P4376979045696650595.a n = A138677 (n + 2)

end A138677

/-! ## A138677.P2493339308345784269

`A000583(A038702(n+2))%p?[A001057(n)]`
-/

namespace A138677.P2493339308345784269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (A038702 (n + 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138677.P2493339308345784269

namespace A138677

/-- `A000583(A038702(n+2))%p?[A001057(n)]` -/
def P2493339308345784269.Spec : Prop :=
  ∀ n, P2493339308345784269.a n = A138677 (n + 2)

end A138677

/-!
# A138678: Prime(n)^9 mod prime(n-1).

The programs for A138678, the canonical program `A138678.P13571776916045374750` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138678 has offset 2).

The definition of A138678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138678.P11413703463730454950

`A001017(A001223(n+1))%Δ[A007504(n)]`
-/

namespace A138678.P11413703463730454950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 (A001223 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A138678.P11413703463730454950

namespace A138678

/-- `A001017(A001223(n+1))%Δ[A007504(n)]` -/
def P11413703463730454950.Spec : Prop :=
  ∀ n, P11413703463730454950.a n = A138678 (n + 2)

end A138678

/-! ## A138678.P13571776916045374750

`(A038702(n+2)*A138676(n+2))%A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138678

/-- `(A038702(n+2)*A138676(n+2))%A000040(n+1)` -/
def P13571776916045374750.Spec : Prop :=
  ∀ n, P13571776916045374750.a n = A138678 (n + 2)

theorem P13571776916045374750.correct : P13571776916045374750.Spec := by
  intro n
  simp only [A138678, Nat.add_sub_cancel]

end A138678

/-! ## A138678.P8007773015076282732

`(A000040(n+2)^9)%A000040(n+1)`
-/

namespace A138678.P8007773015076282732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 9) (A000040 (n + 1))

end

end A138678.P8007773015076282732

namespace A138678

/-- `(A000040(n+2)^9)%A000040(n+1)` -/
def P8007773015076282732.Spec : Prop :=
  ∀ n, P8007773015076282732.a n = A138678 (n + 2)

end A138678

/-! ## A138678.P8787194318226758624

`A001017(Δ[A000040(n+1)])%A000040(n+1)`
-/

namespace A138678.P8787194318226758624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1))

end

end A138678.P8787194318226758624

namespace A138678

/-- `A001017(Δ[A000040(n+1)])%A000040(n+1)` -/
def P8787194318226758624.Spec : Prop :=
  ∀ n, P8787194318226758624.a n = A138678 (n + 2)

end A138678

/-! ## A138678.P3007890511017575205

`A001017(A065091(n+1))%A273960(n+1)`
-/

namespace A138678.P3007890511017575205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 (A065091 (n + 1)).toNat) (A273960 (n + 1))

end

end A138678.P3007890511017575205

namespace A138678

/-- `A001017(A065091(n+1))%A273960(n+1)` -/
def P3007890511017575205.Spec : Prop :=
  ∀ n, P3007890511017575205.a n = A138678 (n + 2)

end A138678

/-!
# A138679: Prime(n)^10 mod prime(n-1).

The programs for A138679, the canonical program `A138679.P638953005839991339` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138679 has offset 2).

The definition of A138679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138679.P638953005839991339

`A138674(n+2)²%A000040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138679

/-- `A138674(n+2)²%A000040(n+1)` -/
def P638953005839991339.Spec : Prop :=
  ∀ n, P638953005839991339.a n = A138679 (n + 2)

theorem P638953005839991339.correct : P638953005839991339.Spec := by
  intro n
  simp only [A138679, Nat.add_sub_cancel]

end A138679

/-! ## A138679.P9575642889515772929

`A000584(A001223(n+1)²)%A000040(n+1)`
-/

namespace A138679.P9575642889515772929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 (A001223 (n + 1) ^ 2).toNat) (A000040 (n + 1))

end

end A138679.P9575642889515772929

namespace A138679

/-- `A000584(A001223(n+1)²)%A000040(n+1)` -/
def P9575642889515772929.Spec : Prop :=
  ∀ n, P9575642889515772929.a n = A138679 (n + 2)

end A138679

/-! ## A138679.P14574354422726211855

`(A001223(n+1)*A138678(n+2))%A000040(n+1)`
-/

namespace A138679.P14574354422726211855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) * A138678 (n + 2)) (A000040 (n + 1))

end

end A138679.P14574354422726211855

namespace A138679

/-- `(A001223(n+1)*A138678(n+2))%A000040(n+1)` -/
def P14574354422726211855.Spec : Prop :=
  ∀ n, P14574354422726211855.a n = A138679 (n + 2)

end A138679

/-! ## A138679.P1411733939199865965

`(A038702(n+2)*A138677(n+2))%A000040(n+1)`
-/

namespace A138679.P1411733939199865965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) * A138677 (n + 2)) (A000040 (n + 1))

end

end A138679.P1411733939199865965

namespace A138679

/-- `(A038702(n+2)*A138677(n+2))%A000040(n+1)` -/
def P1411733939199865965.Spec : Prop :=
  ∀ n, P1411733939199865965.a n = A138679 (n + 2)

end A138679

/-! ## A138679.P4066935393155560690

`(A000040(n+2)^10)%A000040(n+1)`
-/

namespace A138679.P4066935393155560690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 10) (A000040 (n + 1))

end

end A138679.P4066935393155560690

namespace A138679

/-- `(A000040(n+2)^10)%A000040(n+1)` -/
def P4066935393155560690.Spec : Prop :=
  ∀ n, P4066935393155560690.a n = A138679 (n + 2)

end A138679

/-! ## A138679.P8299144488255667996

`A008454(Δ[A000040(n+1)])%A000040(n+1)`
-/

namespace A138679.P8299144488255667996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008454 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1))

end

end A138679.P8299144488255667996

namespace A138679

/-- `A008454(Δ[A000040(n+1)])%A000040(n+1)` -/
def P8299144488255667996.Spec : Prop :=
  ∀ n, P8299144488255667996.a n = A138679 (n + 2)

end A138679

/-!
# A138680: Prime(n)^11 mod prime(n-1).

The programs for A138680, the canonical program `A138680.P17821806884942595706` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138680 has offset 2).

The definition of A138680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138680.P2831527664996834185

`A008455(A001223(n+1))%A000040(n+1)`
-/

namespace A138680.P2831527664996834185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008455 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138680.P2831527664996834185

namespace A138680

/-- `A008455(A001223(n+1))%A000040(n+1)` -/
def P2831527664996834185.Spec : Prop :=
  ∀ n, P2831527664996834185.a n = A138680 (n + 2)

end A138680

/-! ## A138680.P968206601093689077

`(A001223(n+1)*A138679(n+2))%A000040(n+1)`
-/

namespace A138680.P968206601093689077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) * A138679 (n + 2)) (A000040 (n + 1))

end

end A138680.P968206601093689077

namespace A138680

/-- `(A001223(n+1)*A138679(n+2))%A000040(n+1)` -/
def P968206601093689077.Spec : Prop :=
  ∀ n, P968206601093689077.a n = A138680 (n + 2)

end A138680

/-! ## A138680.P17821806884942595706

`(A038702(n+2)*A138678(n+2))%A000040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138680

/-- `(A038702(n+2)*A138678(n+2))%A000040(n+1)` -/
def P17821806884942595706.Spec : Prop :=
  ∀ n, P17821806884942595706.a n = A138680 (n + 2)

theorem P17821806884942595706.correct : P17821806884942595706.Spec := by
  intro n
  simp only [A138680, Nat.add_sub_cancel]

end A138680

/-! ## A138680.P4745276288011162887

`A008455(Δ[A000040(n+1)])%A000040(n+1)`
-/

namespace A138680.P4745276288011162887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008455 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1))

end

end A138680.P4745276288011162887

namespace A138680

/-- `A008455(Δ[A000040(n+1)])%A000040(n+1)` -/
def P4745276288011162887.Spec : Prop :=
  ∀ n, P4745276288011162887.a n = A138680 (n + 2)

end A138680

/-!
# A138681: Prime(n)^12 mod prime(n-1).

The programs for A138681, the canonical program `A138681.P10355278238073095109` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138681 has offset 2).

The definition of A138681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138681.P10355278238073095109

`A138675(n+2)²%A000040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138681

/-- `A138675(n+2)²%A000040(n+1)` -/
def P10355278238073095109.Spec : Prop :=
  ∀ n, P10355278238073095109.a n = A138681 (n + 2)

theorem P10355278238073095109.correct : P10355278238073095109.Spec := by
  intro n
  simp only [A138681, Nat.add_sub_cancel]

end A138681

/-! ## A138681.P1222881224740551821

`A008456(A001223(n+1))%A000040(n+1)`
-/

namespace A138681.P1222881224740551821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008456 (A001223 (n + 1)).toNat) (A000040 (n + 1))

end

end A138681.P1222881224740551821

namespace A138681

/-- `A008456(A001223(n+1))%A000040(n+1)` -/
def P1222881224740551821.Spec : Prop :=
  ∀ n, P1222881224740551821.a n = A138681 (n + 2)

end A138681

/-! ## A138681.P10195337914218425659

`A138675(n+2)²%p?[A004442(n)]`
-/

namespace A138681.P10195337914218425659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138675 (n + 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A138681.P10195337914218425659

namespace A138681

/-- `A138675(n+2)²%p?[A004442(n)]` -/
def P10195337914218425659.Spec : Prop :=
  ∀ n, P10195337914218425659.a n = A138681 (n + 2)

end A138681

/-!
# A138683: a(1)=1 and, for n>1, a(n) is the smallest integer greater than a(n-1) such that a(n) and a(k) do not sum to a term of A001333 (Numerators of continued fraction convergents to sqrt(2)).

The programs for A138683, there is no canonical definition to state claims against.
-/

/-! ## A138683.P5527965676883581267

`A138684(n)+a(n-1)` with `a(0)=2`
-/

namespace A138683.P5527965676883581267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A138684 n + a (n - 1)

end

end A138683.P5527965676883581267

/-! ## A138683.P14327051853243929424

`∑[A138684(abs(1-n)+1)]-1`
-/

namespace A138683.P14327051853243929424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138684 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A138683.P14327051853243929424

/-! ## A138683.P10540900344018904331

`∑[A138684(n^(a(n-1)%2))]` with `a(0)=2`
-/

namespace A138683.P10540900344018904331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A138684 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (f1 (n - 1)) 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138683.P10540900344018904331

/-! ## A138683.P9220010744995475719

`1+∑[A138684(A028310(n))]`
-/

namespace A138683.P9220010744995475719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138683.P9220010744995475719

/-! ## A138683.P1871210991449768016

`A233583(∑[A138684(abs(1-n)+1)])`
-/

namespace A138683.P1871210991449768016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138684 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138683.P1871210991449768016

/-! ## A138683.P6291246996904281317

`∑[A054977(n)*A138684(A028310(n))]`
-/

namespace A138683.P6291246996904281317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A138684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138683.P6291246996904281317

/-! ## A138683.P14267002148155360042

`1-(A264668(n)-∑[A138684(A028310(n))])`
-/

namespace A138683.P14267002148155360042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A264668 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138683.P14267002148155360042

/-!
# A138684: First differences of A138683.

The programs for A138684, there is no canonical definition to state claims against.
-/

/-! ## A138684.P4349577966847894283

`Δ[A138683(n+1)]`
-/

namespace A138684.P4349577966847894283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P4349577966847894283

/-! ## A138684.P3364249537907790010

`Δ[record[A138683(A020986(n))]]`
-/

namespace A138684.P3364249537907790010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P3364249537907790010

/-! ## A138684.P10353532938635583444

`Δ[record[A138683(A065648(n))]]`
-/

namespace A138684.P10353532938635583444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P10353532938635583444

/-! ## A138684.P4112501397565953934

`Δ[record[A138683(A134478(n))]]`
-/

namespace A138684.P4112501397565953934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P4112501397565953934

/-! ## A138684.P18057426988195188947

`Δ[record[A138683(A141256(n))]]`
-/

namespace A138684.P18057426988195188947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P18057426988195188947

/-! ## A138684.P18337826076903364572

`Δ[record[A138683(A242112(n))]]`
-/

namespace A138684.P18337826076903364572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138684.P18337826076903364572

/-! ## A138684.P12933960848926748355

`A138683(n+2)-A138683(n+1)`
-/

namespace A138684.P12933960848926748355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138683 (n + 2) - A138683 (n + 1)

end

end A138684.P12933960848926748355

/-!
# A138685: Numbers k such that there is no prime of the form 2k + p^2 for any prime p.

The programs for A138685, the canonical program `A138685.P1363574256665463268` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138685 has offset 1).

The definition of A138685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138685.P1363574256665463268

`3*A059324(n+1)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138685

/-- `3*A059324(n+1)-2` -/
def P1363574256665463268.Spec : Prop :=
  ∀ n, P1363574256665463268.a n = A138685 (n + 1)

theorem P1363574256665463268.correct : P1363574256665463268.Spec := by
  intro n
  simp only [A138685, Nat.add_sub_cancel]

end A138685

/-! ## A138685.P11829359782581072565

`3*A046953(n+1)-5`
-/

namespace A138685.P11829359782581072565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046953 (n + 1) - 5

end

end A138685.P11829359782581072565

namespace A138685

/-- `3*A046953(n+1)-5` -/
def P11829359782581072565.Spec : Prop :=
  ∀ n, P11829359782581072565.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P2661643432649929594

`(A092256(n+1)-9)/2`
-/

namespace A138685.P2661643432649929594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092256 (n + 1) - 9 : ℚ) / 2

end

end A138685.P2661643432649929594

namespace A138685

/-- `(A092256(n+1)-9)/2` -/
def P2661643432649929594.Spec : Prop :=
  ∀ n, P2661643432649929594.a n = (A138685 (n + 1) : ℚ)

end A138685

/-! ## A138685.P11997706580535401224

`3*comp[A059325(n+1)]-2`
-/

namespace A138685.P11997706580535401224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A138685.P11997706580535401224

namespace A138685

/-- `3*comp[A059325(n+1)]-2` -/
def P11997706580535401224.Spec : Prop :=
  ∀ n, P11997706580535401224.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P15115790109923083148

`3*lt[2, A000005(6*n+5)]-2`
-/

namespace A138685.P15115790109923083148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A138685.P15115790109923083148

namespace A138685

/-- `3*lt[2, A000005(6*n+5)]-2` -/
def P15115790109923083148.Spec : Prop :=
  ∀ n, P15115790109923083148.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P8210808090178016383

`A064634(n+1)-3+n`
-/

namespace A138685.P8210808090178016383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064634 (n + 1) - 3 + (n : ℤ)

end

end A138685.P8210808090178016383

namespace A138685

/-- `A064634(n+1)-3+n` -/
def P8210808090178016383.Spec : Prop :=
  ∀ n, P8210808090178016383.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P10318484346303037150

`A016789(A059324(n+1)-1)-1`
-/

namespace A138685.P10318484346303037150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A059324 (n + 1) - 1).toNat - 1

end

end A138685.P10318484346303037150

namespace A138685

/-- `A016789(A059324(n+1)-1)-1` -/
def P10318484346303037150.Spec : Prop :=
  ∀ n, P10318484346303037150.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P3896365995676173985

`A016933(A046953(n+1)-2)/2`
-/

namespace A138685.P3896365995676173985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016933 (A046953 (n + 1) - 2).toNat : ℚ) / 2

end

end A138685.P3896365995676173985

namespace A138685

/-- `A016933(A046953(n+1)-2)/2` -/
def P3896365995676173985.Spec : Prop :=
  ∀ n, P3896365995676173985.a n = (A138685 (n + 1) : ℚ)

end A138685

/-! ## A138685.P5453376372991856764

`A059324(n+1)+A005843(A059324(n+1)-1)`
-/

namespace A138685.P5453376372991856764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + A005843 (A059324 (n + 1) - 1).toNat

end

end A138685.P5453376372991856764

namespace A138685

/-- `A059324(n+1)+A005843(A059324(n+1)-1)` -/
def P5453376372991856764.Spec : Prop :=
  ∀ n, P5453376372991856764.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P18376603333022441638

`A046953(n+1)+A004273(A046953(n+1)-2)`
-/

namespace A138685.P18376603333022441638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + A004273 (A046953 (n + 1) - 2).toNat

end

end A138685.P18376603333022441638

namespace A138685

/-- `A046953(n+1)+A004273(A046953(n+1)-2)` -/
def P18376603333022441638.Spec : Prop :=
  ∀ n, P18376603333022441638.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P3468708566070667050

`A234429(A059324(n+1))`
-/

namespace A138685.P3468708566070667050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234429 (A059324 (n + 1)).toNat

end

end A138685.P3468708566070667050

namespace A138685

/-- `A234429(A059324(n+1))` -/
def P3468708566070667050.Spec : Prop :=
  ∀ n, P3468708566070667050.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P17060726573442410333

`A033627(A046953(n+1))`
-/

namespace A138685.P17060726573442410333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A046953 (n + 1)).toNat

end

end A138685.P17060726573442410333

namespace A138685

/-- `A033627(A046953(n+1))` -/
def P17060726573442410333.Spec : Prop :=
  ∀ n, P17060726573442410333.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P6523451331104699013

`∩[A155723(n+1), A016777(n)]`
-/

namespace A138685.P6523451331104699013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138685.P6523451331104699013

namespace A138685

/-- `∩[A155723(n+1), A016777(n)]` -/
def P6523451331104699013.Spec : Prop :=
  ∀ n, (P6523451331104699013.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P8226733202064144892

`∩[A155723(n+1), A112414(n)]`
-/

namespace A138685.P8226733202064144892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138685.P8226733202064144892

namespace A138685

/-- `∩[A155723(n+1), A112414(n)]` -/
def P8226733202064144892.Spec : Prop :=
  ∀ n, (P8226733202064144892.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P17134765703216423120

`∩[A033627(n+1), A155723(n+1)]`
-/

namespace A138685.P17134765703216423120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138685.P17134765703216423120

namespace A138685

/-- `∩[A033627(n+1), A155723(n+1)]` -/
def P17134765703216423120.Spec : Prop :=
  ∀ n, (P17134765703216423120.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P17368074558337744546

`lt[A138479(n+1), 1]+1`
-/

namespace A138685.P17368074558337744546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A138685.P17368074558337744546

namespace A138685

/-- `lt[A138479(n+1), 1]+1` -/
def P17368074558337744546.Spec : Prop :=
  ∀ n, (P17368074558337744546.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P16645301884023040742

`A016777(eq[0, A138479(3*n+1)])`
-/

namespace A138685.P16645301884023040742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138685.P16645301884023040742

namespace A138685

/-- `A016777(eq[0, A138479(3*n+1)])` -/
def P16645301884023040742.Spec : Prop :=
  ∀ n, P16645301884023040742.a n = A138685 (n + 1)

end A138685

/-! ## A138685.P3386382478489560460

`eq[A073423(n), A138479(n+2)]+2`
-/

namespace A138685.P3386382478489560460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A138685.P3386382478489560460

namespace A138685

/-- `eq[A073423(n), A138479(n+2)]+2` -/
def P3386382478489560460.Spec : Prop :=
  ∀ n, (P3386382478489560460.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P11345902660069393806

`eq[A010051(n+1), A138479(n+2)]+2`
-/

namespace A138685.P11345902660069393806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A138685.P11345902660069393806

namespace A138685

/-- `eq[A010051(n+1), A138479(n+2)]+2` -/
def P11345902660069393806.Spec : Prop :=
  ∀ n, (P11345902660069393806.a n : ℤ) = A138685 (n + 1)

end A138685

/-! ## A138685.P170360647796024778

`eq[A088422(n+1), A102283(n)]`
-/

namespace A138685.P170360647796024778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138685.P170360647796024778

namespace A138685

/-- `eq[A088422(n+1), A102283(n)]` -/
def P170360647796024778.Spec : Prop :=
  ∀ n, (P170360647796024778.a n : ℤ) = A138685 (n + 1)

end A138685

/-!
# A138686: Primes in A138685.

The programs for A138686, the canonical program `A138686.P6359265090745063621` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138686 has offset 1).

The definition of A138686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138686.P6359265090745063621

`p?[A138685(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A138686

/-- `p?[A138685(n+1)]` -/
def P6359265090745063621.Spec : Prop :=
  ∀ n, P6359265090745063621.a n = A138686 (n + 1)

theorem P6359265090745063621.correct : P6359265090745063621.Spec := by
  intro n
  simp only [A138686, Nat.add_sub_cancel]

end A138686

/-! ## A138686.P2321718610568599709

`p?[3*A059324(n+1)-2]`
-/

namespace A138686.P2321718610568599709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059324 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138686.P2321718610568599709

namespace A138686

/-- `p?[3*A059324(n+1)-2]` -/
def P2321718610568599709.Spec : Prop :=
  ∀ n, P2321718610568599709.a n = A138686 (n + 1)

end A138686

/-! ## A138686.P2196993256531691644

`p?[3*A046953(n+1)-5]`
-/

namespace A138686.P2196993256531691644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046953 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138686.P2196993256531691644

namespace A138686

/-- `p?[3*A046953(n+1)-5]` -/
def P2196993256531691644.Spec : Prop :=
  ∀ n, P2196993256531691644.a n = A138686 (n + 1)

end A138686

/-! ## A138686.P1651273240861621031

`filter[A138685(n+1), A010051(#)]`
-/

namespace A138686.P1651273240861621031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A138686.P1651273240861621031

namespace A138686

/-- `filter[A138685(n+1), A010051(#)]` -/
def P1651273240861621031.Spec : Prop :=
  ∀ n, P1651273240861621031.a n = A138686 (n + 1)

end A138686

/-! ## A138686.P6621497303910575049

`∩[A000040(n+1), A138685(n+1)]`
-/

namespace A138686.P6621497303910575049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P6621497303910575049

namespace A138686

/-- `∩[A000040(n+1), A138685(n+1)]` -/
def P6621497303910575049.Spec : Prop :=
  ∀ n, (P6621497303910575049.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P17404760592645680982

`∩[A002476(n+1), A138685(n+1)]`
-/

namespace A138686.P17404760592645680982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P17404760592645680982

namespace A138686

/-- `∩[A002476(n+1), A138685(n+1)]` -/
def P17404760592645680982.Spec : Prop :=
  ∀ n, (P17404760592645680982.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P245980008650657239

`∩[A004139(n+1), A138685(n+1)]`
-/

namespace A138686.P245980008650657239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P245980008650657239

namespace A138686

/-- `∩[A004139(n+1), A138685(n+1)]` -/
def P245980008650657239.Spec : Prop :=
  ∀ n, (P245980008650657239.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P230223875629915025

`∩[A006005(n+1), A138685(n+1)]`
-/

namespace A138686.P230223875629915025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P230223875629915025

namespace A138686

/-- `∩[A006005(n+1), A138685(n+1)]` -/
def P230223875629915025.Spec : Prop :=
  ∀ n, (P230223875629915025.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P13418576054080960652

`∩[A007645(n+1), A138685(n+1)]`
-/

namespace A138686.P13418576054080960652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P13418576054080960652

namespace A138686

/-- `∩[A007645(n+1), A138685(n+1)]` -/
def P13418576054080960652.Spec : Prop :=
  ∀ n, (P13418576054080960652.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P10695748301208728244

`∩[A008578(n+1), A138685(n+1)]`
-/

namespace A138686.P10695748301208728244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P10695748301208728244

namespace A138686

/-- `∩[A008578(n+1), A138685(n+1)]` -/
def P10695748301208728244.Spec : Prop :=
  ∀ n, (P10695748301208728244.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P14685532191182892118

`∩[A033946(n+1), A138685(n+1)]`
-/

namespace A138686.P14685532191182892118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P14685532191182892118

namespace A138686

/-- `∩[A033946(n+1), A138685(n+1)]` -/
def P14685532191182892118.Spec : Prop :=
  ∀ n, (P14685532191182892118.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P16379493724342094698

`∩[A040116(n+1), A138685(n+1)]`
-/

namespace A138686.P16379493724342094698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P16379493724342094698

namespace A138686

/-- `∩[A040116(n+1), A138685(n+1)]` -/
def P16379493724342094698.Spec : Prop :=
  ∀ n, (P16379493724342094698.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P4688355875249083820

`∩[A045319(n+1), A138685(n+1)]`
-/

namespace A138686.P4688355875249083820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P4688355875249083820

namespace A138686

/-- `∩[A045319(n+1), A138685(n+1)]` -/
def P4688355875249083820.Spec : Prop :=
  ∀ n, (P4688355875249083820.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P15244662352299859010

`∩[A045331(n+1), A138685(n+1)]`
-/

namespace A138686.P15244662352299859010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P15244662352299859010

namespace A138686

/-- `∩[A045331(n+1), A138685(n+1)]` -/
def P15244662352299859010.Spec : Prop :=
  ∀ n, (P15244662352299859010.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P283377172648262778

`∩[A045344(n+1), A138685(n+1)]`
-/

namespace A138686.P283377172648262778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P283377172648262778

namespace A138686

/-- `∩[A045344(n+1), A138685(n+1)]` -/
def P283377172648262778.Spec : Prop :=
  ∀ n, (P283377172648262778.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P14413362990557630198

`∩[A045375(n+1), A138685(n+1)]`
-/

namespace A138686.P14413362990557630198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P14413362990557630198

namespace A138686

/-- `∩[A045375(n+1), A138685(n+1)]` -/
def P14413362990557630198.Spec : Prop :=
  ∀ n, (P14413362990557630198.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P5267607435928558926

`∩[A046022(n+1), A138685(n+1)]`
-/

namespace A138686.P5267607435928558926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P5267607435928558926

namespace A138686

/-- `∩[A046022(n+1), A138685(n+1)]` -/
def P5267607435928558926.Spec : Prop :=
  ∀ n, (P5267607435928558926.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P14239912777056536024

`∩[A049591(n+1), A138685(n+1)]`
-/

namespace A138686.P14239912777056536024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P14239912777056536024

namespace A138686

/-- `∩[A049591(n+1), A138685(n+1)]` -/
def P14239912777056536024.Spec : Prop :=
  ∀ n, (P14239912777056536024.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P1475212623850511356

`∩[A051948(n+1), A138685(n+1)]`
-/

namespace A138686.P1475212623850511356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P1475212623850511356

namespace A138686

/-- `∩[A051948(n+1), A138685(n+1)]` -/
def P1475212623850511356.Spec : Prop :=
  ∀ n, (P1475212623850511356.a n : ℤ) = A138686 (n + 1)

end A138686

/-! ## A138686.P15498409437503722925

`∩[A053176(n+1), A138685(n+1)]`
-/

namespace A138686.P15498409437503722925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138686.P15498409437503722925

namespace A138686

/-- `∩[A053176(n+1), A138685(n+1)]` -/
def P15498409437503722925.Spec : Prop :=
  ∀ n, (P15498409437503722925.a n : ℤ) = A138686 (n + 1)

end A138686

/-!
# A138687: Composite n with no prime of the form 2n + p^2 for any prime p.

The programs for A138687, there is no canonical definition to state claims against.
-/

/-! ## A138687.P9207554365570634175

`filter[A138685(n+1), A005171(#)]`
-/

namespace A138687.P9207554365570634175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A138687.P9207554365570634175

/-! ## A138687.P16868125852262535682

`filter[A138685(n+1), A066247(#)]`
-/

namespace A138687.P16868125852262535682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A138687.P16868125852262535682

/-! ## A138687.P5971859448595149006

`filter[A138685(n+1), A202238(#)]`
-/

namespace A138687.P5971859448595149006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A138687.P5971859448595149006

/-! ## A138687.P5532631724757747094

`filter[A138685(n+1), A292438(#)]`
-/

namespace A138687.P5532631724757747094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A138687.P5532631724757747094

/-! ## A138687.P18347284626268620775

`filter[A138685(n+1), A323162(#)]`
-/

namespace A138687.P18347284626268620775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A138687.P18347284626268620775

/-! ## A138687.P18332491369373227319

`filter[A138685(n+1), A373977(#)]`
-/

namespace A138687.P18332491369373227319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A138687.P18332491369373227319

/-! ## A138687.P2433271021283087631

`∩[A002808(n+1), A138685(n+1)]`
-/

namespace A138687.P2433271021283087631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138687.P2433271021283087631

/-! ## A138687.P6997624500578972607

`∩[A005381(n+1), A138685(n+1)]`
-/

namespace A138687.P6997624500578972607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138687.P6997624500578972607

/-! ## A138687.P1156965935016128203

`∩[A018252(n+1), A138685(n+1)]`
-/

namespace A138687.P1156965935016128203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138687.P1156965935016128203

/-! ## A138687.P1489929384436894393

`∩[A056653(n+1), A138685(n+1)]`
-/

namespace A138687.P1489929384436894393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138687.P1489929384436894393

/-!
# A138689: Numbers of the form 26+p^2 (where p is a prime).

The programs for A138689, there is no canonical definition to state claims against.
-/

/-! ## A138689.P5535154012969433180

`p?[xor(1, n)+1]²+26`
-/

namespace A138689.P5535154012969433180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 26

end

end A138689.P5535154012969433180

/-! ## A138689.P17956603144183260071

`p?[n%3+n]²+26`
-/

namespace A138689.P17956603144183260071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 26

end

end A138689.P17956603144183260071

/-! ## A138689.P4845540690889462525

`p?[ceil(2/acot(n))]²+26`
-/

namespace A138689.P4845540690889462525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 26

end

end A138689.P4845540690889462525

/-! ## A138689.P14661710592447976754

`p?[round(8*n/7)]²+26`
-/

namespace A138689.P14661710592447976754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 26

end

end A138689.P14661710592447976754

/-! ## A138689.P12773267245030995727

`Δ[A024525(n)]+26`
-/

namespace A138689.P12773267245030995727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 26

end

end A138689.P12773267245030995727

/-!
# A138690: Numbers of the form 56+p^2 (where p is a prime).

The programs for A138690, there is no canonical definition to state claims against.
-/

/-! ## A138690.P13737092195263731856

`p?[ceil(2/acot(n))]²+56`
-/

namespace A138690.P13737092195263731856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 56

end

end A138690.P13737092195263731856

/-! ## A138690.P16545527042148204625

`p?[round(8*n/7)]²+56`
-/

namespace A138690.P16545527042148204625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 56

end

end A138690.P16545527042148204625

/-! ## A138690.P18404468792828706231

`Δ[A024525(n)]+56`
-/

namespace A138690.P18404468792828706231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 56

end

end A138690.P18404468792828706231

/-! ## A138690.P2614298560182474385

`A138691(n+1)-12`
-/

namespace A138690.P2614298560182474385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138691 (n + 1) - 12

end

end A138690.P2614298560182474385

/-! ## A138690.P10370499628159573981

`A138692(n+1)-30`
-/

namespace A138690.P10370499628159573981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138692 (n + 1) - 30

end

end A138690.P10370499628159573981

/-!
# A138691: Numbers of the form 68+p^2 (where p is a prime).

The programs for A138691, the canonical program `A138691.P362918012422747968` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138691 has offset 1).

The definition of A138691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138691.P362918012422747968

`A001248(n+1)+68`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138691

/-- `A001248(n+1)+68` -/
def P362918012422747968.Spec : Prop :=
  ∀ n, P362918012422747968.a n = A138691 (n + 1)

theorem P362918012422747968.correct : P362918012422747968.Spec := by
  intro n
  simp only [A138691, Nat.add_sub_cancel]

end A138691

/-! ## A138691.P7475590385444220773

`A084920(n+1)+69`
-/

namespace A138691.P7475590385444220773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 69

end

end A138691.P7475590385444220773

namespace A138691

/-- `A084920(n+1)+69` -/
def P7475590385444220773.Spec : Prop :=
  ∀ n, P7475590385444220773.a n = A138691 (n + 1)

end A138691

/-! ## A138691.P14376382564467183690

`A000040(n+1)²+68`
-/

namespace A138691.P14376382564467183690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 68

end

end A138691.P14376382564467183690

namespace A138691

/-- `A000040(n+1)²+68` -/
def P14376382564467183690.Spec : Prop :=
  ∀ n, P14376382564467183690.a n = A138691 (n + 1)

end A138691

/-! ## A138691.P4795251457335206951

`record[A063718(n+2)+68]`
-/

namespace A138691.P4795251457335206951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063718 (n + 2) + 68

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138691.P4795251457335206951

namespace A138691

/-- `record[A063718(n+2)+68]` -/
def P4795251457335206951.Spec : Prop :=
  ∀ n, P4795251457335206951.a n = A138691 (n + 1)

end A138691

/-! ## A138691.P11888959308119389168

`A069482(n)+a(n-1)` with `a(0)=72`
-/

namespace A138691.P11888959308119389168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  A069482 n + a (n - 1)

end

end A138691.P11888959308119389168

namespace A138691

/-- `A069482(n)+a(n-1)` -/
def P11888959308119389168.Spec : Prop :=
  ∀ n, P11888959308119389168.a n = A138691 (n + 1)

end A138691

/-! ## A138691.P3305228223426424372

`record[(A000010(n+1)+1)²+68]`
-/

namespace A138691.P3305228223426424372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2 + 68

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138691.P3305228223426424372

namespace A138691

/-- `record[(A000010(n+1)+1)²+68]` -/
def P3305228223426424372.Spec : Prop :=
  ∀ n, P3305228223426424372.a n = A138691 (n + 1)

end A138691

/-!
# A138692: Numbers of the form 86+p^2 (where p is a prime).

The programs for A138692, there is no canonical definition to state claims against.
-/

/-! ## A138692.P5913361580471230295

`p?[ceil(2/acot(n))]²+86`
-/

namespace A138692.P5913361580471230295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 86

end

end A138692.P5913361580471230295

/-! ## A138692.P13044039735566750175

`or(2, p?[round(8*n/7)]²+86)`
-/

namespace A138692.P13044039735566750175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 86)

end

end A138692.P13044039735566750175

/-! ## A138692.P3686393667780830606

`Δ[A024525(n)]+86`
-/

namespace A138692.P3686393667780830606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 86

end

end A138692.P3686393667780830606

/-! ## A138692.P811641718911830351

`A138691(n+1)+18`
-/

namespace A138692.P811641718911830351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138691 (n + 1) + 18

end

end A138692.P811641718911830351

/-! ## A138692.P16710471107297812213

`A138693(n+1)-24`
-/

namespace A138692.P16710471107297812213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138693 (n + 1) - 24

end

end A138692.P16710471107297812213

/-!
# A138693: Numbers of the form 110 + p^2. (where p is a prime).

The programs for A138693, the canonical program `A138693.P2674779579294356525` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138693 has offset 1).

The definition of A138693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138693.P2674779579294356525

`110+A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138693

/-- `110+A001248(n+1)` -/
def P2674779579294356525.Spec : Prop :=
  ∀ n, P2674779579294356525.a n = A138693 (n + 1)

theorem P2674779579294356525.correct : P2674779579294356525.Spec := by
  intro n
  simp only [A138693, Nat.add_sub_cancel]

end A138693

/-! ## A138693.P11776200037277574875

`A264447(A089309(∏{e}[n+1, 2^#]))+A079705(n+1)/3`
-/

namespace A138693.P11776200037277574875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264447 (A089309 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)).toNat : ℚ) + (A079705 (n + 1) : ℚ) / 3

end

end A138693.P11776200037277574875

namespace A138693

/-- `A264447(A089309(∏{e}[n+1, 2^#]))+A079705(n+1)/3` -/
def P11776200037277574875.Spec : Prop :=
  ∀ n, P11776200037277574875.a n = (A138693 (n + 1) : ℚ)

end A138693

/-! ## A138693.P10761452962431407050

`A289967(A020639(2*(n+1)))+record[A006530(n+2)²]`
-/

namespace A138693.P10761452962431407050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 (A020639 (2 * (n + 1))).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138693.P10761452962431407050

namespace A138693

/-- `A289967(A020639(2*(n+1)))+record[A006530(n+2)²]` -/
def P10761452962431407050.Spec : Prop :=
  ∀ n, P10761452962431407050.a n = A138693 (n + 1)

end A138693

/-! ## A138693.P348579138808565263

`record[A014963(n+2)²+86]+24`
-/

namespace A138693.P348579138808565263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2 + 86

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 24

end

end A138693.P348579138808565263

namespace A138693

/-- `record[A014963(n+2)²+86]+24` -/
def P348579138808565263.Spec : Prop :=
  ∀ n, P348579138808565263.a n = A138693 (n + 1)

end A138693

/-! ## A138693.P14130017611149400671

`A138691(n+1)+42`
-/

namespace A138693.P14130017611149400671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138691 (n + 1) + 42

end

end A138693.P14130017611149400671

namespace A138693

/-- `A138691(n+1)+42` -/
def P14130017611149400671.Spec : Prop :=
  ∀ n, P14130017611149400671.a n = A138693 (n + 1)

end A138693

/-! ## A138693.P6778586877266759497

`A278819(ratio[A000079(n)])+A069262(n+1)/4`
-/

namespace A138693.P6778586877266759497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278819 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℚ) + (A069262 (n + 1) : ℚ) / 4

end

end A138693.P6778586877266759497

namespace A138693

/-- `A278819(ratio[A000079(n)])+A069262(n+1)/4` -/
def P6778586877266759497.Spec : Prop :=
  ∀ n, P6778586877266759497.a n = (A138693 (n + 1) : ℚ)

end A138693

/-! ## A138693.P15374682521788470895

`A278865(ratio[A000079(n)])+A069262(n+1)/4`
-/

namespace A138693.P15374682521788470895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278865 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℚ) + (A069262 (n + 1) : ℚ) / 4

end

end A138693.P15374682521788470895

namespace A138693

/-- `A278865(ratio[A000079(n)])+A069262(n+1)/4` -/
def P15374682521788470895.Spec : Prop :=
  ∀ n, P15374682521788470895.a n = (A138693 (n + 1) : ℚ)

end A138693

/-! ## A138693.P7806572685305202713

`A279949(ratio[A000079(n)])+A069262(n+1)/4`
-/

namespace A138693.P7806572685305202713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279949 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℚ) + (A069262 (n + 1) : ℚ) / 4

end

end A138693.P7806572685305202713

namespace A138693

/-- `A279949(ratio[A000079(n)])+A069262(n+1)/4` -/
def P7806572685305202713.Spec : Prop :=
  ∀ n, P7806572685305202713.a n = (A138693 (n + 1) : ℚ)

end A138693

/-!
# A138694: Numbers n such that the set {2*n+p^2, p any prime} contains exactly one prime.

The programs for A138694, the canonical program `A138694.P473450987914299284` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138694 has offset 1).

The definition of A138694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138694.P4473030328099213890

`A173178(n+2)-3`
-/

namespace A138694.P4473030328099213890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 2) - 3

end

end A138694.P4473030328099213890

namespace A138694

/-- `A173178(n+2)-3` -/
def P4473030328099213890.Spec : Prop :=
  ∀ n, P4473030328099213890.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P473450987914299284

`3*A059325(n+2)-2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138694

/-- `3*A059325(n+2)-2` -/
def P473450987914299284.Spec : Prop :=
  ∀ n, P473450987914299284.a n = A138694 (n + 1)

theorem P473450987914299284.correct : P473450987914299284.Spec := by
  intro n
  simp only [A138694, Nat.add_sub_cancel]

end A138694

/-! ## A138694.P16989031990615302036

`(A007528(n+2)-9)/2`
-/

namespace A138694.P16989031990615302036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 2) - 9 : ℚ) / 2

end

end A138694.P16989031990615302036

namespace A138694

/-- `(A007528(n+2)-9)/2` -/
def P16989031990615302036.Spec : Prop :=
  ∀ n, P16989031990615302036.a n = (A138694 (n + 1) : ℚ)

end A138694

/-! ## A138694.P1386072194822901828

`eq[n%3, A053193(n+4)]`
-/

namespace A138694.P1386072194822901828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138694.P1386072194822901828

namespace A138694

/-- `eq[n%3, A053193(n+4)]` -/
def P1386072194822901828.Spec : Prop :=
  ∀ n, (P1386072194822901828.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P11215913024324460907

`1-3*(2-A024898(n+2))`
-/

namespace A138694.P11215913024324460907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * (2 - A024898 (n + 2))

end

end A138694.P11215913024324460907

namespace A138694

/-- `1-3*(2-A024898(n+2))` -/
def P11215913024324460907.Spec : Prop :=
  ∀ n, P11215913024324460907.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P17108595479062334910

`3*(A153134(n+2)-2)-2`
-/

namespace A138694.P17108595479062334910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A153134 (n + 2) - 2) - 2

end

end A138694.P17108595479062334910

namespace A138694

/-- `3*(A153134(n+2)-2)-2` -/
def P17108595479062334910.Spec : Prop :=
  ∀ n, P17108595479062334910.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P7879653210476831314

`A023445(A173178(n+2))`
-/

namespace A138694.P7879653210476831314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A173178 (n + 2)).toNat

end

end A138694.P7879653210476831314

namespace A138694

/-- `A023445(A173178(n+2))` -/
def P7879653210476831314.Spec : Prop :=
  ∀ n, P7879653210476831314.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P14877796058696828308

`A187334(A059325(n+2))`
-/

namespace A138694.P14877796058696828308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187334 (A059325 (n + 2)).toNat

end

end A138694.P14877796058696828308

namespace A138694

/-- `A187334(A059325(n+2))` -/
def P14877796058696828308.Spec : Prop :=
  ∀ n, P14877796058696828308.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P5523405057843540129

`A016777(A059325(n+2)-1)`
-/

namespace A138694.P5523405057843540129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A059325 (n + 2) - 1).toNat

end

end A138694.P5523405057843540129

namespace A138694

/-- `A016777(A059325(n+2)-1)` -/
def P5523405057843540129.Spec : Prop :=
  ∀ n, P5523405057843540129.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P11209791903388462587

`A016777(eq[1, A167020(n+2)])`
-/

namespace A138694.P11209791903388462587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138694.P11209791903388462587

namespace A138694

/-- `A016777(eq[1, A167020(n+2)])` -/
def P11209791903388462587.Spec : Prop :=
  ∀ n, P11209791903388462587.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P338586049978537880

`filter[A155722(n+1), A137893(#)]`
-/

namespace A138694.P338586049978537880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A138694.P338586049978537880

namespace A138694

/-- `filter[A155722(n+1), A137893(#)]` -/
def P338586049978537880.Spec : Prop :=
  ∀ n, P338586049978537880.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P886542604150838924

`filter[A155722(n+1), A141212(#)]`
-/

namespace A138694.P886542604150838924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141212 (f1 j).toNat = 1) n)

end

end A138694.P886542604150838924

namespace A138694

/-- `filter[A155722(n+1), A141212(#)]` -/
def P886542604150838924.Spec : Prop :=
  ∀ n, P886542604150838924.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P2781451860333856151

`∑[A004525(Δ[A056955(n+2)])]`
-/

namespace A138694.P2781451860333856151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138694.P2781451860333856151

namespace A138694

/-- `∑[A004525(Δ[A056955(n+2)])]` -/
def P2781451860333856151.Spec : Prop :=
  ∀ n, P2781451860333856151.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P13078563844079567780

`∩[A155722(n+1), A016777(n)]`
-/

namespace A138694.P13078563844079567780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138694.P13078563844079567780

namespace A138694

/-- `∩[A155722(n+1), A016777(n)]` -/
def P13078563844079567780.Spec : Prop :=
  ∀ n, (P13078563844079567780.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P12030933168294617927

`∩[A155722(n+1), A032766(n)]`
-/

namespace A138694.P12030933168294617927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138694.P12030933168294617927

namespace A138694

/-- `∩[A155722(n+1), A032766(n)]` -/
def P12030933168294617927.Spec : Prop :=
  ∀ n, (P12030933168294617927.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P116305155826838834

`∩[A155722(n+1), A187334(n)]`
-/

namespace A138694.P116305155826838834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187334 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138694.P116305155826838834

namespace A138694

/-- `∩[A155722(n+1), A187334(n)]` -/
def P116305155826838834.Spec : Prop :=
  ∀ n, (P116305155826838834.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P10811001744945729720

`A016777(eq[3, A138479(3*n+1)])`
-/

namespace A138694.P10811001744945729720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138694.P10811001744945729720

namespace A138694

/-- `A016777(eq[3, A138479(3*n+1)])` -/
def P10811001744945729720.Spec : Prop :=
  ∀ n, P10811001744945729720.a n = A138694 (n + 1)

end A138694

/-! ## A138694.P3634050964955895716

`eq[A059853(n+2), A088422(n+1)]`
-/

namespace A138694.P3634050964955895716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059853 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138694.P3634050964955895716

namespace A138694

/-- `eq[A059853(n+2), A088422(n+1)]` -/
def P3634050964955895716.Spec : Prop :=
  ∀ n, (P3634050964955895716.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P11284172900986455907

`∩[A026140(n+1), A155722(n+1)]`
-/

namespace A138694.P11284172900986455907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138694.P11284172900986455907

namespace A138694

/-- `∩[A026140(n+1), A155722(n+1)]` -/
def P11284172900986455907.Spec : Prop :=
  ∀ n, (P11284172900986455907.a n : ℤ) = A138694 (n + 1)

end A138694

/-! ## A138694.P15127382526448162050

`∩[A026225(n+1), A155722(n+1)]`
-/

namespace A138694.P15127382526448162050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138694.P15127382526448162050

namespace A138694

/-- `∩[A026225(n+1), A155722(n+1)]` -/
def P15127382526448162050.Spec : Prop :=
  ∀ n, (P15127382526448162050.a n : ℤ) = A138694 (n + 1)

end A138694

/-!
# A138695: Primes p such that 24*p-1, 24*p+1 and 30*p-1, 30*p+1 are twin primes.

The programs for A138695, there is no canonical definition to state claims against.
-/

/-! ## A138695.P6585369245367317780

`∩[A138249(n+1), A138250(n+1)]`
-/

namespace A138695.P6585369245367317780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138695.P6585369245367317780

/-!
# A138696: Primes p such that 30*p-1, 30*p+1 and 36*p-1, 36*p+1 are twin primes.

The programs for A138696, there is no canonical definition to state claims against.
-/

/-! ## A138696.P13920218716447132902

`∩[A138250(n+1), A138655(n+1)]`
-/

namespace A138696.P13920218716447132902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138696.P13920218716447132902

/-!
# A138697: Primes p such that 42*p-1, 42*p+1 and 48*p-1, 48*p+1 are twin primes.

The programs for A138697, there is no canonical definition to state claims against.
-/

/-! ## A138697.P12652564229922211457

`∩[A138656(n+1), A138657(n+1)]`
-/

namespace A138697.P12652564229922211457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138697.P12652564229922211457

/-!
# A138698: Primes p such that 54*p-1, 54*p+1 and 60*p-1, 60*p+1 are twin primes.

The programs for A138698, there is no canonical definition to state claims against.
-/

/-! ## A138698.P6412233152768988508

`∩[A138658(n+1), A138659(n+1)]`
-/

namespace A138698.P6412233152768988508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138698.P6412233152768988508

/-!
# A138699: Numbers k such that 4^k - 3^k - 2^k is prime.

The programs for A138699, there is no canonical definition to state claims against.
-/

/-! ## A138699.P476503333648568180

`A192013(A195008(2*(n+1)))+A191998(n+1)`
-/

namespace A138699.P476503333648568180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (A195008 (2 * (n + 1))).toNat + A191998 (n + 1)

end

end A138699.P476503333648568180

