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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187801: Pascal's triangle construction method applied to {1,1,2} as an initial term.

The programs for A187801, the canonical program `A187801.P9725530492111839525` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187801 has offset 2).

The definition of A187801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187801.P9725530492111839525

`A087698(n+3)+A071919(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A187801

/-- `A087698(n+3)+A071919(n+2)` -/
def P9725530492111839525.Spec : Prop :=
  ∀ n, P9725530492111839525.a n = A187801 (n + 2)

theorem P9725530492111839525.correct : P9725530492111839525.Spec := by
  intro n
  simp only [A187801, Nat.add_sub_cancel]

end A187801

/-! ## A187801.P527896550397930061

`A097805(n+3)+A087698(n+3)`
-/

namespace A187801.P527896550397930061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 3) + A087698 (n + 3)

end

end A187801.P527896550397930061

namespace A187801

/-- `A097805(n+3)+A087698(n+3)` -/
def P527896550397930061.Spec : Prop :=
  ∀ n, P527896550397930061.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P10660303646181401342

`Δ[A072405(n+2)]+A007318(n+2)`
-/

namespace A187801.P10660303646181401342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A007318 (n + 2)

end

end A187801.P10660303646181401342

namespace A187801

/-- `Δ[A072405(n+2)]+A007318(n+2)` -/
def P10660303646181401342.Spec : Prop :=
  ∀ n, P10660303646181401342.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P5079210282961846286

`Δ[A102363(n+2)+A072405(n+2)]`
-/

namespace A187801.P5079210282961846286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 2) + A072405 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187801.P5079210282961846286

namespace A187801

/-- `Δ[A102363(n+2)+A072405(n+2)]` -/
def P5079210282961846286.Spec : Prop :=
  ∀ n, P5079210282961846286.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P7103207103160719355

`A014473(n+3)+∑[A182533(n+3)]`
-/

namespace A187801.P7103207103160719355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182533 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187801.P7103207103160719355

namespace A187801

/-- `A014473(n+3)+∑[A182533(n+3)]` -/
def P7103207103160719355.Spec : Prop :=
  ∀ n, P7103207103160719355.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P5568268276694532868

`Δ[A102363(n+3)-A323211(n+2)]`
-/

namespace A187801.P5568268276694532868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 3) - A323211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187801.P5568268276694532868

namespace A187801

/-- `Δ[A102363(n+3)-A323211(n+2)]` -/
def P5568268276694532868.Spec : Prop :=
  ∀ n, P5568268276694532868.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P7863064080957912528

`A028275(n+2)+A072405(n+3)-A028262(n+2)`
-/

namespace A187801.P7863064080957912528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (n + 2) + (A072405 (n + 3) - A028262 (n + 2))

end

end A187801.P7863064080957912528

namespace A187801

/-- `A028275(n+2)+A072405(n+3)-A028262(n+2)` -/
def P7863064080957912528.Spec : Prop :=
  ∀ n, P7863064080957912528.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P6630696261710971129

`A005843(A072405(n+3))-A071919(n+3)`
-/

namespace A187801.P6630696261710971129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072405 (n + 3)).toNat - A071919 (n + 3)

end

end A187801.P6630696261710971129

namespace A187801

/-- `A005843(A072405(n+3))-A071919(n+3)` -/
def P6630696261710971129.Spec : Prop :=
  ∀ n, P6630696261710971129.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P323790481175366642

`A071919(n+2)+abs(A118400(n+3))`
-/

namespace A187801.P323790481175366642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (n + 2) + |A118400 (n + 3)|

end

end A187801.P323790481175366642

namespace A187801

/-- `A071919(n+2)+abs(A118400(n+3))` -/
def P323790481175366642.Spec : Prop :=
  ∀ n, P323790481175366642.a n = A187801 (n + 2)

end A187801

/-! ## A187801.P16970874645983881136

`A097805(n+3)+abs(A118400(n+3))`
-/

namespace A187801.P16970874645983881136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 3) + |A118400 (n + 3)|

end

end A187801.P16970874645983881136

namespace A187801

/-- `A097805(n+3)+abs(A118400(n+3))` -/
def P16970874645983881136.Spec : Prop :=
  ∀ n, P16970874645983881136.a n = A187801 (n + 2)

end A187801

/-!
# A187805: Numbers n such that (7^n + 6^n)/13 is prime.

The programs for A187805, there is no canonical definition to state claims against.
-/

/-! ## A187805.P10071778596104127488

`record[p?[A145102(2*n)]]`
-/

namespace A187805.P10071778596104127488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145102 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187805.P10071778596104127488

/-!
# A187806: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n * Product_{k=1..n+1} (1-k*x).

The programs for A187806, there is no canonical definition to state claims against.
-/

/-! ## A187806.P14993809506912397623

`A364019(A368927(n))`
-/

namespace A187806.P14993809506912397623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364019 (A368927 n).toNat

end

end A187806.P14993809506912397623

/-! ## A187806.P9042670009976213027

`∑[A055938(A135746(n))-1]`
-/

namespace A187806.P9042670009976213027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (A135746 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187806.P9042670009976213027

/-!
# A187808: a(n) = |{0<=k

The programs for A187808, there is no canonical definition to state claims against.
-/

/-! ## A187808.P14246505288249314940

`A001222((6^n+8^n+1)%((n+1)*floor(2^(n+1)/(n+1))))`
-/

namespace A187808.P14246505288249314940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (6 ^ n + (8 ^ n + 1) : ℤ) ((n + 1 : ℤ) * ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋)).toNat

end

end A187808.P14246505288249314940

/-! ## A187808.P11037184012488368191

`A001221(∑[A034699(A134522(n))])`
-/

namespace A187808.P11037184012488368191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A134522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187808.P11037184012488368191

/-! ## A187808.P5677856580880379802

`A001222(or(A020639(n+1), A055745(n+1)))`
-/

namespace A187808.P5677856580880379802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A020639 (n + 1)) (A055745 (n + 1))).toNat

end

end A187808.P5677856580880379802

/-! ## A187808.P9218897050991098333

`A001221(or(A055745(n+1), A135679(n+1)))`
-/

namespace A187808.P9218897050991098333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A055745 (n + 1)) (A135679 (n + 1))).toNat

end

end A187808.P9218897050991098333

/-! ## A187808.P3918636025240591144

`A001222(or(A055745(n+1), A135679(n+1)))`
-/

namespace A187808.P3918636025240591144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A055745 (n + 1)) (A135679 (n + 1))).toNat

end

end A187808.P3918636025240591144

/-!
# A187811: Numbers having at least one prime factor of form 4*k+3.

The programs for A187811, the canonical program `A187811.P10596766044350093657` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187811 has offset 1).

The definition of A187811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187811.P10596766044350093657

`lt[A091379(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A187811

/-- `lt[A091379(n+1), 1]+1` -/
def P10596766044350093657.Spec : Prop :=
  ∀ n, (P10596766044350093657.a n : ℤ) = A187811 (n + 1)

theorem P10596766044350093657.correct : P10596766044350093657.Spec := by
  intro n
  simp only [A187811, Nat.add_sub_cancel]

end A187811

/-! ## A187811.P2254292658509193785

`lt[1, A140211(n+1)]+1`
-/

namespace A187811.P2254292658509193785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P2254292658509193785

namespace A187811

/-- `lt[1, A140211(n+1)]+1` -/
def P2254292658509193785.Spec : Prop :=
  ∀ n, (P2254292658509193785.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P14034933168895096321

`lt[A326052(n+1), n]+1`
-/

namespace A187811.P14034933168895096321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187811.P14034933168895096321

namespace A187811

/-- `lt[A326052(n+1), n]+1` -/
def P14034933168895096321.Spec : Prop :=
  ∀ n, (P14034933168895096321.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P15428766058112075898

`comp[A072437(n+1)-1]+1`
-/

namespace A187811.P15428766058112075898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187811.P15428766058112075898

namespace A187811

/-- `comp[A072437(n+1)-1]+1` -/
def P15428766058112075898.Spec : Prop :=
  ∀ n, (P15428766058112075898.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P15511699800835595294

`∪[A022544(n+1), A177733(n+1)]`
-/

namespace A187811.P15511699800835595294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187811.P15511699800835595294

namespace A187811

/-- `∪[A022544(n+1), A177733(n+1)]` -/
def P15511699800835595294.Spec : Prop :=
  ∀ n, (P15511699800835595294.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P15691422895279229350

`∪[A071822(n+1), A177733(n+1)]`
-/

namespace A187811.P15691422895279229350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187811.P15691422895279229350

namespace A187811

/-- `∪[A071822(n+1), A177733(n+1)]` -/
def P15691422895279229350.Spec : Prop :=
  ∀ n, (P15691422895279229350.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P11904437121805679050

`∪[A091067(n+1), A177733(n+1)]`
-/

namespace A187811.P11904437121805679050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187811.P11904437121805679050

namespace A187811

/-- `∪[A091067(n+1), A177733(n+1)]` -/
def P11904437121805679050.Spec : Prop :=
  ∀ n, (P11904437121805679050.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P8965901832622336614

`∪[A177733(n+1), A221264(n+1)]`
-/

namespace A187811.P8965901832622336614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187811.P8965901832622336614

namespace A187811

/-- `∪[A177733(n+1), A221264(n+1)]` -/
def P8965901832622336614.Spec : Prop :=
  ∀ n, (P8965901832622336614.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P5253503212079845278

`∩[A192450(n+1), A285510(n+1)]`
-/

namespace A187811.P5253503212079845278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187811.P5253503212079845278

namespace A187811

/-- `∩[A192450(n+1), A285510(n+1)]` -/
def P5253503212079845278.Spec : Prop :=
  ∀ n, (P5253503212079845278.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P7605593281285435883

`lt[0, A001842(n)]`
-/

namespace A187811.P7605593281285435883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187811.P7605593281285435883

namespace A187811

/-- `lt[0, A001842(n)]` -/
def P7605593281285435883.Spec : Prop :=
  ∀ n, (P7605593281285435883.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P14958255347413279300

`lt[0, A260728(n)]`
-/

namespace A187811.P14958255347413279300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187811.P14958255347413279300

namespace A187811

/-- `lt[0, A260728(n)]` -/
def P14958255347413279300.Spec : Prop :=
  ∀ n, (P14958255347413279300.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P7505094204196515372

`lt[0, A005085(n+1)]+1`
-/

namespace A187811.P7505094204196515372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P7505094204196515372

namespace A187811

/-- `lt[0, A005085(n+1)]+1` -/
def P7505094204196515372.Spec : Prop :=
  ∀ n, (P7505094204196515372.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P17134375005359958049

`lt[0, A050453(n+1)]+1`
-/

namespace A187811.P17134375005359958049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P17134375005359958049

namespace A187811

/-- `lt[0, A050453(n+1)]+1` -/
def P17134375005359958049.Spec : Prop :=
  ∀ n, (P17134375005359958049.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P13699924859312635622

`lt[0, A050455(n+1)]+1`
-/

namespace A187811.P13699924859312635622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P13699924859312635622

namespace A187811

/-- `lt[0, A050455(n+1)]+1` -/
def P13699924859312635622.Spec : Prop :=
  ∀ n, (P13699924859312635622.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P11313774560253505586

`lt[1, A097706(n+1)]+1`
-/

namespace A187811.P11313774560253505586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P11313774560253505586

namespace A187811

/-- `lt[1, A097706(n+1)]+1` -/
def P11313774560253505586.Spec : Prop :=
  ∀ n, (P11313774560253505586.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P9923275681843106707

`lt[1, A170819(n+1)]+1`
-/

namespace A187811.P9923275681843106707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P9923275681843106707

namespace A187811

/-- `lt[1, A170819(n+1)]+1` -/
def P9923275681843106707.Spec : Prop :=
  ∀ n, (P9923275681843106707.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P10265325675103934217

`lt[1, A278509(n+1)]+1`
-/

namespace A187811.P10265325675103934217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P10265325675103934217

namespace A187811

/-- `lt[1, A278509(n+1)]+1` -/
def P10265325675103934217.Spec : Prop :=
  ∀ n, (P10265325675103934217.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P15270142029557528659

`lt[1, A286363(n+1)]+1`
-/

namespace A187811.P15270142029557528659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187811.P15270142029557528659

namespace A187811

/-- `lt[1, A286363(n+1)]+1` -/
def P15270142029557528659.Spec : Prop :=
  ∀ n, (P15270142029557528659.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P16852902769485454120

`lt[A072436(n+1), n]+1`
-/

namespace A187811.P16852902769485454120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187811.P16852902769485454120

namespace A187811

/-- `lt[A072436(n+1), n]+1` -/
def P16852902769485454120.Spec : Prop :=
  ∀ n, (P16852902769485454120.a n : ℤ) = A187811 (n + 1)

end A187811

/-! ## A187811.P9758237964935592954

`lt[1, A278509(A028310(n))]`
-/

namespace A187811.P9758237964935592954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187811.P9758237964935592954

namespace A187811

/-- `lt[1, A278509(A028310(n))]` -/
def P9758237964935592954.Spec : Prop :=
  ∀ n, (P9758237964935592954.a n : ℤ) = A187811 (n + 1)

end A187811

/-!
# A187813: Numbers n whose base-b digit sum is not b for all bases b >= 2.

The programs for A187813, there is no canonical definition to state claims against.
-/

/-! ## A187813.P54350166748123707

`eq[0, A239703(n)]`
-/

namespace A187813.P54350166748123707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187813.P54350166748123707

/-! ## A187813.P9459374187211000597

`lt[A239703(n), acot(A007953(n))]`
-/

namespace A187813.P9459374187211000597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007953 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A187813.P9459374187211000597

/-! ## A187813.P15635390484394138799

`record[n/A005117(A239703(n)+1)]`
-/

namespace A187813.P15635390484394138799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005117 (A239703 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P15635390484394138799

/-! ## A187813.P8907016459913094909

`record[n/A018252(A239703(n)+1)]`
-/

namespace A187813.P8907016459913094909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A018252 (A239703 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P8907016459913094909

/-! ## A187813.P9378569077293693754

`lt[A239703(n), acot(A002808(n+1))]`
-/

namespace A187813.P9378569077293693754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A002808 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A187813.P9378569077293693754

/-! ## A187813.P8912740554804553886

`lt[A239703(n), acot(A072668(n+1))]`
-/

namespace A187813.P8912740554804553886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A072668 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A187813.P8912740554804553886

/-! ## A187813.P10814300654583859894

`lt[A239703(n), acot(A079696(n+1))]`
-/

namespace A187813.P10814300654583859894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A079696 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A187813.P10814300654583859894

/-! ## A187813.P3351880042132774310

`record[n/A118567(A239703(n)²+1)]`
-/

namespace A187813.P3351880042132774310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A118567 (A239703 n ^ 2 + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P3351880042132774310

/-! ## A187813.P5359804956872997363

`record[gcd(n, A228050(2*A239703(n)+1))]`
-/

namespace A187813.P5359804956872997363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A228050 (2 * A239703 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P5359804956872997363

/-! ## A187813.P12263316094322462517

`record[n-A018252(n+1)*A239703(n)]`
-/

namespace A187813.P12263316094322462517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A018252 (n + 1) * A239703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P12263316094322462517

/-! ## A187813.P8624286483777571567

`record[n-A118567(n+1)*A239703(n)]`
-/

namespace A187813.P8624286483777571567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A118567 (n + 1) * A239703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187813.P8624286483777571567

/-! ## A187813.P8968402910881272743

`lt[A239703(n), tanh(A239703(2*n+3))]`
-/

namespace A187813.P8968402910881272743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A239703 (2 * n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A187813.P8968402910881272743

/-! ## A187813.P16781370398241598068

`lt[A239703(n), A014963(A008864(n+2))]`
-/

namespace A187813.P16781370398241598068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008864 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187813.P16781370398241598068

/-!
# A187814: G.f. A(x) satisfies: 1/A(x)^2 + 4*x*A(x)^2 = 1/A(x^2) + 2*x*A(x^2).

The programs for A187814, there is no canonical definition to state claims against.
-/

/-! ## A187814.P15195906770857295820

`A107087(Δ[n²])/2`
-/

namespace A187814.P15195906770857295820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A187814.P15195906770857295820

/-! ## A187814.P14347286420031351282

`ceil(record[A107087(n)/2])`
-/

namespace A187814.P14347286420031351282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107087 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A187814.P14347286420031351282

/-! ## A187814.P5957855272766331022

`abs(A107087(2*n+1)/2)`
-/

namespace A187814.P5957855272766331022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A107087 (2 * n + 1) : ℚ) / 2|

end

end A187814.P5957855272766331022

/-! ## A187814.P2263047607359762847

`ceil(A107087(n+1+n)/2)`
-/

namespace A187814.P2263047607359762847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107087 (n + 1 + n) : ℚ) / 2⌉

end

end A187814.P2263047607359762847

/-! ## A187814.P15915648520326649341

`A107088(A005843(2*n+1))/2`
-/

namespace A187814.P15915648520326649341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 (A005843 (2 * n + 1)).toNat : ℚ) / 2

end

end A187814.P15915648520326649341

/-!
# A187816: Triangle read by rows in which row n lists the first 2^(n-1) terms of A006519 in nonincreasing order, n >= 1.

The programs for A187816, there is no canonical definition to state claims against.
-/

/-! ## A187816.P7329849396827368823

`(char[2^n-1]+1)*a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A187816.P7329849396827368823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A187816.P7329849396827368823

/-! ## A187816.P1773404524708074337

`2^A290255(n+1)`
-/

namespace A187816.P1773404524708074337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A290255 (n + 1) : ℤ)

end

end A187816.P1773404524708074337

/-! ## A187816.P14697665066318763771

`gcd(64, A059893(n+1))`
-/

namespace A187816.P14697665066318763771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 64 (A059893 (n + 1))

end

end A187816.P14697665066318763771

/-! ## A187816.P15109172552547963042

`2^(A065120(n+1)-1)`
-/

namespace A187816.P15109172552547963042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065120 (n + 1) - 1 : ℤ)

end

end A187816.P15109172552547963042

/-! ## A187816.P13603358521266777873

`2^val(A139709(n+1), 2)`
-/

namespace A187816.P13603358521266777873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A139709 (n + 1)).toNat 2

end

end A187816.P13603358521266777873

/-! ## A187816.P3006532860505197506

`2^val(A304624(n+1), 2)`
-/

namespace A187816.P3006532860505197506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A304624 (n + 1)).toNat 2

end

end A187816.P3006532860505197506

/-! ## A187816.P9155465644490578434

`gcd(2*a(floor(n/2)), A030109(n+1))` with `a(0)=1`
-/

namespace A187816.P9155465644490578434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (2 * a ⌊(n : ℚ) / 2⌋.toNat : ℤ) (A030109 (n + 1))

end

end A187816.P9155465644490578434

/-! ## A187816.P6210532889812659422

`A006519(A059893(n+1))`
-/

namespace A187816.P6210532889812659422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A059893 (n + 1)).toNat

end

end A187816.P6210532889812659422

/-! ## A187816.P3380165458472318109

`A011782(A065120(n+1))`
-/

namespace A187816.P3380165458472318109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A065120 (n + 1)).toNat

end

end A187816.P3380165458472318109

/-! ## A187816.P6877669794147858774

`A006519(A139708(n+1))`
-/

namespace A187816.P6877669794147858774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A139708 (n + 1)).toNat

end

end A187816.P6877669794147858774

/-!
# A187818: Triangle read by rows in which row n lists the first 2^(n-1) terms of A038712 in nonincreasing order, n >= 1.

The programs for A187818, there is no canonical definition to state claims against.
-/

/-! ## A187818.P7481071137476006783

`or(1, (char[2^n-1]+1)*a(ceil(n/2)-1))` with `a(0)=1`
-/

namespace A187818.P7481071137476006783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * a (⌈(n : ℚ) / 2⌉ - 1).toNat)

end

end A187818.P7481071137476006783

/-! ## A187818.P1644256184740158430

`∑{d}[(char[2^n-1]+1)*a(ceil(n/2)-1), #]` with `a(0)=1`
-/

namespace A187818.P1644256184740158430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) * f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A187818.P1644256184740158430

/-! ## A187818.P17987056483550449430

`char[2^n-1]+(char[2^n-1]+1)*a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A187818.P17987056483550449430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) * a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A187818.P17987056483550449430

/-! ## A187818.P422027528795861277

`∑{d}[A187816(n+1), #]`
-/

namespace A187818.P422027528795861277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A187818.P422027528795861277

/-! ## A187818.P5436320962299978713

`2^A065120(n+1)-1`
-/

namespace A187818.P5436320962299978713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065120 (n + 1) : ℤ) - 1

end

end A187818.P5436320962299978713

/-! ## A187818.P11477615253995746075

`A000225(A065120(n+1))`
-/

namespace A187818.P11477615253995746075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A065120 (n + 1)).toNat

end

end A187818.P11477615253995746075

/-! ## A187818.P64258781481592698

`A038712(A059893(n+1))`
-/

namespace A187818.P64258781481592698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A059893 (n + 1)).toNat

end

end A187818.P64258781481592698

/-! ## A187818.P2619647119189493160

`A038712(A139708(n+1))`
-/

namespace A187818.P2619647119189493160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A139708 (n + 1)).toNat

end

end A187818.P2619647119189493160

/-! ## A187818.P10266243269273422039

`A000203(A187816(n+1))`
-/

namespace A187818.P10266243269273422039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A187816 (n + 1)).toNat

end

end A187818.P10266243269273422039

/-! ## A187818.P9300338773858427418

`A135521(A059894(n+1))`
-/

namespace A187818.P9300338773858427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (A059894 (n + 1)).toNat

end

end A187818.P9300338773858427418

/-!
# A187819: Numbers k such that (9^k + 8^k)/17 is prime.

The programs for A187819, there is no canonical definition to state claims against.
-/

/-! ## A187819.P17288747646858808443

`record[p?[A130941(A142705(n+1))]]`
-/

namespace A187819.P17288747646858808443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130941 (A142705 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187819.P17288747646858808443

/-!
# A187820: G.f. satisfies: A(x) = x + x*Sum{n>=0} x^n/n! * d^n/dx^n A(x)^(n+1).

The programs for A187820, there is no canonical definition to state claims against.
-/

/-! ## A187820.P15688434014385220169

`A028409(2*n)-n%4`
-/

namespace A187820.P15688434014385220169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028409 (2 * n) - ((n % 4 : ℕ) : ℤ)

end

end A187820.P15688434014385220169

/-! ## A187820.P3165251376050920005

`A139130(A007662(n)!)`
-/

namespace A187820.P3165251376050920005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139130 (Nat.factorial (A007662 n).toNat)

end

end A187820.P3165251376050920005

/-!
# A187821: Number of non-squashing partitions of n into odd parts.

The programs for A187821, there is no canonical definition to state claims against.
-/

/-! ## A187821.P10318118562146542763

`A330936(A038616(n+1))+A112193(A285869(n))`
-/

namespace A187821.P10318118562146542763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330936 (A038616 (n + 1)).toNat + A112193 (A285869 n).toNat

end

end A187821.P10318118562146542763

/-! ## A187821.P4798232107894814181

`A112193(A285869(n))+A036987(A234346(n+3))`
-/

namespace A187821.P4798232107894814181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112193 (A285869 n).toNat + A036987 (A234346 (n + 3)).toNat

end

end A187821.P4798232107894814181

/-! ## A187821.P14231969534616652636

`A112193(A285869(n))+A036987((12*n+7)²)`
-/

namespace A187821.P14231969534616652636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112193 (A285869 n).toNat + A036987 ((12 * n + 7) ^ 2)

end

end A187821.P14231969534616652636

/-! ## A187821.P8124885026663181792

`A112193(A285869(n))%A000010(4*A000032(n+1))`
-/

namespace A187821.P8124885026663181792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112193 (A285869 n).toNat) (A000010 (4 * A000032 (n + 1)).toNat)

end

end A187821.P8124885026663181792

/-! ## A187821.P11598593538305609765

`A112193(A285869(n))%A006530(A022117(n))`
-/

namespace A187821.P11598593538305609765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112193 (A285869 n).toNat) (A006530 (A022117 n).toNat)

end

end A187821.P11598593538305609765

/-!
# A187822: Smallest k such that the partial sums of the divisors of k (taken in increasing order) contain exactly n primes.

The programs for A187822, there is no canonical definition to state claims against.
-/

/-! ## A187822.P4956230724714831246

`∑{d}[A054928(n+1), gcd(3, #)]`
-/

namespace A187822.P4956230724714831246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 3 d

end

end A187822.P4956230724714831246

/-! ## A187822.P11880093444380232774

`A175183(A150730(n))`
-/

namespace A187822.P11880093444380232774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175183 (A150730 n).toNat

end

end A187822.P11880093444380232774

/-!
# A187823: Primes of the form (p^x - 1)/(p^y - 1), where p is prime, y > 1, and y is the largest proper divisor of x.

The programs for A187823, there is no canonical definition to state claims against.
-/

/-! ## A187823.P17203347208445057023

`∩[A003424(n+1), A383925(n+1)]`
-/

namespace A187823.P17203347208445057023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187823.P17203347208445057023

/-!
# A187825: Smallest k such that the partial sums of the divisors of k (in decreasing order) generate n primes.

The programs for A187825, there is no canonical definition to state claims against.
-/

/-! ## A187825.P2846318676565101651

`A303954(A291265(n)-A313568(n))`
-/

namespace A187825.P2846318676565101651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303954 (A291265 n - A313568 n).toNat

end

end A187825.P2846318676565101651

/-!
# A187826: G.f. satisfies: A(x) = Sum_{n>=0} ((1 + x*A(x))^n - 1)^n / (1 + x*A(x))^(n^2).

The programs for A187826, there is no canonical definition to state claims against.
-/

/-! ## A187826.P8692887455461502822

`A189663(A362549(2*n)+A069916(n))`
-/

namespace A187826.P8692887455461502822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A362549 (2 * n) + A069916 n).toNat

end

end A187826.P8692887455461502822

/-! ## A187826.P10872849978354993898

`A312579(A263200(n+2)%A263187(n+1))`
-/

namespace A187826.P10872849978354993898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312579 (Int.tmod (A263200 (n + 2)) (A263187 (n + 1))).toNat

end

end A187826.P10872849978354993898

/-!
# A187827: G.f. satisfies: A(x) = Sum_{n>=0} (1 - (1 - x*A(x))^n)^n.

The programs for A187827, there is no canonical definition to state claims against.
-/

/-! ## A187827.P13861255227431658884

`A008619(A005923(n))-A000129(n)`
-/

namespace A187827.P13861255227431658884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005923 n).toNat - A000129 n

end

end A187827.P13861255227431658884

/-! ## A187827.P6997905591845752203

`A032742(A005923(n)-A045883(n))`
-/

namespace A187827.P6997905591845752203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A005923 n - A045883 n).toNat

end

end A187827.P6997905591845752203

/-!
# A187828: Partition the sequence of consecutive primes into groups so that the absolute value of the alternating sum (-1)^n (An) with n = 0,....m in each group is prime.

The programs for A187828, there is no canonical definition to state claims against.
-/

/-! ## A187828.P10877594410871274499

`A108702(A178832(n)*A284796(n+1))`
-/

namespace A187828.P10877594410871274499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108702 (A178832 n * A284796 (n + 1)).toNat

end

end A187828.P10877594410871274499

/-! ## A187828.P17415228729139232223

`A108702(A284796(n+1)^A178832(n))`
-/

namespace A187828.P17415228729139232223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108702 (SequenceMachineLib.roundAway ((A284796 (n + 1) : ℚ) ^ (A178832 n : ℤ))).toNat

end

end A187828.P17415228729139232223

/-! ## A187828.P523099682737773036

`A108702(lcm(A007318(n), A284796(n+1)))`
-/

namespace A187828.P523099682737773036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108702 (Int.lcm (A007318 n) (A284796 (n + 1)))

end

end A187828.P523099682737773036

/-!
# A187830: a(n)=2*a(n-1)+(n+3)*a(n-2)-(n+3)*a(n-3), a(0)=0, a(1)=0, a(2)=1.

The programs for A187830, the canonical program `A187830.P14140977930417967013` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187830 has offset 0).

The definition of A187830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(n+3)*a(n-2)-(n+3)*a(n-3)` (program `A187830.P14140977930417967013`, by `A187830.P14140977930417967013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187830.P14140977930417967013

`2*a(n-1)+(n+3)*a(n-2)-(n+3)*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187830

/-- `2*a(n-1)+(n+3)*a(n-2)-(n+3)*a(n-3)` -/
def P14140977930417967013.Spec : Prop :=
  ∀ n, P14140977930417967013.a n = A187830 n

theorem P14140977930417967013.correct : P14140977930417967013.Spec := by
  intro n
  simp only [A187830]

end A187830

/-! ## A187830.P4361206279683725623

`a(n-1)+(n+4)*a(n-2)+1` with `a(0)=0, a(1)=0`
-/

namespace A187830.P4361206279683725623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + ((n + 4) * a (n - 2) + 1)

end

end A187830.P4361206279683725623

namespace A187830

/-- `a(n-1)+(n+4)*a(n-2)+1` -/
def P4361206279683725623.Spec : Prop :=
  ∀ n, (P4361206279683725623.a n : ℤ) = A187830 n

end A187830

/-! ## A187830.P6059939700163059178

`A007094(A213720(n))%A003525(n+1)`
-/

namespace A187830.P6059939700163059178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A213720 n).toNat) (A003525 (n + 1))

end

end A187830.P6059939700163059178

namespace A187830

/-- `A007094(A213720(n))%A003525(n+1)` -/
def P6059939700163059178.Spec : Prop :=
  ∀ n, P6059939700163059178.a n = A187830 n

end A187830

/-!
# A187832: Decimal expansion of integral from 1/2 to 1 of (1-x)/x dx.

The programs for A187832, there is no canonical definition to state claims against.
-/

/-! ## A187832.P12603252205787933671

`A002162(n)-A020761(n)`
-/

namespace A187832.P12603252205787933671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 n - A020761 n

end

end A187832.P12603252205787933671

/-! ## A187832.P12150929571569214208

`A002162(6*A000007(n)+n)`
-/

namespace A187832.P12150929571569214208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 (6 * A000007 n + (n : ℤ)).toNat

end

end A187832.P12150929571569214208

/-! ## A187832.P10579851651975624809

`A002162(6*A020761(n)+n)`
-/

namespace A187832.P10579851651975624809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 (6 * A020761 n + (n : ℤ)).toNat

end

end A187832.P10579851651975624809

/-! ## A187832.P11648190496118512137

`A002162(n)^(1-A000007(n))`
-/

namespace A187832.P11648190496118512137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002162 n : ℚ) ^ (1 - A000007 n : ℤ)

end

end A187832.P11648190496118512137

/-! ## A187832.P9659823083872303758

`A002162(n)^and(1, A020946(n))`
-/

namespace A187832.P9659823083872303758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002162 n : ℚ) ^ (Int.land 1 (A020946 n) : ℤ)

end

end A187832.P9659823083872303758

/-! ## A187832.P15423844326170047309

`A002162(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A187832.P15423844326170047309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002162 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A187832.P15423844326170047309

/-! ## A187832.P2467145416145734852

`A002162(n*a(A020761(n)))` with `a(0)=1`
-/

namespace A187832.P2467145416145734852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002162 ((n : ℤ) * a (A020761 n).toNat).toNat

end

end A187832.P2467145416145734852

/-! ## A187832.P5755270862176700746

`A002162(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A187832.P5755270862176700746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002162 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A187832.P5755270862176700746

/-! ## A187832.P15325877184770352572

`A002162(n/a(A020761(n)))` with `a(0)=1`
-/

namespace A187832.P15325877184770352572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002162 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A020761 n).toNat : ℚ))).toNat

end

end A187832.P15325877184770352572

/-! ## A187832.P7190516125300312711

`A002162(n)%(32%A016887(n))`
-/

namespace A187832.P7190516125300312711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002162 n) (Int.tmod 32 (A016887 n))

end

end A187832.P7190516125300312711

/-! ## A187832.P11392076151336724611

`A002162(n)^A001221(A001316(n))`
-/

namespace A187832.P11392076151336724611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002162 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A187832.P11392076151336724611

/-! ## A187832.P14964721335691230192

`A002162(n)^A001221(A134660(n))`
-/

namespace A187832.P14964721335691230192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002162 n : ℚ) ^ (A001221 (A134660 n).toNat : ℤ)

end

end A187832.P14964721335691230192

/-! ## A187832.P8618967622777141560

`gcd(A002162(n), A008683(A008574(n)))`
-/

namespace A187832.P8618967622777141560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002162 n) (A008683 (A008574 n).toNat)

end

end A187832.P8618967622777141560

/-! ## A187832.P17205275340003693146

`A002162(n)^A001222(A008578(n+1))`
-/

namespace A187832.P17205275340003693146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002162 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A187832.P17205275340003693146

/-! ## A187832.P7743173805703220159

`A002162(n)+A000038(a(A000038(n)))` with `a(0)=1`
-/

namespace A187832.P7743173805703220159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002162 n + A000038 (a (A000038 n).toNat).toNat

end

end A187832.P7743173805703220159

/-! ## A187832.P9212165207949989157

`A020761(a(A020761(n)))+A002162(n)` with `a(0)=1`
-/

namespace A187832.P9212165207949989157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020761 (a (A020761 n).toNat).toNat + A002162 n

end

end A187832.P9212165207949989157

/-! ## A187832.P6974489291937984264

`A002162(A000038(n)+n)-A000038(n)`
-/

namespace A187832.P6974489291937984264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 (A000038 n + (n : ℤ)).toNat - A000038 n

end

end A187832.P6974489291937984264

/-! ## A187832.P195290307503000698

`A002162(gcd(n, A002162(n)*A008574(n)))`
-/

namespace A187832.P195290307503000698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 (Int.gcd (n : ℤ) (A002162 n * A008574 n))

end

end A187832.P195290307503000698

/-! ## A187832.P13833050276059740923

`A002162(n)+A365524(n)-A016639(n+1)`
-/

namespace A187832.P13833050276059740923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 n + (A365524 n - A016639 (n + 1 + 1))

end

end A187832.P13833050276059740923

/-!
# A187833: Rank transform of the sequence floor(3n/2-1/2); complement of A187834.

The programs for A187833, there is no canonical definition to state claims against.
-/

/-! ## A187833.P8563485794910640875

`comp[A187225(n+1)-2]`
-/

namespace A187833.P8563485794910640875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187833.P8563485794910640875

/-! ## A187833.P6009806768052219031

`comp[A187834(n+1)-1]+1`
-/

namespace A187833.P6009806768052219031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187833.P6009806768052219031

/-! ## A187833.P3213392671318836202

`(A187835(n)+2)/a(n%gcd(4, n))` with `a(0)=1`
-/

namespace A187833.P3213392671318836202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A187835 n + 2 : ℚ) / a (n % Nat.gcd 4 n)

end

end A187833.P3213392671318836202

/-! ## A187833.P3691826106396230428

`A187224(n+2)-2`
-/

namespace A187833.P3691826106396230428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 2) - 2

end

end A187833.P3691826106396230428

/-! ## A187833.P3853681523006733618

`∑[A002620(Δ[A187224(n+1)])]+n`
-/

namespace A187833.P3853681523006733618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187833.P3853681523006733618

/-! ## A187833.P4146151034509308422

`∑[A004884(Δ[A187224(n+1)])]+n`
-/

namespace A187833.P4146151034509308422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187833.P4146151034509308422

/-! ## A187833.P13005644548551512705

`∑[Δ[A187224(n+1)]^(A000040(n+1)%2)]`
-/

namespace A187833.P13005644548551512705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187833.P13005644548551512705

/-! ## A187833.P3545824253411455693

`A023444(A187224(n+2))`
-/

namespace A187833.P3545824253411455693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187224 (n + 2)).toNat

end

end A187833.P3545824253411455693

/-! ## A187833.P10820204703438743105

`A023446(A187224(n+2)+2)`
-/

namespace A187833.P10820204703438743105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A187224 (n + 2) + 2).toNat

end

end A187833.P10820204703438743105

/-!
# A187834: Complement of A187833.

The programs for A187834, there is no canonical definition to state claims against.
-/

/-! ## A187834.P4322248465784811876

`A187225(n+2)-2`
-/

namespace A187834.P4322248465784811876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2) - 2

end

end A187834.P4322248465784811876

/-! ## A187834.P887016259606813236

`∑[abs(Δ[A187225(n+1)])]`
-/

namespace A187834.P887016259606813236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P887016259606813236

/-! ## A187834.P12886283792981594972

`∑[∑{digits}[Δ[A187225(ϕ²-(ϕ-n))], #]]`
-/

namespace A187834.P12886283792981594972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P12886283792981594972

/-! ## A187834.P345573376385220500

`∑[A000041(Δ[A187225(n+1)])]`
-/

namespace A187834.P345573376385220500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P345573376385220500

/-! ## A187834.P16335329834010716167

`∑[A001096(Δ[A187225(n+1)])]`
-/

namespace A187834.P16335329834010716167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P16335329834010716167

/-! ## A187834.P5607619390602342183

`∑[A002998(Δ[A187225(n+1)])]`
-/

namespace A187834.P5607619390602342183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P5607619390602342183

/-! ## A187834.P17486623643473611953

`∑[A005117(Δ[A187225(n+1)])]`
-/

namespace A187834.P17486623643473611953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P17486623643473611953

/-! ## A187834.P17854746944859857928

`∑[A006530(Δ[A187225(n+1)])]`
-/

namespace A187834.P17854746944859857928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P17854746944859857928

/-! ## A187834.P6611143819611399666

`∑[A014963(Δ[A187225(n+1)])]`
-/

namespace A187834.P6611143819611399666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P6611143819611399666

/-! ## A187834.P9234159589611875847

`∑[A020639(Δ[A187225(n+1)])]`
-/

namespace A187834.P9234159589611875847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187834.P9234159589611875847

/-! ## A187834.P6094087430225400841

`A004396(A187224(n+2))+n`
-/

namespace A187834.P6094087430225400841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A187224 (n + 2)).toNat + (n : ℤ)

end

end A187834.P6094087430225400841

/-! ## A187834.P12603732279669735199

`A023444(A187225(n+2))`
-/

namespace A187834.P12603732279669735199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187225 (n + 2)).toNat

end

end A187834.P12603732279669735199

/-!
# A187835: Rank transform of the sequence floor(3n/2-2/3); complement of A187836.

The programs for A187835, there is no canonical definition to state claims against.
-/

/-! ## A187835.P13668834916902184601

`comp[A187834(n+1)-2]`
-/

namespace A187835.P13668834916902184601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187835.P13668834916902184601

/-! ## A187835.P10766577747633210559

`comp[A187225(n+1)-4]`
-/

namespace A187835.P10766577747633210559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187835.P10766577747633210559

/-! ## A187835.P15211002283464274585

`comp[A187836(n+1)-1]+1`
-/

namespace A187835.P15211002283464274585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187836 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187835.P15211002283464274585

/-! ## A187835.P7612672489432288876

`A187833(n+2)-2`
-/

namespace A187835.P7612672489432288876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187833 (n + 2) - 2

end

end A187835.P7612672489432288876

/-! ## A187835.P2937825066885036356

`∑[A004913(Δ[A187833(n+1)])]+n`
-/

namespace A187835.P2937825066885036356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187835.P2937825066885036356

/-! ## A187835.P16558263739834820859

`∑[A295731(Δ[A187833(n+1)])]+2*n+1`
-/

namespace A187835.P16558263739834820859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A187835.P16558263739834820859

/-! ## A187835.P4828661700249435930

`A295731(Δ[A187833(n+1)])+A187833(n+1)`
-/

namespace A187835.P4828661700249435930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (f1 (n + 1) - f1 n).toNat + A187833 (n + 1)

end

end A187835.P4828661700249435930

/-! ## A187835.P1291153973731179480

`A187224(n+3)-4`
-/

namespace A187835.P1291153973731179480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 3) - 4

end

end A187835.P1291153973731179480

/-! ## A187835.P4126929308864190056

`A023444(A187833(n+2))`
-/

namespace A187835.P4126929308864190056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187833 (n + 2)).toNat

end

end A187835.P4126929308864190056

/-! ## A187835.P16942007185114701811

`A023446(A187224(n+3))`
-/

namespace A187835.P16942007185114701811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A187224 (n + 3)).toNat

end

end A187835.P16942007185114701811

/-!
# A187836: Complement of A187835.

The programs for A187836, there is no canonical definition to state claims against.
-/

/-! ## A187836.P17569570360208706615

`A187834(n+2)-2`
-/

namespace A187836.P17569570360208706615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 2) - 2

end

end A187836.P17569570360208706615

/-! ## A187836.P10747943615004330348

`∑[abs(Δ[A187834(n+1)])]`
-/

namespace A187836.P10747943615004330348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P10747943615004330348

/-! ## A187836.P6407157421807301749

`A187225(n+3)-4`
-/

namespace A187836.P6407157421807301749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 3) - 4

end

end A187836.P6407157421807301749

/-! ## A187836.P16464916289537034027

`∑[abs(Δ[A187225(n+2)])]`
-/

namespace A187836.P16464916289537034027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P16464916289537034027

/-! ## A187836.P18368892656146312540

`∑[A000041(Δ[A187225(n+2)])]`
-/

namespace A187836.P18368892656146312540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P18368892656146312540

/-! ## A187836.P6118188552431024279

`∑[A001096(Δ[A187225(n+2)])]`
-/

namespace A187836.P6118188552431024279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P6118188552431024279

/-! ## A187836.P12027396280799506576

`∑[A002998(Δ[A187225(n+2)])]`
-/

namespace A187836.P12027396280799506576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P12027396280799506576

/-! ## A187836.P2786782624083125657

`∑[A005117(Δ[A187225(n+2)])]`
-/

namespace A187836.P2786782624083125657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P2786782624083125657

/-! ## A187836.P5723654263465348649

`∑[A006530(Δ[A187225(n+2)])]`
-/

namespace A187836.P5723654263465348649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P5723654263465348649

/-! ## A187836.P5108428692337214984

`∑[A014963(Δ[A187225(n+2)])]`
-/

namespace A187836.P5108428692337214984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P5108428692337214984

/-! ## A187836.P3603425326925767214

`∑[A020639(Δ[A187225(n+2)])]`
-/

namespace A187836.P3603425326925767214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187836.P3603425326925767214

/-! ## A187836.P8022908948014913028

`A023444(A187834(n+2))`
-/

namespace A187836.P8022908948014913028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187834 (n + 2)).toNat

end

end A187836.P8022908948014913028

/-!
# A187837: Rank transform of the sequence floor(rn/2-1/2), where r=(1+sqrt(5))/2 (the golden ratio); complement of A187838.

The programs for A187837, there is no canonical definition to state claims against.
-/

/-! ## A187837.P6346570733076042587

`comp[A187838(n+1)-1]+1`
-/

namespace A187837.P6346570733076042587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187838 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187837.P6346570733076042587

/-! ## A187837.P17278643262146770300

`comp[∪[A187838(n+1), A187852(n+1)]]`
-/

namespace A187837.P17278643262146770300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187838 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187837.P17278643262146770300

/-! ## A187837.P2278505366141682934

`A233795(A313045(n+1))`
-/

namespace A187837.P2278505366141682934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A313045 (n + 1)).toNat

end

end A187837.P2278505366141682934

/-!
# A187838: Complement of A187837.

The programs for A187838, there is no canonical definition to state claims against.
-/

/-! ## A187838.P13981262173261037201

`eq[char[A187837(n+1)], A151933(n)]`
-/

namespace A187838.P13981262173261037201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187837 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187838.P13981262173261037201

/-! ## A187838.P1724001445182832715

`eq[char[A187837(n+1)], A151622(n)]`
-/

namespace A187838.P1724001445182832715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187837 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187838.P1724001445182832715

/-! ## A187838.P16753396033353721721

`A054088(n+1)-A209899(A340787(3*n+1))`
-/

namespace A187838.P16753396033353721721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) - A209899 (A340787 (3 * n + 1)).toNat

end

end A187838.P16753396033353721721

/-! ## A187838.P18196221463722672293

`A329791(n+1)-n%A293949(2*n)`
-/

namespace A187838.P18196221463722672293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 (n + 1) - Int.tmod (n : ℤ) (A293949 (2 * n))

end

end A187838.P18196221463722672293

/-! ## A187838.P9679424013535971197

`A003151(n+1)-A001878(A000079(n))`
-/

namespace A187838.P9679424013535971197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - A001878 (A000079 n).toNat

end

end A187838.P9679424013535971197

/-!
# A187839: Rank transform of the sequence floor(n*sqrt(2)-1/2); complement of A187840.

The programs for A187839, there is no canonical definition to state claims against.
-/

/-! ## A187839.P8588303518811920540

`comp[A187840(n+1)-1]+1`
-/

namespace A187839.P8588303518811920540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187840 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187839.P8588303518811920540

/-! ## A187839.P5518801419663907052

`eq[char[A187840(n+1)], A000007(n)]`
-/

namespace A187839.P5518801419663907052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187839.P5518801419663907052

/-! ## A187839.P9653067115999491730

`eq[char[A187840(n+1)], A000038(n)]`
-/

namespace A187839.P9653067115999491730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187839.P9653067115999491730

/-! ## A187839.P15144967419776972445

`eq[char[A187840(n+1)], A036987(2*n)]`
-/

namespace A187839.P15144967419776972445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187839.P15144967419776972445

/-! ## A187839.P8145885821038160745

`eq[A028310(n)-n, char[A187840(n+1)]]`
-/

namespace A187839.P8145885821038160745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187840 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A187839.P8145885821038160745

/-!
# A187840: Complement of A187839.

The programs for A187840, there is no canonical definition to state claims against.
-/

/-! ## A187840.P17709494227471538545

`eq[char[A187839(n+1)], A000007(n)]`
-/

namespace A187840.P17709494227471538545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187840.P17709494227471538545

/-! ## A187840.P1555538173742395381

`eq[char[A187839(n+1)], A000038(n)]`
-/

namespace A187840.P1555538173742395381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187840.P1555538173742395381

/-! ## A187840.P4850400657472774778

`eq[n, A028310(n)-char[A187839(n+1)]]`
-/

namespace A187840.P4850400657472774778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187839 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187840.P4850400657472774778

/-! ## A187840.P12724210135147643109

`eq[char[A187839(n+1)], A264739(2*n+1)]`
-/

namespace A187840.P12724210135147643109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187840.P12724210135147643109

/-! ## A187840.P6318888629340009383

`eq[char[A187839(n+1)], A151933(n)]`
-/

namespace A187840.P6318888629340009383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187840.P6318888629340009383

/-!
# A187841: Rank transform of the sequence floor(n*sqrt(2)+1/2); complement of A187842.

The programs for A187841, there is no canonical definition to state claims against.
-/

/-! ## A187841.P13272354352354461135

`comp[A187842(n+1)-1]+1`
-/

namespace A187841.P13272354352354461135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187842 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187841.P13272354352354461135

/-! ## A187841.P11823662922417402443

`eq[char[A187842(n+1)], A000007(n)]`
-/

namespace A187841.P11823662922417402443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187842 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187841.P11823662922417402443

/-! ## A187841.P15638958286019668079

`eq[char[A187842(n+1)], A000038(n)]`
-/

namespace A187841.P15638958286019668079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187842 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187841.P15638958286019668079

/-! ## A187841.P5890696960350017372

`eq[char[A187842(n+1)], A151933(n)]`
-/

namespace A187841.P5890696960350017372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187842 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187841.P5890696960350017372

/-! ## A187841.P13011776267988274973

`eq[char[A187842(n+1)], A151622(n)]`
-/

namespace A187841.P13011776267988274973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187842 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187841.P13011776267988274973

/-!
# A187842: Complement of A187841.

The programs for A187842, there is no canonical definition to state claims against.
-/

/-! ## A187842.P8664737740743128348

`eq[char[A187841(n+1)], A000007(n)]`
-/

namespace A187842.P8664737740743128348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187841 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187842.P8664737740743128348

/-! ## A187842.P9100608704969913004

`eq[char[A187841(n+1)], A151622(n)]`
-/

namespace A187842.P9100608704969913004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187841 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187842.P9100608704969913004

/-! ## A187842.P12211039886236413540

`∑[A005680(3*n+2)]%A105703(3*n+4)`
-/

namespace A187842.P12211039886236413540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A105703 (3 * n + 4))

end

end A187842.P12211039886236413540

/-! ## A187842.P573871746776704731

`∑[gcd(A005680(3*n+2), A092000(2*n+5))]`
-/

namespace A187842.P573871746776704731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005680 (3 * n + 2)) (A092000 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187842.P573871746776704731

/-! ## A187842.P272599157066048947

`A252169(n+1)+A235145(A000712(n))`
-/

namespace A187842.P272599157066048947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252169 (n + 1) + A235145 (A000712 n).toNat

end

end A187842.P272599157066048947

/-!
# A187843: Stanley Sequence S(0,5).

The programs for A187843, there is no canonical definition to state claims against.
-/

/-! ## A187843.P1586779774345654010

`∑[A231990(A028310(n))]-5`
-/

namespace A187843.P1586779774345654010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231990 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A187843.P1586779774345654010

/-! ## A187843.P4869133328297292188

`∑[A231990(n+1)]-A231990(n+1)`
-/

namespace A187843.P4869133328297292188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A231990 (n + 1)

end

end A187843.P4869133328297292188

/-! ## A187843.P4494277406312920083

`∑[A231990(A123108(2*n))]-5`
-/

namespace A187843.P4494277406312920083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231990 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A187843.P4494277406312920083

/-! ## A187843.P13833224095238209753

`∑[A057427(n)*A231990(A123108(2*n))]`
-/

namespace A187843.P13833224095238209753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231990 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187843.P13833224095238209753

/-! ## A187843.P11603359158888792710

`∑[A231990(A123108(2*n))%A008458(n)]`
-/

namespace A187843.P11603359158888792710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231990 (A123108 (2 * n)).toNat) (A008458 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187843.P11603359158888792710

/-!
# A187844: Product of negated digits of n.

The programs for A187844, the canonical program `A187844.P2226367484960758357` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187844 has offset 0).

The definition of A187844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187844.P2226367484960758357

`∏{digits}[n, -#]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187844

/-- `∏{digits}[n, -#]` -/
def P2226367484960758357.Spec : Prop :=
  ∀ n, P2226367484960758357.a n = A187844 n

theorem P2226367484960758357.correct : P2226367484960758357.Spec := by
  intro n
  simp only [A187844]

end A187844

/-! ## A187844.P12089579323497394988

`round(∏{digits}[n, 1/(n+3)-#])`
-/

namespace A187844.P12089579323497394988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 / (n + 3 : ℚ) - (x : ℚ)).prod

end

end A187844.P12089579323497394988

namespace A187844

/-- `round(∏{digits}[n, 1/(n+3)-#])` -/
def P12089579323497394988.Spec : Prop :=
  ∀ n, P12089579323497394988.a n = A187844 n

end A187844

/-! ## A187844.P950863497397179740

`∏{digits}[n, #]*∏{digits}[n, A321804(#)]`
-/

namespace A187844.P950863497397179740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A321804 x).prod

end

end A187844.P950863497397179740

namespace A187844

/-- `∏{digits}[n, #]*∏{digits}[n, A321804(#)]` -/
def P950863497397179740.Spec : Prop :=
  ∀ n, P950863497397179740.a n = A187844 n

end A187844

/-! ## A187844.P14367525338986163071

`A007954(n)-2*A007954(A051022(n))`
-/

namespace A187844.P14367525338986163071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n - 2 * A007954 (A051022 n).toNat

end

end A187844.P14367525338986163071

namespace A187844

/-- `A007954(n)-2*A007954(A051022(n))` -/
def P14367525338986163071.Spec : Prop :=
  ∀ n, P14367525338986163071.a n = A187844 n

end A187844

/-!
# A187845: Partial sums of A187844.

The programs for A187845, the canonical program `A187845.P8152691327204587136` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187845 has offset 0).

The definition of A187845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187845.P8152691327204587136

`∑[∏{digits}[n, -#]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187845

/-- `∑[∏{digits}[n, -#]]` -/
def P8152691327204587136.Spec : Prop :=
  ∀ n, P8152691327204587136.a n = A187845 n

theorem P8152691327204587136.correct : P8152691327204587136.Spec := by
  intro n
  simp only [A187845]

end A187845

/-! ## A187845.P6791479070312763195

`∏{digits}[n, -#]+a(n-1)` with `a(0)=0`
-/

namespace A187845.P6791479070312763195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x : ℤ)).prod + a (n - 1)

end

end A187845.P6791479070312763195

namespace A187845

/-- `∏{digits}[n, -#]+a(n-1)` -/
def P6791479070312763195.Spec : Prop :=
  ∀ n, P6791479070312763195.a n = A187845 n

end A187845

/-! ## A187845.P1091386215224585513

`∑[A187844(n)]`
-/

namespace A187845.P1091386215224585513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187845.P1091386215224585513

namespace A187845

/-- `∑[A187844(n)]` -/
def P1091386215224585513.Spec : Prop :=
  ∀ n, P1091386215224585513.a n = A187845 n

end A187845

/-! ## A187845.P17756314589381845704

`a(n-1)-A187844(A017281(n))` with `a(0)=0`
-/

namespace A187845.P17756314589381845704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A187844 (A017281 n).toNat

end

end A187845.P17756314589381845704

namespace A187845

/-- `a(n-1)-A187844(A017281(n))` -/
def P17756314589381845704.Spec : Prop :=
  ∀ n, P17756314589381845704.a n = A187845 n

end A187845

/-!
# A187847: Number of permutations p of [n] with p(i) <> i^2.

The programs for A187847, there is no canonical definition to state claims against.
-/

/-! ## A187847.P4643688543973434282

`A047920(A000196(n)+∑[n])`
-/

namespace A187847.P4643688543973434282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A187847.P4643688543973434282

/-! ## A187847.P17722202919244993749

`A047920(A000217(n)+A000196(n))`
-/

namespace A187847.P17722202919244993749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n + A000196 n).toNat

