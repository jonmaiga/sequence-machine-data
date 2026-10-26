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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

/-!
# A025600: Number of n-move knight paths on 8 X 8 board from given corner to same corner.

The programs for A025600, there is no canonical definition to state claims against.
-/

/-! ## A025600.P4859108273192202644

`A111409(n!*∑[1/n!]+5)`
-/

namespace A025600.P4859108273192202644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 5)).toNat

end

end A025600.P4859108273192202644

/-! ## A025600.P10051558593188115773

`A121465(A215157(n+1))`
-/

namespace A025600.P10051558593188115773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121465 (A215157 (n + 1)).toNat

end

end A025600.P10051558593188115773

/-! ## A025600.P17715258035603246954

`A121465(A215373(n+1))`
-/

namespace A025600.P17715258035603246954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121465 (A215373 (n + 1)).toNat

end

end A025600.P17715258035603246954

/-!
# A025602: Number of n-move knight paths on 8x8 board from given corner to adjacent corner.

The programs for A025602, there is no canonical definition to state claims against.
-/

/-! ## A025602.P17294998448384904646

`A343401(A276557(n+1))`
-/

namespace A025602.P17294998448384904646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343401 (A276557 (n + 1)).toNat

end

end A025602.P17294998448384904646

/-! ## A025602.P7669985050281600513

`A048050(or(1, A012075(n)))`
-/

namespace A025602.P7669985050281600513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (Int.lor 1 (A012075 n)).toNat

end

end A025602.P7669985050281600513

/-! ## A025602.P4670307334570679265

`A027656(A288208(n+1)+7)`
-/

namespace A025602.P4670307334570679265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A288208 (n + 1) + 7).toNat

end

end A025602.P4670307334570679265

/-! ## A025602.P1546638498209171137

`Δ[A241468(n+2)]*A010673(n)`
-/

namespace A025602.P1546638498209171137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010673 n

end

end A025602.P1546638498209171137

/-!
# A025604: Number of n-move queen paths on 8x8 board from given corner to same corner.

The programs for A025604, there is no canonical definition to state claims against.
-/

/-! ## A025604.P3990107365201338738

`A007431(A196047(3*n+4)+A074619(n))`
-/

namespace A025604.P3990107365201338738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A196047 (3 * n + 4) + A074619 n).toNat

end

end A025604.P3990107365201338738

/-!
# A025605: Number of n-move queen paths on 8x8 board from given corner to opposite corner.

The programs for A025605, there is no canonical definition to state claims against.
-/

/-! ## A025605.P10614325201549027284

`∑[record[A342001(A162543(n))]]`
-/

namespace A025605.P10614325201549027284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A162543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025605.P10614325201549027284

/-!
# A025606: Number of n-move queen paths on 8x8 board from given corner to adjacent corner.

The programs for A025606, there is no canonical definition to state claims against.
-/

/-! ## A025606.P3628158456004477582

`A272437(A062447(n)-A007297(n+1))`
-/

namespace A025606.P3628158456004477582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272437 (A062447 n - A007297 (n + 1)).toNat

end

end A025606.P3628158456004477582

/-!
# A025607: Number of n-move rook paths on 8 X 8 board from given corner to same corner.

The programs for A025607, the canonical program `A025607.P7106360679366862664` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025607 has offset 0).

The definition of A025607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025607.P7106360679366862664

`18*a(n-1)-44*a(n-2)-168*a(n-3)` with `a(0)=1, a(1)=0, a(2)=14`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025607

/-- `18*a(n-1)-44*a(n-2)-168*a(n-3)` -/
def P7106360679366862664.Spec : Prop :=
  ∀ n, P7106360679366862664.a n = A025607 n

theorem P7106360679366862664.correct : P7106360679366862664.Spec := by
  intro n
  simp only [A025607]

end A025607

/-! ## A025607.P3584479213133133544

`A123344(n+1)+A053524(n)+A025609(n)`
-/

namespace A025607.P3584479213133133544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1) + (A053524 n + A025609 n)

end

end A025607.P3584479213133133544

namespace A025607

/-- `A123344(n+1)+A053524(n)+A025609(n)` -/
def P3584479213133133544.Spec : Prop :=
  ∀ n, P3584479213133133544.a n = A025607 n

end A025607

/-! ## A025607.P1582487621327837463

`A123344(n+1)+A053524(n)+A053524(n)+A025608(n)`
-/

namespace A025607.P1582487621327837463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1) + (A053524 n + (A053524 n + A025608 n))

end

end A025607.P1582487621327837463

namespace A025607

/-- `A123344(n+1)+A053524(n)+A053524(n)+A025608(n)` -/
def P1582487621327837463.Spec : Prop :=
  ∀ n, P1582487621327837463.a n = A025607 n

end A025607

/-!
# A025608: Number of n-move rook paths on 8 X 8 board from given corner to opposite corner.

The programs for A025608, the canonical program `A025608.P8730581256252975080` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025608 has offset 0).

The definition of A025608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025608.P8730581256252975080

`18*a(n-1)-44*a(n-2)-168*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025608

/-- `18*a(n-1)-44*a(n-2)-168*a(n-3)` -/
def P8730581256252975080.Spec : Prop :=
  ∀ n, P8730581256252975080.a n = A025608 n

theorem P8730581256252975080.correct : P8730581256252975080.Spec := by
  intro n
  simp only [A025608]

end A025608

/-! ## A025608.P14865259060613933692

`A025609(n)-A053524(n)`
-/

namespace A025608.P14865259060613933692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025609 n - A053524 n

end

end A025608.P14865259060613933692

namespace A025608

/-- `A025609(n)-A053524(n)` -/
def P14865259060613933692.Spec : Prop :=
  ∀ n, P14865259060613933692.a n = A025608 n

end A025608

/-! ## A025608.P4350040873093513684

`A025609(n)-Δ[A091056(n)]`
-/

namespace A025608.P4350040873093513684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025609 n - (f1 (n + 1) - f1 n)

end

end A025608.P4350040873093513684

namespace A025608

/-- `A025609(n)-Δ[A091056(n)]` -/
def P4350040873093513684.Spec : Prop :=
  ∀ n, P4350040873093513684.a n = A025608 n

end A025608

/-! ## A025608.P1125960872469187244

`A025609(n)-abs(ceil(2^(n-1))*A014983(n))`
-/

namespace A025608.P1125960872469187244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025609 n - |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A014983 n|

end

end A025608.P1125960872469187244

namespace A025608

/-- `A025609(n)-abs(ceil(2^(n-1))*A014983(n))` -/
def P1125960872469187244.Spec : Prop :=
  ∀ n, P1125960872469187244.a n = A025608 n

end A025608

/-! ## A025608.P381230901702285721

`A025609(n)-(A091056(n)+A091055(n))`
-/

namespace A025608.P381230901702285721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025609 n - (A091056 n + A091055 n)

end

end A025608.P381230901702285721

namespace A025608

/-- `A025609(n)-(A091056(n)+A091055(n))` -/
def P381230901702285721.Spec : Prop :=
  ∀ n, P381230901702285721.a n = A025608 n

end A025608

/-! ## A025608.P10640959803368606632

`A025607(n+1)/14-A053524(n)`
-/

namespace A025608.P10640959803368606632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025607 (n + 1) : ℚ) / 14 - (A053524 n : ℚ)

end

end A025608.P10640959803368606632

namespace A025608

/-- `A025607(n+1)/14-A053524(n)` -/
def P10640959803368606632.Spec : Prop :=
  ∀ n, P10640959803368606632.a n = (A025608 n : ℚ)

end A025608

/-! ## A025608.P5584386705031873939

`A025607(n+1)/14-Δ[A091056(n)]`
-/

namespace A025608.P5584386705031873939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025607 (n + 1) : ℚ) / 14 - (f1 (n + 1) - f1 n : ℚ)

end

end A025608.P5584386705031873939

namespace A025608

/-- `A025607(n+1)/14-Δ[A091056(n)]` -/
def P5584386705031873939.Spec : Prop :=
  ∀ n, P5584386705031873939.a n = (A025608 n : ℚ)

end A025608

/-!
# A025609: Number of n-move rook paths on 8 X 8 board from given corner to adjacent corner.

The programs for A025609, the canonical program `A025609.P11144384532008836452` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025609 has offset 0).

The definition of A025609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025609.P11144384532008836452

`18*a(n-1)-44*a(n-2)-168*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025609

/-- `18*a(n-1)-44*a(n-2)-168*a(n-3)` -/
def P11144384532008836452.Spec : Prop :=
  ∀ n, P11144384532008836452.a n = A025609 n

theorem P11144384532008836452.correct : P11144384532008836452.Spec := by
  intro n
  simp only [A025609]

end A025609

/-! ## A025609.P14377038594811276204

`A053524(n)+A025608(n)`
-/

namespace A025609.P14377038594811276204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053524 n + A025608 n

end

end A025609.P14377038594811276204

namespace A025609

/-- `A053524(n)+A025608(n)` -/
def P14377038594811276204.Spec : Prop :=
  ∀ n, P14377038594811276204.a n = A025609 n

end A025609

/-! ## A025609.P17135805265427783006

`A025608(n)+Δ[A091056(n)]`
-/

namespace A025609.P17135805265427783006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025608 n + (f1 (n + 1) - f1 n)

end

end A025609.P17135805265427783006

namespace A025609

/-- `A025608(n)+Δ[A091056(n)]` -/
def P17135805265427783006.Spec : Prop :=
  ∀ n, P17135805265427783006.a n = A025609 n

end A025609

/-! ## A025609.P14604307784376215050

`A025608(n)+abs(ceil(2^(n-1))*A014983(n))`
-/

namespace A025609.P14604307784376215050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025608 n + |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A014983 n|

end

end A025609.P14604307784376215050

namespace A025609

/-- `A025608(n)+abs(ceil(2^(n-1))*A014983(n))` -/
def P14604307784376215050.Spec : Prop :=
  ∀ n, P14604307784376215050.a n = A025609 n

end A025609

/-! ## A025609.P3519052231493997756

`A025608(n)+A091056(n)+A091055(n)`
-/

namespace A025609.P3519052231493997756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025608 n + (A091056 n + A091055 n)

end

end A025609.P3519052231493997756

namespace A025609

/-- `A025608(n)+A091056(n)+A091055(n)` -/
def P3519052231493997756.Spec : Prop :=
  ∀ n, P3519052231493997756.a n = A025609 n

end A025609

/-! ## A025609.P11229452970606432824

`A025608(n)+A014983(n)*A123344(n)`
-/

namespace A025609.P11229452970606432824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025608 n + A014983 n * A123344 n

end

end A025609.P11229452970606432824

namespace A025609

/-- `A025608(n)+A014983(n)*A123344(n)` -/
def P11229452970606432824.Spec : Prop :=
  ∀ n, P11229452970606432824.a n = A025609 n

end A025609

/-! ## A025609.P57211649216404344

`A025607(n+1)/14`
-/

namespace A025609.P57211649216404344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025607 (n + 1) : ℚ) / 14

end

end A025609.P57211649216404344

namespace A025609

/-- `A025607(n+1)/14` -/
def P57211649216404344.Spec : Prop :=
  ∀ n, P57211649216404344.a n = (A025609 n : ℚ)

end A025609

/-!
# A025610: Numbers of form 2^i*6^j, with i, j >= 0; equivalently, numbers of the form 2^i*3^j with 0 <= j <= i.

The programs for A025610, there is no canonical definition to state claims against.
-/

/-! ## A025610.P14769108953964636175

`2^A025636(n+1)*6^A025656(n+1)`
-/

namespace A025610.P14769108953964636175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025636 (n + 1) : ℤ) * (6 : ℚ) ^ (A025656 (n + 1) : ℤ)

end

end A025610.P14769108953964636175

/-! ## A025610.P10533885908288518093

`∪[A000079(n), A124509(n+1)]`
-/

namespace A025610.P10533885908288518093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P10533885908288518093

/-! ## A025610.P17544684249274964332

`∪[2*A025618(n+1), A025618(n+1)]`
-/

namespace A025610.P17544684249274964332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P17544684249274964332

/-! ## A025610.P5629461984929167079

`A124509(n+2)/6`
-/

namespace A025610.P5629461984929167079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124509 (n + 2) : ℚ) / 6

end

end A025610.P5629461984929167079

/-! ## A025610.P10141355850830562163

`A003586(eq[A022328(n+1), A086415(n+1)]+1)`
-/

namespace A025610.P10141355850830562163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025610.P10141355850830562163

/-! ## A025610.P7599106430935082812

`∩[A003586(n+1), A279537(n+1)]`
-/

namespace A025610.P7599106430935082812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P7599106430935082812

/-! ## A025610.P17289843017658884948

`∩[A001013(n+1), A003586(n+1)]`
-/

namespace A025610.P17289843017658884948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P17289843017658884948

/-! ## A025610.P13763571982518405301

`∩[A001013(n+1), A007694(n+1)]`
-/

namespace A025610.P13763571982518405301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P13763571982518405301

/-! ## A025610.P9672694374793478497

`∩[A001013(n+1), A257997(n+1)]`
-/

namespace A025610.P9672694374793478497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P9672694374793478497

/-! ## A025610.P11246970893426112735

`∩[A001013(n+1), A258023(n+1)]`
-/

namespace A025610.P11246970893426112735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P11246970893426112735

/-! ## A025610.P6171999639212140753

`∩[A001013(n+1), A108319(n+1)]`
-/

namespace A025610.P6171999639212140753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P6171999639212140753

/-! ## A025610.P3479276222247169111

`∩[A108319(n+1), A279537(n+1)]`
-/

namespace A025610.P3479276222247169111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P3479276222247169111

/-! ## A025610.P18163314033172797554

`record[lcm(5, A025487(n+1))/5]`
-/

namespace A025610.P18163314033172797554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A025487 (n + 1)) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025610.P18163314033172797554

/-! ## A025610.P16758408740097364335

`∩[A003586(n+1), A025487(n+1)]`
-/

namespace A025610.P16758408740097364335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P16758408740097364335

/-! ## A025610.P17257298443466918099

`∩[A007694(n+1), A025487(n+1)]`
-/

namespace A025610.P17257298443466918099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P17257298443466918099

/-! ## A025610.P15875776868052320832

`∩[A025487(n+1), A108319(n+1)]`
-/

namespace A025610.P15875776868052320832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P15875776868052320832

/-! ## A025610.P7833308273868881148

`∩[A025487(n+1), A257997(n+1)]`
-/

namespace A025610.P7833308273868881148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P7833308273868881148

/-! ## A025610.P4702444600682946070

`∩[A025487(n+1), A258023(n+1)]`
-/

namespace A025610.P4702444600682946070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P4702444600682946070

/-! ## A025610.P6784216196075195687

`∩[A025487(n+1), A342950(n+1)]`
-/

namespace A025610.P6784216196075195687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025610.P6784216196075195687

/-! ## A025610.P2155093629758036128

`A025487(eq[1, gcd(5, A025487(n+1))]+1)`
-/

namespace A025610.P2155093629758036128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A025487 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025610.P2155093629758036128

/-!
# A025611: Numbers of form 2^i*9^j, with i, j >= 0.

The programs for A025611, there is no canonical definition to state claims against.
-/

/-! ## A025611.P9433701975303550031

`2^A025638(n+1)*9^A025678(n+1)`
-/

namespace A025611.P9433701975303550031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025638 (n + 1) : ℤ) * (9 : ℚ) ^ (A025678 (n + 1) : ℤ)

end

end A025611.P9433701975303550031

/-! ## A025611.P14316466791907857333

`∪[2*A025620(n+1), A025620(n+1)]`
-/

namespace A025611.P14316466791907857333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P14316466791907857333

/-! ## A025611.P2132788893027558756

`record[A003586(n+1)*A033999(A022329(n+1))]`
-/

namespace A025611.P2132788893027558756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) * A033999 (A022329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025611.P2132788893027558756

/-! ## A025611.P12877026165041750847

`∩[A003586(n+1), A324524(n+1)]`
-/

namespace A025611.P12877026165041750847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P12877026165041750847

/-! ## A025611.P13972189383761463311

`∩[A003586(n+1), A023898(n+1)]`
-/

namespace A025611.P13972189383761463311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P13972189383761463311

/-! ## A025611.P870620935975970554

`∩[A003586(n+1), A028982(n+1)]`
-/

namespace A025611.P870620935975970554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P870620935975970554

/-! ## A025611.P11549057835453755179

`∩[A028982(n+1), A296991(n+1)]`
-/

namespace A025611.P11549057835453755179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P11549057835453755179

/-! ## A025611.P5642695244463686670

`∩[A296991(n+1), A324524(n+1)]`
-/

namespace A025611.P5642695244463686670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P5642695244463686670

/-! ## A025611.P13326816947366380661

`∩[A028982(n+1), A122254(n+1)]`
-/

namespace A025611.P13326816947366380661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P13326816947366380661

/-! ## A025611.P3506551068222674395

`∩[A122254(n+1), A324524(n+1)]`
-/

namespace A025611.P3506551068222674395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025611.P3506551068222674395

/-!
# A025612: Numbers of form 2^i*10^j, with i, j >= 0.

The programs for A025612, there is no canonical definition to state claims against.
-/

/-! ## A025612.P8018639186088938844

`2^A025639(n+1)*10^A025684(n+1)`
-/

namespace A025612.P8018639186088938844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025639 (n + 1) : ℤ) * (10 : ℚ) ^ (A025684 (n + 1) : ℤ)

end

end A025612.P8018639186088938844

/-! ## A025612.P4832811522247691686

`∪[2*A025621(n+1), A025621(n+1)]`
-/

namespace A025612.P4832811522247691686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P4832811522247691686

/-! ## A025612.P9422240683082673985

`∩[A003592(n+1), A032533(n+1)]`
-/

namespace A025612.P9422240683082673985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P9422240683082673985

/-! ## A025612.P1135592943357869342

`∩[A032533(n+1), A108513(n+1)]`
-/

namespace A025612.P1135592943357869342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P1135592943357869342

/-! ## A025612.P17910301270524458011

`∩[A032533(n+1), A257997(n+1)]`
-/

namespace A025612.P17910301270524458011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P17910301270524458011

/-! ## A025612.P10719413809464600518

`∩[A032533(n+1), A337800(n+1)]`
-/

namespace A025612.P10719413809464600518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P10719413809464600518

/-! ## A025612.P2841092432615247071

`∩[A032533(n+1), A337801(n+1)]`
-/

namespace A025612.P2841092432615247071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P2841092432615247071

/-! ## A025612.P7613330327635281672

`∩[A003592(n+1), A054219(n+1)]`
-/

namespace A025612.P7613330327635281672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P7613330327635281672

/-! ## A025612.P15135966346881603840

`∩[A032533(n+1), A072013(n+1)]`
-/

namespace A025612.P15135966346881603840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025612.P15135966346881603840

/-! ## A025612.P14340563602044799926

`filter[A003592(n+1), A373252(#)]`
-/

namespace A025612.P14340563602044799926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A025612.P14340563602044799926

/-!
# A025613: Numbers of form 3^i*4^j, with i, j >= 0.

The programs for A025613, there is no canonical definition to state claims against.
-/

/-! ## A025613.P3350422663436947324

`3^A025640(n+1)*4^A025645(n+1)`
-/

namespace A025613.P3350422663436947324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025640 (n + 1) : ℤ) * (4 : ℚ) ^ (A025645 (n + 1) : ℤ)

end

end A025613.P3350422663436947324

/-! ## A025613.P7819247340162494714

`A228104(n+1)/6`
-/

namespace A025613.P7819247340162494714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228104 (n + 1) : ℚ) / 6

end

end A025613.P7819247340162494714

/-! ## A025613.P7761414997322275604

`ceil(A191145(n+1)/2)`
-/

namespace A025613.P7761414997322275604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191145 (n + 1) : ℚ) / 2⌉

end

end A025613.P7761414997322275604

/-! ## A025613.P14602351244365113351

`(A191145(n+1)+1)/A001222(Δ[2*A007504(n)])`
-/

namespace A025613.P14602351244365113351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191145 (n + 1) + 1 : ℚ) / (A001222 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A025613.P14602351244365113351

/-! ## A025613.P4657266157495372218

`record[A003586(n+1)/A010685(A022328(n+1))]`
-/

namespace A025613.P4657266157495372218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003586 (n + 1) : ℚ) / (A010685 (A022328 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025613.P4657266157495372218

/-! ## A025613.P6293597346381973705

`(A191145(n+1)+1)/A000005(record[A014963(n+2)])`
-/

namespace A025613.P6293597346381973705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191145 (n + 1) + 1 : ℚ) / (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A025613.P6293597346381973705

/-! ## A025613.P13005149505859782274

`(A191145(n+1)+1)/A000040(A014963(10*(n+1)))`
-/

namespace A025613.P13005149505859782274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191145 (n + 1) + 1 : ℚ) / (A000040 (A014963 (10 * (n + 1))).toNat : ℚ)

end

end A025613.P13005149505859782274

/-! ## A025613.P13833894373372176227

`(A191145(n+1)+1)/A001222(A204918(n+1))`
-/

namespace A025613.P13833894373372176227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191145 (n + 1) + 1 : ℚ) / (A001222 (A204918 (n + 1)).toNat : ℚ)

end

end A025613.P13833894373372176227

/-! ## A025613.P5870062557901901057

`(A191145(n+1)+1)/A000005(A136162(n+1))`
-/

namespace A025613.P5870062557901901057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191145 (n + 1) + 1 : ℚ) / (A000005 (A136162 (n + 1)).toNat : ℚ)

end

end A025613.P5870062557901901057

/-! ## A025613.P14892840719660597101

`∩[A003586(n+1), A230781(n+1)]`
-/

namespace A025613.P14892840719660597101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025613.P14892840719660597101

/-! ## A025613.P11540123218641199233

`∩[A108319(n+1), A230781(n+1)]`
-/

namespace A025613.P11540123218641199233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025613.P11540123218641199233

/-! ## A025613.P11721702408018942640

`∩[A219174(n+1), A230781(n+1)]`
-/

namespace A025613.P11721702408018942640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025613.P11721702408018942640

/-!
# A025614: Numbers of form 3^i*6^j, with i, j >= 0.

The programs for A025614, there is no canonical definition to state claims against.
-/

/-! ## A025614.P13633427785080948813

`3^A025641(n+1)*6^A025657(n+1)`
-/

namespace A025614.P13633427785080948813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025641 (n + 1) : ℤ) * (6 : ℚ) ^ (A025657 (n + 1) : ℤ)

end

end A025614.P13633427785080948813

/-! ## A025614.P307724243288308041

`A003586(eq[A022329(n+1), A086415(n+1)]+1)`
-/

namespace A025614.P307724243288308041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025614.P307724243288308041

/-! ## A025614.P6835279266904355916

