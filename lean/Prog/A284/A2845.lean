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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
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
# A284500: Expansion of Product_{k>=0} (1 - x^(7*k+2)) in powers of x.

The programs for A284500, there is no canonical definition to state claims against.
-/

/-! ## A284500.P13058352155309833234

`A033999(A141038(n))*A281458(n)`
-/

namespace A284500.P13058352155309833234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A141038 n).toNat * A281458 n

end

end A284500.P13058352155309833234

/-! ## A284500.P6981856295211953830

`A033999(A020716(n))*A281458(n)`
-/

namespace A284500.P6981856295211953830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A020716 n).toNat * A281458 n

end

end A284500.P6981856295211953830

/-! ## A284500.P9070198909585833658

`(-A281458(n))^A005251(n)`
-/

namespace A284500.P9070198909585833658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281458 n : ℚ) ^ (A005251 n : ℤ)

end

end A284500.P9070198909585833658

/-! ## A284500.P18197341105338469727

`(-A281458(n))^A018252(∑[n+2]+4)`
-/

namespace A284500.P18197341105338469727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281458 n : ℚ) ^ (A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℤ)

end

end A284500.P18197341105338469727

/-! ## A284500.P16486139811773711668

`A006309(n+2)%A129256(A281458(n))`
-/

namespace A284500.P16486139811773711668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006309 (n + 2)) (A129256 (A281458 n).toNat)

end

end A284500.P16486139811773711668

/-!
# A284501: Expansion of Product_{k>=0} (1 - x^(7*k+3)) in powers of x.

The programs for A284501, there is no canonical definition to state claims against.
-/

/-! ## A284501.P8654508389961064054

`A284319(A049473(n))%p?[A062188(n)]`
-/

namespace A284501.P8654508389961064054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284319 (A049473 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A284501.P8654508389961064054

/-! ## A284501.P1221821974422087018

`(-A281457(n))^A061455(2*(n+2))`
-/

namespace A284501.P1221821974422087018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281457 n : ℚ) ^ (A061455 (2 * (n + 2)) : ℤ)

end

end A284501.P1221821974422087018

/-! ## A284501.P14267375457458326807

`(-A281457(n))^A061985(2*(n+2))`
-/

namespace A284501.P14267375457458326807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281457 n : ℚ) ^ (A061985 (2 * (n + 2)) : ℤ)

end

end A284501.P14267375457458326807

/-! ## A284501.P11188029905875052361

`A056594(or(A083026(2*n+3), A344739(3*n+4)))`
-/

namespace A284501.P11188029905875052361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.lor (A083026 (2 * n + 3)) (A344739 (3 * n + 4))).toNat

end

end A284501.P11188029905875052361

/-! ## A284501.P6163678419866559174

`A165586(A000213(n)*A281457(n))`
-/

namespace A284501.P6163678419866559174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A000213 n * A281457 n).toNat

end

end A284501.P6163678419866559174

/-!
# A284502: Expansion of Product_{k>=0} (1 - x^(7*k+4)) in powers of x.

The programs for A284502, there is no canonical definition to state claims against.
-/

/-! ## A284502.P10404353853196548086

`A097807(A035062(n+1))*A281456(n)`
-/

namespace A284502.P10404353853196548086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A035062 (n + 1)).toNat * A281456 n

end

end A284502.P10404353853196548086

/-! ## A284502.P3738478145019102395

`(-A281456(n))^A000914(n+1)`
-/

namespace A284502.P3738478145019102395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281456 n : ℚ) ^ (A000914 (n + 1) : ℤ)

end

end A284502.P3738478145019102395

/-! ## A284502.P12417942743759940202

`(-A281456(n))^A289898(n+1)`
-/

namespace A284502.P12417942743759940202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281456 n : ℚ) ^ (A289898 (n + 1) : ℤ)

end

end A284502.P12417942743759940202

/-! ## A284502.P2708174332360620933

`(-A281456(n))^A364219(3*n+2)`
-/

namespace A284502.P2708174332360620933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281456 n : ℚ) ^ (A364219 (3 * n + 2) : ℤ)

end

end A284502.P2708174332360620933

/-! ## A284502.P8525515205818214385

`(-A281456(n))^A000701(3*n+4)`
-/

namespace A284502.P8525515205818214385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281456 n : ℚ) ^ (A000701 (3 * n + 4) : ℤ)

end

end A284502.P8525515205818214385

/-!
# A284503: Expansion of Product_{k>=0} (1 - x^(7*k+5)) in powers of x.

The programs for A284503, there is no canonical definition to state claims against.
-/

/-! ## A284503.P1016280332487156223

`(-A281455(n))^A000914(n)`
-/

namespace A284503.P1016280332487156223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281455 n : ℚ) ^ (A000914 n : ℤ)

end

end A284503.P1016280332487156223

/-! ## A284503.P1802385701373833078

`(-A281455(n))^A216231(n)`
-/

namespace A284503.P1802385701373833078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281455 n : ℚ) ^ (A216231 n : ℤ)

end

end A284503.P1802385701373833078

/-! ## A284503.P2558225090300449664

`(-A281455(n))^A355306(n)`
-/

namespace A284503.P2558225090300449664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281455 n : ℚ) ^ (A355306 n : ℤ)

end

end A284503.P2558225090300449664

/-! ## A284503.P14138163129497780239

`-(-A281455(n))^A077868(n)`
-/

namespace A284503.P14138163129497780239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-A281455 n : ℚ) ^ (A077868 n : ℤ))

end

end A284503.P14138163129497780239

/-! ## A284503.P5178957203232516673

`(-A281455(n))^A176080(3*n+2)`
-/

namespace A284503.P5178957203232516673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281455 n : ℚ) ^ (A176080 (3 * n + 2) : ℤ)

end

end A284503.P5178957203232516673

/-!
# A284504: Expansion of Product_{k>=0} (1 - x^(7*k+6)) in powers of x.

The programs for A284504, there is no canonical definition to state claims against.
-/

/-! ## A284504.P2172394289810852183

`A033999(A141038(n))*A281245(n)`
-/

namespace A284504.P2172394289810852183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A141038 n).toNat * A281245 n

end

end A284504.P2172394289810852183

/-! ## A284504.P9140836042543825710

`(-A281245(n))^A005251(n)`
-/

namespace A284504.P9140836042543825710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281245 n : ℚ) ^ (A005251 n : ℤ)

end

end A284504.P9140836042543825710

/-! ## A284504.P2164867500989823028

`(-A281245(n))^A052117(n)`
-/

namespace A284504.P2164867500989823028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281245 n : ℚ) ^ (A052117 n : ℤ)

end

end A284504.P2164867500989823028

/-! ## A284504.P11407424678852574064

`(-A281245(n))^A004786(n+1)`
-/

namespace A284504.P11407424678852574064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281245 n : ℚ) ^ (A004786 (n + 1) : ℤ)

end

end A284504.P11407424678852574064

/-! ## A284504.P9786120166959438599

`(-A281245(n))^A036810(n+1)`
-/

namespace A284504.P9786120166959438599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281245 n : ℚ) ^ (A036810 (n + 1) : ℤ)

end

end A284504.P9786120166959438599

/-!
# A284505: Fixed point of the morphism 0->1, 1->1100.

The programs for A284505, the canonical program `A284505.P3040843879912031655` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284505 has offset 1).

The definition of A284505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284505.P3040843879912031655

`A283963(∑[char[2*n]])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A284505

/-- `A283963(∑[char[2*n]])` -/
def P3040843879912031655.Spec : Prop :=
  ∀ n, P3040843879912031655.a n = A284505 (n + 1)

theorem P3040843879912031655.correct : P3040843879912031655.Spec := by
  intro n
  simp only [A284505, Nat.add_sub_cancel]

end A284505

/-! ## A284505.P3188992252405753859

`char[A284507(n+1)-1]`
-/

namespace A284505.P3188992252405753859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284505.P3188992252405753859

namespace A284505

/-- `char[A284507(n+1)-1]` -/
def P3188992252405753859.Spec : Prop :=
  ∀ n, (P3188992252405753859.a n : ℤ) = A284505 (n + 1)

end A284505

/-! ## A284505.P10025222238941911842

`log2(Δ[A284852(n+1)])`
-/

namespace A284505.P10025222238941911842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284852 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284505.P10025222238941911842

namespace A284505

/-- `log2(Δ[A284852(n+1)])` -/
def P10025222238941911842.Spec : Prop :=
  ∀ n, P10025222238941911842.a n = (A284505 (n + 1) : ℝ)

end A284505

/-! ## A284505.P9876589542481203141

`A284851(A284852(n+2)-1)`
-/

namespace A284505.P9876589542481203141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A284852 (n + 2) - 1).toNat

end

end A284505.P9876589542481203141

namespace A284505

/-- `A284851(A284852(n+2)-1)` -/
def P9876589542481203141.Spec : Prop :=
  ∀ n, P9876589542481203141.a n = A284505 (n + 1)

end A284505

/-! ## A284505.P5220762901457793857

`A285431(A004526(A284852(n+2)))`
-/

namespace A284505.P5220762901457793857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (A004526 (A284852 (n + 2)).toNat).toNat

end

end A284505.P5220762901457793857

namespace A284505

/-- `A285431(A004526(A284852(n+2)))` -/
def P5220762901457793857.Spec : Prop :=
  ∀ n, P5220762901457793857.a n = A284505 (n + 1)

end A284505

/-!
# A284506: Positions of 0 in A284505; complement of A284507.

The programs for A284506, the canonical program `A284506.P5353495828140658715` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284506 has offset 1).

The definition of A284506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284506.P345484748679348873

`A284853(ceil((n+1)/2))+n+1`
-/

namespace A284506.P345484748679348873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 ⌈(n + 1 : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A284506.P345484748679348873

namespace A284506

/-- `A284853(ceil((n+1)/2))+n+1` -/
def P345484748679348873.Spec : Prop :=
  ∀ n, P345484748679348873.a n = A284506 (n + 1)

end A284506

/-! ## A284506.P5353495828140658715

`2*A026367(A004526(n)+1)+n+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284506

/-- `2*A026367(A004526(n)+1)+n+1` -/
def P5353495828140658715.Spec : Prop :=
  ∀ n, P5353495828140658715.a n = A284506 (n + 1)

theorem P5353495828140658715.correct : P5353495828140658715.Spec := by
  intro n
  simp only [A284506, Nat.add_sub_cancel]

end A284506

/-! ## A284506.P8242854910950869498

`A026368(A004526(n)+1)+A004526(n+1)`
-/

namespace A284506.P8242854910950869498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (A004526 n + 1).toNat + A004526 (n + 1)

end

end A284506.P8242854910950869498

namespace A284506

/-- `A026368(A004526(n)+1)+A004526(n+1)` -/
def P8242854910950869498.Spec : Prop :=
  ∀ n, P8242854910950869498.a n = A284506 (n + 1)

end A284506

/-! ## A284506.P1350769641647979423

`lt[n*char[A284507(n+1)], n]`
-/

namespace A284506.P1350769641647979423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284506.P1350769641647979423

namespace A284506

/-- `lt[n*char[A284507(n+1)], n]` -/
def P1350769641647979423.Spec : Prop :=
  ∀ n, (P1350769641647979423.a n : ℤ) = A284506 (n + 1)

end A284506

/-! ## A284506.P7531080853414370767

`lt[char[A284507(n+1)], A057427(n)]`
-/

namespace A284506.P7531080853414370767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284506.P7531080853414370767

namespace A284506

/-- `lt[char[A284507(n+1)], A057427(n)]` -/
def P7531080853414370767.Spec : Prop :=
  ∀ n, (P7531080853414370767.a n : ℤ) = A284506 (n + 1)

end A284506

/-! ## A284506.P17901445631748308061

`eq[0, A284505(A123108(2*n))]`
-/

namespace A284506.P17901445631748308061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284506.P17901445631748308061

namespace A284506

/-- `eq[0, A284505(A123108(2*n))]` -/
def P17901445631748308061.Spec : Prop :=
  ∀ n, (P17901445631748308061.a n : ℤ) = A284506 (n + 1)

end A284506

/-!
# A284507: Positions of 1 in A284505; complement of A284506.

The programs for A284507, the canonical program `A284507.P12069901503054785212` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284507 has offset 1).

The definition of A284507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284507.P13999373595512692814

`A284853(n+1)-(n+1)`
-/

namespace A284507.P13999373595512692814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) - (n + 1 : ℤ)

end

end A284507.P13999373595512692814

namespace A284507

/-- `A284853(n+1)-(n+1)` -/
def P13999373595512692814.Spec : Prop :=
  ∀ n, P13999373595512692814.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P9787116189470260733

`comp[A284506(n+1)-1]+1`
-/

namespace A284507.P9787116189470260733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284507.P9787116189470260733

namespace A284507

/-- `comp[A284506(n+1)-1]+1` -/
def P9787116189470260733.Spec : Prop :=
  ∀ n, (P9787116189470260733.a n : ℤ) = A284507 (n + 1)

end A284507

/-! ## A284507.P12069901503054785212

`2*A026367(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284507

/-- `2*A026367(n+1)-(n+1)` -/
def P12069901503054785212.Spec : Prop :=
  ∀ n, P12069901503054785212.a n = A284507 (n + 1)

theorem P12069901503054785212.correct : P12069901503054785212.Spec := by
  intro n
  simp only [A284507, Nat.add_sub_cancel]

end A284507

/-! ## A284507.P1628486952625724238

`A026368(n+1)-2*(n+1)`
-/

namespace A284507.P1628486952625724238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - (2 * (n + 1) : ℤ)

end

end A284507.P1628486952625724238

namespace A284507

/-- `A026368(n+1)-2*(n+1)` -/
def P1628486952625724238.Spec : Prop :=
  ∀ n, P1628486952625724238.a n = A284507 (n + 1)

theorem P1628486952625724238.correct : P1628486952625724238.Spec := by
  intro n
  simp only [A284507, Nat.add_sub_cancel, A284507.P1628486952625724238.a, A284507.P12069901503054785212.a, A026367, A026367.P15574987113732587765.a, A026368, A026368.P5295631279945250445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284507

/-! ## A284507.P13994197754677341140

`A286389(A004526(n))+A026367(n+1)`
-/

namespace A284507.P13994197754677341140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A004526 n).toNat + A026367 (n + 1)

end

end A284507.P13994197754677341140

namespace A284507

/-- `A286389(A004526(n))+A026367(n+1)` -/
def P13994197754677341140.Spec : Prop :=
  ∀ n, P13994197754677341140.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P4609085750840345687

`A000027(A026367(n+1)+A026367(n+1)-(n+1))`
-/

namespace A284507.P4609085750840345687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026367 (n + 1) + (A026367 (n + 1) - (n + 1 : ℤ))).toNat

end

end A284507.P4609085750840345687

namespace A284507

/-- `A000027(A026367(n+1)+A026367(n+1)-(n+1))` -/
def P4609085750840345687.Spec : Prop :=
  ∀ n, P4609085750840345687.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P933358982162396183

`2*A026359(n+2)-(n+3)`
-/

namespace A284507.P933358982162396183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026359 (n + 2) - (n + 3 : ℤ)

end

end A284507.P933358982162396183

namespace A284507

/-- `2*A026359(n+2)-(n+3)` -/
def P933358982162396183.Spec : Prop :=
  ∀ n, P933358982162396183.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P8178308291091915854

`A026360(n+2)-(2*n+3)`
-/

namespace A284507.P8178308291091915854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026360 (n + 2) - (2 * n + 3 : ℤ)

end

end A284507.P8178308291091915854

namespace A284507

/-- `A026360(n+2)-(2*n+3)` -/
def P8178308291091915854.Spec : Prop :=
  ∀ n, P8178308291091915854.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P14524320658492032193

`record[(A285431(n+1)+1)*(n+1)]-(n+1)`
-/

namespace A284507.P14524320658492032193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285431 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A284507.P14524320658492032193

namespace A284507

/-- `record[(A285431(n+1)+1)*(n+1)]-(n+1)` -/
def P14524320658492032193.Spec : Prop :=
  ∀ n, P14524320658492032193.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P430631382342125858

`record[(n+1)*A284505(n+1)]`
-/

namespace A284507.P430631382342125858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284507.P430631382342125858

namespace A284507

/-- `record[(n+1)*A284505(n+1)]` -/
def P430631382342125858.Spec : Prop :=
  ∀ n, P430631382342125858.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P16014435048614787601

`A284506(2*(n+1))-3*(n+1)`
-/

namespace A284507.P16014435048614787601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 (2 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A284507.P16014435048614787601

namespace A284507

/-- `A284506(2*(n+1))-3*(n+1)` -/
def P16014435048614787601.Spec : Prop :=
  ∀ n, P16014435048614787601.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P8877744590594975847

`A286389(A004526(n))+A004526(A284853(n+1))`
-/

namespace A284507.P8877744590594975847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A004526 n).toNat + A004526 (A284853 (n + 1)).toNat

end

end A284507.P8877744590594975847

namespace A284507

/-- `A286389(A004526(n))+A004526(A284853(n+1))` -/
def P8877744590594975847.Spec : Prop :=
  ∀ n, P8877744590594975847.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P3226374650787275253

`A001478(n+1)-A001478(A026368(n+1)+A001478(n+1))`
-/

namespace A284507.P3226374650787275253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) - A001478 (A026368 (n + 1) + A001478 (n + 1)).toNat

end

end A284507.P3226374650787275253

namespace A284507

/-- `A001478(n+1)-A001478(A026368(n+1)+A001478(n+1))` -/
def P3226374650787275253.Spec : Prop :=
  ∀ n, P3226374650787275253.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P2788870560436600238

`A026368(n+1)%A057502(A057501(2*(n+1)))`
-/

namespace A284507.P2788870560436600238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026368 (n + 1)) (A057502 (A057501 (2 * (n + 1))).toNat)

end

end A284507.P2788870560436600238

namespace A284507

/-- `A026368(n+1)%A057502(A057501(2*(n+1)))` -/
def P2788870560436600238.Spec : Prop :=
  ∀ n, P2788870560436600238.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P8177245303062387668

`A026366(A026368(n+1)-2)-n`
-/

namespace A284507.P8177245303062387668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A026368 (n + 1) - 2).toNat - (n : ℤ)

end

end A284507.P8177245303062387668

namespace A284507

/-- `A026366(A026368(n+1)-2)-n` -/
def P8177245303062387668.Spec : Prop :=
  ∀ n, P8177245303062387668.a n = A284507 (n + 1)

end A284507

/-! ## A284507.P4278094176706900534

`A283965(A026368(n+1))%A283964(n+1)`
-/

namespace A284507.P4278094176706900534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283965 (A026368 (n + 1)).toNat) (A283964 (n + 1))

end

end A284507.P4278094176706900534

namespace A284507

/-- `A283965(A026368(n+1))%A283964(n+1)` -/
def P4278094176706900534.Spec : Prop :=
  ∀ n, P4278094176706900534.a n = A284507 (n + 1)

end A284507

/-!
# A284508: 0-limiting word of the morphism 0->1, 1->0001.

The programs for A284508, there is no canonical definition to state claims against.
-/

/-! ## A284508.P5955012733718613284

`char[A284510(n+1)-1]`
-/

namespace A284508.P5955012733718613284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284508.P5955012733718613284

/-! ## A284508.P11566600936478422971

`char[comp[A284509(n+1)-1]]`
-/

namespace A284508.P11566600936478422971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284508.P11566600936478422971

/-! ## A284508.P6829500141734446087

`char[A284956(n+1)-(n+1)]`
-/

namespace A284508.P6829500141734446087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284508.P6829500141734446087

/-! ## A284508.P13383395678580780143

`char[3*A284958(n+1)-2*(n+1)-1]`
-/

namespace A284508.P13383395678580780143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284958 (n + 1) - (2 * (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284508.P13383395678580780143

/-! ## A284508.P3708400751723791470

`log2(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P3708400751723791470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A284508.P3708400751723791470

/-! ## A284508.P8911400567712877484

`A001221(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P8911400567712877484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P8911400567712877484

/-! ## A284508.P17231585161333809098

`A001222(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P17231585161333809098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P17231585161333809098

/-! ## A284508.P8661213112711033054

`A245173(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P8661213112711033054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P8661213112711033054

/-! ## A284508.P17964326887433219106

`A284928(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P17964326887433219106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P17964326887433219106

/-! ## A284508.P13514597950533124639

`A284929(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P13514597950533124639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P13514597950533124639

/-! ## A284508.P18265976111751860434

`A284935(Δ[comp[A284956(n+1)]])`
-/

namespace A284508.P18265976111751860434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P18265976111751860434

/-! ## A284508.P8486900337931507408

`A001221(Δ[comp[A284510(n+1)+n]])`
-/

namespace A284508.P8486900337931507408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284508.P8486900337931507408

/-! ## A284508.P3987100849981914590

`char[A023443(A284510(n+1))]`
-/

namespace A284508.P3987100849981914590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284510 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284508.P3987100849981914590

/-!
# A284509: Positions of 0 in A284508; complement of A284510.

The programs for A284509, there is no canonical definition to state claims against.
-/

/-! ## A284509.P7062831275632623794

`comp[A284510(n+1)-1]+1`
-/

namespace A284509.P7062831275632623794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284509.P7062831275632623794

/-! ## A284509.P15419635954080483770

`A284514(floor(n/3)+1)+n`
-/

namespace A284509.P15419635954080483770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (⌊(n : ℚ) / 3⌋ + 1).toNat + (n : ℤ)

end

end A284509.P15419635954080483770

/-! ## A284509.P9731704507653410420

`eq[1, A284508(n+1)+1]+1`
-/

namespace A284509.P9731704507653410420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284509.P9731704507653410420

/-! ## A284509.P1742381276483935582

`record[n+1-A000578(n*A284508(n+1))]`
-/

namespace A284509.P1742381276483935582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000578 ((n : ℤ) * A284508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284509.P1742381276483935582

/-! ## A284509.P1640249313659223120

`record[n+1-A272302(n*A284508(n+1)+1)]`
-/

namespace A284509.P1640249313659223120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A272302 ((n : ℤ) * A284508 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284509.P1640249313659223120

/-! ## A284509.P13120810040094467125

`record[n+1-A255334(n+1)*A284508(n+1)]`
-/

namespace A284509.P13120810040094467125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A255334 (n + 1) * A284508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284509.P13120810040094467125

/-!
# A284510: Positions of 1 in A284508; complement of A284509.

The programs for A284510, there is no canonical definition to state claims against.
-/

/-! ## A284510.P13375850849232782559

`A284956(n+1)-n`
-/

namespace A284510.P13375850849232782559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1) - (n : ℤ)

end

end A284510.P13375850849232782559

/-! ## A284510.P13222651170821889609

`∑[(A284512(n+1)+1)²]`
-/

namespace A284510.P13222651170821889609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284512 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284510.P13222651170821889609

/-! ## A284510.P16463278126868147534

`3*A284958(n+1)-2*(n+1)`
-/

namespace A284510.P16463278126868147534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284958 (n + 1) - (2 * (n + 1) : ℤ)

end

end A284510.P16463278126868147534

/-! ## A284510.P2178455134376588156

`eq[1, A284508(n+1)]+1`
-/

namespace A284510.P2178455134376588156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284510.P2178455134376588156

/-! ## A284510.P10349115313102790122

`A284513(3*n+1)-3*n`
-/

namespace A284510.P10349115313102790122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284513 (3 * n + 1) - (3 * n : ℤ)

end

end A284510.P10349115313102790122

/-! ## A284510.P5707073921802504414

`A028310(comp[A284509(n+1)-1]+n+1)-n`
-/

namespace A284510.P5707073921802504414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)) - (n : ℤ)

end

end A284510.P5707073921802504414

/-!
# A284511: a(1) = 1, a(2) = 2, a(3) = 2; a(n) = a(a(n-1)-1) + a(n-a(n-2)) for n > 3.

The programs for A284511, the canonical program `A284511.P2463625018660158126` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284511 has offset 1).

The definition of A284511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-2)+a(n-a(n-2))` (program `A284511.P2463625018660158126`, by `A284511.P2463625018660158126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284511.P2463625018660158126

`a(a(n-1)-2)+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284511

/-- `a(a(n-1)-2)+a(n-a(n-2))` -/
def P2463625018660158126.Spec : Prop :=
  ∀ n, (P2463625018660158126.a n : ℤ) = A284511 (n + 1)

theorem P2463625018660158126.correct : P2463625018660158126.Spec := by
  intro n
  simp only [A284511, Nat.add_sub_cancel]

end A284511

/-! ## A284511.P16594937650397856799

`A102548(n+1)+A025441(A089068(n))`
-/

namespace A284511.P16594937650397856799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n + 1) + A025441 (A089068 n).toNat

end

end A284511.P16594937650397856799

namespace A284511

/-- `A102548(n+1)+A025441(A089068(n))` -/
def P16594937650397856799.Spec : Prop :=
  ∀ n, P16594937650397856799.a n = A284511 (n + 1)

end A284511

/-! ## A284511.P9438794890194568080

`A102548(n+1)+A038189(A219207(A074306(n)))`
-/

namespace A284511.P9438794890194568080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n + 1) + A038189 (A219207 (A074306 n).toNat).toNat

end

end A284511.P9438794890194568080

namespace A284511

/-- `A102548(n+1)+A038189(A219207(A074306(n)))` -/
def P9438794890194568080.Spec : Prop :=
  ∀ n, P9438794890194568080.a n = A284511 (n + 1)

end A284511

/-!
# A284512: 1-limiting word of the morphism 0->1, 1->0001.

The programs for A284512, there is no canonical definition to state claims against.
-/

/-! ## A284512.P15533322559485469953

`char[A284514(n+1)-1]`
-/

namespace A284512.P15533322559485469953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284512.P15533322559485469953

/-! ## A284512.P10526394114662193624

`1-char[A284513(n+1)-1]`
-/

namespace A284512.P10526394114662193624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284513 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284512.P10526394114662193624

/-! ## A284512.P14746060268150660173

`char[A284959(n+1)-(n+1)]`
-/

namespace A284512.P14746060268150660173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284512.P14746060268150660173

/-! ## A284512.P3398018977778735073

`Δ[comp[A284959(n+1)]]-1`
-/

namespace A284512.P3398018977778735073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A284512.P3398018977778735073

/-! ## A284512.P546469906319050872

`A001221(Δ[comp[A284959(n+1)]])`
-/

namespace A284512.P546469906319050872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284512.P546469906319050872

/-! ## A284512.P15032186910929990629

`A001222(Δ[comp[A284959(n+1)]])`
-/

namespace A284512.P15032186910929990629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284512.P15032186910929990629

/-! ## A284512.P16708502131538841862

`A284928(Δ[comp[A284959(n+1)]])`
-/

namespace A284512.P16708502131538841862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284512.P16708502131538841862

/-! ## A284512.P9556611662511456911

`A001221(Δ[comp[A284514(n+1)+n]])`
-/

namespace A284512.P9556611662511456911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284512.P9556611662511456911

/-! ## A284512.P9990525230206312710

`A284957(A284958(n+1)-1)`
-/

namespace A284512.P9990525230206312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (A284958 (n + 1) - 1).toNat

end

end A284512.P9990525230206312710

/-! ## A284512.P2321850092676237625

`A284957(eq[0, A284957(n+1)])`
-/

namespace A284512.P2321850092676237625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284512.P2321850092676237625

/-! ## A284512.P14999742619784993455

`A284957(lt[A284957(n+1), 1])`
-/

namespace A284512.P14999742619784993455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284512.P14999742619784993455

/-! ## A284512.P5668111350580956139

`A284957(record[n*(1-A284957(n+2))]+1)`
-/

namespace A284512.P5668111350580956139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A284957 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A284512.P5668111350580956139

/-! ## A284512.P3110009295530855179

`1-A284508(A284510(n+1)-1)`
-/

namespace A284512.P3110009295530855179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284508 (A284510 (n + 1) - 1).toNat

end

end A284512.P3110009295530855179

/-! ## A284512.P12969216982590505299

`1-A284954(A284956(n+1)-2)`
-/

namespace A284512.P12969216982590505299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284954 (A284956 (n + 1) - 2).toNat

end

end A284512.P12969216982590505299

/-!
# A284513: Positions of 0 in A284512; complement of A284514.

The programs for A284513, there is no canonical definition to state claims against.
-/

/-! ## A284513.P5721430571255357032

`comp[A284514(n+1)-1]+1`
-/

namespace A284513.P5721430571255357032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284513.P5721430571255357032

/-! ## A284513.P3855901732629535816

`A284510(floor(n/3)+1)+n`
-/

namespace A284513.P3855901732629535816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (⌊(n : ℚ) / 3⌋ + 1).toNat + (n : ℤ)

end

end A284513.P3855901732629535816

/-! ## A284513.P2022693112476990491

`eq[0, A284512(n+1)]+1`
-/

namespace A284513.P2022693112476990491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284513.P2022693112476990491

/-! ## A284513.P15125884811809662556

`eq[1, Δ[A284958(n+1)]]+2`
-/

namespace A284513.P15125884811809662556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284513.P15125884811809662556

/-! ## A284513.P13925309797554480083

`eq[2, Δ[A284956(n+1)]]+2`
-/

namespace A284513.P13925309797554480083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284513.P13925309797554480083

/-! ## A284513.P8546172319788904223

`eq[0, A284512(A028310(n))]`
-/

namespace A284513.P8546172319788904223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284513.P8546172319788904223

/-!
# A284514: Positions of 1 in A284512; complement of A284513.

The programs for A284514, there is no canonical definition to state claims against.
-/

/-! ## A284514.P15946480711602052924

`A284959(n+1)-n`
-/

namespace A284514.P15946480711602052924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) - (n : ℤ)

end

end A284514.P15946480711602052924

/-! ## A284514.P7753859830098338954

`∑[(A284508(n+1)+1)²]`
-/

namespace A284514.P7753859830098338954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284508 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284514.P7753859830098338954

/-! ## A284514.P6101505485996937538

`A008585(∑[A284508(n+1)])+1+n`
-/

namespace A284514.P6101505485996937538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 + (n : ℤ)

end

end A284514.P6101505485996937538

/-! ## A284514.P6720919056664035661

`eq[1, A284512(n+1)]+1`
-/

namespace A284514.P6720919056664035661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284514.P6720919056664035661

/-! ## A284514.P18052978514768987110

`eq[n, A028310(n)*A284512(A028310(n))]`
-/

namespace A284514.P18052978514768987110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A284512 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284514.P18052978514768987110

/-! ## A284514.P9810172622637623854

`eq[1, char[A284509(n+1)-n]]`
-/

namespace A284514.P9810172622637623854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (n + 1) - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284514.P9810172622637623854

/-! ## A284514.P4508821158415529051

`A284509(3*n+2)-(3*n+1)`
-/

namespace A284514.P4508821158415529051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (3 * n + 2) - (3 * n + 1 : ℤ)

end

end A284514.P4508821158415529051

/-! ## A284514.P4596627471752408058

`A028310(A284509(3*n+2)%A016777(n))`
-/

namespace A284514.P4596627471752408058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A284509 (3 * n + 2)) (A016777 n)).toNat