end

end A187847.P17722202919244993749

/-! ## A187847.P14753275317779907044

`A068106(A028391(n)+A000217(n))`
-/

namespace A187847.P14753275317779907044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A028391 n + A000217 n).toNat

end

end A187847.P14753275317779907044

/-! ## A187847.P13009026307310272174

`A068106(A000096(n)-A000196(n))`
-/

namespace A187847.P13009026307310272174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n - A000196 n).toNat

end

end A187847.P13009026307310272174

/-! ## A187847.P18090304275311545924

`A047920(A000096(n)-A028391(n))`
-/

namespace A187847.P18090304275311545924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000096 n - A028391 n).toNat

end

end A187847.P18090304275311545924

/-! ## A187847.P11621976121244246989

`A068106(A034856(n+1)-A078358(n+1))`
-/

namespace A187847.P11621976121244246989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A034856 (n + 1) - A078358 (n + 1)).toNat

end

end A187847.P11621976121244246989

/-! ## A187847.P10231575467167278555

`A047920(A059365(A027379(n))+A003059(n+1))`
-/

namespace A187847.P10231575467167278555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A059365 (A027379 n).toNat + A003059 (n + 1)).toNat

end

end A187847.P10231575467167278555

/-!
# A187848: a(n) is the moment of order n for the probability density function defined by rho(x)=exp(x-1)/((Ei(x-1))^2+Pi^2) over the interval 1..infinity, with Ei the exponential integral.