`sqrt(∩[A025620(n+1), A025628(n+1)])`
-/

namespace A025614.P6835279266904355916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025628 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A025614.P6835279266904355916

/-! ## A025614.P17011917276515038029

`sqrt(∩[A025613(n+1), A025628(n+1)])`
-/

namespace A025614.P17011917276515038029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025628 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A025614.P17011917276515038029

/-! ## A025614.P8962175634490059503

`sqrt(∩[A025611(n+1), A025628(n+1)])`
-/

namespace A025614.P8962175634490059503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025628 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A025614.P8962175634490059503

/-! ## A025614.P4839650744619535435

`∩[A003586(n+1), A085782(n+1)]`
-/

namespace A025614.P4839650744619535435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025614.P4839650744619535435

/-!
# A025615: Numbers of form 3^i*8^j, with i, j >= 0.

The programs for A025615, there is no canonical definition to state claims against.
-/

/-! ## A025615.P14668085945350379624

`3^A025643(n+1)*8^A025672(n+1)`
-/

namespace A025615.P14668085945350379624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025643 (n + 1) : ℤ) * (8 : ℚ) ^ (A025672 (n + 1) : ℤ)

end

end A025615.P14668085945350379624

/-! ## A025615.P724937384478421657

`sqrt(∩[A025620(n+1), A025633(n+1)])`
-/

namespace A025615.P724937384478421657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025633 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A025615.P724937384478421657

/-! ## A025615.P9962832708495985659

`sqrt(∩[A025613(n+1), A025633(n+1)])`
-/

namespace A025615.P9962832708495985659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025633 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A025615.P9962832708495985659

/-! ## A025615.P2911015944329245334

`record[A167344(A268444(n))]`
-/

namespace A025615.P2911015944329245334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (A268444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025615.P2911015944329245334

/-! ## A025615.P7279661677995671422

`record[A167344(A277905(n+1))]`
-/

namespace A025615.P7279661677995671422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (A277905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025615.P7279661677995671422

/-!
# A025616: Numbers of form 3^i*10^j, with i, j >= 0.

The programs for A025616, there is no canonical definition to state claims against.
-/

/-! ## A025616.P9851263004106038109

`3^A025644(n+1)*10^A025685(n+1)`
-/

namespace A025616.P9851263004106038109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025644 (n + 1) : ℤ) * (10 : ℚ) ^ (A025685 (n + 1) : ℤ)

end

end A025616.P9851263004106038109

/-! ## A025616.P1176866927609441853

`∪[3*A025635(n+1), A025635(n+1)]`
-/

namespace A025616.P1176866927609441853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025616.P1176866927609441853

/-! ## A025616.P6292861776956263061

`∩[A051037(n+1), A241662(n+1)]`
-/

namespace A025616.P6292861776956263061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025616.P6292861776956263061

/-! ## A025616.P10983804594636385646

`∩[A066887(n+1), A241662(n+1)]`
-/

namespace A025616.P10983804594636385646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025616.P10983804594636385646

/-! ## A025616.P16591789688416451362

`∩[A241662(n+1), A344295(n+1)]`
-/

namespace A025616.P16591789688416451362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025616.P16591789688416451362

/-!
# A025617: Numbers of form 4^i*5^j, with i, j >= 0.

The programs for A025617, there is no canonical definition to state claims against.
-/

/-! ## A025617.P9917323312178405813

`4^A025646(n+1)*5^A025650(n+1)`
-/

namespace A025617.P9917323312178405813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025646 (n + 1) : ℤ) * (5 : ℚ) ^ (A025650 (n + 1) : ℤ)

end

end A025617.P9917323312178405813

/-! ## A025617.P16045889724447600996

`A003592(eq[2, gcd(2, A022332(n+1))]+1)`
-/

namespace A025617.P16045889724447600996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A022332 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025617.P16045889724447600996

/-! ## A025617.P3631712803156878155

`∩[A003592(n+1), A155565(n+1)]`
-/

namespace A025617.P3631712803156878155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025617.P3631712803156878155

/-! ## A025617.P11377487314869181844

`filter[A003592(n+1), A372574(#)]`
-/

namespace A025617.P11377487314869181844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A025617.P11377487314869181844

/-! ## A025617.P13282495745709226529

`filter[A003592(n+1), A373136(#)]`
-/

namespace A025617.P13282495745709226529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A025617.P13282495745709226529

/-!
# A025618: Numbers of form 4^i*6^j, with i, j >= 0.

The programs for A025618, there is no canonical definition to state claims against.
-/

/-! ## A025618.P11306204656575101533

`4^A025647(n+1)*6^A025658(n+1)`
-/

namespace A025618.P11306204656575101533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025647 (n + 1) : ℤ) * (6 : ℚ) ^ (A025658 (n + 1) : ℤ)

end

end A025618.P11306204656575101533

/-! ## A025618.P8857103728820020025

`∩[A025610(n+1), A036667(n+1)]`
-/

namespace A025618.P8857103728820020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P8857103728820020025

/-! ## A025618.P2999621694947470908

`record[A025610(n+1)*A059841(A025636(n+1))]`
-/

namespace A025618.P2999621694947470908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1) * A059841 (A025636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025618.P2999621694947470908

/-! ## A025618.P1992627067502830782

`∩[A036667(n+1), A279537(n+1)]`
-/

namespace A025618.P1992627067502830782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P1992627067502830782

/-! ## A025618.P6185256305717613634

`∩[A001013(n+1), A036667(n+1)]`
-/

namespace A025618.P6185256305717613634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P6185256305717613634

/-! ## A025618.P4527724450615244919

`∩[A036667(n+1), A333964(n+1)]`
-/

namespace A025618.P4527724450615244919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P4527724450615244919

/-! ## A025618.P7827221831491576550

`∩[A025487(n+1), A036667(n+1)]`
-/

namespace A025618.P7827221831491576550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P7827221831491576550

/-! ## A025618.P4612171816998316626

`∩[A036667(n+1), A250270(n+1)]`
-/

namespace A025618.P4612171816998316626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P4612171816998316626

/-! ## A025618.P6173893261993024713

`∩[A036667(n+1), A324850(n+1)]`
-/

namespace A025618.P6173893261993024713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P6173893261993024713

/-! ## A025618.P16359160112303461114

`∩[A036667(n+1), A062847(n+1)]`
-/

namespace A025618.P16359160112303461114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025618.P16359160112303461114

/-!
# A025619: Numbers of form 4^i*7^j, with i, j >= 0.

The programs for A025619, there is no canonical definition to state claims against.
-/

/-! ## A025619.P5789053228024422009

`4^A025648(n+1)*7^A025666(n+1)`
-/

namespace A025619.P5789053228024422009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025648 (n + 1) : ℤ) * (7 : ℚ) ^ (A025666 (n + 1) : ℤ)

end

end A025619.P5789053228024422009

/-! ## A025619.P1663590819342592378

`∩[A003591(n+1), A243172(n+1)]`
-/

namespace A025619.P1663590819342592378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025619.P1663590819342592378

/-! ## A025619.P7447584156181236255

`filter[A003591(n+1), A353816(#)]`
-/

namespace A025619.P7447584156181236255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A025619.P7447584156181236255

/-! ## A025619.P3721209885401070261

`filter[A003591(n+1), A372574(#)]`
-/

namespace A025619.P3721209885401070261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A025619.P3721209885401070261

/-! ## A025619.P8974572995239883280

`filter[A003591(n+1), A373136(#)]`
-/

namespace A025619.P8974572995239883280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A025619.P8974572995239883280

/-!
# A025620: Numbers of the form 4^i * 9^j, with i, j >= 0.

The programs for A025620, there is no canonical definition to state claims against.
-/

/-! ## A025620.P6771974358924590861

`A003586(n+1)²`
-/

namespace A025620.P6771974358924590861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) ^ 2

end

end A025620.P6771974358924590861

/-! ## A025620.P12520108737985660829

`4^A022328(n+1)*9^A022329(n+1)`
-/

namespace A025620.P12520108737985660829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A022328 (n + 1) : ℤ) * (9 : ℚ) ^ (A022329 (n + 1) : ℤ)

end

end A025620.P12520108737985660829

/-! ## A025620.P6795428110539506654

`∑[A061987(n)]²`
-/

namespace A025620.P6795428110539506654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A025620.P6795428110539506654

/-! ## A025620.P5114241122890431201

`Δ[A259823(n)]²`
-/

namespace A025620.P5114241122890431201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A025620.P5114241122890431201

/-! ## A025620.P87691393646866694

`(A069353(n+1)+1)²`
-/

namespace A025620.P87691393646866694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069353 (n + 1) + 1) ^ 2

end

end A025620.P87691393646866694

/-! ## A025620.P12549432260765147132

`(1-A055600(n+1))²`
-/

namespace A025620.P12549432260765147132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A055600 (n + 1)) ^ 2

end

end A025620.P12549432260765147132

/-! ## A025620.P10662016324163038358

`(A007694(n+2)/2)²`
-/

namespace A025620.P10662016324163038358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007694 (n + 2) : ℚ) / 2) ^ 2

end

end A025620.P10662016324163038358

/-! ## A025620.P9803106400238299598

`(A065119(n+1)/3)²`
-/

namespace A025620.P9803106400238299598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A065119 (n + 1) : ℚ) / 3) ^ 2

end

end A025620.P9803106400238299598

/-! ## A025620.P16948094733418139107

`ceil(A190812(n+1)/2)²`
-/

namespace A025620.P16948094733418139107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190812 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A025620.P16948094733418139107

/-! ## A025620.P16905760203881110620

`A003586(A000027(n+1))^2`
-/

namespace A025620.P16905760203881110620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A000027 (n + 1)).toNat ^ 2

end

end A025620.P16905760203881110620

/-! ## A025620.P18089958523607172908

`(A259823(n+1)-A259823(n))²`
-/

namespace A025620.P18089958523607172908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A259823 (n + 1) - A259823 n) ^ 2

end

end A025620.P18089958523607172908

/-! ## A025620.P4474256141151213141

`Δ[A259823(n)]*A003586(n+1)`
-/

namespace A025620.P4474256141151213141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003586 (n + 1)

end

end A025620.P4474256141151213141

/-! ## A025620.P14912751039359527115

`A003586(n+1)^A020639(2*(n+1))`
-/

namespace A025620.P14912751039359527115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003586 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A025620.P14912751039359527115

/-! ## A025620.P6013976821348875176

`A003586(n+1)^A000005(A332768(n+1))`
-/

namespace A025620.P6013976821348875176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003586 (n + 1) : ℚ) ^ (A000005 (A332768 (n + 1)).toNat : ℤ)

end

end A025620.P6013976821348875176

/-! ## A025620.P17145814503638984326

`(A259823(n+1)-A259823(n))*A003586(n+1)`
-/

namespace A025620.P17145814503638984326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A259823 (n + 1) - A259823 n) * A003586 (n + 1)

end

end A025620.P17145814503638984326

/-! ## A025620.P12303285321822299478

`A000007(n+1)+A003586(n+1)*A003586(n+1)`
-/

namespace A025620.P12303285321822299478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A003586 (n + 1) * A003586 (n + 1)

end

end A025620.P12303285321822299478

/-! ## A025620.P3309012257796222445

`A190812(n+1)+A069353(n+1)*A069353(n+1)`
-/

namespace A025620.P3309012257796222445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) + A069353 (n + 1) * A069353 (n + 1)

end

end A025620.P3309012257796222445

/-! ## A025620.P10159215754026557881

`(A007694(n+2)-A003586(n+1))*A003586(n+1)`
-/

namespace A025620.P10159215754026557881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) - A003586 (n + 1)) * A003586 (n + 1)

end

end A025620.P10159215754026557881

/-! ## A025620.P13222036319152968590

`∪[A063755(n+1), A133125(n)]`
-/

namespace A025620.P13222036319152968590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133125 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025620.P13222036319152968590

/-!
# A025621: Numbers of form 4^i*10^j, with i, j >= 0.

The programs for A025621, there is no canonical definition to state claims against.
-/

/-! ## A025621.P2628854925141860303

`4^A025649(n+1)*10^A025686(n+1)`
-/

namespace A025621.P2628854925141860303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025649 (n + 1) : ℤ) * (10 : ℚ) ^ (A025686 (n + 1) : ℤ)

end

end A025621.P2628854925141860303

/-! ## A025621.P11976792716842380212

`∩[A025612(n+1), A054901(n+1)]`
-/

namespace A025621.P11976792716842380212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025621.P11976792716842380212

/-! ## A025621.P4549863868085113279

`∩[A032533(n+1), A054901(n+1)]`
-/

namespace A025621.P4549863868085113279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025621.P4549863868085113279

/-! ## A025621.P4734570893318588162

`∩[A054901(n+1), A334115(n+1)]`
-/

namespace A025621.P4734570893318588162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025621.P4734570893318588162

/-! ## A025621.P12414209867183901572

`∩[A054219(n+1), A054901(n+1)]`
-/

namespace A025621.P12414209867183901572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025621.P12414209867183901572

/-!
# A025622: Numbers of form 5^i*6^j, with i, j >= 0.

The programs for A025622, there is no canonical definition to state claims against.
-/

/-! ## A025622.P15637974793533713892

`5^A025651(n+1)*6^A025659(n+1)`
-/

namespace A025622.P15637974793533713892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A025651 (n + 1) : ℤ) * (6 : ℚ) ^ (A025659 (n + 1) : ℤ)

end

end A025622.P15637974793533713892

/-! ## A025622.P3510700182212029156

`(A038314(n)/A038208(n))%((n+2)^(n+4))`
-/

namespace A025622.P3510700182212029156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038314 n : ℚ) / (A038208 n : ℚ))) ((n + 2) ^ (n + 4) : ℤ)

end

end A025622.P3510700182212029156

/-! ## A025622.P14568817722355137584

`A000007(A129295(n+1))+A038314(n)/A038208(n)`
-/

namespace A025622.P14568817722355137584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A129295 (n + 1)).toNat : ℚ) + (A038314 n : ℚ) / (A038208 n : ℚ)

end

end A025622.P14568817722355137584

/-! ## A025622.P17537652692993998191

`A000007(A177210(n+1))+A038314(n)/A038208(n)`
-/

namespace A025622.P17537652692993998191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A177210 (n + 1)).toNat : ℚ) + (A038314 n : ℚ) / (A038208 n : ℚ)

end

end A025622.P17537652692993998191

/-! ## A025622.P15796895263277553208

`A000007(A272995(n+1))+A038314(n)/A038208(n)`
-/

namespace A025622.P15796895263277553208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A272995 (n + 1)).toNat : ℚ) + (A038314 n : ℚ) / (A038208 n : ℚ)

end

end A025622.P15796895263277553208

/-! ## A025622.P16842791255855778323

`A000038(A097590(n+2))+A038314(n)/A038208(n)`
-/

namespace A025622.P16842791255855778323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A097590 (n + 2)).toNat : ℚ) + (A038314 n : ℚ) / (A038208 n : ℚ)

end

end A025622.P16842791255855778323

/-! ## A025622.P2887720717575511615

`A166591(A036561(n))`
-/

namespace A025622.P2887720717575511615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (A036561 n).toNat

end

end A025622.P2887720717575511615

/-! ## A025622.P5004517582346082864

`A109624(A036561(n))/A059268(n)`
-/

namespace A025622.P5004517582346082864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A036561 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A025622.P5004517582346082864

/-! ## A025622.P2997846721286807456

`A109624(A036561(n))/A000079(A002262(n))`
-/

namespace A025622.P2997846721286807456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A036561 n).toNat : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A025622.P2997846721286807456

/-!
# A025623: Numbers of form 5^i*8^j, with i, j >= 0.

The programs for A025623, there is no canonical definition to state claims against.
-/

/-! ## A025623.P2790141665158206074

`filter[A003592(n+1), A372573(#)]`
-/

namespace A025623.P2790141665158206074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A025623.P2790141665158206074

/-! ## A025623.P7225315970375625356

`filter[A003592(n+1), A373157(#)]`
-/

namespace A025623.P7225315970375625356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A025623.P7225315970375625356

/-! ## A025623.P10464792962364778851

`filter[A003592(n+1), A373991(#)]`
-/

namespace A025623.P10464792962364778851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A025623.P10464792962364778851

/-! ## A025623.P8159686032851853850

`filter[A003592(n+1), A374041(#)]`
-/

namespace A025623.P8159686032851853850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A025623.P8159686032851853850

/-!
# A025624: Numbers of form 5^i*9^j, with i, j >= 0.

The programs for A025624, there is no canonical definition to state claims against.
-/

/-! ## A025624.P12266187282643174648

`5^A025654(n+1)*9^A025679(n+1)`
-/

namespace A025624.P12266187282643174648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A025654 (n + 1) : ℤ) * (9 : ℚ) ^ (A025679 (n + 1) : ℤ)

end

end A025624.P12266187282643174648

/-! ## A025624.P11974485417917866570

`A003593(eq[1, A003593(n+1)%4]+1)`
-/

namespace A025624.P11974485417917866570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003593 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A025624.P11974485417917866570

/-! ## A025624.P5520155573491724265

`A003593(lt[and(2, A003593(n+1)), 1]+1)`
-/

namespace A025624.P5520155573491724265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A003593 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A025624.P5520155573491724265

/-! ## A025624.P18362173543085858874

`record[A003593(n+1)*A059841(A022336(n+1))]`
-/

namespace A025624.P18362173543085858874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1) * A059841 (A022336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025624.P18362173543085858874

/-! ## A025624.P2547701971922347139

`∩[A003593(n+1), A177887(n+1)]`
-/

namespace A025624.P2547701971922347139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025624.P2547701971922347139

/-!
# A025625: Numbers of form 5^i*10^j, with i, j >= 0.

The programs for A025625, there is no canonical definition to state claims against.
-/

/-! ## A025625.P4338930495623839874

`5^A025655(n+1)*10^A025687(n+1)`
-/

namespace A025625.P4338930495623839874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A025655 (n + 1) : ℤ) * (10 : ℚ) ^ (A025687 (n + 1) : ℤ)

end

end A025625.P4338930495623839874

/-! ## A025625.P3981733444452229135

`record[A166635(A318509(n+1))]`
-/

namespace A025625.P3981733444452229135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166635 (A318509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025625.P3981733444452229135

/-! ## A025625.P15877029522909211059

`record[A166635(A198328(n+1))]`
-/

namespace A025625.P15877029522909211059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166635 (A198328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025625.P15877029522909211059

/-! ## A025625.P5285955036358261336

`record[A167302(n+1)/A064989(n+1)]`
-/

namespace A025625.P5285955036358261336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025625.P5285955036358261336

/-! ## A025625.P14963608138187082189

`record[A167302(n+1)/A252463(n+1)]`
-/

namespace A025625.P14963608138187082189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A252463 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025625.P14963608138187082189

/-!
# A025626: Numbers of form 6^i*7^j, with i, j >= 0.

The programs for A025626, there is no canonical definition to state claims against.
-/

/-! ## A025626.P1977268614517833906

`6^A025660(n+1)*7^A025668(n+1)`
-/

namespace A025626.P1977268614517833906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A025660 (n + 1) : ℤ) * (7 : ℚ) ^ (A025668 (n + 1) : ℤ)

end

end A025626.P1977268614517833906

/-! ## A025626.P3408310719886068372

`A000027(A140303(n))*A036565(n)`
-/

namespace A025626.P3408310719886068372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140303 n).toNat * A036565 n

end

end A025626.P3408310719886068372

/-! ## A025626.P13793214986303038265

`A013627(n)/A056926(A008459(n))`
-/

namespace A025626.P13793214986303038265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A056926 (A008459 n).toNat : ℚ)

end

end A025626.P13793214986303038265

/-! ## A025626.P16346500263494486936

`abs(A013627(n)/A118433(n))`
-/

namespace A025626.P16346500263494486936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A013627 n : ℚ) / (A118433 n : ℚ)|

end

end A025626.P16346500263494486936

/-! ## A025626.P11522783500919257568

`A000265(A175840(n))*A036565(n)`
-/

namespace A025626.P11522783500919257568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A175840 n).toNat * A036565 n

end

end A025626.P11522783500919257568

/-! ## A025626.P7166654557438417215

`A013627(n)/lcm(A033999(n), A118433(n))`
-/

namespace A025626.P7166654557438417215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (Int.lcm (A033999 n) (A118433 n) : ℚ)

end

end A025626.P7166654557438417215

/-! ## A025626.P4447756678130133295

`A359530(A036561(n))`
-/

namespace A025626.P4447756678130133295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359530 (A036561 n).toNat

end

end A025626.P4447756678130133295

/-! ## A025626.P13543000998994776891

`A130321(n)*A297002(A036561(n))`
-/

namespace A025626.P13543000998994776891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A297002 (A036561 n).toNat

end

end A025626.P13543000998994776891

/-! ## A025626.P14277963555746650440

`lcm(A036565(n), A297002(A036561(n)))`
-/

namespace A025626.P14277963555746650440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036565 n) (A297002 (A036561 n).toNat)

end

end A025626.P14277963555746650440

/-! ## A025626.P3394731868687158438

`sqrt(A262616(n))*A297002(A036561(n))`
-/

namespace A025626.P3394731868687158438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A297002 (A036561 n).toNat : ℝ)

end

end A025626.P3394731868687158438

/-!
# A025627: Numbers of form 6^i*8^j, with i, j >= 0.

The programs for A025627, there is no canonical definition to state claims against.
-/

/-! ## A025627.P18384197621397525855

`A166642(A036561(n)%A094459(n+1))`
-/

namespace A025627.P18384197621397525855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166642 (Int.tmod (A036561 n) (A094459 (n + 1))).toNat

end

end A025627.P18384197621397525855

/-! ## A025627.P2035699218584873152

`A000027(A038262(n)/A007318(n))`
-/

namespace A025627.P2035699218584873152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A038262 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A025627.P2035699218584873152

/-! ## A025627.P15823316518862272146

`A066260(A120027(n))`
-/

namespace A025627.P15823316518862272146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A120027 n).toNat

end

end A025627.P15823316518862272146

/-! ## A025627.P12665471155130977351

`A003959(A036565(n))*A130321(n)`
-/

namespace A025627.P12665471155130977351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A036565 n).toNat * A130321 n

end

end A025627.P12665471155130977351

/-!
# A025628: Numbers of form 6^i*9^j, with i, j >= 0.

The programs for A025628, there is no canonical definition to state claims against.
-/

/-! ## A025628.P14529537404330114522

`6^A025662(n+1)*9^A025680(n+1)`
-/

namespace A025628.P14529537404330114522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A025662 (n + 1) : ℤ) * (9 : ℚ) ^ (A025680 (n + 1) : ℤ)

end

end A025628.P14529537404330114522

/-! ## A025628.P3501757891100134101

`∩[A025614(n+1), A036667(n+1)]`
-/