end

end A284514.P4596627471752408058

/-! ## A284514.P11409805491614894106

`lt[A284957(n+1), A284957(A028310(n))]-n`
-/

namespace A284514.P11409805491614894106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A284514.P11409805491614894106

/-! ## A284514.P9208374186799125435

`lt[char[A284958(n+1)], A288381(3*n+1)]-n`
-/

namespace A284514.P9208374186799125435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284958 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n : ℤ) - (n : ℤ)

end

end A284514.P9208374186799125435

/-!
# A284515: "Inside numbers". Pick a term "t" and one of its digits "d". Now jump to the right over d digits if "d" is odd, and to the left over d digits if "d" is even. Whatever the "d" you choose, you will stay on "t".

The programs for A284515, there is no canonical definition to state claims against.
-/

/-! ## A284515.P6059230238142133626

`filter[A340051(2*n), A011743(#)]`
-/

namespace A284515.P6059230238142133626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011743 (f1 j).toNat = 1) n)

end

end A284515.P6059230238142133626

/-!
# A284516: Lexicographically earliest sequence of unique numbers such that for each digit "d" the gap to the nearest other digit "d" is equal to d.

The programs for A284516, there is no canonical definition to state claims against.
-/

/-! ## A284516.P17175952577461680742

`A284651(n+1)-A025465(A188021(n))`
-/

namespace A284516.P17175952577461680742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (n + 1) - A025465 (A188021 n).toNat

end

end A284516.P17175952577461680742

/-! ## A284516.P18096694387141250007

`A284651(n+1)-A294930(A250266(n))`
-/

namespace A284516.P18096694387141250007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (n + 1) - A294930 (A250266 n).toNat

end

end A284516.P18096694387141250007

/-! ## A284516.P5890111051708323540

`A284651(n+1)+A240328(A235717(n+1))`
-/

namespace A284516.P5890111051708323540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (n + 1) + A240328 (A235717 (n + 1)).toNat

end

end A284516.P5890111051708323540

/-! ## A284516.P8521171692354168407

`A107602(A284651(n+1))`
-/

namespace A284516.P8521171692354168407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107602 (A284651 (n + 1)).toNat

end

end A284516.P8521171692354168407

/-! ## A284516.P7487472516677042966

`A284651(A187829(n+1))`
-/

namespace A284516.P7487472516677042966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (A187829 (n + 1)).toNat

end

end A284516.P7487472516677042966

/-!
# A284517: Periodic with period [1, 4, 3, 4, 1, 6] of length 6.

The programs for A284517, the canonical program `A284517.P2097724155662955888` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284517 has offset 1).

The definition of A284517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284517.P2097724155662955888

`6-3*(n+1)+6*floor((n+1)/2)+2*floor((n+1)/3)-2*floor((n+3)/3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284517

/-- `6-3*(n+1)+6*floor((n+1)/2)+2*floor((n+1)/3)-2*floor((n+3)/3)` -/
def P2097724155662955888.Spec : Prop :=
  ∀ n, P2097724155662955888.a n = A284517 (n + 1)

theorem P2097724155662955888.correct : P2097724155662955888.Spec := by
  intro n
  simp only [A284517, Nat.add_sub_cancel]

end A284517

/-!
# A284518: Periodic with period [1, 10, 9, 16, 1, 18, 1, 16, 9, 10, 1, 24] of length 12.

The programs for A284518, there is no canonical definition to state claims against.
-/

/-! ## A284518.P7537660878405196755

`A008307(A056000(n)+7)`
-/

namespace A284518.P7537660878405196755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A056000 n + 7).toNat

end

end A284518.P7537660878405196755

/-!
# A284520: a(1) = 1, a(2) = a(3) = a(4) = 2; a(n) = a(a(n-1)-1) + a(n-a(n-3)-1) for n > 4.

The programs for A284520, the canonical program `A284520.P4594417802115626584` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284520 has offset 1).

The definition of A284520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-2)+a(n-a(n-3)-1)` (program `A284520.P4594417802115626584`, by `A284520.P4594417802115626584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284520.P4594417802115626584

`a(a(n-1)-2)+a(n-a(n-3)-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284520

/-- `a(a(n-1)-2)+a(n-a(n-3)-1)` -/
def P4594417802115626584.Spec : Prop :=
  ∀ n, (P4594417802115626584.a n : ℤ) = A284520 (n + 1)

theorem P4594417802115626584.correct : P4594417802115626584.Spec := by
  intro n
  simp only [A284520, Nat.add_sub_cancel]

end A284520

/-!
# A284521: Sum of largest prime power factors of numbers <= n.

The programs for A284521, there is no canonical definition to state claims against.
-/

/-! ## A284521.P370885565110805322

`∑[A034699(n+1)]`
-/

namespace A284521.P370885565110805322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P370885565110805322

/-! ## A284521.P12980748911838763587

`∑[1-A081805(n+1)+n]`
-/

namespace A284521.P12980748911838763587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081805 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P12980748911838763587

/-! ## A284521.P3685104849673525923

`∑[(n+1)/A284600(n+1)]`
-/

namespace A284521.P3685104849673525923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284600 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P3685104849673525923

/-! ## A284521.P15737417510698460016

`∑[A057110(n+1)+A002034(n+1)]`
-/

namespace A284521.P15737417510698460016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (n + 1) + A002034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P15737417510698460016

/-! ## A284521.P724888080083935800

`∑[A100574(n+1)+A034684(n+1)]`
-/

namespace A284521.P724888080083935800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (n + 1) + A034684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P724888080083935800

/-! ## A284521.P8276713441316924624

`∑[A304233(n+1)/A034684(n+1)]`
-/

namespace A284521.P8276713441316924624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P8276713441316924624

/-! ## A284521.P17338430790856987383

`∑[A088387(n+1)^A088388(n+1)]`
-/

namespace A284521.P17338430790856987383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P17338430790856987383

/-! ## A284521.P4381336115271549775

`∑[A210208(A210241(n+1))]`
-/

namespace A284521.P4381336115271549775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P4381336115271549775

/-! ## A284521.P575772275163624936

`∑[A210208(∑[A073093(n+1)])]`
-/

namespace A284521.P575772275163624936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P575772275163624936

/-! ## A284521.P143020752632401836

`∑[A081472(n+1)-(n+1)]`
-/

namespace A284521.P143020752632401836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P143020752632401836

/-! ## A284521.P11254248644129260680

`∑[sqrt(A274006((n+1)²))]`
-/

namespace A284521.P11254248644129260680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P11254248644129260680

/-! ## A284521.P5234174987736899957

`∑[A000196(A309639((n+1)²))]`
-/

namespace A284521.P5234174987736899957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A309639 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284521.P5234174987736899957

/-!
# A284523: a(1) = a(2) = 1, a(3) = 2; a(n) = a(a(n-1)-1) + a(n-a(n-3)-1) for n > 3.

The programs for A284523, the canonical program `A284523.P3506393196581763406` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284523 has offset 1).

The definition of A284523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-2)+a(n-a(n-3)-1)` (program `A284523.P3506393196581763406`, by `A284523.P3506393196581763406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284523.P3506393196581763406

`a(a(n-1)-2)+a(n-a(n-3)-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284523

/-- `a(a(n-1)-2)+a(n-a(n-3)-1)` -/
def P3506393196581763406.Spec : Prop :=
  ∀ n, (P3506393196581763406.a n : ℤ) = A284523 (n + 1)

theorem P3506393196581763406.correct : P3506393196581763406.Spec := by
  intro n
  simp only [A284523, Nat.add_sub_cancel]

end A284523

/-!
# A284524: 0-limiting word of the morphism 0->1, 1->0010.

The programs for A284524, there is no canonical definition to state claims against.
-/

/-! ## A284524.P4206586552389548906

`char[A284526(n+1)-1]`
-/

namespace A284524.P4206586552389548906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284524.P4206586552389548906

/-! ## A284524.P15629911979317493291

`1-char[A284525(n+1)-1]`
-/

namespace A284524.P15629911979317493291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284525 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284524.P15629911979317493291

/-! ## A284524.P9365085101228818927

`9%Δ[A284529(n+1)]`
-/

namespace A284524.P9365085101228818927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (f1 (n + 1) - f1 n)

end

end A284524.P9365085101228818927

/-! ## A284524.P4194263473378845962

`A131182(Δ[A284529(n+1)])`
-/

namespace A284524.P4194263473378845962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131182 (f1 (n + 1) - f1 n).toNat

end

end A284524.P4194263473378845962

/-! ## A284524.P6379763164782580379

`A135302(Δ[A284529(n+1)])`
-/

namespace A284524.P6379763164782580379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (f1 (n + 1) - f1 n).toNat

end

end A284524.P6379763164782580379

/-! ## A284524.P13682883063537172962

`A284533(Δ[A284529(n+1)])`
-/

namespace A284524.P13682883063537172962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (f1 (n + 1) - f1 n).toNat

end

end A284524.P13682883063537172962

/-! ## A284524.P12976674483349249839

`A296559(Δ[A284529(n+1)])`
-/

namespace A284524.P12976674483349249839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 (f1 (n + 1) - f1 n).toNat

end

end A284524.P12976674483349249839

/-! ## A284524.P10200124699250157650

`A284527(Δ[A284529(n+1)]+3)`
-/

namespace A284524.P10200124699250157650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (f1 (n + 1) - f1 n + 3).toNat

end

end A284524.P10200124699250157650

/-! ## A284524.P7383512540325774505

`Δ[A284525(3*n+2)]%2`
-/

namespace A284524.P7383512540325774505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284525 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A284524.P7383512540325774505

/-! ## A284524.P12010654061497458559

`A284527(Δ[A284525(3*n+2)])`
-/

namespace A284524.P12010654061497458559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284525 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (f1 (n + 1) - f1 n).toNat

end

end A284524.P12010654061497458559

/-!
# A284525: Positions of 0 in A284524; complement of A284526.

The programs for A284525, there is no canonical definition to state claims against.
-/

/-! ## A284525.P17238243991842376156

`eq[0, A284524(n+1)]+1`
-/

namespace A284525.P17238243991842376156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284525.P17238243991842376156

/-! ## A284525.P16885043910745207598

`lt[n*A284524(A028310(n)), n]`
-/

namespace A284525.P16885043910745207598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284524 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284525.P16885043910745207598

/-! ## A284525.P17861914999694519510

`record[(n+1)*Δ[A284529(n+1)]%2]`
-/

namespace A284525.P17861914999694519510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284525.P17861914999694519510

/-! ## A284525.P13582330983872724962

`eq[char[A284526(n+1)], A000007(n)]`
-/

namespace A284525.P13582330983872724962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284525.P13582330983872724962

/-! ## A284525.P275761973059670863

`eq[A000007(n), A284524(A028310(n))]`
-/

namespace A284525.P275761973059670863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284525.P275761973059670863

/-! ## A284525.P4712324906560219451

`lt[A284524(A028310(n)), A057427(n)]`
-/

namespace A284525.P4712324906560219451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284525.P4712324906560219451

/-! ## A284525.P10086699963640874285

`record[(1-A284524(A020915(n)))*A020915(n)]`
-/

namespace A284525.P10086699963640874285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284524 (A020915 n).toNat) * A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284525.P10086699963640874285

/-!
# A284526: Positions of 1 in A284524; complement of A284525.

The programs for A284526, there is no canonical definition to state claims against.
-/

/-! ## A284526.P13754430519041786229

`∑[(A284527(n+1)+1)²]-A284527(n+1)`
-/

namespace A284526.P13754430519041786229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284527 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A284527 (n + 1)

end

end A284526.P13754430519041786229

/-! ## A284526.P16588011142283502172

`eq[1, A284524(n+1)]+1`
-/

namespace A284526.P16588011142283502172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284526.P16588011142283502172

/-! ## A284526.P11689369610285279857

`lt[0, A284524(A028310(n))]`
-/

namespace A284526.P11689369610285279857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284526.P11689369610285279857

/-! ## A284526.P5221027923031215627

`eq[1, A284524(A000007(n)+n)]`
-/

namespace A284526.P5221027923031215627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284526.P5221027923031215627

/-! ## A284526.P9587534930978328538

`record[A284528(n+1)-lcm(3, n)]`
-/

namespace A284526.P9587534930978328538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284528 (n + 1) - (Nat.lcm 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284526.P9587534930978328538

/-! ## A284526.P17663209702848491955

`A284528(3*n+1)-3*n`
-/

namespace A284526.P17663209702848491955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284528 (3 * n + 1) - (3 * n : ℤ)

end

end A284526.P17663209702848491955

/-!
# A284527: 1-limiting word of the morphism 0->1, 1->0010.

The programs for A284527, there is no canonical definition to state claims against.
-/

/-! ## A284527.P18297082864001799444

`char[A284529(n+1)-1]`
-/

namespace A284527.P18297082864001799444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284527.P18297082864001799444

/-! ## A284527.P4809119300181780327

`1-char[A284528(n+1)-1]`
-/

namespace A284527.P4809119300181780327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284528 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284527.P4809119300181780327

/-! ## A284527.P7296002561710107984

`A131182(Δ[A284526(n+1)])`
-/

namespace A284527.P7296002561710107984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131182 (f1 (n + 1) - f1 n).toNat

end

end A284527.P7296002561710107984

/-! ## A284527.P3264550264101101511

`A180662(Δ[A284526(n+1)])`
-/

namespace A284527.P3264550264101101511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (f1 (n + 1) - f1 n).toNat

end

end A284527.P3264550264101101511

/-! ## A284527.P5937600766032519324

`A284533(Δ[A284526(n+1)])`
-/

namespace A284527.P5937600766032519324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (f1 (n + 1) - f1 n).toNat

end

end A284527.P5937600766032519324

/-! ## A284527.P9964202649087500781

`A296559(Δ[A284526(n+1)])`
-/

namespace A284527.P9964202649087500781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 (f1 (n + 1) - f1 n).toNat

end

end A284527.P9964202649087500781

/-! ## A284527.P7098623881253194266

`A284524(Δ[A284526(n+1)]+5)`
-/

namespace A284527.P7098623881253194266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (f1 (n + 1) - f1 n + 5).toNat

end

end A284527.P7098623881253194266

/-! ## A284527.P3947554462224257424

`Δ[A284528(3*(n+1))]%2`
-/

namespace A284527.P3947554462224257424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284528 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A284527.P3947554462224257424

/-!
# A284528: Positions of 0 in A284527; complement of A284529.

The programs for A284528, there is no canonical definition to state claims against.
-/

/-! ## A284528.P11081816381811952460

`eq[0, A284527(n+1)]+1`
-/

namespace A284528.P11081816381811952460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284528.P11081816381811952460

/-! ## A284528.P15824550182066131632

`eq[0, A284527(A028310(n))]`
-/

namespace A284528.P15824550182066131632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284528.P15824550182066131632

/-! ## A284528.P3163907867658295494

`A020725(eq[0, A284527(n+1)])`
-/

namespace A284528.P3163907867658295494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284528.P3163907867658295494

/-! ## A284528.P3595881369188121305

`eq[1, A000010(Δ[A284526(n+1)])]+2`
-/

namespace A284528.P3595881369188121305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284528.P3595881369188121305

/-! ## A284528.P2842574192074622405

`lt[A284527(A028310(n)), A057427(n)]`
-/

namespace A284528.P2842574192074622405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284528.P2842574192074622405

/-! ## A284528.P2319163631115044870

`eq[char[A284529(n+1)], A285476(n)]`
-/

namespace A284528.P2319163631115044870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284529 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284528.P2319163631115044870

/-! ## A284528.P4250735301744376284

`eq[0, A284527(A233583(n+1))]`
-/

namespace A284528.P4250735301744376284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284528.P4250735301744376284

/-! ## A284528.P15282362327072499363

`lt[A013915(n)*A284527(A028310(n)), 1]`
-/

namespace A284528.P15282362327072499363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 n * A284527 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284528.P15282362327072499363

/-!
# A284529: Positions of 1 in A284527; complement of A284528.

The programs for A284529, there is no canonical definition to state claims against.
-/

/-! ## A284529.P8820538316210419764

`eq[1, A284527(n+1)]+1`
-/

namespace A284529.P8820538316210419764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284529.P8820538316210419764

/-! ## A284529.P11476507008273192415

`record[A000027(n+1)*A284527(n+1)]`
-/

namespace A284529.P11476507008273192415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A284527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284529.P11476507008273192415

/-! ## A284529.P5653296027040958017

`record[(n+1)%A284526(n*A284527(n+1)+1)]`
-/

namespace A284529.P5653296027040958017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A284526 ((n : ℤ) * A284527 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284529.P5653296027040958017

/-! ## A284529.P16069414740986914625

`eq[A057427(n), A284527(A028310(n))]`
-/

namespace A284529.P16069414740986914625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284529.P16069414740986914625

/-! ## A284529.P3187979101557782802

`lt[A000007(n), A284527(A028310(n))]`
-/

namespace A284529.P3187979101557782802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284529.P3187979101557782802

/-! ## A284529.P423882771663479231

`A284525(3*n+1)-3*n`
-/

namespace A284529.P423882771663479231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284525 (3 * n + 1) - (3 * n : ℤ)

end

end A284529.P423882771663479231

/-! ## A284529.P4831850564202793505

`A284525(3*(n+1))%(3*(n+1))`
-/

namespace A284529.P4831850564202793505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284525 (3 * (n + 1))) (3 * (n + 1) : ℤ)

end

end A284529.P4831850564202793505

/-! ## A284529.P16461475262497109660

`record[A135997((n+1)*(A284527(n+1)+2))]`
-/

namespace A284529.P16461475262497109660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 ((n + 1 : ℤ) * (A284527 (n + 1) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284529.P16461475262497109660

/-!
# A284530: Indices i such that A284486(i) = 1.

The programs for A284530, there is no canonical definition to state claims against.
-/

/-! ## A284530.P15808278856590539876

`eq[1, A284486(n+1)]+1`
-/

namespace A284530.P15808278856590539876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284530.P15808278856590539876

/-!
# A284531: Primes p such that 6p - 5 and 6p + 5 are consecutive primes.

The programs for A284531, the canonical program `A284531.P11943089900125186726` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284531 has offset 1).

The definition of A284531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284531.P11943089900125186726

`p?[ceil(A031928(n+1)/6)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284531

/-- `p?[ceil(A031928(n+1)/6)]` -/
def P11943089900125186726.Spec : Prop :=
  ∀ n, P11943089900125186726.a n = A284531 (n + 1)

theorem P11943089900125186726.correct : P11943089900125186726.Spec := by
  intro n
  simp only [A284531, Nat.add_sub_cancel]

end A284531

/-! ## A284531.P18045781472845609006

`record[A006530(ceil(A031928(n+2)/6))]`
-/

namespace A284531.P18045781472845609006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(A031928 (n + 2) : ℚ) / 6⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284531.P18045781472845609006

namespace A284531

/-- `record[A006530(ceil(A031928(n+2)/6))]` -/
def P18045781472845609006.Spec : Prop :=
  ∀ n, P18045781472845609006.a n = A284531 (n + 1)

end A284531

/-! ## A284531.P4097361663764947285

`∩[A164134(n+1), A199717(n+1)]`
-/

namespace A284531.P4097361663764947285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284531.P4097361663764947285

namespace A284531

/-- `∩[A164134(n+1), A199717(n+1)]` -/
def P4097361663764947285.Spec : Prop :=
  ∀ n, (P4097361663764947285.a n : ℤ) = A284531 (n + 1)

end A284531

/-! ## A284531.P2182072806553404851

`p?[A004442(round(A031928(n+1)/6))]`
-/

namespace A284531.P2182072806553404851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A031928 (n + 1) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284531.P2182072806553404851

namespace A284531

/-- `p?[A004442(round(A031928(n+1)/6))]` -/
def P2182072806553404851.Spec : Prop :=
  ∀ n, P2182072806553404851.a n = A284531 (n + 1)

end A284531

/-! ## A284531.P6997353730854093760

`p?[A008620(A328399(A031928(n+1)))]`
-/

namespace A284531.P6997353730854093760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A328399 (A031928 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284531.P6997353730854093760

namespace A284531

/-- `p?[A008620(A328399(A031928(n+1)))]` -/
def P6997353730854093760.Spec : Prop :=
  ∀ n, P6997353730854093760.a n = A284531 (n + 1)

end A284531

/-!
# A284532: The lexicographically earliest sequence of positive integers such that a(1) = a(2) = 1 and a(n + k) != a(n - k) for all k <= a(n).

The programs for A284532, there is no canonical definition to state claims against.
-/

/-! ## A284532.P17505810872801380730

`A046951(n+1)+A001222(A057004(2*(n+2)))`
-/

namespace A284532.P17505810872801380730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + A001222 (A057004 (2 * (n + 2))).toNat

end

end A284532.P17505810872801380730

/-!
# A284533: 0-limiting word of the morphism 0->1, 1->0101.

The programs for A284533, there is no canonical definition to state claims against.
-/

/-! ## A284533.P17938798495979339238

`char[A284535(n+1)-1]`
-/

namespace A284533.P17938798495979339238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284535 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284533.P17938798495979339238

/-! ## A284533.P9069670646833778044

`char[∑[A285421(n+1)]+n]`
-/

namespace A284533.P9069670646833778044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284533.P9069670646833778044

/-! ## A284533.P12043982648576254190

`A285418(A284773(n+1))`
-/

namespace A284533.P12043982648576254190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (A284773 (n + 1)).toNat

end

end A284533.P12043982648576254190

/-! ## A284533.P17690747410854724344

`A285205(A285209(n+1)-1)`
-/

namespace A284533.P17690747410854724344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (A285209 (n + 1) - 1).toNat

end

end A284533.P17690747410854724344

/-! ## A284533.P13580758611827444856

`A285205(A284773(n+2)-2)`
-/

namespace A284533.P13580758611827444856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (A284773 (n + 2) - 2).toNat

end

end A284533.P13580758611827444856

/-! ## A284533.P18021364162411359691

`A285205(eq[0, A285208(n+1)])`
-/

namespace A284533.P18021364162411359691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284533.P18021364162411359691

/-! ## A284533.P14134869628569260581

`A285205(lt[A285208(n+1), 1])`
-/

namespace A284533.P14134869628569260581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284533.P14134869628569260581

/-! ## A284533.P14652286081002811131

`A285205(comp[A285207(n+1)]+1)`
-/

namespace A284533.P14652286081002811131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A284533.P14652286081002811131

/-! ## A284533.P18113117301584474286

`A285205(comp[A285210(n+1)-1])`
-/

namespace A284533.P18113117301584474286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284533.P18113117301584474286

/-! ## A284533.P10777554707233664516

`A285205(record[n/(A285205(n+2)+1)]+1)`
-/

namespace A284533.P10777554707233664516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A285205 (n + 2) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A284533.P10777554707233664516

/-! ## A284533.P5678815110016992440

`A284487(Δ[n²])`
-/

namespace A284533.P5678815110016992440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284533.P5678815110016992440

/-! ## A284533.P10635851129142179235

`and(1, A284487(2*(n+1)))`
-/

namespace A284533.P10635851129142179235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284487 (2 * (n + 1)))

end

end A284533.P10635851129142179235

/-! ## A284533.P13823915037859004814

`and(1, A285140(2*n+1)+5)`
-/

namespace A284533.P13823915037859004814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285140 (2 * n + 1) + 5)