The programs for A187848, there is no canonical definition to state claims against.
-/

/-! ## A187848.P1562022776636801227

`A056173(10^n)+∑{d}[n+1, #]`
-/

namespace A187848.P1562022776636801227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (10 ^ n) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A187848.P1562022776636801227

/-!
# A187850: T(n,k) is the number of n-step king-knight's tours (piece capable of both kinds of moves) on a k X k board summed over all starting positions.

The programs for A187850, there is no canonical definition to state claims against.
-/

/-! ## A187850.P12663742468738312016

`A187027(n+1)+A181831(A185254(n))`
-/

namespace A187850.P12663742468738312016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (n + 1) + A181831 (A185254 n).toNat

end

end A187850.P12663742468738312016

/-! ## A187850.P8138501164449699447

`A187027(A043317(n+1))`
-/

namespace A187850.P8138501164449699447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A043317 (n + 1)).toNat

end

end A187850.P8138501164449699447

/-! ## A187850.P531395152954962226

`A187027(A044914(n+1))`
-/

namespace A187850.P531395152954962226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A044914 (n + 1)).toNat

end

end A187850.P531395152954962226

/-! ## A187850.P12246032208381085053

`A187027(A055648(n+1))`
-/

namespace A187850.P12246032208381085053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A055648 (n + 1)).toNat