namespace A025628.P3501757891100134101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025628.P3501757891100134101

/-! ## A025628.P1873628788116614068

`∩[A036667(n+1), A085782(n+1)]`
-/

namespace A025628.P1873628788116614068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025628.P1873628788116614068

/-! ## A025628.P3239861558261482604

`∩[A025614(n+1), A155567(n+1)]`
-/

namespace A025628.P3239861558261482604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025628.P3239861558261482604

/-! ## A025628.P8721123412875299491

`∩[A025614(n+1), A155569(n+1)]`
-/

namespace A025628.P8721123412875299491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025628.P8721123412875299491

/-!
# A025629: Numbers of form 6^i*10^j with i, j >= 0.

The programs for A025629, there is no canonical definition to state claims against.
-/

/-! ## A025629.P11292233923494090612

`6^A025663(n+1)*10^A025688(n+1)`
-/

namespace A025629.P11292233923494090612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A025663 (n + 1) : ℤ) * (10 : ℚ) ^ (A025688 (n + 1) : ℤ)

end

end A025629.P11292233923494090612

/-! ## A025629.P12078194485653878281

`filter[A051037(n+1), A356170(#)]`
-/

namespace A025629.P12078194485653878281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A025629.P12078194485653878281

/-! ## A025629.P7709309114185045676

`∩[A051037(n+1), A072978(n+1)]`
-/

namespace A025629.P7709309114185045676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025629.P7709309114185045676

/-! ## A025629.P13770722262149730884

`A102440(A003599(n+1))`
-/

namespace A025629.P13770722262149730884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A003599 (n + 1)).toNat

end

end A025629.P13770722262149730884

/-! ## A025629.P3027717415770905406

`A102440(A057290(n+1))`
-/

namespace A025629.P3027717415770905406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A057290 (n + 1)).toNat

end

end A025629.P3027717415770905406

/-!
# A025631: Numbers of form 7^i*9^j, with i, j >= 0.

The programs for A025631, there is no canonical definition to state claims against.
-/

/-! ## A025631.P15751904512556689139

`7^A025670(n+1)*9^A025681(n+1)`
-/

namespace A025631.P15751904512556689139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A025670 (n + 1) : ℤ) * (9 : ℚ) ^ (A025681 (n + 1) : ℤ)

end

end A025631.P15751904512556689139

/-! ## A025631.P9787290087496039056

`A297002(A356036(n))`
-/

namespace A025631.P9787290087496039056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A356036 n).toNat

end

end A025631.P9787290087496039056

/-! ## A025631.P6814886253397779340

`record[A297002(A003959(A006047(n)))]`
-/

namespace A025631.P6814886253397779340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A003959 (A006047 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025631.P6814886253397779340

/-! ## A025631.P1971249455017881993

`A297002(A059268(n)*A175840(n))`
-/

namespace A025631.P1971249455017881993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A059268 n * A175840 n).toNat

end

end A025631.P1971249455017881993

/-! ## A025631.P15507382300292859320

`A297002(A038294(n)/A027465(n))`
-/

namespace A025631.P15507382300292859320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (SequenceMachineLib.roundAway ((A038294 n : ℚ) / (A027465 n : ℚ))).toNat

end

end A025631.P15507382300292859320

/-!
# A025632: Numbers of form 7^i*10^j, with i, j >= 0.

The programs for A025632, there is no canonical definition to state claims against.
-/

/-! ## A025632.P12558823237148902215

`7^A025671(n+1)*10^A025689(n+1)`
-/

namespace A025632.P12558823237148902215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A025671 (n + 1) : ℤ) * (10 : ℚ) ^ (A025689 (n + 1) : ℤ)

end

end A025632.P12558823237148902215

/-! ## A025632.P2103651899867095808

`A000120(A060546(n))*A166661(A036561(n))`
-/

namespace A025632.P2103651899867095808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060546 n).toNat * A166661 (A036561 n).toNat

end

end A025632.P2103651899867095808

/-! ## A025632.P5999595061128539865

`(A038276(n)/A273914(n))%A075784(A272273(n))`
-/

namespace A025632.P5999595061128539865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038276 n : ℚ) / (A273914 n : ℚ))) (A075784 (A272273 n).toNat)

end

end A025632.P5999595061128539865

/-! ## A025632.P9183078044341831157

`A166661(A036561(n)%A054692(n))`
-/

namespace A025632.P9183078044341831157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (Int.tmod (A036561 n) (A054692 n)).toNat

end

end A025632.P9183078044341831157

/-! ## A025632.P9990648089410878177

`A166123(A002496(n+1))*A166661(A036561(n))`
-/

namespace A025632.P9990648089410878177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166123 (A002496 (n + 1)).toNat * A166661 (A036561 n).toNat

end

end A025632.P9990648089410878177

/-!
# A025633: Numbers of form 8^i*9^j, with i, j >= 0.

The programs for A025633, there is no canonical definition to state claims against.
-/

/-! ## A025633.P862215145949446211

`∩[A025611(n+1), A025615(n+1)]`
-/

namespace A025633.P862215145949446211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025633.P862215145949446211

/-! ## A025633.P3242766252126968935

`∩[A025615(n+1), A324524(n+1)]`
-/

namespace A025633.P3242766252126968935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025633.P3242766252126968935

/-! ## A025633.P4561118538144339816

`A036561(n)²*gcd(A000302(n), A036561(n))`
-/

namespace A025633.P4561118538144339816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * (Int.gcd (A000302 n) (A036561 n) : ℤ)

end

end A025633.P4561118538144339816

/-! ## A025633.P1981542475634170012

`A036561(n)²*A003958(A276618(n))`
-/

namespace A025633.P1981542475634170012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A003958 (A276618 n).toNat

end

end A025633.P1981542475634170012

/-! ## A025633.P12294788187457169379

`A036561(n)²*A001316(A173787(n))`
-/

namespace A025633.P12294788187457169379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A001316 (A173787 n).toNat

end

end A025633.P12294788187457169379

/-! ## A025633.P15691541924437253687

`A036561(n)²*A000010(A090988(n+1))`
-/

namespace A025633.P15691541924437253687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A000010 (A090988 (n + 1)).toNat

end

end A025633.P15691541924437253687

/-! ## A025633.P16417589001561697357

`A036561(n)²*A222416(A130321(n))`
-/

namespace A025633.P16417589001561697357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A222416 (A130321 n).toNat

end

end A025633.P16417589001561697357

/-! ## A025633.P6002076399146652671

`A073061(A099627(n))²*A130321(n)`
-/

namespace A025633.P6002076399146652671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A099627 n).toNat ^ 2 * A130321 n

end

end A025633.P6002076399146652671

/-! ## A025633.P17374863690455380061

`A073061(A099627(n))²*A016116(A099375(n))`
-/

namespace A025633.P17374863690455380061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A099627 n).toNat ^ 2 * A016116 (A099375 n).toNat

end

end A025633.P17374863690455380061

/-!
# A025634: Numbers of form 8^i*10^j, with i, j >= 0.

The programs for A025634, there is no canonical definition to state claims against.
-/

/-! ## A025634.P17239868023697706796

`8^A025677(n+1)*10^A025690(n+1)`
-/

namespace A025634.P17239868023697706796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A025677 (n + 1) : ℤ) * (10 : ℚ) ^ (A025690 (n + 1) : ℤ)

end

end A025634.P17239868023697706796

/-! ## A025634.P5641691516567889564

`A167303(A036561(n))`
-/

namespace A025634.P5641691516567889564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167303 (A036561 n).toNat

end

end A025634.P5641691516567889564

/-! ## A025634.P13879799225992912577

`A137688(n)*A166590(A036561(n))`
-/

namespace A025634.P13879799225992912577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A166590 (A036561 n).toNat

end

end A025634.P13879799225992912577

/-! ## A025634.P13229587594800760930

`A166590(A036561(n))/2*A140513(n)`
-/

namespace A025634.P13229587594800760930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (A036561 n).toNat : ℚ) / 2 * (A140513 n : ℚ)

end

end A025634.P13229587594800760930

/-! ## A025634.P7083969449115763102

`A000079(A003056(n))*A166590(A036561(n))`
-/

namespace A025634.P7083969449115763102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A166590 (A036561 n).toNat

end

end A025634.P7083969449115763102

/-! ## A025634.P6794612557794214026

`A123108(A140513(n))*A166590(A036561(n))`
-/

namespace A025634.P6794612557794214026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A140513 n).toNat * A166590 (A036561 n).toNat

end

end A025634.P6794612557794214026

/-!
# A025635: Numbers of form 9^i*10^j, with i, j >= 0.

The programs for A025635, there is no canonical definition to state claims against.
-/

/-! ## A025635.P13876759934821639743

`A140303(n)²*A007088(A059268(n))`
-/

namespace A025635.P13876759934821639743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A007088 (A059268 n).toNat

end

end A025635.P13876759934821639743

/-! ## A025635.P1256186937078537316

`A038300(n)/A001281(A028326(n))`
-/

namespace A025635.P1256186937078537316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A001281 (A028326 n).toNat : ℚ)

end

end A025635.P1256186937078537316

/-! ## A025635.P12080116384165596178

`A038300(n)/A008619(A109128(n))`
-/

namespace A025635.P12080116384165596178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A008619 (A109128 n).toNat : ℚ)

end

end A025635.P12080116384165596178

/-! ## A025635.P6362035692076494779

`A005940(A043569(n+1)-1)*A175840(n)`
-/

namespace A025635.P6362035692076494779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A043569 (n + 1) - 1).toNat * A175840 n

end

end A025635.P6362035692076494779

/-! ## A025635.P2207059154739501293

`A007737(A307616(n+1))*A025616(A004201(n+1))`
-/

namespace A025635.P2207059154739501293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A307616 (n + 1)).toNat * A025616 (A004201 (n + 1)).toNat

end

end A025635.P2207059154739501293

/-! ## A025635.P6715029506936125666

`A025616(A004201(n+1)^A304042(n))`
-/

namespace A025635.P6715029506936125666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (SequenceMachineLib.roundAway ((A004201 (n + 1) : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A025635.P6715029506936125666

/-! ## A025635.P15030259875385888151

`A175840(n)*A332818(A036561(n))`
-/

namespace A025635.P15030259875385888151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n * A332818 (A036561 n).toNat

end

end A025635.P15030259875385888151

/-! ## A025635.P10792374988674322635

`A025616(A004201(n+1)%A196226(n+1))`
-/

namespace A025635.P10792374988674322635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (Int.tmod (A004201 (n + 1)) (A196226 (n + 1))).toNat

end

end A025635.P10792374988674322635

/-!
# A025636: Exponent of 2 (value of i) in n-th number of form 2^i*6^j.

The programs for A025636, there is no canonical definition to state claims against.
-/

/-! ## A025636.P4666299846097590011

`A007814(A025610(n+1)/6^A025656(n+1))`
-/

namespace A025636.P4666299846097590011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A025610 (n + 1) : ℚ) / (6 : ℚ) ^ (A025656 (n + 1) : ℤ))).toNat

end

end A025636.P4666299846097590011

/-! ## A025636.P3137215545849955133

`A195017(A025610(n+1))`
-/

namespace A025636.P3137215545849955133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A025610 (n + 1)).toNat

end

end A025636.P3137215545849955133

/-! ## A025636.P17168194533255097560

`A324192(A124510(n+2))`
-/

namespace A025636.P17168194533255097560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (A124510 (n + 2)).toNat

end

end A025636.P17168194533255097560

/-! ## A025636.P5425265549863282917

`A062977(A124509(n+2))`
-/

namespace A025636.P5425265549863282917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A124509 (n + 2)).toNat

end

end A025636.P5425265549863282917

/-! ## A025636.P9924176671867662486

`A195017(record[A064553(A025487(n+1))])`
-/

namespace A025636.P9924176671867662486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025636.P9924176671867662486

/-!
# A025637: Exponent of 2 (value of i) in n-th number of form 2^i*7^j.

The programs for A025637, there is no canonical definition to state claims against.
-/

/-! ## A025637.P11917149168552969505

`A007814(A003591(n+1))`
-/

namespace A025637.P11917149168552969505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003591 (n + 1)).toNat

end

end A025637.P11917149168552969505

/-! ## A025637.P17021419170226003878

`val(A033847(n+1), 2)-1`
-/

namespace A025637.P17021419170226003878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ) - 1

end

end A025637.P17021419170226003878

/-! ## A025637.P16605045542357564683

`A023443(val(A033847(n+1), 2))`
-/

namespace A025637.P16605045542357564683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2)

end

end A025637.P16605045542357564683

/-! ## A025637.P7332037296644529029

`A033999(A093178(n))+val(A033847(n+1), 2)`
-/

namespace A025637.P7332037296644529029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A093178 n).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P7332037296644529029

/-! ## A025637.P16288301253566430131