end

end A284533.P13823915037859004814

/-! ## A284533.P7639913038671645347

`floor(sqrt(2*A284487(2*n+1)))`
-/

namespace A284533.P7639913038671645347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A284487 (2 * n + 1))

end

end A284533.P7639913038671645347

/-! ## A284533.P2729860325083741855

`C(A284487(record[xor(1, n)]+1)+1, 2)`
-/

namespace A284533.P2729860325083741855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) + 1).toNat 2

end

end A284533.P2729860325083741855

/-! ## A284533.P11754344152009116518

`and(1, A020639(A285140(Δ[n²])+1))`
-/

namespace A284533.P11754344152009116518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020639 (A285140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat)

end

end A284533.P11754344152009116518

/-! ## A284533.P1552917581437366656

`A284487(2*n+1)+A000007(n+1)`
-/

namespace A284533.P1552917581437366656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (2 * n + 1) + A000007 (n + 1)

end

end A284533.P1552917581437366656

/-! ## A284533.P5156424915336675005

`A284487(2*n+1)+A000038(n+1)`
-/

namespace A284533.P5156424915336675005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (2 * n + 1) + A000038 (n + 1)

end

end A284533.P5156424915336675005

/-! ## A284533.P3404025926409675049

`A284487(2*n+1)*A284487(2*(n+1))`
-/

namespace A284533.P3404025926409675049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (2 * n + 1) * A284487 (2 * (n + 1))

end

end A284533.P3404025926409675049

/-!
# A284534: Positions of 0 in A284533; complement of A284535.

The programs for A284534, there is no canonical definition to state claims against.
-/

/-! ## A284534.P9265951203208873856

`A285423(n+1)+n`
-/

namespace A284534.P9265951203208873856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 1) + (n : ℤ)

end

end A284534.P9265951203208873856

/-! ## A284534.P6836606856716302770

`∑[A285139(n+1)+2]-1`
-/

namespace A284534.P6836606856716302770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284534.P6836606856716302770

/-! ## A284534.P670811948409124714

`ceil(A285144(n+1)/2+n)`
-/

namespace A284534.P670811948409124714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285144 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A284534.P670811948409124714

/-! ## A284534.P3667668974775555048

`(A285419(n+1)+n+1)/2`
-/

namespace A284534.P3667668974775555048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A284534.P3667668974775555048

/-! ## A284534.P15377500811720598152

`A285144(n+1)-∑[char[A285141(n+1)-1]]`
-/

namespace A284534.P15377500811720598152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284534.P15377500811720598152

/-! ## A284534.P11224872303367351911

`A285143(A284492(n+1))/2+n`
-/

namespace A284534.P11224872303367351911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285143 (A284492 (n + 1)).toNat : ℚ) / 2 + (n : ℚ)

end

end A284534.P11224872303367351911

/-! ## A284534.P7283803814117258367

`A284488(2*(n+1))/2`
-/

namespace A284534.P7283803814117258367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284488 (2 * (n + 1)) : ℚ) / 2

end

end A284534.P7283803814117258367

/-! ## A284534.P16376474646881518901

`lt[A284533(n+1), 1]+1`
-/

namespace A284534.P16376474646881518901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284534.P16376474646881518901

/-! ## A284534.P8599380221410406806

`A284589(n+1)-A284533(A284589(n+1))`
-/

namespace A284534.P8599380221410406806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) - A284533 (A284589 (n + 1)).toNat

end

end A284534.P8599380221410406806

/-! ## A284534.P2637710083020926768

`n+1+eq[1, A285142(2*n+1)]`
-/

namespace A284534.P2637710083020926768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284534.P2637710083020926768

/-! ## A284534.P2650812671926818213

`A000463(A285144(n+1))+n`
-/

namespace A284534.P2650812671926818213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285144 (n + 1)).toNat + (n : ℤ)

end

end A284534.P2650812671926818213

/-! ## A284534.P11075606101840984169

`A032742(A285144(n+1)+1)+n`
-/

namespace A284534.P11075606101840984169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A285144 (n + 1) + 1).toNat + (n : ℤ)

end

end A284534.P11075606101840984169

/-! ## A284534.P13612265870362242811

`A110654(A284492(n+1)+n)+n`
-/

namespace A284534.P13612265870362242811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A284492 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

end

end A284534.P13612265870362242811

/-! ## A284534.P1537392035902028213

`A004524(A284492(n+1)+n)+1+n`
-/

namespace A284534.P1537392035902028213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A284492 (n + 1) + (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A284534.P1537392035902028213

/-! ## A284534.P5365390388897164379

`A285420(n+1)-A285421(A285419(n+1))+n`
-/

namespace A284534.P5365390388897164379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 1) - A285421 (A285419 (n + 1)).toNat + (n : ℤ)

end

end A284534.P5365390388897164379

/-! ## A284534.P7852512287346186959

`A285420(n+1)-A285418(A285422(n+1))+n`
-/

namespace A284534.P7852512287346186959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 1) - A285418 (A285422 (n + 1)).toNat + (n : ℤ)

end

end A284534.P7852512287346186959

/-! ## A284534.P4733712500184188124

`record[A032742(A284488(n+1))]`
-/

namespace A284534.P4733712500184188124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284488 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284534.P4733712500184188124

/-! ## A284534.P13573759490499663521

`A032742(A284488(2*(n+1)))`
-/

namespace A284534.P13573759490499663521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284488 (2 * (n + 1))).toNat

end

end A284534.P13573759490499663521

/-! ## A284534.P17616837816127847612

`A004526(A285419(n+1)+1+n)`
-/

namespace A284534.P17616837816127847612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285419 (n + 1) + 1 + (n : ℤ)).toNat

end

end A284534.P17616837816127847612

/-! ## A284534.P15153347396978187225

`eq[A000038(n), A284487(A028310(2*n))]`
-/

namespace A284534.P15153347396978187225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284534.P15153347396978187225

/-!
# A284535: Positions of 1 in A284533; complement of A284534.

The programs for A284535, there is no canonical definition to state claims against.
-/

/-! ## A284535.P5957792296928508273

`A285207(n+1)-n`
-/

namespace A284535.P5957792296928508273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1) - (n : ℤ)

end

end A284535.P5957792296928508273

/-! ## A284535.P11970191160333602811

`∑[A285421(n+1)+1]`
-/

namespace A284535.P11970191160333602811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284535.P11970191160333602811

/-! ## A284535.P6596559985973704632

`comp[abs(1-(A285423(n+1)+n))]+1`
-/

namespace A284535.P6596559985973704632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A285423 (n + 1) + (n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284535.P6596559985973704632

/-! ## A284535.P13980299893539234117

`lt[0, A284533(n+1)]+1`
-/

namespace A284535.P13980299893539234117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284535.P13980299893539234117

/-! ## A284535.P16828649773159093864

`A285420(Δ[n²])-n`
-/

namespace A284535.P16828649773159093864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284535.P16828649773159093864

/-! ## A284535.P13200126801093869949

`∑[A285142(Δ[n²])+1]`
-/

namespace A284535.P13200126801093869949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284535.P13200126801093869949

/-! ## A284535.P6046792917544172901

`A284489(2*(n+1))/2`
-/

namespace A284535.P6046792917544172901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284489 (2 * (n + 1)) : ℚ) / 2

end

end A284535.P6046792917544172901

/-! ## A284535.P10103023200807335620

`∑[(A285142(2*n+1)+1)%3]`
-/

namespace A284535.P10103023200807335620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285142 (2 * n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284535.P10103023200807335620

/-! ## A284535.P15439821940860864706

`A284589(2*n+1)+n-4*n`
-/

namespace A284535.P15439821940860864706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (2 * n + 1) + ((n : ℤ) - (4 * n : ℤ))

end

end A284535.P15439821940860864706

/-! ## A284535.P8290173396289273293

`A284589(n+1+n)-n-n-n`
-/

namespace A284535.P8290173396289273293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1 + n) - (n : ℤ) - (n : ℤ) - (n : ℤ)

end

end A284535.P8290173396289273293

/-! ## A284535.P14734967162556280736

`(A285422(2*(n+1))-(4*n+2))/2`
-/

namespace A284535.P14734967162556280736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285422 (2 * (n + 1)) - (4 * n + 2 : ℤ) : ℚ) / 2

end

end A284535.P14734967162556280736

/-! ## A284535.P12870985364968605820

`(A285141(2*(n+1))+A001489(2*n+1))/2`
-/

namespace A284535.P12870985364968605820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285141 (2 * (n + 1)) + A001489 (2 * n + 1) : ℚ) / 2

end

end A284535.P12870985364968605820

/-! ## A284535.P4099700084032167476

`A001489(2*n+1)+A285422(2*(n+1))/2`
-/

namespace A284535.P4099700084032167476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (2 * n + 1) : ℚ) + (A285422 (2 * (n + 1)) : ℚ) / 2

end

end A284535.P4099700084032167476

/-! ## A284535.P10726508608885350982

`A001489(2*n+1)+A284589(2*(n+1))+A001489(n+1)`
-/

namespace A284535.P10726508608885350982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n + 1) + (A284589 (2 * (n + 1)) + A001489 (n + 1))

end

end A284535.P10726508608885350982

/-! ## A284535.P8069382216631230016

`eq[1, A284487(A028310(2*n))]`
-/

namespace A284535.P8069382216631230016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284535.P8069382216631230016

/-! ## A284535.P3387249741074992980

`eq[1, A284487(A028310(n)+n)]`
-/

namespace A284535.P3387249741074992980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284535.P3387249741074992980

/-! ## A284535.P12547610539188503828

`A000463(A285141(2*n+1))-n`
-/

namespace A284535.P12547610539188503828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285141 (2 * n + 1)).toNat - (n : ℤ)

end

end A284535.P12547610539188503828

/-!
# A284536: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A284536, there is no canonical definition to state claims against.
-/

/-! ## A284536.P10788982679595897673

`A007088(A284538(n))`
-/

namespace A284536.P10788982679595897673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284538 n).toNat

end

end A284536.P10788982679595897673

/-! ## A284536.P8115296169305935594

`A305989(A284539(n))`
-/

namespace A284536.P8115296169305935594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284539 n).toNat

end

end A284536.P8115296169305935594

/-! ## A284536.P7232822315359532078

`A185544(2*A284538(n))`
-/

namespace A284536.P7232822315359532078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284538 n).toNat

end

end A284536.P7232822315359532078

/-! ## A284536.P4504767465335206415

`A185544(lcm(2, A284538(n)))`
-/

namespace A284536.P4504767465335206415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284538 n))

end

end A284536.P4504767465335206415

/-!
# A284537: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A284537, there is no canonical definition to state claims against.
-/

/-! ## A284537.P5312861298502908291

`A007088(A284539(n))`
-/

namespace A284537.P5312861298502908291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284539 n).toNat

end

end A284537.P5312861298502908291

/-! ## A284537.P14689455159131072240

`A305989(A284538(n))`
-/

namespace A284537.P14689455159131072240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284538 n).toNat

end

end A284537.P14689455159131072240

/-! ## A284537.P3490575554254573321

`A185544(2*A284539(n))`
-/

namespace A284537.P3490575554254573321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284539 n).toNat

end

end A284537.P3490575554254573321

/-! ## A284537.P11906050338712345325

`A185544(lcm(2, A284539(n)))`
-/

namespace A284537.P11906050338712345325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284539 n))

end

end A284537.P11906050338712345325

/-! ## A284537.P17559506889950412010

`A185544(A284539(n)+A284539(n))`
-/

namespace A284537.P17559506889950412010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284539 n + A284539 n).toNat

end

end A284537.P17559506889950412010

/-!
# A284538: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A284538, there is no canonical definition to state claims against.
-/

/-! ## A284538.P7575988449686880495

`and(A126646(n), A264618(A284539(n)))`
-/

namespace A284538.P7575988449686880495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284539 n).toNat)

end

end A284538.P7575988449686880495

/-! ## A284538.P6532414393730715520

`A057889(A284539(n))`
-/

namespace A284538.P6532414393730715520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284539 n).toNat

end

end A284538.P6532414393730715520

/-! ## A284538.P4891897613251138804

`A281589(2*A284539(n))`
-/

namespace A284538.P4891897613251138804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284539 n).toNat

end

end A284538.P4891897613251138804

/-! ## A284538.P4734050571499801110

`A325401(2*A284539(n))`
-/

namespace A284538.P4734050571499801110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284539 n).toNat

end

end A284538.P4734050571499801110

/-! ## A284538.P40658519580144620

`A281589(lcm(2, A284539(n)))`
-/

namespace A284538.P40658519580144620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284539 n))

end

end A284538.P40658519580144620

/-!
# A284539: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A284539, there is no canonical definition to state claims against.
-/

/-! ## A284539.P1732401929542608392

`and(A126646(n), A264618(A284538(n)))`
-/

namespace A284539.P1732401929542608392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284538 n).toNat)

end

end A284539.P1732401929542608392

/-! ## A284539.P9399416846753435112

`A057889(A284538(n))`
-/

namespace A284539.P9399416846753435112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284538 n).toNat

end

end A284539.P9399416846753435112

/-! ## A284539.P5532141723079373685

`A281589(2*A284538(n))`
-/

namespace A284539.P5532141723079373685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284538 n).toNat

end

end A284539.P5532141723079373685

/-! ## A284539.P11075721627489599551

`A325401(2*A284538(n))`
-/

namespace A284539.P11075721627489599551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284538 n).toNat

end

end A284539.P11075721627489599551

/-! ## A284539.P14872277410876617751

`A281589(lcm(2, A284538(n)))`
-/

namespace A284539.P14872277410876617751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284538 n))

end

end A284539.P14872277410876617751

/-!
# A284540: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A284540, there is no canonical definition to state claims against.
-/

/-! ## A284540.P10691635831872063086

`A007088(A284542(n))`
-/

namespace A284540.P10691635831872063086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284542 n).toNat

end

end A284540.P10691635831872063086

/-! ## A284540.P6405440777174479861

`A007088(or(A283587(n), A284401(n)))`
-/

namespace A284540.P6405440777174479861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283587 n) (A284401 n)).toNat

end

end A284540.P6405440777174479861

/-! ## A284540.P1780879904921076319

`A007088(or(A283705(n), A284401(n)))`
-/

namespace A284540.P1780879904921076319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283705 n) (A284401 n)).toNat

end

end A284540.P1780879904921076319

/-! ## A284540.P16215052765604415810

`A305989(A284543(n))`
-/

namespace A284540.P16215052765604415810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284543 n).toNat

end

end A284540.P16215052765604415810

/-! ## A284540.P16043364412339100084

`A305989(or(A283588(n), A284402(n)))`
-/

namespace A284540.P16043364412339100084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A283588 n) (A284402 n)).toNat

end

end A284540.P16043364412339100084

/-!
# A284541: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A284541, there is no canonical definition to state claims against.
-/

/-! ## A284541.P14489086048325265295

`A007088(A284543(n))`
-/

namespace A284541.P14489086048325265295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284543 n).toNat

end

end A284541.P14489086048325265295

/-! ## A284541.P12623630044920163887

`A007088(or(A283588(n), A284402(n)))`
-/

namespace A284541.P12623630044920163887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A283588 n) (A284402 n)).toNat

end

end A284541.P12623630044920163887

/-! ## A284541.P5901194500087127704

`A305989(A284542(n))`
-/

namespace A284541.P5901194500087127704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284542 n).toNat

end

end A284541.P5901194500087127704

/-! ## A284541.P3898057542201393406

`A305989(or(A283587(n), A284401(n)))`
-/

namespace A284541.P3898057542201393406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A283587 n) (A284401 n)).toNat

end

end A284541.P3898057542201393406

/-! ## A284541.P13700071285678092864

`A305989(or(A283705(n), A284401(n)))`
-/

namespace A284541.P13700071285678092864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A283705 n) (A284401 n)).toNat

end

end A284541.P13700071285678092864

/-!
# A284542: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A284542, the canonical program `A284542.P5182846709056799887` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284542 has offset 0).

The definition of A284542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284542.P5182846709056799887

`a(n-1)+16*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=29, a(5)=53, a(6)=113, a(7)=219, a(8)=479`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284542

/-- `a(n-1)+16*a(n-4)-16*a(n-5)` -/
def P5182846709056799887.Spec : Prop :=
  ∀ n, P5182846709056799887.a n = A284542 n

theorem P5182846709056799887.correct : P5182846709056799887.Spec := by
  intro n
  simp only [A284542]

end A284542

/-! ## A284542.P13953309871509786166

`or(A283587(n), A284401(n))%(A123704(n+1)+1)²`
-/

namespace A284542.P13953309871509786166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A283587 n) (A284401 n)) ((A123704 (n + 1) + 1) ^ 2)

end

end A284542.P13953309871509786166

namespace A284542

/-- `or(A283587(n), A284401(n))%(A123704(n+1)+1)²` -/
def P13953309871509786166.Spec : Prop :=
  ∀ n, P13953309871509786166.a n = A284542 n

end A284542

/-! ## A284542.P7074642673663054425

`A151838(n)!*or(A283587(n), A284401(n))`
-/

namespace A284542.P7074642673663054425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151838 n).toNat : ℤ) * Int.lor (A283587 n) (A284401 n)

end

end A284542.P7074642673663054425

namespace A284542

/-- `A151838(n)!*or(A283587(n), A284401(n))` -/
def P7074642673663054425.Spec : Prop :=
  ∀ n, P7074642673663054425.a n = A284542 n

end A284542

/-! ## A284542.P3439295093777884327

`A000265(or(A283587(n), A284401(n)))`
-/

namespace A284542.P3439295093777884327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A283587 n) (A284401 n)).toNat

end

end A284542.P3439295093777884327

namespace A284542

/-- `A000265(or(A283587(n), A284401(n)))` -/
def P3439295093777884327.Spec : Prop :=
  ∀ n, P3439295093777884327.a n = A284542 n

end A284542

/-! ## A284542.P12166390582112864336

`A000265(or(A283705(n), A284401(n)))`
-/

namespace A284542.P12166390582112864336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A283705 n) (A284401 n)).toNat

end

end A284542.P12166390582112864336

namespace A284542

/-- `A000265(or(A283705(n), A284401(n)))` -/
def P12166390582112864336.Spec : Prop :=
  ∀ n, P12166390582112864336.a n = A284542 n

end A284542

/-!
# A284543: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A284543, the canonical program `A284543.P1246643379534679113` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284543 has offset 0).

The definition of A284543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284543.P1246643379534679113

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11, a(4)=23, a(5)=43, a(6)=71, a(7)=219, a(8)=503`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284543

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P1246643379534679113.Spec : Prop :=
  ∀ n, P1246643379534679113.a n = A284543 n

theorem P1246643379534679113.correct : P1246643379534679113.Spec := by
  intro n
  simp only [A284543]

end A284543

/-! ## A284543.P16837046283297004181

`A000265(or(A283588(n), A284402(n)))`
-/

namespace A284543.P16837046283297004181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A283588 n) (A284402 n)).toNat

end

end A284543.P16837046283297004181

namespace A284543

/-- `A000265(or(A283588(n), A284402(n)))` -/
def P16837046283297004181.Spec : Prop :=
  ∀ n, P16837046283297004181.a n = A284543 n

end A284543

/-! ## A284543.P3195833425942143203

`A057889(A284542(n))`
-/

namespace A284543.P3195833425942143203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284542 n).toNat

end

end A284543.P3195833425942143203

namespace A284543

/-- `A057889(A284542(n))` -/
def P3195833425942143203.Spec : Prop :=
  ∀ n, P3195833425942143203.a n = A284543 n

end A284543

/-! ## A284543.P17764755290872457624

`A057889(or(A283587(n), A284401(n)))`
-/

namespace A284543.P17764755290872457624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor (A283587 n) (A284401 n)).toNat

end

end A284543.P17764755290872457624

namespace A284543

/-- `A057889(or(A283587(n), A284401(n)))` -/
def P17764755290872457624.Spec : Prop :=
  ∀ n, P17764755290872457624.a n = A284543 n

end A284543

/-! ## A284543.P7341726314229606379

`or(A057889(A283587(n)), A284402(n))`
-/

namespace A284543.P7341726314229606379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057889 (A283587 n).toNat) (A284402 n)

end

end A284543.P7341726314229606379

namespace A284543

/-- `or(A057889(A283587(n)), A284402(n))` -/
def P7341726314229606379.Spec : Prop :=
  ∀ n, P7341726314229606379.a n = A284543 n

end A284543

/-!
# A284544: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A284544, there is no canonical definition to state claims against.
-/

/-! ## A284544.P11103075159769065058

`A007088(A284546(n))`
-/

namespace A284544.P11103075159769065058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284546 n).toNat

end

end A284544.P11103075159769065058

/-! ## A284544.P12185886782863166222

`A305989(A284547(n))`
-/

namespace A284544.P12185886782863166222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284547 n).toNat

end

end A284544.P12185886782863166222

/-! ## A284544.P18004456330711418723

`A185544(2*A284546(n))`
-/

namespace A284544.P18004456330711418723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284546 n).toNat

end

end A284544.P18004456330711418723

/-! ## A284544.P3913399450301042125

`A185544(lcm(2, A284546(n)))`
-/

namespace A284544.P3913399450301042125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284546 n))

end

end A284544.P3913399450301042125

/-!
# A284545: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A284545, there is no canonical definition to state claims against.
-/

/-! ## A284545.P16191605293170813293

`A007088(A284547(n))`
-/

namespace A284545.P16191605293170813293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284547 n).toNat

end

end A284545.P16191605293170813293

/-! ## A284545.P412942664243730239

`A305989(A284546(n))`
-/

namespace A284545.P412942664243730239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284546 n).toNat

end

end A284545.P412942664243730239

/-! ## A284545.P18007224180952885539

`A185544(2*A284547(n))`
-/

namespace A284545.P18007224180952885539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284547 n).toNat

end

end A284545.P18007224180952885539

/-! ## A284545.P8308170591474338622

`A185544(lcm(2, A284547(n)))`
-/

namespace A284545.P8308170591474338622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284547 n))

end

end A284545.P8308170591474338622

/-!
# A284546: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A284546, there is no canonical definition to state claims against.
-/

/-! ## A284546.P11194811962871431288

`and(A126646(n), A264618(A284547(n)))`
-/

namespace A284546.P11194811962871431288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284547 n).toNat)

end

end A284546.P11194811962871431288

/-! ## A284546.P4886894416038961460

`A057889(A284547(n))`
-/

namespace A284546.P4886894416038961460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284547 n).toNat

end

end A284546.P4886894416038961460

/-! ## A284546.P5584351664989546740

`A325401(2*A284547(n))`
-/

namespace A284546.P5584351664989546740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284547 n).toNat

end

end A284546.P5584351664989546740

/-! ## A284546.P7814734409301463116

`A325401(lcm(2, A284547(n)))`
-/

namespace A284546.P7814734409301463116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A284547 n))

end

end A284546.P7814734409301463116

/-! ## A284546.P555636624423500925

`A030101(or(1, A284547(n)))`
-/

namespace A284546.P555636624423500925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284547 n)).toNat

end

end A284546.P555636624423500925

/-!
# A284547: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A284547, there is no canonical definition to state claims against.
-/

/-! ## A284547.P848477288433169178

`and(A126646(n), A264618(A284546(n)))`
-/

namespace A284547.P848477288433169178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284546 n).toNat)

end

end A284547.P848477288433169178

/-! ## A284547.P11822088469278604853

`A057889(A284546(n))`
-/

namespace A284547.P11822088469278604853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284546 n).toNat

end

end A284547.P11822088469278604853

/-! ## A284547.P16890419310352087809

`A325401(A240071(n+1)*A284546(n))`
-/

namespace A284547.P16890419310352087809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A240071 (n + 1) * A284546 n).toNat

end

end A284547.P16890419310352087809

/-! ## A284547.P12144162034694526147

`A325401(lcm(A240071(n+1), A284546(n)))`
-/

namespace A284547.P12144162034694526147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A240071 (n + 1)) (A284546 n))

end

end A284547.P12144162034694526147

/-! ## A284547.P17067071335444909437

`A325401(2*A284546(n))`
-/

namespace A284547.P17067071335444909437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284546 n).toNat

end

end A284547.P17067071335444909437

/-!
# A284550: Integers n such that prime(n) + prime(n+1) + prime(n+2) + prime(n+3) + prime(n)*prime(n+1)*prime(n+2)*prime(n+3) is prime.

The programs for A284550, there is no canonical definition to state claims against.
-/

/-! ## A284550.P5353988758891732743

`A000720(A390930(n+1))`
-/

namespace A284550.P5353988758891732743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A390930 (n + 1)).toNat

end

end A284550.P5353988758891732743

/-!
# A284551: Triangular array read by rows, demonstrating that the difference between a pentagonal number (left edge of triangle) and a square (right edge) is a triangular number.

The programs for A284551, the canonical program `A284551.P18100560501600792267` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284551 has offset 1).

The definition of A284551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284551.P18100560501600792267

`((row(n)+1)*(3*(row(n)+1)-1)-(col(n)+1)*col(n))/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284551

/-- `((row(n)+1)*(3*(row(n)+1)-1)-(col(n)+1)*col(n))/2` -/
def P18100560501600792267.Spec : Prop :=
  ∀ n, P18100560501600792267.a n = (A284551 (n + 1) : ℚ)