end

end A187850.P12246032208381085053

/-! ## A187850.P8262262550790080297

`A187027(A132378(n+1))`
-/

namespace A187850.P8262262550790080297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A132378 (n + 1)).toNat

end

end A187850.P8262262550790080297

/-!
# A187851: Number of 3-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187851, there is no canonical definition to state claims against.
-/

/-! ## A187851.P11603342663317952833

`A187850(∑[n+2]+4)`
-/

namespace A187851.P11603342663317952833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187851.P11603342663317952833

/-! ## A187851.P8321302573849368839

`lcm(2, A187850(A167614(n+1)))`
-/

namespace A187851.P8321302573849368839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187850 (A167614 (n + 1)).toNat)

end

end A187851.P8321302573849368839

/-! ## A187851.P7270355395054543197

`A187850(A167614(n+1))+A006927(n)`
-/

namespace A187851.P7270355395054543197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167614 (n + 1)).toNat + A006927 n

end

end A187851.P7270355395054543197

/-! ## A187851.P410906092068464171

`A187850(A167614(n+1))+A011734(n)`
-/

namespace A187851.P410906092068464171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167614 (n + 1)).toNat + A011734 n

end

end A187851.P410906092068464171

/-! ## A187851.P4777678082072810103

`A187850(A167614(n+1))+A025439(n)`
-/

namespace A187851.P4777678082072810103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167614 (n + 1)).toNat + A025439 n

end

end A187851.P4777678082072810103

/-!
# A187852: Number of 4-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187852, there is no canonical definition to state claims against.
-/

/-! ## A187852.P11381778254757939340

`A187850(A141214(n)+7)`
-/

namespace A187852.P11381778254757939340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A141214 n + 7).toNat

end

end A187852.P11381778254757939340

/-! ## A187852.P10667140652261040651

`A187850(A052905(n)+9)`
-/

namespace A187852.P10667140652261040651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A052905 n + 9).toNat

end

end A187852.P10667140652261040651

/-! ## A187852.P37537582038017667

`A187850(A055999(n)+10)`
-/

namespace A187852.P37537582038017667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A055999 n + 10).toNat

end

end A187852.P37537582038017667

/-! ## A187852.P7083658136902956602

`A187850(eq[5, A066657(n)])`
-/

namespace A187852.P7083658136902956602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187852.P7083658136902956602

/-! ## A187852.P16711749862123418344

`A187850(Δ[A008778(n)]+6)`
-/

namespace A187852.P16711749862123418344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (f1 (n + 1) - f1 n + 6).toNat

end

end A187852.P16711749862123418344

/-!
# A187853: Number of 5-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187853, there is no canonical definition to state claims against.
-/

/-! ## A187853.P9237883072276748226

`A187850(A167499(n+3))`
-/

namespace A187853.P9237883072276748226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167499 (n + 3)).toNat

end

end A187853.P9237883072276748226

/-! ## A187853.P6629605933221396715

`A187850(A155212(n)+13)`
-/

namespace A187853.P6629605933221396715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A155212 n + 13).toNat

end

end A187853.P6629605933221396715

/-! ## A187853.P14640666770696369610

`A187850(A056000(n)+15)`
-/

namespace A187853.P14640666770696369610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A056000 n + 15).toNat

end

end A187853.P14640666770696369610

/-! ## A187853.P5282004095977298836

`A187850(eq[7, A066657(n)])`
-/

namespace A187853.P5282004095977298836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187853.P5282004095977298836

/-! ## A187853.P8157251604633961740

`A187850(A167614(n+3)+2)`
-/

namespace A187853.P8157251604633961740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167614 (n + 3) + 2).toNat

end

end A187853.P8157251604633961740

/-!
# A187854: Number of 6-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187854, there is no canonical definition to state claims against.
-/

/-! ## A187854.P7536848684851860021

`A187850(A166136(n+4))`
-/

namespace A187854.P7536848684851860021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A166136 (n + 4)).toNat

end

end A187854.P7536848684851860021

/-! ## A187854.P18409067845553748253

`A187850(Δ[A264443(n)]+10)`
-/

namespace A187854.P18409067845553748253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (f1 (n + 1) - f1 n + 10).toNat

end

end A187854.P18409067845553748253

/-! ## A187854.P15597865241951153245

`A187850(A167487(n+4)-1)`
-/

namespace A187854.P15597865241951153245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167487 (n + 4) - 1).toNat

end

end A187854.P15597865241951153245

/-! ## A187854.P10457184252296371143

`A187850(A000217(n+5)+6)`
-/

namespace A187854.P10457184252296371143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A000217 (n + 5) + 6).toNat

end

end A187854.P10457184252296371143

/-! ## A187854.P2213076959076001316

`A187850(A052905(n+2)+11)`
-/

namespace A187854.P2213076959076001316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A052905 (n + 2) + 11).toNat

end

end A187854.P2213076959076001316

/-!
# A187855: Number of 7-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187855, there is no canonical definition to state claims against.
-/

/-! ## A187855.P15693410833679709585

`A187850(A056119(n)+28)`
-/

namespace A187855.P15693410833679709585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A056119 n + 28).toNat

end

end A187855.P15693410833679709585

/-! ## A187855.P17838048555875674238

`A187850(eq[11, A066657(n)])`
-/

namespace A187855.P17838048555875674238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187855.P17838048555875674238

/-! ## A187855.P6551740578265359248

`A187850(A167614(n+5)+4)`
-/

namespace A187855.P6551740578265359248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A167614 (n + 5) + 4).toNat

end

end A187855.P6551740578265359248

/-! ## A187855.P11148605414894148949

`A187850(A000124(n+6)+6)`
-/

namespace A187855.P11148605414894148949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (A000124 (n + 6) + 6).toNat

end

end A187855.P11148605414894148949

/-!
# A187856: Number of 8-step king-knight's tours (piece capable of both kinds of moves) on an n X n board summed over all starting positions.

The programs for A187856, there is no canonical definition to state claims against.
-/

/-! ## A187856.P14597485084245202430

`A187850(eq[13, A066657(n)])`
-/

namespace A187856.P14597485084245202430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187856.P14597485084245202430

/-! ## A187856.P4025580143052360239

`A187850(eq[9, A131818(n+1)])`
-/

namespace A187856.P4025580143052360239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187856.P4025580143052360239

/-!
# A187858: Number of 3-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187858, there is no canonical definition to state claims against.
-/

/-! ## A187858.P6804958050067219663

`A187857(∑[n+2]+4)`
-/

namespace A187858.P6804958050067219663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187858.P6804958050067219663

/-! ## A187858.P5752071745967448069

`ceil(acot(n))*A187857(A167614(n+1))`
-/

namespace A187858.P5752071745967448069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A187857 (A167614 (n + 1)).toNat

end

end A187858.P5752071745967448069

/-! ## A187858.P289702896653690902

`A187857(A167614(n+1))+A011745(n)`
-/

namespace A187858.P289702896653690902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A167614 (n + 1)).toNat + A011745 n

end

end A187858.P289702896653690902

/-! ## A187858.P5848913735551675786

`A187857(A167614(n+1))+A025443(n)`
-/

namespace A187858.P5848913735551675786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A167614 (n + 1)).toNat + A025443 n

end

end A187858.P5848913735551675786

/-! ## A187858.P10655785358194389720

`A187857(A167614(n+1))+A137579(n)`
-/

namespace A187858.P10655785358194389720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A167614 (n + 1)).toNat + A137579 n

end

end A187858.P10655785358194389720

/-!
# A187859: Number of 4-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187859, there is no canonical definition to state claims against.
-/

/-! ## A187859.P1970929085117887813

`A187857(∑[n+3]+7)`
-/

namespace A187859.P1970929085117887813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187859.P1970929085117887813

/-! ## A187859.P14856635392706927041

`A178334(n)*A187857(A166136(n+2)-2)`
-/

namespace A187859.P14856635392706927041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A187857 (A166136 (n + 2) - 2).toNat

end

end A187859.P14856635392706927041

/-! ## A187859.P17374528589794378063

`A248394(2*n)+A187857(A166136(n+2)-2)`
-/

namespace A187859.P17374528589794378063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n) + A187857 (A166136 (n + 2) - 2).toNat

end

end A187859.P17374528589794378063

/-!
# A187860: Number of 5-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187860, there is no canonical definition to state claims against.
-/

/-! ## A187860.P2674381031240417823

`A187857(∑[n+4]+11)`
-/

namespace A187860.P2674381031240417823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A187860.P2674381031240417823

/-!
# A187861: Number of 6-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187861, there is no canonical definition to state claims against.
-/

/-! ## A187861.P8638774132820322753

`A187857(A166136(n+4))`
-/

namespace A187861.P8638774132820322753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A166136 (n + 4)).toNat

end

end A187861.P8638774132820322753

/-! ## A187861.P5678842398521996213

`A187857(A167487(n+4)-1)`
-/

namespace A187861.P5678842398521996213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A167487 (n + 4) - 1).toNat

end

end A187861.P5678842398521996213

/-! ## A187861.P6003945167012898679

`A187857(A167614(n+4)+3)`
-/

namespace A187861.P6003945167012898679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A167614 (n + 4) + 3).toNat

end

end A187861.P6003945167012898679

/-! ## A187861.P11351865792933314646

`A187857(A246172(n+1)+20)`
-/

namespace A187861.P11351865792933314646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A246172 (n + 1) + 20).toNat

end

end A187861.P11351865792933314646

/-! ## A187861.P8586568205087738028

`A187857(eq[6, A130270(n+1)])`
-/

namespace A187861.P8586568205087738028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187861.P8586568205087738028

/-!
# A187862: Number of 7-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187862, there is no canonical definition to state claims against.
-/

/-! ## A187862.P3677674483398831978

`A187857(A056119(n)+28)`
-/

namespace A187862.P3677674483398831978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A056119 n + 28).toNat

end

end A187862.P3677674483398831978

/-! ## A187862.P9581683640701473527

`A187857(eq[11, A066657(n)])`
-/

namespace A187862.P9581683640701473527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187862.P9581683640701473527

/-! ## A187862.P13946397802465457317

`A187857(A000124(n+6)+6)`
-/

namespace A187862.P13946397802465457317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A000124 (n + 6) + 6).toNat

end

end A187862.P13946397802465457317

/-! ## A187862.P13355606555497244776

`A187857(A000217(n+6)+7)`
-/

namespace A187862.P13355606555497244776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A000217 (n + 6) + 7).toNat

end

end A187862.P13355606555497244776

/-! ## A187862.P12128286147195173673

`A187857(A141214(n+3)+10)`
-/

namespace A187862.P12128286147195173673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A141214 (n + 3) + 10).toNat

end

end A187862.P12128286147195173673

/-!
# A187863: Number of 8-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187863, there is no canonical definition to state claims against.
-/

/-! ## A187863.P16690601227979663166

`A187857(eq[13, A066657(n)])`
-/

namespace A187863.P16690601227979663166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187863.P16690601227979663166

/-! ## A187863.P10437764596288198066

`A187857(A000217(n+7)+8)`
-/

namespace A187863.P10437764596288198066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A000217 (n + 7) + 8).toNat

end

end A187863.P10437764596288198066

/-! ## A187863.P2165875401013927533

`A187857(A161680(n+8)+8)`
-/

namespace A187863.P2165875401013927533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A161680 (n + 8) + 8).toNat

end

end A187863.P2165875401013927533

/-! ## A187863.P14101390582224427714

`A187857(eq[9, A131818(n+1)])`
-/

namespace A187863.P14101390582224427714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187863.P14101390582224427714

/-! ## A187863.P7458179347228920505

`A187857(Δ[A005286(n+4)]+9)`
-/

namespace A187863.P7458179347228920505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (f1 (n + 1) - f1 n + 9).toNat

end

end A187863.P7458179347228920505

/-!
# A187864: Number of 9-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187864, there is no canonical definition to state claims against.
-/

/-! ## A187864.P9474958574077608067

`A187857(eq[17, A066657(n)])`
-/

namespace A187864.P9474958574077608067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187864.P9474958574077608067

/-! ## A187864.P14408423498192145752

`A187857(eq[10, A131818(n+1)])`
-/

namespace A187864.P14408423498192145752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187864.P14408423498192145752

/-!
# A187865: Number of 10-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-queen's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187865, there is no canonical definition to state claims against.
-/

/-! ## A187865.P4626855264397766103

`A187857(eq[11, A131818(n+1)])`
-/

namespace A187865.P4626855264397766103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187865.P4626855264397766103

/-!
# A187867: Near-repdigit primes that are also deletable primes.

The programs for A187867, there is no canonical definition to state claims against.
-/

/-! ## A187867.P15098656186226098185

`∩[A073064(n+1), A347864(n+1)]`
-/

namespace A187867.P15098656186226098185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187867.P15098656186226098185

/-! ## A187867.P17804606923306322573

`∩[A155075(n+1), A347864(n+1)]`
-/

namespace A187867.P17804606923306322573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187867.P17804606923306322573

/-! ## A187867.P6464364095816079201

`∩[A164937(n+1), A347864(n+1)]`
-/

namespace A187867.P6464364095816079201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187867.P6464364095816079201

/-!
# A187869: a(n) is the concatenation of the numbers appearing in row n of the lexicographically earliest prime pyramid (A051237).

The programs for A187869, there is no canonical definition to state claims against.
-/