`A033999(A000265(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P16288301253566430131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000265 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P16288301253566430131

/-! ## A025637.P10621735348525846011

`A008683(A071195(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P10621735348525846011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A071195 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P10621735348525846011

/-! ## A025637.P4127700920212245039

`val(record[A003591(A126759(n))], 2)`
-/

namespace A025637.P4127700920212245039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A025637.P4127700920212245039

/-! ## A025637.P12006216270197900229

`A008683(A049550(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P12006216270197900229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049550 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P12006216270197900229

/-! ## A025637.P14574295154186674546

`A008683(A168367(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P14574295154186674546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A168367 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P14574295154186674546

/-! ## A025637.P3060064261629253958

`A008683(A139921(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P3060064261629253958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139921 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P3060064261629253958

/-! ## A025637.P5605609486333936893

`A008683(A048637(n+1))+val(A033847(n+1), 2)`
-/

namespace A025637.P5605609486333936893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A048637 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 2 : ℤ)

end

end A025637.P5605609486333936893

/-! ## A025637.P18176031631923620666

`A023131(n+1)-A000035(A072272(n))`
-/

namespace A025637.P18176031631923620666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - A000035 (A072272 n).toNat

end

end A025637.P18176031631923620666

/-! ## A025637.P316346691287899600

`A023131(n+1)-A072491(A005384(n+1))`
-/

namespace A025637.P316346691287899600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - A072491 (A005384 (n + 1)).toNat

end

end A025637.P316346691287899600

/-! ## A025637.P11762565037411689600

`A023131(n+1)-A348049(A005383(n+1))`
-/

namespace A025637.P11762565037411689600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - A348049 (A005383 (n + 1)).toNat

end

end A025637.P11762565037411689600

/-! ## A025637.P3614163563966813169

`A023131(n+1)-A010173(sqrt(A153262(n+1)))`
-/

namespace A025637.P3614163563966813169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - A010173 (SequenceMachineLib.roundAway (Real.sqrt (A153262 (n + 1) : ℝ))).toNat

end

end A025637.P3614163563966813169

/-! ## A025637.P7179163382763309966

`A023131(n+1)-A023141(A152714(n))`
-/

namespace A025637.P7179163382763309966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - A023141 (A152714 n).toNat

end

end A025637.P7179163382763309966

/-! ## A025637.P9466094617381507583

`A023131(n+1)-and(1, A103454(n))`
-/

namespace A025637.P9466094617381507583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - Int.land 1 (A103454 n)

end

end A025637.P9466094617381507583

/-! ## A025637.P5725436435604836444

`A023131(n+1)-and(1, A263806(n))`
-/

namespace A025637.P5725436435604836444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1) - Int.land 1 (A263806 n)

end

end A025637.P5725436435604836444

/-! ## A025637.P10659281567829546277

`and(A023131(n+1), A267596(n))-1`
-/

namespace A025637.P10659281567829546277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023131 (n + 1)) (A267596 n) - 1

end

end A025637.P10659281567829546277

/-!
# A025638: Exponent of 2 (value of i) in n-th number of form 2^i*9^j.

The programs for A025638, there is no canonical definition to state claims against.
-/

/-! ## A025638.P17253903355563267149

`A007814(A025611(n+1))`
-/

namespace A025638.P17253903355563267149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A025611 (n + 1)).toNat

end

end A025638.P17253903355563267149

/-! ## A025638.P9353009940548238867

`log2(gcd(A000079(n), A025611(n+1)))`
-/

namespace A025638.P9353009940548238867
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A025611 (n + 1)) : ℝ)

end

end A025638.P9353009940548238867

/-! ## A025638.P1871956168643432321

`A356624(n)%A276625(n+3)`
-/

namespace A025638.P1871956168643432321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356624 n) (A276625 (n + 3))

end

end A025638.P1871956168643432321

/-! ## A025638.P10731359564685969395

`A356624(n)+A010054(A001105(n+2))`
-/

namespace A025638.P10731359564685969395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A010054 (A001105 (n + 2)).toNat

end

end A025638.P10731359564685969395

/-! ## A025638.P5989730530018385924

`A356624(n)/A045778(A356627(n+1))`
-/

namespace A025638.P5989730530018385924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356624 n : ℚ) / (A045778 (A356627 (n + 1)).toNat : ℚ)

end

end A025638.P5989730530018385924

/-! ## A025638.P13675260477919907914

`A356624(n)+A183002(A001105(n+2)+1)%2`
-/

namespace A025638.P13675260477919907914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + Int.tmod (A183002 (A001105 (n + 2) + 1).toNat) 2

end

end A025638.P13675260477919907914

/-! ## A025638.P11231373545246306313

`A023133(n+1)-A001222(A214704(n+1))`
-/

namespace A025638.P11231373545246306313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A001222 (A214704 (n + 1)).toNat

end

end A025638.P11231373545246306313

/-! ## A025638.P13612918273508406842

`A023133(n+1)-A152845(A335465(n+3))`
-/

namespace A025638.P13612918273508406842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A152845 (A335465 (n + 3)).toNat

end

end A025638.P13612918273508406842

/-! ## A025638.P16875553286957789733

`A356624(n)^A151878(n)!^A363619(n+1)`
-/

namespace A025638.P16875553286957789733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A356624 n : ℝ) ^ ((Nat.factorial (A151878 n).toNat : ℚ) ^ (A363619 (n + 1) : ℤ) : ℝ)

end

end A025638.P16875553286957789733

/-! ## A025638.P16393823155888054911

`A356624(n)%A257664(A376901(n))`
-/

namespace A025638.P16393823155888054911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356624 n) (A257664 (A376901 n).toNat)

end

end A025638.P16393823155888054911

/-!
# A025639: Exponent of 2 (value of i) in n-th number of form 2^i*10^j.

The programs for A025639, there is no canonical definition to state claims against.
-/

/-! ## A025639.P8678829947348939240

`A007814(A025612(n+1)/10^A025684(n+1))`
-/

namespace A025639.P8678829947348939240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A025612 (n + 1) : ℚ) / (10 : ℚ) ^ (A025684 (n + 1) : ℤ))).toNat

end

end A025639.P8678829947348939240

/-!
# A025640: Exponent of 3 (value of i) in n-th number of form 3^i*4^j.

The programs for A025640, there is no canonical definition to state claims against.
-/

/-! ## A025640.P10449783959334623796

`val(A025613(n+1), 3)`
-/

namespace A025640.P10449783959334623796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025613 (n + 1)).toNat 3

end

end A025640.P10449783959334623796

/-! ## A025640.P10752956663548684321

`val(A191145(n+1)+1, 3)`
-/

namespace A025640.P10752956663548684321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A191145 (n + 1) + 1).toNat 3

end

end A025640.P10752956663548684321

/-! ## A025640.P14285167656298343644

`val(A228104(n+1), 3)-1`
-/

namespace A025640.P14285167656298343644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A228104 (n + 1)).toNat 3 : ℤ) - 1

end

end A025640.P14285167656298343644

/-! ## A025640.P740659141107084651

`A022329(record[(n+1)*A022328(n+2)%2]+1)`
-/

namespace A025640.P740659141107084651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A022328 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A025640.P740659141107084651

/-!
# A025641: Exponent of 3 (value of i) in n-th number of form 3^i*6^j.

The programs for A025641, there is no canonical definition to state claims against.
-/

/-! ## A025641.P2415141035982619151

`A007949(A025614(n+1)/6^A025657(n+1))`
-/

namespace A025641.P2415141035982619151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A025614 (n + 1) : ℚ) / (6 : ℚ) ^ (A025657 (n + 1) : ℤ))).toNat

end

end A025641.P2415141035982619151

/-! ## A025641.P2835496658284155217

`val(A025614(n+1), 3)-A025657(n+1)`
-/

namespace A025641.P2835496658284155217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A025614 (n + 1)).toNat 3 : ℤ) - A025657 (n + 1)

end

end A025641.P2835496658284155217

/-! ## A025641.P12667662554406418201

`A007967((1-A023129(n+1))²)`
-/

namespace A025641.P12667662554406418201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((1 - A023129 (n + 1)) ^ 2).toNat

end

end A025641.P12667662554406418201

/-! ## A025641.P5950918415528183100

`A023129(n+1)-A040001(A273449(n))`
-/

namespace A025641.P5950918415528183100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) - A040001 (A273449 n).toNat

end

end A025641.P5950918415528183100

/-! ## A025641.P8804906065581972375

`A025649(n+1)*A040001(A273449(n))`
-/

namespace A025641.P8804906065581972375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) * A040001 (A273449 n).toNat

end

end A025641.P8804906065581972375

/-! ## A025641.P13910183755120484464

`A023129(n+1)-A001222(A002385(n+1))`
-/

namespace A025641.P13910183755120484464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) - A001222 (A002385 (n + 1)).toNat

end

end A025641.P13910183755120484464

/-! ## A025641.P1071929928970344996

`A023129(n+1)-A056926(A125239(n+1))`
-/

namespace A025641.P1071929928970344996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) - A056926 (A125239 (n + 1)).toNat

end

end A025641.P1071929928970344996

/-! ## A025641.P14492350012797599231

`A025649(n+1)%A000998(n)`
-/

namespace A025641.P14492350012797599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025649 (n + 1)) (A000998 n)

end

end A025641.P14492350012797599231

/-! ## A025641.P7978025816869523028

`A023129(n+1)-A023129(A022791(n+1))`
-/

namespace A025641.P7978025816869523028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) - A023129 (A022791 (n + 1)).toNat

end

end A025641.P7978025816869523028

/-! ## A025641.P475686069820234348

`A025649(A025657(A025713(n+1)))`
-/

namespace A025641.P475686069820234348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (A025657 (A025713 (n + 1)).toNat).toNat

end

end A025641.P475686069820234348

/-! ## A025641.P13500338912423408139

`A025649(n+1)+A025649(A025742(n))`
-/

namespace A025641.P13500338912423408139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A025649 (A025742 n).toNat

end

end A025641.P13500338912423408139

/-! ## A025641.P18124063753342211558

`A025649(A025686(A025742(n+1)))`
-/

namespace A025641.P18124063753342211558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (A025686 (A025742 (n + 1)).toNat).toNat

end

end A025641.P18124063753342211558

/-! ## A025641.P2998804276949782758

`and(A025649(n+1), A086827(n+1))`
-/

namespace A025641.P2998804276949782758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025649 (n + 1)) (A086827 (n + 1))

end

end A025641.P2998804276949782758

/-!
# A025642: Exponent of 3 (value of i) in n-th number of form 3^i*7^j.

The programs for A025642, there is no canonical definition to state claims against.
-/

/-! ## A025642.P850775405000732126

`val(A003594(n+1), 3)`
-/

namespace A025642.P850775405000732126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003594 (n + 1)).toNat 3

end

end A025642.P850775405000732126

/-! ## A025642.P929314701279851278

`val(A033850(n+1), 3)-1`
-/

namespace A025642.P929314701279851278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ) - 1

end

end A025642.P929314701279851278

/-! ## A025642.P18233447947869578821

`A155718(A000040((-1)^(2*n)))+val(A033850(n+1), 3)`
-/

namespace A025642.P18233447947869578821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155718 (A000040 ((-1) ^ (2 * n)).toNat).toNat + (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ)

end

end A025642.P18233447947869578821

/-! ## A025642.P1987572309404208548

`A260196(n+2)+val(A033850(n+1), 3)`
-/

namespace A025642.P1987572309404208548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ)

end

end A025642.P1987572309404208548

/-! ## A025642.P930053154828839782

`A008683(A139928(n+1))+val(A033850(n+1), 3)`
-/

namespace A025642.P930053154828839782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139928 (n + 1)).toNat + (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ)

end

end A025642.P930053154828839782

/-! ## A025642.P4636675074248923444

`A008683(A084405(n+1))+val(A033850(n+1), 3)`
-/

namespace A025642.P4636675074248923444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084405 (n + 1)).toNat + (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ)

end

end A025642.P4636675074248923444

/-! ## A025642.P14015164289214375164

`val(∩[A056745(n+1), A057233(n+1)], 3)`
-/

namespace A025642.P14015164289214375164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) 3

end

end A025642.P14015164289214375164

/-! ## A025642.P4390035548312448472

`A008683(A058048(n+1))+val(A033850(n+1), 3)`
-/

namespace A025642.P4390035548312448472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A058048 (n + 1)).toNat + (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℤ)

end

end A025642.P4390035548312448472

/-!
# A025643: Exponent of 3 (value of i) in n-th number of form 3^i*8^j.

The programs for A025643, the canonical program `A025643.P3163266294167226647` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025643 has offset 1).

The definition of A025643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025643.P12295956895099351498

`A007949(A025615(n+1))`
-/

namespace A025643.P12295956895099351498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A025615 (n + 1)).toNat

end

end A025643.P12295956895099351498

namespace A025643

/-- `A007949(A025615(n+1))` -/
def P12295956895099351498.Spec : Prop :=
  ∀ n, P12295956895099351498.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P15385558369619914082

`A384688(n)+A000122(A014442(n+1))`
-/

namespace A025643.P15385558369619914082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 n + A000122 (A014442 (n + 1)).toNat

end

end A025643.P15385558369619914082

namespace A025643

/-- `A384688(n)+A000122(A014442(n+1))` -/
def P15385558369619914082.Spec : Prop :=
  ∀ n, P15385558369619914082.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P4814457090389357269

`A384688(n)%A028442(A135087(n+2))`
-/

namespace A025643.P4814457090389357269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384688 n) (A028442 (A135087 (n + 2)).toNat)

end

end A025643.P4814457090389357269

namespace A025643

/-- `A384688(n)%A028442(A135087(n+2))` -/
def P4814457090389357269.Spec : Prop :=
  ∀ n, P4814457090389357269.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P8601124921139025612

`A384688(n)+A008683(A079458(3*n+4))`
-/

namespace A025643.P8601124921139025612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 n + A008683 (A079458 (3 * n + 4)).toNat

end

end A025643.P8601124921139025612

namespace A025643

/-- `A384688(n)+A008683(A079458(3*n+4))` -/
def P8601124921139025612.Spec : Prop :=
  ∀ n, P8601124921139025612.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P6450312358970548074

`val(A173195(n+1), A007978(A005383(n+1)))`
-/

namespace A025643.P6450312358970548074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat (A007978 (A005383 (n + 1)).toNat).toNat

end

end A025643.P6450312358970548074

namespace A025643

/-- `val(A173195(n+1), A007978(A005383(n+1)))` -/
def P6450312358970548074.Spec : Prop :=
  ∀ n, (P6450312358970548074.a n : ℤ) = A025643 (n + 1)

end A025643

/-! ## A025643.P1844946614946041264

`val(A173195(n+1), A007978(A213809(n+1)))`
-/

namespace A025643.P1844946614946041264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat (A007978 (A213809 (n + 1)).toNat).toNat

end

end A025643.P1844946614946041264

namespace A025643

/-- `val(A173195(n+1), A007978(A213809(n+1)))` -/
def P1844946614946041264.Spec : Prop :=
  ∀ n, (P1844946614946041264.a n : ℤ) = A025643 (n + 1)

end A025643

/-! ## A025643.P11807799977297645924

`and(A086827(n+1), A384688(n))`
-/

namespace A025643.P11807799977297645924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A384688 n)

end

end A025643.P11807799977297645924

namespace A025643

/-- `and(A086827(n+1), A384688(n))` -/
def P11807799977297645924.Spec : Prop :=
  ∀ n, P11807799977297645924.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P3163266294167226647

`A002262(∑[A160242(n+2)]-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025643

/-- `A002262(∑[A160242(n+2)]-1)` -/
def P3163266294167226647.Spec : Prop :=
  ∀ n, P3163266294167226647.a n = A025643 (n + 1)

theorem P3163266294167226647.correct : P3163266294167226647.Spec := by
  intro n
  simp only [A025643, Nat.add_sub_cancel]

end A025643

/-! ## A025643.P207027185800776159

`A002260(∑[A160242(n+2)])-1`
-/

namespace A025643.P207027185800776159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A025643.P207027185800776159

namespace A025643

/-- `A002260(∑[A160242(n+2)])-1` -/
def P207027185800776159.Spec : Prop :=
  ∀ n, P207027185800776159.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P42561162979545008

`A002262(A066182(∑[A160242(n+2)]))`
-/

namespace A025643.P42561162979545008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A066182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025643.P42561162979545008

namespace A025643

/-- `A002262(A066182(∑[A160242(n+2)]))` -/
def P42561162979545008.Spec : Prop :=
  ∀ n, P42561162979545008.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P14023000360459607551

`val(A173195(n+1), A014391(A158034(n+1)))`
-/

namespace A025643.P14023000360459607551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat (A014391 (A158034 (n + 1)).toNat).toNat

end

end A025643.P14023000360459607551

namespace A025643

/-- `val(A173195(n+1), A014391(A158034(n+1)))` -/
def P14023000360459607551.Spec : Prop :=
  ∀ n, (P14023000360459607551.a n : ℤ) = A025643 (n + 1)

end A025643

/-! ## A025643.P15586197036911487035

`A057428(n+1)+A002260(∑[A160242(n+2)])`
-/

namespace A025643.P15586197036911487035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025643.P15586197036911487035

namespace A025643

/-- `A057428(n+1)+A002260(∑[A160242(n+2)])` -/
def P15586197036911487035.Spec : Prop :=
  ∀ n, P15586197036911487035.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P1589790915906210211

`A171746(A049068(n+1))-A152271(2^A003056(n))`
-/

namespace A025643.P1589790915906210211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171746 (A049068 (n + 1)).toNat - A152271 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A025643.P1589790915906210211

namespace A025643

/-- `A171746(A049068(n+1))-A152271(2^A003056(n))` -/
def P1589790915906210211.Spec : Prop :=
  ∀ n, P1589790915906210211.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P5972017557435517864

`A384688(A000196(n²))`
-/

namespace A025643.P5972017557435517864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 (A000196 (n ^ 2)).toNat

end

end A025643.P5972017557435517864

namespace A025643

/-- `A384688(A000196(n²))` -/
def P5972017557435517864.Spec : Prop :=
  ∀ n, P5972017557435517864.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P14503965947524304792

`A053186(A053186(n+1)+A000196(n²))`
-/

namespace A025643.P14503965947524304792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 (n + 1) + A000196 (n ^ 2)).toNat

end

end A025643.P14503965947524304792

namespace A025643

/-- `A053186(A053186(n+1)+A000196(n²))` -/
def P14503965947524304792.Spec : Prop :=
  ∀ n, P14503965947524304792.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P9067656824055948101

`A053186(A053186(n+1)+A037213(n²))`
-/

namespace A025643.P9067656824055948101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 (n + 1) + A037213 (n ^ 2)).toNat

end

end A025643.P9067656824055948101

namespace A025643

/-- `A053186(A053186(n+1)+A037213(n²))` -/
def P9067656824055948101.Spec : Prop :=
  ∀ n, P9067656824055948101.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P9391136041380749896

`A002262(A336348((n+1)²)+A000196(n))`
-/

namespace A025643.P9391136041380749896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A336348 ((n + 1) ^ 2) + A000196 n).toNat

end

end A025643.P9391136041380749896

namespace A025643

/-- `A002262(A336348((n+1)²)+A000196(n))` -/
def P9391136041380749896.Spec : Prop :=
  ∀ n, P9391136041380749896.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P18044612585186810686

`A053186(A159335(∑[n])+A053186(n+1))`
-/

namespace A025643.P18044612585186810686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A159335 (∑ j ∈ Finset.range (n + 1), f1 j) + A053186 (n + 1)).toNat

end

end A025643.P18044612585186810686

namespace A025643

/-- `A053186(A159335(∑[n])+A053186(n+1))` -/
def P18044612585186810686.Spec : Prop :=
  ∀ n, P18044612585186810686.a n = A025643 (n + 1)

end A025643

/-! ## A025643.P17036766241075713023

`A384688(A000194(n²))`
-/

namespace A025643.P17036766241075713023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 (A000194 (n ^ 2)).toNat

end

end A025643.P17036766241075713023

namespace A025643

/-- `A384688(A000194(n²))` -/
def P17036766241075713023.Spec : Prop :=
  ∀ n, P17036766241075713023.a n = A025643 (n + 1)

end A025643

/-!
# A025644: Exponent of 3 (value of i) in n-th number of form 3^i*10^j.

The programs for A025644, there is no canonical definition to state claims against.
-/

/-! ## A025644.P11377889545653044047

`val(A025616(n+1), 3)`
-/

namespace A025644.P11377889545653044047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025616 (n + 1)).toNat 3

end

end A025644.P11377889545653044047

/-!
# A025645: Exponent of 4 (value of j) in n-th number of form 3^i*4^j.

The programs for A025645, there is no canonical definition to state claims against.
-/

/-! ## A025645.P17655075477975494410

`A235127(A025613(n+1))`
-/

namespace A025645.P17655075477975494410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A025613 (n + 1)).toNat

end

end A025645.P17655075477975494410

/-! ## A025645.P2610472752047298417

`val(A228104(n+1), 4)`
-/

namespace A025645.P2610472752047298417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A228104 (n + 1)).toNat 4

end

end A025645.P2610472752047298417

/-! ## A025645.P16715708972185144789

`val(A191145(n+1)+1, 4)`
-/

namespace A025645.P16715708972185144789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A191145 (n + 1) + 1).toNat 4

end

end A025645.P16715708972185144789

/-! ## A025645.P7214763122960068037

`A022328(eq[2, gcd(2, A022328(n+1))]+1)/2`
-/

namespace A025645.P7214763122960068037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A022328 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022328 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 2

end

end A025645.P7214763122960068037

/-! ## A025645.P2451476923670410961

`A022328(eq[1, val(2*A158456(n+1), 2)]+1)/2`
-/

namespace A025645.P2451476923670410961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A158456 (n + 1)).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022328 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 2

end

end A025645.P2451476923670410961

/-! ## A025645.P17702734587970168307

`A022328(comp[(n+2)*A022328(n+2)%2])/2`
-/

namespace A025645.P17702734587970168307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A022328 (n + 2)) 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A025645.P17702734587970168307

/-! ## A025645.P2271534321809531352

`A055671(A167346(n+1))+A025688(n+1)`
-/

namespace A025645.P2271534321809531352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A167346 (n + 1)).toNat + A025688 (n + 1)

end

end A025645.P2271534321809531352

/-! ## A025645.P9492245358757686412

`A025688(n+1)+A008683(A016886(n))`
-/

namespace A025645.P9492245358757686412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025688 (n + 1) + A008683 (A016886 n).toNat

end

end A025645.P9492245358757686412

/-! ## A025645.P8723444596397879072

`A025688(n+1)%A000664(n)`
-/

namespace A025645.P8723444596397879072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025688 (n + 1)) (A000664 n)

end

end A025645.P8723444596397879072

/-! ## A025645.P10237277325858326499

`and(A002223(n+1), A025688(n+1))`
-/

namespace A025645.P10237277325858326499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A025688 (n + 1))

end

end A025645.P10237277325858326499

/-!
# A025646: Exponent of 4 (value of i) in n-th number of form 4^i*5^j.

The programs for A025646, there is no canonical definition to state claims against.
-/

/-! ## A025646.P966946269127817268

`A235127(A025617(n+1))`
-/

namespace A025646.P966946269127817268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A025617 (n + 1)).toNat

end

end A025646.P966946269127817268

/-!
# A025647: Exponent of 4 (value of i) in n-th number of form 4^i*6^j.

The programs for A025647, there is no canonical definition to state claims against.
-/

/-! ## A025647.P11426240956318893031

`A235127(A025618(n+1)/6^A025658(n+1))`
-/

namespace A025647.P11426240956318893031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (SequenceMachineLib.roundAway ((A025618 (n + 1) : ℚ) / (6 : ℚ) ^ (A025658 (n + 1) : ℤ))).toNat

end

end A025647.P11426240956318893031

/-!
# A025648: Exponent of 4 (value of i) in n-th number of form 4^i*7^j.

The programs for A025648, there is no canonical definition to state claims against.
-/

/-! ## A025648.P796424312240843293

`val(A025619(n+1), 4)`
-/

namespace A025648.P796424312240843293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025619 (n + 1)).toNat 4

end

end A025648.P796424312240843293

/-! ## A025648.P10110665384217392431

`A007336(n+1)-A131843(A046092(n))`
-/

namespace A025648.P10110665384217392431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A131843 (A046092 n).toNat

end

end A025648.P10110665384217392431

/-! ## A025648.P12412479877982587055

`A057428(A211144(n+1))+A007336(n+1)`
-/

namespace A025648.P12412479877982587055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A211144 (n + 1)).toNat + A007336 (n + 1)

end

end A025648.P12412479877982587055

/-! ## A025648.P2831691396386134798

`A057428(A324975(n+1))+A007336(n+1)`
-/

namespace A025648.P2831691396386134798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A324975 (n + 1)).toNat + A007336 (n + 1)

end

end A025648.P2831691396386134798

/-! ## A025648.P156395279638937753

`A007336(n+1)-A040001(A020497(3*(n+1)))`
-/

namespace A025648.P156395279638937753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A040001 (A020497 (3 * (n + 1))).toNat

end

end A025648.P156395279638937753

/-! ## A025648.P14467044417242692711

`A007336(n+1)-A052409(A090288(n))`
-/

namespace A025648.P14467044417242692711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A052409 (A090288 n).toNat

end

end A025648.P14467044417242692711

/-! ## A025648.P7769620527485008003

`A057428(A007319(n+1))+A007336(n+1)`
-/

namespace A025648.P7769620527485008003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007319 (n + 1)).toNat + A007336 (n + 1)

end

end A025648.P7769620527485008003

/-! ## A025648.P3505959473196315880

`A007336(n+1)-A000188(A275011(n+1))`
-/

namespace A025648.P3505959473196315880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A000188 (A275011 (n + 1)).toNat

end

end A025648.P3505959473196315880

/-! ## A025648.P8765226637837325670

`A007336(n+1)%(A103453(n)+1)-1`
-/

namespace A025648.P8765226637837325670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007336 (n + 1)) (A103453 n + 1) - 1

end

end A025648.P8765226637837325670

/-! ## A025648.P14350197947441471290

`A007336(n+1)-A336532(A133825(n))`
-/

namespace A025648.P14350197947441471290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A336532 (A133825 n).toNat

end

end A025648.P14350197947441471290

/-! ## A025648.P6377975193851549654

`A007336(n+1)-A023118(A022780(n+1))`
-/

namespace A025648.P6377975193851549654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A023118 (A022780 (n + 1)).toNat

end

end A025648.P6377975193851549654

/-! ## A025648.P13121154342098522949

`A007336(n+1)-A000035(A160031(n+1))`
-/

namespace A025648.P13121154342098522949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A000035 (A160031 (n + 1)).toNat

end

end A025648.P13121154342098522949

/-! ## A025648.P16351933125470711144

`A007336(n+1)-A300909(A352185(n+1))`
-/

namespace A025648.P16351933125470711144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A300909 (A352185 (n + 1)).toNat

end

end A025648.P16351933125470711144

/-! ## A025648.P1245413652243830872

`A007336(n+1)-A292583(A019446(n+1)²)`
-/

namespace A025648.P1245413652243830872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A292583 (A019446 (n + 1) ^ 2).toNat

end

end A025648.P1245413652243830872

/-! ## A025648.P14666009464549929846

`A007336(n+1)-A000034(A078579(n+1))`
-/

namespace A025648.P14666009464549929846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A000034 (A078579 (n + 1)).toNat

end

end A025648.P14666009464549929846

/-! ## A025648.P7981873325618689792

`A162512(A001359(n+1))+A007336(n+1)`
-/

namespace A025648.P7981873325618689792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A001359 (n + 1)).toNat + A007336 (n + 1)

end

end A025648.P7981873325618689792

/-! ## A025648.P400359669721338864

`A007336(n+1)-A057427(A088176(n+1))`
-/

namespace A025648.P400359669721338864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A057427 (A088176 (n + 1)).toNat

end

end A025648.P400359669721338864

/-! ## A025648.P13916733082400977502

`A007336(n+1)-A023116(A022778(n+1))`
-/

namespace A025648.P13916733082400977502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A023116 (A022778 (n + 1)).toNat

end

end A025648.P13916733082400977502

/-! ## A025648.P3230894239552377448

`A007336(n+1)-A023115(A022776(n+1))`
-/

namespace A025648.P3230894239552377448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A023115 (A022776 (n + 1)).toNat

end

end A025648.P3230894239552377448

/-! ## A025648.P13065567693327750723

`A007336(n+1)-A001222(A186169(n+1))`
-/

namespace A025648.P13065567693327750723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1) - A001222 (A186169 (n + 1)).toNat

end

end A025648.P13065567693327750723

/-!
# A025649: Exponent of 4 (value of i) in n-th number of form 4^i*10^j.

The programs for A025649, there is no canonical definition to state claims against.
-/

/-! ## A025649.P1909600158833840075

`A023129(n+1)-A329684(A080277(3*n+4))`
-/

namespace A025649.P1909600158833840075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) - A329684 (A080277 (3 * n + 4)).toNat

end

end A025649.P1909600158833840075

/-! ## A025649.P13233107282301074938

`A057428(A002473(n+1))+A023129(n+1)`
-/

namespace A025649.P13233107282301074938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002473 (n + 1)).toNat + A023129 (n + 1)

end

end A025649.P13233107282301074938

/-! ## A025649.P8677758308494798939

`A023129(n+1)+A008683(A323578(n+1))`
-/

namespace A025649.P8677758308494798939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) + A008683 (A323578 (n + 1)).toNat

end

end A025649.P8677758308494798939

/-! ## A025649.P15457769646635582017

`A057428(A166633(n+1))+A023129(n+1)`
-/

namespace A025649.P15457769646635582017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A166633 (n + 1)).toNat + A023129 (n + 1)

end

end A025649.P15457769646635582017

/-! ## A025649.P2123225904613004321

`A033999(A124268(n+1))+A023129(n+1)`
-/

namespace A025649.P2123225904613004321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A124268 (n + 1)).toNat + A023129 (n + 1)

end

end A025649.P2123225904613004321

/-! ## A025649.P17579586216496161018

`A280193(A030430(n+1))+A023129(n+1)`
-/

namespace A025649.P17579586216496161018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A030430 (n + 1)).toNat + A023129 (n + 1)

end

end A025649.P17579586216496161018

/-! ## A025649.P3386873715916995654

`A070198(n)%A023129(n+1)`
-/

namespace A025649.P3386873715916995654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A023129 (n + 1))

end

end A025649.P3386873715916995654

/-! ## A025649.P1113315642204425505

`A079782(n+1)%A023129(n+1)`
-/

namespace A025649.P1113315642204425505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A023129 (n + 1))

end

end A025649.P1113315642204425505

/-! ## A025649.P7621513652547864599

`A083685(n+1)%A023129(n+1)`
-/

namespace A025649.P7621513652547864599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A023129 (n + 1))

end

end A025649.P7621513652547864599

/-! ## A025649.P6838889811373740198

`A121934(n+1)%A023129(n+1)`
-/

namespace A025649.P6838889811373740198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A023129 (n + 1))

end

end A025649.P6838889811373740198

/-! ## A025649.P9180832788608088237

`A025581(∑[n+1]-A023129(n+1))`
-/

namespace A025649.P9180832788608088237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023129 (n + 1)).toNat

end

end A025649.P9180832788608088237

/-! ## A025649.P2820712043819162452

`A002262(A023129(n+1)+A000096(n))`
-/

namespace A025649.P2820712043819162452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A023129 (n + 1) + A000096 n).toNat

end

end A025649.P2820712043819162452

/-! ## A025649.P13768900845631299594

`A002262(A023129(n+1)+∑[n+2])`
-/

namespace A025649.P13768900845631299594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A023129 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A025649.P13768900845631299594

/-! ## A025649.P8028891959608301061

`A030494(n+1)%A023129(n+1)`
-/

namespace A025649.P8028891959608301061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A023129 (n + 1))

end

end A025649.P8028891959608301061

/-! ## A025649.P10612179144554917449

`A072828(n+1)%A023129(n+1)`
-/

namespace A025649.P10612179144554917449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A023129 (n + 1))

end

end A025649.P10612179144554917449

/-!
# A025650: Exponent of 5 (value of j) in n-th number of form 4^i*5^j.

The programs for A025650, there is no canonical definition to state claims against.
-/

/-! ## A025650.P4846622132522633611

`val(A025617(n+1), 5)`
-/

namespace A025650.P4846622132522633611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025617 (n + 1)).toNat 5

end

end A025650.P4846622132522633611

/-! ## A025650.P5680453632770319760

`A022333(eq[1, gcd(2, A022332(n+1))]+1)`
-/

namespace A025650.P5680453632770319760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A022332 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025650.P5680453632770319760