end A284551

/-! ## A284551.P12816546348168777326

`A049780(n)+∑[char[∑[n]]]²`
-/

namespace A284551.P12816546348168777326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A284551.P12816546348168777326

namespace A284551

/-- `A049780(n)+∑[char[∑[n]]]²` -/
def P12816546348168777326.Spec : Prop :=
  ∀ n, P12816546348168777326.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P14406727258561533056

`A343752(n+1)%(n+1)+∑[char[∑[n]]]²`
-/

namespace A284551.P14406727258561533056
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343752 (n + 1)) (n + 1 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A284551.P14406727258561533056

namespace A284551

/-- `A343752(n+1)%(n+1)+∑[char[∑[n]]]²` -/
def P14406727258561533056.Spec : Prop :=
  ∀ n, P14406727258561533056.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P10523587828803923888

`A104587(n)+A079904(n)`
-/

namespace A284551.P10523587828803923888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n + A079904 n

end

end A284551.P10523587828803923888

namespace A284551

/-- `A104587(n)+A079904(n)` -/
def P10523587828803923888.Spec : Prop :=
  ∀ n, P10523587828803923888.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P17515105131901585977

`A093995(n+1)+A049780(n)`
-/

namespace A284551.P17515105131901585977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A049780 n

end

end A284551.P17515105131901585977

namespace A284551

/-- `A093995(n+1)+A049780(n)` -/
def P17515105131901585977.Spec : Prop :=
  ∀ n, P17515105131901585977.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P7901567965569806652

`A131819(n+1)+A056942(n)`
-/

namespace A284551.P7901567965569806652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131819 (n + 1) + A056942 n

end

end A284551.P7901567965569806652

namespace A284551

/-- `A131819(n+1)+A056942(n)` -/
def P7901567965569806652.Spec : Prop :=
  ∀ n, P7901567965569806652.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P10494406034520032324

`A131783(n+1)+A063656(n)`
-/

namespace A284551.P10494406034520032324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + A063656 n

end

end A284551.P10494406034520032324

namespace A284551

/-- `A131783(n+1)+A063656(n)` -/
def P10494406034520032324.Spec : Prop :=
  ∀ n, P10494406034520032324.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P6568807658595051375

`A131416(n+1)+A073254(n)`
-/

namespace A284551.P6568807658595051375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131416 (n + 1) + A073254 n

end

end A284551.P6568807658595051375

namespace A284551

/-- `A131416(n+1)+A073254(n)` -/
def P6568807658595051375.Spec : Prop :=
  ∀ n, P6568807658595051375.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P14900739605183077523

`A365904(n+1)+A057944(n)`
-/

namespace A284551.P14900739605183077523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365904 (n + 1) + A057944 n

end

end A284551.P14900739605183077523

namespace A284551

/-- `A365904(n+1)+A057944(n)` -/
def P14900739605183077523.Spec : Prop :=
  ∀ n, P14900739605183077523.a n = A284551 (n + 1)

end A284551

/-! ## A284551.P825850079548814128

`A265129(n+1)+A049780(n)-1`
-/

namespace A284551.P825850079548814128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) + (A049780 n - 1)

end

end A284551.P825850079548814128

namespace A284551

/-- `A265129(n+1)+A049780(n)-1` -/
def P825850079548814128.Spec : Prop :=
  ∀ n, P825850079548814128.a n = A284551 (n + 1)

end A284551

/-!
# A284552: a(n) = A065621(n) modulo n.

The programs for A284552, the canonical program `A284552.P15904435383233269355` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284552 has offset 1).

The definition of A284552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284552.P15904435383233269355

`xor(n, Δ[n²])%(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284552

/-- `xor(n, Δ[n²])%(n+1)` -/
def P15904435383233269355.Spec : Prop :=
  ∀ n, P15904435383233269355.a n = A284552 (n + 1)

theorem P15904435383233269355.correct : P15904435383233269355.Spec := by
  intro n
  simp only [A284552, Nat.add_sub_cancel]

end A284552

/-! ## A284552.P114971100284228812

`abs(xor(n, 2*n+1)%-(n+1))`
-/

namespace A284552.P114971100284228812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Nat.xor n (2 * n + 1) : ℤ) (-(n + 1 : ℤ))|

end

end A284552.P114971100284228812

namespace A284552

/-- `abs(xor(n, 2*n+1)%-(n+1))` -/
def P114971100284228812.Spec : Prop :=
  ∀ n, P114971100284228812.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P9562768829885485970

`(xor(2*n+1, n+1)+1)%(n+1)`
-/

namespace A284552.P9562768829885485970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n + 1) (n + 1) + 1) % (n + 1)

end

end A284552.P9562768829885485970

namespace A284552

/-- `(xor(2*n+1, n+1)+1)%(n+1)` -/
def P9562768829885485970.Spec : Prop :=
  ∀ n, (P9562768829885485970.a n : ℤ) = A284552 (n + 1)

end A284552

/-! ## A284552.P11726643121654074183

`((n-1)*and(2*n+1, n+1))%(n+1)`
-/

namespace A284552.P11726643121654074183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 1) * (Nat.land (2 * n + 1) (n + 1) : ℤ)) (n + 1 : ℤ)

end

end A284552.P11726643121654074183

namespace A284552

/-- `((n-1)*and(2*n+1, n+1))%(n+1)` -/
def P11726643121654074183.Spec : Prop :=
  ∀ n, P11726643121654074183.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P15002036231759179740

`A065621(n+1)%(n+1)`
-/

namespace A284552.P15002036231759179740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065621 (n + 1)) (n + 1 : ℤ)

end

end A284552.P15002036231759179740

namespace A284552

/-- `A065621(n+1)%(n+1)` -/
def P15002036231759179740.Spec : Prop :=
  ∀ n, P15002036231759179740.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P815579187193811153

`A003188(2*n+1)%(n+1)`
-/

namespace A284552.P815579187193811153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (2 * n + 1)) (n + 1 : ℤ)

end

end A284552.P815579187193811153

namespace A284552

/-- `A003188(2*n+1)%(n+1)` -/
def P815579187193811153.Spec : Prop :=
  ∀ n, P815579187193811153.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P2392963741743451779

`A213064(2*n+1)%(n+1)`
-/

namespace A284552.P2392963741743451779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213064 (2 * n + 1)) (n + 1 : ℤ)

end

end A284552.P2392963741743451779

namespace A284552

/-- `A213064(2*n+1)%(n+1)` -/
def P2392963741743451779.Spec : Prop :=
  ∀ n, P2392963741743451779.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P11583079456123869523

`A341915(A145341(n+1))%(n+1)`
-/

namespace A284552.P11583079456123869523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341915 (A145341 (n + 1)).toNat) (n + 1 : ℤ)

end

end A284552.P11583079456123869523

namespace A284552

/-- `A341915(A145341(n+1))%(n+1)` -/
def P11583079456123869523.Spec : Prop :=
  ∀ n, P11583079456123869523.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P2163334679379727164

`A284270(∑[n+1])`
-/

namespace A284552.P2163334679379727164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284552.P2163334679379727164

namespace A284552

/-- `A284270(∑[n+1])` -/
def P2163334679379727164.Spec : Prop :=
  ∀ n, P2163334679379727164.a n = A284552 (n + 1)

end A284552

/-! ## A284552.P18214804768459194035

`A284269(∑[n]+1)`
-/

namespace A284552.P18214804768459194035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284552.P18214804768459194035

namespace A284552

/-- `A284269(∑[n]+1)` -/
def P18214804768459194035.Spec : Prop :=
  ∀ n, P18214804768459194035.a n = A284552 (n + 1)

end A284552

/-!
# A284553: Prime factorization representation of Stern polynomials B(n,x) with only the even powers of x present: a(n) = A247503(A260443(n)).

The programs for A284553, there is no canonical definition to state claims against.
-/

/-! ## A284553.P1820011817090118960

`A260443(n)/A284554(n)`
-/

namespace A284553.P1820011817090118960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 n : ℚ) / (A284554 n : ℚ)

end

end A284553.P1820011817090118960

/-! ## A284553.P4262538118352180171

`A064989(A284554(2*n))`
-/

namespace A284553.P4262538118352180171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A284554 (2 * n)).toNat

end

end A284553.P4262538118352180171

/-! ## A284553.P18352142765369956379

`A247503(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284553.P18352142765369956379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A260443 n).toNat

end

end A284553.P18352142765369956379

/-! ## A284553.P9294608768459577231

`A284563(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A284553.P9294608768459577231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A284563 (n - 1) : ℚ) / a (n - 1)

end

end A284553.P9294608768459577231

/-! ## A284553.P4840122712852162939

`gcd(A260443(n), A284563(n))`
-/

namespace A284553.P4840122712852162939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260443 n) (A284563 n)

end

end A284553.P4840122712852162939

/-! ## A284553.P11938582941943743029

`A277330(n)*A283989(n)/A284554(n)`
-/

namespace A284553.P11938582941943743029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 n * A283989 n : ℚ) / (A284554 n : ℚ)

end

end A284553.P11938582941943743029

/-! ## A284553.P9634082800068797076

`A277330(n)/A284554(n)*A283983(n)²`
-/

namespace A284553.P9634082800068797076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 n : ℚ) / (A284554 n : ℚ) * (A283983 n ^ 2 : ℚ)

end

end A284553.P9634082800068797076

/-! ## A284553.P13735148584768455616

`(∑[A277197(n)]+1-A277197(n))/A284554(n)`
-/

namespace A284553.P13735148584768455616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (1 - A277197 n) : ℤ) : ℚ) / (A284554 n : ℚ)

end

end A284553.P13735148584768455616

/-! ## A284553.P4094139050432090825

`lcm(A260443(n), A284564(n))/A284564(n)`
-/

namespace A284553.P4094139050432090825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A260443 n) (A284564 n) : ℚ) / (A284564 n : ℚ)

end

end A284553.P4094139050432090825

/-!
# A284554: Prime factorization representation of Stern polynomials B(n,x) with only the odd powers of x present: a(n) = A248101(A260443(n)).

The programs for A284554, there is no canonical definition to state claims against.
-/

/-! ## A284554.P11404712843967027337

`A260443(n)/A284553(n)`
-/

namespace A284554.P11404712843967027337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 n : ℚ) / (A284553 n : ℚ)

end

end A284554.P11404712843967027337

/-! ## A284554.P8967414847495542120

`A064989(A284553(2*n))`
-/

namespace A284554.P8967414847495542120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A284553 (2 * n)).toNat

end

end A284554.P8967414847495542120

/-! ## A284554.P9586919283744560279

`A248101(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284554.P9586919283744560279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A260443 n).toNat

end

end A284554.P9586919283744560279

/-! ## A284554.P5681365429550681332

`A284564(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A284554.P5681365429550681332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A284564 (n - 1) : ℚ) / a (n - 1)

end

end A284554.P5681365429550681332

/-! ## A284554.P694419932489991383

`gcd(A260443(n), A284564(n))`
-/

namespace A284554.P694419932489991383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260443 n) (A284564 n)

end

end A284554.P694419932489991383

/-! ## A284554.P4484388871127430954

`A277330(n)*A283989(n)/A284553(n)`
-/

namespace A284554.P4484388871127430954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 n * A283989 n : ℚ) / (A284553 n : ℚ)

end

end A284554.P4484388871127430954

/-! ## A284554.P8560924215480669580

`A277330(n)/A284553(n)*A283983(n)²`
-/

namespace A284554.P8560924215480669580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 n : ℚ) / (A284553 n : ℚ) * (A283983 n ^ 2 : ℚ)

end

end A284554.P8560924215480669580

/-! ## A284554.P1397523505376939000

`lcm(A260443(n), A284563(n))/A284563(n)`
-/

namespace A284554.P1397523505376939000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A260443 n) (A284563 n) : ℚ) / (A284563 n : ℚ)

end

end A284554.P1397523505376939000

/-!
# A284555: Positions of zeros in A284557.

The programs for A284555, the canonical program `A284555.P18280556964026014776` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284555 has offset 0).

The definition of A284555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284555.P664901751433780379

`eq[0, A284557(n)]`
-/

namespace A284555.P664901751433780379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P664901751433780379

namespace A284555

/-- `eq[0, A284557(n)]` -/
def P664901751433780379.Spec : Prop :=
  ∀ n, (P664901751433780379.a n : ℤ) = A284555 n

theorem P664901751433780379.correct : P664901751433780379.Spec := by
  intro n
  simp only [A284555, Nat.add_sub_cancel, A284555.P664901751433780379.f1, A284555.P664901751433780379.f2, A284555.P664901751433780379.a, A284555.P18280556964026014776.f1, A284555.P18280556964026014776.f2, A284555.P18280556964026014776.a, A048727, A048727.P3236370101091825872.a, A284557, A284557.P9411246127359810739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284555

/-! ## A284555.P18280556964026014776

`eq[0, A048727(n)%3]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284555

/-- `eq[0, A048727(n)%3]` -/
def P18280556964026014776.Spec : Prop :=
  ∀ n, (P18280556964026014776.a n : ℤ) = A284555 n

theorem P18280556964026014776.correct : P18280556964026014776.Spec := by
  intro n
  simp only [A284555]

end A284555

/-! ## A284555.P4897172394882748095

`record[(n+1)*(1-A284557(n+1))]`
-/

namespace A284555.P4897172394882748095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A284557 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284555.P4897172394882748095

namespace A284555

/-- `record[(n+1)*(1-A284557(n+1))]` -/
def P4897172394882748095.Spec : Prop :=
  ∀ n, P4897172394882748095.a n = A284555 n

end A284555

/-! ## A284555.P5524083209699442684

`eq[0, (A048733(n)-(n+1)^7+1)%3]`
-/

namespace A284555.P5524083209699442684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048733 n - ((n + 1) ^ 7 : ℤ) + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P5524083209699442684

namespace A284555

/-- `eq[0, (A048733(n)-(n+1)^7+1)%3]` -/
def P5524083209699442684.Spec : Prop :=
  ∀ n, (P5524083209699442684.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P15724797663643142217

`lt[A284557(n), A284562(A284559(n))]`
-/

namespace A284555.P15724797663643142217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A284559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P15724797663643142217

namespace A284555

/-- `lt[A284557(n), A284562(A284559(n))]` -/
def P15724797663643142217.Spec : Prop :=
  ∀ n, (P15724797663643142217.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P1335846924495464458

`lt[A284557(n), A284562(A284569(n))]`
-/

namespace A284555.P1335846924495464458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A284569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P1335846924495464458

namespace A284555

/-- `lt[A284557(n), A284562(A284569(n))]` -/
def P1335846924495464458.Spec : Prop :=
  ∀ n, (P1335846924495464458.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P6338665271412095340

`eq[0, xor(n, A003188(4*n))%3]`
-/

namespace A284555.P6338665271412095340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A003188 (4 * n))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P6338665271412095340

namespace A284555

/-- `eq[0, xor(n, A003188(4*n))%3]` -/
def P6338665271412095340.Spec : Prop :=
  ∀ n, (P6338665271412095340.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P14241015224340712964

`lt[A284557(n), A284505(A284507(n+1))]`
-/

namespace A284555.P14241015224340712964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (A284507 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P14241015224340712964

namespace A284555

/-- `lt[A284557(n), A284505(A284507(n+1))]` -/
def P14241015224340712964.Spec : Prop :=
  ∀ n, (P14241015224340712964.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P10236102196881826757

`lt[A284557(n), A284533(A284535(n+1))]`
-/

namespace A284555.P10236102196881826757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (A284535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P10236102196881826757

namespace A284555

/-- `lt[A284557(n), A284533(A284535(n+1))]` -/
def P10236102196881826757.Spec : Prop :=
  ∀ n, (P10236102196881826757.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P5277420312406254272

`lt[A284557(n), A284527(A284529(n+1))]`
-/

namespace A284555.P5277420312406254272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A284529 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P5277420312406254272

namespace A284555

/-- `lt[A284557(n), A284527(A284529(n+1))]` -/
def P5277420312406254272.Spec : Prop :=
  ∀ n, (P5277420312406254272.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P13695201059345216577

`lt[A284557(n), A284508(A284510(n+1))]`
-/

namespace A284555.P13695201059345216577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (A284510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P13695201059345216577

namespace A284555

/-- `lt[A284557(n), A284508(A284510(n+1))]` -/
def P13695201059345216577.Spec : Prop :=
  ∀ n, (P13695201059345216577.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P16918898415149556861

`eq[1, A158613(xor(n, A003188(4*n)))]`
-/

namespace A284555.P16918898415149556861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158613 (Int.xor (n : ℤ) (A003188 (4 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P16918898415149556861

namespace A284555

/-- `eq[1, A158613(xor(n, A003188(4*n)))]` -/
def P16918898415149556861.Spec : Prop :=
  ∀ n, (P16918898415149556861.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P7133610458185365815

`eq[A000007(n), A267208(A048727(n))]`
-/

namespace A284555.P7133610458185365815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 (A048727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284555.P7133610458185365815

namespace A284555

/-- `eq[A000007(n), A267208(A048727(n))]` -/
def P7133610458185365815.Spec : Prop :=
  ∀ n, (P7133610458185365815.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P16462497625220392746

`eq[A130794(A342698(4*n)), A130794(n)]`
-/

namespace A284555.P16462497625220392746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130794 (A342698 (4 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284555.P16462497625220392746

namespace A284555

/-- `eq[A130794(A342698(4*n)), A130794(n)]` -/
def P16462497625220392746.Spec : Prop :=
  ∀ n, (P16462497625220392746.a n : ℤ) = A284555 n

end A284555

/-! ## A284555.P8894514452619963818

`lt[A284557(n), A001222(A284531(n+1))]`
-/

namespace A284555.P8894514452619963818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284531 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284555.P8894514452619963818

namespace A284555

/-- `lt[A284557(n), A001222(A284531(n+1))]` -/
def P8894514452619963818.Spec : Prop :=
  ∀ n, (P8894514452619963818.a n : ℤ) = A284555 n

end A284555

/-!
# A284556: Sequence c of the mutual recurrence pair: b(0) = 0, b(1) = 1, b(2n) = c(n), b(2n+1) = b(n) + b(n+1), c(0) = c(1) = 0, c(2n) = b(n), c(2n+1) = c(n) + c(n+1).

The programs for A284556, the canonical program `A284556.P13375523094989058147` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284556 has offset 0).

The definition of A284556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284556.P13375523094989058147

`(A002487(n)-A102283(n))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284556

/-- `(A002487(n)-A102283(n))/2` -/
def P13375523094989058147.Spec : Prop :=
  ∀ n, P13375523094989058147.a n = (A284556 n : ℚ)

end A284556

/-! ## A284556.P9713730993822463120

`A001222(A284554(n))`
-/

namespace A284556.P9713730993822463120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284554 n).toNat

end

end A284556.P9713730993822463120

namespace A284556

/-- `A001222(A284554(n))` -/
def P9713730993822463120.Spec : Prop :=
  ∀ n, P9713730993822463120.a n = A284556 n

end A284556

/-! ## A284556.P17986475496735418926

`A284566(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A284556.P17986475496735418926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284566 (n - 1) - a (n - 1)

end

end A284556.P17986475496735418926

namespace A284556

/-- `A284566(n-1)-a(n-1)` -/
def P17986475496735418926.Spec : Prop :=
  ∀ n, P17986475496735418926.a n = A284556 n

end A284556

/-! ## A284556.P7918050933564987103

`A110654(A002487(n)-A102283(n))`
-/

namespace A284556.P7918050933564987103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002487 n - A102283 n).toNat

end

end A284556.P7918050933564987103

namespace A284556

/-- `A110654(A002487(n)-A102283(n))` -/
def P7918050933564987103.Spec : Prop :=
  ∀ n, P7918050933564987103.a n = A284556 n

end A284556

/-! ## A284556.P3857560469480819401

`A000360(n)+A002487(n)-A284565(n)`
-/

namespace A284556.P3857560469480819401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n + (A002487 n - A284565 n)

end

end A284556.P3857560469480819401

namespace A284556

/-- `A000360(n)+A002487(n)-A284565(n)` -/
def P3857560469480819401.Spec : Prop :=
  ∀ n, P3857560469480819401.a n = A284556 n

end A284556

/-! ## A284556.P2531320924082206438

`A000360(n)+A284566(n)-A002487(n+1)`
-/

namespace A284556.P2531320924082206438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n + (A284566 n - A002487 (n + 1))

end

end A284556.P2531320924082206438

namespace A284556

/-- `A000360(n)+A284566(n)-A002487(n+1)` -/
def P2531320924082206438.Spec : Prop :=
  ∀ n, P2531320924082206438.a n = A284556 n

end A284556

/-! ## A284556.P11257541290904669348

`A057078(n+1)+A284565(n)-A000360(n)`
-/

namespace A284556.P11257541290904669348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + (A284565 n - A000360 n)

end

end A284556.P11257541290904669348

namespace A284556

/-- `A057078(n+1)+A284565(n)-A000360(n)` -/
def P11257541290904669348.Spec : Prop :=
  ∀ n, P11257541290904669348.a n = A284556 n

end A284556

/-! ## A284556.P5840268753994870754

`A000360(n+1)+A000360(n)-A288003(n+1)`
-/

namespace A284556.P5840268753994870754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (n + 1) + (A000360 n - A288003 (n + 1))

end

end A284556.P5840268753994870754

namespace A284556

/-- `A000360(n+1)+A000360(n)-A288003(n+1)` -/
def P5840268753994870754.Spec : Prop :=
  ∀ n, P5840268753994870754.a n = A284556 n

end A284556

/-! ## A284556.P5498543728611364627

`A287896(n+1)-A284566(n+1)`
-/

namespace A284556.P5498543728611364627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - A284566 (n + 1)

end

end A284556.P5498543728611364627

namespace A284556

/-- `A287896(n+1)-A284566(n+1)` -/
def P5498543728611364627.Spec : Prop :=
  ∀ n, P5498543728611364627.a n = A284556 n

end A284556

/-! ## A284556.P16560550408783248804

`A000360(n+1)+A284565(n)-A284566(n+1)`
-/

namespace A284556.P16560550408783248804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (n + 1) + (A284565 n - A284566 (n + 1))

end

end A284556.P16560550408783248804

namespace A284556

/-- `A000360(n+1)+A284565(n)-A284566(n+1)` -/
def P16560550408783248804.Spec : Prop :=
  ∀ n, P16560550408783248804.a n = A284556 n

end A284556

/-! ## A284556.P18205551740443183682

`A000360(2*n)+A000360(n+1)-A284566(n+1)`
-/

namespace A284556.P18205551740443183682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n) + (A000360 (n + 1) - A284566 (n + 1))

end

end A284556.P18205551740443183682

namespace A284556

/-- `A000360(2*n)+A000360(n+1)-A284566(n+1)` -/
def P18205551740443183682.Spec : Prop :=
  ∀ n, P18205551740443183682.a n = A284556 n

end A284556

/-! ## A284556.P1763958281037208241

`A284565(2*n)-A284565(n)`
-/

namespace A284556.P1763958281037208241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (2 * n) - A284565 n

end

end A284556.P1763958281037208241

namespace A284556

/-- `A284565(2*n)-A284565(n)` -/
def P1763958281037208241.Spec : Prop :=
  ∀ n, P1763958281037208241.a n = A284556 n

end A284556

/-! ## A284556.P15617836725076340242

`A284566(n)-A000360(2*n+1)`
-/

namespace A284556.P15617836725076340242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 n - A000360 (2 * n + 1)

end

end A284556.P15617836725076340242

namespace A284556

/-- `A284566(n)-A000360(2*n+1)` -/
def P15617836725076340242.Spec : Prop :=
  ∀ n, P15617836725076340242.a n = A284556 n

end A284556

/-! ## A284556.P16186415026644120684

`A284566(2*n+1)-A002487(n+1)`
-/

namespace A284556.P16186415026644120684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 (2 * n + 1) - A002487 (n + 1)

end

end A284556.P16186415026644120684

namespace A284556

/-- `A284566(2*n+1)-A002487(n+1)` -/
def P16186415026644120684.Spec : Prop :=
  ∀ n, P16186415026644120684.a n = A284556 n

end A284556

/-! ## A284556.P3458128199291689196

`A000360(2*(n+1))-A288003(n+1)`
-/

namespace A284556.P3458128199291689196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * (n + 1)) - A288003 (n + 1)

end

end A284556.P3458128199291689196

namespace A284556

/-- `A000360(2*(n+1))-A288003(n+1)` -/
def P3458128199291689196.Spec : Prop :=
  ∀ n, P3458128199291689196.a n = A284556 n

end A284556

/-! ## A284556.P9307881021610244754

`A110654(A102283(2*n)+A002487(n))`
-/

namespace A284556.P9307881021610244754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102283 (2 * n) + A002487 n).toNat

end

end A284556.P9307881021610244754

namespace A284556

/-- `A110654(A102283(2*n)+A002487(n))` -/
def P9307881021610244754.Spec : Prop :=
  ∀ n, P9307881021610244754.a n = A284556 n

end A284556

/-! ## A284556.P1647352092406547955

`A007306(n+1)-(A000360(2*n+1)+A000360(2*n))`
-/

namespace A284556.P1647352092406547955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - (A000360 (2 * n + 1) + A000360 (2 * n))

end

end A284556.P1647352092406547955

namespace A284556

/-- `A007306(n+1)-(A000360(2*n+1)+A000360(2*n))` -/
def P1647352092406547955.Spec : Prop :=
  ∀ n, P1647352092406547955.a n = A284556 n

end A284556

/-! ## A284556.P16645448293269572346

`A000360(2*n)-(A010892(2*n)+A000360(2*n+1))`
-/

namespace A284556.P16645448293269572346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n) - (A010892 (2 * n) + A000360 (2 * n + 1))

end

end A284556.P16645448293269572346

namespace A284556

/-- `A000360(2*n)-(A010892(2*n)+A000360(2*n+1))` -/
def P16645448293269572346.Spec : Prop :=
  ∀ n, P16645448293269572346.a n = A284556 n

end A284556

/-! ## A284556.P11444288470035791847

`A127971(2*n)-(A000360(2*n+1)+A000360(2*n))`
-/

namespace A284556.P11444288470035791847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - (A000360 (2 * n + 1) + A000360 (2 * n))

end

end A284556.P11444288470035791847

namespace A284556

/-- `A127971(2*n)-(A000360(2*n+1)+A000360(2*n))` -/
def P11444288470035791847.Spec : Prop :=
  ∀ n, P11444288470035791847.a n = A284556 n

end A284556

/-! ## A284556.P11665892468587101059

`A002487(2*n+1)-(A000360(2*n+1)+A000360(2*n))`
-/

namespace A284556.P11665892468587101059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - (A000360 (2 * n + 1) + A000360 (2 * n))

end

end A284556.P11665892468587101059

namespace A284556

/-- `A002487(2*n+1)-(A000360(2*n+1)+A000360(2*n))` -/
def P11665892468587101059.Spec : Prop :=
  ∀ n, P11665892468587101059.a n = A284556 n

end A284556

/-!
# A284557: a(n) = A048727(n) mod 3.

The programs for A284557, the canonical program `A284557.P9411246127359810739` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284557 has offset 0).

The definition of A284557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048727, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284557.P9411246127359810739

`A048727(n)%3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284557

/-- `A048727(n)%3` -/
def P9411246127359810739.Spec : Prop :=
  ∀ n, P9411246127359810739.a n = A284557 n

theorem P9411246127359810739.correct : P9411246127359810739.Spec := by
  intro n
  simp only [A284557]

end A284557

/-! ## A284557.P5347730521274226195

`xor(n, 2*xor(n, 2*n))%3`
-/

namespace A284557.P5347730521274226195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.xor n (2 * n)) % 3

end

end A284557.P5347730521274226195

namespace A284557

/-- `xor(n, 2*xor(n, 2*n))%3` -/
def P5347730521274226195.Spec : Prop :=
  ∀ n, (P5347730521274226195.a n : ℤ) = A284557 n

end A284557

/-! ## A284557.P10390933236571436029

`xor(2*n, A048725(n))%3`
-/

namespace A284557.P10390933236571436029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (2 * n : ℤ) (A048725 n)) 3

end

end A284557.P10390933236571436029

namespace A284557

/-- `xor(2*n, A048725(n))%3` -/
def P10390933236571436029.Spec : Prop :=
  ∀ n, P10390933236571436029.a n = A284557 n

end A284557

/-! ## A284557.P11428302422820334899

`xor(n, A003188(4*n))%3`
-/

namespace A284557.P11428302422820334899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A003188 (4 * n))) 3

end

end A284557.P11428302422820334899

namespace A284557

/-- `xor(n, A003188(4*n))%3` -/
def P11428302422820334899.Spec : Prop :=
  ∀ n, P11428302422820334899.a n = A284557 n

end A284557

/-! ## A284557.P17706561757333848322

`xor(n, A048724(2*n))%3`
-/

namespace A284557.P17706561757333848322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A048724 (2 * n))) 3

end

end A284557.P17706561757333848322

namespace A284557

/-- `xor(n, A048724(2*n))%3` -/
def P17706561757333848322.Spec : Prop :=
  ∀ n, P17706561757333848322.a n = A284557 n

end A284557

/-! ## A284557.P15518972435970242106

`A010872(A048727(n))`
-/

namespace A284557.P15518972435970242106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048727 n).toNat

end

end A284557.P15518972435970242106

namespace A284557

/-- `A010872(A048727(n))` -/
def P15518972435970242106.Spec : Prop :=
  ∀ n, P15518972435970242106.a n = A284557 n

end A284557

/-! ## A284557.P3364539241887423004

`A284270(∑[n+1]+3)`
-/

namespace A284557.P3364539241887423004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A284557.P3364539241887423004

namespace A284557

/-- `A284270(∑[n+1]+3)` -/
def P3364539241887423004.Spec : Prop :=
  ∀ n, P3364539241887423004.a n = A284557 n

end A284557

/-! ## A284557.P1296283794097269475

`A284269(∑[n+2]-1)`
-/

namespace A284557.P1296283794097269475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A284557.P1296283794097269475

namespace A284557

/-- `A284269(∑[n+2]-1)` -/
def P1296283794097269475.Spec : Prop :=
  ∀ n, P1296283794097269475.a n = A284557 n

end A284557

/-!
# A284558: Product / LCM of run lengths in binary representation of n: a(n) = A167489(n) / A284559(n).

The programs for A284558, there is no canonical definition to state claims against.
-/

/-! ## A284558.P13323961933581922707

`A167489(n)/A284559(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284558.P13323961933581922707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284559 n : ℚ)

end

end A284558.P13323961933581922707

/-! ## A284558.P12348885866792014571

`A290104(A382255(n))`
-/

namespace A284558.P12348885866792014571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A382255 n).toNat

end

end A284558.P12348885866792014571

/-! ## A284558.P9871259920552121034

`A227355(A227352(2*n))/A284559(n)`
-/

namespace A284558.P9871259920552121034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227355 (A227352 (2 * n)).toNat : ℚ) / (A284559 n : ℚ)

end

end A284558.P9871259920552121034

/-! ## A284558.P12106369327899978373

`A284562(A290254(n+1))`
-/

namespace A284558.P12106369327899978373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A290254 (n + 1)).toNat

end

end A284558.P12106369327899978373

/-! ## A284558.P14323627685609026738

`A167489(n)/A284569(A290254(n+1))`
-/

namespace A284558.P14323627685609026738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284569 (A290254 (n + 1)).toNat : ℚ)

end

end A284558.P14323627685609026738

/-! ## A284558.P3519610019775145107

`A227349(A290254(n+1))/A284559(n)`
-/

namespace A284558.P3519610019775145107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 (A290254 (n + 1)).toNat : ℚ) / (A284559 n : ℚ)

end

end A284558.P3519610019775145107

/-! ## A284558.P16662879320298688953

`A106737(A279645(n))/A284569(A290254(n+1))`
-/

namespace A284558.P16662879320298688953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106737 (A279645 n).toNat : ℚ) / (A284569 (A290254 (n + 1)).toNat : ℚ)

end

end A284558.P16662879320298688953

/-! ## A284558.P12651176160362478792

`A284562((n+1)*A003817(n))`
-/

namespace A284558.P12651176160362478792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 ((n + 1 : ℤ) * A003817 n).toNat

end

end A284558.P12651176160362478792

/-!
# A284559: a(n) = LCM of run lengths in binary representation of n.

The programs for A284559, there is no canonical definition to state claims against.
-/

/-! ## A284559.P12022845061782467637

`A167489(n)/A284558(n)`
-/

namespace A284559.P12022845061782467637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284558 n : ℚ)

end

end A284559.P12022845061782467637

/-! ## A284559.P669055647052264058

`abs(A284560(abs(1-n)+1)-n)`
-/

namespace A284559.P669055647052264058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A284560 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ))|

end

end A284559.P669055647052264058

/-! ## A284559.P11092733658785160569

`A290103(A382255(n))`
-/

namespace A284559.P11092733658785160569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A382255 n).toNat

end

end A284559.P11092733658785160569

/-! ## A284559.P16140374974516190719

`A227349(n)*A227350(n)/A284558(n)`
-/

namespace A284559.P16140374974516190719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n * A227350 n : ℚ) / (A284558 n : ℚ)

end

end A284559.P16140374974516190719

/-! ## A284559.P8055476873101991820

`A042963(n+1)-A284560(A042963(n+1))`
-/

namespace A284559.P8055476873101991820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A284560 (A042963 (n + 1)).toNat

end

end A284559.P8055476873101991820

/-! ## A284559.P1859255589538815069

`A065033(2*n)-A284560(A065033(2*n))`
-/

namespace A284559.P1859255589538815069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A284560 (A065033 (2 * n)).toNat

end

end A284559.P1859255589538815069

/-! ## A284559.P12884099331003649959

`lcm(A284569(A010078(n+1)), A284569(n))`
-/

namespace A284559.P12884099331003649959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284569 (A010078 (n + 1)).toNat) (A284569 n)