/-! ## A187869.P15612672057776692502

`A000027(A187871(n+1))`
-/

namespace A187869.P15612672057776692502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A187871 (n + 1)).toNat

end

end A187869.P15612672057776692502

/-! ## A187869.P16587449871293025414

`A187871(C(A018350(n+1), n))`
-/

namespace A187869.P16587449871293025414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187871 (Nat.choose (A018350 (n + 1)).toNat n)

end

end A187869.P16587449871293025414

/-!
# A187870: Numerator of the coefficient of x^(2n) in the expansion of 1/x^4 - 1/(3*x^2) - 1/(x^3*arctanh(x)).

The programs for A187870, there is no canonical definition to state claims against.
-/

/-! ## A187870.P717622135688900896

`abs(A216272(n+2))`
-/

namespace A187870.P717622135688900896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A216272 (n + 2)|

end

end A187870.P717622135688900896

/-! ## A187870.P2616017869524025585

`∏[-ratio[A216272(n+1)]]`
-/

namespace A187870.P2616017869524025585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216272 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187870.P2616017869524025585

/-! ## A187870.P14158831417824355862

`lcm(2, A216272(A020725(n+1)))`
-/

namespace A187870.P14158831417824355862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216272 (A020725 (n + 1)).toNat)

end

end A187870.P14158831417824355862

/-! ## A187870.P2777661467079702827

`lcm(4, A216272(A065475(n+1)))`
-/

namespace A187870.P2777661467079702827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A216272 (A065475 (n + 1)).toNat)

end

end A187870.P2777661467079702827

/-! ## A187870.P10483505929160815715

`-(A034947(n²+5)*A216272(n+2))`
-/

namespace A187870.P10483505929160815715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A034947 (n ^ 2 + 5) * A216272 (n + 2))

end

end A187870.P10483505929160815715

/-!
# A187872: Second smallest prime after 2^n.

The programs for A187872, there is no canonical definition to state claims against.
-/

/-! ## A187872.P2068491813779161386

`A055670(A007053(n)+2)-1`
-/

namespace A187872.P2068491813779161386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A007053 n + 2).toNat - 1

end

end A187872.P2068491813779161386

/-! ## A187872.P9501177797641085183

`A151800(A014210(n))`
-/

namespace A187872.P9501177797641085183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014210 n).toNat

end

end A187872.P9501177797641085183

/-! ## A187872.P12037160907898989395

`A065091(A007053(n)+1)`
-/

namespace A187872.P12037160907898989395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A007053 n + 1).toNat

end

end A187872.P12037160907898989395

/-! ## A187872.P5647157325734737742

`A151800(A203074(n+1))`
-/

namespace A187872.P5647157325734737742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A203074 (n + 1)).toNat

end

end A187872.P5647157325734737742

/-! ## A187872.P3035187996340710050

`A000040(A007053(n)+2)`
-/

namespace A187872.P3035187996340710050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007053 n + 2).toNat

end

end A187872.P3035187996340710050

/-!
# A187873: Second smallest prime after n^2.

The programs for A187873, the canonical program `A187873.P9292529575938143401` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187873 has offset 0).

The definition of A187873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187873.P11290730868828327614

`A065091(A038107(n)+1)`
-/

namespace A187873.P11290730868828327614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A038107 n + 1).toNat

end

end A187873.P11290730868828327614

namespace A187873

/-- `A065091(A038107(n)+1)` -/
def P11290730868828327614.Spec : Prop :=
  ∀ n, P11290730868828327614.a n = A187873 n

end A187873

/-! ## A187873.P9754091461952937142

`A000040(A038107(n)+2)`
-/

namespace A187873.P9754091461952937142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 n + 2).toNat

end

end A187873.P9754091461952937142

namespace A187873

/-- `A000040(A038107(n)+2)` -/
def P9754091461952937142.Spec : Prop :=
  ∀ n, P9754091461952937142.a n = A187873 n

end A187873

/-! ## A187873.P10404164681626024605

`A006005(A038107(n)+2)`
-/

namespace A187873.P10404164681626024605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A038107 n + 2).toNat

end

end A187873.P10404164681626024605

namespace A187873

/-- `A006005(A038107(n)+2)` -/
def P10404164681626024605.Spec : Prop :=
  ∀ n, P10404164681626024605.a n = A187873 n

end A187873

/-! ## A187873.P8002398578156738976

`A008578(A038107(n)+3)`
-/

namespace A187873.P8002398578156738976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038107 n + 3).toNat

end

end A187873.P8002398578156738976

namespace A187873

/-- `A008578(A038107(n)+3)` -/
def P8002398578156738976.Spec : Prop :=
  ∀ n, P8002398578156738976.a n = A187873 n

end A187873

/-! ## A187873.P14439238562173265131

`A006093(A038107(n)+2)+1`
-/

namespace A187873.P14439238562173265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038107 n + 2).toNat + 1

end

end A187873.P14439238562173265131

namespace A187873

/-- `A006093(A038107(n)+2)+1` -/
def P14439238562173265131.Spec : Prop :=
  ∀ n, P14439238562173265131.a n = A187873 n

end A187873

/-! ## A187873.P8851258204081546610

`A000040(∑[A014085(abs(1-n))])`
-/

namespace A187873.P8851258204081546610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187873.P8851258204081546610

namespace A187873

/-- `A000040(∑[A014085(abs(1-n))])` -/
def P8851258204081546610.Spec : Prop :=
  ∀ n, P8851258204081546610.a n = A187873 n

end A187873

/-! ## A187873.P9292529575938143401

`A151800(A151800(n²))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A187873

/-- `A151800(A151800(n²))` -/
def P9292529575938143401.Spec : Prop :=
  ∀ n, P9292529575938143401.a n = A187873 n

theorem P9292529575938143401.correct : P9292529575938143401.Spec := by
  intro n
  simp only [A187873]

end A187873

/-! ## A187873.P5639018566440248278

`p?[A151800(A151800(A000290(n)))]`
-/

namespace A187873.P5639018566440248278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A000290 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187873.P5639018566440248278

namespace A187873

/-- `p?[A151800(A151800(A000290(n)))]` -/
def P5639018566440248278.Spec : Prop :=
  ∀ n, P5639018566440248278.a n = A187873 n

end A187873

/-! ## A187873.P8200568030173701726

`p?[A151800(A151800(A002620(2*n)))]`
-/

namespace A187873.P8200568030173701726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A002620 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187873.P8200568030173701726

namespace A187873

/-- `p?[A151800(A151800(A002620(2*n)))]` -/
def P8200568030173701726.Spec : Prop :=
  ∀ n, P8200568030173701726.a n = A187873 n

end A187873

/-! ## A187873.P1166136344447903935

`A207790(2*(A038107(n)+2))`
-/

namespace A187873.P1166136344447903935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (A038107 n + 2)).toNat

end

end A187873.P1166136344447903935

namespace A187873

/-- `A207790(2*(A038107(n)+2))` -/
def P1166136344447903935.Spec : Prop :=
  ∀ n, P1166136344447903935.a n = A187873 n

end A187873

/-! ## A187873.P15427601935136725286

`A101300(n²)`
-/

namespace A187873.P15427601935136725286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (n ^ 2)

end

end A187873.P15427601935136725286

namespace A187873

/-- `A101300(n²)` -/
def P15427601935136725286.Spec : Prop :=
  ∀ n, P15427601935136725286.a n = A187873 n

end A187873

/-! ## A187873.P11187060873244899427

`A105161(n²)+n²`
-/

namespace A187873.P11187060873244899427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (n ^ 2) + (n ^ 2 : ℤ)

end

end A187873.P11187060873244899427

namespace A187873

/-- `A105161(n²)+n²` -/
def P11187060873244899427.Spec : Prop :=
  ∀ n, P11187060873244899427.a n = A187873 n

end A187873

/-! ## A187873.P4201682592251581029

`A067792(A007918(n²))`
-/

namespace A187873.P4201682592251581029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A007918 (n ^ 2)).toNat

end

end A187873.P4201682592251581029

namespace A187873

/-- `A067792(A007918(n²))` -/
def P4201682592251581029.Spec : Prop :=
  ∀ n, P4201682592251581029.a n = A187873 n

end A187873

/-! ## A187873.P5858202148683933015

`A151800(A007918(A000290(n)))`
-/

namespace A187873.P5858202148683933015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007918 (A000290 n).toNat).toNat

end

end A187873.P5858202148683933015

namespace A187873

/-- `A151800(A007918(A000290(n)))` -/
def P5858202148683933015.Spec : Prop :=
  ∀ n, P5858202148683933015.a n = A187873 n

end A187873

/-! ## A187873.P7807910797332324286

`A151800(A007918(A002378(n)-n))`
-/

namespace A187873.P7807910797332324286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007918 (A002378 n - (n : ℤ)).toNat).toNat

end

end A187873.P7807910797332324286

namespace A187873

/-- `A151800(A007918(A002378(n)-n))` -/
def P7807910797332324286.Spec : Prop :=
  ∀ n, P7807910797332324286.a n = A187873 n

end A187873

/-! ## A187873.P10776035749010954421

`A000265(A000265(A101300(n*n)))`
-/

namespace A187873.P10776035749010954421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A101300 (n * n)).toNat).toNat

end

end A187873.P10776035749010954421

namespace A187873

/-- `A000265(A000265(A101300(n*n)))` -/
def P10776035749010954421.Spec : Prop :=
  ∀ n, P10776035749010954421.a n = A187873 n

end A187873

/-! ## A187873.P16703732227383605671

`A151800(A328617(A151800(n*n)))`
-/

namespace A187873.P16703732227383605671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A328617 (A151800 (n * n)).toNat).toNat

end

end A187873.P16703732227383605671

namespace A187873

/-- `A151800(A328617(A151800(n*n)))` -/
def P16703732227383605671.Spec : Prop :=
  ∀ n, P16703732227383605671.a n = A187873 n

end A187873

/-! ## A187873.P8038550862062379420

`A007918(A007918(n²)+1)`
-/

namespace A187873.P8038550862062379420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007918 (n ^ 2) + 1).toNat

end

end A187873.P8038550862062379420

namespace A187873

/-- `A007918(A007918(n²)+1)` -/
def P8038550862062379420.Spec : Prop :=
  ∀ n, P8038550862062379420.a n = A187873 n

end A187873

/-! ## A187873.P4895000174868137001

`A065091(A230980(n²)+1)`
-/

namespace A187873.P4895000174868137001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A230980 (n ^ 2) + 1).toNat

end

end A187873.P4895000174868137001

namespace A187873

/-- `A065091(A230980(n²)+1)` -/
def P4895000174868137001.Spec : Prop :=
  ∀ n, P4895000174868137001.a n = A187873 n

end A187873

/-! ## A187873.P5462196219148999131

`A000040(A230980(n²)+2)`
-/

namespace A187873.P5462196219148999131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (n ^ 2) + 2).toNat

end

end A187873.P5462196219148999131

namespace A187873

/-- `A000040(A230980(n²)+2)` -/
def P5462196219148999131.Spec : Prop :=
  ∀ n, P5462196219148999131.a n = A187873 n

end A187873

/-!
# A187874: Second smallest prime after n!.

The programs for A187874, there is no canonical definition to state claims against.
-/

/-! ## A187874.P15356050269046075838

`A275272(A028310(n))+n!`
-/

namespace A187874.P15356050269046075838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275272 (A028310 n).toNat + (Nat.factorial n : ℤ)

end

end A187874.P15356050269046075838

/-! ## A187874.P4051339139401077387

`A275272(A028310(n))+A000142(n)`
-/

namespace A187874.P4051339139401077387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275272 (A028310 n).toNat + A000142 n

end

end A187874.P4051339139401077387

/-! ## A187874.P1062627094612538227

`A275272(A028310(n))+Δ[A003422(n)]`
-/

namespace A187874.P1062627094612538227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275272 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A187874.P1062627094612538227

/-! ## A187874.P6586809473562846783

`A275272(A000007(n)+n)+A000142(n)`
-/

namespace A187874.P6586809473562846783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275272 (A000007 n + (n : ℤ)).toNat + A000142 n

end

end A187874.P6586809473562846783

/-!
# A187878: Numbers k such that sopfr(k + omega(k)) = sopfr(k), where sopfr(i) = A001414(i) and omega(i) = A001221(i).

The programs for A187878, there is no canonical definition to state claims against.
-/

/-! ## A187878.P14467602047262033420

`A136149(A006378(n+1))+A091219(n+5)`
-/

namespace A187878.P14467602047262033420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136149 (A006378 (n + 1)).toNat + A091219 (n + 5)

end

end A187878.P14467602047262033420

/-!
# A187879: 

The programs for A187879, there is no canonical definition to state claims against.
-/

/-! ## A187879.P12530920706635948677

`3^n^3`
-/

namespace A187879.P12530920706635948677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n ^ 3

end

end A187879.P12530920706635948677

/-!
# A187881: Triangle read by rows: the n-th column consists of n n's followed by 0's.

The programs for A187881, the canonical program `A187881.P17144407328644083593` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187881 has offset 1).

The definition of A187881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187881.P2084776097141696887

`A101688(n)*A002260(n+1)`
-/

namespace A187881.P2084776097141696887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A002260 (n + 1)

end

end A187881.P2084776097141696887

namespace A187881

/-- `A101688(n)*A002260(n+1)` -/
def P2084776097141696887.Spec : Prop :=
  ∀ n, P2084776097141696887.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P17144407328644083593

`floor((2*A002260(n+1)+1)/(A003056(n)+3))*A002260(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A187881

/-- `floor((2*A002260(n+1)+1)/(A003056(n)+3))*A002260(n+1)` -/
def P17144407328644083593.Spec : Prop :=
  ∀ n, P17144407328644083593.a n = A187881 (n + 1)

theorem P17144407328644083593.correct : P17144407328644083593.Spec := by
  intro n
  simp only [A187881, Nat.add_sub_cancel]

end A187881

/-! ## A187881.P6448515169958495474

`(1-C(∑[char[∑[n]]], 2)+n)*ceil(sqrt(8*(n+1)))%2`
-/

namespace A187881.P6448515169958495474
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2

end

end A187881.P6448515169958495474

namespace A187881

/-- `(1-C(∑[char[∑[n]]], 2)+n)*ceil(sqrt(8*(n+1)))%2` -/
def P6448515169958495474.Spec : Prop :=
  ∀ n, P6448515169958495474.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P17971224726943022571

`(A002262(n)+1)*and(1, ceil(sqrt(8*(n+1))))`
-/

namespace A187881.P17971224726943022571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * Int.land 1 ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉

end

end A187881.P17971224726943022571

namespace A187881

/-- `(A002262(n)+1)*and(1, ceil(sqrt(8*(n+1))))` -/
def P17971224726943022571.Spec : Prop :=
  ∀ n, P17971224726943022571.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P15289237677590086939

`abs(A140756(n+1))*and(1, ceil(sqrt(8*(n+1))))`
-/

namespace A187881.P15289237677590086939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * Int.land 1 ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉

end

end A187881.P15289237677590086939

namespace A187881

/-- `abs(A140756(n+1))*and(1, ceil(sqrt(8*(n+1))))` -/
def P15289237677590086939.Spec : Prop :=
  ∀ n, P15289237677590086939.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P8758229836894064141

`(sqrt(A143844(n))+1)*and(1, ceil(sqrt(8*(n+1))))`
-/

namespace A187881.P8758229836894064141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) * (Int.land 1 ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ : ℝ)

end

end A187881.P8758229836894064141

namespace A187881

/-- `(sqrt(A143844(n))+1)*and(1, ceil(sqrt(8*(n+1))))` -/
def P8758229836894064141.Spec : Prop :=
  ∀ n, P8758229836894064141.a n = (A187881 (n + 1) : ℝ)

end A187881

/-! ## A187881.P14291979858208882411

`(A002262(n)+1)*A101688(n)`
-/

namespace A187881.P14291979858208882411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A101688 n

end

end A187881.P14291979858208882411

namespace A187881

/-- `(A002262(n)+1)*A101688(n)` -/
def P14291979858208882411.Spec : Prop :=
  ∀ n, P14291979858208882411.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P17091670521704830589

`A051125(n+1)*A101688(n)`
-/

namespace A187881.P17091670521704830589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) * A101688 n

end

end A187881.P17091670521704830589

namespace A187881

/-- `A051125(n+1)*A101688(n)` -/
def P17091670521704830589.Spec : Prop :=
  ∀ n, P17091670521704830589.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P11913530622738299423

`A101688(n)*A123229(n+1)`
-/

namespace A187881.P11913530622738299423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A123229 (n + 1)

end

end A187881.P11913530622738299423

namespace A187881

/-- `A101688(n)*A123229(n+1)` -/
def P11913530622738299423.Spec : Prop :=
  ∀ n, P11913530622738299423.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P7188335888144433603

`A101688(n)*A131818(n+1)`
-/

namespace A187881.P7188335888144433603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A131818 (n + 1)

end

end A187881.P7188335888144433603

namespace A187881

/-- `A101688(n)*A131818(n+1)` -/
def P7188335888144433603.Spec : Prop :=
  ∀ n, P7188335888144433603.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P11758692983267147324

`A101688(n)*A134544(n+1)`
-/

namespace A187881.P11758692983267147324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A134544 (n + 1)

end

end A187881.P11758692983267147324

namespace A187881

/-- `A101688(n)*A134544(n+1)` -/
def P11758692983267147324.Spec : Prop :=
  ∀ n, P11758692983267147324.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P10819565359314246722

`A101688(n)*A134868(n+1)`
-/

namespace A187881.P10819565359314246722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A134868 (n + 1)

end