/-!
# A025651: Exponent of 5 (value of i) in n-th number of form 5^i*6^j.

The programs for A025651, there is no canonical definition to state claims against.
-/

/-! ## A025651.P7078254937783721227

`val(A025622(n+1), 5)`
-/

namespace A025651.P7078254937783721227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025622 (n + 1)).toNat 5

end

end A025651.P7078254937783721227

/-! ## A025651.P8947927153553390021

`A001222(gcd(A108761(n+1), A140513(n)))`
-/

namespace A025651.P8947927153553390021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A108761 (n + 1)) (A140513 n))

end

end A025651.P8947927153553390021

/-! ## A025651.P156640792775288141

`val(A108761(n+1), A131818(A167499(n)))`
-/

namespace A025651.P156640792775288141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108761 (n + 1)).toNat (A131818 (A167499 n).toNat).toNat

end

end A025651.P156640792775288141

/-! ## A025651.P11689499782497144941

`A185255(A280865(n))+A025581(n)`
-/

namespace A025651.P11689499782497144941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A280865 n).toNat + A025581 n

end

end A025651.P11689499782497144941

/-!
# A025652: Exponent of 5 (value of i) in n-th number of form 5^i*7^j.

The programs for A025652, there is no canonical definition to state claims against.
-/

/-! ## A025652.P7951841601199847727

`val(A003595(n+1), 5)`
-/

namespace A025652.P7951841601199847727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003595 (n + 1)).toNat 5

end

end A025652.P7951841601199847727

/-! ## A025652.P774876387970490658

`val(A033851(n+1), 5)-1`
-/

namespace A025652.P774876387970490658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ) - 1

end

end A025652.P774876387970490658

/-! ## A025652.P12700140029377188306

`A023443(val(A033851(n+1), 5))`
-/

namespace A025652.P12700140029377188306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5)

end

end A025652.P12700140029377188306

/-! ## A025652.P2732626116868866478

`A289207(val(A033851(n+1), 5)+1)`
-/

namespace A025652.P2732626116868866478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 + 1)

end

end A025652.P2732626116868866478

/-! ## A025652.P8233168664580724301

`val(A011782(val(A033851(n+1), 5)), 2)`
-/

namespace A025652.P8233168664580724301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011782 (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5)).toNat 2

end

end A025652.P8233168664580724301

/-! ## A025652.P2629349275593521080

`A057428(n+1)+val(A033851(n+1), 5)`
-/

namespace A025652.P2629349275593521080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P2629349275593521080

/-! ## A025652.P18440718497622089043

`A134824(n+2)+val(A033851(n+1), 5)`
-/

namespace A025652.P18440718497622089043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P18440718497622089043

/-! ## A025652.P17704211768308895835

`A008683(A031215(n+1))+val(A033851(n+1), 5)`
-/

namespace A025652.P17704211768308895835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031215 (n + 1)).toNat + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P17704211768308895835

/-! ## A025652.P12168280601883984885

`A008683(A023202(n+1))+val(A033851(n+1), 5)`
-/

namespace A025652.P12168280601883984885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023202 (n + 1)).toNat + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P12168280601883984885

/-! ## A025652.P8198198092947091045

`A008683(A175118(n+1))+val(A033851(n+1), 5)`
-/

namespace A025652.P8198198092947091045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A175118 (n + 1)).toNat + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P8198198092947091045

/-! ## A025652.P14245828219919910154

`A008683(A173969(n+1))+val(A033851(n+1), 5)`
-/

namespace A025652.P14245828219919910154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A173969 (n + 1)).toNat + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℤ)

end

end A025652.P14245828219919910154

/-!
# A025653: 

The programs for A025653, there is no canonical definition to state claims against.
-/

/-! ## A025653.P7247636512681003466

`val(A025623(n+1), 5)`
-/

namespace A025653.P7247636512681003466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025623 (n + 1)).toNat 5

end

end A025653.P7247636512681003466

/-! ## A025653.P16797535509940400827

`A022333(eq[2, A022332(n+1)%3]+1)`
-/

namespace A025653.P16797535509940400827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022332 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A025653.P16797535509940400827

/-!
# A025654: Exponent of 5 (value of i) in n-th number of form 5^i*9^j.

The programs for A025654, there is no canonical definition to state claims against.
-/

/-! ## A025654.P17926553750442778518

`val(A025624(n+1), 5)`
-/

namespace A025654.P17926553750442778518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025624 (n + 1)).toNat 5

end

end A025654.P17926553750442778518

/-! ## A025654.P1827356099722392370

`val(A108698(n+1), A010693(A167287(n+1)))`
-/

namespace A025654.P1827356099722392370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A010693 (A167287 (n + 1)).toNat).toNat

end

end A025654.P1827356099722392370

/-! ## A025654.P13344613831197607545

`val(A108698(n+1), A020639(A239933(n+1)))`
-/

namespace A025654.P13344613831197607545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A020639 (A239933 (n + 1)).toNat).toNat

end

end A025654.P13344613831197607545

/-! ## A025654.P18040208497879289220

`val(A108698(n+1), A010677(A139505(n+1)))`
-/

namespace A025654.P18040208497879289220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A010677 (A139505 (n + 1)).toNat).toNat

end

end A025654.P18040208497879289220

/-! ## A025654.P7384514990288626695

`val(A108698(n+1), A010693(A192095(n+1)))`
-/

namespace A025654.P7384514990288626695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A010693 (A192095 (n + 1)).toNat).toNat

end

end A025654.P7384514990288626695

/-! ## A025654.P8115002979535270567

`val(A108698(n+1), A006530(A065119(n+1)))`
-/

namespace A025654.P8115002979535270567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A006530 (A065119 (n + 1)).toNat).toNat

end

end A025654.P8115002979535270567

/-!
# A025655: Exponent of 5 (value of i) in n-th number of form 5^i*10^j.

The programs for A025655, there is no canonical definition to state claims against.
-/

/-! ## A025655.P11348251968612667665

`val(A025625(n+1), 5)-A025687(n+1)`
-/

namespace A025655.P11348251968612667665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A025625 (n + 1)).toNat 5 : ℤ) - A025687 (n + 1)

end

end A025655.P11348251968612667665

/-! ## A025655.P2547132153131890665

`val(A107710(n+1)², 2)/2`
-/

namespace A025655.P2547132153131890665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A107710 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A025655.P2547132153131890665

/-! ## A025655.P17667733729001484669

`val(A107710(n+1), A328680(A285107(n)))`
-/

namespace A025655.P17667733729001484669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107710 (n + 1)).toNat (A328680 (A285107 n).toNat).toNat

end

end A025655.P17667733729001484669

/-! ## A025655.P10219173997952022522

`A001222(gcd(A034585(n+2), A107710(n+1)))`
-/

namespace A025655.P10219173997952022522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A034585 (n + 2)) (A107710 (n + 1)))

end

end A025655.P10219173997952022522

/-! ## A025655.P18200207718916903206

`A001222(and(-A107710(n+1), A107710(n+1)))`
-/

namespace A025655.P18200207718916903206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A107710 (n + 1)) (A107710 (n + 1))).toNat

end

end A025655.P18200207718916903206

/-! ## A025655.P4364943868493080076

`A022336(n+1)*A039982(A151934(n))`
-/

namespace A025655.P4364943868493080076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) * A039982 (A151934 n).toNat

end

end A025655.P4364943868493080076

/-! ## A025655.P10871674212758668232

`A022336(n+1)%A000720(A087525(n+1))`
-/

namespace A025655.P10871674212758668232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022336 (n + 1)) (A000720 (A087525 (n + 1)).toNat)

end

end A025655.P10871674212758668232

/-!
# A025656: Exponent of 6 (value of j) in n-th number of form 2^i*6^j.

The programs for A025656, there is no canonical definition to state claims against.
-/

/-! ## A025656.P526481280476931192

`A122841(A025610(n+1))`
-/

namespace A025656.P526481280476931192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A025610 (n + 1)).toNat

end

end A025656.P526481280476931192

/-! ## A025656.P15198214426660094132

`A022329(eq[A022328(n+1), A086415(n+1)]+1)`
-/

namespace A025656.P15198214426660094132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025656.P15198214426660094132

/-! ## A025656.P18326994835184188271

`val(record[lcm(5, A025487(n+1))], 3)`
-/

namespace A025656.P18326994835184188271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A025487 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A025656.P18326994835184188271

/-! ## A025656.P6631824689400437297

`val(A025487(eq[1, gcd(5, A025487(n+1))]+1), 3)`
-/

namespace A025656.P6631824689400437297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A025487 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)).toNat 3

end

end A025656.P6631824689400437297

/-! ## A025656.P16532463433286659078

`val(A307107(eq[2, A061394(n+1)]+1), 3)`
-/

namespace A025656.P16532463433286659078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A307107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 3

end

end A025656.P16532463433286659078

/-! ## A025656.P12946830859987910025

`A001222(gcd(A000244(n), A025610(n+1)))`
-/

namespace A025656.P12946830859987910025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000244 n) (A025610 (n + 1)))

end

end A025656.P12946830859987910025

/-! ## A025656.P14970161001117233048

`A087436(A124510(n+2)/2)`
-/

namespace A025656.P14970161001117233048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A124510 (n + 2) : ℚ) / 2)).toNat

end

end A025656.P14970161001117233048

/-! ## A025656.P5739985051841042108

`A087436(A124510(n+2))`
-/

namespace A025656.P5739985051841042108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A124510 (n + 2)).toNat

end

end A025656.P5739985051841042108

/-! ## A025656.P15304865883997574532

`A336469(A124509(n+2)/2)`
-/

namespace A025656.P15304865883997574532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (SequenceMachineLib.roundAway ((A124509 (n + 2) : ℚ) / 2)).toNat

end

end A025656.P15304865883997574532

/-!
# A025657: Exponent of 6 (value of j) in n-th number of form 3^i*6^j.

The programs for A025657, there is no canonical definition to state claims against.
-/

/-! ## A025657.P16965746771781391817

`val(A025614(n+1), 2)`
-/

namespace A025657.P16965746771781391817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025614 (n + 1)).toNat 2

end

end A025657.P16965746771781391817

/-! ## A025657.P1614280117049295711

`val(record[A025614(A152271(n))], 2)`
-/

namespace A025657.P1614280117049295711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (A152271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A025657.P1614280117049295711

/-! ## A025657.P10382682351420081396

`A022328(eq[A022329(n+1), A086415(n+1)]+1)`
-/

namespace A025657.P10382682351420081396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025657.P10382682351420081396

/-! ## A025657.P5994740159646984827

`val(A003586(eq[A022329(n+1), A086415(n+1)]+1), 2)`
-/

namespace A025657.P5994740159646984827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)).toNat 2

end

end A025657.P5994740159646984827

/-! ## A025657.P1898839603705412628

`A001222(gcd(A025614(n+1), A140513(n)))`
-/

namespace A025657.P1898839603705412628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A025614 (n + 1)) (A140513 n))

end

end A025657.P1898839603705412628

/-!
# A025658: Exponent of 6 (value of j) in n-th number of form 4^i*6^j.

The programs for A025658, there is no canonical definition to state claims against.
-/

/-! ## A025658.P852039230350486238

`A122841(A025618(n+1))`
-/

namespace A025658.P852039230350486238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A025618 (n + 1)).toNat

end

end A025658.P852039230350486238

/-!
# A025659: Exponent of 6 (value of j) in n-th number of form 5^i*6^j.

The programs for A025659, there is no canonical definition to state claims against.
-/

/-! ## A025659.P16272459269321457523

`val(A025622(n+1), 2)`
-/

namespace A025659.P16272459269321457523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025622 (n + 1)).toNat 2

end

end A025659.P16272459269321457523

/-! ## A025659.P16946815654403933419

`log2(gcd(A000079(n), A025622(n+1)))`
-/

namespace A025659.P16946815654403933419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A025622 (n + 1)) : ℝ)

end

end A025659.P16946815654403933419

/-! ## A025659.P3549288410537069471

`A001222(and(-A025622(n+1), A025622(n+1)))`
-/

namespace A025659.P3549288410537069471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A025622 (n + 1)) (A025622 (n + 1))).toNat

end

end A025659.P3549288410537069471

/-! ## A025659.P7445729066158803910

`A025642(A246694(n)%A329062(n+1))`
-/

namespace A025659.P7445729066158803910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025642 (Int.tmod (A246694 n) (A329062 (n + 1))).toNat

end

end A025659.P7445729066158803910

/-! ## A025659.P7456122090220461730

`A002262(n)%A017770(n)`
-/

namespace A025659.P7456122090220461730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A017770 n)

end

end A025659.P7456122090220461730

/-! ## A025659.P4030283271402991478

`(A002260(n+1)-1)%A017770(n)`
-/

namespace A025659.P4030283271402991478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) - 1) (A017770 n)

end

end A025659.P4030283271402991478

/-!
# A025660: Exponent of 6 (value of i) in n-th number of form 6^i*7^j.

The programs for A025660, there is no canonical definition to state claims against.
-/

/-! ## A025660.P9913760088140064593

`val(A025626(n+1), 2)`
-/

namespace A025660.P9913760088140064593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025626 (n + 1)).toNat 2

end

end A025660.P9913760088140064593

/-! ## A025660.P3739622480191083341

`log2(gcd(A000079(n), A025626(n+1)))`
-/

namespace A025660.P3739622480191083341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A025626 (n + 1)) : ℝ)

end

end A025660.P3739622480191083341

/-! ## A025660.P5004802739113412695

`A001222(and(-A025626(n+1), A025626(n+1)))`
-/

namespace A025660.P5004802739113412695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A025626 (n + 1)) (A025626 (n + 1))).toNat

end

end A025660.P5004802739113412695

/-!
# A025661: 

The programs for A025661, there is no canonical definition to state claims against.
-/

/-! ## A025661.P4390464841007794160

`val(A025627(n+1), 3)`
-/

namespace A025661.P4390464841007794160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025627 (n + 1)).toNat 3

end

end A025661.P4390464841007794160

/-!
# A025662: Exponent of 6 (value of i) in n-th number of form 6^i*9^j.

The programs for A025662, there is no canonical definition to state claims against.
-/

/-! ## A025662.P14180592541853774279

`val(A025628(n+1), 2)`
-/

namespace A025662.P14180592541853774279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025628 (n + 1)).toNat 2

end

end A025662.P14180592541853774279

/-! ## A025662.P10052517775972682030

`A023122(n+1)-A001221(A107170(n+1))`
-/

namespace A025662.P10052517775972682030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) - A001221 (A107170 (n + 1)).toNat

end

end A025662.P10052517775972682030

/-! ## A025662.P10266183466886344913

`A325970(A014663(n+1))+A023122(n+1)`
-/

namespace A025662.P10266183466886344913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A014663 (n + 1)).toNat + A023122 (n + 1)

end

end A025662.P10266183466886344913

/-! ## A025662.P9907622209079373637

`A023122(n+1)-A028234(A000961(3*n+1))`
-/

namespace A025662.P9907622209079373637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) - A028234 (A000961 (3 * n + 1)).toNat

end

end A025662.P9907622209079373637

/-! ## A025662.P10720880088860736490

`A023122(n+1)-A001222(A219697(n+1))`
-/

namespace A025662.P10720880088860736490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) - A001222 (A219697 (n + 1)).toNat

end

end A025662.P10720880088860736490

/-! ## A025662.P6399849661910525027

`A023122(n+1)-A001511(A080608(2*(n+2)))`
-/

namespace A025662.P6399849661910525027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) - A001511 (A080608 (2 * (n + 2))).toNat

end

end A025662.P6399849661910525027

/-! ## A025662.P7736974244486603030

`A330025(A132239(n+1))+A023122(n+1)`
-/

namespace A025662.P7736974244486603030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A132239 (n + 1)).toNat + A023122 (n + 1)

end

end A025662.P7736974244486603030

/-! ## A025662.P11561464559150393702

`A023122(n+1)+A008683(A094473(n+1))`
-/

namespace A025662.P11561464559150393702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) + A008683 (A094473 (n + 1)).toNat

end

end A025662.P11561464559150393702

/-! ## A025662.P10210317043887608124

`A070198(n)%A023122(n+1)`
-/

namespace A025662.P10210317043887608124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A023122 (n + 1))

end

end A025662.P10210317043887608124

/-! ## A025662.P5849460026495959843

`A079782(n+1)%A023122(n+1)`
-/

namespace A025662.P5849460026495959843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A023122 (n + 1))

end

end A025662.P5849460026495959843

/-! ## A025662.P17722548463628949000

`A083685(n+1)%A023122(n+1)`
-/

namespace A025662.P17722548463628949000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A023122 (n + 1))

end

end A025662.P17722548463628949000

/-! ## A025662.P12187331045512348455

`A121934(n+1)%A023122(n+1)`
-/

namespace A025662.P12187331045512348455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A023122 (n + 1))

end

end A025662.P12187331045512348455

/-! ## A025662.P7627957228746580897

`A030494(n+1)%A023122(n+1)`
-/

namespace A025662.P7627957228746580897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A023122 (n + 1))

end

end A025662.P7627957228746580897

/-! ## A025662.P12437519255184191332

`A000005(gcd(A000079(n), A025628(n+1)))-1`
-/

namespace A025662.P12437519255184191332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000079 n) (A025628 (n + 1))) - 1

end

end A025662.P12437519255184191332

/-! ## A025662.P18163160487835827933

`A023122(n+1)-A023122(A022784(n+1))`
-/

namespace A025662.P18163160487835827933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023122 (n + 1) - A023122 (A022784 (n + 1)).toNat

end

end A025662.P18163160487835827933

/-! ## A025662.P11706912278907220926

`A072828(n+1)%A023122(n+1)`
-/

namespace A025662.P11706912278907220926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A023122 (n + 1))

end

end A025662.P11706912278907220926

/-!
# A025663: Exponent of 6 (value of i) in n-th number of form 6^i*10^j.

The programs for A025663, there is no canonical definition to state claims against.
-/

/-! ## A025663.P5126393313833728131

`val(A025629(n+1), 3)`
-/

namespace A025663.P5126393313833728131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025629 (n + 1)).toNat 3

end

end A025663.P5126393313833728131

/-! ## A025663.P15430437348328888897

`A025640(n+1)%(A329316(n)+20)`
-/

namespace A025663.P15430437348328888897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025640 (n + 1)) (A329316 n + 20)

end

end A025663.P15430437348328888897

/-! ## A025663.P6089764554343928602

`A025640(n+1)*A372326(A329316(n))`
-/

namespace A025663.P6089764554343928602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025640 (n + 1) * A372326 (A329316 n).toNat

end

end A025663.P6089764554343928602

/-! ## A025663.P15194387378643960527

`A389758(A374995(n+4))+A025640(n+1)`
-/

namespace A025663.P15194387378643960527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389758 (A374995 (n + 4)).toNat + A025640 (n + 1)

end

end A025663.P15194387378643960527

/-! ## A025663.P7981139830101718861

`A127648(A237890(n+1))+A025640(n+1)`
-/

namespace A025663.P7981139830101718861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A237890 (n + 1)).toNat + A025640 (n + 1)

end

end A025663.P7981139830101718861

/-! ## A025663.P17082016959571958169

`A061397(A274979(n+3))+A025640(n+1)`
-/

namespace A025663.P17082016959571958169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A274979 (n + 3)).toNat + A025640 (n + 1)

end

end A025663.P17082016959571958169

/-! ## A025663.P9120117066695858788

`A022329(A183987(n+1))`
-/

namespace A025663.P9120117066695858788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (A183987 (n + 1)).toNat

end

end A025663.P9120117066695858788

/-! ## A025663.P229752265173511343

`A022329(A183988(n+1))`
-/

namespace A025663.P229752265173511343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (A183988 (n + 1)).toNat

end

end A025663.P229752265173511343

/-! ## A025663.P3584757493153140436

`A087436(A025613(n+1))`
-/

namespace A025663.P3584757493153140436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A025613 (n + 1)).toNat

end

end A025663.P3584757493153140436

/-!
# A025664: Exponent of 7 (value of j) in n-th number of form 2^i*7^j.

The programs for A025664, there is no canonical definition to state claims against.
-/

/-! ## A025664.P14418414462368152613

`A214411(A003591(n+1))`
-/

namespace A025664.P14418414462368152613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A003591 (n + 1)).toNat

end

end A025664.P14418414462368152613

/-! ## A025664.P6506750480566394599

`val(A033847(n+1), 7)-1`
-/

namespace A025664.P6506750480566394599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ) - 1

end

end A025664.P6506750480566394599

/-! ## A025664.P15223364053364043708

`A008683(A071195(n+1))+val(A033847(n+1), 7)`
-/

namespace A025664.P15223364053364043708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A071195 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P15223364053364043708

/-! ## A025664.P950127777095844390

`A033999(Δ[n²])+val(A033847(n+1), 7)`
-/

namespace A025664.P950127777095844390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P950127777095844390

/-! ## A025664.P12323911714037578886

`A008683(A049550(n+1))+val(A033847(n+1), 7)`
-/

namespace A025664.P12323911714037578886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049550 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P12323911714037578886

/-! ## A025664.P10878134516010704998

`A008683(A168367(n+1))+val(A033847(n+1), 7)`
-/

namespace A025664.P10878134516010704998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A168367 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P10878134516010704998

/-! ## A025664.P12237725814468017773

`A057077(A281664(n+2)+1)+val(A033847(n+1), 7)`
-/

namespace A025664.P12237725814468017773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A281664 (n + 2) + 1).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P12237725814468017773

/-! ## A025664.P7799786442093465352

`A008683(A139921(n+1))+val(A033847(n+1), 7)`
-/

namespace A025664.P7799786442093465352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139921 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P7799786442093465352

/-! ## A025664.P6976349299603240330

`A008683(A048637(n+1))+val(A033847(n+1), 7)`
-/

namespace A025664.P6976349299603240330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A048637 (n + 1)).toNat + (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ)

end

end A025664.P6976349299603240330

/-! ## A025664.P5313748409380904614

`A323077(2^val(A033847(n+1), 7))`
-/

namespace A025664.P5313748409380904614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (2 ^ SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7)

end

end A025664.P5313748409380904614

/-! ## A025664.P8360352226588399375

`A023132(n+1)-and(1, A183476(n+1))`
-/

namespace A025664.P8360352226588399375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A183476 (n + 1))

end

end A025664.P8360352226588399375

/-! ## A025664.P5249942481501981563

`A023132(n+1)-and(1, A120723(n+1))`
-/

namespace A025664.P5249942481501981563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A120723 (n + 1))

end

end A025664.P5249942481501981563

/-! ## A025664.P17280160661122013846

`A023132(n+1)-and(1, A134760(n))`
-/

namespace A025664.P17280160661122013846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A134760 n)

end

end A025664.P17280160661122013846