end

end A284559.P12884099331003649959

/-! ## A284559.P3481323948526246660

`A284569(A290254(n+1))`
-/

namespace A284559.P3481323948526246660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A290254 (n + 1)).toNat

end

end A284559.P3481323948526246660

/-! ## A284559.P7950761910750215946

`A333226(xor(n, A123108(n)))`
-/

namespace A284559.P7950761910750215946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (Int.xor (n : ℤ) (A123108 n)).toNat

end

end A284559.P7950761910750215946

/-!
# A284560: a(n) = n minus (LCM of run lengths in binary representation of n) = n - A284559(n).

The programs for A284560, there is no canonical definition to state claims against.
-/

/-! ## A284560.P9504178575682127217

`n+1-A284559(n+1)`
-/

namespace A284560.P9504178575682127217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284559 (n + 1)

end

end A284560.P9504178575682127217

/-! ## A284560.P7411504106503821448

`∑[1-Δ[A284559(n)]]-1`
-/

namespace A284560.P7411504106503821448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284560.P7411504106503821448

/-! ## A284560.P8410662276923361809

`(n*A284559(C(n+1, n)))%(n+1)`
-/

namespace A284560.P8410662276923361809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A284559 (Nat.choose (n + 1) n)) (n + 1 : ℤ)

end

end A284560.P8410662276923361809

/-! ## A284560.P3694472865411719958

`A000217(n+1)%(A284559(n+1)+A000217(n))`
-/

namespace A284560.P3694472865411719958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A284559 (n + 1) + A000217 n)

end

end A284560.P3694472865411719958

/-! ## A284560.P4609984492444148908

`(A222251(A222251(n))*A284559(n+1))%(n+1)`
-/

namespace A284560.P4609984492444148908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222251 (A222251 n).toNat * A284559 (n + 1)) (n + 1 : ℤ)

end

end A284560.P4609984492444148908

/-!
# A284561: a(n) = A001222(A284567(n)).

The programs for A284561, there is no canonical definition to state claims against.
-/

/-! ## A284561.P3111125992262023340

`A001222(A284567(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284561.P3111125992262023340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284567 n).toNat

end

end A284561.P3111125992262023340

/-! ## A284561.P3068493762096786090

`∑{e}[n!/A284568(n), #]`
-/

namespace A284561.P3068493762096786090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A284568 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A284561.P3068493762096786090

/-! ## A284561.P7100902164263043508

`∑{e}[A284567(n), A004709(#)]`
-/

namespace A284561.P7100902164263043508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004709 (Nat.factorization (f1 n).natAbs p)

end

end A284561.P7100902164263043508

/-! ## A284561.P5864448741424577620

`∑{e}[A284567(n), A007955(#)]`
-/

namespace A284561.P5864448741424577620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007955 (Nat.factorization (f1 n).natAbs p)

end

end A284561.P5864448741424577620

/-! ## A284561.P2679021701063727009

`A057889(∑{e}[A284567(n), #])`
-/

namespace A284561.P2679021701063727009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A284561.P2679021701063727009

/-!
# A284562: Product / LCM of the lengths of 1-runs in binary representation of n: a(n) = A227349(n) / A284569(n).

The programs for A284562, there is no canonical definition to state claims against.
-/

/-! ## A284562.P871243006331403344

`A227349(n)/A284569(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284562.P871243006331403344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) / (A284569 n : ℚ)

end

end A284562.P871243006331403344

/-! ## A284562.P1798905933741015500

`sqrt(A246595(n))/A284569(n)`
-/

namespace A284562.P1798905933741015500
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246595 n : ℝ) / (A284569 n : ℝ)

end

end A284562.P1798905933741015500

/-! ## A284562.P14877612873790369550

`A106737(A048735(n))/A284569(n)`
-/

namespace A284562.P14877612873790369550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106737 (A048735 n).toNat : ℚ) / (A284569 n : ℚ)

end

end A284562.P14877612873790369550

/-! ## A284562.P18225043004299671158

`A003963(A246029(n))/A284569(n)`
-/

namespace A284562.P18225043004299671158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A246029 n).toNat : ℚ) / (A284569 n : ℚ)

end

end A284562.P18225043004299671158

/-! ## A284562.P3588607370472235331

`A106737(A213370(n))/A284569(n)`
-/

namespace A284562.P3588607370472235331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106737 (A213370 n).toNat : ℚ) / (A284569 n : ℚ)

end

end A284562.P3588607370472235331

/-! ## A284562.P5584157075695271134

`A106737(A048728(n))/A284569(n)`
-/

namespace A284562.P5584157075695271134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106737 (A048728 n).toNat : ℚ) / (A284569 n : ℚ)

end

end A284562.P5584157075695271134

/-! ## A284562.P3136622136124039492

`A005361(A278222(n))/A284569(n)`
-/

namespace A284562.P3136622136124039492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (A278222 n).toNat : ℚ) / (A284569 n : ℚ)

end

end A284562.P3136622136124039492

/-! ## A284562.P6761113030852553573

`A246028(A089071(A246028(n))²)`
-/

namespace A284562.P6761113030852553573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (A089071 (A246028 n).toNat ^ 2).toNat

end

end A284562.P6761113030852553573

/-! ## A284562.P8049468754559532060

`A000188(A246039(n))%3`
-/

namespace A284562.P8049468754559532060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A246039 n).toNat) 3

end

end A284562.P8049468754559532060

/-! ## A284562.P3747999853588617009

`A246028(A005073(A246028(n)+3))`
-/

namespace A284562.P3747999853588617009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (A005073 (A246028 n + 3).toNat).toNat

end

end A284562.P3747999853588617009

/-!
# A284563: a(n) = A247503(A277324(n)).

The programs for A284563, there is no canonical definition to state claims against.
-/

/-! ## A284563.P9335033788163274660

`A284553(2*n+1)`
-/

namespace A284563.P9335033788163274660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 (2 * n + 1)

end

end A284563.P9335033788163274660

/-! ## A284563.P345523212397409023

`A247503(A277324(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284563.P345523212397409023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A277324 n).toNat

end

end A284563.P345523212397409023

/-! ## A284563.P9797637887823464117

`A277324(n)/A284564(n)`
-/

namespace A284563.P9797637887823464117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284564 n : ℚ)

end

end A284563.P9797637887823464117

/-! ## A284563.P8402886026371438960

`A260443(2*n+1)/A284564(n)`
-/

namespace A284563.P8402886026371438960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284564 n : ℚ)

end

end A284563.P8402886026371438960

/-! ## A284563.P14271590182262723512

`A277324(n)/A284554(2*n+1)`
-/

namespace A284563.P14271590182262723512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284554 (2 * n + 1) : ℚ)

end

end A284563.P14271590182262723512

/-! ## A284563.P7614034683119224466

`A260443(2*n+1)/A284554(2*n+1)`
-/

namespace A284563.P7614034683119224466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284554 (2 * n + 1) : ℚ)

end

end A284563.P7614034683119224466

/-! ## A284563.P5592765333697737170

`A277330(2*n+1)*A283989(2*n+1)/A284554(2*n+1)`
-/

namespace A284563.P5592765333697737170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 (2 * n + 1) * A283989 (2 * n + 1) : ℚ) / (A284554 (2 * n + 1) : ℚ)

end

end A284563.P5592765333697737170

/-!
# A284564: a(n) = A248101(A277324(n)).

The programs for A284564, there is no canonical definition to state claims against.
-/

/-! ## A284564.P1542454181429177025

`A284554(2*n+1)`
-/

namespace A284564.P1542454181429177025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284554 (2 * n + 1)

end

end A284564.P1542454181429177025

/-! ## A284564.P3007949370310474487

`A277324(n)/A284563(n)`
-/

namespace A284564.P3007949370310474487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284563 n : ℚ)

end

end A284564.P3007949370310474487

/-! ## A284564.P3949548553900017560

`A260443(2*n+1)/A284563(n)`
-/

namespace A284564.P3949548553900017560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284563 n : ℚ)

end

end A284564.P3949548553900017560

/-! ## A284564.P926081606361451944

`A277324(n)/A284553(2*n+1)`
-/

namespace A284564.P926081606361451944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284553 (2 * n + 1) : ℚ)

end

end A284564.P926081606361451944

/-! ## A284564.P13043421264682532257

`A260443(2*n+1)/A284553(2*n+1)`
-/

namespace A284564.P13043421264682532257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284553 (2 * n + 1) : ℚ)

end

end A284564.P13043421264682532257

/-! ## A284564.P8814417105609161455

`A277330(2*n+1)*A283989(2*n+1)/A284553(2*n+1)`
-/

namespace A284564.P8814417105609161455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 (2 * n + 1) * A283989 (2 * n + 1) : ℚ) / (A284553 (2 * n + 1) : ℚ)

end

end A284564.P8814417105609161455

/-!
# A284565: Bisection of A000360.

The programs for A284565, the canonical program `A284565.P9570140672652545483` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284565 has offset 0).

The definition of A284565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284565.P9570140672652545483

`A000360(2*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284565

/-- `A000360(2*n)` -/
def P9570140672652545483.Spec : Prop :=
  ∀ n, P9570140672652545483.a n = A284565 n

theorem P9570140672652545483.correct : P9570140672652545483.Spec := by
  intro n
  simp only [A284565]

end A284565

/-! ## A284565.P15357039135077899907

`A001222(A284563(n))`
-/

namespace A284565.P15357039135077899907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284563 n).toNat

end

end A284565.P15357039135077899907

namespace A284565

/-- `A001222(A284563(n))` -/
def P15357039135077899907.Spec : Prop :=
  ∀ n, P15357039135077899907.a n = A284565 n

end A284565

/-! ## A284565.P6296873667651007127

`A284566(n)+1-n%3`
-/

namespace A284565.P6296873667651007127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 n + (1 - ((n % 3 : ℕ) : ℤ))

end

end A284565.P6296873667651007127

namespace A284565

/-- `A284566(n)+1-n%3` -/
def P6296873667651007127.Spec : Prop :=
  ∀ n, P6296873667651007127.a n = A284565 n

end A284565

/-! ## A284565.P8120071796289606176

`A284566(n)+A057078(n)`
-/

namespace A284565.P8120071796289606176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 n + A057078 n

end

end A284565.P8120071796289606176

namespace A284565

/-- `A284566(n)+A057078(n)` -/
def P8120071796289606176.Spec : Prop :=
  ∀ n, P8120071796289606176.a n = A284565 n

end A284565

/-! ## A284565.P11633313338062067584

`A007306(n+1)-A284566(n)`
-/

namespace A284565.P11633313338062067584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284566 n

end

end A284565.P11633313338062067584

namespace A284565

/-- `A007306(n+1)-A284566(n)` -/
def P11633313338062067584.Spec : Prop :=
  ∀ n, P11633313338062067584.a n = A284565 n

end A284565

/-! ## A284565.P9017068057623220230

`A000360(abs(1-n))+A000360(n)`
-/

namespace A284565.P9017068057623220230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 |1 - (n : ℤ)|.toNat + A000360 n

end

end A284565.P9017068057623220230

namespace A284565

/-- `A000360(abs(1-n))+A000360(n)` -/
def P9017068057623220230.Spec : Prop :=
  ∀ n, P9017068057623220230.a n = A284565 n

end A284565

/-! ## A284565.P8905482911550364183

`A287896(n+1)-A000360(n+1)`
-/

namespace A284565.P8905482911550364183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - A000360 (n + 1)

end

end A284565.P8905482911550364183

namespace A284565

/-- `A287896(n+1)-A000360(n+1)` -/
def P8905482911550364183.Spec : Prop :=
  ∀ n, P8905482911550364183.a n = A284565 n

end A284565

/-! ## A284565.P17310814038149266764

`A000360(n)+A002487(n)-A284556(n)`
-/

namespace A284565.P17310814038149266764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n + (A002487 n - A284556 n)

end

end A284565.P17310814038149266764

namespace A284565

/-- `A000360(n)+A002487(n)-A284556(n)` -/
def P17310814038149266764.Spec : Prop :=
  ∀ n, P17310814038149266764.a n = A284565 n

end A284565

/-! ## A284565.P1079888752548667002

`A002487(n+1)+A002487(n)-A284566(n)`
-/

namespace A284565.P1079888752548667002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A284566 n)

end

end A284565.P1079888752548667002

namespace A284565

/-- `A002487(n+1)+A002487(n)-A284566(n)` -/
def P1079888752548667002.Spec : Prop :=
  ∀ n, P1079888752548667002.a n = A284565 n

end A284565

/-! ## A284565.P2781105917599585137

`A000360(n)+A284556(n)-A057078(n+1)`
-/

namespace A284565.P2781105917599585137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n + (A284556 n - A057078 (n + 1))

end

end A284565.P2781105917599585137

namespace A284565

/-- `A000360(n)+A284556(n)-A057078(n+1)` -/
def P2781105917599585137.Spec : Prop :=
  ∀ n, P2781105917599585137.a n = A284565 n

end A284565

/-! ## A284565.P10885087634652008429

`A288003(n+1)+A002487(n)-A000360(n+1)`
-/

namespace A284565.P10885087634652008429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (n + 1) + (A002487 n - A000360 (n + 1))

end

end A284565.P10885087634652008429

namespace A284565

/-- `A288003(n+1)+A002487(n)-A000360(n+1)` -/
def P10885087634652008429.Spec : Prop :=
  ∀ n, P10885087634652008429.a n = A284565 n

end A284565

/-! ## A284565.P14343384256756535287

`A287823(n+1)+A287824(n+1)-A000360(n+1)`
-/

namespace A284565.P14343384256756535287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287823 (n + 1) + (A287824 (n + 1) - A000360 (n + 1))

end

end A284565.P14343384256756535287

namespace A284565

/-- `A287823(n+1)+A287824(n+1)-A000360(n+1)` -/
def P14343384256756535287.Spec : Prop :=
  ∀ n, P14343384256756535287.a n = A284565 n

end A284565

/-! ## A284565.P6964255124568044811

`Δ[floor(∑[A007306(n)/2])]`
-/

namespace A284565.P6964255124568044811
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007306 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284565.P6964255124568044811

namespace A284565

/-- `Δ[floor(∑[A007306(n)/2])]` -/
def P6964255124568044811.Spec : Prop :=
  ∀ n, P6964255124568044811.a n = A284565 n

end A284565

/-! ## A284565.P12419411736769152503

`A284556(n+1)+A284556(n)+A057078(n)`
-/

namespace A284565.P12419411736769152503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + (A284556 n + A057078 n)

end

end A284565.P12419411736769152503

namespace A284565

/-- `A284556(n+1)+A284556(n)+A057078(n)` -/
def P12419411736769152503.Spec : Prop :=
  ∀ n, P12419411736769152503.a n = A284565 n

end A284565

/-! ## A284565.P14232987115180990580

`A282720(n+1)-(A284566(n)+A282720(n))`
-/

namespace A284565.P14232987115180990580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282720 (n + 1) - (A284566 n + A282720 n)

end

end A284565.P14232987115180990580

namespace A284565

/-- `A282720(n+1)-(A284566(n)+A282720(n))` -/
def P14232987115180990580.Spec : Prop :=
  ∀ n, P14232987115180990580.a n = A284565 n

end A284565

/-! ## A284565.P3914297471372474915

`A284566(n+1)+A284556(n)-A000360(n+1)`
-/

namespace A284565.P3914297471372474915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 (n + 1) + (A284556 n - A000360 (n + 1))

end

end A284565.P3914297471372474915

namespace A284565

/-- `A284566(n+1)+A284556(n)-A000360(n+1)` -/
def P3914297471372474915.Spec : Prop :=
  ∀ n, P3914297471372474915.a n = A284565 n

end A284565

/-! ## A284565.P944213696629463178

`A007306(n+1)-(A284556(n+1)+A284556(n))`
-/

namespace A284565.P944213696629463178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - (A284556 (n + 1) + A284556 n)

end

end A284565.P944213696629463178

namespace A284565

/-- `A007306(n+1)-(A284556(n+1)+A284556(n))` -/
def P944213696629463178.Spec : Prop :=
  ∀ n, P944213696629463178.a n = A284565 n

end A284565

/-! ## A284565.P7893199678493619286

`A284566(n)-A102283(n+2)`
-/

namespace A284565.P7893199678493619286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 n - A102283 (n + 2)

end

end A284565.P7893199678493619286

namespace A284565

/-- `A284566(n)-A102283(n+2)` -/
def P7893199678493619286.Spec : Prop :=
  ∀ n, P7893199678493619286.a n = A284565 n

end A284565

/-! ## A284565.P6700611485650695439

`A288002(n+1)+A284556(n+2)`
-/

namespace A284565.P6700611485650695439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (n + 1) + A284556 (n + 2)

end

end A284565.P6700611485650695439

namespace A284565

/-- `A288002(n+1)+A284556(n+2)` -/
def P6700611485650695439.Spec : Prop :=
  ∀ n, P6700611485650695439.a n = A284565 n

end A284565

/-! ## A284565.P2610779794721279010

`A064989(A003961(A000360(n+n)))`
-/

namespace A284565.P2610779794721279010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003961 (A000360 (n + n)).toNat).toNat

end

end A284565.P2610779794721279010

namespace A284565

/-- `A064989(A003961(A000360(n+n)))` -/
def P2610779794721279010.Spec : Prop :=
  ∀ n, P2610779794721279010.a n = A284565 n

end A284565

/-!
# A284566: Odd bisection of A284556.

The programs for A284566, the canonical program `A284566.P9813088326680274494` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284566 has offset 0).

The definition of A284566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284566.P9813088326680274494

`A284556(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284566

/-- `A284556(2*n+1)` -/
def P9813088326680274494.Spec : Prop :=
  ∀ n, P9813088326680274494.a n = A284566 n

theorem P9813088326680274494.correct : P9813088326680274494.Spec := by
  intro n
  simp only [A284566]

end A284566

/-! ## A284566.P12365093657120778935

`A001222(A284564(n))`
-/

namespace A284566.P12365093657120778935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284564 n).toNat

end

end A284566.P12365093657120778935

namespace A284566

/-- `A001222(A284564(n))` -/
def P12365093657120778935.Spec : Prop :=
  ∀ n, P12365093657120778935.a n = A284566 n

end A284566

/-! ## A284566.P18409923037010526392

`A284565(n)-(1-n%3)`
-/

namespace A284566.P18409923037010526392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 n - (1 - ((n % 3 : ℕ) : ℤ))

end

end A284566.P18409923037010526392

namespace A284566

/-- `A284565(n)-(1-n%3)` -/
def P18409923037010526392.Spec : Prop :=
  ∀ n, P18409923037010526392.a n = A284566 n

end A284566

/-! ## A284566.P17678933549000944332

`A284565(n)-A057078(n)`
-/

namespace A284566.P17678933549000944332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 n - A057078 n

end

end A284566.P17678933549000944332

namespace A284566

/-- `A284565(n)-A057078(n)` -/
def P17678933549000944332.Spec : Prop :=
  ∀ n, P17678933549000944332.a n = A284566 n

end A284566

/-! ## A284566.P15557522746022401733

`A007306(n+1)-A284565(n)`
-/

namespace A284566.P15557522746022401733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284565 n

end

end A284566.P15557522746022401733

namespace A284566