end A187881.P10819565359314246722

namespace A187881

/-- `A101688(n)*A134868(n+1)` -/
def P10819565359314246722.Spec : Prop :=
  ∀ n, P10819565359314246722.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P7029274013541952135

`A101688(n)*A135223(n+1)`
-/

namespace A187881.P7029274013541952135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A135223 (n + 1)

end

end A187881.P7029274013541952135

namespace A187881

/-- `A101688(n)*A135223(n+1)` -/
def P7029274013541952135.Spec : Prop :=
  ∀ n, P7029274013541952135.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P15974281347408143389

`A101688(n)*A143310(n+1)`
-/

namespace A187881.P15974281347408143389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A143310 (n + 1)

end

end A187881.P15974281347408143389

namespace A187881

/-- `A101688(n)*A143310(n+1)` -/
def P15974281347408143389.Spec : Prop :=
  ∀ n, P15974281347408143389.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P6155575931171222869

`A140756(n+1)*A187034(n)`
-/

namespace A187881.P6155575931171222869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) * A187034 n

end

end A187881.P6155575931171222869

namespace A187881

/-- `A140756(n+1)*A187034(n)` -/
def P6155575931171222869.Spec : Prop :=
  ∀ n, P6155575931171222869.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P11274284830310541504

`A101688(n)*A384660(n+1)`
-/

namespace A187881.P11274284830310541504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A384660 (n + 1)

end

end A187881.P11274284830310541504

namespace A187881

/-- `A101688(n)*A384660(n+1)` -/
def P11274284830310541504.Spec : Prop :=
  ∀ n, P11274284830310541504.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P8300353022661227872

`A095833(n+1)%A102515(n)`
-/

namespace A187881.P8300353022661227872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095833 (n + 1)) (A102515 n)

end

end A187881.P8300353022661227872

namespace A187881

/-- `A095833(n+1)%A102515(n)` -/
def P8300353022661227872.Spec : Prop :=
  ∀ n, P8300353022661227872.a n = A187881 (n + 1)

end A187881

/-! ## A187881.P15195365211533944959

`lcm(A002260(n+1), A187034(n))`
-/

namespace A187881.P15195365211533944959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A187034 n)

end

end A187881.P15195365211533944959

namespace A187881

/-- `lcm(A002260(n+1), A187034(n))` -/
def P15195365211533944959.Spec : Prop :=
  ∀ n, (P15195365211533944959.a n : ℤ) = A187881 (n + 1)

end A187881

/-!
# A187882: Terms of A186102 for which A186102(n) > n + prime(n).

The programs for A187882, there is no canonical definition to state claims against.
-/

/-! ## A187882.P3037687906873758637

`A186102(lt[A014688(n+1), A186102(n+1)]+1)`
-/

namespace A187882.P3037687906873758637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A187882.P3037687906873758637

/-!
# A187883: Triangle by rows, A003983 * A000012 as infinite lower triangular matrices.

The programs for A187883, there is no canonical definition to state claims against.
-/

/-! ## A187883.P13619241274672149141

`A299230(A341725(n))`
-/

namespace A187883.P13619241274672149141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (A341725 n).toNat

end

end A187883.P13619241274672149141

/-! ## A187883.P14505782732472991770

`A000523(∑{d}[A143411(n), #]+2)`
-/

namespace A187883.P14505782732472991770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 2)

end

end A187883.P14505782732472991770

/-! ## A187883.P9951216403587886689

`A070939(A109316(n)*A130321(n))`
-/

namespace A187883.P9951216403587886689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A109316 n * A130321 n).toNat

end

end A187883.P9951216403587886689

/-! ## A187883.P4967658820323592078

`A029837(A027379(A280784(n+1)))-1`
-/

namespace A187883.P4967658820323592078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A027379 (A280784 (n + 1)).toNat).toNat - 1

end

end A187883.P4967658820323592078

/-! ## A187883.P6931249276424434061

`A134543(n+1)-A000035(A018795(n))`
-/

namespace A187883.P6931249276424434061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134543 (n + 1) - A000035 (A018795 n).toNat

end

end A187883.P6931249276424434061

/-!
# A187884: Numbers n such that n*p + 1 is not a square for any prime p.

The programs for A187884, there is no canonical definition to state claims against.
-/

/-! ## A187884.P9328131376660416686

`eq[0, A187886(n+1)]+1`
-/

namespace A187884.P9328131376660416686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187884.P9328131376660416686

/-! ## A187884.P8991917068529668299

`record[n+2-A187886(n+2)]`
-/

namespace A187884.P8991917068529668299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A187886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187884.P8991917068529668299

/-! ## A187884.P16077577855413819236

`record[gcd(n+4, A187886(n+4))]`
-/

namespace A187884.P16077577855413819236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) (A187886 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187884.P16077577855413819236

/-! ## A187884.P7343640084788414054

`eq[0, A187886(A028310(n))]`
-/

namespace A187884.P7343640084788414054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187886 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187884.P7343640084788414054

/-! ## A187884.P12464751234491379881

`A020725(lt[A187886(n+1), 1])`
-/

namespace A187884.P12464751234491379881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187886 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A187884.P12464751234491379881

/-!
# A187885: Numbers n such that n*p + 1 is a square for some prime p.

The programs for A187885, there is no canonical definition to state claims against.
-/

/-! ## A187885.P14491950591059657783

`comp[A187884(n+1)-1]+1`
-/

namespace A187885.P14491950591059657783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187885.P14491950591059657783

/-! ## A187885.P10777772086914163713

`comp[∪[A187884(n+1), A187859(n+2)]]`
-/

namespace A187885.P10777772086914163713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187859 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187885.P10777772086914163713

/-! ## A187885.P8655302634231218458

`comp[∪[A187884(n+1), A187861(n+2)]]`
-/

namespace A187885.P8655302634231218458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187861 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187885.P8655302634231218458

/-! ## A187885.P3821218064483420650

`comp[∪[A187860(3*n+1), A187884(n+1)]]`
-/

namespace A187885.P3821218064483420650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187860 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187885.P3821218064483420650

/-! ## A187885.P3171356775785019831

`lt[0, A187886(n+1)]+1`
-/

namespace A187885.P3171356775785019831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187885.P3171356775785019831

/-!
# A187887: Riordan matrix (1/((1-x)*sqrt(1-4*x)),x/(1-x)).

The programs for A187887, there is no canonical definition to state claims against.
-/

/-! ## A187887.P3950815315889323946

`A187888(n)+A187888(n+1)%A187888(n)`
-/

namespace A187887.P3950815315889323946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 n + Int.tmod (A187888 (n + 1)) (A187888 n)

end

end A187887.P3950815315889323946

/-! ## A187887.P810728981674340805

`A187888(comp[∑[n]])`
-/

namespace A187887.P810728981674340805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187887.P810728981674340805

/-! ## A187887.P14005181253171607536

`or(A000007(n), A187888(A014132(n+1)))`
-/

namespace A187887.P14005181253171607536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A187888 (A014132 (n + 1)).toNat)

end

end A187887.P14005181253171607536

/-! ## A187887.P17215006301537371509

`A187888(eq[0, A010816(n)])-A000007(n+1)`
-/

namespace A187887.P17215006301537371509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A000007 (n + 1)

end

end A187887.P17215006301537371509

/-! ## A187887.P15441767038726814228

`A057427(n+1)*A187888(eq[0, A010816(n)])`
-/

namespace A187887.P15441767038726814228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A187888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187887.P15441767038726814228

/-! ## A187887.P7292380082090593106

`A187888(A014132(n+1)-A000007(n))-A000007(n)`
-/

namespace A187887.P7292380082090593106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 (A014132 (n + 1) - A000007 n).toNat - A000007 n

end

end A187887.P7292380082090593106

/-! ## A187887.P13846455555158892754

`A189661(A189662(n+1))+A187888(A014132(n+1))`
-/

namespace A187887.P13846455555158892754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A189662 (n + 1)).toNat + A187888 (A014132 (n + 1)).toNat

end

end A187887.P13846455555158892754

/-! ## A187887.P3998245342176917252

`A289034(A099267(n+1))+A187888(A014132(n+1))`
-/

namespace A187887.P3998245342176917252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A099267 (n + 1)).toNat + A187888 (A014132 (n + 1)).toNat

end

end A187887.P3998245342176917252

/-! ## A187887.P6133824675083273033

`A287523(A026356(n+1))+A187888(A014132(n+1))`
-/

namespace A187887.P6133824675083273033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A026356 (n + 1)).toNat + A187888 (A014132 (n + 1)).toNat

end

end A187887.P6133824675083273033

/-! ## A187887.P9205260161237055

`A187888(eq[0, A010816(n)])%A187872(n)`
-/

namespace A187887.P9205260161237055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A187872 n)

end

end A187887.P9205260161237055

/-!
# A187888: Riordan matrix (1/sqrt(1-4*x),x/(1-x)).

The programs for A187888, there is no canonical definition to state claims against.
-/

/-! ## A187888.P8021200064388153476

`A092392(n)-A332671(∑[n+3]-2)`
-/

namespace A187888.P8021200064388153476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A332671 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A187888.P8021200064388153476

/-! ## A187888.P12709800878772474357

`A092392(n)-A004198(A051139(n))`
-/

namespace A187888.P12709800878772474357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A004198 (A051139 n).toNat

end

end A187888.P12709800878772474357

/-! ## A187888.P16447620329295853997

`A092392(n)-A014504(A093160(n))`
-/

namespace A187888.P16447620329295853997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A014504 (A093160 n).toNat

end

end A187888.P16447620329295853997

/-! ## A187888.P1327274219490187318

`A092392(n)-A156660(A189389(n))`
-/

namespace A187888.P1327274219490187318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A156660 (A189389 n).toNat

end

end A187888.P1327274219490187318

/-!
# A187889: Riordan matrix (1/(1-x-x^2-x^3),(x+x^2+x^3)/(1-x-x^2-x^3)).

The programs for A187889, there is no canonical definition to state claims against.
-/

/-! ## A187889.P3903610009112118967

`A200139(n)-A054908(A134379(n))`
-/

namespace A187889.P3903610009112118967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A054908 (A134379 n).toNat

end

end A187889.P3903610009112118967

/-! ## A187889.P8636461962936685696

`A353593(n)-A054908(A134379(n))`
-/

namespace A187889.P8636461962936685696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353593 n - A054908 (A134379 n).toNat

end

end A187889.P8636461962936685696

/-! ## A187889.P5490347600978530566

`A200139(n)-A284256(A321630(n))`
-/

namespace A187889.P5490347600978530566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A284256 (A321630 n).toNat

end

end A187889.P5490347600978530566

/-! ## A187889.P8032453880777090783

`A200139(n)-A321694(A321507(n))`
-/

namespace A187889.P8032453880777090783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A321694 (A321507 n).toNat

end

end A187889.P8032453880777090783

/-!
# A187890: a(1) = 0, a(2) = 4, a(n) = a(n-1) + a(n-2) - 1.

The programs for A187890, the canonical program `A187890.P3805988241375962523` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187890 has offset 1).

The definition of A187890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A187890.P3805988241375962523`, by `A187890.P3805988241375962523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187890.P3805988241375962523

`a(n-1)+a(n-2)-1` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187890

/-- `a(n-1)+a(n-2)-1` -/
def P3805988241375962523.Spec : Prop :=
  ∀ n, P3805988241375962523.a n = A187890 (n + 1)

theorem P3805988241375962523.correct : P3805988241375962523.Spec := by
  intro n
  simp only [A187890, Nat.add_sub_cancel]

end A187890

/-! ## A187890.P15128074490258217459

`ogf((4x-5x^2)/(1-2x+x^3))`
-/

namespace A187890.P15128074490258217459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -5] [1, -2, 0, 1] n

end

end A187890.P15128074490258217459

namespace A187890

/-- `ogf((4x-5x^2)/(1-2x+x^3))` -/
def P15128074490258217459.Spec : Prop :=
  ∀ n, P15128074490258217459.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P15360450082730877470