/-! ## A025664.P6131388931028601541

`A023132(n+1)-and(1, A210985(n))`
-/

namespace A025664.P6131388931028601541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A210985 n)

end

end A025664.P6131388931028601541

/-! ## A025664.P14445152082368512157

`A023132(n+1)-and(1, A262866(n))`
-/

namespace A025664.P14445152082368512157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A262866 n)

end

end A025664.P14445152082368512157

/-! ## A025664.P7927031053143548942

`A023132(n+1)-and(1, A099393(n))`
-/

namespace A025664.P7927031053143548942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A099393 n)

end

end A025664.P7927031053143548942

/-! ## A025664.P17076226965551176596

`A023132(n+1)-and(1, A249996(n))`
-/

namespace A025664.P17076226965551176596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A249996 n)

end

end A025664.P17076226965551176596

/-! ## A025664.P9658013745864719085

`A249996(and(1, A249996(n)))+A023132(n+1)`
-/

namespace A025664.P9658013745864719085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249996 (Int.land 1 (A249996 n)).toNat + A023132 (n + 1)

end

end A025664.P9658013745864719085

/-! ## A025664.P18125341326032130550

`A023132(n+1)-and(1, A083420(n))`
-/

namespace A025664.P18125341326032130550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1) - Int.land 1 (A083420 n)

end

end A025664.P18125341326032130550

/-! ## A025664.P3165544109414828053

`A030494(n+1)%A023132(n+1)`
-/

namespace A025664.P3165544109414828053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A023132 (n + 1))

end

end A025664.P3165544109414828053

/-!
# A025665: Exponent of 7 (value of j) in n-th number of form 3^i*7^j.

The programs for A025665, there is no canonical definition to state claims against.
-/

/-! ## A025665.P16092898569120901608

`val(A003594(n+1), 7)`
-/

namespace A025665.P16092898569120901608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003594 (n + 1)).toNat 7

end

end A025665.P16092898569120901608

/-! ## A025665.P5127868701397492361

`val(A033850(n+1), 7)-1`
-/

namespace A025665.P5127868701397492361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 7 : ℤ) - 1

end

end A025665.P5127868701397492361

/-! ## A025665.P3287585821576051585

`A023443(val(A033850(n+1), 7))`
-/

namespace A025665.P3287585821576051585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 7)

end

end A025665.P3287585821576051585

/-! ## A025665.P4341372797088793064

`abs(A024000(val(A033850(n+1), 7)))`
-/

namespace A025665.P4341372797088793064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 7)|

end

end A025665.P4341372797088793064

/-! ## A025665.P2686231238784509395

`val(∩[A056745(n+1), A057233(n+1)], 7)`
-/

namespace A025665.P2686231238784509395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) 7

end

end A025665.P2686231238784509395

/-!
# A025666: Exponent of 7 (value of j) in n-th number of form 4^i*7^j.

The programs for A025666, there is no canonical definition to state claims against.
-/

/-! ## A025666.P12589630458090168439

`val(A025619(n+1), 7)`
-/

namespace A025666.P12589630458090168439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025619 (n + 1)).toNat 7

end

end A025666.P12589630458090168439

/-! ## A025666.P16214979796751065925

`A023115(n+1)-A131843(A046092(n))`
-/

namespace A025666.P16214979796751065925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A131843 (A046092 n).toNat

end

end A025666.P16214979796751065925

/-! ## A025666.P8240879789821500420

`A023115(n+1)-A000120(A001316(n²))`
-/

namespace A025666.P8240879789821500420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A000120 (A001316 (n ^ 2)).toNat

end

end A025666.P8240879789821500420

/-! ## A025666.P4198554360663186899

`A057428(A211144(n+1))+A023115(n+1)`
-/

namespace A025666.P4198554360663186899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A211144 (n + 1)).toNat + A023115 (n + 1)

end

end A025666.P4198554360663186899

/-! ## A025666.P5216450792981857482

`A057428(A324975(n+1))+A023115(n+1)`
-/

namespace A025666.P5216450792981857482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A324975 (n + 1)).toNat + A023115 (n + 1)

end

end A025666.P5216450792981857482

/-! ## A025666.P17665255632481080022

`A033619(A023115(n+1))%A151800(A014105(n))`
-/

namespace A025666.P17665255632481080022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033619 (A023115 (n + 1)).toNat) (A151800 (A014105 n).toNat)

end

end A025666.P17665255632481080022

/-! ## A025666.P4154151782687556370

`A023115(n+1)-A052409(A090288(n))`
-/

namespace A025666.P4154151782687556370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A052409 (A090288 n).toNat

end

end A025666.P4154151782687556370

/-! ## A025666.P8517742271596597084

`A023115(n+1)-A023118(A022780(n+1))`
-/

namespace A025666.P8517742271596597084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A023118 (A022780 (n + 1)).toNat

end

end A025666.P8517742271596597084

/-! ## A025666.P10572500950326121682

`A262545(A023115(n+1))%A000265(A248378(n))`
-/

namespace A025666.P10572500950326121682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262545 (A023115 (n + 1)).toNat) (A000265 (A248378 n).toNat)

end

end A025666.P10572500950326121682

/-! ## A025666.P3544173489372450826

`A023115(n+1)-A023116(A022778(n+1))`
-/

namespace A025666.P3544173489372450826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A023116 (A022778 (n + 1)).toNat

end

end A025666.P3544173489372450826

/-! ## A025666.P10231881175221460105

`A023115(n+1)-A023115(A022776(n+1))`
-/

namespace A025666.P10231881175221460105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A023115 (A022776 (n + 1)).toNat

end

end A025666.P10231881175221460105

/-! ## A025666.P14150558875178087939

`A023115(n+1)-A001222(A186169(n+1))`
-/

namespace A025666.P14150558875178087939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A001222 (A186169 (n + 1)).toNat

end

end A025666.P14150558875178087939

/-! ## A025666.P4837067039951605585

`A030494(n+1)%A023115(n+1)`
-/

namespace A025666.P4837067039951605585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A023115 (n + 1))

end

end A025666.P4837067039951605585

/-! ## A025666.P17085110240328058611

`A072828(n+1)%A023115(n+1)`
-/

namespace A025666.P17085110240328058611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A023115 (n + 1))

end

end A025666.P17085110240328058611

/-! ## A025666.P10850911630440717669

`A057428(A213212(n))+A023115(n+1)`
-/

namespace A025666.P10850911630440717669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A213212 n).toNat + A023115 (n + 1)

end

end A025666.P10850911630440717669

/-! ## A025666.P12878701729118905743

`A023115(n+1)-A007336(A022775(n+1))`
-/

namespace A025666.P12878701729118905743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A007336 (A022775 (n + 1)).toNat

end

end A025666.P12878701729118905743

/-! ## A025666.P17572950724180836972

`A198277(n)%A023115(n+1)`
-/

namespace A025666.P17572950724180836972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A023115 (n + 1))

end

end A025666.P17572950724180836972

/-! ## A025666.P13276385259614835

`A023115(n+1)-A007337(A022777(n+1))`
-/

namespace A025666.P13276385259614835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A007337 (A022777 (n + 1)).toNat

end

end A025666.P13276385259614835

/-! ## A025666.P3152020688481400797

`A023115(n+1)-A000035(A008619(n²))`
-/

namespace A025666.P3152020688481400797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1) - A000035 (A008619 (n ^ 2)).toNat

end

end A025666.P3152020688481400797

/-!
# A025667: Exponent of 7 (value of j) in n-th number of form 5^i*7^j.

The programs for A025667, there is no canonical definition to state claims against.
-/

/-! ## A025667.P678818136366569964

`val(A003595(n+1), 7)`
-/

namespace A025667.P678818136366569964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003595 (n + 1)).toNat 7

end

end A025667.P678818136366569964

/-! ## A025667.P12978713951952649491

`val(A033851(n+1), 7)-1`
-/

namespace A025667.P12978713951952649491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7 : ℤ) - 1

end

end A025667.P12978713951952649491

/-! ## A025667.P5325716337163378111

`A023443(val(A033851(n+1), 7))`
-/

namespace A025667.P5325716337163378111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7)

end

end A025667.P5325716337163378111

/-! ## A025667.P14754948770320333685

`A132270(7*val(A033851(n+1), 7))`
-/

namespace A025667.P14754948770320333685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (7 * SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7)

end

end A025667.P14754948770320333685

/-! ## A025667.P13059220321105604743

`(A005898(n)+val(A033851(n+1), 7))%(n+1)`
-/

namespace A025667.P13059220321105604743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005898 n + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7 : ℤ)) (n + 1 : ℤ)

end

end A025667.P13059220321105604743

/-! ## A025667.P10886040469649960113

`A008683(A008578(n+2))+val(A033851(n+1), 7)`
-/

namespace A025667.P10886040469649960113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2)).toNat + (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7 : ℤ)

end

end A025667.P10886040469649960113

/-! ## A025667.P12735874243720265118

`A004896(val(A033851(n+1), 7)%A058362(n+1))`
-/

namespace A025667.P12735874243720265118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (Int.tmod (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 7 : ℤ) (A058362 (n + 1))).toNat

end

end A025667.P12735874243720265118

/-! ## A025667.P7713894495414649597

`A023121(n+1)-A057427(A008327(n))`
-/

namespace A025667.P7713894495414649597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A057427 (A008327 n).toNat

end

end A025667.P7713894495414649597

/-! ## A025667.P777902692356389312

`and(A025680(n+1), A045535(n))`
-/

namespace A025667.P777902692356389312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025680 (n + 1)) (A045535 n)

end

end A025667.P777902692356389312

/-! ## A025667.P14417093799821686165

`and(A025680(n+1), A141311(n+1))`
-/

namespace A025667.P14417093799821686165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025680 (n + 1)) (A141311 (n + 1))

end

end A025667.P14417093799821686165

/-!
# A025668: Exponent of 7 (value of j) in n-th number of form 6^i*7^j.

The programs for A025668, there is no canonical definition to state claims against.
-/

/-! ## A025668.P9734563856050474856

`val(A025626(n+1), 7)`
-/

namespace A025668.P9734563856050474856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025626 (n + 1)).toNat 7

end

end A025668.P9734563856050474856

/-! ## A025668.P8047832277285289220

`abs(A373748(n)%12)`
-/

namespace A025668.P8047832277285289220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A373748 n) 12|

end

end A025668.P8047832277285289220

/-! ## A025668.P9864782518143562399

`A007814(A130328(n))%12`
-/

namespace A025668.P9864782518143562399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A130328 n).toNat) 12

end

end A025668.P9864782518143562399

/-! ## A025668.P1652907424173303187

`A007814(A276618(n))%12`
-/

namespace A025668.P1652907424173303187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A276618 n).toNat) 12

end

end A025668.P1652907424173303187

/-! ## A025668.P9141869079025079768

`A002262(n)%A293722(∑[n])`
-/

namespace A025668.P9141869079025079768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A293722 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A025668.P9141869079025079768

/-! ## A025668.P14655011770686382566

`A079071(A018900(n+1))%12`
-/

namespace A025668.P14655011770686382566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079071 (A018900 (n + 1)).toNat) 12

end

end A025668.P14655011770686382566

/-! ## A025668.P15879277499765695239

`A068076(A066884(n+1))%12`
-/

namespace A025668.P15879277499765695239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068076 (A066884 (n + 1)).toNat) 12

end

end A025668.P15879277499765695239

/-! ## A025668.P9662469973488140934

`A265910(A265347(n+1))%12`
-/

namespace A025668.P9662469973488140934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265910 (A265347 (n + 1)).toNat) 12

end

end A025668.P9662469973488140934

/-!
# A025669: Exponent of 7 (value of i) in n-th number of form 7^i*8^j.

The programs for A025669, there is no canonical definition to state claims against.
-/

/-! ## A025669.P2667354846000455381

`val(A036566(n+1), 7)`
-/

namespace A025669.P2667354846000455381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036566 (n + 1)).toNat 7

end

end A025669.P2667354846000455381

/-!
# A025670: Exponent of 7 (value of i) in n-th number of form 7^i*9^j.

The programs for A025670, there is no canonical definition to state claims against.
-/

/-! ## A025670.P10468990834486781815

`val(A025631(n+1), 7)`
-/

namespace A025670.P10468990834486781815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025631 (n + 1)).toNat 7

end

end A025670.P10468990834486781815

/-!
# A025671: Exponent of 7 (value of i) in n-th number of form 7^i*10^j.

The programs for A025671, there is no canonical definition to state claims against.
-/

/-! ## A025671.P1259602001383716054

`val(A025632(n+1), 7)`
-/

namespace A025671.P1259602001383716054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025632 (n + 1)).toNat 7

end

end A025671.P1259602001383716054

/-! ## A025671.P7907046851281985522

`∑{e}[A000079(A167289(n+1)), #-1]`
-/

namespace A025671.P7907046851281985522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A167289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A025671.P7907046851281985522

/-! ## A025671.P6531987700165181233

`A167289(n+1)+A008683(A066889(n+1))`
-/

namespace A025671.P6531987700165181233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A008683 (A066889 (n + 1)).toNat

end

end A025671.P6531987700165181233

/-! ## A025671.P16936251040907273202

`A167289(n+1)+A057428(A179909(n+1))`
-/

namespace A025671.P16936251040907273202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A057428 (A179909 (n + 1)).toNat

end

end A025671.P16936251040907273202

/-! ## A025671.P3315385138046037145

`A167289(n+1)+A057428(A039790(n+1))`
-/

namespace A025671.P3315385138046037145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A057428 (A039790 (n + 1)).toNat

end

end A025671.P3315385138046037145

/-! ## A025671.P6873645082801543136

`A167289(n+1)+A057428(A329602(n+1))`
-/

namespace A025671.P6873645082801543136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A057428 (A329602 (n + 1)).toNat

end

end A025671.P6873645082801543136

/-! ## A025671.P5153844319740751034

`A167289(n+1)-A284639(A000040(n+1))`
-/

namespace A025671.P5153844319740751034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A284639 (A000040 (n + 1)).toNat

end

end A025671.P5153844319740751034

/-! ## A025671.P14082793253513737498

`A167289(n+1)-A057427(A349679(n+1))`
-/

namespace A025671.P14082793253513737498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A057427 (A349679 (n + 1)).toNat

end

end A025671.P14082793253513737498

/-! ## A025671.P3678081382333890866

`A167289(n+1)-A078734(A071699(n+1))`
-/

namespace A025671.P3678081382333890866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A078734 (A071699 (n + 1)).toNat

end

end A025671.P3678081382333890866

/-! ## A025671.P17758273907693945299

`A167289(n+1)-A081729(A244391(n+1))`
-/

namespace A025671.P17758273907693945299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A081729 (A244391 (n + 1)).toNat

end

end A025671.P17758273907693945299

/-! ## A025671.P4872891392470655620

`A167289(n+1)+A081729(A244391(n+1)+1)`
-/

namespace A025671.P4872891392470655620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A081729 (A244391 (n + 1) + 1).toNat

end

end A025671.P4872891392470655620

/-! ## A025671.P15164565440336615360

`A167289(n+1)-A057427(∑[A038502(n+1)])`
-/

namespace A025671.P15164565440336615360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025671.P15164565440336615360

/-! ## A025671.P8429913053739074585

`A167289(n+1)-A000035(A139886(n+1))`
-/

namespace A025671.P8429913053739074585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A000035 (A139886 (n + 1)).toNat

end

end A025671.P8429913053739074585

/-! ## A025671.P974145112792869001

`A167289(n+1)-A244611(A046678(n+1))`
-/

namespace A025671.P974145112792869001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A244611 (A046678 (n + 1)).toNat

end

end A025671.P974145112792869001

/-! ## A025671.P14427800660014677991

`A167289(n+1)-A054977(A051899(n+1))`
-/

namespace A025671.P14427800660014677991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A054977 (A051899 (n + 1)).toNat

end

end A025671.P14427800660014677991

/-! ## A025671.P413231380129214010

`A167289(n+1)-A158388(A141078(n+1))`
-/

namespace A025671.P413231380129214010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) - A158388 (A141078 (n + 1)).toNat

end

end A025671.P413231380129214010

/-! ## A025671.P17090711444461306972

`A167289(n+1)+A008683(A293958(2*(n+1)))`
-/

namespace A025671.P17090711444461306972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167289 (n + 1) + A008683 (A293958 (2 * (n + 1))).toNat

end

end A025671.P17090711444461306972

/-!
# A025672: Exponent of 8 (value of j) in n-th number of form 3^i*8^j.

The programs for A025672, there is no canonical definition to state claims against.
-/

/-! ## A025672.P3460793452470495207

`val(A025615(n+1), 8)`
-/

namespace A025672.P3460793452470495207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025615 (n + 1)).toNat 8

end

end A025672.P3460793452470495207

/-! ## A025672.P7925604031974767552

`A244413(A025615(n+1))`
-/

namespace A025672.P7925604031974767552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A025615 (n + 1)).toNat

end

end A025672.P7925604031974767552

/-! ## A025672.P11369712290514523028

`floor(A082375(n)/2)%A215810(n+1)`
-/

namespace A025672.P11369712290514523028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A082375 n : ℚ) / 2⌋ (A215810 (n + 1))

end

end A025672.P11369712290514523028

/-! ## A025672.P4952661761324317300

`val(A062052(n+1), 4)%A215810(n+1)`
-/

namespace A025672.P4952661761324317300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A062052 (n + 1)).toNat 4 : ℤ) (A215810 (n + 1))

end

end A025672.P4952661761324317300

/-! ## A025672.P12910487759337569771

`val(A192112(n+2), 4)%A215810(n+1)`
-/

namespace A025672.P12910487759337569771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A192112 (n + 2)).toNat 4 : ℤ) (A215810 (n + 1))

end

end A025672.P12910487759337569771

/-! ## A025672.P6941341651846678261

`floor(A167268(n+1)/4)%A215810(n+1)`
-/

namespace A025672.P6941341651846678261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A167268 (n + 1) : ℚ) / 4⌋ (A215810 (n + 1))

end

end A025672.P6941341651846678261

/-! ## A025672.P2693504581825586292

`ceil(A232091(n+1)-A232091(91*(n+1))/91)`
-/

namespace A025672.P2693504581825586292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232091 (n + 1) : ℚ) - (A232091 (91 * (n + 1)) : ℚ) / 91⌉

end

end A025672.P2693504581825586292

/-! ## A025672.P9386893333568005031

`A004526(A082375(n)%A215810(n+1))`
-/

namespace A025672.P9386893333568005031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A082375 n) (A215810 (n + 1))).toNat

end

end A025672.P9386893333568005031

/-! ## A025672.P17482337143189450946

`A002265(A152204(n))%A215810(n+1)`
-/

namespace A025672.P17482337143189450946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A152204 n).toNat) (A215810 (n + 1))

end

end A025672.P17482337143189450946

/-! ## A025672.P3529633934776308265

`A028391(A071111(n+2))%(n+2)`
-/

namespace A025672.P3529633934776308265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028391 (A071111 (n + 2)).toNat) (n + 2 : ℤ)

end

end A025672.P3529633934776308265

/-! ## A025672.P8816149140546316446

`and(A086827(n+1), A216607(n+1))`
-/

namespace A025672.P8816149140546316446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A216607 (n + 1))

end

end A025672.P8816149140546316446

/-! ## A025672.P13299434382343481926

`A004526(or(A082375(n), A118685(n)))`
-/

namespace A025672.P13299434382343481926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor (A082375 n) (A118685 n)).toNat

end

end A025672.P13299434382343481926

/-! ## A025672.P4812027162316751773

`A216607(n+1)%A000458(n)`
-/

namespace A025672.P4812027162316751773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216607 (n + 1)) (A000458 n)

end

end A025672.P4812027162316751773

/-! ## A025672.P652252225891353997

`A216607(A257213(n*(n+2)))`
-/

namespace A025672.P652252225891353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216607 (A257213 (n * (n + 2))).toNat

end

end A025672.P652252225891353997

/-!
# A025673: 

The programs for A025673, there is no canonical definition to state claims against.
-/

/-! ## A025673.P10242681771530633159

`val(A025623(n+1), 8)`
-/

namespace A025673.P10242681771530633159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025623 (n + 1)).toNat 8

end

end A025673.P10242681771530633159

/-!
# A025675: Exponent of 8 (value of j) in n-th number of form 7^i*8^j.

The programs for A025675, there is no canonical definition to state claims against.
-/

/-! ## A025675.P12061671754945383745

`val(A036566(n+1), 8)`
-/

namespace A025675.P12061671754945383745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036566 (n + 1)).toNat 8

end

end A025675.P12061671754945383745

/-! ## A025675.P1367697146305489918

`A002262(n)%A004771(A061554(n))`
-/

namespace A025675.P1367697146305489918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A004771 (A061554 n).toNat)

end

end A025675.P1367697146305489918

/-! ## A025675.P1168750907112162004

`A196199(A061885(n))%A332454(A332443(n+1))`
-/

namespace A025675.P1168750907112162004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196199 (A061885 n).toNat) (A332454 (A332443 (n + 1)).toNat)

end

end A025675.P1168750907112162004

/-!
# A025676: 

The programs for A025676, there is no canonical definition to state claims against.
-/

/-! ## A025676.P9631107308138575283

`val(A025633(n+1), 8)`
-/

namespace A025676.P9631107308138575283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025633 (n + 1)).toNat 8

end

end A025676.P9631107308138575283

/-!
# A025677: Exponent of 8 (value of i) in n-th number of form 8^i*10^j.

The programs for A025677, there is no canonical definition to state claims against.
-/

/-! ## A025677.P5236932413609888735

`or(A025581(n), A112310(C(n, 64)²))`
-/

namespace A025677.P5236932413609888735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 n) (A112310 (Nat.choose n 64 ^ 2))

end

end A025677.P5236932413609888735

/-! ## A025677.P192397898672548204

`A025581(A098418(C(n, 64)+1)+n)`
-/

namespace A025677.P192397898672548204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A098418 (Nat.choose n 64 + 1) + (n : ℤ)).toNat

end

end A025677.P192397898672548204

/-! ## A025677.P18360859174892682823

`A025581(abs(A025581(n)^C(n, 64)²-n)+1)`
-/

namespace A025677.P18360859174892682823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (|A025581 n ^ Nat.choose n 64 ^ 2 - (n : ℤ)| + 1).toNat

end

end A025677.P18360859174892682823

/-!
# A025678: Exponent of 9 (value of j) in n-th number of form 2^i*9^j.

The programs for A025678, there is no canonical definition to state claims against.
-/

/-! ## A025678.P16753478871001623569

`val(A025611(n+1), 9)`
-/

namespace A025678.P16753478871001623569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025611 (n + 1)).toNat 9

end

end A025678.P16753478871001623569

/-!
# A025679: Exponent of 9 (value of j) in n-th number of form 5^i*9^j.