/-- `A007306(n+1)-A284565(n)` -/
def P15557522746022401733.Spec : Prop :=
  ∀ n, P15557522746022401733.a n = A284566 n

end A284566

/-! ## A284566.P7791815801715862158

`A288002(n+1)+A000360(n+1)`
-/

namespace A284566.P7791815801715862158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (n + 1) + A000360 (n + 1)

end

end A284566.P7791815801715862158

namespace A284566

/-- `A288002(n+1)+A000360(n+1)` -/
def P7791815801715862158.Spec : Prop :=
  ∀ n, P7791815801715862158.a n = A284566 n

end A284566

/-! ## A284566.P8101511509135003622

`A002487(n)+Δ[A008619(A002487(n))]`
-/

namespace A284566.P8101511509135003622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + (f1 (n + 1) - f1 n)

end

end A284566.P8101511509135003622

namespace A284566

/-- `A002487(n)+Δ[A008619(A002487(n))]` -/
def P8101511509135003622.Spec : Prop :=
  ∀ n, P8101511509135003622.a n = A284566 n

end A284566

/-! ## A284566.P8639047563545403107

`A002487(n+1)+A002487(n)-A284565(n)`
-/

namespace A284566.P8639047563545403107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A284565 n)

end

end A284566.P8639047563545403107

namespace A284566

/-- `A002487(n+1)+A002487(n)-A284565(n)` -/
def P8639047563545403107.Spec : Prop :=
  ∀ n, P8639047563545403107.a n = A284566 n

end A284566

/-! ## A284566.P5855152340161959199

`A000360(n+1)+A002487(n+1)-A288003(n+1)`
-/

namespace A284566.P5855152340161959199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (n + 1) + (A002487 (n + 1) - A288003 (n + 1))

end

end A284566.P5855152340161959199

namespace A284566

/-- `A000360(n+1)+A002487(n+1)-A288003(n+1)` -/
def P5855152340161959199.Spec : Prop :=
  ∀ n, P5855152340161959199.a n = A284566 n

end A284566

/-! ## A284566.P12160458279497059949

`A284556(n+1)+A284556(n)`
-/

namespace A284566.P12160458279497059949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + A284556 n

end

end A284566.P12160458279497059949

namespace A284566

/-- `A284556(n+1)+A284556(n)` -/
def P12160458279497059949.Spec : Prop :=
  ∀ n, P12160458279497059949.a n = A284566 n

end A284566

/-! ## A284566.P4253786036437260431

`A284565(n)+A102283(n+2)`
-/

namespace A284566.P4253786036437260431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 n + A102283 (n + 2)

end

end A284566.P4253786036437260431

namespace A284566

/-- `A284565(n)+A102283(n+2)` -/
def P4253786036437260431.Spec : Prop :=
  ∀ n, P4253786036437260431.a n = A284566 n

end A284566

/-! ## A284566.P17001213132189044186

`A000360(2*n)-A057078(n)`
-/

namespace A284566.P17001213132189044186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n) - A057078 n

end

end A284566.P17001213132189044186

namespace A284566

/-- `A000360(2*n)-A057078(n)` -/
def P17001213132189044186.Spec : Prop :=
  ∀ n, P17001213132189044186.a n = A284566 n

end A284566

/-! ## A284566.P13378387003148743388

`A007306(n+1)-A000360(2*n)`
-/

namespace A284566.P13378387003148743388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A000360 (2 * n)

end

end A284566.P13378387003148743388

namespace A284566

/-- `A007306(n+1)-A000360(2*n)` -/
def P13378387003148743388.Spec : Prop :=
  ∀ n, P13378387003148743388.a n = A284566 n

end A284566

/-! ## A284566.P17639110379929266897

`A102283(n+2)+A000360(2*n)`
-/

namespace A284566.P17639110379929266897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 2) + A000360 (2 * n)

end

end A284566.P17639110379929266897

namespace A284566

/-- `A102283(n+2)+A000360(2*n)` -/
def P17639110379929266897.Spec : Prop :=
  ∀ n, P17639110379929266897.a n = A284566 n

end A284566

/-! ## A284566.P7474218642067292522

`A000360(2*n)-A163804(n+2)`
-/

namespace A284566.P7474218642067292522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n) - A163804 (n + 2)

end

end A284566.P7474218642067292522

namespace A284566

/-- `A000360(2*n)-A163804(n+2)` -/
def P7474218642067292522.Spec : Prop :=
  ∀ n, P7474218642067292522.a n = A284566 n

end A284566

/-! ## A284566.P1912714806296173423

`A127971(2*n)-A000360(2*n)`
-/

namespace A284566.P1912714806296173423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A000360 (2 * n)

end

end A284566.P1912714806296173423

namespace A284566

/-- `A127971(2*n)-A000360(2*n)` -/
def P1912714806296173423.Spec : Prop :=
  ∀ n, P1912714806296173423.a n = A284566 n

end A284566

/-! ## A284566.P7933965674109920784

`A002487(n)+A002487(n+1)-A000360(2*n)`
-/

namespace A284566.P7933965674109920784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + (A002487 (n + 1) - A000360 (2 * n))

end

end A284566.P7933965674109920784

namespace A284566

/-- `A002487(n)+A002487(n+1)-A000360(2*n)` -/
def P7933965674109920784.Spec : Prop :=
  ∀ n, P7933965674109920784.a n = A284566 n

end A284566

/-! ## A284566.P10285629282716247497

`A002487(2*n+1)-A284565(n)`
-/

namespace A284566.P10285629282716247497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284565 n

end

end A284566.P10285629282716247497

namespace A284566

/-- `A002487(2*n+1)-A284565(n)` -/
def P10285629282716247497.Spec : Prop :=
  ∀ n, P10285629282716247497.a n = A284566 n

theorem P10285629282716247497.correct : P10285629282716247497.Spec := by
  intro n
  simp only [A284566, Nat.add_sub_cancel, A284566.P10285629282716247497.a, A284566.P9813088326680274494.a, A002487, A002487.P6236436194084017932.a, A284556, A284556.P13375523094989058147.a, A284565, A284565.P9570140672652545483.a, A000120, A000120.P2816527436160941581.a, A000360, A000360.P16123140622544761321.a, A102283, A102283.P18218274576938374007.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284566

/-! ## A284566.P769236987699898424

`A057432(2*n+1)-A284565(n)`
-/

namespace A284566.P769236987699898424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (2 * n + 1) - A284565 n

end

end A284566.P769236987699898424

namespace A284566

/-- `A057432(2*n+1)-A284565(n)` -/
def P769236987699898424.Spec : Prop :=
  ∀ n, P769236987699898424.a n = A284566 n

end A284566

/-! ## A284566.P8359332019846976648

`A000360(2*n)-A010892(2*n)`
-/

namespace A284566.P8359332019846976648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n) - A010892 (2 * n)

end

end A284566.P8359332019846976648

namespace A284566

/-- `A000360(2*n)-A010892(2*n)` -/
def P8359332019846976648.Spec : Prop :=
  ∀ n, P8359332019846976648.a n = A284566 n

end A284566

/-!
# A284567: a(0) = 1; for n >= 1, a(n) = A059897(n, a(n-1)).

The programs for A284567, there is no canonical definition to state claims against.
-/

/-! ## A284567.P17317276801713795756

`n!/A284568(n)`
-/

namespace A284567.P17317276801713795756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A284568 n : ℚ)

end

end A284567.P17317276801713795756

/-! ## A284567.P14611667773802523351

`A000142(n)/A284568(n)`
-/

namespace A284567.P14611667773802523351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A284568 n : ℚ)

end

end A284567.P14611667773802523351

/-! ## A284567.P6536268633818291983

`Δ[A003422(n)]/A284568(n)`
-/

namespace A284567.P6536268633818291983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A284568 n : ℚ)

end

end A284567.P6536268633818291983

/-! ## A284567.P11954691441623409787

`∏[A028310(n)]/A284568(n)`
-/

namespace A284567.P11954691441623409787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A284568 n : ℚ)

end

end A284567.P11954691441623409787

/-! ## A284567.P4156614215403861031

`A081123(2*n)/A284568(n)`
-/

namespace A284567.P4156614215403861031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (2 * n) : ℚ) / (A284568 n : ℚ)

end

end A284567.P4156614215403861031

/-! ## A284567.P10138299539573543657

`A008279(A000096(n))/A284568(n)`
-/

namespace A284567.P10138299539573543657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 (A000096 n).toNat : ℚ) / (A284568 n : ℚ)

end

end A284567.P10138299539573543657

/-! ## A284567.P10951919890504004078

`A047920(A000217(n))/A284568(n)`
-/

namespace A284567.P10951919890504004078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 (A000217 n).toNat : ℚ) / (A284568 n : ℚ)

end

end A284567.P10951919890504004078

/-! ## A284567.P13562996588711779505

`A094587(A000124(n))/A284568(n)`
-/

namespace A284567.P13562996588711779505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000124 n).toNat : ℚ) / (A284568 n : ℚ)

end

end A284567.P13562996588711779505

/-! ## A284567.P4089110091364038899

`A098361(A034856(n+1))/A284568(n)`
-/

namespace A284567.P4089110091364038899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (A034856 (n + 1)).toNat : ℚ) / (A284568 n : ℚ)

end

end A284567.P4089110091364038899

/-!
# A284568: a(n) = n! / A284567(n).

The programs for A284568, there is no canonical definition to state claims against.
-/

/-! ## A284568.P16647454705966473931

`n!/A284567(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284568.P16647454705966473931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A284567 n : ℚ)

end

end A284568.P16647454705966473931

/-! ## A284568.P16591804237984743925

`A000142(n)/A284567(n)`
-/

namespace A284568.P16591804237984743925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A284567 n : ℚ)

end

end A284568.P16591804237984743925

/-! ## A284568.P8275396996689454476

`A034386(n)/A284567(n)*A049614(n)`
-/

namespace A284568.P8275396996689454476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A284567 n : ℚ) * (A049614 n : ℚ)

end

end A284568.P8275396996689454476

/-! ## A284568.P10429401742370533551

`A002944(n+1)/A284567(n)*A025527(n+1)`
-/

namespace A284568.P10429401742370533551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A284567 n : ℚ) * (A025527 (n + 1) : ℚ)

end

end A284568.P10429401742370533551

/-! ## A284568.P723927735527060961

`A047920(∑[n])/A284567(n)`
-/

namespace A284568.P723927735527060961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A284567 n : ℚ)

end

end A284568.P723927735527060961

/-! ## A284568.P12126886890146813699

`Δ[A003422(n)]/A284567(n)`
-/

namespace A284568.P12126886890146813699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A284567 n : ℚ)

end

end A284568.P12126886890146813699

/-! ## A284568.P240222518910221698

`∏[A028310(n)]/A284567(n)`
-/

namespace A284568.P240222518910221698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A284567 n : ℚ)

end

end A284568.P240222518910221698

/-! ## A284568.P14979395992505731519

`A081123(2*n)/A284567(n)`
-/

namespace A284568.P14979395992505731519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (2 * n) : ℚ) / (A284567 n : ℚ)

end

end A284568.P14979395992505731519

/-! ## A284568.P15215656122439559286

`A008279(A000096(n))/A284567(n)`
-/

namespace A284568.P15215656122439559286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 (A000096 n).toNat : ℚ) / (A284567 n : ℚ)

end

end A284568.P15215656122439559286

/-!
# A284569: a(n) = LCM of the lengths of runs of 1-bits in binary representation of n.

The programs for A284569, there is no canonical definition to state claims against.
-/

/-! ## A284569.P8611081917624212124

`A227349(n)/A284562(n)`
-/

namespace A284569.P8611081917624212124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) / (A284562 n : ℚ)

end

end A284569.P8611081917624212124

/-! ## A284569.P14305608572066780404

`A072411(A005940(1+n))`
-/

namespace A284569.P14305608572066780404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A005940 (1 + n)).toNat

end

end A284569.P14305608572066780404

/-! ## A284569.P11838253698157921408

`A284559(A090078(n))`
-/

namespace A284569.P11838253698157921408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A090078 n).toNat

end

end A284569.P11838253698157921408

/-! ## A284569.P10534736377060116461

`A290103(A246029(n))`
-/

namespace A284569.P10534736377060116461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A246029 n).toNat

end

end A284569.P10534736377060116461

/-! ## A284569.P7015140416662079639

`A316431(2*A246029(n))`
-/

namespace A284569.P7015140416662079639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A246029 n).toNat

end

end A284569.P7015140416662079639

/-! ## A284569.P12143967551458914618

`A316431(lcm(2, A246029(n)))`
-/

namespace A284569.P12143967551458914618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 2 (A246029 n))

end

end A284569.P12143967551458914618

/-! ## A284569.P7203439182651571490

`A072411(A278222(n))`
-/

namespace A284569.P7203439182651571490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A278222 n).toNat

end

end A284569.P7203439182651571490

/-! ## A284569.P11258166178945547141

`A072411(A332815(n))`
-/

namespace A284569.P11258166178945547141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A332815 n).toNat

end

end A284569.P11258166178945547141

/-! ## A284569.P8016327802111312017

`A000120(A246674(n)^A246588(n))`
-/

namespace A284569.P8016327802111312017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A246674 n : ℚ) ^ (A246588 n : ℤ))).toNat

end

end A284569.P8016327802111312017

/-!
# A284570: a(n) = A000005((n+1)^2) - A000005(n^2).

The programs for A284570, the canonical program `A284570.P5019316116985626707` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284570 has offset 1).

The definition of A284570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((n+2)²)-A000005((n+1)²)` (program `A284570.P5019316116985626707`, by `A284570.P5019316116985626707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284570.P15453039180278878652

`A048691(n+2)-A048691(n+1)`
-/

namespace A284570.P15453039180278878652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 2) - A048691 (n + 1)

end

end A284570.P15453039180278878652

namespace A284570

/-- `A048691(n+2)-A048691(n+1)` -/
def P15453039180278878652.Spec : Prop :=
  ∀ n, P15453039180278878652.a n = A284570 (n + 1)

theorem P15453039180278878652.correct : P15453039180278878652.Spec := by
  intro n
  simp only [A284570, Nat.add_sub_cancel, A284570.P15453039180278878652.a, A284570.P5019316116985626707.a, A000005, A000005.P16091521709108585461.a, A048691, A048691.P3815437841091875311.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284570

/-! ## A284570.P5019316116985626707

`A000005((n+2)²)-A000005((n+1)²)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A284570

/-- `A000005((n+2)²)-A000005((n+1)²)` -/
def P5019316116985626707.Spec : Prop :=
  ∀ n, P5019316116985626707.a n = A284570 (n + 1)

theorem P5019316116985626707.correct : P5019316116985626707.Spec := by
  intro n
  simp only [A284570, Nat.add_sub_cancel]

end A284570

/-! ## A284570.P7653123212251069027

`Δ[2*A046079(2*(n+1))]`
-/

namespace A284570.P7653123212251069027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P7653123212251069027

namespace A284570

/-- `Δ[2*A046079(2*(n+1))]` -/
def P7653123212251069027.Spec : Prop :=
  ∀ n, P7653123212251069027.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P2448789011924790603

`Δ[A005408(A046079(2*(n+1)))]`
-/

namespace A284570.P2448789011924790603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A046079 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P2448789011924790603

namespace A284570

/-- `Δ[A005408(A046079(2*(n+1)))]` -/
def P2448789011924790603.Spec : Prop :=
  ∀ n, P2448789011924790603.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P6351051811667868042

`Δ[∏{e}[n+1, 2*#+1]]`
-/

namespace A284570.P6351051811667868042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A284570.P6351051811667868042

namespace A284570

/-- `Δ[∏{e}[n+1, 2*#+1]]` -/
def P6351051811667868042.Spec : Prop :=
  ∀ n, P6351051811667868042.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P12675266217189630091

`Δ[A048691(n+1)]`
-/

namespace A284570.P12675266217189630091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P12675266217189630091

namespace A284570

/-- `Δ[A048691(n+1)]` -/
def P12675266217189630091.Spec : Prop :=
  ∀ n, P12675266217189630091.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P10819078400324583147

`Δ[2*A018892(n+1)]`
-/

namespace A284570.P10819078400324583147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P10819078400324583147

namespace A284570

/-- `Δ[2*A018892(n+1)]` -/
def P10819078400324583147.Spec : Prop :=
  ∀ n, P10819078400324583147.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P6461639879781333179

`Δ[2*A063647(n+1)]`
-/

namespace A284570.P6461639879781333179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P6461639879781333179

namespace A284570

/-- `Δ[2*A063647(n+1)]` -/
def P6461639879781333179.Spec : Prop :=
  ∀ n, P6461639879781333179.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P4561497203427350850

`Δ[A004396(A146564(n+1))]`
-/

namespace A284570.P4561497203427350850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A146564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P4561497203427350850

namespace A284570

/-- `Δ[A004396(A146564(n+1))]` -/
def P4561497203427350850.Spec : Prop :=
  ∀ n, P4561497203427350850.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P10429670294660646531

`Δ[A055205(n+1)+A000005(n+1)]`
-/

namespace A284570.P10429670294660646531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P10429670294660646531

namespace A284570

/-- `Δ[A055205(n+1)+A000005(n+1)]` -/
def P10429670294660646531.Spec : Prop :=
  ∀ n, P10429670294660646531.a n = A284570 (n + 1)

theorem P10429670294660646531.correct : P10429670294660646531.Spec := by
  intro n
  simp only [A284570, Nat.add_sub_cancel, A284570.P10429670294660646531.f1, A284570.P10429670294660646531.a, A284570.P5019316116985626707.a, A000005, A000005.P16091521709108585461.a, A055205, A055205.P13391514614413086589.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048691, A048691.P3815437841091875311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284570

/-! ## A284570.P13897254128943523563

`Δ[A196524(n+1)/A000010(n+1)]`
-/

namespace A284570.P13897254128943523563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196524 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P13897254128943523563

namespace A284570

/-- `Δ[A196524(n+1)/A000010(n+1)]` -/
def P13897254128943523563.Spec : Prop :=
  ∀ n, P13897254128943523563.a n = (A284570 (n + 1) : ℚ)

end A284570

/-! ## A284570.P14282215808724937110

`Δ[A229949(Δ[n²])]`
-/

namespace A284570.P14282215808724937110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P14282215808724937110

namespace A284570

/-- `Δ[A229949(Δ[n²])]` -/
def P14282215808724937110.Spec : Prop :=
  ∀ n, P14282215808724937110.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P16760528809193020395

`Δ[A068074(4*(n+1))]`
-/

namespace A284570.P16760528809193020395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068074 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P16760528809193020395

namespace A284570

/-- `Δ[A068074(4*(n+1))]` -/
def P16760528809193020395.Spec : Prop :=
  ∀ n, P16760528809193020395.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P9773045790841368762

`Δ[A000005(A278254(n+1))]`
-/

namespace A284570.P9773045790841368762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P9773045790841368762

namespace A284570

/-- `Δ[A000005(A278254(n+1))]` -/
def P9773045790841368762.Spec : Prop :=
  ∀ n, P9773045790841368762.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P7602022861079106869

`Δ[A000005(A046523(n+1)²)]`
-/

namespace A284570.P7602022861079106869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046523 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P7602022861079106869

namespace A284570

/-- `Δ[A000005(A046523(n+1)²)]` -/
def P7602022861079106869.Spec : Prop :=
  ∀ n, P7602022861079106869.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P13463464343203486531

`Δ[A000005(A046523(n+1)^A046523(A020639(n+1)))]`
-/

namespace A284570.P13463464343203486531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A046523 (A020639 (n + 1)).toNat : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P13463464343203486531

namespace A284570

/-- `Δ[A000005(A046523(n+1)^A046523(A020639(n+1)))]` -/
def P13463464343203486531.Spec : Prop :=
  ∀ n, P13463464343203486531.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P17983469794408666084

`Δ[A000005((n+1)²)]`
-/

namespace A284570.P17983469794408666084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P17983469794408666084

namespace A284570

/-- `Δ[A000005((n+1)²)]` -/
def P17983469794408666084.Spec : Prop :=
  ∀ n, P17983469794408666084.a n = A284570 (n + 1)

theorem P17983469794408666084.correct : P17983469794408666084.Spec := by
  intro n
  simp only [A284570, Nat.add_sub_cancel, A284570.P17983469794408666084.f1, A284570.P17983469794408666084.a, A284570.P5019316116985626707.a, SequenceMachineLib.memo_apply]

end A284570

/-! ## A284570.P15551033640813093843

`Δ[or(1, A000005(∑[2*n+1]))]`
-/

namespace A284570.P15551033640813093843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000005 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284570.P15551033640813093843

namespace A284570

/-- `Δ[or(1, A000005(∑[2*n+1]))]` -/
def P15551033640813093843.Spec : Prop :=
  ∀ n, P15551033640813093843.a n = A284570 (n + 1)

end A284570

/-! ## A284570.P14214458538229163038

`-Δ[-A000005((2*n-(n-1))²)]`
-/

namespace A284570.P14214458538229163038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000005 (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A284570.P14214458538229163038

namespace A284570

/-- `-Δ[-A000005((2*n-(n-1))²)]` -/
def P14214458538229163038.Spec : Prop :=
  ∀ n, P14214458538229163038.a n = A284570 (n + 1)

end A284570

/-!
# A284571: Permutation of natural numbers: a(1) = 1, a(A005117(1+n)) = 2*a(n), a(A065642(1+n)) = 1 + 2*a(n).

The programs for A284571, there is no canonical definition to state claims against.
-/

/-! ## A284571.P5205608313020948389

`A243345(A353433(A062399(n))+n)`
-/

namespace A284571.P5205608313020948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243345 (A353433 (A062399 n).toNat + (n : ℤ)).toNat

end

end A284571.P5205608313020948389

/-! ## A284571.P13804304679284628570

`A279352(A353433(A062399(n))+n)`
-/

namespace A284571.P13804304679284628570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A353433 (A062399 n).toNat + (n : ℤ)).toNat

end

end A284571.P13804304679284628570

/-! ## A284571.P76413576007405198

`A122111(A353433(A351870(n))+n)`
-/

namespace A284571.P76413576007405198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A353433 (A351870 n).toNat + (n : ℤ)).toNat

end

end A284571.P76413576007405198

/-! ## A284571.P17079720980502736528

`A279352(A353433(A351870(n))+n)`
-/

namespace A284571.P17079720980502736528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A353433 (A351870 n).toNat + (n : ℤ)).toNat

end

end A284571.P17079720980502736528

/-! ## A284571.P2795191100830998896

`xor(A122111(n+1), A184944(A220688(n+1)))`
-/

namespace A284571.P2795191100830998896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122111 (n + 1)) (A184944 (A220688 (n + 1)).toNat)

end

end A284571.P2795191100830998896

/-!
# A284573: Odd bisection of A278243: a(n) = A046523(A277324(n)).

The programs for A284573, there is no canonical definition to state claims against.
-/

/-! ## A284573.P8519426652107013307

`A278243(2*n+1)`
-/

namespace A284573.P8519426652107013307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (2 * n + 1)

end

end A284573.P8519426652107013307

/-! ## A284573.P7271674453592320148

`A046523(A277324(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284573.P7271674453592320148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A277324 n).toNat

end

end A284573.P7271674453592320148

/-! ## A284573.P5752849375668318445

`A278243(n+1+n)+A000007(n+1)`
-/

namespace A284573.P5752849375668318445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (n + 1 + n) + A000007 (n + 1)

end

end A284573.P5752849375668318445

/-! ## A284573.P5395844590816250575

`gcd(A000038(n), A278243(A004280(n+2)))`
-/

namespace A284573.P5395844590816250575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A278243 (A004280 (n + 2)).toNat)

end

end A284573.P5395844590816250575

/-! ## A284573.P16773405887517828110

`A278243(A004280(n+2))+A000038(n+1)`
-/

namespace A284573.P16773405887517828110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (A004280 (n + 2)).toNat + A000038 (n + 1)

end

end A284573.P16773405887517828110

/-! ## A284573.P5825232932934359265

`A278243(n+1+n)/A277013(A000040(n+1))`
-/

namespace A284573.P5825232932934359265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278243 (n + 1 + n) : ℚ) / (A277013 (A000040 (n + 1)).toNat : ℚ)

end

end A284573.P5825232932934359265

/-! ## A284573.P2813707599232403449

`A278243(n+1+n)^A007318(A285718(n+3))`
-/

namespace A284573.P2813707599232403449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278243 (n + 1 + n) : ℚ) ^ (A007318 (A285718 (n + 3)).toNat : ℤ)

end

end A284573.P2813707599232403449

/-!
# A284574: a(n) = A048724(n) mod 3.

The programs for A284574, the canonical program `A284574.P4446651939462515154` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284574 has offset 0).

The definition of A284574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048724(n)%3` (program `A284574.P4446651939462515154`, by `A284574.P4446651939462515154.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284574.P4446651939462515154

`A048724(n)%3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284574

/-- `A048724(n)%3` -/
def P4446651939462515154.Spec : Prop :=
  ∀ n, P4446651939462515154.a n = A284574 n

theorem P4446651939462515154.correct : P4446651939462515154.Spec := by
  intro n
  simp only [A284574]

end A284574

/-! ## A284574.P3045398113863701743

`and(n, 2*n)%3`
-/

namespace A284574.P3045398113863701743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n) % 3

end

end A284574.P3045398113863701743

namespace A284574

/-- `and(n, 2*n)%3` -/
def P3045398113863701743.Spec : Prop :=
  ∀ n, (P3045398113863701743.a n : ℤ) = A284574 n

end A284574

/-! ## A284574.P1078990884565590979

`xor(n, 2*n)%3`
-/

namespace A284574.P1078990884565590979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) % 3

end

end A284574.P1078990884565590979

namespace A284574

/-- `xor(n, 2*n)%3` -/
def P1078990884565590979.Spec : Prop :=
  ∀ n, (P1078990884565590979.a n : ℤ) = A284574 n

end A284574

/-! ## A284574.P13776999474963427400

`(2*or(n, 2*n))%3`
-/

namespace A284574.P13776999474963427400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor n (2 * n) % 3

end

end A284574.P13776999474963427400

namespace A284574

/-- `(2*or(n, 2*n))%3` -/
def P13776999474963427400.Spec : Prop :=
  ∀ n, (P13776999474963427400.a n : ℤ) = A284574 n

end A284574

/-! ## A284574.P11179070393662241236

`A213370(n)%3`
-/

namespace A284574.P11179070393662241236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213370 n) 3

end

end A284574.P11179070393662241236

namespace A284574