`a(n-1)-(1-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A187890.P15360450082730877470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A187890.P15360450082730877470

namespace A187890

/-- `a(n-1)-(1-a(n-2))` -/
def P15360450082730877470.Spec : Prop :=
  ∀ n, P15360450082730877470.a n = A187890 (n + 1)

theorem P15360450082730877470.correct : P15360450082730877470.Spec := by
  intro n
  simp only [A187890, Nat.add_sub_cancel, A187890.P15360450082730877470.a, A187890.P3805988241375962523.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A187890

/-! ## A187890.P11976009373962187440

`A001588(n)-A152163(n)`
-/

namespace A187890.P11976009373962187440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A152163 n

end

end A187890.P11976009373962187440

namespace A187890

/-- `A001588(n)-A152163(n)` -/
def P11976009373962187440.Spec : Prop :=
  ∀ n, P11976009373962187440.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P5771137064506877851

`A001588(n)+Δ[Δ[A000045(n)]]`
-/

namespace A187890.P5771137064506877851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (f1 (n + 1) - f1 n)

end

end A187890.P5771137064506877851

namespace A187890

/-- `A001588(n)+Δ[Δ[A000045(n)]]` -/
def P5771137064506877851.Spec : Prop :=
  ∀ n, P5771137064506877851.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P396787946137376780

`A001611(n+1)+Δ[A118658(n)]`
-/

namespace A187890.P396787946137376780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + (f1 (n + 1) - f1 n)

end

end A187890.P396787946137376780

namespace A187890

/-- `A001611(n+1)+Δ[A118658(n)]` -/
def P396787946137376780.Spec : Prop :=
  ∀ n, P396787946137376780.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P9325332073382848320

`A001588(n)+A001588(n)-A001611(n+1)`
-/

namespace A187890.P9325332073382848320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A001588 n - A001611 (n + 1))

end

end A187890.P9325332073382848320

namespace A187890

/-- `A001588(n)+A001588(n)-A001611(n+1)` -/
def P9325332073382848320.Spec : Prop :=
  ∀ n, P9325332073382848320.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P14118710596567889568

`A006355(n+1)+A006355(n+1)-A000071(n+1)`
-/

namespace A187890.P14118710596567889568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (A006355 (n + 1) - A000071 (n + 1))

end

end A187890.P14118710596567889568

namespace A187890

/-- `A006355(n+1)+A006355(n+1)-A000071(n+1)` -/
def P14118710596567889568.Spec : Prop :=
  ∀ n, P14118710596567889568.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P7766781443143670015

`A118658(n+1)+A118658(n+1)-A000071(n+1)`
-/

namespace A187890.P7766781443143670015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + (A118658 (n + 1) - A000071 (n + 1))

end

end A187890.P7766781443143670015

namespace A187890

/-- `A118658(n+1)+A118658(n+1)-A000071(n+1)` -/
def P7766781443143670015.Spec : Prop :=
  ∀ n, P7766781443143670015.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P12086852115763911872

`A187891(n)-A000045(n)`
-/

namespace A187890.P12086852115763911872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n - A000045 n

end

end A187890.P12086852115763911872

namespace A187890

/-- `A187891(n)-A000045(n)` -/
def P12086852115763911872.Spec : Prop :=
  ∀ n, P12086852115763911872.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P10898175322660300424

`A187893(n)-A212804(n)`
-/

namespace A187890.P10898175322660300424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - A212804 n

end

end A187890.P10898175322660300424

namespace A187890

/-- `A187893(n)-A212804(n)` -/
def P10898175322660300424.Spec : Prop :=
  ∀ n, P10898175322660300424.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P6731007811095791038

`A001611(n)+Δ[A000032(n)]`
-/

namespace A187890.P6731007811095791038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (f1 (n + 1) - f1 n)

end

end A187890.P6731007811095791038

namespace A187890

/-- `A001611(n)+Δ[A000032(n)]` -/
def P6731007811095791038.Spec : Prop :=
  ∀ n, P6731007811095791038.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P13717127782354319011

`A001611(n)+Δ[A000211(n)]`
-/

namespace A187890.P13717127782354319011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (f1 (n + 1) - f1 n)

end

end A187890.P13717127782354319011

namespace A187890

/-- `A001611(n)+Δ[A000211(n)]` -/
def P13717127782354319011.Spec : Prop :=
  ∀ n, P13717127782354319011.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P17325078838603586380

`A001611(n)+Δ[A001612(n)]`
-/

namespace A187890.P17325078838603586380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (f1 (n + 1) - f1 n)

end

end A187890.P17325078838603586380

namespace A187890

/-- `A001611(n)+Δ[A001612(n)]` -/
def P17325078838603586380.Spec : Prop :=
  ∀ n, P17325078838603586380.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P2130828173099421199

`A187893(n)-Δ[A000045(n)]`
-/

namespace A187890.P2130828173099421199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - (f1 (n + 1) - f1 n)

end

end A187890.P2130828173099421199

namespace A187890

/-- `A187893(n)-Δ[A000045(n)]` -/
def P2130828173099421199.Spec : Prop :=
  ∀ n, P2130828173099421199.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P46582638834509429

`A187893(n)+A152163(n+1)`
-/

namespace A187890.P46582638834509429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A152163 (n + 1)

end

end A187890.P46582638834509429

namespace A187890

/-- `A187893(n)+A152163(n+1)` -/
def P46582638834509429.Spec : Prop :=
  ∀ n, P46582638834509429.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P17768773582748445495

`A022087(n)-A000071(n+1)`
-/

namespace A187890.P17768773582748445495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n - A000071 (n + 1)

end

end A187890.P17768773582748445495

namespace A187890

/-- `A022087(n)-A000071(n+1)` -/
def P17768773582748445495.Spec : Prop :=
  ∀ n, P17768773582748445495.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P11325054808661904911

`A001612(n+1)-A118658(n)`
-/

namespace A187890.P11325054808661904911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - A118658 n

end

end A187890.P11325054808661904911

namespace A187890

/-- `A001612(n+1)-A118658(n)` -/
def P11325054808661904911.Spec : Prop :=
  ∀ n, P11325054808661904911.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P18434867768439343289

`A187891(n)+1-A001611(n)`
-/

namespace A187890.P18434867768439343289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + (1 - A001611 n)

end

end A187890.P18434867768439343289

namespace A187890

/-- `A187891(n)+1-A001611(n)` -/
def P18434867768439343289.Spec : Prop :=
  ∀ n, P18434867768439343289.a n = A187890 (n + 1)

end A187890

/-! ## A187890.P7442838482161535056

`A187892(n)-2*A000045(n)`
-/

namespace A187890.P7442838482161535056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n - 2 * A000045 n

end

end A187890.P7442838482161535056

namespace A187890

/-- `A187892(n)-2*A000045(n)` -/
def P7442838482161535056.Spec : Prop :=
  ∀ n, P7442838482161535056.a n = A187890 (n + 1)

end A187890

/-!
# A187891: a(0)=0, a(1)=5, a(n)=a(n-1)+a(n-2)-1.

The programs for A187891, the canonical program `A187891.P13631464360419839394` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187891 has offset 0).

The definition of A187891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A187891.P13631464360419839394`, by `A187891.P13631464360419839394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187891.P13631464360419839394

`a(n-1)+a(n-2)-1` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187891

/-- `a(n-1)+a(n-2)-1` -/
def P13631464360419839394.Spec : Prop :=
  ∀ n, P13631464360419839394.a n = A187891 n

theorem P13631464360419839394.correct : P13631464360419839394.Spec := by
  intro n
  simp only [A187891]

end A187891

/-! ## A187891.P16471336767706822029

`ogf((5x-6x^2)/(1-2x+x^3))`
-/

namespace A187891.P16471336767706822029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -6] [1, -2, 0, 1] n

end

end A187891.P16471336767706822029

namespace A187891

/-- `ogf((5x-6x^2)/(1-2x+x^3))` -/
def P16471336767706822029.Spec : Prop :=
  ∀ n, P16471336767706822029.a n = A187891 n

end A187891

/-! ## A187891.P16112077529156871668

`a(n-1)-(1-a(n-2))` with `a(0)=0, a(1)=5`
-/

namespace A187891.P16112077529156871668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A187891.P16112077529156871668

namespace A187891

/-- `a(n-1)-(1-a(n-2))` -/
def P16112077529156871668.Spec : Prop :=
  ∀ n, P16112077529156871668.a n = A187891 n

theorem P16112077529156871668.correct : P16112077529156871668.Spec := by
  intro n
  simp only [A187891, Nat.add_sub_cancel, A187891.P16112077529156871668.a, A187891.P13631464360419839394.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A187891

/-! ## A187891.P12611798580222244550

`A187892(n)-A000045(n)`
-/

namespace A187891.P12611798580222244550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n - A000045 n

end

end A187891.P12611798580222244550

namespace A187891

/-- `A187892(n)-A000045(n)` -/
def P12611798580222244550.Spec : Prop :=
  ∀ n, P12611798580222244550.a n = A187891 n

end A187891

/-! ## A187891.P562648406573070333

`A187893(n)-A152163(n)`
-/

namespace A187891.P562648406573070333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - A152163 n

end

end A187891.P562648406573070333

namespace A187891

/-- `A187893(n)-A152163(n)` -/
def P562648406573070333.Spec : Prop :=
  ∀ n, P562648406573070333.a n = A187891 n

end A187891

/-! ## A187891.P16129646042583328651

`A001588(n)+Δ[A000032(n)]`
-/

namespace A187891.P16129646042583328651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (f1 (n + 1) - f1 n)

end

end A187891.P16129646042583328651

namespace A187891

/-- `A001588(n)+Δ[A000032(n)]` -/
def P16129646042583328651.Spec : Prop :=
  ∀ n, P16129646042583328651.a n = A187891 n

end A187891

/-! ## A187891.P6395247343866259444

`A187893(n)+Δ[A212804(n)]`
-/

namespace A187891.P6395247343866259444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (f1 (n + 1) - f1 n)

end

end A187891.P6395247343866259444

namespace A187891

/-- `A187893(n)+Δ[A212804(n)]` -/
def P6395247343866259444.Spec : Prop :=
  ∀ n, P6395247343866259444.a n = A187891 n

end A187891

/-! ## A187891.P3814473063905822759

`A187890(n+1)+A000045(n)`
-/

namespace A187891.P3814473063905822759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + A000045 n

end

end A187891.P3814473063905822759

namespace A187891

/-- `A187890(n+1)+A000045(n)` -/
def P3814473063905822759.Spec : Prop :=
  ∀ n, P3814473063905822759.a n = A187891 n

end A187891

/-! ## A187891.P10478462585764725783

`A022087(n)+1-A212804(n)`
-/

namespace A187891.P10478462585764725783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (1 - A212804 n)

end

end A187891.P10478462585764725783

namespace A187891

/-- `A022087(n)+1-A212804(n)` -/
def P10478462585764725783.Spec : Prop :=
  ∀ n, P10478462585764725783.a n = A187891 n

end A187891

/-! ## A187891.P9995293485365157615

`A187893(n)+Δ[Δ[A000045(n)]]`
-/

namespace A187891.P9995293485365157615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (f1 (n + 1) - f1 n)

end

end A187891.P9995293485365157615

namespace A187891

/-- `A187893(n)+Δ[Δ[A000045(n)]]` -/
def P9995293485365157615.Spec : Prop :=
  ∀ n, P9995293485365157615.a n = A187891 n

end A187891

/-! ## A187891.P5591037829047842100

`A001611(n+2)+Δ[A118658(n)]`
-/

namespace A187891.P5591037829047842100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (f1 (n + 1) - f1 n)

end

end A187891.P5591037829047842100

namespace A187891

/-- `A001611(n+2)+Δ[A118658(n)]` -/
def P5591037829047842100.Spec : Prop :=
  ∀ n, P5591037829047842100.a n = A187891 n

end A187891

/-! ## A187891.P861037724500039645

`A187892(n)-Δ[A000071(n+1)]`
-/

namespace A187891.P861037724500039645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n - (f1 (n + 1) - f1 n)

end

end A187891.P861037724500039645

namespace A187891

/-- `A187892(n)-Δ[A000071(n+1)]` -/
def P861037724500039645.Spec : Prop :=
  ∀ n, P861037724500039645.a n = A187891 n

end A187891

/-! ## A187891.P3761825767603186376

`A187890(n+1)+Δ[A000071(n+1)]`
-/

namespace A187891.P3761825767603186376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + (f1 (n + 1) - f1 n)

end

end A187891.P3761825767603186376

namespace A187891

/-- `A187890(n+1)+Δ[A000071(n+1)]` -/
def P3761825767603186376.Spec : Prop :=
  ∀ n, P3761825767603186376.a n = A187891 n

end A187891

/-! ## A187891.P18317853300069818293

`A000045(n)+A187893(n)-A212804(n)`
-/

namespace A187891.P18317853300069818293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A187893 n - A212804 n)

end

end A187891.P18317853300069818293

namespace A187891

/-- `A000045(n)+A187893(n)-A212804(n)` -/
def P18317853300069818293.Spec : Prop :=
  ∀ n, P18317853300069818293.a n = A187891 n

end A187891

/-! ## A187891.P9522905733854784017

`A000045(n)+A022087(n)-A000071(n+1)`
-/

namespace A187891.P9522905733854784017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A022087 n - A000071 (n + 1))

end

end A187891.P9522905733854784017

namespace A187891

/-- `A000045(n)+A022087(n)-A000071(n+1)` -/
def P9522905733854784017.Spec : Prop :=
  ∀ n, P9522905733854784017.a n = A187891 n

end A187891

/-! ## A187891.P6122132136499092893

`A065220(n)+A187893(n)-A210673(n+1)`
-/

namespace A187891.P6122132136499092893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A187893 n - A210673 (n + 1))

end

end A187891.P6122132136499092893

namespace A187891

/-- `A065220(n)+A187893(n)-A210673(n+1)` -/
def P6122132136499092893.Spec : Prop :=
  ∀ n, P6122132136499092893.a n = A187891 n

end A187891

/-! ## A187891.P9406526784824353930

`A022086(n)+A022086(n)-A000071(n+2)`
-/

namespace A187891.P9406526784824353930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + (A022086 n - A000071 (n + 2))

end

end A187891.P9406526784824353930

namespace A187891

/-- `A022086(n)+A022086(n)-A000071(n+2)` -/
def P9406526784824353930.Spec : Prop :=
  ∀ n, P9406526784824353930.a n = A187891 n

end A187891

/-! ## A187891.P1554154672405788556

`A000045(n)+A000045(n)+Δ[A000032(n)]+1`
-/

namespace A187891.P1554154672405788556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000045 n + (f1 (n + 1) - f1 n + 1))

end

end A187891.P1554154672405788556

namespace A187891

/-- `A000045(n)+A000045(n)+Δ[A000032(n)]+1` -/
def P1554154672405788556.Spec : Prop :=
  ∀ n, P1554154672405788556.a n = A187891 n

end A187891

/-! ## A187891.P15077237767523297891

`A000071(n+1)+A187892(n)-A000071(n+2)`
-/

namespace A187891.P15077237767523297891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A187892 n - A000071 (n + 2))

end

end A187891.P15077237767523297891

namespace A187891

/-- `A000071(n+1)+A187892(n)-A000071(n+2)` -/
def P15077237767523297891.Spec : Prop :=
  ∀ n, P15077237767523297891.a n = A187891 n

end A187891

/-! ## A187891.P4137313161458329425

`A187890(n+1)+A000071(n+2)-A000071(n+1)`
-/

namespace A187891.P4137313161458329425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + (A000071 (n + 2) - A000071 (n + 1))

end

end A187891.P4137313161458329425

namespace A187891

/-- `A187890(n+1)+A000071(n+2)-A000071(n+1)` -/
def P4137313161458329425.Spec : Prop :=
  ∀ n, P4137313161458329425.a n = A187891 n

end A187891

/-!
# A187892: a(0)=0, a(1)=6, a(n)=a(n-1)+a(n-2)-1.

The programs for A187892, the canonical program `A187892.P2790419022995706593` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187892 has offset 0).

The definition of A187892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A187892.P2790419022995706593`, by `A187892.P2790419022995706593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187892.P2790419022995706593

`a(n-1)+a(n-2)-1` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187892

/-- `a(n-1)+a(n-2)-1` -/
def P2790419022995706593.Spec : Prop :=
  ∀ n, P2790419022995706593.a n = A187892 n

theorem P2790419022995706593.correct : P2790419022995706593.Spec := by
  intro n
  simp only [A187892]

end A187892

/-! ## A187892.P4200487736916594761

`ogf((6x-7x^2)/(1-2x+x^3))`
-/

namespace A187892.P4200487736916594761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -7] [1, -2, 0, 1] n

end

end A187892.P4200487736916594761

namespace A187892

/-- `ogf((6x-7x^2)/(1-2x+x^3))` -/
def P4200487736916594761.Spec : Prop :=
  ∀ n, P4200487736916594761.a n = A187892 n

end A187892

/-! ## A187892.P5143654603211739824

`a(n-1)-(1-a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A187892.P5143654603211739824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A187892.P5143654603211739824

namespace A187892

/-- `a(n-1)-(1-a(n-2))` -/
def P5143654603211739824.Spec : Prop :=
  ∀ n, P5143654603211739824.a n = A187892 n

theorem P5143654603211739824.correct : P5143654603211739824.Spec := by
  intro n
  simp only [A187892, Nat.add_sub_cancel, A187892.P5143654603211739824.a, A187892.P2790419022995706593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A187892

/-! ## A187892.P7733550618193599760

`A187891(n)+A000045(n)`
-/

namespace A187892.P7733550618193599760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A000045 n

end

end A187892.P7733550618193599760

namespace A187892

/-- `A187891(n)+A000045(n)` -/
def P7733550618193599760.Spec : Prop :=
  ∀ n, P7733550618193599760.a n = A187892 n

end A187892

/-! ## A187892.P17054476313841474644

`A187893(n)+Δ[A000032(n)]`
-/

namespace A187892.P17054476313841474644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (f1 (n + 1) - f1 n)

end

end A187892.P17054476313841474644

namespace A187892

/-- `A187893(n)+Δ[A000032(n)]` -/
def P17054476313841474644.Spec : Prop :=
  ∀ n, P17054476313841474644.a n = A187892 n

end A187892

/-! ## A187892.P13247805983880071583

`A187893(n)+Δ[A001612(n)]`
-/

namespace A187892.P13247805983880071583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (f1 (n + 1) - f1 n)

end

end A187892.P13247805983880071583

namespace A187892

/-- `A187893(n)+Δ[A001612(n)]` -/
def P13247805983880071583.Spec : Prop :=
  ∀ n, P13247805983880071583.a n = A187892 n

end A187892

/-! ## A187892.P13774345786426494755

`A001611(n)+A187891(n)-1`
-/

namespace A187892.P13774345786426494755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A187891 n - 1)

end

end A187892.P13774345786426494755

namespace A187892

/-- `A001611(n)+A187891(n)-1` -/
def P13774345786426494755.Spec : Prop :=
  ∀ n, P13774345786426494755.a n = A187892 n

end A187892

/-! ## A187892.P9274499036085196446

`Δ[A000032(n)]+A022086(n)+1`
-/

namespace A187892.P9274499036085196446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A022086 n + 1)

end

end A187892.P9274499036085196446

namespace A187892

/-- `Δ[A000032(n)]+A022086(n)+1` -/
def P9274499036085196446.Spec : Prop :=
  ∀ n, P9274499036085196446.a n = A187892 n

end A187892

/-! ## A187892.P16583701386712537656

`A001612(n+1)+Δ[A118658(n)]`
-/

namespace A187892.P16583701386712537656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + (f1 (n + 1) - f1 n)

end

end A187892.P16583701386712537656

namespace A187892

/-- `A001612(n+1)+Δ[A118658(n)]` -/
def P16583701386712537656.Spec : Prop :=
  ∀ n, P16583701386712537656.a n = A187892 n

end A187892

/-! ## A187892.P12724991970844679799

`A187891(n)+Δ[A000071(n+1)]`
-/

namespace A187892.P12724991970844679799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + (f1 (n + 1) - f1 n)

end

end A187892.P12724991970844679799

namespace A187892

/-- `A187891(n)+Δ[A000071(n+1)]` -/
def P12724991970844679799.Spec : Prop :=
  ∀ n, P12724991970844679799.a n = A187892 n

end A187892

/-! ## A187892.P8695490106702949808

`A187890(n+1)+A006355(n+1)`
-/

namespace A187892.P8695490106702949808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + A006355 (n + 1)

end

end A187892.P8695490106702949808

namespace A187892

/-- `A187890(n+1)+A006355(n+1)` -/
def P8695490106702949808.Spec : Prop :=
  ∀ n, P8695490106702949808.a n = A187892 n

end A187892

/-! ## A187892.P3419184658591017653

`A187890(n+1)+2*A000045(n)`
-/

namespace A187892.P3419184658591017653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + 2 * A000045 n

end

end A187892.P3419184658591017653

namespace A187892

/-- `A187890(n+1)+2*A000045(n)` -/
def P3419184658591017653.Spec : Prop :=
  ∀ n, P3419184658591017653.a n = A187892 n

end A187892

/-! ## A187892.P7580455328154851604

`A022087(n)+A022087(n)-A001610(n)`
-/

namespace A187892.P7580455328154851604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (A022087 n - A001610 n)

end

end A187892.P7580455328154851604

namespace A187892

/-- `A022087(n)+A022087(n)-A001610(n)` -/
def P7580455328154851604.Spec : Prop :=
  ∀ n, P7580455328154851604.a n = A187892 n

end A187892

/-! ## A187892.P3432614955117930670

`A022086(n)+A022086(n)-A000071(n+1)`
-/

namespace A187892.P3432614955117930670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + (A022086 n - A000071 (n + 1))

end

end A187892.P3432614955117930670

namespace A187892

/-- `A022086(n)+A022086(n)-A000071(n+1)` -/
def P3432614955117930670.Spec : Prop :=
  ∀ n, P3432614955117930670.a n = A187892 n

end A187892

/-! ## A187892.P9903873911255828260

`A001612(n+1)+A187893(n)-A001612(n)`
-/

namespace A187892.P9903873911255828260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + (A187893 n - A001612 n)

end

end A187892.P9903873911255828260

namespace A187892

/-- `A001612(n+1)+A187893(n)-A001612(n)` -/
def P9903873911255828260.Spec : Prop :=
  ∀ n, P9903873911255828260.a n = A187892 n

end A187892

/-! ## A187892.P241167469455238290

`A022086(n)+A187893(n)-A000045(n+1)`
-/

namespace A187892.P241167469455238290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + (A187893 n - A000045 (n + 1))

end

end A187892.P241167469455238290

namespace A187892

/-- `A022086(n)+A187893(n)-A000045(n+1)` -/
def P241167469455238290.Spec : Prop :=
  ∀ n, P241167469455238290.a n = A187892 n

end A187892

/-! ## A187892.P7029100987436179943

`A187890(n+1)+A187893(n)-A001611(n)`
-/

namespace A187892.P7029100987436179943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) + (A187893 n - A001611 n)

end

end A187892.P7029100987436179943

namespace A187892