The programs for A025679, there is no canonical definition to state claims against.
-/

/-! ## A025679.P12523104061448650522

`val(A025624(n+1), 9)`
-/

namespace A025679.P12523104061448650522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025624 (n + 1)).toNat 9

end

end A025679.P12523104061448650522

/-! ## A025679.P9127475272931596497

`val(A108698(n+1), A032741(A178740(n+1)))`
-/

namespace A025679.P9127475272931596497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A032741 (A178740 (n + 1)).toNat).toNat

end

end A025679.P9127475272931596497

/-! ## A025679.P3324493617659927236

`val(A108698(n+1), A291367(A291374(n+1)))`
-/

namespace A025679.P3324493617659927236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108698 (n + 1)).toNat (A291367 (A291374 (n + 1)).toNat).toNat

end

end A025679.P3324493617659927236

/-! ## A025679.P4733133389873061235

`A064515(n+1)-A025654(n+1)%A064527(n+1)`
-/

namespace A025679.P4733133389873061235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (n + 1) - Int.tmod (A025654 (n + 1)) (A064527 (n + 1))

end

end A025679.P4733133389873061235

/-! ## A025679.P11742921886031085347

`A064514(n+1)-A064515(n+1)%A064527(n+1)`
-/

namespace A025679.P11742921886031085347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064514 (n + 1) - Int.tmod (A064515 (n + 1)) (A064527 (n + 1))

end

end A025679.P11742921886031085347

/-!
# A025680: Exponent of 9 (value of j) in n-th number of form 6^i*9^j.

The programs for A025680, there is no canonical definition to state claims against.
-/

/-! ## A025680.P8871059087587611976

`A086520(A023121(n+1)²)`
-/

namespace A025680.P8871059087587611976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A023121 (n + 1) ^ 2).toNat

end

end A025680.P8871059087587611976

/-! ## A025680.P2819179220362552463

`A023121(n+1)-A096825(A038900(n+1))`
-/

namespace A025680.P2819179220362552463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A096825 (A038900 (n + 1)).toNat

end

end A025680.P2819179220362552463

/-! ## A025680.P15416761076326618120

`A023121(n+1)-A096825(A038902(n+1))`
-/

namespace A025680.P15416761076326618120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A096825 (A038902 (n + 1)).toNat

end

end A025680.P15416761076326618120

/-! ## A025680.P11877793165534330742

`A023121(n+1)-A105700(A000040(2*n+1))`
-/

namespace A025680.P11877793165534330742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A105700 (A000040 (2 * n + 1)).toNat

end

end A025680.P11877793165534330742

/-! ## A025680.P2673335989309968402

`A023121(n+1)-A096825(A038907(n+1))`
-/

namespace A025680.P2673335989309968402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A096825 (A038907 (n + 1)).toNat

end

end A025680.P2673335989309968402

/-! ## A025680.P6768075604910417188

`A023121(n+1)-A033999(A008600(n))`
-/

namespace A025680.P6768075604910417188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A033999 (A008600 n).toNat

end

end A025680.P6768075604910417188

/-! ## A025680.P11404128007220511702

`A033999(A008600(n)+1)+A023121(n+1)`
-/

namespace A025680.P11404128007220511702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A008600 n + 1).toNat + A023121 (n + 1)

end

end A025680.P11404128007220511702

/-! ## A025680.P3544920266170964023

`A023121(n+1)-A019425(A014574(n+1))`
-/

namespace A025680.P3544920266170964023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A019425 (A014574 (n + 1)).toNat

end

end A025680.P3544920266170964023

/-! ## A025680.P6376544937356449074

`A023121(n+1)-A001221(A260806(n+1))`
-/

namespace A025680.P6376544937356449074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A001221 (A260806 (n + 1)).toNat

end

end A025680.P6376544937356449074

/-! ## A025680.P18125503780142289591

`A023121(n+1)-A063065(A228371(n+1))`
-/

namespace A025680.P18125503780142289591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A063065 (A228371 (n + 1)).toNat

end

end A025680.P18125503780142289591

/-! ## A025680.P4347484345338453108

`A083800(n+1)%A023121(n+1)`
-/

namespace A025680.P4347484345338453108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A023121 (n + 1))

end

end A025680.P4347484345338453108

/-! ## A025680.P10738070344113755369

`A070198(n)%A023121(n+1)`
-/

namespace A025680.P10738070344113755369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A023121 (n + 1))

end

end A025680.P10738070344113755369

/-! ## A025680.P15565456167723501876

`A079782(n+1)%A023121(n+1)`
-/

namespace A025680.P15565456167723501876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A023121 (n + 1))

end

end A025680.P15565456167723501876

/-! ## A025680.P3840240341300780801

`A083685(n+1)%A023121(n+1)`
-/

namespace A025680.P3840240341300780801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A023121 (n + 1))

end

end A025680.P3840240341300780801

/-! ## A025680.P7305884937263278034

`A121934(n+1)%A023121(n+1)`
-/

namespace A025680.P7305884937263278034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A023121 (n + 1))

end

end A025680.P7305884937263278034

/-! ## A025680.P13588000069585600203

`val(A000010(2^A023121(n+1)), 2)`
-/

namespace A025680.P13588000069585600203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023121 (n + 1) : ℤ))).toNat).toNat 2

end

end A025680.P13588000069585600203

/-! ## A025680.P5949795226168740321

`A023121(n+1)-A001222(A142812(n+1))`
-/

namespace A025680.P5949795226168740321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A001222 (A142812 (n + 1)).toNat

end

end A025680.P5949795226168740321

/-! ## A025680.P6251261216964189355

`A023121(n+1)-A023121(A022783(n+1))`
-/

namespace A025680.P6251261216964189355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A023121 (A022783 (n + 1)).toNat

end

end A025680.P6251261216964189355

/-! ## A025680.P2477108687548436506

`A023121(n+1)-A007318(∑[n])`
-/

namespace A025680.P2477108687548436506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025680.P2477108687548436506

/-! ## A025680.P6823326348840993616

`A023121(n+1)-A071919(∑[n])`
-/

namespace A025680.P6823326348840993616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1) - A071919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025680.P6823326348840993616

/-!
# A025681: Exponent of 9 (value of j) in n-th number of form 7^i*9^j.

The programs for A025681, there is no canonical definition to state claims against.
-/

/-! ## A025681.P5318019529709230422

`val(A025631(n+1), 9)`
-/

namespace A025681.P5318019529709230422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025631 (n + 1)).toNat 9

end

end A025681.P5318019529709230422

/-! ## A025681.P1103599501051951974

`A241855(comp[∑[n]])%8`
-/

namespace A025681.P1103599501051951974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 8

end

end A025681.P1103599501051951974

/-! ## A025681.P11011432270377737114

`(n-C(∑[char[∑[n]]], 2))%A010960(n)`
-/

namespace A025681.P11011432270377737114
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) (A010960 n)

end

end A025681.P11011432270377737114

/-! ## A025681.P4991997151603453118

`A002262(n%A010960(n))`
-/

namespace A025681.P4991997151603453118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.tmod (n : ℤ) (A010960 n)).toNat

end

end A025681.P4991997151603453118

/-! ## A025681.P15263198540607811523

`A163351(n)%A010960(n)`
-/

namespace A025681.P15263198540607811523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163351 n) (A010960 n)

end

end A025681.P15263198540607811523

/-!
# A025682: 

The programs for A025682, there is no canonical definition to state claims against.
-/

/-! ## A025682.P8297858860552331717

`val(A025633(n+1), 9)`
-/

namespace A025682.P8297858860552331717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025633 (n + 1)).toNat 9

end

end A025682.P8297858860552331717

/-! ## A025682.P14146798070214973352

`sqrt(A143844(n))%A008452(A209434(n))`
-/

namespace A025682.P14146798070214973352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))) (A008452 (A209434 n).toNat)

end

end A025682.P14146798070214973352

/-! ## A025682.P9893939169046520493

`log2(A059268(n))%A008452(A209434(n))`
-/

namespace A025682.P9893939169046520493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))) (A008452 (A209434 n).toNat)

end

end A025682.P9893939169046520493

/-! ## A025682.P11570440827809767677

`val(A130328(n), 2)%A008452(A209434(n))`
-/

namespace A025682.P11570440827809767677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A130328 n).toNat 2 : ℤ) (A008452 (A209434 n).toNat)

end

end A025682.P11570440827809767677

/-! ## A025682.P5916726672632764588

`val(A247936(n), 2)%A008452(A209434(n))`
-/

namespace A025682.P5916726672632764588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A247936 n).toNat 2 : ℤ) (A008452 (A209434 n).toNat)

end

end A025682.P5916726672632764588

/-! ## A025682.P10331712030271650071

`val(A055237(n), 5)%A008452(A209434(n))`
-/

namespace A025682.P10331712030271650071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A055237 n).toNat 5 : ℤ) (A008452 (A209434 n).toNat)

end

end A025682.P10331712030271650071

/-!
# A025683: 

The programs for A025683, there is no canonical definition to state claims against.
-/

/-! ## A025683.P4529577157757123935

`val(A025635(n+1), 9)`
-/

namespace A025683.P4529577157757123935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025635 (n + 1)).toNat 9

end

end A025683.P4529577157757123935

/-!
# A025684: Exponent of 10 (value of j) in n-th number of form 2^i*10^j.

The programs for A025684, there is no canonical definition to state claims against.
-/

/-! ## A025684.P15443222540120515477

`A122840(A025612(n+1))`
-/

namespace A025684.P15443222540120515477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A025612 (n + 1)).toNat

end

end A025684.P15443222540120515477

/-!
# A025685: Exponent of 10 (value of j) in n-th number of form 3^i*10^j.

The programs for A025685, there is no canonical definition to state claims against.
-/

/-! ## A025685.P17879954748453174105

`val(A025616(n+1), 2)`
-/

namespace A025685.P17879954748453174105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025616 (n + 1)).toNat 2

end

end A025685.P17879954748453174105

/-! ## A025685.P18343636624880251839

`A001222(gcd(A025616(n+1), A137688(n)))`
-/

namespace A025685.P18343636624880251839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A025616 (n + 1)) (A137688 n))

end

end A025685.P18343636624880251839

/-!
# A025686: Exponent of 10 (value of j) in n-th number of form 4^i*10^j.

The programs for A025686, there is no canonical definition to state claims against.
-/

/-! ## A025686.P8649850060872384404

`val(A025621(n+1), 5)`
-/

namespace A025686.P8649850060872384404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025621 (n + 1)).toNat 5

end

end A025686.P8649850060872384404

/-! ## A025686.P15561098966966074659

`A057428(A002473(n+1))+A023130(n+1)`
-/

namespace A025686.P15561098966966074659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002473 (n + 1)).toNat + A023130 (n + 1)

end

end A025686.P15561098966966074659

/-! ## A025686.P8039229482179368507

`A057428(A166633(n+1))+A023130(n+1)`
-/

namespace A025686.P8039229482179368507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A166633 (n + 1)).toNat + A023130 (n + 1)

end

end A025686.P8039229482179368507

/-! ## A025686.P6928730008749173866

`A023130(n+1)-A339564(A159236(n+1))`
-/

namespace A025686.P6928730008749173866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) - A339564 (A159236 (n + 1)).toNat

end

end A025686.P6928730008749173866

/-! ## A025686.P569615179371002945

`A023130(n+1)-A053865(A249555(n+1))`
-/

namespace A025686.P569615179371002945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) - A053865 (A249555 (n + 1)).toNat

end

end A025686.P569615179371002945

/-! ## A025686.P17208576878454321775

`A023130(n+1)-A059268(A008795(n))`
-/

namespace A025686.P17208576878454321775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) - A059268 (A008795 n).toNat

end

end A025686.P17208576878454321775

/-! ## A025686.P17363647888085655920

`A083800(n+1)%A023130(n+1)`
-/

namespace A025686.P17363647888085655920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A023130 (n + 1))

end

end A025686.P17363647888085655920

/-! ## A025686.P10683629835917095217

`A070198(n)%A023130(n+1)`
-/

namespace A025686.P10683629835917095217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A023130 (n + 1))

end

end A025686.P10683629835917095217

/-! ## A025686.P8428999798425921739

`A079782(n+1)%A023130(n+1)`
-/

namespace A025686.P8428999798425921739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A023130 (n + 1))

end

end A025686.P8428999798425921739

/-! ## A025686.P5868716533288657804

`A083685(n+1)%A023130(n+1)`
-/

namespace A025686.P5868716533288657804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A023130 (n + 1))

end

end A025686.P5868716533288657804

/-! ## A025686.P13315590417555251088

`A121934(n+1)%A023130(n+1)`
-/

namespace A025686.P13315590417555251088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A023130 (n + 1))

end

end A025686.P13315590417555251088

/-! ## A025686.P17295028101641151234

`A023130(n+1)-A023130(A022792(n+1))`
-/

namespace A025686.P17295028101641151234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) - A023130 (A022792 (n + 1)).toNat

end

end A025686.P17295028101641151234

/-! ## A025686.P6564086698092745170

`A023120(A255527(n+2))-A077028(A161680(n))`
-/

namespace A025686.P6564086698092745170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat - A077028 (A161680 n).toNat

end

end A025686.P6564086698092745170

/-! ## A025686.P3601462637503098348

`A023120(A255527(n+2))-A262618(A141545(n+1))`
-/

namespace A025686.P3601462637503098348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat - A262618 (A141545 (n + 1)).toNat

end

end A025686.P3601462637503098348

/-! ## A025686.P8861223106965114725

`A023120(A255527(n+2))-A134451(A140616(n+1))`
-/

namespace A025686.P8861223106965114725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat - A134451 (A140616 (n + 1)).toNat

end

end A025686.P8861223106965114725

/-! ## A025686.P1329185668945073629

`A023120(A255527(n+2))-A134451(A140614(n+1))`
-/

namespace A025686.P1329185668945073629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat - A134451 (A140614 (n + 1)).toNat

end

end A025686.P1329185668945073629

/-! ## A025686.P3850436912360900695

`A023130(n+1)-A051159(∑[n+2])`
-/

namespace A025686.P3850436912360900695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) - A051159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025686.P3850436912360900695

/-! ## A025686.P16416187134020250333

`A023120(A255527(n+2))-A309059(∑[n+2])`
-/

namespace A025686.P16416187134020250333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat - A309059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025686.P16416187134020250333

/-! ## A025686.P9177660150554680475

`A030494(n+1)%A023130(n+1)`
-/

namespace A025686.P9177660150554680475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A023130 (n + 1))

end

end A025686.P9177660150554680475

/-! ## A025686.P9063026269064042478

`A072828(n+1)%A023130(n+1)`
-/

namespace A025686.P9063026269064042478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A023130 (n + 1))

end

end A025686.P9063026269064042478

/-!
# A025687: Exponent of 10 (value of j) in n-th number of form 5^i*10^j.

The programs for A025687, there is no canonical definition to state claims against.
-/

/-! ## A025687.P2348568863050970087

`val(A025625(n+1), 2)`
-/

namespace A025687.P2348568863050970087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025625 (n + 1)).toNat 2

end

end A025687.P2348568863050970087

/-! ## A025687.P10721892167629584667

`log2(gcd(A016116(n), A025625(n+1)))`
-/

namespace A025687.P10721892167629584667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A016116 n) (A025625 (n + 1)) : ℝ)

end

end A025687.P10721892167629584667

/-! ## A025687.P2913904708548614670

`A001222(and(-A025625(n+1), A025625(n+1)))`
-/

namespace A025687.P2913904708548614670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A025625 (n + 1)) (A025625 (n + 1))).toNat

end

end A025687.P2913904708548614670

/-! ## A025687.P18231640216045133162

`A007814(and(-A025625(n+1), A025625(n+1)))`
-/

namespace A025687.P18231640216045133162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land (-A025625 (n + 1)) (A025625 (n + 1))).toNat

end

end A025687.P18231640216045133162

/-! ## A025687.P8283424167744892915

`A073642(and(-A025625(n+1), A025625(n+1)))`
-/

namespace A025687.P8283424167744892915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (Int.land (-A025625 (n + 1)) (A025625 (n + 1))).toNat

end

end A025687.P8283424167744892915

/-! ## A025687.P11764952467672248133

`A373212(n+1)-1`
-/

namespace A025687.P11764952467672248133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373212 (n + 1) - 1

end

end A025687.P11764952467672248133

/-! ## A025687.P12811509499912771698

`A000401(A373212(n+1))`
-/

namespace A025687.P12811509499912771698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A373212 (n + 1)).toNat

end

end A025687.P12811509499912771698

/-! ## A025687.P13038831556716786207

`A198277(n)%A373212(n+1)`
-/

namespace A025687.P13038831556716786207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A373212 (n + 1))

end

end A025687.P13038831556716786207

/-! ## A025687.P3574770820321347437

`A200748(n)%A373212(n+1)`
-/

namespace A025687.P3574770820321347437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A373212 (n + 1))

end

end A025687.P3574770820321347437

/-! ## A025687.P4302668263094580526

`A127228(n+4)%A373212(n+1)`
-/

namespace A025687.P4302668263094580526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A373212 (n + 1))

end

end A025687.P4302668263094580526

/-!
# A025688: Exponent of 10 (value of j) in n-th number of form 6^i*10^j.

The programs for A025688, there is no canonical definition to state claims against.
-/

/-! ## A025688.P12674001976975260193

`val(A025629(n+1), 5)`
-/

namespace A025688.P12674001976975260193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025629 (n + 1)).toNat 5

end

end A025688.P12674001976975260193

/-! ## A025688.P8677329833830798194

`A025645(n+1)%A139611(A279536(n+1))`
-/

namespace A025688.P8677329833830798194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025645 (n + 1)) (A139611 (A279536 (n + 1)).toNat)

end

end A025688.P8677329833830798194

/-!
# A025689: Exponent of 10 (value of j) in n-th number of form 7^i*10^j.

The programs for A025689, there is no canonical definition to state claims against.
-/

/-! ## A025689.P10547945870540017478

`val(A025632(n+1), 2)`
-/

namespace A025689.P10547945870540017478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025632 (n + 1)).toNat 2

end

end A025689.P10547945870540017478

/-! ## A025689.P7204822110234007821

`A001222(gcd(A000079(n), A025632(n+1)))`
-/

namespace A025689.P7204822110234007821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A025632 (n + 1)))

end

end A025689.P7204822110234007821

/-! ## A025689.P16695890864575062900

`A001222(and(-A025632(n+1), A025632(n+1)))`
-/

namespace A025689.P16695890864575062900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A025632 (n + 1)) (A025632 (n + 1))).toNat

end

end A025689.P16695890864575062900

/-! ## A025689.P6672976970511439792

`A007814(A025632(n+1)%A140513(n))`
-/

namespace A025689.P6672976970511439792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.tmod (A025632 (n + 1)) (A140513 n)).toNat

end

end A025689.P6672976970511439792

/-! ## A025689.P9789804593460375638

`A002262(lt[A147542(n+1), A128968(n+1)])`
-/

namespace A025689.P9789804593460375638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025689.P9789804593460375638

/-!
# A025690: Exponent of 10 (value of j) in n-th number of form 8^i*10^j.

The programs for A025690, there is no canonical definition to state claims against.
-/

/-! ## A025690.P2641715522661367091

`val(A025634(n+1), 5)`
-/

namespace A025690.P2641715522661367091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025634 (n + 1)).toNat 5

end

end A025690.P2641715522661367091

/-! ## A025690.P16143607672894653622

`A087469(A087468(n))%10`
-/

namespace A025690.P16143607672894653622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087469 (A087468 n).toNat) 10

end

end A025690.P16143607672894653622

/-! ## A025690.P2024597447303448607

`A002262(n)%A187797(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A025690.P2024597447303448607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A187797 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat)

end

end A025690.P2024597447303448607

/-! ## A025690.P3765848132801594809

`A002262(n)%A051230(A141021(n))`
-/

namespace A025690.P3765848132801594809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A051230 (A141021 n).toNat)

end

end A025690.P3765848132801594809

/-!
# A025691: 

The programs for A025691, there is no canonical definition to state claims against.
-/

/-! ## A025691.P4991133383511626833

`val(A025635(n+1), 2)`
-/

namespace A025691.P4991133383511626833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025635 (n + 1)).toNat 2

end

end A025691.P4991133383511626833

/-!
# A025692: Index of 2^n within the sequence of the numbers of the form 2^i*6^j.

The programs for A025692, the canonical program `A025692.P13651148535250117499` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025692 has offset 0).

The definition of A025692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025692.P13651148535250117499

`∑[floor(n/log2(6))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025692

/-- `∑[floor(n/log2(6))+1]` -/
def P13651148535250117499.Spec : Prop :=
  ∀ n, P13651148535250117499.a n = A025692 n

theorem P13651148535250117499.correct : P13651148535250117499.Spec := by
  intro n
  simp only [A025692]

end A025692

/-! ## A025692.P1916924021871267347

`ceil(a(n-1)+n/log2(6))` with `a(0)=1`
-/

namespace A025692.P1916924021871267347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.logb 2 (6 : ℝ)⌉

end

end A025692.P1916924021871267347

namespace A025692

/-- `ceil(a(n-1)+n/log2(6))` -/
def P1916924021871267347.Spec : Prop :=
  ∀ n, P1916924021871267347.a n = A025692 n

end A025692

/-! ## A025692.P301429994260192807

`∑[floor(n/log2(6))]-xor(n, -1)`
-/

namespace A025692.P301429994260192807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A025692.P301429994260192807

namespace A025692

/-- `∑[floor(n/log2(6))]-xor(n, -1)` -/
def P301429994260192807.Spec : Prop :=
  ∀ n, P301429994260192807.a n = A025692 n

end A025692

/-! ## A025692.P18118065936506917203

`a(n-1)+floor(n/log2(6))+1` with `a(0)=1`
-/

namespace A025692.P18118065936506917203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.logb 2 (6 : ℝ)⌋ + 1)

end

end A025692.P18118065936506917203

namespace A025692

/-- `a(n-1)+floor(n/log2(6))+1` -/
def P18118065936506917203.Spec : Prop :=
  ∀ n, P18118065936506917203.a n = A025692 n

end A025692

/-! ## A025692.P3713106227526551214

`lt[A025656(n+1), 1]+1`
-/

namespace A025692.P3713106227526551214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025656 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025692.P3713106227526551214

namespace A025692

/-- `lt[A025656(n+1), 1]+1` -/
def P3713106227526551214.Spec : Prop :=
  ∀ n, (P3713106227526551214.a n : ℤ) = A025692 n

end A025692

/-!
# A025693: Index of 2^n within the sequence of the numbers of the form 2^i*7^j.

The programs for A025693, the canonical program `A025693.P5277386981342050014` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025693 has offset 0).

The definition of A025693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025693.P5277386981342050014