/-- `A213370(n)%3` -/
def P11179070393662241236.Spec : Prop :=
  ∀ n, P11179070393662241236.a n = A284574 n

end A284574

/-! ## A284574.P3577944671921871569

`A003188(2*n)%3`
-/

namespace A284574.P3577944671921871569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (2 * n)) 3

end

end A284574.P3577944671921871569

namespace A284574

/-- `A003188(2*n)%3` -/
def P3577944671921871569.Spec : Prop :=
  ∀ n, P3577944671921871569.a n = A284574 n

end A284574

/-! ## A284574.P11281365949779081774

`A010872(and(n, 2*n))`
-/

namespace A284574.P11281365949779081774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Nat.land n (2 * n))

end

end A284574.P11281365949779081774

namespace A284574

/-- `A010872(and(n, 2*n))` -/
def P11281365949779081774.Spec : Prop :=
  ∀ n, P11281365949779081774.a n = A284574 n

end A284574

/-! ## A284574.P3905222889446750796

`A110269(and(n, 2*n))`
-/

namespace A284574.P3905222889446750796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110269 (Nat.land n (2 * n))

end

end A284574.P3905222889446750796

namespace A284574

/-- `A110269(and(n, 2*n))` -/
def P3905222889446750796.Spec : Prop :=
  ∀ n, P3905222889446750796.a n = A284574 n

end A284574

/-! ## A284574.P98978549625990617

`A080425(A048735(n))`
-/

namespace A284574.P98978549625990617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A048735 n).toNat

end

end A284574.P98978549625990617

namespace A284574

/-- `A080425(A048735(n))` -/
def P98978549625990617.Spec : Prop :=
  ∀ n, P98978549625990617.a n = A284574 n

end A284574

/-! ## A284574.P10905323043733392045

`A010872(A213370(n))`
-/

namespace A284574.P10905323043733392045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A213370 n).toNat

end

end A284574.P10905323043733392045

namespace A284574

/-- `A010872(A213370(n))` -/
def P10905323043733392045.Spec : Prop :=
  ∀ n, P10905323043733392045.a n = A284574 n

end A284574

/-! ## A284574.P2297627473998144391

`(A007531(n)-A048728(n))%3`
-/

namespace A284574.P2297627473998144391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007531 n - A048728 n) 3

end

end A284574.P2297627473998144391

namespace A284574

/-- `(A007531(n)-A048728(n))%3` -/
def P2297627473998144391.Spec : Prop :=
  ∀ n, P2297627473998144391.a n = A284574 n

end A284574

/-! ## A284574.P4156373613756535319

`A080425(A048728(n))`
-/

namespace A284574.P4156373613756535319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A048728 n).toNat

end

end A284574.P4156373613756535319

namespace A284574

/-- `A080425(A048728(n))` -/
def P4156373613756535319.Spec : Prop :=
  ∀ n, P4156373613756535319.a n = A284574 n

end A284574

/-! ## A284574.P4223841082553185579

`(or(1, A004277(A048728(n)+2))+1)%3`
-/

namespace A284574.P4223841082553185579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A004277 (A048728 n + 2).toNat) + 1) 3

end

end A284574.P4223841082553185579

namespace A284574

/-- `(or(1, A004277(A048728(n)+2))+1)%3` -/
def P4223841082553185579.Spec : Prop :=
  ∀ n, P4223841082553185579.a n = A284574 n

end A284574

/-! ## A284574.P6234456166319336564

`A010872(A010872(n)+A048724(n)-n)`
-/

namespace A284574.P6234456166319336564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A010872 n + (A048724 n - (n : ℤ))).toNat

end

end A284574.P6234456166319336564

namespace A284574

/-- `A010872(A010872(n)+A048724(n)-n)` -/
def P6234456166319336564.Spec : Prop :=
  ∀ n, P6234456166319336564.a n = A284574 n

end A284574

/-! ## A284574.P1252847490746669765

`A048728(2*n)%3`
-/

namespace A284574.P1252847490746669765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048728 (2 * n)) 3

end

end A284574.P1252847490746669765

namespace A284574

/-- `A048728(2*n)%3` -/
def P1252847490746669765.Spec : Prop :=
  ∀ n, P1252847490746669765.a n = A284574 n

end A284574

/-! ## A284574.P9984784868236796590

`A142149(2*n)%3`
-/

namespace A284574.P9984784868236796590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142149 (2 * n)) 3

end

end A284574.P9984784868236796590

namespace A284574

/-- `A142149(2*n)%3` -/
def P9984784868236796590.Spec : Prop :=
  ∀ n, P9984784868236796590.a n = A284574 n

end A284574

/-! ## A284574.P16906459541589802110

`A163617(2*n)%3`
-/

namespace A284574.P16906459541589802110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163617 (2 * n)) 3

end

end A284574.P16906459541589802110

namespace A284574

/-- `A163617(2*n)%3` -/
def P16906459541589802110.Spec : Prop :=
  ∀ n, P16906459541589802110.a n = A284574 n

end A284574

/-! ## A284574.P16492239517949020158

`A395535(2*n)%3`
-/

namespace A284574.P16492239517949020158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395535 (2 * n)) 3

end

end A284574.P16492239517949020158

namespace A284574

/-- `A395535(2*n)%3` -/
def P16492239517949020158.Spec : Prop :=
  ∀ n, P16492239517949020158.a n = A284574 n

end A284574

/-! ## A284574.P2265946885024408877

`A048726(2*n)%3`
-/

namespace A284574.P2265946885024408877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048726 (2 * n)) 3

end

end A284574.P2265946885024408877

namespace A284574

/-- `A048726(2*n)%3` -/
def P2265946885024408877.Spec : Prop :=
  ∀ n, P2265946885024408877.a n = A284574 n

end A284574

/-! ## A284574.P7852399276202250411

`A048735(2*n)%3`
-/

namespace A284574.P7852399276202250411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048735 (2 * n)) 3

end

end A284574.P7852399276202250411

namespace A284574

/-- `A048735(2*n)%3` -/
def P7852399276202250411.Spec : Prop :=
  ∀ n, P7852399276202250411.a n = A284574 n

end A284574

/-!
# A284575: a(n) = A048725(n) mod 3.

The programs for A284575, the canonical program `A284575.P3758436185996907725` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284575 has offset 0).

The definition of A284575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284575.P3758436185996907725

`A048725(n)%3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284575

/-- `A048725(n)%3` -/
def P3758436185996907725.Spec : Prop :=
  ∀ n, P3758436185996907725.a n = A284575 n

theorem P3758436185996907725.correct : P3758436185996907725.Spec := by
  intro n
  simp only [A284575]

end A284575

/-! ## A284575.P2350693235389644807

`xor(n, 4*n)%3`
-/

namespace A284575.P2350693235389644807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (4 * n) % 3

end

end A284575.P2350693235389644807

namespace A284575

/-- `xor(n, 4*n)%3` -/
def P2350693235389644807.Spec : Prop :=
  ∀ n, (P2350693235389644807.a n : ℤ) = A284575 n

end A284575

/-! ## A284575.P2156018306994147995

`(and(4*n, -n)/2)%3`
-/

namespace A284575.P2156018306994147995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Int.land (4 * n : ℤ) (-(n : ℤ)) : ℚ) / 2)) 3

end

end A284575.P2156018306994147995

namespace A284575

/-- `(and(4*n, -n)/2)%3` -/
def P2156018306994147995.Spec : Prop :=
  ∀ n, P2156018306994147995.a n = A284575 n

end A284575

/-! ## A284575.P4396412391684406014

`and(8*n, -(2*n))%3`
-/

namespace A284575.P4396412391684406014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (8 * n : ℤ) (-(2 * n : ℤ))) 3

end

end A284575.P4396412391684406014

namespace A284575

/-- `and(8*n, -(2*n))%3` -/
def P4396412391684406014.Spec : Prop :=
  ∀ n, P4396412391684406014.a n = A284575 n

end A284575

/-! ## A284575.P15873635553731387762

`A003188(A048726(n))%3`
-/

namespace A284575.P15873635553731387762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A048726 n).toNat) 3

end

end A284575.P15873635553731387762

namespace A284575

/-- `A003188(A048726(n))%3` -/
def P15873635553731387762.Spec : Prop :=
  ∀ n, P15873635553731387762.a n = A284575 n

end A284575

/-! ## A284575.P13244506057584742525

`A003188(A003188(4*n))%3`
-/

namespace A284575.P13244506057584742525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A003188 (4 * n)).toNat) 3

end

end A284575.P13244506057584742525

namespace A284575

/-- `A003188(A003188(4*n))%3` -/
def P13244506057584742525.Spec : Prop :=
  ∀ n, P13244506057584742525.a n = A284575 n

end A284575

/-! ## A284575.P8582504600717933636

`A284557(2*n-A048729(n))`
-/

namespace A284575.P8582504600717933636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 ((2 * n : ℤ) - A048729 n).toNat

end

end A284575.P8582504600717933636

namespace A284575

/-- `A284557(2*n-A048729(n))` -/
def P8582504600717933636.Spec : Prop :=
  ∀ n, P8582504600717933636.a n = A284575 n

end A284575

/-! ## A284575.P11460014332303962846

`A284557(n-A048729(n)+n)`
-/

namespace A284575.P11460014332303962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 ((n : ℤ) - A048729 n + (n : ℤ)).toNat

end

end A284575.P11460014332303962846

namespace A284575

/-- `A284557(n-A048729(n)+n)` -/
def P11460014332303962846.Spec : Prop :=
  ∀ n, P11460014332303962846.a n = A284575 n

end A284575

/-! ## A284575.P15241768213162852522

`A284557(n-(A048729(n)-n))`
-/

namespace A284575.P15241768213162852522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 ((n : ℤ) - (A048729 n - (n : ℤ))).toNat

end

end A284575.P15241768213162852522

namespace A284575

/-- `A284557(n-(A048729(n)-n))` -/
def P15241768213162852522.Spec : Prop :=
  ∀ n, P15241768213162852522.a n = A284575 n

end A284575

/-! ## A284575.P11985402170557347892

`A396059(2*n)%3`
-/

namespace A284575.P11985402170557347892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396059 (2 * n)) 3

end

end A284575.P11985402170557347892

namespace A284575

/-- `A396059(2*n)%3` -/
def P11985402170557347892.Spec : Prop :=
  ∀ n, P11985402170557347892.a n = A284575 n

end A284575

/-! ## A284575.P2999116964314370629

`A269173(2*n)%3`
-/

namespace A284575.P2999116964314370629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269173 (2 * n)) 3

end

end A284575.P2999116964314370629

namespace A284575

/-- `A269173(2*n)%3` -/
def P2999116964314370629.Spec : Prop :=
  ∀ n, P2999116964314370629.a n = A284575 n

end A284575

/-! ## A284575.P14484738212874679424

`A284574(xor(n, 2*n))`
-/

namespace A284575.P14484738212874679424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 (Nat.xor n (2 * n))

end

end A284575.P14484738212874679424

namespace A284575

/-- `A284574(xor(n, 2*n))` -/
def P14484738212874679424.Spec : Prop :=
  ∀ n, P14484738212874679424.a n = A284575 n

end A284575

/-! ## A284575.P7040948700796154901

`A284574(A048724(n))`
-/

namespace A284575.P7040948700796154901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 (A048724 n).toNat

end

end A284575.P7040948700796154901

namespace A284575

/-- `A284574(A048724(n))` -/
def P7040948700796154901.Spec : Prop :=
  ∀ n, P7040948700796154901.a n = A284575 n

end A284575

/-! ## A284575.P5155164183935959874

`A284574(A003188(2*n))`
-/

namespace A284575.P5155164183935959874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 (A003188 (2 * n)).toNat

end

end A284575.P5155164183935959874

namespace A284575

/-- `A284574(A003188(2*n))` -/
def P5155164183935959874.Spec : Prop :=
  ∀ n, P5155164183935959874.a n = A284575 n

end A284575

/-! ## A284575.P7370168744587070616

`A284574(A142149(2*n))`
-/

namespace A284575.P7370168744587070616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 (A142149 (2 * n)).toNat

end

end A284575.P7370168744587070616

namespace A284575

/-- `A284574(A142149(2*n))` -/
def P7370168744587070616.Spec : Prop :=
  ∀ n, P7370168744587070616.a n = A284575 n

end A284575

/-! ## A284575.P1158861625014381696

`A004770(A048729(n)+3+n)%3`
-/

namespace A284575.P1158861625014381696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004770 (A048729 n + 3 + (n : ℤ)).toNat) 3

end

end A284575.P1158861625014381696

namespace A284575

/-- `A004770(A048729(n)+3+n)%3` -/
def P1158861625014381696.Spec : Prop :=
  ∀ n, P1158861625014381696.a n = A284575 n

end A284575

/-! ## A284575.P10663623469221650578

`A010872(A010872(n)+A048725(n)-n)`
-/

namespace A284575.P10663623469221650578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A010872 n + (A048725 n - (n : ℤ))).toNat

end

end A284575.P10663623469221650578

namespace A284575

/-- `A010872(A010872(n)+A048725(n)-n)` -/
def P10663623469221650578.Spec : Prop :=
  ∀ n, P10663623469221650578.a n = A284575 n

end A284575

/-! ## A284575.P5522016198409184396

`A010872(A048725(n))`
-/

namespace A284575.P5522016198409184396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048725 n).toNat

end

end A284575.P5522016198409184396

namespace A284575

/-- `A010872(A048725(n))` -/
def P5522016198409184396.Spec : Prop :=
  ∀ n, P5522016198409184396.a n = A284575 n

end A284575

/-! ## A284575.P8818858806454151874

`A080425(A269173(n))`
-/

namespace A284575.P8818858806454151874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A269173 n).toNat

end

end A284575.P8818858806454151874

namespace A284575

/-- `A080425(A269173(n))` -/
def P8818858806454151874.Spec : Prop :=
  ∀ n, P8818858806454151874.a n = A284575 n

end A284575

/-! ## A284575.P10166238245355955085

`A284574(A065621(4*n+1))`
-/

namespace A284575.P10166238245355955085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 (A065621 (4 * n + 1)).toNat

end

end A284575.P10166238245355955085

namespace A284575

/-- `A284574(A065621(4*n+1))` -/
def P10166238245355955085.Spec : Prop :=
  ∀ n, P10166238245355955085.a n = A284575 n

end A284575

/-!
# A284576: a(n) = A059896(A260443(n), A260443(1+n)).

The programs for A284576, there is no canonical definition to state claims against.
-/

/-! ## A284576.P6404148017400475759

`A284577(n)*A284578(n)`
-/

namespace A284576.P6404148017400475759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284577 n * A284578 n

end

end A284576.P6404148017400475759

/-! ## A284576.P10103981367649011609

`A277324(n)/A284578(n)`
-/

namespace A284576.P10103981367649011609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284578 n : ℚ)

end

end A284576.P10103981367649011609

/-! ## A284576.P5400892069442842578

`A260443(n+1)/A284578(n)*A260443(n)`
-/

namespace A284576.P5400892069442842578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (n + 1) : ℚ) / (A284578 n : ℚ) * (A260443 n : ℚ)

end

end A284576.P5400892069442842578

/-! ## A284576.P4873050838071551259

`sqrt(A277324(n))*sqrt(A284577(n))`
-/

namespace A284576.P4873050838071551259
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277324 n : ℝ) * Real.sqrt (A284577 n : ℝ)

end

end A284576.P4873050838071551259

/-! ## A284576.P16866108280693096719

`A260443(2*n+1)/A284578(n)`
-/

namespace A284576.P16866108280693096719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284578 n : ℚ)

end

end A284576.P16866108280693096719

/-! ## A284576.P1680211995053300713

`sqrt(A277324(n)*A284577(n))`
-/

namespace A284576.P1680211995053300713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277324 n * A284577 n : ℝ)

end

end A284576.P1680211995053300713

/-!
# A284577: a(n) = A059897(A260443(n), A260443(1+n)).

The programs for A284577, there is no canonical definition to state claims against.
-/

/-! ## A284577.P15926210782947305125

`A277324(n)/A000290(A284578(n))`
-/

namespace A284577.P15926210782947305125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A000290 (A284578 n).toNat : ℚ)

end

end A284577.P15926210782947305125

/-! ## A284577.P15988072606470525709

`A284576(n)/A284578(n)`
-/

namespace A284577.P15988072606470525709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n : ℚ) / (A284578 n : ℚ)

end

end A284577.P15988072606470525709

/-! ## A284577.P1471428393940721730

`A260443(2*n+1)/A284578(n)²`
-/

namespace A284577.P1471428393940721730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284578 n ^ 2 : ℚ)

end

end A284577.P1471428393940721730

/-! ## A284577.P11136551842552337308

`A284576(n)/A277324(n)*A284576(n)`
-/

namespace A284577.P11136551842552337308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n : ℚ) / (A277324 n : ℚ) * (A284576 n : ℚ)

end

end A284577.P11136551842552337308

/-! ## A284577.P17802794019895522332

`A284576(n)²/A277324(n)`
-/

namespace A284577.P17802794019895522332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n ^ 2 : ℚ) / (A277324 n : ℚ)

end

end A284577.P17802794019895522332

/-! ## A284577.P17679665863306340177

`A284576(n)²/A260443(2*n+1)`
-/

namespace A284577.P17679665863306340177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n ^ 2 : ℚ) / (A260443 (2 * n + 1) : ℚ)

end

end A284577.P17679665863306340177

/-!
# A284578: a(n) = A059895(A260443(n), A260443(1+n)).

The programs for A284578, there is no canonical definition to state claims against.
-/

/-! ## A284578.P11732732195689993136

`A284576(n)/A284577(n)`
-/

namespace A284578.P11732732195689993136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n : ℚ) / (A284577 n : ℚ)

end

end A284578.P11732732195689993136

/-! ## A284578.P5434141344585152577

`A277324(n)/A284576(n)`
-/

namespace A284578.P5434141344585152577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284576 n : ℚ)

end

end A284578.P5434141344585152577

/-! ## A284578.P16578347387371082492

`sqrt(A277324(n)/A284577(n))`
-/

namespace A284578.P16578347387371082492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A277324 n : ℚ) / (A284577 n : ℚ) : ℝ)

end

end A284578.P16578347387371082492

/-! ## A284578.P6228959515112931784

`A260443(Δ[n²])/A284576(n)`
-/

namespace A284578.P6228959515112931784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A284576 n : ℚ)

end

end A284578.P6228959515112931784

/-! ## A284578.P3651999191225333235

`A277198(n)*A284008(n)/A284576(n)`
-/

namespace A284578.P3651999191225333235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277198 n * A284008 n : ℚ) / (A284576 n : ℚ)

end

end A284578.P3651999191225333235

/-! ## A284578.P17875506170072764279

`A284553(2*n+1)*A284564(n)/A284576(n)`
-/

namespace A284578.P17875506170072764279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284553 (2 * n + 1) * A284564 n : ℚ) / (A284576 n : ℚ)

end

end A284578.P17875506170072764279

/-!
# A284579: Carryless base-2 product (A048720) of run lengths in binary representation of n.

The programs for A284579, there is no canonical definition to state claims against.
-/

/-! ## A284579.P17870289300109163027

`A028310(n-A284581(A028310(n)))`
-/

namespace A284579.P17870289300109163027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A284581 (A028310 n).toNat).toNat

end

end A284579.P17870289300109163027

/-! ## A284579.P18240686579781900437

`A000007(n)+n-A284581(A000007(n)+n)`
-/

namespace A284579.P18240686579781900437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) - A284581 (A000007 n + (n : ℤ)).toNat

end

end A284579.P18240686579781900437

/-! ## A284579.P17243190475199696530

`A042963(n+1)-A284581(A042963(n+1))`
-/

namespace A284579.P17243190475199696530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A284581 (A042963 (n + 1)).toNat

end

end A284579.P17243190475199696530

/-! ## A284579.P2284930666567412393

`A065033(2*n)-A284581(A065033(2*n))`
-/

namespace A284579.P2284930666567412393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A284581 (A065033 (2 * n)).toNat

end

end A284579.P2284930666567412393

/-! ## A284579.P16437666253301534332

`A010078(n+1)-A284581(A010078(n+1))`
-/

namespace A284579.P16437666253301534332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (n + 1) - A284581 (A010078 (n + 1)).toNat

end

end A284579.P16437666253301534332

/-! ## A284579.P18137914788176853100

`A233583(n+1)-A284581(A233583(n+1))`
-/

namespace A284579.P18137914788176853100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A284581 (A233583 (n + 1)).toNat

end

end A284579.P18137914788176853100

/-! ## A284579.P9644352139906260968

`A284580(A290254(n+1))`
-/

namespace A284579.P9644352139906260968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 (A290254 (n + 1)).toNat

end

end A284579.P9644352139906260968

/-! ## A284579.P13746466385563015159

`A284580((n+1)*A003817(n))`
-/

namespace A284579.P13746466385563015159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 ((n + 1 : ℤ) * A003817 n).toNat

end

end A284579.P13746466385563015159

/-! ## A284579.P9667486685139202362

`A284580((n+1)*(A035327(n)+n))`
-/

namespace A284579.P9667486685139202362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 ((n + 1 : ℤ) * (A035327 n + (n : ℤ))).toNat

end

end A284579.P9667486685139202362

/-!
# A284581: a(n) = n minus (carryless base-2 product of run lengths in binary representation of n) = n - A284579(n).

The programs for A284581, there is no canonical definition to state claims against.
-/

/-! ## A284581.P16518531360123866449

`n+1-A284579(n+1)`
-/

namespace A284581.P16518531360123866449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284579 (n + 1)

end

end A284581.P16518531360123866449

/-! ## A284581.P14856752905350548400

`∑[1-Δ[A284579(n)]]-1`
-/

namespace A284581.P14856752905350548400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284581.P14856752905350548400

/-! ## A284581.P11348128710916964078

`n-A033619(A284579(n+1))`
-/

namespace A284581.P11348128710916964078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033619 (A284579 (n + 1)).toNat

end

end A284581.P11348128710916964078

/-! ## A284581.P17682050216591243202

`A242420(A242420(n+1))+A187844(A284579(n+1))`
-/

namespace A284581.P17682050216591243202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A242420 (n + 1)).toNat + A187844 (A284579 (n + 1)).toNat

end

end A284581.P17682050216591243202

/-!
# A284582: a(n) = gcd(A227349(n), A227350(n)).

The programs for A284582, the canonical program `A284582.P6281179122535758750` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284582 has offset 0).

The definition of A284582 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A227350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284582.P6281179122535758750

`gcd(A227349(n), A227350(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A284582

/-- `gcd(A227349(n), A227350(n))` -/
def P6281179122535758750.Spec : Prop :=
  ∀ n, (P6281179122535758750.a n : ℤ) = A284582 n

theorem P6281179122535758750.correct : P6281179122535758750.Spec := by
  intro n
  simp only [A284582]

end A284582

/-! ## A284582.P17030862672639234631

`A167489(n)/A284583(n)`
-/

namespace A284582.P17030862672639234631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284583 n : ℚ)

end

end A284582.P17030862672639234631

namespace A284582

/-- `A167489(n)/A284583(n)` -/
def P17030862672639234631.Spec : Prop :=
  ∀ n, P17030862672639234631.a n = (A284582 n : ℚ)

end A284582

/-! ## A284582.P6541090944461206808

`A227349(n)*A227350(n)/A284583(n)`
-/

namespace A284582.P6541090944461206808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n * A227350 n : ℚ) / (A284583 n : ℚ)

end

end A284582.P6541090944461206808

namespace A284582

/-- `A227349(n)*A227350(n)/A284583(n)` -/
def P6541090944461206808.Spec : Prop :=
  ∀ n, P6541090944461206808.a n = (A284582 n : ℚ)

end A284582

/-! ## A284582.P6059854304364957262

`gcd(A227349(2*n), A227349(A035327(n)))`
-/

namespace A284582.P6059854304364957262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227349 (2 * n)) (A227349 (A035327 n).toNat)

end

end A284582.P6059854304364957262

namespace A284582

/-- `gcd(A227349(2*n), A227349(A035327(n)))` -/
def P6059854304364957262.Spec : Prop :=
  ∀ n, (P6059854304364957262.a n : ℤ) = A284582 n

end A284582

/-! ## A284582.P1815969251377935725

`gcd(A240303(n), A284558(n))`
-/

namespace A284582.P1815969251377935725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240303 n) (A284558 n)

end

end A284582.P1815969251377935725

namespace A284582

/-- `gcd(A240303(n), A284558(n))` -/
def P1815969251377935725.Spec : Prop :=
  ∀ n, (P1815969251377935725.a n : ℤ) = A284582 n

end A284582

/-!
# A284583: a(n) = lcm(A227349(n), A227350(n)).

The programs for A284583, the canonical program `A284583.P9978048678655332143` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284583 has offset 0).

The definition of A284583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A227350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284583.P9978048678655332143