/-- `A187890(n+1)+A187893(n)-A001611(n)` -/
def P7029100987436179943.Spec : Prop :=
  ∀ n, P7029100987436179943.a n = A187892 n

end A187892

/-! ## A187892.P4557743222997505735

`A187893(n)+A187893(n)-A001611(n+1)`
-/

namespace A187892.P4557743222997505735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (A187893 n - A001611 (n + 1))

end

end A187892.P4557743222997505735

namespace A187892

/-- `A187893(n)+A187893(n)-A001611(n+1)` -/
def P4557743222997505735.Spec : Prop :=
  ∀ n, P4557743222997505735.a n = A187892 n

end A187892

/-! ## A187892.P5111769260838136786

`A187891(n)+A187891(n)-A187890(n+1)`
-/

namespace A187892.P5111769260838136786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + (A187891 n - A187890 (n + 1))

end

end A187892.P5111769260838136786

namespace A187892

/-- `A187891(n)+A187891(n)-A187890(n+1)` -/
def P5111769260838136786.Spec : Prop :=
  ∀ n, P5111769260838136786.a n = A187892 n

end A187892

/-! ## A187892.P2978587891470282898

`A187893(n)+Δ[A212804(n)+A000045(n+1)]`
-/

namespace A187892.P2978587891470282898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + (f1 (n + 1) - f1 n)

end

end A187892.P2978587891470282898

namespace A187892

/-- `A187893(n)+Δ[A212804(n)+A000045(n+1)]` -/
def P2978587891470282898.Spec : Prop :=
  ∀ n, P2978587891470282898.a n = A187892 n

end A187892

/-!
# A187893: a(0)=1, a(1)=4, a(n) = a(n-1) + a(n-2) - 1.

The programs for A187893, the canonical program `A187893.P11336405958645449488` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187893 has offset 0).

The definition of A187893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A187893.P11336405958645449488`, by `A187893.P11336405958645449488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187893.P11336405958645449488

`a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A187893

/-- `a(n-1)+a(n-2)-1` -/
def P11336405958645449488.Spec : Prop :=
  ∀ n, P11336405958645449488.a n = A187893 n

theorem P11336405958645449488.correct : P11336405958645449488.Spec := by
  intro n
  simp only [A187893]

end A187893

/-! ## A187893.P11196776509374690341

`1+3*A000045(n)`
-/

namespace A187893.P11196776509374690341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A000045 n

end

end A187893.P11196776509374690341

namespace A187893

/-- `1+3*A000045(n)` -/
def P11196776509374690341.Spec : Prop :=
  ∀ n, P11196776509374690341.a n = A187893 n

end A187893

/-! ## A187893.P17223266782516390353

`ogf((1+2x-4x^2)/(1-2x+x^3))`
-/

namespace A187893.P17223266782516390353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, -2, 0, 1] n

end

end A187893.P17223266782516390353

namespace A187893

/-- `ogf((1+2x-4x^2)/(1-2x+x^3))` -/
def P17223266782516390353.Spec : Prop :=
  ∀ n, P17223266782516390353.a n = A187893 n

end A187893

/-! ## A187893.P590570571647631689

`3*round(ϕ^n/sqrt(5))+1`
-/

namespace A187893.P590570571647631689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + 1

end

end A187893.P590570571647631689

namespace A187893

/-- `3*round(ϕ^n/sqrt(5))+1` -/
def P590570571647631689.Spec : Prop :=
  ∀ n, P590570571647631689.a n = A187893 n

end A187893

/-! ## A187893.P11755501295254873258

`floor(A001611(n)+A022087(n)/2)`
-/

namespace A187893.P11755501295254873258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n : ℚ) + (A022087 n : ℚ) / 2⌋

end

end A187893.P11755501295254873258

namespace A187893

/-- `floor(A001611(n)+A022087(n)/2)` -/
def P11755501295254873258.Spec : Prop :=
  ∀ n, P11755501295254873258.a n = A187893 n

end A187893

/-! ## A187893.P7194273566447644088

`(A022086(n)+1)*char[A064429(n)]`
-/

namespace A187893.P7194273566447644088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022086 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187893.P7194273566447644088

namespace A187893

/-- `(A022086(n)+1)*char[A064429(n)]` -/
def P7194273566447644088.Spec : Prop :=
  ∀ n, P7194273566447644088.a n = A187893 n

end A187893

/-! ## A187893.P2094628777624810232

`abs(A001588(n)+A002062(n)-n)`
-/

namespace A187893.P2094628777624810232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001588 n + (A002062 n - (n : ℤ))|

end

end A187893.P2094628777624810232

namespace A187893

/-- `abs(A001588(n)+A002062(n)-n)` -/
def P2094628777624810232.Spec : Prop :=
  ∀ n, P2094628777624810232.a n = A187893 n

end A187893

/-! ## A187893.P274331830238323757

`(A022089(n)+2)/2`
-/

namespace A187893.P274331830238323757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022089 n + 2 : ℚ) / 2

end

end A187893.P274331830238323757

namespace A187893

/-- `(A022089(n)+2)/2` -/
def P274331830238323757.Spec : Prop :=
  ∀ n, P274331830238323757.a n = (A187893 n : ℚ)

end A187893

/-! ## A187893.P15024940741140237825

`abs(A000071(n+1)-A000285(n))`
-/

namespace A187893.P15024940741140237825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000071 (n + 1) - A000285 n|

end

end A187893.P15024940741140237825

namespace A187893

/-- `abs(A000071(n+1)-A000285(n))` -/
def P15024940741140237825.Spec : Prop :=
  ∀ n, P15024940741140237825.a n = A187893 n

end A187893

/-! ## A187893.P13616509008511119437

`Δ[A111314(n)+n]`
-/

namespace A187893.P13616509008511119437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187893.P13616509008511119437

namespace A187893

/-- `Δ[A111314(n)+n]` -/
def P13616509008511119437.Spec : Prop :=
  ∀ n, P13616509008511119437.a n = A187893 n

end A187893

/-! ## A187893.P3742642567231824382

`Δ[A022086(n+1)+n]`
-/

namespace A187893.P3742642567231824382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187893.P3742642567231824382

namespace A187893

/-- `Δ[A022086(n+1)+n]` -/
def P3742642567231824382.Spec : Prop :=
  ∀ n, P3742642567231824382.a n = A187893 n

end A187893

/-! ## A187893.P6464952150547627631

`Δ[A097135(n+1)+n]`
-/

namespace A187893.P6464952150547627631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187893.P6464952150547627631

namespace A187893

/-- `Δ[A097135(n+1)+n]` -/
def P6464952150547627631.Spec : Prop :=
  ∀ n, P6464952150547627631.a n = A187893 n

end A187893

/-! ## A187893.P11390134928777959082

`Δ[A192967(n)+Δ[n²]]`
-/

namespace A187893.P11390134928777959082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187893.P11390134928777959082

namespace A187893

/-- `Δ[A192967(n)+Δ[n²]]` -/
def P11390134928777959082.Spec : Prop :=
  ∀ n, P11390134928777959082.a n = A187893 n

end A187893

/-! ## A187893.P15458780333188105344

`(A022086(n)+1)%A022130(n)`
-/

namespace A187893.P15458780333188105344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022086 n + 1) (A022130 n)

end

end A187893.P15458780333188105344

namespace A187893

/-- `(A022086(n)+1)%A022130(n)` -/
def P15458780333188105344.Spec : Prop :=
  ∀ n, P15458780333188105344.a n = A187893 n

end A187893

/-! ## A187893.P11355857121377205384

`A022136(n)%A020732(n)`
-/

namespace A187893.P11355857121377205384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022136 n) (A020732 n)

end

end A187893.P11355857121377205384

namespace A187893

/-- `A022136(n)%A020732(n)` -/
def P11355857121377205384.Spec : Prop :=
  ∀ n, P11355857121377205384.a n = A187893 n

end A187893

/-! ## A187893.P14850365179658044923

`A022131(n)%A022406(n)`
-/

namespace A187893.P14850365179658044923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022131 n) (A022406 n)

end

end A187893.P14850365179658044923

namespace A187893

/-- `A022131(n)%A022406(n)` -/
def P14850365179658044923.Spec : Prop :=
  ∀ n, P14850365179658044923.a n = A187893 n

end A187893

/-! ## A187893.P10730021284852397941

`A022132(n)%A022408(n)`
-/

namespace A187893.P10730021284852397941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022132 n) (A022408 n)

end

end A187893.P10730021284852397941

namespace A187893

/-- `A022132(n)%A022408(n)` -/
def P10730021284852397941.Spec : Prop :=
  ∀ n, P10730021284852397941.a n = A187893 n

end A187893

/-! ## A187893.P18330868045823167545

`A022133(n)%A022410(n)`
-/

namespace A187893.P18330868045823167545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022133 n) (A022410 n)

end

end A187893.P18330868045823167545

namespace A187893

/-- `A022133(n)%A022410(n)` -/
def P18330868045823167545.Spec : Prop :=
  ∀ n, P18330868045823167545.a n = A187893 n

end A187893

/-! ## A187893.P5411426588458550212

`A022383(n)%A022409(n)`
-/

namespace A187893.P5411426588458550212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022383 n) (A022409 n)

end

end A187893.P5411426588458550212

namespace A187893

/-- `A022383(n)%A022409(n)` -/
def P5411426588458550212.Spec : Prop :=
  ∀ n, P5411426588458550212.a n = A187893 n

end A187893

/-! ## A187893.P4146950986299682800

`(a(n-1)*a(n-2))%(3*(1-a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A187893.P4146950986299682800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.tmod (a (n - 1) * a (n - 2)) (3 * (1 - a (n - 1)))

end

end A187893.P4146950986299682800

namespace A187893

/-- `(a(n-1)*a(n-2))%(3*(1-a(n-1)))` -/
def P4146950986299682800.Spec : Prop :=
  ∀ n, P4146950986299682800.a n = A187893 n

end A187893

/-!
# A187894: Numerators of expansion of sqrt(F-1) where F is the g.f. for A000957.

The programs for A187894, there is no canonical definition to state claims against.
-/

/-! ## A187894.P8909199001379492314

`∑[and(A023434(n!), A182737(n))]`
-/

namespace A187894.P8909199001379492314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023434 (Nat.factorial n)) (A182737 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187894.P8909199001379492314

/-! ## A187894.P5892666128741633905

`A052180(((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2))²)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A187894.P5892666128741633905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A052180 ((((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))) ^ 2).toNat

end

end A187894.P5892666128741633905

/-!
# A187895: Rank transform of the sequence A115384; complement of A187896.

The programs for A187895, there is no canonical definition to state claims against.
-/

/-! ## A187895.P11961518851192571144

`comp[A187896(n+1)-1]+1`
-/

namespace A187895.P11961518851192571144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187896 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187895.P11961518851192571144

/-! ## A187895.P4352729666892310164

`comp[A187896(A159481(n))%A143839(n+1)]`
-/

namespace A187895.P4352729666892310164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187896 (A159481 n).toNat) (A143839 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187895.P4352729666892310164

/-! ## A187895.P14343510272154215448

`A065033(A187896(n+1)-(n+2))`
-/

namespace A187895.P14343510272154215448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A187896 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187895.P14343510272154215448

/-! ## A187895.P13643763110213738363

`A110654(A187896(n+1)-(n+2))`
-/

namespace A187895.P13643763110213738363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A187896 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187895.P13643763110213738363

/-! ## A187895.P4312954569986768924

`A115384(A187896(n+1)-(n+2))`
-/

namespace A187895.P4312954569986768924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A187896 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187895.P4312954569986768924

/-! ## A187895.P4406696278308724501

`A004526(A187896(n+1)-(n+1))`
-/

namespace A187895.P4406696278308724501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187896 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187895.P4406696278308724501

/-! ## A187895.P12631995127360115462

`A123108(A187896(n+1)-(n+1))`
-/

namespace A187895.P12631995127360115462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A187896 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187895.P12631995127360115462

/-!
# A187896: Complement of A187895.

The programs for A187896, there is no canonical definition to state claims against.
-/

/-! ## A187896.P6726192745946269031

`A000069(A187895(n+1)+1)+1+n`
-/

namespace A187896.P6726192745946269031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A187895 (n + 1) + 1).toNat + 1 + (n : ℤ)

end

end A187896.P6726192745946269031

/-! ## A187896.P532262861771053825

`eq[char[A187895(n+1)], A000007(n)]`
-/

namespace A187896.P532262861771053825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187896.P532262861771053825

/-! ## A187896.P2685059634978606311

`A159481(4*A187895(n+1))+1+n`
-/

namespace A187896.P2685059634978606311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (4 * A187895 (n + 1)).toNat + 1 + (n : ℤ)

end

end A187896.P2685059634978606311

/-! ## A187896.P16916675350137246497

`eq[char[A187895(n+1)], A151933(n)]`
-/

namespace A187896.P16916675350137246497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187896.P16916675350137246497

/-! ## A187896.P8415368045808677930

`∑[A082863(∑[A269261(3*n+5)])]`
-/

namespace A187896.P8415368045808677930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269261 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187896.P8415368045808677930

/-!
# A187897: Rank transform of the sequence A159481; complement of A187898.

The programs for A187897, there is no canonical definition to state claims against.
-/

/-! ## A187897.P16269488352882874822

`comp[A187898(n+1)-1]+1`
-/

namespace A187897.P16269488352882874822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187898 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187897.P16269488352882874822

/-! ## A187897.P17445846049161650184

`comp[A187898(A159481(n))%A187898(n+1)]`
-/

namespace A187897.P17445846049161650184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187898 (A159481 n).toNat) (A187898 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187897.P17445846049161650184

/-! ## A187897.P1202163098706271929

`A004526(A187898(n+1)-(n+1))`
-/

namespace A187897.P1202163098706271929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187898 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187897.P1202163098706271929

/-! ## A187897.P2268428783845438413

`A123108(A187898(n+1)-(n+1))`
-/

namespace A187897.P2268428783845438413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A187898 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187897.P2268428783845438413

/-! ## A187897.P12920168840386187894

`A245710(A187898(n+1)-(n+1))`
-/

namespace A187897.P12920168840386187894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A187898 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187897.P12920168840386187894

/-! ## A187897.P4284119271069333923

`A285779(A187898(n+1)-(n+1))`
-/

namespace A187897.P4284119271069333923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A187898 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187897.P4284119271069333923

/-! ## A187897.P3657267059104590894

`A065033(A187898(n+1)-(n+2))`
-/

namespace A187897.P3657267059104590894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A187898 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187897.P3657267059104590894

/-! ## A187897.P17093422906120940749

`A159481(A187898(n+1)-(n+2))`
-/

namespace A187897.P17093422906120940749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A187898 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187897.P17093422906120940749

/-!
# A187898: Complement of A187897.

The programs for A187898, there is no canonical definition to state claims against.
-/

/-! ## A187898.P7717337519294811865

`A001969(A187897(n+1)+1)+1+n`
-/

namespace A187898.P7717337519294811865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A187897 (n + 1) + 1).toNat + 1 + (n : ℤ)

end

end A187898.P7717337519294811865

/-! ## A187898.P5296084941266861204

`eq[char[A187897(n+1)], A151909(n)]`
-/

namespace A187898.P5296084941266861204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187897 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187898.P5296084941266861204

/-! ## A187898.P4954476355374129195

`eq[char[A187897(n+1)], A151933(n)]`
-/

namespace A187898.P4954476355374129195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187897 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187898.P4954476355374129195

/-! ## A187898.P2810202058949636697

`A316476(2*n+5)-A122864(A042377(n))`
-/

namespace A187898.P2810202058949636697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (2 * n + 5) - A122864 (A042377 n).toNat

end

end A187898.P2810202058949636697

/-! ## A187898.P16945424078945358040

`A355302(A003000(n))+A096169(n+1)`
-/

namespace A187898.P16945424078945358040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355302 (A003000 n).toNat + A096169 (n + 1)

end

end A187898.P16945424078945358040

/-!
# A187899: Rank transform of the sequence floor((2-sqrt(2))n); complement of A187900.

The programs for A187899, there is no canonical definition to state claims against.
-/

/-! ## A187899.P8182811999402570597

`comp[A187900(n+1)-1]+1`
-/

namespace A187899.P8182811999402570597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187900 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187899.P8182811999402570597

/-! ## A187899.P308939732967350560

`A097508(A187900(n+1))`
-/

namespace A187899.P308939732967350560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A187900 (n + 1)).toNat

end

end A187899.P308939732967350560

/-! ## A187899.P8951171024144592989

`A049472(A187900(gcd(n, n+1)+n))-(n+1)`
-/

namespace A187899.P8951171024144592989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A187900 (Nat.gcd n (n + 1) + n)).toNat - (n + 1 : ℤ)

end

end A187899.P8951171024144592989

/-! ## A187899.P1265090809537807534

`A049472(A187900(n+1))-A000027(n+1)`
-/

namespace A187899.P1265090809537807534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A187900 (n + 1)).toNat - A000027 (n + 1)

end

end A187899.P1265090809537807534

/-! ## A187899.P10115320841971317184

`A049472(A187900(n+1))-A028310(n+1)`
-/

namespace A187899.P10115320841971317184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A187900 (n + 1)).toNat - A028310 (n + 1)

end

end A187899.P10115320841971317184

/-! ## A187899.P3989515404852897383

`A049472(2*A187900(n+1))-A187900(n+1)`
-/

namespace A187899.P3989515404852897383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A187900 (n + 1)).toNat - A187900 (n + 1)

end

end A187899.P3989515404852897383

/-! ## A187899.P10703391589864702543

`eq[char[A187900(n+1)], A151933(n)]`
-/

namespace A187899.P10703391589864702543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187899.P10703391589864702543