`∑[floor(n/log2(7))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025693

/-- `∑[floor(n/log2(7))+1]` -/
def P5277386981342050014.Spec : Prop :=
  ∀ n, P5277386981342050014.a n = A025693 n

theorem P5277386981342050014.correct : P5277386981342050014.Spec := by
  intro n
  simp only [A025693]

end A025693

/-! ## A025693.P11237589221290935823

`ceil(a(n-1)+n/log2(7))` with `a(0)=1`
-/

namespace A025693.P11237589221290935823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.logb 2 (7 : ℝ)⌉

end

end A025693.P11237589221290935823

namespace A025693

/-- `ceil(a(n-1)+n/log2(7))` -/
def P11237589221290935823.Spec : Prop :=
  ∀ n, P11237589221290935823.a n = A025693 n

end A025693

/-! ## A025693.P3490973368310265049

`∑[ceil(n/log2(7))]+gcd(n, n+1)`
-/

namespace A025693.P3490973368310265049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℤ)

end

end A025693.P3490973368310265049

namespace A025693

/-- `∑[ceil(n/log2(7))]+gcd(n, n+1)` -/
def P3490973368310265049.Spec : Prop :=
  ∀ n, P3490973368310265049.a n = A025693 n

end A025693

/-! ## A025693.P9137416098264795263

`a(n-1)+floor(n/log2(7))+1` with `a(0)=1`
-/

namespace A025693.P9137416098264795263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.logb 2 (7 : ℝ)⌋ + 1)

end

end A025693.P9137416098264795263

namespace A025693

/-- `a(n-1)+floor(n/log2(7))+1` -/
def P9137416098264795263.Spec : Prop :=
  ∀ n, P9137416098264795263.a n = A025693 n

end A025693

/-! ## A025693.P6228811908528466808

`∑[ceil(n/log2(7))]%(n+1)²+1`
-/

namespace A025693.P6228811908528466808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ) + 1

end

end A025693.P6228811908528466808

namespace A025693

/-- `∑[ceil(n/log2(7))]%(n+1)²+1` -/
def P6228811908528466808.Spec : Prop :=
  ∀ n, P6228811908528466808.a n = A025693 n

end A025693

/-! ## A025693.P14270872163887331594

`(∑[ceil(n/log2(7))]+1)%A158680(n+1)`
-/

namespace A025693.P14270872163887331594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A158680 (n + 1))

end

end A025693.P14270872163887331594

namespace A025693

/-- `(∑[ceil(n/log2(7))]+1)%A158680(n+1)` -/
def P14270872163887331594.Spec : Prop :=
  ∀ n, P14270872163887331594.a n = A025693 n

end A025693

/-! ## A025693.P13576800304178887160

`∑[ceil(n/log2(7))]+A001222(4-(-1)^n)`
-/

namespace A025693.P13576800304178887160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (4 - (-1) ^ n).toNat

end

end A025693.P13576800304178887160

namespace A025693

/-- `∑[ceil(n/log2(7))]+A001222(4-(-1)^n)` -/
def P13576800304178887160.Spec : Prop :=
  ∀ n, P13576800304178887160.a n = A025693 n

end A025693

/-! ## A025693.P12480372179407561191

`record[(n+1)/gcd(7, A003591(n+1))]`
-/

namespace A025693.P12480372179407561191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 7 (A003591 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025693.P12480372179407561191

namespace A025693

/-- `record[(n+1)/gcd(7, A003591(n+1))]` -/
def P12480372179407561191.Spec : Prop :=
  ∀ n, P12480372179407561191.a n = (A025693 n : ℚ)

end A025693

/-! ## A025693.P10162922757129585212

`record[(n+1)/val(A033847(n+1), 7)]`
-/

namespace A025693.P10162922757129585212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025693.P10162922757129585212

namespace A025693

/-- `record[(n+1)/val(A033847(n+1), 7)]` -/
def P10162922757129585212.Spec : Prop :=
  ∀ n, P10162922757129585212.a n = (A025693 n : ℚ)

end A025693

/-!
# A025694: Index of 2^n within the sequence of the numbers of the form 2^i * 9^j.

The programs for A025694, the canonical program `A025694.P13487578386136914588` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025694 has offset 0).

The definition of A025694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025694.P13487578386136914588

`∑[floor(n/log2(9))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025694

/-- `∑[floor(n/log2(9))+1]` -/
def P13487578386136914588.Spec : Prop :=
  ∀ n, P13487578386136914588.a n = A025694 n

theorem P13487578386136914588.correct : P13487578386136914588.Spec := by
  intro n
  simp only [A025694]

end A025694

/-! ## A025694.P14052275359802089396

`ceil(a(n-1)+n/log2(9))` with `a(0)=1`
-/

namespace A025694.P14052275359802089396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.logb 2 (9 : ℝ)⌉

end

end A025694.P14052275359802089396

namespace A025694

/-- `ceil(a(n-1)+n/log2(9))` -/
def P14052275359802089396.Spec : Prop :=
  ∀ n, P14052275359802089396.a n = A025694 n

end A025694

/-! ## A025694.P17513494220932764950

`∑[floor(n/log2(9))]-xor(n, -1)`
-/

namespace A025694.P17513494220932764950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (9 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A025694.P17513494220932764950

namespace A025694

/-- `∑[floor(n/log2(9))]-xor(n, -1)` -/
def P17513494220932764950.Spec : Prop :=
  ∀ n, P17513494220932764950.a n = A025694 n

end A025694

/-! ## A025694.P16940718532985435883

`a(n-1)+floor(n/log2(9))+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A025694.P16940718532985435883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.logb 2 (9 : ℝ)⌋ + 1)

end

end A025694.P16940718532985435883

namespace A025694

/-- `a(n-1)+floor(n/log2(9))+1` -/
def P16940718532985435883.Spec : Prop :=
  ∀ n, P16940718532985435883.a n = A025694 n

end A025694

/-! ## A025694.P15366920030159582070

`∑[A065033(A020915(n))]%A001248(n+2)`
-/

namespace A025694.P15366920030159582070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001248 (n + 2))

end

end A025694.P15366920030159582070

namespace A025694

/-- `∑[A065033(A020915(n))]%A001248(n+2)` -/
def P15366920030159582070.Spec : Prop :=
  ∀ n, P15366920030159582070.a n = A025694 n

end A025694

/-! ## A025694.P10281276010212515099

`eq[1, A151935(A025678(n+1))]+1`
-/

namespace A025694.P10281276010212515099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (A025678 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025694.P10281276010212515099

namespace A025694

/-- `eq[1, A151935(A025678(n+1))]+1` -/
def P10281276010212515099.Spec : Prop :=
  ∀ n, (P10281276010212515099.a n : ℤ) = A025694 n

end A025694

/-!
# A025695: Index of 2^n within the sequence of the numbers of the form 2^i*10^j.

The programs for A025695, the canonical program `A025695.P4988645077206644745` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025695 has offset 0).

The definition of A025695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025695.P13977694256889853321

`∑[floor(n/log2(10))+1]`
-/

namespace A025695.P13977694256889853321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025695.P13977694256889853321

namespace A025695

/-- `∑[floor(n/log2(10))+1]` -/
def P13977694256889853321.Spec : Prop :=
  ∀ n, P13977694256889853321.a n = A025695 n

end A025695

/-! ## A025695.P13822781092152374311

`ceil(a(n-1)+n/log2(10))` with `a(0)=1`
-/

namespace A025695.P13822781092152374311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A025695.P13822781092152374311

namespace A025695

/-- `ceil(a(n-1)+n/log2(10))` -/
def P13822781092152374311.Spec : Prop :=
  ∀ n, P13822781092152374311.a n = A025695 n

end A025695

/-! ## A025695.P9188786849875862649

`a(n-1)+floor(n/log2(10))+1` with `a(0)=1`
-/

namespace A025695.P9188786849875862649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1)

end

end A025695.P9188786849875862649

namespace A025695

/-- `a(n-1)+floor(n/log2(10))+1` -/
def P9188786849875862649.Spec : Prop :=
  ∀ n, P9188786849875862649.a n = A025695 n

end A025695

/-! ## A025695.P15998359571313383310

`∑[A192543(n+1)]+1`
-/

namespace A025695.P15998359571313383310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025695.P15998359571313383310

namespace A025695

/-- `∑[A192543(n+1)]+1` -/
def P15998359571313383310.Spec : Prop :=
  ∀ n, P15998359571313383310.a n = A025695 n

end A025695

/-! ## A025695.P4988645077206644745

`A034887(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025695

/-- `A034887(n)+a(n-1)` -/
def P4988645077206644745.Spec : Prop :=
  ∀ n, P4988645077206644745.a n = A025695 n

theorem P4988645077206644745.correct : P4988645077206644745.Spec := by
  intro n
  simp only [A025695]

end A025695

/-! ## A025695.P3484798871220032889

`∑[A034887(n)]%A353088(n+1)`
-/

namespace A025695.P3484798871220032889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A353088 (n + 1))

end

end A025695.P3484798871220032889

namespace A025695

/-- `∑[A034887(n)]%A353088(n+1)` -/
def P3484798871220032889.Spec : Prop :=
  ∀ n, P3484798871220032889.a n = A025695 n

end A025695

/-! ## A025695.P16967273386797152885

`∑[A034887(n)]*A010689(2*n)`
-/

namespace A025695.P16967273386797152885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010689 (2 * n)

end

end A025695.P16967273386797152885

namespace A025695

/-- `∑[A034887(n)]*A010689(2*n)` -/
def P16967273386797152885.Spec : Prop :=
  ∀ n, P16967273386797152885.a n = A025695 n

end A025695

/-! ## A025695.P10820409689524116620

`A000027(∑[A034887(n)])`
-/

namespace A025695.P10820409689524116620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025695.P10820409689524116620

namespace A025695

/-- `A000027(∑[A034887(n)])` -/
def P10820409689524116620.Spec : Prop :=
  ∀ n, P10820409689524116620.a n = A025695 n

end A025695

/-! ## A025695.P15493971206717763685

`eq[A000007(n), A025684(A000007(n)+n)]`
-/

namespace A025695.P15493971206717763685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025684 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025695.P15493971206717763685

namespace A025695

/-- `eq[A000007(n), A025684(A000007(n)+n)]` -/
def P15493971206717763685.Spec : Prop :=
  ∀ n, (P15493971206717763685.a n : ℤ) = A025695 n

end A025695

/-! ## A025695.P4234642602502795663

`eq[A000038(n), A025684(A000038(n)+n)]`
-/

namespace A025695.P4234642602502795663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025684 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025695.P4234642602502795663

namespace A025695

/-- `eq[A000038(n), A025684(A000038(n)+n)]` -/
def P4234642602502795663.Spec : Prop :=
  ∀ n, (P4234642602502795663.a n : ℤ) = A025695 n

end A025695

/-!
# A025696: Index of 3^n within the sequence of the numbers of the form 3^i*4^j.

The programs for A025696, the canonical program `A025696.P10642012608150261714` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025696 has offset 0).

The definition of A025696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025696.P5143945265938427025

`∑[ceil(n*log2(3)/2)]+1`
-/

namespace A025696.P5143945265938427025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (3 : ℝ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025696.P5143945265938427025

namespace A025696

/-- `∑[ceil(n*log2(3)/2)]+1` -/
def P5143945265938427025.Spec : Prop :=
  ∀ n, P5143945265938427025.a n = A025696 n

end A025696

/-! ## A025696.P10642012608150261714

`∑[ceil(A020914(n)/2)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025696

/-- `∑[ceil(A020914(n)/2)]` -/
def P10642012608150261714.Spec : Prop :=
  ∀ n, P10642012608150261714.a n = A025696 n

theorem P10642012608150261714.correct : P10642012608150261714.Spec := by
  intro n
  simp only [A025696]

end A025696

/-! ## A025696.P4251615138234576229

`∑[∑[A022930(abs(1-n))]]`
-/

namespace A025696.P4251615138234576229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022930 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P4251615138234576229

namespace A025696

/-- `∑[∑[A022930(abs(1-n))]]` -/
def P4251615138234576229.Spec : Prop :=
  ∀ n, P4251615138234576229.a n = A025696 n

end A025696

/-! ## A025696.P8938418329535491135

`∑[floor(A056576(n)/2)+1]`
-/

namespace A025696.P8938418329535491135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056576 n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P8938418329535491135

namespace A025696

/-- `∑[floor(A056576(n)/2)+1]` -/
def P8938418329535491135.Spec : Prop :=
  ∀ n, P8938418329535491135.a n = A025696 n

end A025696

/-! ## A025696.P12181990800103111844

`∑[A008619(floor(n*log2(3)))]`
-/

namespace A025696.P12181990800103111844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P12181990800103111844

namespace A025696

/-- `∑[A008619(floor(n*log2(3)))]` -/
def P12181990800103111844.Spec : Prop :=
  ∀ n, P12181990800103111844.a n = A025696 n

end A025696

/-! ## A025696.P9187389966908019319

`∑[A110654(A020914(n))]`
-/

namespace A025696.P9187389966908019319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A020914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P9187389966908019319

namespace A025696

/-- `∑[A110654(A020914(n))]` -/
def P9187389966908019319.Spec : Prop :=
  ∀ n, P9187389966908019319.a n = A025696 n

end A025696

/-! ## A025696.P14580099766556818941

`∑[A110654(A056576(n)+1)]`
-/

namespace A025696.P14580099766556818941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A056576 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P14580099766556818941

namespace A025696

/-- `∑[A110654(A056576(n)+1)]` -/
def P14580099766556818941.Spec : Prop :=
  ∀ n, P14580099766556818941.a n = A025696 n

end A025696

/-! ## A025696.P12509304699142273795

`∑[A110654(or(1, A056576(n)))]`
-/

namespace A025696.P12509304699142273795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor 1 (A056576 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P12509304699142273795

namespace A025696

/-- `∑[A110654(or(1, A056576(n)))]` -/
def P12509304699142273795.Spec : Prop :=
  ∀ n, P12509304699142273795.a n = A025696 n

end A025696

/-! ## A025696.P5810198784443208223

`∑[A110654(A122437(n+1)-n)]`
-/

namespace A025696.P5810198784443208223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A122437 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P5810198784443208223

namespace A025696

/-- `∑[A110654(A122437(n+1)-n)]` -/
def P5810198784443208223.Spec : Prop :=
  ∀ n, P5810198784443208223.a n = A025696 n

end A025696

/-! ## A025696.P5688781806325736616

`∑[A065033(ceil(n*log2(3)))]`
-/

namespace A025696.P5688781806325736616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P5688781806325736616

namespace A025696

/-- `∑[A065033(ceil(n*log2(3)))]` -/
def P5688781806325736616.Spec : Prop :=
  ∀ n, P5688781806325736616.a n = A025696 n

end A025696

/-! ## A025696.P4730849623042888928

`∑[A004526(A020914(n)+1)]`
-/

namespace A025696.P4730849623042888928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020914 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P4730849623042888928

namespace A025696

/-- `∑[A004526(A020914(n)+1)]` -/
def P4730849623042888928.Spec : Prop :=
  ∀ n, P4730849623042888928.a n = A025696 n

end A025696

/-! ## A025696.P15967650479832386012

`∑[A110655(A020914(2*n))]`
-/

namespace A025696.P15967650479832386012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A020914 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P15967650479832386012

namespace A025696

/-- `∑[A110655(A020914(2*n))]` -/
def P15967650479832386012.Spec : Prop :=
  ∀ n, P15967650479832386012.a n = A025696 n

end A025696

/-! ## A025696.P16880482132946696912

`record[gcd(n+1, A025645(n+1))]`
-/

namespace A025696.P16880482132946696912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025645 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025696.P16880482132946696912

namespace A025696

/-- `record[gcd(n+1, A025645(n+1))]` -/
def P16880482132946696912.Spec : Prop :=
  ∀ n, (P16880482132946696912.a n : ℤ) = A025696 n

end A025696

/-!
# A025697: Index of 3^n within the sequence of the numbers of the form 3^i*6^j.

The programs for A025697, the canonical program `A025697.P13038111019771636556` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025697 has offset 0).

The definition of A025697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025697.P2337010557944383777

`∑[floor(n+1-n/log2(6))]`
-/

namespace A025697.P2337010557944383777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - (n : ℝ) / Real.logb 2 (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025697.P2337010557944383777

namespace A025697

/-- `∑[floor(n+1-n/log2(6))]` -/
def P2337010557944383777.Spec : Prop :=
  ∀ n, P2337010557944383777.a n = A025697 n

end A025697

/-! ## A025697.P13038111019771636556

`∑[n+1]+1-A025692(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025697

/-- `∑[n+1]+1-A025692(n)` -/
def P13038111019771636556.Spec : Prop :=
  ∀ n, P13038111019771636556.a n = A025697 n

theorem P13038111019771636556.correct : P13038111019771636556.Spec := by
  intro n
  simp only [A025697]

end A025697

/-! ## A025697.P3264021330555116420

`A000124(n)-∑[floor(n/log2(6))]`
-/

namespace A025697.P3264021330555116420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025697.P3264021330555116420

namespace A025697

/-- `A000124(n)-∑[floor(n/log2(6))]` -/
def P3264021330555116420.Spec : Prop :=
  ∀ n, P3264021330555116420.a n = A025697 n

end A025697

/-! ## A025697.P15798028353069912322

`2-A025692(n)+A000217(n)+n`
-/

namespace A025697.P15798028353069912322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A025692 n + (A000217 n + (n : ℤ))

end

end A025697.P15798028353069912322

namespace A025697

/-- `2-A025692(n)+A000217(n)+n` -/
def P15798028353069912322.Spec : Prop :=
  ∀ n, P15798028353069912322.a n = A025697 n

end A025697

/-! ## A025697.P18166532210462080892

`∑[A254667(n+1)]-A025692(n)`
-/

namespace A025697.P18166532210462080892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025692 n

end

end A025697.P18166532210462080892

namespace A025697

/-- `∑[A254667(n+1)]-A025692(n)` -/
def P18166532210462080892.Spec : Prop :=
  ∀ n, P18166532210462080892.a n = A025697 n

end A025697

/-! ## A025697.P16811979811299205591

`lt[A025657(n+1), 1]+1`
-/

namespace A025697.P16811979811299205591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025657 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025697.P16811979811299205591

namespace A025697

/-- `lt[A025657(n+1), 1]+1` -/
def P16811979811299205591.Spec : Prop :=
  ∀ n, (P16811979811299205591.a n : ℤ) = A025697 n

end A025697

/-! ## A025697.P17919808777273920026

`eq[1, A025657(n+2)]-n`
-/

namespace A025697.P17919808777273920026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025697.P17919808777273920026

namespace A025697

/-- `eq[1, A025657(n+2)]-n` -/
def P17919808777273920026.Spec : Prop :=
  ∀ n, P17919808777273920026.a n = A025697 n

end A025697

/-!
# A025698: Index of 3^n within the sequence of the numbers of the form 3^i*7^j.

The programs for A025698, there is no canonical definition to state claims against.
-/

/-! ## A025698.P2232021012224826

`eq[0, A025665(n+1)]+1`
-/

namespace A025698.P2232021012224826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025698.P2232021012224826

/-! ## A025698.P9588831131404415147

`record[gcd(A000027(n+1), A025665(n+1))]`
-/

namespace A025698.P9588831131404415147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A025665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025698.P9588831131404415147

/-! ## A025698.P3895834114514636698

`∑[A226190(n+1)%A160095(2*n+3)]`
-/

namespace A025698.P3895834114514636698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226190 (n + 1)) (A160095 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025698.P3895834114514636698

/-! ## A025698.P5915773026408565221

`∑[A092278(3*n+4)%A102185(n+1)]`
-/

namespace A025698.P5915773026408565221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092278 (3 * n + 4)) (A102185 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025698.P5915773026408565221

/-! ## A025698.P4962268592615808742

`∑[A229803(∑[A001221(2*n+3)])]`
-/

namespace A025698.P4962268592615808742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229803 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025698.P4962268592615808742

/-!
# A025699: Index of 3^n within the sequence of the numbers of the form 3^i*8^j (A025615).

The programs for A025699, the canonical program `A025699.P7745299274468322832` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025699 has offset 0).

The definition of A025699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025699.P7745299274468322832

`∑[ceil(A020914(n)/3)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025699

/-- `∑[ceil(A020914(n)/3)]` -/
def P7745299274468322832.Spec : Prop :=
  ∀ n, P7745299274468322832.a n = A025699 n

theorem P7745299274468322832.correct : P7745299274468322832.Spec := by
  intro n
  simp only [A025699]

end A025699

/-! ## A025699.P14121482109045605941

`∑[A008620(A056576(n))]`
-/

namespace A025699.P14121482109045605941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A056576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P14121482109045605941

namespace A025699

/-- `∑[A008620(A056576(n))]` -/
def P14121482109045605941.Spec : Prop :=
  ∀ n, P14121482109045605941.a n = A025699 n

end A025699

/-! ## A025699.P16446185810286260847

`∑[A008620(A020914(n)-1)]`
-/

namespace A025699.P16446185810286260847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A020914 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P16446185810286260847

namespace A025699

/-- `∑[A008620(A020914(n)-1)]` -/
def P16446185810286260847.Spec : Prop :=
  ∀ n, P16446185810286260847.a n = A025699 n

end A025699

/-! ## A025699.P15960919224945583933

`∑[A002264(A020914(n)+2)]`
-/

namespace A025699.P15960919224945583933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A020914 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P15960919224945583933

namespace A025699

/-- `∑[A002264(A020914(n)+2)]` -/
def P15960919224945583933.Spec : Prop :=
  ∀ n, P15960919224945583933.a n = A025699 n

end A025699

/-! ## A025699.P7133857417287705012

`∑[A008615(2*A020914(n))]`
-/

namespace A025699.P7133857417287705012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A020914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P7133857417287705012

namespace A025699

/-- `∑[A008615(2*A020914(n))]` -/
def P7133857417287705012.Spec : Prop :=
  ∀ n, P7133857417287705012.a n = A025699 n

end A025699

/-! ## A025699.P9834316679462054854

`∑[A008615(A005843(A020914(n)))]`
-/

namespace A025699.P9834316679462054854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005843 (A020914 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P9834316679462054854

namespace A025699

/-- `∑[A008615(A005843(A020914(n)))]` -/
def P9834316679462054854.Spec : Prop :=
  ∀ n, P9834316679462054854.a n = A025699 n

end A025699

/-! ## A025699.P10738950671252086507

`eq[1, A025672(n+2)]-n`
-/

namespace A025699.P10738950671252086507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025699.P10738950671252086507

namespace A025699

/-- `eq[1, A025672(n+2)]-n` -/
def P10738950671252086507.Spec : Prop :=
  ∀ n, P10738950671252086507.a n = A025699 n

end A025699