`lcm(A227349(n), A227350(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A284583

/-- `lcm(A227349(n), A227350(n))` -/
def P9978048678655332143.Spec : Prop :=
  ∀ n, (P9978048678655332143.a n : ℤ) = A284583 n

theorem P9978048678655332143.correct : P9978048678655332143.Spec := by
  intro n
  simp only [A284583]

end A284583

/-! ## A284583.P13798294201584326828

`A167489(n)/A284582(n)`
-/

namespace A284583.P13798294201584326828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284582 n : ℚ)

end

end A284583.P13798294201584326828

namespace A284583

/-- `A167489(n)/A284582(n)` -/
def P13798294201584326828.Spec : Prop :=
  ∀ n, P13798294201584326828.a n = (A284583 n : ℚ)

end A284583

/-! ## A284583.P8659704345687795701

`A227349(n)*A227350(n)/A284582(n)`
-/

namespace A284583.P8659704345687795701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n * A227350 n : ℚ) / (A284582 n : ℚ)

end

end A284583.P8659704345687795701

namespace A284583

/-- `A227349(n)*A227350(n)/A284582(n)` -/
def P8659704345687795701.Spec : Prop :=
  ∀ n, P8659704345687795701.a n = (A284583 n : ℚ)

end A284583

/-! ## A284583.P3343435626910473906

`A167489(n)/gcd(A227349(n), A227350(n))`
-/

namespace A284583.P3343435626910473906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (Int.gcd (A227349 n) (A227350 n) : ℚ)

end

end A284583.P3343435626910473906

namespace A284583

/-- `A167489(n)/gcd(A227349(n), A227350(n))` -/
def P3343435626910473906.Spec : Prop :=
  ∀ n, P3343435626910473906.a n = (A284583 n : ℚ)

end A284583

/-! ## A284583.P15401764727942447128

`lcm(A167489(n), A246595(n))/A227349(n)`
-/

namespace A284583.P15401764727942447128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A167489 n) (A246595 n) : ℚ) / (A227349 n : ℚ)

end

end A284583.P15401764727942447128

namespace A284583

/-- `lcm(A167489(n), A246595(n))/A227349(n)` -/
def P15401764727942447128.Spec : Prop :=
  ∀ n, P15401764727942447128.a n = (A284583 n : ℚ)

end A284583

/-!
# A284584: a(1) = 0; for n > 1, if n is not squarefree, then a(n) = A057627(n), otherwise a(n) = A013928(n).

The programs for A284584, there is no canonical definition to state claims against.
-/

/-! ## A284584.P1649753676163185416

`floor(A243352(n+1)/2)`
-/

namespace A284584.P1649753676163185416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243352 (n + 1) : ℚ) / 2⌋

end

end A284584.P1649753676163185416

/-! ## A284584.P10616499657474006760

`(A243352(n+1)-A008683(n+1)²)/2`
-/

namespace A284584.P10616499657474006760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243352 (n + 1) - A008683 (n + 1) ^ 2 : ℚ) / 2

end

end A284584.P10616499657474006760

/-! ## A284584.P10674852652283479880

`A004526(A243352(n+1))`
-/

namespace A284584.P10674852652283479880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A243352 (n + 1)).toNat

end

end A284584.P10674852652283479880

/-! ## A284584.P7487099422199769708

`A028242(or(1, A243352(n+1)))`
-/

namespace A284584.P7487099422199769708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A243352 (n + 1))).toNat

end

end A284584.P7487099422199769708

/-! ## A284584.P8905958333467005760

`A057979(or(1, A243352(n+1)))`
-/

namespace A284584.P8905958333467005760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A243352 (n + 1))).toNat

end

end A284584.P8905958333467005760

/-! ## A284584.P4650247782409907767

`A173989(or(1, A243352(n+1)))`
-/

namespace A284584.P4650247782409907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (Int.lor 1 (A243352 (n + 1))).toNat

end

end A284584.P4650247782409907767

/-! ## A284584.P2229212694394834405

`A002265(2*A243352(n+1))`
-/

namespace A284584.P2229212694394834405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A243352 (n + 1)).toNat

end

end A284584.P2229212694394834405

/-! ## A284584.P3693656243534107332

`A002265(A243352(n+1)+A243352(n+1)+1)`
-/

namespace A284584.P3693656243534107332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A243352 (n + 1) + (A243352 (n + 1) + 1)).toNat

end

end A284584.P3693656243534107332

/-! ## A284584.P8715408258991833640

`A008615(3*A243352(n+1))`
-/

namespace A284584.P8715408258991833640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A243352 (n + 1)).toNat

end

end A284584.P8715408258991833640

/-! ## A284584.P9984972735130175154

`A337101(A243352(n+1)²)`
-/

namespace A284584.P9984972735130175154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A243352 (n + 1) ^ 2).toNat

end

end A284584.P9984972735130175154

/-!
# A284585: Expansion of Product_{k>=0} (1 - x^(6*k+1)) in powers of x.

The programs for A284585, there is no canonical definition to state claims against.
-/

/-! ## A284585.P17038095059309775803

`(-1)^n*A280456(n)`
-/

namespace A284585.P17038095059309775803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A280456 n

end

end A284585.P17038095059309775803

/-! ## A284585.P4946578446856430617

`A280456(n)/A033999(A008585(n))`
-/

namespace A284585.P4946578446856430617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280456 n : ℚ) / (A033999 (A008585 n).toNat : ℚ)

end

end A284585.P4946578446856430617

/-! ## A284585.P8974552357971850410

`A280456(n)/A033999(A306546(n+1))`
-/

namespace A284585.P8974552357971850410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280456 n : ℚ) / (A033999 (A306546 (n + 1)).toNat : ℚ)

end

end A284585.P8974552357971850410

/-! ## A284585.P17549261477606563387

`-(A105812(3*n+2)*A280456(n))`
-/

namespace A284585.P17549261477606563387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A105812 (3 * n + 2) * A280456 n)

end

end A284585.P17549261477606563387

/-! ## A284585.P17848078790935749897

`A280456(n)/A037861(A066879(n+1))`
-/

namespace A284585.P17848078790935749897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280456 n : ℚ) / (A037861 (A066879 (n + 1)).toNat : ℚ)

end

end A284585.P17848078790935749897

/-! ## A284585.P7628280141576732263

`A280456(n)/A094267(n²)`
-/

namespace A284585.P7628280141576732263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280456 n : ℚ) / (A094267 (n ^ 2) : ℚ)

end

end A284585.P7628280141576732263

/-!
# A284586: Expansion of Product_{k>=0} (1 - x^(6*k+5)) in powers of x.

The programs for A284586, there is no canonical definition to state claims against.
-/

/-! ## A284586.P2607838227871963739

`A033999(n)*A281244(n)`
-/

namespace A284586.P2607838227871963739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A281244 n

end

end A284586.P2607838227871963739

/-! ## A284586.P8882175512180296587

`A009001(2*n)*A281244(n)`
-/

namespace A284586.P8882175512180296587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A281244 n

end

end A284586.P8882175512180296587

/-! ## A284586.P13500624961135664749

`A281244(n)/A009001(A005843(n))`
-/

namespace A284586.P13500624961135664749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281244 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A284586.P13500624961135664749

/-! ## A284586.P12532676588656791656

`A009531(2*n+1)*A281244(n)`
-/

namespace A284586.P12532676588656791656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A281244 n

end

end A284586.P12532676588656791656

/-! ## A284586.P8090818470860004041

`A281244(n)/A009531(A005408(n))`
-/

namespace A284586.P8090818470860004041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281244 n : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A284586.P8090818470860004041

/-! ## A284586.P10012088434686100544

`A010892(A008585(n))*A281244(n)`
-/

namespace A284586.P10012088434686100544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat * A281244 n

end

end A284586.P10012088434686100544

/-! ## A284586.P3153404823590116313

`A094267(n²)*A281244(n)`
-/

namespace A284586.P3153404823590116313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A281244 n

end

end A284586.P3153404823590116313

/-!
# A284587: Sum of the divisors of n that are not divisible by 13.

The programs for A284587, the canonical program `A284587.P776978469872185020` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284587 has offset 1).

The definition of A284587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284587.P776978469872185020

`∑{d}[n+1, #%lcm(13, #)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284587

/-- `∑{d}[n+1, #%lcm(13, #)]` -/
def P776978469872185020.Spec : Prop :=
  ∀ n, (P776978469872185020.a n : ℤ) = A284587 (n + 1)

theorem P776978469872185020.correct : P776978469872185020.Spec := by
  intro n
  simp only [A284587, Nat.add_sub_cancel]

end A284587

/-! ## A284587.P10580049363460548198

`A000203((n+1)/13^val(n+1, 13))`
-/

namespace A284587.P10580049363460548198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (13 ^ SequenceMachineLib.valuation (n + 1) 13 : ℚ))).toNat

end

end A284587.P10580049363460548198

namespace A284587

/-- `A000203((n+1)/13^val(n+1, 13))` -/
def P10580049363460548198.Spec : Prop :=
  ∀ n, P10580049363460548198.a n = A284587 (n + 1)

end A284587

/-! ## A284587.P5677062207847787826

`gcd(A000203(13*(n+1)), A000203(n+1))`
-/

namespace A284587.P5677062207847787826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (13 * (n + 1))) (A000203 (n + 1))

end

end A284587.P5677062207847787826

namespace A284587

/-- `gcd(A000203(13*(n+1)), A000203(n+1))` -/
def P5677062207847787826.Spec : Prop :=
  ∀ n, (P5677062207847787826.a n : ℤ) = A284587 (n + 1)

end A284587

/-! ## A284587.P11063233662629550884

`A107505(n+1)/2`
-/

namespace A284587.P11063233662629550884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107505 (n + 1) : ℚ) / 2

end

end A284587.P11063233662629550884

namespace A284587

/-- `A107505(n+1)/2` -/
def P11063233662629550884.Spec : Prop :=
  ∀ n, P11063233662629550884.a n = (A284587 (n + 1) : ℚ)

end A284587

/-! ## A284587.P8038610299478024682

`A001281(A107505(n+1))`
-/

namespace A284587.P8038610299478024682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A107505 (n + 1)).toNat

end

end A284587.P8038610299478024682

namespace A284587

/-- `A001281(A107505(n+1))` -/
def P8038610299478024682.Spec : Prop :=
  ∀ n, P8038610299478024682.a n = A284587 (n + 1)

end A284587

/-! ## A284587.P2855806864870124763

`A008619(A107505(n+1)-1)`
-/

namespace A284587.P2855806864870124763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A107505 (n + 1) - 1).toNat

end

end A284587.P2855806864870124763

namespace A284587

/-- `A008619(A107505(n+1)-1)` -/
def P2855806864870124763.Spec : Prop :=
  ∀ n, P2855806864870124763.a n = A284587 (n + 1)

end A284587

/-! ## A284587.P16222079505614780318

`A107497(A008595(n+1))/2`
-/

namespace A284587.P16222079505614780318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107497 (A008595 (n + 1)).toNat : ℚ) / 2

end

end A284587.P16222079505614780318

namespace A284587

/-- `A107497(A008595(n+1))/2` -/
def P16222079505614780318.Spec : Prop :=
  ∀ n, P16222079505614780318.a n = (A284587 (n + 1) : ℚ)

end A284587

/-! ## A284587.P4660586802721495281

`A155085(Δ[A152741(n)])%A155085(n+1)`
-/

namespace A284587.P4660586802721495281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (f1 (n + 1) - f1 n).toNat) (A155085 (n + 1))

end

end A284587.P4660586802721495281

namespace A284587

/-- `A155085(Δ[A152741(n)])%A155085(n+1)` -/
def P4660586802721495281.Spec : Prop :=
  ∀ n, P4660586802721495281.a n = A284587 (n + 1)

end A284587

/-! ## A284587.P12313221058287125106

`∑{d}[A106614(A074712(∑[n]+1)), #]`
-/

namespace A284587.P12313221058287125106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A074712 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A284587.P12313221058287125106

namespace A284587

/-- `∑{d}[A106614(A074712(∑[n]+1)), #]` -/
def P12313221058287125106.Spec : Prop :=
  ∀ n, (P12313221058287125106.a n : ℤ) = A284587 (n + 1)

end A284587

/-!
# A284588: 1-limiting word of the morphism 0->1, 1->0101.

The programs for A284588, there is no canonical definition to state claims against.
-/

/-! ## A284588.P18022891301560310647

`char[A284590(n+1)-1]`
-/

namespace A284588.P18022891301560310647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284590 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284588.P18022891301560310647

/-! ## A284588.P11028750466064498427

`1-char[A284589(n+1)-1]`
-/

namespace A284588.P11028750466064498427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284588.P11028750466064498427

/-! ## A284588.P16382591106096791377

`char[A285210(n+1)-(n+1)]`
-/

namespace A284588.P16382591106096791377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284588.P16382591106096791377

/-! ## A284588.P3090159245740153392

`A285421(A285206(n+1))`
-/

namespace A284588.P3090159245740153392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (A285206 (n + 1)).toNat

end

end A284588.P3090159245740153392

/-! ## A284588.P15943536716427039013

`A285208(A285209(n+1)-1)`
-/

namespace A284588.P15943536716427039013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A285209 (n + 1) - 1).toNat

end

end A284588.P15943536716427039013

/-! ## A284588.P13155061432453563787

`A285208(A284773(n+2)-2)`
-/

namespace A284588.P13155061432453563787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A284773 (n + 2) - 2).toNat

end

end A284588.P13155061432453563787

/-! ## A284588.P10601689596046364742

`A285208(eq[0, A285208(n+1)])`
-/

namespace A284588.P10601689596046364742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284588.P10601689596046364742

/-! ## A284588.P2773502520783994117

`A285208(lt[A285208(n+1), 1])`
-/

namespace A284588.P2773502520783994117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284588.P2773502520783994117

/-! ## A284588.P4243003226570087527

`A285208(comp[A285207(n+1)]+1)`
-/

namespace A284588.P4243003226570087527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A284588.P4243003226570087527

/-! ## A284588.P15995070433346496292

`A285208(comp[A285210(n+1)]+1)`
-/

namespace A284588.P15995070433346496292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A284588.P15995070433346496292

/-! ## A284588.P10932417054077198494

`A284490(Δ[n²])`
-/

namespace A284588.P10932417054077198494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284588.P10932417054077198494

/-! ## A284588.P13903055706736362282

`and(1, A284490(2*(n+1)))`
-/

namespace A284588.P13903055706736362282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284490 (2 * (n + 1)))

end

end A284588.P13903055706736362282

/-! ## A284588.P4203560229839287287

`val(A020639(A285143(2*n+1)), 2)`
-/

namespace A284588.P4203560229839287287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A285143 (2 * n + 1)).toNat).toNat 2

end

end A284588.P4203560229839287287

/-! ## A284588.P8429358300469233742

`A285143(2*(n+1))-(A285143(2*n+1)+1)`
-/

namespace A284588.P8429358300469233742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285143 (2 * (n + 1)) - (A285143 (2 * n + 1) + 1)

end

end A284588.P8429358300469233742

/-! ## A284588.P12541019607599421120

`A285139(A285143(2*n+1)+1)`
-/

namespace A284588.P12541019607599421120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (A285143 (2 * n + 1) + 1).toNat

end

end A284588.P12541019607599421120

/-! ## A284588.P4110663802615112265

`A285142(A285143(2*n+1)+1)`
-/

namespace A284588.P4110663802615112265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A285143 (2 * n + 1) + 1).toNat

end

end A284588.P4110663802615112265

/-! ## A284588.P17867188642667305383

`A285142(A285140(2*(n+1))-1)`
-/

namespace A284588.P17867188642667305383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A285140 (2 * (n + 1)) - 1).toNat

end

end A284588.P17867188642667305383

/-!
# A284589: Positions of 0 in A284588; complement of A284590.

The programs for A284589, there is no canonical definition to state claims against.
-/

/-! ## A284589.P1872933805074094180

`A285420(n+1)+n`
-/

namespace A284589.P1872933805074094180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 1) + (n : ℤ)

end

end A284589.P1872933805074094180

/-! ## A284589.P3912168852039268909

`∑[A285142(n+1)+2]-1`
-/

namespace A284589.P3912168852039268909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284589.P3912168852039268909

/-! ## A284589.P15812105026186222408

`ceil(A285141(n+1)/2+n)`
-/

namespace A284589.P15812105026186222408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285141 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A284589.P15812105026186222408

/-! ## A284589.P18360101888713758617

`ceil((A285422(n+1)+n)/2)`
-/

namespace A284589.P18360101888713758617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285422 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A284589.P18360101888713758617

/-! ## A284589.P16433212341879854058

`A285141(n+1)-∑[char[A285144(n+1)-1]]`
-/

namespace A284589.P16433212341879854058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284589.P16433212341879854058

/-! ## A284589.P9513297177714755144

`A000027(abs(comp[A285144(n+1)-1+n]-1)+n+2)`
-/

namespace A284589.P9513297177714755144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (|(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1| + (n + 2 : ℤ)).toNat

end

end A284589.P9513297177714755144

/-! ## A284589.P8057125985484323577

`A285140(A284489(n+1))/2+n`
-/

namespace A284589.P8057125985484323577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285140 (A284489 (n + 1)).toNat : ℚ) / 2 + (n : ℚ)

end

end A284589.P8057125985484323577

/-! ## A284589.P17090945837764118277

`A284491(2*(n+1))/2`
-/

namespace A284589.P17090945837764118277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284491 (2 * (n + 1)) : ℚ) / 2

end

end A284589.P17090945837764118277

/-! ## A284589.P12642236253801954494

`A284588(A284534(n+1))+A284534(n+1)`
-/

namespace A284589.P12642236253801954494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (A284534 (n + 1)).toNat + A284534 (n + 1)

end

end A284589.P12642236253801954494

/-! ## A284589.P10422350869976978274

`A000463(A285141(n+1))+n`
-/

namespace A284589.P10422350869976978274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285141 (n + 1)).toNat + (n : ℤ)

end

end A284589.P10422350869976978274

/-! ## A284589.P8701569066606697898

`A014245(A285422(n+1)-1)+1`
-/

namespace A284589.P8701569066606697898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A285422 (n + 1) - 1).toNat + 1

end

end A284589.P8701569066606697898

/-! ## A284589.P1240182063693708106

`A285421(A285419(n+1))+A285423(n+1)+n`
-/

namespace A284589.P1240182063693708106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (A285419 (n + 1)).toNat + (A285423 (n + 1) + (n : ℤ))

end

end A284589.P1240182063693708106

/-! ## A284589.P56093470182317386

`A285418(A285422(n+1))+A285423(n+1)+n`
-/

namespace A284589.P56093470182317386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (A285422 (n + 1)).toNat + (A285423 (n + 1) + (n : ℤ))

end

end A284589.P56093470182317386

/-! ## A284589.P4520726808493117513

`A004526(A285422(n+1)+1+n)`
-/

namespace A284589.P4520726808493117513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285422 (n + 1) + 1 + (n : ℤ)).toNat

end

end A284589.P4520726808493117513

/-!
# A284590: Positions of 1 in A284588; complement of A284589.

The programs for A284590, there is no canonical definition to state claims against.
-/

/-! ## A284590.P8956270033246079782

`A285210(n+1)-n`
-/

namespace A284590.P8956270033246079782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 (n + 1) - (n : ℤ)

end

end A284590.P8956270033246079782

/-! ## A284590.P883404097290151242

`∑[A285418(n+1)+1]`
-/

namespace A284590.P883404097290151242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284590.P883404097290151242

/-! ## A284590.P10101014791488432947

`record[(n+1)*A284588(n+1)]`
-/

namespace A284590.P10101014791488432947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284590.P10101014791488432947

/-! ## A284590.P1648580743951238097

`A284535(n+1)+A284588(A284535(n+1))-1`
-/

namespace A284590.P1648580743951238097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284535 (n + 1) + (A284588 (A284535 (n + 1)).toNat - 1)

end

end A284590.P1648580743951238097

/-! ## A284590.P13590904641108506163

`A285423(Δ[n²])-n`
-/

namespace A284590.P13590904641108506163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284590.P13590904641108506163

/-! ## A284590.P305836655010647926

`A284492(2*(n+1))/2`
-/

namespace A284590.P305836655010647926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284492 (2 * (n + 1)) : ℚ) / 2

end

end A284590.P305836655010647926

/-! ## A284590.P17299375143536960297

`∑[A285139(2*n+1)+1]`
-/

namespace A284590.P17299375143536960297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284590.P17299375143536960297

/-! ## A284590.P5524945731488748809

`∑[and(3, A285139(n+1+n)+1)]`
-/

namespace A284590.P5524945731488748809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A285139 (n + 1 + n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284590.P5524945731488748809

/-! ## A284590.P860565656572834076

`A284534(2*n+1)+n-4*n`
-/

namespace A284590.P860565656572834076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 (2 * n + 1) + ((n : ℤ) - (4 * n : ℤ))

end

end A284590.P860565656572834076

/-! ## A284590.P12412138688906810091

`(A285144(2*(n+1))-(2*n+1))/2`
-/

namespace A284590.P12412138688906810091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285144 (2 * (n + 1)) - (2 * n + 1 : ℤ) : ℚ) / 2

end

end A284590.P12412138688906810091

/-! ## A284590.P14836756445367963607

`(A285419(2*(n+1))-(4*n+2))/2`
-/

namespace A284590.P14836756445367963607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (2 * (n + 1)) - (4 * n + 2 : ℤ) : ℚ) / 2

end

end A284590.P14836756445367963607

/-! ## A284590.P6590516938540379447

`A001489(2*n+1)+A285419(2*(n+1))/2`
-/

namespace A284590.P6590516938540379447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (2 * n + 1) : ℚ) + (A285419 (2 * (n + 1)) : ℚ) / 2

end

end A284590.P6590516938540379447

/-! ## A284590.P4061974129347621086

`A110654(A284492(2*n+1))`
-/

namespace A284590.P4061974129347621086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A284492 (2 * n + 1)).toNat

end

end A284590.P4061974129347621086

/-! ## A284590.P10154172459888489618

`A000463(A285144(2*n+1))-n`
-/

namespace A284590.P10154172459888489618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285144 (2 * n + 1)).toNat - (n : ℤ)

end

end A284590.P10154172459888489618

/-!
# A284592: Square array read by antidiagonals: T(n,k) is the number of pairs of partitions of n and k respectively, such that the pair of partitions have no part in common.

The programs for A284592, there is no canonical definition to state claims against.
-/

/-! ## A284592.P3796142525067600948

`A275024(A111528(n))+A026794(n+1)`
-/

namespace A284592.P3796142525067600948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A111528 n).toNat + A026794 (n + 1)

end

end A284592.P3796142525067600948

/-! ## A284592.P7085260755217117428

`A035363(∏{e}[A202636(n+1), #])`
-/

namespace A284592.P7085260755217117428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A284592.P7085260755217117428

/-! ## A284592.P6400314316866903279

`A072832(A257614(n))%8`
-/

namespace A284592.P6400314316866903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072832 (A257614 n).toNat) 8

end

end A284592.P6400314316866903279

/-! ## A284592.P12826422121754677439

`and(A304690(A305954(n+1)), A304718(n))`
-/

namespace A284592.P12826422121754677439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304690 (A305954 (n + 1)).toNat) (A304718 n)

end

end A284592.P12826422121754677439

/-! ## A284592.P804851371800035665

`A347643(A098361(n))-A098356(n)`
-/

namespace A284592.P804851371800035665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A098361 n).toNat - A098356 n

end

end A284592.P804851371800035665

/-!
# A284593: Square array read by antidiagonals: T(n,k) = the number of pairs of partitions of n and k respectively, such that each partition is composed of distinct parts and the pair of partitions have no part in common.

The programs for A284593, there is no canonical definition to state claims against.
-/

/-! ## A284593.P2045195292887551327

`A383706(A146985(n))`
-/

namespace A284593.P2045195292887551327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A146985 n).toNat

end

end A284593.P2045195292887551327

/-! ## A284593.P7765705396451632877

`lcm(A073204(A073204(n)), A365661(n))`
-/

namespace A284593.P7765705396451632877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073204 (A073204 n).toNat) (A365661 n)

end

end A284593.P7765705396451632877

/-! ## A284593.P7803134213201447291

`A365661(n)*A368414(A257463(n))`
-/

namespace A284593.P7803134213201447291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 n * A368414 (A257463 n).toNat

end

end A284593.P7803134213201447291

/-! ## A284593.P8624181182168802365

`A115579(A284001(n))*A365661(n)`
-/

namespace A284593.P8624181182168802365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115579 (A284001 n).toNat * A365661 n

end

end A284593.P8624181182168802365

/-! ## A284593.P8963797199278661909

`A369036(A000045(n))+A365661(n)`
-/

namespace A284593.P8963797199278661909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369036 (A000045 n).toNat + A365661 n

end

end A284593.P8963797199278661909

/-!
# A284594: Numbers whose square has a prime number of partitions.

The programs for A284594, there is no canonical definition to state claims against.
-/

/-! ## A284594.P3972676799563383650

`record[A027760(n+1)-A192727(n+2)]`
-/

namespace A284594.P3972676799563383650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1) - A192727 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284594.P3972676799563383650

/-!
# A284599: Sum of twin prime (A001097) divisors of n.

The programs for A284599, the canonical program `A284599.P274400123540582278` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284599 has offset 1).

The definition of A284599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284599.P5876747742003376060

`∑{p}[A072963(n+1), #]`
-/

namespace A284599.P5876747742003376060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284599.P5876747742003376060

namespace A284599

/-- `∑{p}[A072963(n+1), #]` -/
def P5876747742003376060.Spec : Prop :=
  ∀ n, (P5876747742003376060.a n : ℤ) = A284599 (n + 1)

end A284599

/-! ## A284599.P274400123540582278

`∑{d}[n+1, #*A164292(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284599

/-- `∑{d}[n+1, #*A164292(#)]` -/
def P274400123540582278.Spec : Prop :=
  ∀ n, P274400123540582278.a n = A284599 (n + 1)

theorem P274400123540582278.correct : P274400123540582278.Spec := by
  intro n
  simp only [A284599, Nat.add_sub_cancel]

end A284599

/-! ## A284599.P13128738158392845369

`A005069(A072963(n+1))`
-/

namespace A284599.P13128738158392845369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A072963 (n + 1)).toNat

end

end A284599.P13128738158392845369

namespace A284599

/-- `A005069(A072963(n+1))` -/
def P13128738158392845369.Spec : Prop :=
  ∀ n, P13128738158392845369.a n = A284599 (n + 1)

end A284599

/-! ## A284599.P90372002578611018

`∑{d}[A072963(n+1), A061397(#)]`
-/

namespace A284599.P90372002578611018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061397 d

end

end A284599.P90372002578611018

namespace A284599

/-- `∑{d}[A072963(n+1), A061397(#)]` -/
def P90372002578611018.Spec : Prop :=
  ∀ n, P90372002578611018.a n = A284599 (n + 1)

end A284599

/-! ## A284599.P269235589158515338

`A008472(A072963(∏{p}[n+1, #]))`
-/

namespace A284599.P269235589158515338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072963 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A284599.P269235589158515338

namespace A284599

/-- `A008472(A072963(∏{p}[n+1, #]))` -/
def P269235589158515338.Spec : Prop :=
  ∀ n, P269235589158515338.a n = A284599 (n + 1)

end A284599

/-! ## A284599.P5482556280131946189

`A008472(A072963(n+1)²)`
-/

namespace A284599.P5482556280131946189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072963 (n + 1) ^ 2).toNat

end

end A284599.P5482556280131946189

namespace A284599

/-- `A008472(A072963(n+1)²)` -/
def P5482556280131946189.Spec : Prop :=
  ∀ n, P5482556280131946189.a n = A284599 (n + 1)

end A284599

/-! ## A284599.P7389873490657481619

`lcm(A005069(2*(n+1)), A284203(2*(n+1)))`
-/

namespace A284599.P7389873490657481619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005069 (2 * (n + 1))) (A284203 (2 * (n + 1)))

end

end A284599.P7389873490657481619

namespace A284599

/-- `lcm(A005069(2*(n+1)), A284203(2*(n+1)))` -/
def P7389873490657481619.Spec : Prop :=
  ∀ n, (P7389873490657481619.a n : ℤ) = A284599 (n + 1)

end A284599

