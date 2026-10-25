import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C036
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A066600: Sum of the digits in the n-th row of Pascal's triangle.

The programs for A066600, there is no canonical definition to state claims against.
-/

/-! ## A066600.P2862843545928764755

`∑{digits}[A003590(n), #]`
-/

namespace A066600.P2862843545928764755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066600.P2862843545928764755

/-! ## A066600.P17099962527055181938

`∑{digits}[A092846(n), #]`
-/

namespace A066600.P17099962527055181938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066600.P17099962527055181938

/-! ## A066600.P15260520435797773710

`∑{digits}[(A011557(n)+1)^n, #]`
-/

namespace A066600.P15260520435797773710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066600.P15260520435797773710

/-!
# A066601: a(n) = 3^n mod n.

The programs for A066601, the canonical program `A066601.P273108272121947781` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066601 has offset 1).

The definition of A066601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066601.P273108272121947781

`A066607(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066601

/-- `A066607(n+1)%(n+1)` -/
def P273108272121947781.Spec : Prop :=
  ∀ n, P273108272121947781.a n = A066601 (n + 1)

theorem P273108272121947781.correct : P273108272121947781.Spec := by
  intro n
  simp only [A066601, Nat.add_sub_cancel]

end A066601

/-! ## A066601.P14938939305837659129

`A082511(n+1)%(n+1)`
-/

namespace A066601.P14938939305837659129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082511 (n + 1)) (n + 1 : ℤ)

end

end A066601.P14938939305837659129

namespace A066601

/-- `A082511(n+1)%(n+1)` -/
def P14938939305837659129.Spec : Prop :=
  ∀ n, P14938939305837659129.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P1990734957835636852

`A233471(n+1)%(n+1)`
-/

namespace A066601.P1990734957835636852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233471 (n + 1)) (n + 1 : ℤ)

end

end A066601.P1990734957835636852

namespace A066601

/-- `A233471(n+1)%(n+1)` -/
def P1990734957835636852.Spec : Prop :=
  ∀ n, P1990734957835636852.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P15908894854237144889

`A005408(A094918(n+1))%A001478(n+1)`
-/

namespace A066601.P15908894854237144889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A094918 (n + 1)).toNat) (A001478 (n + 1))

end

end A066601.P15908894854237144889

namespace A066601

/-- `A005408(A094918(n+1))%A001478(n+1)` -/
def P15908894854237144889.Spec : Prop :=
  ∀ n, P15908894854237144889.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P11364442491384660533

`(3^(n+1-A000010(n+1)))%(n+1)`
-/

namespace A066601.P11364442491384660533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n + 1 : ℤ) - A000010 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A066601.P11364442491384660533

namespace A066601

/-- `(3^(n+1-A000010(n+1)))%(n+1)` -/
def P11364442491384660533.Spec : Prop :=
  ∀ n, P11364442491384660533.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P16267379523257295515

`(3*(3^n)%(n+1))%(n+1)`
-/

namespace A066601.P16267379523257295515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 ^ n % (n + 1)) % (n + 1)

end

end A066601.P16267379523257295515

namespace A066601

/-- `(3*(3^n)%(n+1))%(n+1)` -/
def P16267379523257295515.Spec : Prop :=
  ∀ n, (P16267379523257295515.a n : ℤ) = A066601 (n + 1)

end A066601

/-! ## A066601.P774733200802159253

`(3^(n+1))%(n+1)`
-/

namespace A066601.P774733200802159253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1) % (n + 1)

end

end A066601.P774733200802159253

namespace A066601

/-- `(3^(n+1))%(n+1)` -/
def P774733200802159253.Spec : Prop :=
  ∀ n, (P774733200802159253.a n : ℤ) = A066601 (n + 1)

end A066601

/-! ## A066601.P11912825971810045110

`abs(A157674(2*(n+2))%(n+1))`
-/

namespace A066601.P11912825971810045110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A157674 (2 * (n + 2))) (n + 1 : ℤ)|

end

end A066601.P11912825971810045110

namespace A066601

/-- `abs(A157674(2*(n+2))%(n+1))` -/
def P11912825971810045110.Spec : Prop :=
  ∀ n, P11912825971810045110.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P14759288237887676655

`A060154(A167614(n+1))`
-/

namespace A066601.P14759288237887676655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (A167614 (n + 1)).toNat

end

end A066601.P14759288237887676655

namespace A066601

/-- `A060154(A167614(n+1))` -/
def P14759288237887676655.Spec : Prop :=
  ∀ n, P14759288237887676655.a n = A066601 (n + 1)

end A066601

/-! ## A066601.P1438252436228627437

`A114448(A034856(n+2))`
-/

namespace A066601.P1438252436228627437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A034856 (n + 2)).toNat

end

end A066601.P1438252436228627437

namespace A066601

/-- `A114448(A034856(n+2))` -/
def P1438252436228627437.Spec : Prop :=
  ∀ n, P1438252436228627437.a n = A066601 (n + 1)

end A066601

/-!
# A066602: a(n) = 4^n mod n.

The programs for A066602, the canonical program `A066602.P15017815964599118024` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066602 has offset 1).

The definition of A066602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066602.P8715013943293224311

`A015943(n+1)%(n+1)`
-/

namespace A066602.P8715013943293224311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015943 (n + 1)) (n + 1 : ℤ)

end

end A066602.P8715013943293224311

namespace A066602

/-- `A015943(n+1)%(n+1)` -/
def P8715013943293224311.Spec : Prop :=
  ∀ n, P8715013943293224311.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P15017815964599118024

`A066608(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066602

/-- `A066608(n+1)%(n+1)` -/
def P15017815964599118024.Spec : Prop :=
  ∀ n, P15017815964599118024.a n = A066602 (n + 1)

theorem P15017815964599118024.correct : P15017815964599118024.Spec := by
  intro n
  simp only [A066602, Nat.add_sub_cancel]

end A066602

/-! ## A066602.P1150930136061578946

`A015910(n+1)²%(n+1)`
-/

namespace A066602.P1150930136061578946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066602.P1150930136061578946

namespace A066602

/-- `A015910(n+1)²%(n+1)` -/
def P1150930136061578946.Spec : Prop :=
  ∀ n, P1150930136061578946.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P4749943823493054740

`A082493(n+1)²%(n+1)`
-/

namespace A066602.P4749943823493054740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082493 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066602.P4749943823493054740

namespace A066602

/-- `A082493(n+1)²%(n+1)` -/
def P4749943823493054740.Spec : Prop :=
  ∀ n, P4749943823493054740.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P6589489277210297070

`A082900(n+1)²%(n+1)`
-/

namespace A066602.P6589489277210297070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082900 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066602.P6589489277210297070

namespace A066602

/-- `A082900(n+1)²%(n+1)` -/
def P6589489277210297070.Spec : Prop :=
  ∀ n, P6589489277210297070.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P5128213433370918345

`A215747(n+1)²%(n+1)`
-/

namespace A066602.P5128213433370918345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215747 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066602.P5128213433370918345

namespace A066602

/-- `A215747(n+1)²%(n+1)` -/
def P5128213433370918345.Spec : Prop :=
  ∀ n, P5128213433370918345.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P5823556168874668162

`A112983(2*(n+1))/2`
-/

namespace A066602.P5823556168874668162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112983 (2 * (n + 1)) : ℚ) / 2

end

end A066602.P5823556168874668162

namespace A066602

/-- `A112983(2*(n+1))/2` -/
def P5823556168874668162.Spec : Prop :=
  ∀ n, P5823556168874668162.a n = (A066602 (n + 1) : ℚ)

end A066602

/-! ## A066602.P16624432886627069286

`A015910(2*(n+1))%(n+1)`
-/

namespace A066602.P16624432886627069286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P16624432886627069286

namespace A066602

/-- `A015910(2*(n+1))%(n+1)` -/
def P16624432886627069286.Spec : Prop :=
  ∀ n, P16624432886627069286.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P7314202514494594163

`A066606(2*(n+1))%(n+1)`
-/

namespace A066602.P7314202514494594163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066606 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P7314202514494594163

namespace A066602

/-- `A066606(2*(n+1))%(n+1)` -/
def P7314202514494594163.Spec : Prop :=
  ∀ n, P7314202514494594163.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P4792870142791357024

`A191561(2*(n+1))%(n+1)`
-/

namespace A066602.P4792870142791357024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191561 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P4792870142791357024

namespace A066602

/-- `A191561(2*(n+1))%(n+1)` -/
def P4792870142791357024.Spec : Prop :=
  ∀ n, P4792870142791357024.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P1119219350931275851

`A215747(2*(n+1))%(n+1)`
-/

namespace A066602.P1119219350931275851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215747 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P1119219350931275851

namespace A066602

/-- `A215747(2*(n+1))%(n+1)` -/
def P1119219350931275851.Spec : Prop :=
  ∀ n, P1119219350931275851.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P842827604836206096

`A289382(2*(n+1))%(n+1)`
-/

namespace A066602.P842827604836206096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289382 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P842827604836206096

namespace A066602

/-- `A289382(2*(n+1))%(n+1)` -/
def P842827604836206096.Spec : Prop :=
  ∀ n, P842827604836206096.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P16578820336911338238

`((2^(n+1))%(n+1))²%(n+1)`
-/

namespace A066602.P16578820336911338238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) % (n + 1)) ^ 2 % (n + 1)

end

end A066602.P16578820336911338238

namespace A066602

/-- `((2^(n+1))%(n+1))²%(n+1)` -/
def P16578820336911338238.Spec : Prop :=
  ∀ n, (P16578820336911338238.a n : ℤ) = A066602 (n + 1)

end A066602

/-! ## A066602.P9345114760459849510

`A050871(n+1)%(n+1)`
-/

namespace A066602.P9345114760459849510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050871 (n + 1)) (n + 1 : ℤ)

end

end A066602.P9345114760459849510

namespace A066602

/-- `A050871(n+1)%(n+1)` -/
def P9345114760459849510.Spec : Prop :=
  ∀ n, P9345114760459849510.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P9832143460092825809

`(4^(n+1))%(n+1)`
-/

namespace A066602.P9832143460092825809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1) % (n + 1)

end

end A066602.P9832143460092825809

namespace A066602

/-- `(4^(n+1))%(n+1)` -/
def P9832143460092825809.Spec : Prop :=
  ∀ n, (P9832143460092825809.a n : ℤ) = A066602 (n + 1)

end A066602

/-! ## A066602.P2993499808447322780

`abs(A122803(2*(n+1))%(n+1))`
-/

namespace A066602.P2993499808447322780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (2 * (n + 1))) (n + 1 : ℤ)|

end

end A066602.P2993499808447322780

namespace A066602

/-- `abs(A122803(2*(n+1))%(n+1))` -/
def P2993499808447322780.Spec : Prop :=
  ∀ n, P2993499808447322780.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P13304819224739218055

`A000027(A155559(n+1)²%(n+1)+1)-1`
-/

namespace A066602.P13304819224739218055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A155559 (n + 1) ^ 2) (n + 1 : ℤ) + 1).toNat - 1

end

end A066602.P13304819224739218055

namespace A066602

/-- `A000027(A155559(n+1)²%(n+1)+1)-1` -/
def P13304819224739218055.Spec : Prop :=
  ∀ n, P13304819224739218055.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P8223119387987029797

`A000027(A155559(2*(n+1))%(n+1)+1)-1`
-/

namespace A066602.P8223119387987029797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A155559 (2 * (n + 1))) (n + 1 : ℤ) + 1).toNat - 1

end

end A066602.P8223119387987029797

namespace A066602

/-- `A000027(A155559(2*(n+1))%(n+1)+1)-1` -/
def P8223119387987029797.Spec : Prop :=
  ∀ n, P8223119387987029797.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P3472042280350602604

`n-A163383(2*(n+1))%(n+1)`
-/

namespace A066602.P3472042280350602604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A163383 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066602.P3472042280350602604

namespace A066602

/-- `n-A163383(2*(n+1))%(n+1)` -/
def P3472042280350602604.Spec : Prop :=
  ∀ n, P3472042280350602604.a n = A066602 (n + 1)

end A066602

/-! ## A066602.P15629167141966180033

`A060154(A167614(n+2)+1)`
-/

namespace A066602.P15629167141966180033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (A167614 (n + 2) + 1).toNat

end

end A066602.P15629167141966180033

namespace A066602

/-- `A060154(A167614(n+2)+1)` -/
def P15629167141966180033.Spec : Prop :=
  ∀ n, P15629167141966180033.a n = A066602 (n + 1)

end A066602

/-!
# A066603: a(n) = 5^n mod n.

The programs for A066603, the canonical program `A066603.P5756785611430650469` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066603 has offset 1).

The definition of A066603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066603.P5756785611430650469

`A066609(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066603

/-- `A066609(n+1)%(n+1)` -/
def P5756785611430650469.Spec : Prop :=
  ∀ n, P5756785611430650469.a n = A066603 (n + 1)

theorem P5756785611430650469.correct : P5756785611430650469.Spec := by
  intro n
  simp only [A066603, Nat.add_sub_cancel]

end A066603

/-! ## A066603.P13466550302606456257

`A083528(n+1)%(n+1)`
-/

namespace A066603.P13466550302606456257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083528 (n + 1)) (n + 1 : ℤ)

end

end A066603.P13466550302606456257

namespace A066603

/-- `A083528(n+1)%(n+1)` -/
def P13466550302606456257.Spec : Prop :=
  ∀ n, P13466550302606456257.a n = A066603 (n + 1)

end A066603

/-! ## A066603.P10870840179505972489

`A083529(n+1)%(n+1)`
-/

namespace A066603.P10870840179505972489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083529 (n + 1)) (n + 1 : ℤ)

end

end A066603.P10870840179505972489

namespace A066603

/-- `A083529(n+1)%(n+1)` -/
def P10870840179505972489.Spec : Prop :=
  ∀ n, P10870840179505972489.a n = A066603 (n + 1)

end A066603

/-! ## A066603.P15852225807765681938

`A004526((10*A062176(n+1))%A005843(n+1))`
-/

namespace A066603.P15852225807765681938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (10 * A062176 (n + 1)) (A005843 (n + 1))).toNat

end

end A066603.P15852225807765681938

namespace A066603

/-- `A004526((10*A062176(n+1))%A005843(n+1))` -/
def P15852225807765681938.Spec : Prop :=
  ∀ n, P15852225807765681938.a n = A066603 (n + 1)

end A066603

/-! ## A066603.P12496890622438931250

`(A002522(2*(n+2))*A062176(n+1))%(n+1)`
-/

namespace A066603.P12496890622438931250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (2 * (n + 2)) * A062176 (n + 1)) (n + 1 : ℤ)

end

end A066603.P12496890622438931250

namespace A066603

/-- `(A002522(2*(n+2))*A062176(n+1))%(n+1)` -/
def P12496890622438931250.Spec : Prop :=
  ∀ n, P12496890622438931250.a n = A066603 (n + 1)

end A066603

/-! ## A066603.P12741788958037756628

`(5^((n+1)%A000010(n+1)))%(n+1)`
-/

namespace A066603.P12741788958037756628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A000010 (n + 1)) : ℤ))) (n + 1 : ℤ)

end

end A066603.P12741788958037756628

namespace A066603

/-- `(5^((n+1)%A000010(n+1)))%(n+1)` -/
def P12741788958037756628.Spec : Prop :=
  ∀ n, P12741788958037756628.a n = A066603 (n + 1)

end A066603

/-! ## A066603.P7361218480501874002

`(5*(5^n)%(n+1))%(n+1)`
-/

namespace A066603.P7361218480501874002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 ^ n % (n + 1)) % (n + 1)

end

end A066603.P7361218480501874002

namespace A066603

/-- `(5*(5^n)%(n+1))%(n+1)` -/
def P7361218480501874002.Spec : Prop :=
  ∀ n, (P7361218480501874002.a n : ℤ) = A066603 (n + 1)

end A066603

/-! ## A066603.P7424689225446133711

`(5^(n+1))%(n+1)`
-/

namespace A066603.P7424689225446133711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % (n + 1)

end

end A066603.P7424689225446133711

namespace A066603

/-- `(5^(n+1))%(n+1)` -/
def P7424689225446133711.Spec : Prop :=
  ∀ n, (P7424689225446133711.a n : ℤ) = A066603 (n + 1)

end A066603

/-!
# A066604: a(n) = 6^n mod n.

The programs for A066604, the canonical program `A066604.P13718169227305272568` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066604 has offset 1).

The definition of A066604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066604.P13718169227305272568

`A066610(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066604

/-- `A066610(n+1)%(n+1)` -/
def P13718169227305272568.Spec : Prop :=
  ∀ n, P13718169227305272568.a n = A066604 (n + 1)

theorem P13718169227305272568.correct : P13718169227305272568.Spec := by
  intro n
  simp only [A066604, Nat.add_sub_cancel]

end A066604

/-! ## A066604.P86894370674679561

`(A015910(n+1)*A066601(n+1))%(n+1)`
-/

namespace A066604.P86894370674679561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A066601 (n + 1)) (n + 1 : ℤ)

end

end A066604.P86894370674679561

namespace A066604

/-- `(A015910(n+1)*A066601(n+1))%(n+1)` -/
def P86894370674679561.Spec : Prop :=
  ∀ n, P86894370674679561.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P4980511399570711903

`(A015910(n+1)*A082511(n+1))%(n+1)`
-/

namespace A066604.P4980511399570711903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A082511 (n + 1)) (n + 1 : ℤ)

end

end A066604.P4980511399570711903

namespace A066604

/-- `(A015910(n+1)*A082511(n+1))%(n+1)` -/
def P4980511399570711903.Spec : Prop :=
  ∀ n, P4980511399570711903.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P5134271280912942945

`(A066607(n+1)*A191561(n+1))%(n+1)`
-/

namespace A066604.P5134271280912942945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (n + 1) * A191561 (n + 1)) (n + 1 : ℤ)

end

end A066604.P5134271280912942945

namespace A066604

/-- `(A066607(n+1)*A191561(n+1))%(n+1)` -/
def P5134271280912942945.Spec : Prop :=
  ∀ n, P5134271280912942945.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P10610924313331012684

`(6^A051953(n+1))%(n+1)`
-/

namespace A066604.P10610924313331012684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A051953 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A066604.P10610924313331012684

namespace A066604

/-- `(6^A051953(n+1))%(n+1)` -/
def P10610924313331012684.Spec : Prop :=
  ∀ n, P10610924313331012684.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P15109105429366004881

`(6^(n+1-A000010(n+1)))%(n+1)`
-/

namespace A066604.P15109105429366004881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n + 1 : ℤ) - A000010 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A066604.P15109105429366004881

namespace A066604

/-- `(6^(n+1-A000010(n+1)))%(n+1)` -/
def P15109105429366004881.Spec : Prop :=
  ∀ n, P15109105429366004881.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P1342282994444720313

`A000400(A051953(n+1))%(n+1)`
-/

namespace A066604.P1342282994444720313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 (A051953 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066604.P1342282994444720313

namespace A066604

/-- `A000400(A051953(n+1))%(n+1)` -/
def P1342282994444720313.Spec : Prop :=
  ∀ n, P1342282994444720313.a n = A066604 (n + 1)

end A066604

/-! ## A066604.P11402795519623176505

`(6*(6^n)%(n+1))%(n+1)`
-/

namespace A066604.P11402795519623176505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (6 ^ n % (n + 1)) % (n + 1)

end

end A066604.P11402795519623176505

namespace A066604

/-- `(6*(6^n)%(n+1))%(n+1)` -/
def P11402795519623176505.Spec : Prop :=
  ∀ n, (P11402795519623176505.a n : ℤ) = A066604 (n + 1)

end A066604

/-! ## A066604.P4091479561042650603

`(6^(n+1))%(n+1)`
-/

namespace A066604.P4091479561042650603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1) % (n + 1)

end

end A066604.P4091479561042650603

namespace A066604

/-- `(6^(n+1))%(n+1)` -/
def P4091479561042650603.Spec : Prop :=
  ∀ n, (P4091479561042650603.a n : ℤ) = A066604 (n + 1)

end A066604

/-! ## A066604.P8296799069152737264

`abs(∏[-a(n-1)]%(n+1))` with `a(0)=6`
-/

namespace A066604.P8296799069152737264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A066604.P8296799069152737264

namespace A066604

/-- `abs(∏[-a(n-1)]%(n+1))` -/
def P8296799069152737264.Spec : Prop :=
  ∀ n, P8296799069152737264.a n = A066604 (n + 1)

end A066604

/-!
# A066605: Numbers k such that phi(k)/lambda(k) increases to a record value, where phi(k) is the Euler totient function (A000010) and lambda(k) is the Carmichael lambda function (A002322).

The programs for A066605, there is no canonical definition to state claims against.
-/

/-! ## A066605.P4335233142127131059

`A000005(A099140(n))*A097248(n+1)`
-/

namespace A066605.P4335233142127131059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A099140 n).toNat * A097248 (n + 1)

end

end A066605.P4335233142127131059

/-!
# A066606: a(n) = 2^n mod n^2.

The programs for A066606, the canonical program `A066606.P6520458400013291076` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066606 has offset 1).

The definition of A066606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066606.P6520458400013291076

`A233442(n+1)%A162395(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066606

/-- `A233442(n+1)%A162395(n+1)` -/
def P6520458400013291076.Spec : Prop :=
  ∀ n, P6520458400013291076.a n = A066606 (n + 1)

theorem P6520458400013291076.correct : P6520458400013291076.Spec := by
  intro n
  simp only [A066606, Nat.add_sub_cancel]

end A066606

/-! ## A066606.P7108856930624340882

`(2^(n+1))%(n+1)²`
-/

namespace A066606.P7108856930624340882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) % (n + 1) ^ 2

end

end A066606.P7108856930624340882

namespace A066606

/-- `(2^(n+1))%(n+1)²` -/
def P7108856930624340882.Spec : Prop :=
  ∀ n, (P7108856930624340882.a n : ℤ) = A066606 (n + 1)

end A066606

/-! ## A066606.P16075430971159003030

`-(-2^(n+1)%((n+1)^2))`
-/

namespace A066606.P16075430971159003030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(2 ^ (n + 1) : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A066606.P16075430971159003030

namespace A066606

/-- `-(-2^(n+1)%((n+1)^2))` -/
def P16075430971159003030.Spec : Prop :=
  ∀ n, P16075430971159003030.a n = A066606 (n + 1)

end A066606

/-! ## A066606.P13343863337731467337

`abs(A000079(n+1)%A162395(n+1))`
-/

namespace A066606.P13343863337731467337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 (n + 1)) (A162395 (n + 1))|

end

end A066606.P13343863337731467337

namespace A066606

/-- `abs(A000079(n+1)%A162395(n+1))` -/
def P13343863337731467337.Spec : Prop :=
  ∀ n, P13343863337731467337.a n = A066606 (n + 1)

end A066606

/-! ## A066606.P8250654935393094481

`A000079(n+1)-(n+1)²*A060505(n+1)`
-/

namespace A066606.P8250654935393094481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - ((n + 1) ^ 2 : ℤ) * A060505 (n + 1)

end

end A066606.P8250654935393094481

namespace A066606

/-- `A000079(n+1)-(n+1)²*A060505(n+1)` -/
def P8250654935393094481.Spec : Prop :=
  ∀ n, P8250654935393094481.a n = A066606 (n + 1)

end A066606

/-! ## A066606.P8287079098512121360

`abs(Δ[A048578(n)]%(n+1)²)`
-/

namespace A066606.P8287079098512121360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 2 : ℤ)|

end

end A066606.P8287079098512121360

namespace A066606

/-- `abs(Δ[A048578(n)]%(n+1)²)` -/
def P8287079098512121360.Spec : Prop :=
  ∀ n, P8287079098512121360.a n = A066606 (n + 1)

end A066606

/-!
# A066607: a(n) = 3^n mod n^3.

The programs for A066607, the canonical program `A066607.P9871544457908195799` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066607 has offset 1).

The definition of A066607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066607.P9871544457908195799

`(3^(n+1))%((n+1)^3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066607

/-- `(3^(n+1))%((n+1)^3)` -/
def P9871544457908195799.Spec : Prop :=
  ∀ n, (P9871544457908195799.a n : ℤ) = A066607 (n + 1)

theorem P9871544457908195799.correct : P9871544457908195799.Spec := by
  intro n
  simp only [A066607, Nat.add_sub_cancel]

end A066607

/-! ## A066607.P11920520544988687855

`abs(A256096(n)%A000578(n+1))`
-/

namespace A066607.P11920520544988687855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A256096 n) (A000578 (n + 1))|

end

end A066607.P11920520544988687855

namespace A066607

/-- `abs(A256096(n)%A000578(n+1))` -/
def P11920520544988687855.Spec : Prop :=
  ∀ n, P11920520544988687855.a n = A066607 (n + 1)

end A066607

/-! ## A066607.P15586000040792267443

`abs(A000244(n+1)%Δ[A000537(n)])`
-/

namespace A066607.P15586000040792267443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000244 (n + 1)) (f1 (n + 1) - f1 n)|

end

end A066607.P15586000040792267443

namespace A066607

/-- `abs(A000244(n+1)%Δ[A000537(n)])` -/
def P15586000040792267443.Spec : Prop :=
  ∀ n, P15586000040792267443.a n = A066607 (n + 1)

end A066607

/-! ## A066607.P16707152959454613722

`A000244(n+1)-A000578(n+1)*A062278(n+1)`
-/

namespace A066607.P16707152959454613722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A000578 (n + 1) * A062278 (n + 1)

end

end A066607.P16707152959454613722

namespace A066607

/-- `A000244(n+1)-A000578(n+1)*A062278(n+1)` -/
def P16707152959454613722.Spec : Prop :=
  ∀ n, P16707152959454613722.a n = A066607 (n + 1)

end A066607

/-!
# A066608: a(n) = 4^n mod n^4.

The programs for A066608, the canonical program `A066608.P14280582512013018559` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066608 has offset 1).

The definition of A066608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066608.P14280582512013018559

`(4^(n+1))%((n+1)^4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066608

/-- `(4^(n+1))%((n+1)^4)` -/
def P14280582512013018559.Spec : Prop :=
  ∀ n, (P14280582512013018559.a n : ℤ) = A066608 (n + 1)

theorem P14280582512013018559.correct : P14280582512013018559.Spec := by
  intro n
  simp only [A066608, Nat.add_sub_cancel]

end A066608

/-! ## A066608.P2393373817680806328

`A023443(A000079(2*(n+1))%∑[2*n+1]²+1)`
-/

namespace A066608.P2393373817680806328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A000079 (2 * (n + 1))) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + 1).toNat

end

end A066608.P2393373817680806328

namespace A066608

/-- `A023443(A000079(2*(n+1))%∑[2*n+1]²+1)` -/
def P2393373817680806328.Spec : Prop :=
  ∀ n, P2393373817680806328.a n = A066608 (n + 1)

end A066608

/-!
# A066609: a(n) = 5^n mod n^5.

The programs for A066609, the canonical program `A066609.P1270555402990679739` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066609 has offset 1).

The definition of A066609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066609.P1270555402990679739

`(5^(n+1))%((n+1)^5)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066609

/-- `(5^(n+1))%((n+1)^5)` -/
def P1270555402990679739.Spec : Prop :=
  ∀ n, (P1270555402990679739.a n : ℤ) = A066609 (n + 1)

theorem P1270555402990679739.correct : P1270555402990679739.Spec := by
  intro n
  simp only [A066609, Nat.add_sub_cancel]

end A066609

/-!
# A066610: a(n) = 6^n mod n^6.

The programs for A066610, the canonical program `A066610.P12730196416903884397` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066610 has offset 1).

The definition of A066610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066610.P12730196416903884397

`(6^(n+1))%((n+1)^6)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066610

/-- `(6^(n+1))%((n+1)^6)` -/
def P12730196416903884397.Spec : Prop :=
  ∀ n, (P12730196416903884397.a n : ℤ) = A066610 (n + 1)

theorem P12730196416903884397.correct : P12730196416903884397.Spec := by
  intro n
  simp only [A066610, Nat.add_sub_cancel]

end A066610

/-!
# A066611: a(1) = 1; a(n) = n^n mod (n-1)^(n-1) for n > 1.

The programs for A066611, there is no canonical definition to state claims against.
-/

/-! ## A066611.P1007635581372766799

`A000007(n)+A007781(n)%A000312(n)`
-/

namespace A066611.P1007635581372766799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A007781 n) (A000312 n)

end

end A066611.P1007635581372766799

/-! ## A066611.P16779201611051386820

`∑[A007781(n)]%A000312(A233583(n+1))`
-/

namespace A066611.P16779201611051386820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000312 (A233583 (n + 1)).toNat)

end

end A066611.P16779201611051386820

/-! ## A066611.P7206636681065302747

`record[A245501(n)]%A000312(A233583(n+1))`
-/

namespace A066611.P7206636681065302747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000312 (A233583 (n + 1)).toNat)

end

end A066611.P7206636681065302747

/-! ## A066611.P3998890616493497313

`A000312(n+1)%A000312(A233583(n+1))`
-/

namespace A066611.P3998890616493497313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (n + 1)) (A000312 (A233583 (n + 1)).toNat)

end

end A066611.P3998890616493497313

/-! ## A066611.P3176600993301107361

`A000007(n)+A056788(n+1)%A000312(n)`
-/

namespace A066611.P3176600993301107361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A056788 (n + 1)) (A000312 n)

end

end A066611.P3176600993301107361

/-!
# A066612: Number of primes between n^n and (n+1)^(n+1).

The programs for A066612, there is no canonical definition to state claims against.
-/

/-! ## A066612.P12620792916158168302

`Δ[A064151(n+1)]`
-/

namespace A066612.P12620792916158168302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066612.P12620792916158168302

/-! ## A066612.P2105680798596076831

`abs(Δ[A064151(A291769(n))])`
-/

namespace A066612.P2105680798596076831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066612.P2105680798596076831

/-! ## A066612.P7015643369484516176

`Δ[record[A064151(A137734(n))]]`
-/

namespace A066612.P7015643369484516176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066612.P7015643369484516176

/-! ## A066612.P4667731556611101785

`Δ[record[A064151(A152271(n))]]`
-/

namespace A066612.P4667731556611101785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066612.P4667731556611101785

/-! ## A066612.P4158901762576031470

`Δ[record[A064151(A267806(n))]]`
-/

namespace A066612.P4158901762576031470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A267806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066612.P4158901762576031470

/-!
# A066613: Numbers k such that the product of the nonzero digits of k equals the number of divisors of k.

The programs for A066613, the canonical program `A066613.P5367228153376290154` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066613 has offset 1).

The definition of A066613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066613.P6168443961282525081

`eq[A000005(abs(1-n)+1), A051801(n)]`
-/

namespace A066613.P6168443961282525081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066613.P6168443961282525081

namespace A066613

/-- `eq[A000005(abs(1-n)+1), A051801(n)]` -/
def P6168443961282525081.Spec : Prop :=
  ∀ n, (P6168443961282525081.a n : ℤ) = A066613 (n + 1)

end A066613

/-! ## A066613.P8361359726623274715

`eq[A000005(n+1), A051801(n+1)]+1`
-/

namespace A066613.P8361359726623274715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066613.P8361359726623274715

namespace A066613

/-- `eq[A000005(n+1), A051801(n+1)]+1` -/
def P8361359726623274715.Spec : Prop :=
  ∀ n, (P8361359726623274715.a n : ℤ) = A066613 (n + 1)

end A066613

/-! ## A066613.P5367228153376290154

`eq[A008574(A051801(n)), A145154(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066613

/-- `eq[A008574(A051801(n)), A145154(n)]` -/
def P5367228153376290154.Spec : Prop :=
  ∀ n, (P5367228153376290154.a n : ℤ) = A066613 (n + 1)

theorem P5367228153376290154.correct : P5367228153376290154.Spec := by
  intro n
  simp only [A066613, Nat.add_sub_cancel]

end A066613

/-! ## A066613.P11711981266959951995

`eq[A051801(n), A277692(2*n+1)]`
-/

namespace A066613.P11711981266959951995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066613.P11711981266959951995

namespace A066613

/-- `eq[A051801(n), A277692(2*n+1)]` -/
def P11711981266959951995.Spec : Prop :=
  ∀ n, (P11711981266959951995.a n : ℤ) = A066613 (n + 1)

end A066613

/-! ## A066613.P1682730351560021250

`eq[A003963(A113581(n)), A277692(2*n+1)]`
-/

namespace A066613.P1682730351560021250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066613.P1682730351560021250

namespace A066613

/-- `eq[A003963(A113581(n)), A277692(2*n+1)]` -/
def P1682730351560021250.Spec : Prop :=
  ∀ n, (P1682730351560021250.a n : ℤ) = A066613 (n + 1)

end A066613

/-!
# A066616: a(1) = 1; a(n) = n*a(n-1) if n does not divide a(n-1), otherwise a(n) = a(n-1).

The programs for A066616, the canonical program `A066616.P4794885045133405147` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066616 has offset 1).

The definition of A066616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066616.P4794885045133405147

`a(n-1)+n%(a(n-1)%(n+1)+n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066616

/-- `a(n-1)+n%(a(n-1)%(n+1)+n)*a(n-1)` -/
def P4794885045133405147.Spec : Prop :=
  ∀ n, (P4794885045133405147.a n : ℤ) = A066616 (n + 1)

theorem P4794885045133405147.correct : P4794885045133405147.Spec := by
  intro n
  simp only [A066616, Nat.add_sub_cancel]

end A066616

/-! ## A066616.P870553155350739643

`∏[n*A302777(n+1)+1]`
-/

namespace A066616.P870553155350739643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302777 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066616.P870553155350739643

namespace A066616

/-- `∏[n*A302777(n+1)+1]` -/
def P870553155350739643.Spec : Prop :=
  ∀ n, P870553155350739643.a n = A066616 (n + 1)

end A066616

/-! ## A066616.P470098477962188524

`∏[A274029(n+1)%(n+2)]`
-/

namespace A066616.P470098477962188524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274029 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066616.P470098477962188524

namespace A066616

/-- `∏[A274029(n+1)%(n+2)]` -/
def P470098477962188524.Spec : Prop :=
  ∀ n, P470098477962188524.a n = A066616 (n + 1)

end A066616

/-! ## A066616.P45455399925222032

`A037992(A302778(n+1))`
-/

namespace A066616.P45455399925222032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 (A302778 (n + 1)).toNat

end

end A066616.P45455399925222032

namespace A066616

/-- `A037992(A302778(n+1))` -/
def P45455399925222032.Spec : Prop :=
  ∀ n, P45455399925222032.a n = A066616 (n + 1)

end A066616

/-! ## A066616.P2213320746354672906

`A037992(∑[A302777(n+1)])`
-/

namespace A066616.P2213320746354672906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066616.P2213320746354672906

namespace A066616

/-- `A037992(∑[A302777(n+1)])` -/
def P2213320746354672906.Spec : Prop :=
  ∀ n, P2213320746354672906.a n = A066616 (n + 1)

end A066616

/-! ## A066616.P17966822734962940008

`A037992(∑[A302776(n+1)%A223490(n+1)])`
-/

namespace A066616.P17966822734962940008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302776 (n + 1)) (A223490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066616.P17966822734962940008

namespace A066616

/-- `A037992(∑[A302776(n+1)%A223490(n+1)])` -/
def P17966822734962940008.Spec : Prop :=
  ∀ n, P17966822734962940008.a n = A066616 (n + 1)

end A066616

/-!
# A066617: Composites of form prime+1 containing a record number of prime factors.

The programs for A066617, there is no canonical definition to state claims against.
-/

/-! ## A066617.P13785131428692638169

`A394612(A394612(n+1)+A180662(n))`
-/

namespace A066617.P13785131428692638169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394612 (A394612 (n + 1) + A180662 n).toNat

end

end A066617.P13785131428692638169

/-! ## A066617.P12073055000381767509

`A105321(A006093(n+1)*A048463(n))`
-/

namespace A066617.P12073055000381767509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (A006093 (n + 1) * A048463 n).toNat

end

end A066617.P12073055000381767509

/-! ## A066617.P7378656085726452761

`A002260(A004171(n))*A034974(n+4)`
-/

namespace A066617.P7378656085726452761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A004171 n).toNat * A034974 (n + 4)

end

end A066617.P7378656085726452761

/-!
# A066618: Both m and its reverse are one more than a square and m does not end in 0.

The programs for A066618, there is no canonical definition to state claims against.
-/

/-! ## A066618.P4068414315433003095

`filter[A124664(n+1), A356162(#)]`
-/

namespace A066618.P4068414315433003095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A066618.P4068414315433003095

/-! ## A066618.P17101722447935038328

`filter[A124664(n+1), A360120(#)]`
-/

namespace A066618.P17101722447935038328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360120 (f1 j).toNat = 1) n)

end

end A066618.P17101722447935038328

/-! ## A066618.P4877921002001927067

`filter[A124664(n+1), A361022(#)]`
-/

namespace A066618.P4877921002001927067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A066618.P4877921002001927067

/-! ## A066618.P16591874350396684297

`filter[A124664(n+1), A369961(#)]`
-/

namespace A066618.P16591874350396684297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A066618.P16591874350396684297

/-!
# A066620: Number of unordered triples of distinct pairwise coprime divisors of n.

The programs for A066620, the canonical program `A066620.P12972451173244049079` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066620 has offset 1).

The definition of A066620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066620.P6781783669453127966

`A100565(n+1)-A000005(n+1)`
-/

namespace A066620.P6781783669453127966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1) - A000005 (n + 1)

end

end A066620.P6781783669453127966

namespace A066620

/-- `A100565(n+1)-A000005(n+1)` -/
def P6781783669453127966.Spec : Prop :=
  ∀ n, P6781783669453127966.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P12972451173244049079

`A015995(n+1)-A100565(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066620

/-- `A015995(n+1)-A100565(n+1)` -/
def P12972451173244049079.Spec : Prop :=
  ∀ n, P12972451173244049079.a n = A066620 (n + 1)

theorem P12972451173244049079.correct : P12972451173244049079.Spec := by
  intro n
  simp only [A066620, Nat.add_sub_cancel]

end A066620

/-! ## A066620.P463691165565741284

`(A015995(n+1)-A000005(n+1))/2`
-/

namespace A066620.P463691165565741284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015995 (n + 1) - A000005 (n + 1) : ℚ) / 2

end

end A066620.P463691165565741284

namespace A066620

/-- `(A015995(n+1)-A000005(n+1))/2` -/
def P463691165565741284.Spec : Prop :=
  ∀ n, P463691165565741284.a n = (A066620 (n + 1) : ℚ)

end A066620

/-! ## A066620.P12794737933298113116

`A110654(A015995(n+1)-A000005(n+1))`
-/

namespace A066620.P12794737933298113116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A015995 (n + 1) - A000005 (n + 1)).toNat

end

end A066620.P12794737933298113116

namespace A066620

/-- `A110654(A015995(n+1)-A000005(n+1))` -/
def P12794737933298113116.Spec : Prop :=
  ∀ n, P12794737933298113116.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P11923841792538804638

`A100565(n+1)+A054519(n)-A054519(n+1)`
-/

namespace A066620.P11923841792538804638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1) + (A054519 n - A054519 (n + 1))

end

end A066620.P11923841792538804638

namespace A066620

/-- `A100565(n+1)+A054519(n)-A054519(n+1)` -/
def P11923841792538804638.Spec : Prop :=
  ∀ n, P11923841792538804638.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P825499076970051119

`A089233(n+1)+A100565(n+1)-A018892(n+1)`
-/

namespace A066620.P825499076970051119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + (A100565 (n + 1) - A018892 (n + 1))

end

end A066620.P825499076970051119

namespace A066620

/-- `A089233(n+1)+A100565(n+1)-A018892(n+1)` -/
def P825499076970051119.Spec : Prop :=
  ∀ n, P825499076970051119.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P4075736339724177250

`A100565(n+1)+A294072(n+1)-A048785(n+1)`
-/

namespace A066620.P4075736339724177250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1) + (A294072 (n + 1) - A048785 (n + 1))

end

end A066620.P4075736339724177250

namespace A066620

/-- `A100565(n+1)+A294072(n+1)-A048785(n+1)` -/
def P4075736339724177250.Spec : Prop :=
  ∀ n, P4075736339724177250.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P17994737136595586557

`∑{d}[n+1, A153206(A325446(#))-1]`
-/

namespace A066620.P17994737136595586557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A153206 (A325446 d).toNat - 1)

end

end A066620.P17994737136595586557

namespace A066620

/-- `∑{d}[n+1, A153206(A325446(#))-1]` -/
def P17994737136595586557.Spec : Prop :=
  ∀ n, P17994737136595586557.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P679526893712595013

`∑{d}[n+1, A241036(A293227(#*#))]`
-/

namespace A066620.P679526893712595013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A241036 (A293227 (d * d)).toNat

end

end A066620.P679526893712595013

namespace A066620

/-- `∑{d}[n+1, A241036(A293227(#*#))]` -/
def P679526893712595013.Spec : Prop :=
  ∀ n, P679526893712595013.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P7605139570930106859

`∑{d}[n+1, A002264(A034444(#²))²]`
-/

namespace A066620.P7605139570930106859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002264 (A034444 (d ^ 2)).toNat ^ 2

end

end A066620.P7605139570930106859

namespace A066620

/-- `∑{d}[n+1, A002264(A034444(#²))²]` -/
def P7605139570930106859.Spec : Prop :=
  ∀ n, P7605139570930106859.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P16987166863199268404

`∑{d}[n+1, A057363(or(1, A086971(#²)))]`
-/

namespace A066620.P16987166863199268404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057363 (Int.lor 1 (A086971 (d ^ 2))).toNat

end

end A066620.P16987166863199268404

namespace A066620

/-- `∑{d}[n+1, A057363(or(1, A086971(#²)))]` -/
def P16987166863199268404.Spec : Prop :=
  ∀ n, P16987166863199268404.a n = A066620 (n + 1)

end A066620

/-! ## A066620.P1457482484383104671

`A100565(n+1)-∑{d}[n+1, A056832(#*#)]`
-/

namespace A066620.P1457482484383104671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056832 (d * d)

end

end A066620.P1457482484383104671

namespace A066620

/-- `A100565(n+1)-∑{d}[n+1, A056832(#*#)]` -/
def P1457482484383104671.Spec : Prop :=
  ∀ n, P1457482484383104671.a n = A066620 (n + 1)

end A066620

/-!
# A066622: Concatenation of prime numbers in increasing order up to the n-th and then in decreasing order.

The programs for A066622, there is no canonical definition to state claims against.
-/

/-! ## A066622.P10863736844960753668

`A138140(Δ[n²])`
-/

namespace A066622.P10863736844960753668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066622.P10863736844960753668

/-!
# A066624: Number of 1's in binary expansion of parts in all partitions of n.

The programs for A066624, there is no canonical definition to state claims against.
-/

/-! ## A066624.P15942389804152056925

`∑[∑[A225638(A161792(n+1))]]`
-/

namespace A066624.P15942389804152056925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A161792 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066624.P15942389804152056925

/-! ## A066624.P12347499621261026329

`A344881(A011760(a(n-1)+n))` with `a(0)=0`
-/

namespace A066624.P12347499621261026329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344881 (A011760 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A066624.P12347499621261026329

/-! ## A066624.P17833507048658385211

`A093694(n)-A000005(A057574(n))`
-/

namespace A066624.P17833507048658385211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000005 (A057574 n).toNat

end

end A066624.P17833507048658385211

/-! ## A066624.P10301305565695902241

`A184427(A015128(n))-A066530(n)`
-/

namespace A066624.P10301305565695902241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A015128 n).toNat - A066530 n

end

end A066624.P10301305565695902241

/-! ## A066624.P343955203375282979

`A305003(n)-A066635(A000110(n))`
-/

namespace A066624.P343955203375282979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305003 n - A066635 (A000110 n).toNat

end

end A066624.P343955203375282979

/-!
# A066628: a(n) = n - the largest Fibonacci number <= n.

The programs for A066628, the canonical program `A066628.P4571683134443220888` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066628 has offset 0).

The definition of A066628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066628.P4571683134443220888

`(a(n-1)+1)%∑[A003849(n)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066628

/-- `(a(n-1)+1)%∑[A003849(n)]` -/
def P4571683134443220888.Spec : Prop :=
  ∀ n, P4571683134443220888.a n = A066628 n

theorem P4571683134443220888.correct : P4571683134443220888.Spec := by
  intro n
  simp only [A066628]

end A066628

/-! ## A066628.P11026650275083695042

`A194029(A028310(n))-1`
-/

namespace A066628.P11026650275083695042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A028310 n).toNat - 1

end

end A066628.P11026650275083695042

namespace A066628

/-- `A194029(A028310(n))-1` -/
def P11026650275083695042.Spec : Prop :=
  ∀ n, P11026650275083695042.a n = A066628 n

end A066628

/-! ## A066628.P13164955580504582709

`n-A000045(A130233(n))`
-/

namespace A066628.P13164955580504582709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000045 (A130233 n).toNat

end

end A066628.P13164955580504582709

namespace A066628

/-- `n-A000045(A130233(n))` -/
def P13164955580504582709.Spec : Prop :=
  ∀ n, P13164955580504582709.a n = A066628 n

end A066628

/-! ## A066628.P18182785955535870392

`A342297(A342297(n+1))-1`
-/

namespace A066628.P18182785955535870392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (A342297 (n + 1)).toNat - 1

end

end A066628.P18182785955535870392

namespace A066628

/-- `A342297(A342297(n+1))-1` -/
def P18182785955535870392.Spec : Prop :=
  ∀ n, P18182785955535870392.a n = A066628 n

end A066628

/-! ## A066628.P4220537386552037654

`n-A212804(A130233(n)+1)`
-/

namespace A066628.P4220537386552037654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A212804 (A130233 n + 1).toNat

end

end A066628.P4220537386552037654

namespace A066628

/-- `n-A212804(A130233(n)+1)` -/
def P4220537386552037654.Spec : Prop :=
  ∀ n, P4220537386552037654.a n = A066628 n

end A066628

/-! ## A066628.P6713520767085085208

`n-A000045(A108852(n)-1)`
-/

namespace A066628.P6713520767085085208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000045 (A108852 n - 1).toNat

end

end A066628.P6713520767085085208

namespace A066628

/-- `n-A000045(A108852(n)-1)` -/
def P6713520767085085208.Spec : Prop :=
  ∀ n, P6713520767085085208.a n = A066628 n

end A066628

/-! ## A066628.P14466601886057659385

`n-A053602(2*A130233(n))`
-/

namespace A066628.P14466601886057659385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053602 (2 * A130233 n).toNat

end

end A066628.P14466601886057659385

namespace A066628

/-- `n-A053602(2*A130233(n))` -/
def P14466601886057659385.Spec : Prop :=
  ∀ n, P14466601886057659385.a n = A066628 n

end A066628

/-! ## A066628.P12211848168430154571

`A254667(n)%A082524(n+1)`
-/

namespace A066628.P12211848168430154571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254667 n) (A082524 (n + 1))

end

end A066628.P12211848168430154571

namespace A066628

/-- `A254667(n)%A082524(n+1)` -/
def P12211848168430154571.Spec : Prop :=
  ∀ n, P12211848168430154571.a n = A066628 n

end A066628

/-! ## A066628.P10742856052174719644

`n%A000045(∑[char[A000045(n)]])`
-/

namespace A066628.P10742856052174719644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000045 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A066628.P10742856052174719644

namespace A066628

/-- `n%A000045(∑[char[A000045(n)]])` -/
def P10742856052174719644.Spec : Prop :=
  ∀ n, P10742856052174719644.a n = A066628 n

end A066628

/-! ## A066628.P7391370435118705238

`A199969(n+1)%A082524(n+1)`
-/

namespace A066628.P7391370435118705238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199969 (n + 1)) (A082524 (n + 1))

end

end A066628.P7391370435118705238

namespace A066628

/-- `A199969(n+1)%A082524(n+1)` -/
def P7391370435118705238.Spec : Prop :=
  ∀ n, P7391370435118705238.a n = A066628 n

end A066628

/-! ## A066628.P16236309405971707688

`n-A000045(A130245(A195121(n)))`
-/

namespace A066628.P16236309405971707688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000045 (A130245 (A195121 n).toNat).toNat

end

end A066628.P16236309405971707688

namespace A066628

/-- `n-A000045(A130245(A195121(n)))` -/
def P16236309405971707688.Spec : Prop :=
  ∀ n, P16236309405971707688.a n = A066628 n

end A066628

/-! ## A066628.P7961048883038140949

`A256654(n+1)-A256654(A000201(n+1))+n`
-/

namespace A066628.P7961048883038140949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 1) - A256654 (A000201 (n + 1)).toNat + (n : ℤ)

end

end A066628.P7961048883038140949

namespace A066628

/-- `A256654(n+1)-A256654(A000201(n+1))+n` -/
def P7961048883038140949.Spec : Prop :=
  ∀ n, P7961048883038140949.a n = A066628 n

end A066628

/-! ## A066628.P3075882254589496100

`A361989(A361989(A256654(n+1)+n))`
-/

namespace A066628.P3075882254589496100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 (A361989 (A256654 (n + 1) + (n : ℤ)).toNat).toNat

end

end A066628.P3075882254589496100

namespace A066628

/-- `A361989(A361989(A256654(n+1)+n))` -/
def P3075882254589496100.Spec : Prop :=
  ∀ n, P3075882254589496100.a n = A066628 n

end A066628

/-! ## A066628.P8917970983641581388

`n-A035517(A179180(n))`
-/

namespace A066628.P8917970983641581388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035517 (A179180 n).toNat

end

end A066628.P8917970983641581388

namespace A066628

/-- `n-A035517(A179180(n))` -/
def P8917970983641581388.Spec : Prop :=
  ∀ n, P8917970983641581388.a n = A066628 n

end A066628

/-! ## A066628.P5493310839821675573

`n-A035517(∑[A007895(n)])`
-/

namespace A066628.P5493310839821675573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066628.P5493310839821675573

namespace A066628

/-- `n-A035517(∑[A007895(n)])` -/
def P5493310839821675573.Spec : Prop :=
  ∀ n, P5493310839821675573.a n = A066628 n

end A066628

/-! ## A066628.P2574189512878857923

`A233583(n+1)%A082524(n+1)`
-/

namespace A066628.P2574189512878857923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A082524 (n + 1))

end

end A066628.P2574189512878857923

namespace A066628

/-- `A233583(n+1)%A082524(n+1)` -/
def P2574189512878857923.Spec : Prop :=
  ∀ n, P2574189512878857923.a n = A066628 n

end A066628

/-! ## A066628.P11602888512448056566

`n-A048680(A053644(A003714(n)))`
-/

namespace A066628.P11602888512448056566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048680 (A053644 (A003714 n).toNat).toNat

end

end A066628.P11602888512448056566

namespace A066628

/-- `n-A048680(A053644(A003714(n)))` -/
def P11602888512448056566.Spec : Prop :=
  ∀ n, P11602888512448056566.a n = A066628 n

end A066628

/-! ## A066628.P1843792104146753962

`n-A270362(A280873(n))`
-/

namespace A066628.P1843792104146753962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270362 (A280873 n).toNat

end

end A066628.P1843792104146753962

namespace A066628

/-- `n-A270362(A280873(n))` -/
def P1843792104146753962.Spec : Prop :=
  ∀ n, P1843792104146753962.a n = A066628 n

end A066628

/-! ## A066628.P8717394888983595542

`n-A270362(A295897(n+1))`
-/

namespace A066628.P8717394888983595542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270362 (A295897 (n + 1)).toNat

end

end A066628.P8717394888983595542

namespace A066628

/-- `n-A270362(A295897(n+1))` -/
def P8717394888983595542.Spec : Prop :=
  ∀ n, P8717394888983595542.a n = A066628 n

end A066628

/-! ## A066628.P381015293808816930

`n-A324965(A048297(n)-1)`
-/

namespace A066628.P381015293808816930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A324965 (A048297 n - 1).toNat

end

end A066628.P381015293808816930

namespace A066628

/-- `n-A324965(A048297(n)-1)` -/
def P381015293808816930.Spec : Prop :=
  ∀ n, P381015293808816930.a n = A066628 n

end A066628

/-!
# A066629: a(n) = 2*Fibonacci(n+2) + ((-1)^n - 3)/2.

The programs for A066629, the canonical program `A066629.P3516911385192021662` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066629 has offset 0).

The definition of A066629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066629.P3516911385192021662

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066629

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P3516911385192021662.Spec : Prop :=
  ∀ n, P3516911385192021662.a n = A066629 n

theorem P3516911385192021662.correct : P3516911385192021662.Spec := by
  intro n
  simp only [A066629]

end A066629

/-! ## A066629.P5147780880634819080

`ogf((1+x+x^2)/(1-x-2x^2+x^3+x^4))`
-/

namespace A066629.P5147780880634819080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -2, 1, 1] n

end

end A066629.P5147780880634819080

namespace A066629

/-- `ogf((1+x+x^2)/(1-x-2x^2+x^3+x^4))` -/
def P5147780880634819080.Spec : Prop :=
  ∀ n, P5147780880634819080.a n = A066629 n

end A066629

/-! ## A066629.P11974560202295448132

`∑[a(n-3)+2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A066629.P11974560202295448132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066629.P11974560202295448132

namespace A066629

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P11974560202295448132.Spec : Prop :=
  ∀ n, (P11974560202295448132.a n : ℤ) = A066629 n

end A066629

/-! ## A066629.P13613517106080431166

`gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A066629.P13613517106080431166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 n + (a (n - 1) + a (n - 2))

end

end A066629.P13613517106080431166

namespace A066629

/-- `gcd(2, n)+a(n-1)+a(n-2)` -/
def P13613517106080431166.Spec : Prop :=
  ∀ n, (P13613517106080431166.a n : ℤ) = A066629 n

end A066629

/-! ## A066629.P6812777115021295377

`2*a(n-2)+a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A066629.P6812777115021295377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 3)

end

end A066629.P6812777115021295377

namespace A066629

/-- `2*a(n-2)+a(n-3)+3` -/
def P6812777115021295377.Spec : Prop :=
  ∀ n, (P6812777115021295377.a n : ℤ) = A066629 n

end A066629

/-! ## A066629.P12871551790152125739

`∑[a(n-1)+a(n-2)+(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A066629.P12871551790152125739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066629.P12871551790152125739

namespace A066629

/-- `∑[a(n-1)+a(n-2)+(-1)^n]` -/
def P12871551790152125739.Spec : Prop :=
  ∀ n, P12871551790152125739.a n = A066629 n

end A066629

/-! ## A066629.P7311100598236745430

`2-n%2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A066629.P7311100598236745430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((n % 2 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A066629.P7311100598236745430

namespace A066629

/-- `2-n%2+a(n-1)+a(n-2)` -/
def P7311100598236745430.Spec : Prop :=
  ∀ n, P7311100598236745430.a n = A066629 n

end A066629

/-! ## A066629.P9661463079754851006

`a(n-2)+3+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A066629.P9661463079754851006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + 3 + (a (n - 2) + a (n - 3))

end

end A066629.P9661463079754851006

namespace A066629

/-- `a(n-2)+3+a(n-2)+a(n-3)` -/
def P9661463079754851006.Spec : Prop :=
  ∀ n, (P9661463079754851006.a n : ℤ) = A066629 n

end A066629

/-! ## A066629.P5286212440130156875

`2-(a(n-1)%2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A066629.P5286212440130156875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 2))

end

end A066629.P5286212440130156875

namespace A066629

/-- `2-(a(n-1)%2-a(n-1)-a(n-2))` -/
def P5286212440130156875.Spec : Prop :=
  ∀ n, P5286212440130156875.a n = A066629 n

end A066629

/-! ## A066629.P15888602646012098384

`A154327(n+1)`
-/

namespace A066629.P15888602646012098384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 (n + 1)

end

end A066629.P15888602646012098384

namespace A066629

/-- `A154327(n+1)` -/
def P15888602646012098384.Spec : Prop :=
  ∀ n, P15888602646012098384.a n = A066629 n

end A066629

/-! ## A066629.P6672756871066616824

`∑[A066983(n+2)]`
-/

namespace A066629.P6672756871066616824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066629.P6672756871066616824

namespace A066629

/-- `∑[A066983(n+2)]` -/
def P6672756871066616824.Spec : Prop :=
  ∀ n, P6672756871066616824.a n = A066629 n

end A066629

/-! ## A066629.P6625974632303658283

`A062114(n+2)-1`
-/

namespace A066629.P6625974632303658283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (n + 2) - 1

end

end A066629.P6625974632303658283

namespace A066629

/-- `A062114(n+2)-1` -/
def P6625974632303658283.Spec : Prop :=
  ∀ n, P6625974632303658283.a n = A066629 n

end A066629

/-! ## A066629.P10220133506818212603

`A166012(n+2)-2`
-/

namespace A066629.P10220133506818212603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (n + 2) - 2

end

end A066629.P10220133506818212603

namespace A066629

/-- `A166012(n+2)-2` -/
def P10220133506818212603.Spec : Prop :=
  ∀ n, P10220133506818212603.a n = A066629 n

end A066629

/-! ## A066629.P12357693487093217997

`2*A167270(n)-(n+1)`
-/

namespace A066629.P12357693487093217997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167270 n - (n + 1 : ℤ)

end

end A066629.P12357693487093217997

namespace A066629

/-- `2*A167270(n)-(n+1)` -/
def P12357693487093217997.Spec : Prop :=
  ∀ n, P12357693487093217997.a n = A066629 n

end A066629

/-! ## A066629.P5853005959646819306

`char[2*n]+∑[2*A000045(n)]`
-/

namespace A066629.P5853005959646819306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A066629.P5853005959646819306

namespace A066629

/-- `char[2*n]+∑[2*A000045(n)]` -/
def P5853005959646819306.Spec : Prop :=
  ∀ n, P5853005959646819306.a n = A066629 n

end A066629

/-! ## A066629.P4491474100168101726

`2*A000045(n+2)-gcd(2, n+1)`
-/

namespace A066629.P4491474100168101726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A066629.P4491474100168101726

namespace A066629

/-- `2*A000045(n+2)-gcd(2, n+1)` -/
def P4491474100168101726.Spec : Prop :=
  ∀ n, P4491474100168101726.a n = A066629 n

end A066629

/-! ## A066629.P5452320775494974881

`a(n-2)+2*A000045(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A066629.P5452320775494974881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * A000045 (n + 1)

end

end A066629.P5452320775494974881

namespace A066629

/-- `a(n-2)+2*A000045(n+1)` -/
def P5452320775494974881.Spec : Prop :=
  ∀ n, P5452320775494974881.a n = A066629 n

end A066629

/-! ## A066629.P14802020815799181245

`A131269(n)+A052928(n)`
-/

namespace A066629.P14802020815799181245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n + A052928 n

end

end A066629.P14802020815799181245

namespace A066629

/-- `A131269(n)+A052928(n)` -/
def P14802020815799181245.Spec : Prop :=
  ∀ n, P14802020815799181245.a n = A066629 n

end A066629

/-! ## A066629.P16867512625485321446

`A109613(n)+A104161(n)`
-/

namespace A066629.P16867512625485321446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A104161 n

end

end A066629.P16867512625485321446

namespace A066629

/-- `A109613(n)+A104161(n)` -/
def P16867512625485321446.Spec : Prop :=
  ∀ n, P16867512625485321446.a n = A066629 n

end A066629

/-! ## A066629.P8690492809193794334

`A215005(n)+A008619(n)`
-/

namespace A066629.P8690492809193794334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215005 n + A008619 n

end

end A066629.P8690492809193794334

namespace A066629

/-- `A215005(n)+A008619(n)` -/
def P8690492809193794334.Spec : Prop :=
  ∀ n, P8690492809193794334.a n = A066629 n

end A066629

/-!
# A066630: Fibonacci numbers which are a nontrivial concatenation of Fibonacci numbers.

The programs for A066630, there is no canonical definition to state claims against.
-/

/-! ## A066630.P12980071472698324750

`A020701(A192286(n+1))`
-/

namespace A066630.P12980071472698324750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A192286 (n + 1)).toNat

end

end A066630.P12980071472698324750

/-!
# A066631: The sequence f(1), f(2), ... as defined in A068192.

The programs for A066631, there is no canonical definition to state claims against.
-/

/-! ## A066631.P15442229648495452593

`a(n-1)*A068192(n)` with `a(0)=4`
-/

namespace A066631.P15442229648495452593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * A068192 n

end

end A066631.P15442229648495452593

/-! ## A066631.P2039262020267009254

`2*∏[p?[A242971(n)]]`
-/

namespace A066631.P2039262020267009254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A066631.P2039262020267009254

/-! ## A066631.P2386004221796718928

`4*A278222(floor(4^n/3))`
-/

namespace A066631.P2386004221796718928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A278222 ⌊(4 ^ n : ℚ) / 3⌋.toNat

end

end A066631.P2386004221796718928

/-! ## A066631.P13143174885739831791

`A303555(ceil(acot(n))+∑[n+2]-2)`
-/

namespace A066631.P13143174885739831791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303555 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A066631.P13143174885739831791

/-! ## A066631.P16978782753409099577

`A124859(A175805(n))`
-/

namespace A066631.P16978782753409099577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A175805 n).toNat

end

end A066631.P16978782753409099577

/-!
# A066632: Composites of form prime-1 containing a record number of prime factors.

The programs for A066632, there is no canonical definition to state claims against.
-/

/-! ## A066632.P17797452201730846707

`A073919(A029731(n+1)+2)-1`
-/

namespace A066632.P17797452201730846707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073919 (A029731 (n + 1) + 2).toNat - 1

end

end A066632.P17797452201730846707

/-! ## A066632.P17134709435085054981

`A002322(A073919(n+2))`
-/

namespace A066632.P17134709435085054981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A073919 (n + 2)).toNat

end

end A066632.P17134709435085054981

/-! ## A066632.P15893956132936567154

`A293484(record[A073919(n+2)])`
-/

namespace A066632.P15893956132936567154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073919 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066632.P15893956132936567154

/-! ## A066632.P5956964264227871912

`A028310(A073919(n+2)-1)`
-/

namespace A066632.P5956964264227871912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A073919 (n + 2) - 1).toNat

end

end A066632.P5956964264227871912

/-! ## A066632.P14673361397110485792

`A038608(A073919(n+2)-1)`
-/

namespace A066632.P14673361397110485792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A073919 (n + 2) - 1).toNat

end

end A066632.P14673361397110485792

/-!
# A066633: Triangle T(n,k), n >= 1, 1 <= k <= n, giving number of k's in all partitions of n.

The programs for A066633, there is no canonical definition to state claims against.
-/

/-! ## A066633.P13424160723405778168

`A138785(n+1)/A002260(n+1)`
-/

namespace A066633.P13424160723405778168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A066633.P13424160723405778168

/-! ## A066633.P1231525919091375603

`A299768(n+1)/A133819(n+1)`
-/

namespace A066633.P1231525919091375603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299768 (n + 1) : ℚ) / (A133819 (n + 1) : ℚ)

end

end A066633.P1231525919091375603

/-! ## A066633.P16144310288604556804

`A299768(n+1)/A002260(n+1)²`
-/

namespace A066633.P16144310288604556804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299768 (n + 1) : ℚ) / (A002260 (n + 1) ^ 2 : ℚ)

end

end A066633.P16144310288604556804

/-! ## A066633.P17341878012355258202

`A138785(n+1)²/A299768(n+1)`
-/

namespace A066633.P17341878012355258202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) ^ 2 : ℚ) / (A299768 (n + 1) : ℚ)

end

end A066633.P17341878012355258202

/-! ## A066633.P11996062060300455977

`A181187(n+1)-A181187(n+2)%A181187(n+1)`
-/

namespace A066633.P11996062060300455977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 1) - Int.tmod (A181187 (n + 2)) (A181187 (n + 1))

end

end A066633.P11996062060300455977

/-! ## A066633.P5083033560472369096

`A299768(n+1)/A000290(A299768(n+1)/A138785(n+1))`
-/

namespace A066633.P5083033560472369096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299768 (n + 1) : ℚ) / (A000290 (SequenceMachineLib.roundAway ((A299768 (n + 1) : ℚ) / (A138785 (n + 1) : ℚ))).toNat : ℚ)

end

end A066633.P5083033560472369096

/-! ## A066633.P18134184979668778608

`A161224(comp[∑[n]])`
-/

namespace A066633.P18134184979668778608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A066633.P18134184979668778608

/-! ## A066633.P2159390114871498262

`A141450(A038722(n+1))`
-/

namespace A066633.P2159390114871498262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141450 (A038722 (n + 1)).toNat

end

end A066633.P2159390114871498262

/-! ## A066633.P14838362782632686024

`A141450(A278818(n))`
-/

namespace A066633.P14838362782632686024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141450 (A278818 n).toNat

end

end A066633.P14838362782632686024

/-! ## A066633.P8013588411802152346

`A138785(n+1)*A221876(n+1)/A228526(n+1)`
-/

namespace A066633.P8013588411802152346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138785 (n + 1) * A221876 (n + 1) : ℚ) / (A228526 (n + 1) : ℚ)

end

end A066633.P8013588411802152346

/-!
# A066634: Number of triangulations of the cyclic polytope C(n, n-5).

The programs for A066634, there is no canonical definition to state claims against.
-/

/-! ## A066634.P101308825706749260

`A175181(A218181(2*n+3))+A026560(n+2)`
-/

namespace A066634.P101308825706749260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A218181 (2 * n + 3)).toNat + A026560 (n + 2)

end

end A066634.P101308825706749260

/-!
# A066635: Distance from n to closest square different from n.

The programs for A066635, the canonical program `A066635.P3813954879404359062` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066635 has offset 1).

The definition of A066635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066635.P3813954879404359062

`A053188(n+1)+Δ[A000196(n)²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066635

/-- `A053188(n+1)+Δ[A000196(n)²]` -/
def P3813954879404359062.Spec : Prop :=
  ∀ n, P3813954879404359062.a n = A066635 (n + 1)

theorem P3813954879404359062.correct : P3813954879404359062.Spec := by
  intro n
  simp only [A066635, Nat.add_sub_cancel]

end A066635

/-! ## A066635.P5324645711684788407

`A048760(n+1)+A053188(n+1)-A048760(n)`
-/

namespace A066635.P5324645711684788407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (n + 1) + (A053188 (n + 1) - A048760 n)

end

end A066635.P5324645711684788407

namespace A066635

/-- `A048760(n+1)+A053188(n+1)-A048760(n)` -/
def P5324645711684788407.Spec : Prop :=
  ∀ n, P5324645711684788407.a n = A066635 (n + 1)

end A066635

/-! ## A066635.P1443517586491669637

`A080883(n+1-(A071797(n+1)+A053188(n+1)))`
-/

namespace A066635.P1443517586491669637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 ((n + 1 : ℤ) - (A071797 (n + 1) + A053188 (n + 1))).toNat

end

end A066635.P1443517586491669637

namespace A066635

/-- `A080883(n+1-(A071797(n+1)+A053188(n+1)))` -/
def P1443517586491669637.Spec : Prop :=
  ∀ n, P1443517586491669637.a n = A066635 (n + 1)

end A066635

/-! ## A066635.P8382193100343303195

`abs(n+1-A048760(A053186(n+1)+n))`
-/

namespace A066635.P8382193100343303195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A048760 (A053186 (n + 1) + (n : ℤ)).toNat|

end

end A066635.P8382193100343303195

namespace A066635

/-- `abs(n+1-A048760(A053186(n+1)+n))` -/
def P8382193100343303195.Spec : Prop :=
  ∀ n, P8382193100343303195.a n = A066635 (n + 1)

end A066635

/-! ## A066635.P9653352151838186144

`A071797(A053188(n+1)+A080883(n)+n)`
-/

namespace A066635.P9653352151838186144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A053188 (n + 1) + (A080883 n + (n : ℤ))).toNat

end

end A066635.P9653352151838186144

namespace A066635

/-- `A071797(A053188(n+1)+A080883(n)+n)` -/
def P9653352151838186144.Spec : Prop :=
  ∀ n, P9653352151838186144.a n = A066635 (n + 1)

end A066635

/-!
# A066636: a(n) = A066638(n)/n, where A066638(n) is the smallest power of a squarefree kernel of n that is a multiple of n.

The programs for A066636, the canonical program `A066636.P3666790557373503955` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066636 has offset 1).

The definition of A066636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066636.P12742374072614441068

`A066638(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066636.P12742374072614441068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066636.P12742374072614441068

namespace A066636

/-- `A066638(n+1)/(n+1)` -/
def P12742374072614441068.Spec : Prop :=
  ∀ n, P12742374072614441068.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P3666790557373503955

`A007947(n+1)^A051903(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066636

/-- `A007947(n+1)^A051903(n+1)/(n+1)` -/
def P3666790557373503955.Spec : Prop :=
  ∀ n, P3666790557373503955.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P3804113614327486192

`A304768(n+1)/A007947(n+1)`
-/

namespace A066636.P3804113614327486192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A066636.P3804113614327486192

namespace A066636

/-- `A304768(n+1)/A007947(n+1)` -/
def P3804113614327486192.Spec : Prop :=
  ∀ n, P3804113614327486192.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P16990568628796142843

`A295417(n+1)/A062759(n+1)`
-/

namespace A066636.P16990568628796142843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295417 (n + 1) : ℚ) / (A062759 (n + 1) : ℚ)

end

end A066636.P16990568628796142843

namespace A066636

/-- `A295417(n+1)/A062759(n+1)` -/
def P16990568628796142843.Spec : Prop :=
  ∀ n, P16990568628796142843.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P8299803567340661820

`A373703(n+1)/A062760(n+1)`
-/

namespace A066636.P8299803567340661820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373703 (n + 1) : ℚ) / (A062760 (n + 1) : ℚ)

end

end A066636.P8299803567340661820

namespace A066636

/-- `A373703(n+1)/A062760(n+1)` -/
def P8299803567340661820.Spec : Prop :=
  ∀ n, P8299803567340661820.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P12586366742043041791

`A304768(n+1)/A015052(A015052(n+1))`
-/

namespace A066636.P12586366742043041791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A066636.P12586366742043041791

namespace A066636

/-- `A304768(n+1)/A015052(A015052(n+1))` -/
def P12586366742043041791.Spec : Prop :=
  ∀ n, P12586366742043041791.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P10087569571698703293

`A304768(n+1)/A304768(A062759(n+1))`
-/

namespace A066636.P10087569571698703293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 (n + 1) : ℚ) / (A304768 (A062759 (n + 1)).toNat : ℚ)

end

end A066636.P10087569571698703293

namespace A066636

/-- `A304768(n+1)/A304768(A062759(n+1))` -/
def P10087569571698703293.Spec : Prop :=
  ∀ n, P10087569571698703293.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P13570941538203221908

`A304768(n+1)/A007913(A356191(n+1))`
-/

namespace A066636.P13570941538203221908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 (n + 1) : ℚ) / (A007913 (A356191 (n + 1)).toNat : ℚ)

end

end A066636.P13570941538203221908

namespace A066636

/-- `A304768(n+1)/A007913(A356191(n+1))` -/
def P13570941538203221908.Spec : Prop :=
  ∀ n, P13570941538203221908.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P2321183108456267452

`A003557(A304768(n+1))`
-/

namespace A066636.P2321183108456267452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A304768 (n + 1)).toNat

end

end A066636.P2321183108456267452

namespace A066636

/-- `A003557(A304768(n+1))` -/
def P2321183108456267452.Spec : Prop :=
  ∀ n, P2321183108456267452.a n = A066636 (n + 1)

end A066636

/-! ## A066636.P12036713301440717803

`A062760(A295417(n+1))`
-/

namespace A066636.P12036713301440717803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A295417 (n + 1)).toNat

end

end A066636.P12036713301440717803

namespace A066636

/-- `A062760(A295417(n+1))` -/
def P12036713301440717803.Spec : Prop :=
  ∀ n, P12036713301440717803.a n = A066636 (n + 1)

end A066636

/-! ## A066636.P9377970709937585620

`A062760(A304768(2*n+1-n))`
-/

namespace A066636.P9377970709937585620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A304768 (2 * n + 1 - n)).toNat

end

end A066636.P9377970709937585620

namespace A066636

/-- `A062760(A304768(2*n+1-n))` -/
def P9377970709937585620.Spec : Prop :=
  ∀ n, P9377970709937585620.a n = A066636 (n + 1)

end A066636

/-! ## A066636.P6596964000800758964

`A062759(A062760(A304768(A304776(n+1))))`
-/

namespace A066636.P6596964000800758964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A062760 (A304768 (A304776 (n + 1)).toNat).toNat).toNat

end

end A066636.P6596964000800758964

namespace A066636

/-- `A062759(A062760(A304768(A304776(n+1))))` -/
def P6596964000800758964.Spec : Prop :=
  ∀ n, P6596964000800758964.a n = A066636 (n + 1)

end A066636

/-! ## A066636.P13085466886147062141

`A304768((n+1)²)/A304768(n+1)`
-/

namespace A066636.P13085466886147062141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 ((n + 1) ^ 2) : ℚ) / (A304768 (n + 1) : ℚ)

end

end A066636.P13085466886147062141

namespace A066636

/-- `A304768((n+1)²)/A304768(n+1)` -/
def P13085466886147062141.Spec : Prop :=
  ∀ n, P13085466886147062141.a n = (A066636 (n + 1) : ℚ)

end A066636

/-! ## A066636.P7309030904246574047

`A087321(A064549(n+1))/A064549(n+1)`
-/

namespace A066636.P7309030904246574047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087321 (A064549 (n + 1)).toNat : ℚ) / (A064549 (n + 1) : ℚ)

end

end A066636.P7309030904246574047

namespace A066636

/-- `A087321(A064549(n+1))/A064549(n+1)` -/
def P7309030904246574047.Spec : Prop :=
  ∀ n, P7309030904246574047.a n = (A066636 (n + 1) : ℚ)

end A066636

/-!
# A066637: Total number of elements in all factorizations of n with all factors > 1.

The programs for A066637, there is no canonical definition to state claims against.
-/

/-! ## A066637.P10877740170051413785

`A174524(A101296(n+1))`
-/

namespace A066637.P10877740170051413785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174524 (A101296 (n + 1)).toNat

end

end A066637.P10877740170051413785

/-! ## A066637.P13597407732516938325

`∑{d}[n+1, A050370(#)*A309891((n+1)/#)]`
-/

namespace A066637.P13597407732516938325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d * A309891 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066637.P13597407732516938325

/-! ## A066637.P15230911641547903004

`A076277(n+1)+A001055(n+1)%A005408(n)`
-/

namespace A066637.P15230911641547903004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076277 (n + 1) + Int.tmod (A001055 (n + 1)) (A005408 n)

end

end A066637.P15230911641547903004

/-! ## A066637.P15791138784718694202

`(A076277(n+1)+A001055(n+1))%A000041(n+1)`
-/

namespace A066637.P15791138784718694202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076277 (n + 1) + A001055 (n + 1)) (A000041 (n + 1))

end

end A066637.P15791138784718694202

/-! ## A066637.P9712911103700204847

`A349907(A045965(n+1))+A076277(n+1)`
-/

namespace A066637.P9712911103700204847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A045965 (n + 1)).toNat + A076277 (n + 1)

end

end A066637.P9712911103700204847

/-!
# A066638: Smallest power of a squarefree number that is a multiple of n.

The programs for A066638, the canonical program `A066638.P1945052902267666698` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066638 has offset 1).

The definition of A066638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066636, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066638.P1945052902267666698

`A066636(n+1)*(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066638

/-- `A066636(n+1)*(n+1)` -/
def P1945052902267666698.Spec : Prop :=
  ∀ n, P1945052902267666698.a n = A066638 (n + 1)

theorem P1945052902267666698.correct : P1945052902267666698.Spec := by
  intro n
  simp only [A066638, Nat.add_sub_cancel]

end A066638

/-! ## A066638.P1057490359922588818

`A003557(n+1)*A304768(n+1)`
-/

namespace A066638.P1057490359922588818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A304768 (n + 1)

end

end A066638.P1057490359922588818

namespace A066638

/-- `A003557(n+1)*A304768(n+1)` -/
def P1057490359922588818.Spec : Prop :=
  ∀ n, P1057490359922588818.a n = A066638 (n + 1)

end A066638

/-! ## A066638.P248790730892574768

`A062760(n+1)*A295417(n+1)`
-/

namespace A066638.P248790730892574768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A295417 (n + 1)

end

end A066638.P248790730892574768

namespace A066638

/-- `A062760(n+1)*A295417(n+1)` -/
def P248790730892574768.Spec : Prop :=
  ∀ n, P248790730892574768.a n = A066638 (n + 1)

end A066638

/-! ## A066638.P14790804401047416146

`A007947(n+1)^A051903(n+1)`
-/

namespace A066638.P14790804401047416146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A066638.P14790804401047416146

namespace A066638

/-- `A007947(n+1)^A051903(n+1)` -/
def P14790804401047416146.Spec : Prop :=
  ∀ n, P14790804401047416146.a n = (A066638 (n + 1) : ℚ)

end A066638

/-! ## A066638.P680294017945773450

`gcd(A055615(n+1), A087321(n+1))`
-/

namespace A066638.P680294017945773450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055615 (n + 1)) (A087321 (n + 1))

end

end A066638.P680294017945773450

namespace A066638

/-- `gcd(A055615(n+1), A087321(n+1))` -/
def P680294017945773450.Spec : Prop :=
  ∀ n, (P680294017945773450.a n : ℤ) = A066638 (n + 1)

end A066638

/-! ## A066638.P10065351635282390756

`A007947(n+1)^A007814(A046523(n+1))`
-/

namespace A066638.P10065351635282390756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A007814 (A046523 (n + 1)).toNat : ℤ)

end

end A066638.P10065351635282390756

namespace A066638

/-- `A007947(n+1)^A007814(A046523(n+1))` -/
def P10065351635282390756.Spec : Prop :=
  ∀ n, P10065351635282390756.a n = (A066638 (n + 1) : ℚ)

end A066638

/-! ## A066638.P15689877942685177551

`A007947(n+1)^A001222(A238745(n+1))`
-/

namespace A066638.P15689877942685177551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A001222 (A238745 (n + 1)).toNat : ℤ)

end

end A066638.P15689877942685177551

namespace A066638

/-- `A007947(n+1)^A001222(A238745(n+1))` -/
def P15689877942685177551.Spec : Prop :=
  ∀ n, P15689877942685177551.a n = (A066638 (n + 1) : ℚ)

end A066638

/-! ## A066638.P2368056108648636972

`sqrt(A087321((n+1)²))`
-/

namespace A066638.P2368056108648636972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087321 ((n + 1) ^ 2) : ℝ)

end

end A066638.P2368056108648636972

namespace A066638

/-- `sqrt(A087321((n+1)²))` -/
def P2368056108648636972.Spec : Prop :=
  ∀ n, P2368056108648636972.a n = (A066638 (n + 1) : ℝ)

end A066638

/-! ## A066638.P9964125437459950467

`A062759((n+1)*A062760(A304768(n+1)))`
-/

namespace A066638.P9964125437459950467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 ((n + 1 : ℤ) * A062760 (A304768 (n + 1)).toNat).toNat

end

end A066638.P9964125437459950467

namespace A066638

/-- `A062759((n+1)*A062760(A304768(n+1)))` -/
def P9964125437459950467.Spec : Prop :=
  ∀ n, P9964125437459950467.a n = A066638 (n + 1)

end A066638

/-! ## A066638.P12274866426550416957

`A354090((n+1)*A304768(n+1))`
-/

namespace A066638.P12274866426550416957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 ((n + 1 : ℤ) * A304768 (n + 1)).toNat

end

end A066638.P12274866426550416957

namespace A066638

/-- `A354090((n+1)*A304768(n+1))` -/
def P12274866426550416957.Spec : Prop :=
  ∀ n, P12274866426550416957.a n = A066638 (n + 1)

end A066638

/-!
# A066639: Number of partitions of n with floor(n/2) parts.

The programs for A066639, there is no canonical definition to state claims against.
-/

/-! ## A066639.P8932612267152818315

`A000041(ceil((n+1)/2))-1/2+(-1)^(n+1)/2`
-/

namespace A066639.P8932612267152818315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 ⌈(n + 1 : ℚ) / 2⌉.toNat : ℚ) - (1 : ℚ) / 2 + ((-1) ^ (n + 1) : ℚ) / 2

end

end A066639.P8932612267152818315

/-! ## A066639.P1028446443057216534

`A000041(∑[log2(gcd(2, n))])-log2(gcd(2, n))`
-/

namespace A066639.P1028446443057216534
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A066639.P1028446443057216534

/-! ## A066639.P6665929995891645493

`A000041(∑[char[2*n]])-char[2*n]`
-/

namespace A066639.P6665929995891645493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A066639.P6665929995891645493

/-! ## A066639.P3469479661566659979

`A119620(n+2)-(n+1)%2`
-/

namespace A066639.P3469479661566659979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (n + 2) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A066639.P3469479661566659979

/-! ## A066639.P17338435936733707501

`A119620(n+2)-A000035(n+1)`
-/

namespace A066639.P17338435936733707501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (n + 2) - A000035 (n + 1)

end

end A066639.P17338435936733707501

/-! ## A066639.P1064432953988199190

`A000065(A008624(2*n+3))+A000035(n)`
-/

namespace A066639.P1064432953988199190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A008624 (2 * n + 3)).toNat + A000035 n

end

end A066639.P1064432953988199190

/-! ## A066639.P16199485793959324149

`A061199(A101881(n))`
-/

namespace A066639.P16199485793959324149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A101881 n).toNat

end

end A066639.P16199485793959324149

/-! ## A066639.P9903700562433581901

`A072233(∑[or(1, n+1)])`
-/

namespace A066639.P9903700562433581901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066639.P9903700562433581901

/-! ## A066639.P14299658886369005913

`A072233(∑[2-or(1, -n)])`
-/

namespace A066639.P14299658886369005913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066639.P14299658886369005913

/-! ## A066639.P2342566831710427524

`A072233(floor(∑[3/2+n]))`
-/

namespace A066639.P2342566831710427524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A066639.P2342566831710427524

/-! ## A066639.P11419591087264636076

`A286653(∑[or(1, n)]+n+1)`
-/

namespace A066639.P11419591087264636076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A066639.P11419591087264636076

/-! ## A066639.P4245711809582883161

`A286653(∑[a(n-2)+2])` with `a(0)=2, a(1)=2`
-/

namespace A066639.P4245711809582883161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066639.P4245711809582883161

/-! ## A066639.P11595321268020741938

`A061198(A074148(n+1))`
-/

namespace A066639.P11595321268020741938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 (A074148 (n + 1)).toNat

end

end A066639.P11595321268020741938

/-! ## A066639.P11011224552180158774

`A286653(A080476(n+2))`
-/

namespace A066639.P11011224552180158774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A080476 (n + 2)).toNat

end

end A066639.P11011224552180158774

/-! ## A066639.P8132989639922439077

`A282750(A087327(n+2))`
-/

namespace A066639.P8132989639922439077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A087327 (n + 2)).toNat

end

end A066639.P8132989639922439077

/-! ## A066639.P11056791506720358741

`A175788(A074148(n+2))`
-/

namespace A066639.P11056791506720358741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A074148 (n + 2)).toNat

end

end A066639.P11056791506720358741

/-!
# A066640: Numbers such that all divisors have only odd digits.

The programs for A066640, the canonical program `A066640.P6323078218630825378` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066640 has offset 1).

The definition of A066640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066640.P6323078218630825378

`eq[1, and(1, A190997(n+1))]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066640

/-- `eq[1, and(1, A190997(n+1))]+1` -/
def P6323078218630825378.Spec : Prop :=
  ∀ n, (P6323078218630825378.a n : ℤ) = A066640 (n + 1)

theorem P6323078218630825378.correct : P6323078218630825378.Spec := by
  intro n
  simp only [A066640, Nat.add_sub_cancel]

end A066640

/-! ## A066640.P4476621508818735907

`record[and(1, A190997(n+1))*A000027(n+1)]`
-/

namespace A066640.P4476621508818735907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066640.P4476621508818735907

namespace A066640

/-- `record[and(1, A190997(n+1))*A000027(n+1)]` -/
def P4476621508818735907.Spec : Prop :=
  ∀ n, P4476621508818735907.a n = A066640 (n + 1)

end A066640

/-! ## A066640.P16161213304789427554

`record[and(1, A190997(n+1))*A000265(n+1)]`
-/

namespace A066640.P16161213304789427554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1)) * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066640.P16161213304789427554

namespace A066640

/-- `record[and(1, A190997(n+1))*A000265(n+1)]` -/
def P16161213304789427554.Spec : Prop :=
  ∀ n, P16161213304789427554.a n = A066640 (n + 1)

end A066640

/-! ## A066640.P16924207352945874428

`record[and(1, A190997(n+1))*A328617(n+1)]`
-/

namespace A066640.P16924207352945874428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1)) * A328617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066640.P16924207352945874428

namespace A066640

/-- `record[and(1, A190997(n+1))*A328617(n+1)]` -/
def P16924207352945874428.Spec : Prop :=
  ∀ n, P16924207352945874428.a n = A066640 (n + 1)

end A066640

/-! ## A066640.P301272125241166106

`record[and(1, A190997(n+1))*A029579(2*n)]`
-/

namespace A066640.P301272125241166106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1)) * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066640.P301272125241166106

namespace A066640

/-- `record[and(1, A190997(n+1))*A029579(2*n)]` -/
def P301272125241166106.Spec : Prop :=
  ∀ n, P301272125241166106.a n = A066640 (n + 1)

end A066640

/-!
# A066641: a(n) = floor(n^sqrt(n)).

The programs for A066641, the canonical program `A066641.P15505875922675025991` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066641 has offset 1).

The definition of A066641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066641.P15505875922675025991

`floor(sqrt((n+1)²^sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066641

/-- `floor(sqrt((n+1)²^sqrt(n+1)))` -/
def P15505875922675025991.Spec : Prop :=
  ∀ n, P15505875922675025991.a n = A066641 (n + 1)

theorem P15505875922675025991.correct : P15505875922675025991.Spec := by
  intro n
  simp only [A066641, Nat.add_sub_cancel]

end A066641

/-! ## A066641.P10357781327909441242

`∑{d}[A127903(n+1), floor(((n+1)/#)^sqrt(n+1))]`
-/

namespace A066641.P10357781327909441242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊((n + 1 : ℚ) / (d : ℚ) : ℝ) ^ (Real.sqrt (n + 1 : ℝ))⌋

end

end A066641.P10357781327909441242

namespace A066641

/-- `∑{d}[A127903(n+1), floor(((n+1)/#)^sqrt(n+1))]` -/
def P10357781327909441242.Spec : Prop :=
  ∀ n, P10357781327909441242.a n = A066641 (n + 1)

end A066641

/-! ## A066641.P9709552872838008896

`floor((n+1)^sqrt(n+1))%A071686(n+1)`
-/

namespace A066641.P9709552872838008896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) ^ (Real.sqrt (n + 1 : ℝ))⌋ (A071686 (n + 1))

end

end A066641.P9709552872838008896

namespace A066641

/-- `floor((n+1)^sqrt(n+1))%A071686(n+1)` -/
def P9709552872838008896.Spec : Prop :=
  ∀ n, P9709552872838008896.a n = A066641 (n + 1)

end A066641

/-! ## A066641.P16963821532871243772

`∑{d}[A127874(n+1), floor(((n+1)/#)^sqrt(n+1))]`
-/

namespace A066641.P16963821532871243772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊((n + 1 : ℚ) / (d : ℚ) : ℝ) ^ (Real.sqrt (n + 1 : ℝ))⌋

end

end A066641.P16963821532871243772

namespace A066641

/-- `∑{d}[A127874(n+1), floor(((n+1)/#)^sqrt(n+1))]` -/
def P16963821532871243772.Spec : Prop :=
  ∀ n, P16963821532871243772.a n = A066641 (n + 1)

end A066641

/-! ## A066641.P1290389828152291649

`A000027(floor((n+1)^sqrt(n+1)))`
-/

namespace A066641.P1290389828152291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(n + 1 : ℝ) ^ (Real.sqrt (n + 1 : ℝ))⌋.toNat

end

end A066641.P1290389828152291649

namespace A066641

/-- `A000027(floor((n+1)^sqrt(n+1)))` -/
def P1290389828152291649.Spec : Prop :=
  ∀ n, P1290389828152291649.a n = A066641 (n + 1)

end A066641

/-!
# A066642: a(n) = floor(n^(n/2)).

The programs for A066642, the canonical program `A066642.P16897421890588518632` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066642 has offset 0).

The definition of A066642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(n/2))` (program `A066642.P16897421890588518632`, by `A066642.P16897421890588518632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066642.P16897421890588518632

`floor(n^(n/2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066642

/-- `floor(n^(n/2))` -/
def P16897421890588518632.Spec : Prop :=
  ∀ n, P16897421890588518632.a n = A066642 n

theorem P16897421890588518632.correct : P16897421890588518632.Spec := by
  intro n
  simp only [A066642]

end A066642

/-! ## A066642.P9732966336094377950

`ceil(sqrt(A000312(n)+1))-1`
-/

namespace A066642.P9732966336094377950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000312 n + 1 : ℝ)⌉ - 1

end

end A066642.P9732966336094377950

namespace A066642

/-- `ceil(sqrt(A000312(n)+1))-1` -/
def P9732966336094377950.Spec : Prop :=
  ∀ n, P9732966336094377950.a n = A066642 n

end A066642

/-! ## A066642.P6083259289605275320

`ceil(sqrt(A066068(n)+1))-1`
-/

namespace A066642.P6083259289605275320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A066068 n + 1 : ℝ)⌉ - 1

end

end A066642.P6083259289605275320

namespace A066642

/-- `ceil(sqrt(A066068(n)+1))-1` -/
def P6083259289605275320.Spec : Prop :=
  ∀ n, P6083259289605275320.a n = A066642 n

end A066642

/-! ## A066642.P16535314684166466369

`floor(sqrt(A000312(n)))%A011545(n)`
-/

namespace A066642.P16535314684166466369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000312 n)) (A011545 n)

end

end A066642.P16535314684166466369

namespace A066642

/-- `floor(sqrt(A000312(n)))%A011545(n)` -/
def P16535314684166466369.Spec : Prop :=
  ∀ n, P16535314684166466369.a n = A066642 n

end A066642

/-! ## A066642.P11596990673187128876

`floor(sqrt(A000312(n)+1))%A038507(n)`
-/

namespace A066642.P11596990673187128876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000312 n + 1)) (A038507 n)

end

end A066642.P11596990673187128876

namespace A066642

/-- `floor(sqrt(A000312(n)+1))%A038507(n)` -/
def P11596990673187128876.Spec : Prop :=
  ∀ n, P11596990673187128876.a n = A066642 n

end A066642

/-! ## A066642.P11721733108488718040

`A255616(2*n²)`
-/

namespace A066642.P11721733108488718040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (2 * n ^ 2)

end

end A066642.P11721733108488718040

namespace A066642

/-- `A255616(2*n²)` -/
def P11721733108488718040.Spec : Prop :=
  ∀ n, P11721733108488718040.a n = A066642 n

end A066642

/-!
# A066643: a(n) = floor(Pi*n^2).

The programs for A066643, the canonical program `A066643.P17762996301981300215` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066643 has offset 0).

The definition of A066643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066643.P703288082739639040

`floor(π*n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066643.P703288082739639040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

end

end A066643.P703288082739639040

namespace A066643

/-- `floor(π*n²)` -/
def P703288082739639040.Spec : Prop :=
  ∀ n, P703288082739639040.a n = A066643 n

end A066643

/-! ## A066643.P17762996301981300215

`A022844(n²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066643

/-- `A022844(n²)` -/
def P17762996301981300215.Spec : Prop :=
  ∀ n, P17762996301981300215.a n = A066643 n

theorem P17762996301981300215.correct : P17762996301981300215.Spec := by
  intro n
  simp only [A066643]

end A066643

/-! ## A066643.P14982989291446483099

`A135039(n)+A057428(n)`
-/

namespace A066643.P14982989291446483099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n + A057428 n

end

end A066643.P14982989291446483099

namespace A066643

/-- `A135039(n)+A057428(n)` -/
def P14982989291446483099.Spec : Prop :=
  ∀ n, P14982989291446483099.a n = A066643 n

end A066643

/-! ## A066643.P13591068455726202924

`A135039(n)-A057427(n)`
-/

namespace A066643.P13591068455726202924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n - A057427 n

end

end A066643.P13591068455726202924

namespace A066643

/-- `A135039(n)-A057427(n)` -/
def P13591068455726202924.Spec : Prop :=
  ∀ n, P13591068455726202924.a n = A066643 n

end A066643

/-! ## A066643.P349840485565811099

`A336017(n)+n*A022844(n)`
-/

namespace A066643.P349840485565811099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336017 n + (n : ℤ) * A022844 n

end

end A066643.P349840485565811099

namespace A066643

/-- `A336017(n)+n*A022844(n)` -/
def P349840485565811099.Spec : Prop :=
  ∀ n, P349840485565811099.a n = A066643 n

end A066643

/-! ## A066643.P4843582596514177409

`ceil(atan(A001105(n))*A001105(n))`
-/

namespace A066643.P4843582596514177409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A001105 n : ℝ) * (A001105 n : ℝ)⌉

end

end A066643.P4843582596514177409

namespace A066643

/-- `ceil(atan(A001105(n))*A001105(n))` -/
def P4843582596514177409.Spec : Prop :=
  ∀ n, P4843582596514177409.a n = A066643 n

end A066643

/-! ## A066643.P10010559245467744636

`A135039(n)-A005171(2*(n+1))`
-/

namespace A066643.P10010559245467744636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n - A005171 (2 * (n + 1))

end

end A066643.P10010559245467744636

namespace A066643

/-- `A135039(n)-A005171(2*(n+1))` -/
def P10010559245467744636.Spec : Prop :=
  ∀ n, P10010559245467744636.a n = A066643 n

end A066643

/-! ## A066643.P3734487376128333939

`A135039(n)-and(1, A000040(n+1))`
-/

namespace A066643.P3734487376128333939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n - Int.land 1 (A000040 (n + 1))

end

end A066643.P3734487376128333939

namespace A066643

/-- `A135039(n)-and(1, A000040(n+1))` -/
def P3734487376128333939.Spec : Prop :=
  ∀ n, P3734487376128333939.a n = A066643 n

end A066643

/-! ## A066643.P3606885021303984474

`A066645(n)+A135039(n)-A135973(n)`
-/

namespace A066643.P3606885021303984474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + (A135039 n - A135973 n)

end

end A066643.P3606885021303984474

namespace A066643

/-- `A066645(n)+A135039(n)-A135973(n)` -/
def P3606885021303984474.Spec : Prop :=
  ∀ n, P3606885021303984474.a n = A066643 n

end A066643

/-! ## A066643.P2253656257008987363

`A135039(n)+A322586(A176045(n+1)+1)-1`
-/

namespace A066643.P2253656257008987363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n + (A322586 (A176045 (n + 1) + 1).toNat - 1)

end

end A066643.P2253656257008987363

namespace A066643

/-- `A135039(n)+A322586(A176045(n+1)+1)-1` -/
def P2253656257008987363.Spec : Prop :=
  ∀ n, P2253656257008987363.a n = A066643 n

end A066643

/-! ## A066643.P17433336996098888751

`A135039(n)+A322586(n²+4)-1`
-/

namespace A066643.P17433336996098888751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n + (A322586 (n ^ 2 + 4) - 1)

end

end A066643.P17433336996098888751

namespace A066643

/-- `A135039(n)+A322586(n²+4)-1` -/
def P17433336996098888751.Spec : Prop :=
  ∀ n, P17433336996098888751.a n = A066643 n

end A066643

/-! ## A066643.P11477530207090450104

`A135039(n)-A004442(A243148(∑[n]))`
-/

namespace A066643.P11477530207090450104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n - A004442 (A243148 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066643.P11477530207090450104

namespace A066643

/-- `A135039(n)-A004442(A243148(∑[n]))` -/
def P11477530207090450104.Spec : Prop :=
  ∀ n, P11477530207090450104.a n = A066643 n

end A066643

/-! ## A066643.P9713919396701769413

`A063459(n²)+n²`
-/

namespace A066643.P9713919396701769413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (n ^ 2) + (n ^ 2 : ℤ)

end

end A066643.P9713919396701769413

namespace A066643

/-- `A063459(n²)+n²` -/
def P9713919396701769413.Spec : Prop :=
  ∀ n, P9713919396701769413.a n = A066643 n

theorem P9713919396701769413.correct : P9713919396701769413.Spec := by
  intro n
  simp only [A066643, Nat.add_sub_cancel, A066643.P9713919396701769413.a, A066643.P17762996301981300215.a, A022844, A022844.P11976428228251050705.a, A063459, A063459.P17423234819915296512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066643

/-! ## A066643.P6895746347373647254

`A121381(n²)+A057428(n)`
-/

namespace A066643.P6895746347373647254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n ^ 2) + A057428 n

end

end A066643.P6895746347373647254

namespace A066643

/-- `A121381(n²)+A057428(n)` -/
def P6895746347373647254.Spec : Prop :=
  ∀ n, P6895746347373647254.a n = A066643 n

end A066643

/-! ## A066643.P659058603926292587

`A121381(n²)-A057427(n)`
-/

namespace A066643.P659058603926292587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n ^ 2) - A057427 n

end

end A066643.P659058603926292587

namespace A066643

/-- `A121381(n²)-A057427(n)` -/
def P659058603926292587.Spec : Prop :=
  ∀ n, P659058603926292587.a n = A066643 n

end A066643

/-!
# A066644: a(n) = floor(surface area of a sphere with radius n).

The programs for A066644, the canonical program `A066644.P13774295910800308269` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066644 has offset 1).

The definition of A066644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066644.P13774295910800308269

`floor(4*π*(n+1)²)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066644

/-- `floor(4*π*(n+1)²)` -/
def P13774295910800308269.Spec : Prop :=
  ∀ n, P13774295910800308269.a n = A066644 (n + 1)

theorem P13774295910800308269.correct : P13774295910800308269.Spec := by
  intro n
  simp only [A066644, Nat.add_sub_cancel]

end A066644

/-! ## A066644.P1381542118627811786

`ceil(π*(2*(n+1))²)-(1-and(2, n))²`
-/

namespace A066644.P1381542118627811786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌉ - (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A066644.P1381542118627811786

namespace A066644

/-- `ceil(π*(2*(n+1))²)-(1-and(2, n))²` -/
def P1381542118627811786.Spec : Prop :=
  ∀ n, P1381542118627811786.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P16741398835798786252

`A135971(n+1)-1`
-/

namespace A066644.P16741398835798786252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135971 (n + 1) - 1

end

end A066644.P16741398835798786252

namespace A066644

/-- `A135971(n+1)-1` -/
def P16741398835798786252.Spec : Prop :=
  ∀ n, P16741398835798786252.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P13847768065138923146

`A338020(2*(n+1))+A066643(2*n+1)`
-/

namespace A066644.P13847768065138923146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338020 (2 * (n + 1)) + A066643 (2 * n + 1)

end

end A066644.P13847768065138923146

namespace A066644

/-- `A338020(2*(n+1))+A066643(2*n+1)` -/
def P13847768065138923146.Spec : Prop :=
  ∀ n, P13847768065138923146.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P2580374370964671654

`∑[A338020(2*n+1)+A338020(2*(n+1))]`
-/

namespace A066644.P2580374370964671654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338020 (2 * n + 1) + A338020 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066644.P2580374370964671654

namespace A066644

/-- `∑[A338020(2*n+1)+A338020(2*(n+1))]` -/
def P2580374370964671654.Spec : Prop :=
  ∀ n, P2580374370964671654.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P4767500145466468534

`A066643(2*(n+1))`
-/

namespace A066644.P4767500145466468534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (2 * (n + 1))

end

end A066644.P4767500145466468534

namespace A066644

/-- `A066643(2*(n+1))` -/
def P4767500145466468534.Spec : Prop :=
  ∀ n, P4767500145466468534.a n = A066644 (n + 1)

theorem P4767500145466468534.correct : P4767500145466468534.Spec := by
  intro n
  simp only [A066644, Nat.add_sub_cancel, A066644.P4767500145466468534.a, A066644.P13774295910800308269.a, A066643, A066643.P17762996301981300215.a, A022844, A022844.P11976428228251050705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066644

/-! ## A066644.P9250401256740789153

`record[A066643(xor(1, n)+1)]`
-/

namespace A066644.P9250401256740789153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066644.P9250401256740789153

namespace A066644

/-- `record[A066643(xor(1, n)+1)]` -/
def P9250401256740789153.Spec : Prop :=
  ∀ n, P9250401256740789153.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P2606762724484263586

`A135039(2*(n+1))-1`
-/

namespace A066644.P2606762724484263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (2 * (n + 1)) - 1

end

end A066644.P2606762724484263586

namespace A066644

/-- `A135039(2*(n+1))-1` -/
def P2606762724484263586.Spec : Prop :=
  ∀ n, P2606762724484263586.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P6524034035868600430

`record[A066643((-1)^n+1+n)]`
-/

namespace A066644.P6524034035868600430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 ((-1) ^ n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066644.P6524034035868600430

namespace A066644

/-- `record[A066643((-1)^n+1+n)]` -/
def P6524034035868600430.Spec : Prop :=
  ∀ n, P6524034035868600430.a n = A066644 (n + 1)

end A066644

/-! ## A066644.P10352990897938646215

`filter[A066643(2*n), A014306(#)]`
-/

namespace A066644.P10352990897938646215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A066644.P10352990897938646215

namespace A066644

/-- `filter[A066643(2*n), A014306(#)]` -/
def P10352990897938646215.Spec : Prop :=
  ∀ n, P10352990897938646215.a n = A066644 (n + 1)

end A066644

/-!
# A066645: a(n) = floor( (4/3)*Pi*n^3 ).

The programs for A066645, the canonical program `A066645.P5448569420241626900` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066645 has offset 0).

The definition of A066645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4/3*π*n^3)` (program `A066645.P5448569420241626900`, by `A066645.P5448569420241626900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066645.P5448569420241626900

`floor(4/3*π*n^3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066645

/-- `floor(4/3*π*n^3)` -/
def P5448569420241626900.Spec : Prop :=
  ∀ n, P5448569420241626900.a n = A066645 n

theorem P5448569420241626900.correct : P5448569420241626900.Spec := by
  intro n
  simp only [A066645]

end A066645

/-! ## A066645.P8735907987275810804

`A135973(n)+A057428(n)`
-/

namespace A066645.P8735907987275810804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n + A057428 n

end

end A066645.P8735907987275810804

namespace A066645

/-- `A135973(n)+A057428(n)` -/
def P8735907987275810804.Spec : Prop :=
  ∀ n, P8735907987275810804.a n = A066645 n

end A066645

/-! ## A066645.P1215478888716056905

`A135973(n)-A057427(n)`
-/

namespace A066645.P1215478888716056905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A057427 n

end

end A066645.P1215478888716056905

namespace A066645

/-- `A135973(n)-A057427(n)` -/
def P1215478888716056905.Spec : Prop :=
  ∀ n, P1215478888716056905.a n = A066645 n

end A066645

/-! ## A066645.P3305794895784478296

`A135973(n)-A019429(2*n)`
-/

namespace A066645.P3305794895784478296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A019429 (2 * n)

end

end A066645.P3305794895784478296

namespace A066645

/-- `A135973(n)-A019429(2*n)` -/
def P3305794895784478296.Spec : Prop :=
  ∀ n, P3305794895784478296.a n = A066645 n

end A066645

/-! ## A066645.P16284337481329061681

`A135973(n)-and(1, A000040(n+1))`
-/

namespace A066645.P16284337481329061681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - Int.land 1 (A000040 (n + 1))

end

end A066645.P16284337481329061681

namespace A066645

/-- `A135973(n)-and(1, A000040(n+1))` -/
def P16284337481329061681.Spec : Prop :=
  ∀ n, P16284337481329061681.a n = A066645 n

end A066645

/-! ## A066645.P2153162550498697971

`A135973(n)-A019429(A005843(n))²`
-/

namespace A066645.P2153162550498697971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A019429 (A005843 n).toNat ^ 2

end

end A066645.P2153162550498697971

namespace A066645

/-- `A135973(n)-A019429(A005843(n))²` -/
def P2153162550498697971.Spec : Prop :=
  ∀ n, P2153162550498697971.a n = A066645 n

end A066645

/-! ## A066645.P4826102985278870890

`A066643(n)+A135973(n)-A135039(n)`
-/

namespace A066645.P4826102985278870890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + (A135973 n - A135039 n)

end

end A066645.P4826102985278870890

namespace A066645

/-- `A066643(n)+A135973(n)-A135039(n)` -/
def P4826102985278870890.Spec : Prop :=
  ∀ n, P4826102985278870890.a n = A066645 n

end A066645

/-! ## A066645.P10344056686896457182

`A135973(n)-A323022(A001222(n+1)+1)`
-/

namespace A066645.P10344056686896457182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A323022 (A001222 (n + 1) + 1).toNat

end

end A066645.P10344056686896457182

namespace A066645

/-- `A135973(n)-A323022(A001222(n+1)+1)` -/
def P10344056686896457182.Spec : Prop :=
  ∀ n, P10344056686896457182.a n = A066645 n

end A066645

/-! ## A066645.P16881620691217723725

`A135973(n)-A001222(A008578(n+1))`
-/

namespace A066645.P16881620691217723725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A001222 (A008578 (n + 1)).toNat

end

end A066645.P16881620691217723725

namespace A066645

/-- `A135973(n)-A001222(A008578(n+1))` -/
def P16881620691217723725.Spec : Prop :=
  ∀ n, P16881620691217723725.a n = A066645 n

end A066645

/-! ## A066645.P6523277388563205467

`A228272(A004277(n))`
-/

namespace A066645.P6523277388563205467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228272 (A004277 n).toNat

end

end A066645.P6523277388563205467

namespace A066645

/-- `A228272(A004277(n))` -/
def P6523277388563205467.Spec : Prop :=
  ∀ n, P6523277388563205467.a n = A066645 n

end A066645

/-! ## A066645.P12675212790936716799

`A228272(A004275(n+1))`
-/

namespace A066645.P12675212790936716799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228272 (A004275 (n + 1)).toNat

end

end A066645.P12675212790936716799

namespace A066645

/-- `A228272(A004275(n+1))` -/
def P12675212790936716799.Spec : Prop :=
  ∀ n, P12675212790936716799.a n = A066645 n

end A066645

/-!
# A066646: Arrange the permutations of {1..m} in lexicographic order. Sequence gives indices of permutations of orders 1 or 2.

The programs for A066646, there is no canonical definition to state claims against.
-/

/-! ## A066646.P5615883396362561408

`A014489(n)+1`
-/

namespace A066646.P5615883396362561408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014489 n + 1

end

end A066646.P5615883396362561408

/-! ## A066646.P2447124302860170194

`record[root((n+1)², A055092(n))]`
-/

namespace A066646.P2447124302860170194
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) ^ (1 / (A055092 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066646.P2447124302860170194

/-! ## A066646.P6503827727345796752

`eq[n, A056019(n)]+1`
-/

namespace A066646.P6503827727345796752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066646.P6503827727345796752

/-! ## A066646.P10008884284636256148

`A060119(A261220(n))+1`
-/

namespace A066646.P10008884284636256148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261220 n).toNat + 1

end

end A066646.P10008884284636256148

/-! ## A066646.P11203914938057749977

`eq[A055090(n), A055091(n)]+1`
-/

namespace A066646.P11203914938057749977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066646.P11203914938057749977

/-! ## A066646.P15898635569876386218

`eq[A060126(n), A060127(n)]+1`
-/

namespace A066646.P15898635569876386218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066646.P15898635569876386218

/-! ## A066646.P5420690764317386252

`eq[0, A261099(n)]+1`
-/

namespace A066646.P5420690764317386252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066646.P5420690764317386252

/-! ## A066646.P3677537799292912025

`A008619(2*A014489(n))`
-/

namespace A066646.P3677537799292912025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A014489 n).toNat

end

end A066646.P3677537799292912025

/-! ## A066646.P8274163060211334861

`A029579(2*A014489(n))`
-/

namespace A066646.P8274163060211334861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A014489 n).toNat

end

end A066646.P8274163060211334861

/-! ## A066646.P808184788990748956

`A052938(2*A014489(n))`
-/

namespace A066646.P808184788990748956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A014489 n).toNat

end

end A066646.P808184788990748956

/-! ## A066646.P1066268603163369062

`A008611(3*A014489(n))`
-/

namespace A066646.P1066268603163369062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A014489 n).toNat

end

end A066646.P1066268603163369062

/-!
# A066647: Squares of the form a^2 + b^3 with a, b > 0.

The programs for A066647, there is no canonical definition to state claims against.
-/

/-! ## A066647.P84026053209213169

`A070745(n+1)²`
-/

namespace A066647.P84026053209213169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070745 (n + 1) ^ 2

end

end A066647.P84026053209213169

/-! ## A066647.P8148359247061369045

`A070745(2*n+1-n)^2`
-/

namespace A066647.P8148359247061369045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070745 (2 * n + 1 - n) ^ 2

end

end A066647.P8148359247061369045

/-! ## A066647.P1607770385606773432

`∩[A329808(n+1), n²]`
-/

namespace A066647.P1607770385606773432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A066647.P1607770385606773432

/-! ## A066647.P17508681241276321369

`∩[A000290(n), A329808(n+1)]`
-/

namespace A066647.P17508681241276321369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066647.P17508681241276321369

/-! ## A066647.P12726154129545144705

`∩[A034793(n+1), A329808(n+1)]`
-/

namespace A066647.P12726154129545144705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066647.P12726154129545144705

/-! ## A066647.P16356969074065328134

`∩[A179126(n+1), A329808(n+1)]`
-/

namespace A066647.P16356969074065328134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066647.P16356969074065328134

/-! ## A066647.P10491153215094030178

`record[A070745(A286622(n))²]`
-/

namespace A066647.P10491153215094030178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070745 (A286622 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066647.P10491153215094030178

/-! ## A066647.P9390919980664355265

`record[A070745(A286622(n))]*A070745(n+1)`
-/

namespace A066647.P9390919980664355265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070745 (A286622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A070745 (n + 1)

end

end A066647.P9390919980664355265

/-! ## A066647.P3357889452123049671

`∩[A055393(n+1), A179126(n+1)]`
-/

namespace A066647.P3357889452123049671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066647.P3357889452123049671

/-! ## A066647.P13341365598602382123

`∩[A055393(n+1), A340585(n+1)]`
-/

namespace A066647.P13341365598602382123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066647.P13341365598602382123

/-!
# A066648: Cubes of the form a^2 + b^3 with a, b > 0.

The programs for A066648, there is no canonical definition to state claims against.
-/

/-! ## A066648.P10406348011921423224

`A228946(n+1)^3`
-/

namespace A066648.P10406348011921423224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (n + 1) ^ 3

end

end A066648.P10406348011921423224

/-! ## A066648.P5086790069566728973

`record[A228946(A331745(n))^3]`
-/

namespace A066648.P5086790069566728973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (A331745 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066648.P5086790069566728973

/-! ## A066648.P9207442972044173323

`record[A228946(A286558(n))^3]`
-/

namespace A066648.P9207442972044173323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (A286558 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066648.P9207442972044173323

/-! ## A066648.P6186403251659064118

`A000578(A228946(n+1))`
-/

namespace A066648.P6186403251659064118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A228946 (n + 1)).toNat

end

end A066648.P6186403251659064118

/-! ## A066648.P2289095987107871983

`record[A228946(A134478(n))^3]`
-/

namespace A066648.P2289095987107871983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (A134478 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066648.P2289095987107871983

/-!
# A066649: Primes of the form a^2 + b^3 with a, b > 0.

The programs for A066649, there is no canonical definition to state claims against.
-/

/-! ## A066649.P4966311036494776445

`p?[A078393(n+1)]`
-/

namespace A066649.P4966311036494776445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066649.P4966311036494776445

/-! ## A066649.P7151551558140460906

`∩[A109515(n+1), A078393(n+1)]`
-/

namespace A066649.P7151551558140460906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P7151551558140460906

/-! ## A066649.P6335625007540438170

`∩[A009087(n+1), A078393(n+1)]`
-/

namespace A066649.P6335625007540438170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P6335625007540438170

/-! ## A066649.P12485248573789058989

`∩[A000040(n+1), A078393(n+1)]`
-/

namespace A066649.P12485248573789058989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P12485248573789058989

/-! ## A066649.P4997319277059885144

`∩[A008578(n+1), A078393(n+1)]`
-/

namespace A066649.P4997319277059885144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P4997319277059885144

/-! ## A066649.P1227316630802144916

`∩[A045344(n+1), A078393(n+1)]`
-/

namespace A066649.P1227316630802144916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P1227316630802144916

/-! ## A066649.P3812552226662912522

`∩[A033946(n+1), A078393(n+1)]`
-/

namespace A066649.P3812552226662912522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P3812552226662912522

/-! ## A066649.P13740319390031850433

`∩[A046022(n+1), A078393(n+1)]`
-/

namespace A066649.P13740319390031850433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P13740319390031850433

/-! ## A066649.P3863007686333314865

`∩[A051948(n+1), A078393(n+1)]`
-/

namespace A066649.P3863007686333314865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P3863007686333314865

/-! ## A066649.P8602758149002838785

`∩[A053813(n+1), A078393(n+1)]`
-/

namespace A066649.P8602758149002838785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P8602758149002838785

/-! ## A066649.P10483132335587599565

`∩[A062972(n+1), A078393(n+1)]`
-/

namespace A066649.P10483132335587599565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P10483132335587599565

/-! ## A066649.P8807078472997150738

`∩[A060634(n+1), A078393(n+1)]`
-/

namespace A066649.P8807078472997150738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P8807078472997150738

/-! ## A066649.P2708989808742887857

`∩[A000430(n+1), A078393(n+1)]`
-/

namespace A066649.P2708989808742887857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P2708989808742887857

/-! ## A066649.P5590565323344578255

`∩[A053577(n+1), A078393(n+1)]`
-/

namespace A066649.P5590565323344578255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P5590565323344578255

/-! ## A066649.P7223331359231990682

`∩[A050376(n+1), A078393(n+1)]`
-/

namespace A066649.P7223331359231990682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P7223331359231990682

/-! ## A066649.P13193430859878847271

`∩[A084400(n+1), A078393(n+1)]`
-/

namespace A066649.P13193430859878847271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P13193430859878847271

/-! ## A066649.P4787360995441802832

`∩[A074583(n+1), A078393(n+1)]`
-/

namespace A066649.P4787360995441802832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P4787360995441802832

/-! ## A066649.P10115160420455392970

`∩[A000961(n+1), A078393(n+1)]`
-/

namespace A066649.P10115160420455392970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P10115160420455392970

/-! ## A066649.P8702130911303510802

`∩[A066191(n+1), A078393(n+1)]`
-/

namespace A066649.P8702130911303510802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P8702130911303510802

/-! ## A066649.P7949962377232533636

`∩[A078393(n+1), A133811(n+1)]`
-/

namespace A066649.P7949962377232533636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066649.P7949962377232533636

/-!
# A066650: Numbers not of the form a^2 + b^3 with a, b > 0.

The programs for A066650, there is no canonical definition to state claims against.
-/

/-! ## A066650.P5921773135122737702

`lt[1, A266364(n)]+1`
-/

namespace A066650.P5921773135122737702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066650.P5921773135122737702

/-! ## A066650.P1737532996666329468

`lt[1, A266364(abs(1-n))]`
-/

namespace A066650.P1737532996666329468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066650.P1737532996666329468

/-! ## A066650.P13593331354812592149

`eq[2, sqrt(a(A078359(n)))]` with `a(0)=4`
-/

namespace A066650.P13593331354812592149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A078359 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A066650.P13593331354812592149

/-! ## A066650.P2758891671929796831

`lt[A078359(n+1), 1]+1`
-/

namespace A066650.P2758891671929796831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066650.P2758891671929796831

/-! ## A066650.P11490817280429226241

`eq[2, A000032(a(A078359(n)))]` with `a(0)=0`
-/

namespace A066650.P11490817280429226241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066650.P11490817280429226241

/-! ## A066650.P17144143883735481240

`eq[2, A000040(a(A078359(n)))]` with `a(0)=1`
-/

namespace A066650.P17144143883735481240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066650.P17144143883735481240

/-! ## A066650.P2015915804479771486

`eq[2, A000010(a(A078359(n)))]` with `a(0)=3`
-/

namespace A066650.P2015915804479771486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066650.P2015915804479771486

/-! ## A066650.P15805637031330645162

`eq[2, A000045(a(A078359(n)))]` with `a(0)=3`
-/

namespace A066650.P15805637031330645162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066650.P15805637031330645162

/-! ## A066650.P17513253652715286189

`lt[1, A266528(n)]+1`
-/

namespace A066650.P17513253652715286189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066650.P17513253652715286189

/-! ## A066650.P10732179995639341518

`lt[1, A266528(abs(1-n))]`
-/

namespace A066650.P10732179995639341518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066650.P10732179995639341518

/-!
# A066651: Primes of the form 2*s + 1, where s is a squarefree number (A005117).

The programs for A066651, the canonical program `A066651.P12654016287975280554` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066651 has offset 1).

The definition of A066651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066651.P12654016287975280554

`p?[A008683(n+1)²+2*(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066651

/-- `p?[A008683(n+1)²+2*(n+1)]` -/
def P12654016287975280554.Spec : Prop :=
  ∀ n, P12654016287975280554.a n = A066651 (n + 1)

theorem P12654016287975280554.correct : P12654016287975280554.Spec := by
  intro n
  simp only [A066651, Nat.add_sub_cancel]

end A066651

/-! ## A066651.P14381525654742608134

`p?[A039786(n+2)]`
-/

namespace A066651.P14381525654742608134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066651.P14381525654742608134

namespace A066651

/-- `p?[A039786(n+2)]` -/
def P14381525654742608134.Spec : Prop :=
  ∀ n, P14381525654742608134.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P3897989132074371084

`∩[A039786(n+1), A045395(n+1)]`
-/

namespace A066651.P3897989132074371084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P3897989132074371084

namespace A066651

/-- `∩[A039786(n+1), A045395(n+1)]` -/
def P3897989132074371084.Spec : Prop :=
  ∀ n, (P3897989132074371084.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P17668277975517988108

`∩[A006005(n+1), A039786(n+1)]`
-/

namespace A066651.P17668277975517988108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P17668277975517988108

namespace A066651

/-- `∩[A006005(n+1), A039786(n+1)]` -/
def P17668277975517988108.Spec : Prop :=
  ∀ n, (P17668277975517988108.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P15591087637451178358

`∩[A039786(n+1), A065091(n+1)]`
-/

namespace A066651.P15591087637451178358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P15591087637451178358

namespace A066651

/-- `∩[A039786(n+1), A065091(n+1)]` -/
def P15591087637451178358.Spec : Prop :=
  ∀ n, (P15591087637451178358.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P17196220696029178067

`∩[A140826(n+1), A039786(n+1)]`
-/

namespace A066651.P17196220696029178067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P17196220696029178067

namespace A066651

/-- `∩[A140826(n+1), A039786(n+1)]` -/
def P17196220696029178067.Spec : Prop :=
  ∀ n, (P17196220696029178067.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P15404619808499688939

`∩[A039786(n+1), A064728(n+1)]`
-/

namespace A066651.P15404619808499688939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P15404619808499688939

namespace A066651

/-- `∩[A039786(n+1), A064728(n+1)]` -/
def P15404619808499688939.Spec : Prop :=
  ∀ n, (P15404619808499688939.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P15691954922387219847

`∩[A039786(n+1), A066542(n+1)]`
-/

namespace A066651.P15691954922387219847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P15691954922387219847

namespace A066651

/-- `∩[A039786(n+1), A066542(n+1)]` -/
def P15691954922387219847.Spec : Prop :=
  ∀ n, (P15691954922387219847.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P8907626885842040240

`∩[A039786(n+1), A075763(n+1)]`
-/

namespace A066651.P8907626885842040240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066651.P8907626885842040240

namespace A066651

/-- `∩[A039786(n+1), A075763(n+1)]` -/
def P8907626885842040240.Spec : Prop :=
  ∀ n, (P8907626885842040240.a n : ℤ) = A066651 (n + 1)

end A066651

/-! ## A066651.P1037919829012755622

`filter[A039786(n+1), A322980(#)]`
-/

namespace A066651.P1037919829012755622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A066651.P1037919829012755622

namespace A066651

/-- `filter[A039786(n+1), A322980(#)]` -/
def P1037919829012755622.Spec : Prop :=
  ∀ n, P1037919829012755622.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P2324103682954470172

`filter[A039786(n+1), A324903(#)]`
-/

namespace A066651.P2324103682954470172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A066651.P2324103682954470172

namespace A066651

/-- `filter[A039786(n+1), A324903(#)]` -/
def P2324103682954470172.Spec : Prop :=
  ∀ n, P2324103682954470172.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P822661275775837287

`filter[A039786(n+1), A351077(#)]`
-/

namespace A066651.P822661275775837287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A066651.P822661275775837287

namespace A066651

/-- `filter[A039786(n+1), A351077(#)]` -/
def P822661275775837287.Spec : Prop :=
  ∀ n, P822661275775837287.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P13470429590970457116

`filter[A039786(n+1), A353638(#)]`
-/

namespace A066651.P13470429590970457116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A066651.P13470429590970457116

namespace A066651

/-- `filter[A039786(n+1), A353638(#)]` -/
def P13470429590970457116.Spec : Prop :=
  ∀ n, P13470429590970457116.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P13269891091237642579

`filter[A039786(n+1), A355820(#)]`
-/

namespace A066651.P13269891091237642579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A066651.P13269891091237642579

namespace A066651

/-- `filter[A039786(n+1), A355820(#)]` -/
def P13269891091237642579.Spec : Prop :=
  ∀ n, P13269891091237642579.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P2531337429317953720

`filter[A039786(n+1), A358770(#)]`
-/

namespace A066651.P2531337429317953720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A066651.P2531337429317953720

namespace A066651

/-- `filter[A039786(n+1), A358770(#)]` -/
def P2531337429317953720.Spec : Prop :=
  ∀ n, P2531337429317953720.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P828458728981255780

`filter[A039786(n+2), A008966(#)]`
-/

namespace A066651.P828458728981255780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A066651.P828458728981255780

namespace A066651

/-- `filter[A039786(n+2), A008966(#)]` -/
def P828458728981255780.Spec : Prop :=
  ∀ n, P828458728981255780.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P8304920540641395176

`filter[A039786(n+2), A010051(#)]`
-/

namespace A066651.P8304920540641395176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066651.P8304920540641395176

namespace A066651

/-- `filter[A039786(n+2), A010051(#)]` -/
def P8304920540641395176.Spec : Prop :=
  ∀ n, P8304920540641395176.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P6128173181338733565

`filter[A039786(n+2), A066829(#)]`
-/

namespace A066651.P6128173181338733565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A066651.P6128173181338733565

namespace A066651

/-- `filter[A039786(n+2), A066829(#)]` -/
def P6128173181338733565.Spec : Prop :=
  ∀ n, P6128173181338733565.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P10335779643973656627

`filter[A039786(n+2), A175860(#)]`
-/

namespace A066651.P10335779643973656627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175860 (f1 j).toNat = 1) n)

end

end A066651.P10335779643973656627

namespace A066651

/-- `filter[A039786(n+2), A175860(#)]` -/
def P10335779643973656627.Spec : Prop :=
  ∀ n, P10335779643973656627.a n = A066651 (n + 1)

end A066651

/-! ## A066651.P14481171400118669867

`p?[A210845(n+3)]`
-/

namespace A066651.P14481171400118669867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210845 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066651.P14481171400118669867

namespace A066651

/-- `p?[A210845(n+3)]` -/
def P14481171400118669867.Spec : Prop :=
  ∀ n, P14481171400118669867.a n = A066651 (n + 1)

end A066651

/-!
# A066652: Primes of the form 2*s - 1, where s is a squarefree number (A005117).

The programs for A066652, the canonical program `A066652.P2742565410773785786` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066652 has offset 1).

The definition of A066652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066652.P16716506814731175896

`p?[A008966(n+1)+2*n]`
-/

namespace A066652.P16716506814731175896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P16716506814731175896

namespace A066652

/-- `p?[A008966(n+1)+2*n]` -/
def P16716506814731175896.Spec : Prop :=
  ∀ n, P16716506814731175896.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P2742565410773785786

`p?[A050377(n+1)+2*n]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066652

/-- `p?[A050377(n+1)+2*n]` -/
def P2742565410773785786.Spec : Prop :=
  ∀ n, P2742565410773785786.a n = A066652 (n + 1)

theorem P2742565410773785786.correct : P2742565410773785786.Spec := by
  intro n
  simp only [A066652, Nat.add_sub_cancel]

end A066652

/-! ## A066652.P6778784383442951754

`p?[A007913(n+1)²-n²]`
-/

namespace A066652.P6778784383442951754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P6778784383442951754

namespace A066652

/-- `p?[A007913(n+1)²-n²]` -/
def P6778784383442951754.Spec : Prop :=
  ∀ n, P6778784383442951754.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P11404193146122486000

`p?[A007947(n+1)²-n²]`
-/

namespace A066652.P11404193146122486000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P11404193146122486000

namespace A066652

/-- `p?[A007947(n+1)²-n²]` -/
def P11404193146122486000.Spec : Prop :=
  ∀ n, P11404193146122486000.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P13424087225318049727

`p?[abs(A008683(n+1))+2*n]`
-/

namespace A066652.P13424087225318049727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)| + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P13424087225318049727

namespace A066652

/-- `p?[abs(A008683(n+1))+2*n]` -/
def P13424087225318049727.Spec : Prop :=
  ∀ n, P13424087225318049727.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P1724567937738011816

`p?[A007424(n+1)+2*n]`
-/

namespace A066652.P1724567937738011816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P1724567937738011816

namespace A066652

/-- `p?[A007424(n+1)+2*n]` -/
def P1724567937738011816.Spec : Prop :=
  ∀ n, P1724567937738011816.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P604544040455117429

`p?[A317934(n+1)+2*n]`
-/

namespace A066652.P604544040455117429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P604544040455117429

namespace A066652

/-- `p?[A317934(n+1)+2*n]` -/
def P604544040455117429.Spec : Prop :=
  ∀ n, P604544040455117429.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P2836612773126407477

`record[p?[A007913(n+1)+n]]`
-/

namespace A066652.P2836612773126407477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066652.P2836612773126407477

namespace A066652

/-- `record[p?[A007913(n+1)+n]]` -/
def P2836612773126407477.Spec : Prop :=
  ∀ n, P2836612773126407477.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P247906936708173495

`record[p?[A083346(n+1)+n]]`
-/

namespace A066652.P247906936708173495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066652.P247906936708173495

namespace A066652

/-- `record[p?[A083346(n+1)+n]]` -/
def P247906936708173495.Spec : Prop :=
  ∀ n, P247906936708173495.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P3925778563870166480

`record[p?[A007947(n+1)+n]]`
-/

namespace A066652.P3925778563870166480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066652.P3925778563870166480

namespace A066652

/-- `record[p?[A007947(n+1)+n]]` -/
def P3925778563870166480.Spec : Prop :=
  ∀ n, P3925778563870166480.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P11504642466371535893

`p?[A117205(n+1)]`
-/

namespace A066652.P11504642466371535893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P11504642466371535893

namespace A066652

/-- `p?[A117205(n+1)]` -/
def P11504642466371535893.Spec : Prop :=
  ∀ n, P11504642466371535893.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P3688696611947264898

`record[A006530(A117205(n+2))]`
-/

namespace A066652.P3688696611947264898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A117205 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066652.P3688696611947264898

namespace A066652

/-- `record[A006530(A117205(n+2))]` -/
def P3688696611947264898.Spec : Prop :=
  ∀ n, P3688696611947264898.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P10895194566745078777

`filter[A117205(n+1), A010051(#)]`
-/

namespace A066652.P10895194566745078777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066652.P10895194566745078777

namespace A066652

/-- `filter[A117205(n+1), A010051(#)]` -/
def P10895194566745078777.Spec : Prop :=
  ∀ n, P10895194566745078777.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P4328801775786008941

`filter[A117205(n+1), A069513(#)]`
-/

namespace A066652.P4328801775786008941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A066652.P4328801775786008941

namespace A066652

/-- `filter[A117205(n+1), A069513(#)]` -/
def P4328801775786008941.Spec : Prop :=
  ∀ n, P4328801775786008941.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P16732284905814704613

`filter[A117205(n+1), A211487(#)]`
-/

namespace A066652.P16732284905814704613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A066652.P16732284905814704613

namespace A066652

/-- `filter[A117205(n+1), A211487(#)]` -/
def P16732284905814704613.Spec : Prop :=
  ∀ n, P16732284905814704613.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P12643060720990397092

`filter[A117205(n+1), A302777(#)]`
-/

namespace A066652.P12643060720990397092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A066652.P12643060720990397092

namespace A066652

/-- `filter[A117205(n+1), A302777(#)]` -/
def P12643060720990397092.Spec : Prop :=
  ∀ n, P12643060720990397092.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P10704336135388351542

`filter[A117205(n+1), A323153(#)]`
-/

namespace A066652.P10704336135388351542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066652.P10704336135388351542

namespace A066652

/-- `filter[A117205(n+1), A323153(#)]` -/
def P10704336135388351542.Spec : Prop :=
  ∀ n, P10704336135388351542.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P18194469935607565818

`filter[A117205(n+1), A340373(#)]`
-/

namespace A066652.P18194469935607565818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A066652.P18194469935607565818

namespace A066652

/-- `filter[A117205(n+1), A340373(#)]` -/
def P18194469935607565818.Spec : Prop :=
  ∀ n, P18194469935607565818.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P16608188437264881668

`filter[A117205(n+1), A353670(#)]`
-/

namespace A066652.P16608188437264881668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A066652.P16608188437264881668

namespace A066652

/-- `filter[A117205(n+1), A353670(#)]` -/
def P16608188437264881668.Spec : Prop :=
  ∀ n, P16608188437264881668.a n = A066652 (n + 1)

end A066652

/-! ## A066652.P3077445089916812771

`filter[A117205(n+1), A353817(#)]`
-/

namespace A066652.P3077445089916812771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A066652.P3077445089916812771

namespace A066652

/-- `filter[A117205(n+1), A353817(#)]` -/
def P3077445089916812771.Spec : Prop :=
  ∀ n, P3077445089916812771.a n = A066652 (n + 1)

end A066652

/-!
# A066653: Squarefree numbers k such that the pair 2*k +- 1 is a twin prime pair.

The programs for A066653, the canonical program `A066653.P2384880000636242794` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066653 has offset 1).

The definition of A066653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066653.P2384880000636242794

`record[∏{p}[A040040(n+1), #]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066653

/-- `record[∏{p}[A040040(n+1), #]]` -/
def P2384880000636242794.Spec : Prop :=
  ∀ n, (P2384880000636242794.a n : ℤ) = A066653 (n + 1)

theorem P2384880000636242794.correct : P2384880000636242794.Spec := by
  intro n
  simp only [A066653, Nat.add_sub_cancel]

end A066653

/-! ## A066653.P9243980575666211989

`record[∏{p}[A014574(n+1)/2, #]]`
-/

namespace A066653.P9243980575666211989
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P9243980575666211989

namespace A066653

/-- `record[∏{p}[A014574(n+1)/2, #]]` -/
def P9243980575666211989.Spec : Prop :=
  ∀ n, (P9243980575666211989.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P11364020018764904666

`record[∏{p}[ceil(A001359(n+1)/2), #]]`
-/

namespace A066653.P11364020018764904666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 1) : ℚ) / 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P11364020018764904666

namespace A066653

/-- `record[∏{p}[ceil(A001359(n+1)/2), #]]` -/
def P11364020018764904666.Spec : Prop :=
  ∀ n, (P11364020018764904666.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P10338091476830977874

`record[∏{p}[(A144834(n+1)+2)/2, #]]`
-/

namespace A066653.P10338091476830977874
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2 : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P10338091476830977874

namespace A066653

/-- `record[∏{p}[(A144834(n+1)+2)/2, #]]` -/
def P10338091476830977874.Spec : Prop :=
  ∀ n, (P10338091476830977874.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P1278986936128205922

`record[A007947(A040040(n+1))]`
-/

namespace A066653.P1278986936128205922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A040040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P1278986936128205922

namespace A066653

/-- `record[A007947(A040040(n+1))]` -/
def P1278986936128205922.Spec : Prop :=
  ∀ n, P1278986936128205922.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P14616998794304743790

`filter[A040040(n+1), A008966(#)]`
-/

namespace A066653.P14616998794304743790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A066653.P14616998794304743790

namespace A066653

/-- `filter[A040040(n+1), A008966(#)]` -/
def P14616998794304743790.Spec : Prop :=
  ∀ n, P14616998794304743790.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P9132519699583543477

`filter[A168497(n+2), A008966(#)]`
-/

namespace A066653.P9132519699583543477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A066653.P9132519699583543477

namespace A066653

/-- `filter[A168497(n+2), A008966(#)]` -/
def P9132519699583543477.Spec : Prop :=
  ∀ n, P9132519699583543477.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P16860416651139296245

`∩[A005117(n+1), A040040(n+1)]`
-/

namespace A066653.P16860416651139296245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P16860416651139296245

namespace A066653

/-- `∩[A005117(n+1), A040040(n+1)]` -/
def P16860416651139296245.Spec : Prop :=
  ∀ n, (P16860416651139296245.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P13668751994893957816

`filter[A040040(n+1), A323154(#)]`
-/

namespace A066653.P13668751994893957816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A066653.P13668751994893957816

namespace A066653

/-- `filter[A040040(n+1), A323154(#)]` -/
def P13668751994893957816.Spec : Prop :=
  ∀ n, P13668751994893957816.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P377352969758737095

`filter[A168497(n+2), A323154(#)]`
-/

namespace A066653.P377352969758737095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A066653.P377352969758737095

namespace A066653

/-- `filter[A168497(n+2), A323154(#)]` -/
def P377352969758737095.Spec : Prop :=
  ∀ n, P377352969758737095.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P9070164714605822273

`∩[A040040(n+1), A342392(n+1)]`
-/

namespace A066653.P9070164714605822273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P9070164714605822273

namespace A066653

/-- `∩[A040040(n+1), A342392(n+1)]` -/
def P9070164714605822273.Spec : Prop :=
  ∀ n, (P9070164714605822273.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P14070779108194872161

`∩[A168497(n+1), A342392(n+1)]`
-/

namespace A066653.P14070779108194872161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P14070779108194872161

namespace A066653

/-- `∩[A168497(n+1), A342392(n+1)]` -/
def P14070779108194872161.Spec : Prop :=
  ∀ n, (P14070779108194872161.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P3641829830879099482

`record[A007913(A054735(n+1))]`
-/

namespace A066653.P3641829830879099482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A054735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P3641829830879099482

namespace A066653

/-- `record[A007913(A054735(n+1))]` -/
def P3641829830879099482.Spec : Prop :=
  ∀ n, P3641829830879099482.a n = A066653 (n + 1)

end A066653

/-! ## A066653.P11583047185997154752

`∩[A040040(n+1), A117204(n+1)]`
-/

namespace A066653.P11583047185997154752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P11583047185997154752

namespace A066653

/-- `∩[A040040(n+1), A117204(n+1)]` -/
def P11583047185997154752.Spec : Prop :=
  ∀ n, (P11583047185997154752.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P3774748223623306850

`∩[A040040(n+1), A117206(n+1)]`
-/

namespace A066653.P3774748223623306850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P3774748223623306850

namespace A066653

/-- `∩[A040040(n+1), A117206(n+1)]` -/
def P3774748223623306850.Spec : Prop :=
  ∀ n, (P3774748223623306850.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P11089098647996073980

`∩[A040040(n+1), A064594(n+1)]`
-/

namespace A066653.P11089098647996073980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P11089098647996073980

namespace A066653

/-- `∩[A040040(n+1), A064594(n+1)]` -/
def P11089098647996073980.Spec : Prop :=
  ∀ n, (P11089098647996073980.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P892589666313252659

`∩[A040040(n+1), A144338(n+1)]`
-/

namespace A066653.P892589666313252659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P892589666313252659

namespace A066653

/-- `∩[A040040(n+1), A144338(n+1)]` -/
def P892589666313252659.Spec : Prop :=
  ∀ n, (P892589666313252659.a n : ℤ) = A066653 (n + 1)

end A066653

/-! ## A066653.P1815877799845030873

`∩[A144338(n+1), A168497(n+1)]`
-/

namespace A066653.P1815877799845030873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066653.P1815877799845030873

namespace A066653

/-- `∩[A144338(n+1), A168497(n+1)]` -/
def P1815877799845030873.Spec : Prop :=
  ∀ n, (P1815877799845030873.a n : ℤ) = A066653 (n + 1)

end A066653

/-!
# A066655: Number of partitions of n*(n-1)/2.

The programs for A066655, there is no canonical definition to state claims against.
-/

/-! ## A066655.P8784641118456618287

`A000041((n+1)*n/2)`
-/

namespace A066655.P8784641118456618287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (((n + 1) * n : ℚ) / 2)).toNat

end

end A066655.P8784641118456618287

/-! ## A066655.P10992254598747161663

`A000065(∑[n])+1`
-/

namespace A066655.P10992254598747161663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A066655.P10992254598747161663

/-! ## A066655.P6052923176356393933

`A139582(∑[n])/2`
-/

namespace A066655.P6052923176356393933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A066655.P6052923176356393933

/-! ## A066655.P17440160945101445978

`A133041(∑[n])-∑[n]`
-/

namespace A066655.P17440160945101445978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A066655.P17440160945101445978

/-! ## A066655.P568585221245180923

`abs(A000041(C(n+1, 2))-1)+1`
-/

namespace A066655.P568585221245180923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 (Nat.choose (n + 1) 2) - 1| + 1

end

end A066655.P568585221245180923

/-! ## A066655.P17668733676007932280

`Δ[a(n-1)+A000041(C(n, 2))]` with `a(0)=2`
-/

namespace A066655.P17668733676007932280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + A000041 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066655.P17668733676007932280

/-! ## A066655.P15858954033053319291

`gcd(C(2, n+2), A000041((n²+n)/2))`
-/

namespace A066655.P15858954033053319291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A000041 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A066655.P15858954033053319291

/-! ## A066655.P9891142173513904305

`∑{d}[A000124(n), A133732(#)]`
-/

namespace A066655.P9891142173513904305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A066655.P9891142173513904305

/-! ## A066655.P15305897058110544269

`or(char[1], A000041(A000217(n)))`
-/

namespace A066655.P15305897058110544269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000041 (A000217 n).toNat)

end

end A066655.P15305897058110544269

/-! ## A066655.P5591261934427468980

`gcd(A000041(A000217(n)), A000038(n))`
-/

namespace A066655.P5591261934427468980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (A000217 n).toNat) (A000038 n)

end

end A066655.P5591261934427468980

/-! ## A066655.P10153528971873466687

`lcm(A000041(A000217(n)), A020985(n))`
-/

namespace A066655.P10153528971873466687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000041 (A000217 n).toNat) (A020985 n)

end

end A066655.P10153528971873466687

/-! ## A066655.P6781635279921178748

`A000041(A000217(n))+char[A188263(n+1)]`
-/

namespace A066655.P6781635279921178748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A066655.P6781635279921178748

/-! ## A066655.P5670558480560987969

`A000041(A000217(n))*A177704(2*(n+2))`
-/

namespace A066655.P5670558480560987969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat * A177704 (2 * (n + 2))

end

end A066655.P5670558480560987969

/-! ## A066655.P16080335491040149308

`A000041(A000217(n))+val(A157532(n+4), 43)`
-/

namespace A066655.P16080335491040149308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat + (SequenceMachineLib.valuation (A157532 (n + 4)).toNat 43 : ℤ)

end

end A066655.P16080335491040149308

/-! ## A066655.P16019903144942803314

`A000041(A000217(n))-A020639(2*(n+2))+2`
-/

namespace A066655.P16019903144942803314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat - A020639 (2 * (n + 2)) + 2

end

end A066655.P16019903144942803314

/-! ## A066655.P10379187741433442049

`A000041(A000217(n))/A001221(A151800(n))`
-/

namespace A066655.P10379187741433442049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A000217 n).toNat : ℚ) / (A001221 (A151800 n).toNat : ℚ)

end

end A066655.P10379187741433442049

/-! ## A066655.P6279991285895851856

`A000041(A000217(n))+A000007(A000005(n+1))`
-/

namespace A066655.P6279991285895851856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat + A000007 (A000005 (n + 1)).toNat

end

end A066655.P6279991285895851856

/-! ## A066655.P9276322851966057120

`A000041(A000217(n))+A000007(A000010(n+1))`
-/

namespace A066655.P9276322851966057120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000217 n).toNat + A000007 (A000010 (n + 1)).toNat

end

end A066655.P9276322851966057120

/-! ## A066655.P6351693513992874530

`A299473(∑[n])/3`
-/

namespace A066655.P6351693513992874530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A066655.P6351693513992874530

/-! ## A066655.P12734145100098240866

`A299474(∑[n])/4`
-/

namespace A066655.P12734145100098240866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A066655.P12734145100098240866

/-!
# A066656: a(n) = A000031(n) - A001037(n).

The programs for A066656, the canonical program `A066656.P10645985252166079910` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066656 has offset 0).

The definition of A066656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066656.P10645985252166079910

`A000031(n)-A001037(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A066656

/-- `A000031(n)-A001037(n)` -/
def P10645985252166079910.Spec : Prop :=
  ∀ n, P10645985252166079910.a n = A066656 n

theorem P10645985252166079910.correct : P10645985252166079910.Spec := by
  intro n
  simp only [A066656]

end A066656

/-! ## A066656.P16950768853883154285

`A000029(n)+A059076(n)-A001037(n)`
-/

namespace A066656.P16950768853883154285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n + (A059076 n - A001037 n)

end

end A066656.P16950768853883154285

namespace A066656

/-- `A000029(n)+A059076(n)-A001037(n)` -/
def P16950768853883154285.Spec : Prop :=
  ∀ n, P16950768853883154285.a n = A066656 n

end A066656

/-! ## A066656.P16719584119662558445

`A262232(n)+A266977(n)-A001037(n)`
-/

namespace A066656.P16719584119662558445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n + (A266977 n - A001037 n)

end

end A066656.P16719584119662558445

namespace A066656

/-- `A262232(n)+A266977(n)-A001037(n)` -/
def P16719584119662558445.Spec : Prop :=
  ∀ n, P16719584119662558445.a n = A066656 n

end A066656

/-! ## A066656.P2706037944965095128

`A036453(n+1)+A052823(n)-A001037(n)`
-/

namespace A066656.P2706037944965095128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A052823 n - A001037 n)

end

end A066656.P2706037944965095128

namespace A066656

/-- `A036453(n+1)+A052823(n)-A001037(n)` -/
def P2706037944965095128.Spec : Prop :=
  ∀ n, P2706037944965095128.a n = A066656 n

end A066656

/-! ## A066656.P6826856625498891467

`A020639(A004277(n))+A052823(n)-A001037(n)`
-/

namespace A066656.P6826856625498891467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat + (A052823 n - A001037 n)

end

end A066656.P6826856625498891467

namespace A066656

/-- `A020639(A004277(n))+A052823(n)-A001037(n)` -/
def P6826856625498891467.Spec : Prop :=
  ∀ n, P6826856625498891467.a n = A066656 n

end A066656

/-! ## A066656.P10374088459997962418

`(A000217(n)+A000031(n))%(A001037(n)+A000217(n))`
-/

namespace A066656.P10374088459997962418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n + A000031 n) (A001037 n + A000217 n)

end

end A066656.P10374088459997962418

namespace A066656

/-- `(A000217(n)+A000031(n))%(A001037(n)+A000217(n))` -/
def P10374088459997962418.Spec : Prop :=
  ∀ n, P10374088459997962418.a n = A066656 n

end A066656

/-! ## A066656.P17124919977327083953

`(A000969(n)+A000031(n))%(A001037(n)+A000969(n))`
-/

namespace A066656.P17124919977327083953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000969 n + A000031 n) (A001037 n + A000969 n)

end

end A066656.P17124919977327083953

namespace A066656

/-- `(A000969(n)+A000031(n))%(A001037(n)+A000969(n))` -/
def P17124919977327083953.Spec : Prop :=
  ∀ n, P17124919977327083953.a n = A066656 n

end A066656

/-! ## A066656.P1955796335814818582

`A000031(n)-A123223(∑[n])`
-/

namespace A066656.P1955796335814818582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A123223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066656.P1955796335814818582

namespace A066656

/-- `A000031(n)-A123223(∑[n])` -/
def P1955796335814818582.Spec : Prop :=
  ∀ n, P1955796335814818582.a n = A066656 n

end A066656

/-! ## A066656.P12788007233317062019

`A059076(n)+A000029(n)-A123223(∑[n])`
-/

namespace A066656.P12788007233317062019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n + A000029 n - A123223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066656.P12788007233317062019

namespace A066656

/-- `A059076(n)+A000029(n)-A123223(∑[n])` -/
def P12788007233317062019.Spec : Prop :=
  ∀ n, P12788007233317062019.a n = A066656 n

end A066656

/-! ## A066656.P12190387949503730321

`A052823(n)+A020639(A054275(n))-A001037(n)`
-/

namespace A066656.P12190387949503730321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (A020639 (A054275 n).toNat - A001037 n)

end

end A066656.P12190387949503730321

namespace A066656

/-- `A052823(n)+A020639(A054275(n))-A001037(n)` -/
def P12190387949503730321.Spec : Prop :=
  ∀ n, P12190387949503730321.a n = A066656 n

end A066656

/-!
# A066657: Numerators of rational numbers produced in order by A066720(j)/A066720(i) for i >= 1, 1 <= j

The programs for A066657, there is no canonical definition to state claims against.
-/

/-! ## A066657.P148835564730597882

`val(A076941(n), 2)`
-/

namespace A066657.P148835564730597882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076941 n).toNat 2

end

end A066657.P148835564730597882

/-! ## A066657.P16882228963831566827

`log2(gcd(A020707(n), A076941(n)))`
-/

namespace A066657.P16882228963831566827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A020707 n) (A076941 n) : ℝ)

end

end A066657.P16882228963831566827

/-! ## A066657.P14439809885771405879

`A092080(A333921(n)+A080953(n)²)`
-/

namespace A066657.P14439809885771405879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (A333921 n + A080953 n ^ 2).toNat

end

end A066657.P14439809885771405879

/-! ## A066657.P11385772774748440191

`A092080(or(A080953(n)², A333921(n)))`
-/

namespace A066657.P11385772774748440191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (Int.lor (A080953 n ^ 2) (A333921 n)).toNat

end

end A066657.P11385772774748440191

/-! ## A066657.P8805660525147371957

`A092080(xor(A080953(n)², A333921(n)))`
-/

namespace A066657.P8805660525147371957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (Int.xor (A080953 n ^ 2) (A333921 n)).toNat

end

end A066657.P8805660525147371957

/-!
# A066658: Denominators of rational numbers produced in order by A066720(j)/A066720(i) for i >= 1, 1 <= j

The programs for A066658, there is no canonical definition to state claims against.
-/

/-! ## A066658.P354832613645265471

`val(A076941(n), 3)`
-/

namespace A066658.P354832613645265471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076941 n).toNat 3

end

end A066658.P354832613645265471

/-!
# A066659: Least k > n such that phi(k) = phi(n), if such k exists; = 0 otherwise.

The programs for A066659, there is no canonical definition to state claims against.
-/

/-! ## A066659.P18010565555204286277

`A057427(A272328(n+1))*A262599(n+1)`
-/

namespace A066659.P18010565555204286277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A272328 (n + 1)).toNat * A262599 (n + 1)

end

end A066659.P18010565555204286277

/-! ## A066659.P18418675871591833707

`A171935(n+1)+(n+1)%A028476(n+1)`
-/

namespace A066659.P18418675871591833707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171935 (n + 1) + Int.tmod (n + 1 : ℤ) (A028476 (n + 1))

end

end A066659.P18418675871591833707

/-! ## A066659.P976784940934474911

`A171935(n+1)+A066705(A262599(n+1))`
-/

namespace A066659.P976784940934474911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171935 (n + 1) + A066705 (A262599 (n + 1)).toNat

end

end A066659.P976784940934474911

/-! ## A066659.P5359053948404724398

`A057427(A171935(n+1)²)*A262599(n+1)`
-/

namespace A066659.P5359053948404724398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A171935 (n + 1) ^ 2).toNat * A262599 (n + 1)

end

end A066659.P5359053948404724398

/-! ## A066659.P3444071173032027269

`A262599(n+1)%A134149(A133555(n+2)+1)`
-/

namespace A066659.P3444071173032027269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262599 (n + 1)) (A134149 (A133555 (n + 2) + 1).toNat)

end

end A066659.P3444071173032027269

/-!
# A066660: Number of divisors of 2n excluding 1.

The programs for A066660, the canonical program `A066660.P17487963968517902439` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066660 has offset 1).

The definition of A066660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069930, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066660.P17487963968517902439

`A069930(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066660

/-- `A069930(n+1)+1` -/
def P17487963968517902439.Spec : Prop :=
  ∀ n, P17487963968517902439.a n = A066660 (n + 1)

theorem P17487963968517902439.correct : P17487963968517902439.Spec := by
  intro n
  simp only [A066660, Nat.add_sub_cancel]

end A066660

/-! ## A066660.P11030026370287512804

`n+1-A234306(n+1)`
-/

namespace A066660.P11030026370287512804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A234306 (n + 1)

end

end A066660.P11030026370287512804

namespace A066660

/-- `n+1-A234306(n+1)` -/
def P11030026370287512804.Spec : Prop :=
  ∀ n, P11030026370287512804.a n = A066660 (n + 1)

theorem P11030026370287512804.correct : P11030026370287512804.Spec := by
  intro n
  simp only [A066660, Nat.add_sub_cancel, A066660.P11030026370287512804.a, A066660.P17487963968517902439.a, A069930, A069930.P13025091485286396037.a, A234306, A234306.P8708475813081284006.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A069283, A069283.P13755877573305704475.f1, A069283.P13755877573305704475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066660

/-! ## A066660.P5249654468653423463

`Δ[A113241(n)]`
-/

namespace A066660.P5249654468653423463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066660.P5249654468653423463

namespace A066660

/-- `Δ[A113241(n)]` -/
def P5249654468653423463.Spec : Prop :=
  ∀ n, P5249654468653423463.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P12410144519431254459

`A099777(n+1)-1`
-/

namespace A066660.P12410144519431254459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - 1

end

end A066660.P12410144519431254459

namespace A066660

/-- `A099777(n+1)-1` -/
def P12410144519431254459.Spec : Prop :=
  ∀ n, P12410144519431254459.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P12596766008440636067

`A111150(n+1)/2`
-/

namespace A066660.P12596766008440636067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111150 (n + 1) : ℚ) / 2

end

end A066660.P12596766008440636067

namespace A066660

/-- `A111150(n+1)/2` -/
def P12596766008440636067.Spec : Prop :=
  ∀ n, P12596766008440636067.a n = (A066660 (n + 1) : ℚ)

end A066660

/-! ## A066660.P3043455106776739866

`A000005(2*(n+1))-1`
-/

namespace A066660.P3043455106776739866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - 1

end

end A066660.P3043455106776739866

namespace A066660

/-- `A000005(2*(n+1))-1` -/
def P3043455106776739866.Spec : Prop :=
  ∀ n, P3043455106776739866.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P3594735428334826234

`A340273(2*(n+1))-1`
-/

namespace A066660.P3594735428334826234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 1)) - 1

end

end A066660.P3594735428334826234

namespace A066660

/-- `A340273(2*(n+1))-1` -/
def P3594735428334826234.Spec : Prop :=
  ∀ n, P3594735428334826234.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P10909434990232600110

`1-A378216(2*(n+1))`
-/

namespace A066660.P10909434990232600110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378216 (2 * (n + 1))

end

end A066660.P10909434990232600110

namespace A066660

/-- `1-A378216(2*(n+1))` -/
def P10909434990232600110.Spec : Prop :=
  ∀ n, P10909434990232600110.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P14985651855271281656

`∑{d}[n+1, A040001(#-1)]`
-/

namespace A066660.P14985651855271281656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A040001 (d - 1)

end

end A066660.P14985651855271281656

namespace A066660

/-- `∑{d}[n+1, A040001(#-1)]` -/
def P14985651855271281656.Spec : Prop :=
  ∀ n, P14985651855271281656.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P7966106296092104019

`abs(1-A000005(n+2+n))`
-/

namespace A066660.P7966106296092104019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000005 (n + 2 + n)|

end

end A066660.P7966106296092104019

namespace A066660

/-- `abs(1-A000005(n+2+n))` -/
def P7966106296092104019.Spec : Prop :=
  ∀ n, P7966106296092104019.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P13273397554883253990

`∑{d}[n+1, (2%A020639(#))!]`
-/

namespace A066660.P13273397554883253990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Int.tmod 2 (A020639 d)).toNat

end

end A066660.P13273397554883253990

namespace A066660

/-- `∑{d}[n+1, (2%A020639(#))!]` -/
def P13273397554883253990.Spec : Prop :=
  ∀ n, (P13273397554883253990.a n : ℤ) = A066660 (n + 1)

end A066660

/-! ## A066660.P16818567015579436625

`xor(-1, -A000005(2*n+2))`
-/

namespace A066660.P16818567015579436625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A000005 (2 * n + 2))

end

end A066660.P16818567015579436625

namespace A066660

/-- `xor(-1, -A000005(2*n+2))` -/
def P16818567015579436625.Spec : Prop :=
  ∀ n, P16818567015579436625.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P4033843956410676167

`Δ[A000005(2*n)-(1-a(n-1))]` with `a(0)=0`
-/

namespace A066660.P4033843956410676167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (2 * n) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066660.P4033843956410676167

namespace A066660

/-- `Δ[A000005(2*n)-(1-a(n-1))]` -/
def P4033843956410676167.Spec : Prop :=
  ∀ n, P4033843956410676167.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P1327288748185351489

`A001281(A111150(n+1))`
-/

namespace A066660.P1327288748185351489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A111150 (n + 1)).toNat

end

end A066660.P1327288748185351489

namespace A066660

/-- `A001281(A111150(n+1))` -/
def P1327288748185351489.Spec : Prop :=
  ∀ n, P1327288748185351489.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P9273548476493767

`A023443(A000005(2*(n+1)))`
-/

namespace A066660.P9273548476493767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000005 (2 * (n + 1))).toNat

end

end A066660.P9273548476493767

namespace A066660

/-- `A023443(A000005(2*(n+1)))` -/
def P9273548476493767.Spec : Prop :=
  ∀ n, P9273548476493767.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P7701353541866098363

`A113241(n+1)-A113241(n)`
-/

namespace A066660.P7701353541866098363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 (n + 1) - A113241 n

end

end A066660.P7701353541866098363

namespace A066660

/-- `A113241(n+1)-A113241(n)` -/
def P7701353541866098363.Spec : Prop :=
  ∀ n, P7701353541866098363.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P3672278361516925473

`A032741(n+1)+A001227(n+1)`
-/

namespace A066660.P3672278361516925473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A001227 (n + 1)

end

end A066660.P3672278361516925473

namespace A066660

/-- `A032741(n+1)+A001227(n+1)` -/
def P3672278361516925473.Spec : Prop :=
  ∀ n, P3672278361516925473.a n = A066660 (n + 1)

end A066660

/-! ## A066660.P15029759135842122887

`A069283(n+1)+A000005(n+1)`
-/

namespace A066660.P15029759135842122887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A000005 (n + 1)

end

end A066660.P15029759135842122887

namespace A066660

/-- `A069283(n+1)+A000005(n+1)` -/
def P15029759135842122887.Spec : Prop :=
  ∀ n, P15029759135842122887.a n = A066660 (n + 1)

theorem P15029759135842122887.correct : P15029759135842122887.Spec := by
  intro n
  simp only [A066660, Nat.add_sub_cancel, A066660.P15029759135842122887.a, A066660.P17487963968517902439.a, A000005, A000005.P16091521709108585461.a, A069283, A069283.P13755877573305704475.f1, A069283.P13755877573305704475.a, A069930, A069930.P13025091485286396037.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066660

/-! ## A066660.P2126637717916919503

`A091954(n+1)+A076984(n+1)`
-/

namespace A066660.P2126637717916919503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A076984 (n + 1)

end

end A066660.P2126637717916919503

namespace A066660

/-- `A091954(n+1)+A076984(n+1)` -/
def P2126637717916919503.Spec : Prop :=
  ∀ n, P2126637717916919503.a n = A066660 (n + 1)

end A066660

/-!
# A066661: Numbers m such that floor((1+1/m)^k)=k for an integer k>1.

The programs for A066661, there is no canonical definition to state claims against.
-/

/-! ## A066661.P18083290361595809695

`A132172(A361273(n))+n+1`
-/

namespace A066661.P18083290361595809695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132172 (A361273 n).toNat + (n + 1 : ℤ)

end

end A066661.P18083290361595809695

/-! ## A066661.P10741357347840628899

`A084788(n+1)+A002487(A061129(n))`
-/

namespace A066661.P10741357347840628899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084788 (n + 1) + A002487 (A061129 n).toNat

end

end A066661.P10741357347840628899

/-! ## A066661.P4845079725933669502

`A220708(n+1)+A172312(A328209(n+1))`
-/

namespace A066661.P4845079725933669502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (n + 1) + A172312 (A328209 (n + 1)).toNat

end

end A066661.P4845079725933669502

/-! ## A066661.P12220239465198364426

`A166081(n+1)+A055642(A121330(n+5))`
-/

namespace A066661.P12220239465198364426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1) + A055642 (A121330 (n + 5)).toNat

end

end A066661.P12220239465198364426

/-!
# A066662: Shortest leg of a Pythagorean triangle with a hypotenuse of length 5n.

The programs for A066662, there is no canonical definition to state claims against.
-/

/-! ## A066662.P1540861054301232418

`A108707(5*(n+1))`
-/

namespace A066662.P1540861054301232418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (5 * (n + 1))

end

end A066662.P1540861054301232418

/-! ## A066662.P17777496298639280184

`or(char[2], A108707(A008706(n+1)))`
-/

namespace A066662.P17777496298639280184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108707 (A008706 (n + 1)).toNat)

end

end A066662.P17777496298639280184

/-! ## A066662.P3226089044300679877

`∑{d}[A108707(A008706(n+1)), A000010(#)]`
-/

namespace A066662.P3226089044300679877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A066662.P3226089044300679877

/-! ## A066662.P11821129412815098690

`∏{d}[A108707(A008706(n+1)), A014963(#)]`
-/

namespace A066662.P11821129412815098690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (A008706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A066662.P11821129412815098690

/-! ## A066662.P13523788782653665298

`A108707(A008706(n+1))%A000041(n+4)`
-/

namespace A066662.P13523788782653665298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108707 (A008706 (n + 1)).toNat) (A000041 (n + 4))

end

end A066662.P13523788782653665298

/-! ## A066662.P1691752406024895513

`A108707(A008706(n+1))+val(A000040(n+1), 4)`
-/

namespace A066662.P1691752406024895513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (A008706 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A066662.P1691752406024895513

/-! ## A066662.P9892713016586382443

`A108707(A008706(n+1))^A000041(C(2, n+2))`
-/

namespace A066662.P9892713016586382443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108707 (A008706 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A066662.P9892713016586382443

/-! ## A066662.P11212242324580790092

`A108707(A008706(n+2+n))/2`
-/

namespace A066662.P11212242324580790092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108707 (A008706 (n + 2 + n)).toNat : ℚ) / 2

end

end A066662.P11212242324580790092

/-!
# A066663: Numbers n such that phi(n) is a proper substring of n.

The programs for A066663, there is no canonical definition to state claims against.
-/

/-! ## A066663.P5736260122821308850

`A067206(n+2)`
-/

namespace A066663.P5736260122821308850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (n + 2)

end

end A066663.P5736260122821308850

/-! ## A066663.P13817937116315083171

`record[A067206(A080513(xor(1, n)))]`
-/

namespace A066663.P13817937116315083171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A080513 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P13817937116315083171

/-! ## A066663.P4588383395487231209

`record[A067206(A080513(abs(1-n)))]`
-/

namespace A066663.P4588383395487231209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P4588383395487231209

/-! ## A066663.P12102969005270788471

`lcm(2, A067206(A080513(Δ[n²])))`
-/

namespace A066663.P12102969005270788471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A067206 (A080513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A066663.P12102969005270788471

/-! ## A066663.P16449813203090036777

`record[A067206(A001281(A004277(n)))]`
-/

namespace A066663.P16449813203090036777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P16449813203090036777

/-! ## A066663.P15349895593285294143

`record[A067206(A126759(A008574(n)))]`
-/

namespace A066663.P15349895593285294143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A126759 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P15349895593285294143

/-! ## A066663.P12383358018300392653

`record[A067206(A126759(A016825(n)))]`
-/

namespace A066663.P12383358018300392653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A126759 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P12383358018300392653

/-! ## A066663.P15093181327616113964

`record[A067206(A141256(A005408(n)))]`
-/

namespace A066663.P15093181327616113964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A141256 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P15093181327616113964

/-! ## A066663.P13856844320831066168

`record[A067206(A133310(A028242(n)))]`
-/

namespace A066663.P13856844320831066168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A133310 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P13856844320831066168

/-! ## A066663.P14131167991941340154

`record[A067206(A141256(A103517(n)))]`
-/

namespace A066663.P14131167991941340154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (A141256 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066663.P14131167991941340154

/-!
# A066664: Composite numbers n whose divisors less than or equal to sqrt(n) are consecutive, from 1 up to some number k.

The programs for A066664, there is no canonical definition to state claims against.
-/

/-! ## A066664.P9406098428115818720

`∩[2*n, A066522(n+3)]`
-/

namespace A066664.P9406098428115818720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P9406098428115818720

/-! ## A066664.P3946949706536197849

`filter[A066522(n+1), A066247(#)]`
-/

namespace A066664.P3946949706536197849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066664.P3946949706536197849

/-! ## A066664.P16584399805562553933

`filter[A066522(n+2), A005171(#)]`
-/

namespace A066664.P16584399805562553933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066664.P16584399805562553933

/-! ## A066664.P6428387576750108440

`filter[A066522(n+3), A354034(#)]`
-/

namespace A066664.P6428387576750108440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A066664.P6428387576750108440

/-! ## A066664.P7891514127528045601

`∩[A066522(n+1), A091212(n+1)]`
-/

namespace A066664.P7891514127528045601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P7891514127528045601

/-! ## A066664.P12983489776689872318

`∩[A066522(n+1), A163300(n+1)]`
-/

namespace A066664.P12983489776689872318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P12983489776689872318

/-! ## A066664.P16330538026071123162

`∩[A066522(n+1), A391242(n+1)]`
-/

namespace A066664.P16330538026071123162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P16330538026071123162

/-! ## A066664.P17278305763123810076

`∩[A066522(n+1), A377723(n+1)]`
-/

namespace A066664.P17278305763123810076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P17278305763123810076

/-! ## A066664.P6636420486562178560

`∩[A066522(n+1), A389916(n+1)]`
-/

namespace A066664.P6636420486562178560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P6636420486562178560

/-! ## A066664.P11690976373590550012

`∩[A066522(n+1), A192506(n+1)]`
-/

namespace A066664.P11690976373590550012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P11690976373590550012

/-! ## A066664.P13051371223405044175

`∩[A066522(n+1), A175526(n+1)]`
-/

namespace A066664.P13051371223405044175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P13051371223405044175

/-! ## A066664.P13890888253634285801

`∩[A066522(n+1), A272601(n+1)]`
-/

namespace A066664.P13890888253634285801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066664.P13890888253634285801

/-! ## A066664.P16088677549775349119

`filter[A066522(n+1), A267043(#)]`
-/

namespace A066664.P16088677549775349119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A066664.P16088677549775349119

/-! ## A066664.P14785924899622833877

`filter[A066522(n+3), A059841(#)]`
-/

namespace A066664.P14785924899622833877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A066664.P14785924899622833877

/-! ## A066664.P6520930147805088302

`filter[A066522(n+3), A135528(#)]`
-/

namespace A066664.P6520930147805088302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A066664.P6520930147805088302

/-! ## A066664.P11268556269794612597

`filter[A066522(n+3), A266591(#)]`
-/

namespace A066664.P11268556269794612597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A066664.P11268556269794612597

/-!
# A066665: a(n) = #{(x,y) | 0<=y<=x<=n and x+y is prime}.

The programs for A066665, the canonical program `A066665.P10255352463234354248` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066665 has offset 0).

The definition of A066665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066665.P11215442816367106403

`∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[char[p?[xor(1, n)]]]]`
-/

namespace A066665.P11215442816367106403
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f3 n), d)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f6 (SequenceMachineLib.nth (fun j => (f6 j).Prime) n)

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P11215442816367106403

namespace A066665

/-- `∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[char[p?[xor(1, n)]]]]` -/
def P11215442816367106403.Spec : Prop :=
  ∀ n, P11215442816367106403.a n = A066665 n

end A066665

/-! ## A066665.P10255352463234354248

`∑[C(C(2, ∑{e}[n+1, #]), 2)]+∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[C(C(2, ∑{e}[n+1, #]), 2)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066665

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)]+∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[C(C(2, ∑{e}[n+1, #]), 2)]]` -/
def P10255352463234354248.Spec : Prop :=
  ∀ n, P10255352463234354248.a n = A066665 n

theorem P10255352463234354248.correct : P10255352463234354248.Spec := by
  intro n
  simp only [A066665]

end A066665

/-! ## A066665.P11634478179058824266

`∑[A035250(n+1)]`
-/

namespace A066665.P11634478179058824266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P11634478179058824266

namespace A066665

/-- `∑[A035250(n+1)]` -/
def P11634478179058824266.Spec : Prop :=
  ∀ n, P11634478179058824266.a n = A066665 n

end A066665

/-! ## A066665.P17244969605657364346

`∑[A056171(2*n+1)]+1`
-/

namespace A066665.P17244969605657364346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066665.P17244969605657364346

namespace A066665

/-- `∑[A056171(2*n+1)]+1` -/
def P17244969605657364346.Spec : Prop :=
  ∀ n, P17244969605657364346.a n = A066665 n

end A066665

/-! ## A066665.P4098886487546666855

`∑[1-A307989(n+1)+n]`
-/

namespace A066665.P4098886487546666855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307989 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P4098886487546666855

namespace A066665

/-- `∑[1-A307989(n+1)+n]` -/
def P4098886487546666855.Spec : Prop :=
  ∀ n, P4098886487546666855.a n = A066665 n

end A066665

/-! ## A066665.P14433490257108140456

`∑[ceil((n+1)/2)-A226983(n+1)]`
-/

namespace A066665.P14433490257108140456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ - A226983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P14433490257108140456

namespace A066665

/-- `∑[ceil((n+1)/2)-A226983(n+1)]` -/
def P14433490257108140456.Spec : Prop :=
  ∀ n, P14433490257108140456.a n = A066665 n

end A066665

/-! ## A066665.P5841396762964472586

`A071917(n+1)+A036234(n+1)`
-/

namespace A066665.P5841396762964472586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + A036234 (n + 1)

end

end A066665.P5841396762964472586

namespace A066665

/-- `A071917(n+1)+A036234(n+1)` -/
def P5841396762964472586.Spec : Prop :=
  ∀ n, P5841396762964472586.a n = A066665 n

end A066665

/-! ## A066665.P196604760054440757

`A000720(n+1)+∑[A108954(n+1)]`
-/

namespace A066665.P196604760054440757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P196604760054440757

namespace A066665

/-- `A000720(n+1)+∑[A108954(n+1)]` -/
def P196604760054440757.Spec : Prop :=
  ∀ n, P196604760054440757.a n = A066665 n

end A066665

/-! ## A066665.P6138387146944594083

`∑[A000720(2*(n+1))-A230980(n)]`
-/

namespace A066665.P6138387146944594083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P6138387146944594083

namespace A066665

/-- `∑[A000720(2*(n+1))-A230980(n)]` -/
def P6138387146944594083.Spec : Prop :=
  ∀ n, P6138387146944594083.a n = A066665 n

end A066665

/-! ## A066665.P7014210075425055533

`A000720(n+1)+A071917(n+1)+1`
-/

namespace A066665.P7014210075425055533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A071917 (n + 1) + 1)

end

end A066665.P7014210075425055533

namespace A066665

/-- `A000720(n+1)+A071917(n+1)+1` -/
def P7014210075425055533.Spec : Prop :=
  ∀ n, P7014210075425055533.a n = A066665 n

end A066665

/-! ## A066665.P14945131935690562224

`∑[A108954(n+1)+char[A000040(n+1)-1]]`
-/

namespace A066665.P14945131935690562224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P14945131935690562224

namespace A066665

/-- `∑[A108954(n+1)+char[A000040(n+1)-1]]` -/
def P14945131935690562224.Spec : Prop :=
  ∀ n, P14945131935690562224.a n = A066665 n

end A066665

/-! ## A066665.P16169984027554317994

`A000720(n+1)+∑[A000720(2*(n+1))-A000720(n+1)]`
-/

namespace A066665.P16169984027554317994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P16169984027554317994

namespace A066665

/-- `A000720(n+1)+∑[A000720(2*(n+1))-A000720(n+1)]` -/
def P16169984027554317994.Spec : Prop :=
  ∀ n, P16169984027554317994.a n = A066665 n

end A066665

/-! ## A066665.P13396391447364586893

`∑[A056171(Δ[A010000(n)])]`
-/

namespace A066665.P13396391447364586893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P13396391447364586893

namespace A066665

/-- `∑[A056171(Δ[A010000(n)])]` -/
def P13396391447364586893.Spec : Prop :=
  ∀ n, P13396391447364586893.a n = A066665 n

end A066665

/-! ## A066665.P1263617010568196816

`∑[log2(A056672(2*n+1))]+1`
-/

namespace A066665.P1263617010568196816
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056672 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066665.P1263617010568196816

namespace A066665

/-- `∑[log2(A056672(2*n+1))]+1` -/
def P1263617010568196816.Spec : Prop :=
  ∀ n, P1263617010568196816.a n = (A066665 n : ℝ)

end A066665

/-! ## A066665.P471795407166987512

`∑[A242096(4*n+5)-A242096(2*n+1)]`
-/

namespace A066665.P471795407166987512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (4 * n + 5) - A242096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066665.P471795407166987512

namespace A066665

/-- `∑[A242096(4*n+5)-A242096(2*n+1)]` -/
def P471795407166987512.Spec : Prop :=
  ∀ n, P471795407166987512.a n = A066665 n

end A066665

/-!
# A066667: Coefficient triangle of generalized Laguerre polynomials (a=1).

The programs for A066667, the canonical program `A066667.P10004507947924964948` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066667 has offset 0).

The definition of A066667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066667.P12752816723578934474

`A131440(n)%2*A105278(n+1)`
-/

namespace A066667.P12752816723578934474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131440 n) 2 * A105278 (n + 1)

end

end A066667.P12752816723578934474

namespace A066667

/-- `A131440(n)%2*A105278(n+1)` -/
def P12752816723578934474.Spec : Prop :=
  ∀ n, P12752816723578934474.a n = A066667 n

end A066667

/-! ## A066667.P4606526978854105138

`A074909(n+1)/A007318(n)*A021009(n)`
-/

namespace A066667.P4606526978854105138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A007318 n : ℚ) * (A021009 n : ℚ)

end

end A066667.P4606526978854105138

namespace A066667

/-- `A074909(n+1)/A007318(n)*A021009(n)` -/
def P4606526978854105138.Spec : Prop :=
  ∀ n, P4606526978854105138.a n = (A066667 n : ℚ)

end A066667

/-! ## A066667.P10004507947924964948

`A021009(n)-A002262(n+1)*A021009(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066667

/-- `A021009(n)-A002262(n+1)*A021009(n+1)` -/
def P10004507947924964948.Spec : Prop :=
  ∀ n, P10004507947924964948.a n = A066667 n

theorem P10004507947924964948.correct : P10004507947924964948.Spec := by
  intro n
  simp only [A066667]

end A066667

/-! ## A066667.P4911166630736634227

`A008276(n+1)/A094638(n+1)*A105278(n+1)`
-/

namespace A066667.P4911166630736634227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (n + 1) : ℚ) / (A094638 (n + 1) : ℚ) * (A105278 (n + 1) : ℚ)

end

end A066667.P4911166630736634227

namespace A066667

/-- `A008276(n+1)/A094638(n+1)*A105278(n+1)` -/
def P4911166630736634227.Spec : Prop :=
  ∀ n, P4911166630736634227.a n = (A066667 n : ℚ)

end A066667

/-! ## A066667.P1998067473093229622

`A105278(n+1)/A143497(n+2)*A062137(n)`
-/

namespace A066667.P1998067473093229622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A143497 (n + 2) : ℚ) * (A062137 n : ℚ)

end

end A066667.P1998067473093229622

namespace A066667

/-- `A105278(n+1)/A143497(n+2)*A062137(n)` -/
def P1998067473093229622.Spec : Prop :=
  ∀ n, P1998067473093229622.a n = (A066667 n : ℚ)

end A066667

/-! ## A066667.P17042149014808601805

`A091338(A059268(n))*A105278(n+1)`
-/

namespace A066667.P17042149014808601805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (A059268 n).toNat * A105278 (n + 1)

end

end A066667.P17042149014808601805

namespace A066667

/-- `A091338(A059268(n))*A105278(n+1)` -/
def P17042149014808601805.Spec : Prop :=
  ∀ n, P17042149014808601805.a n = A066667 n

end A066667

/-!
# A066668: Signed row sums of A066667.

The programs for A066668, there is no canonical definition to state claims against.
-/

/-! ## A066668.P10672697151653431569

`(2*n-1)*a(n-1)-2*a(n-2)*C(n, 2)` with `a(0)=1, a(1)=1`
-/

namespace A066668.P10672697151653431569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - 2 * a (n - 2) * (Nat.choose n 2 : ℤ)

end

end A066668.P10672697151653431569

/-! ## A066668.P13021984211589202558

`(2*n-1)*a(n-1)-(n-1)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A066668.P13021984211589202558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * ((n : ℤ) * a (n - 2))

end

end A066668.P13021984211589202558

/-! ## A066668.P6636341130334485371

`-A293116(n+1)`
-/

namespace A066668.P6636341130334485371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A293116 (n + 1)

end

end A066668.P6636341130334485371

/-! ## A066668.P2928601065499525354

`-A293119(∑[n+2])`
-/

namespace A066668.P2928601065499525354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A293119 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066668.P2928601065499525354

/-! ## A066668.P10567424041870872163

`(-1)^n*A111884(n+1)`
-/

namespace A066668.P10567424041870872163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111884 (n + 1)

end

end A066668.P10567424041870872163

/-! ## A066668.P12054352057865247217

`A009940(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A066668.P12054352057865247217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009940 n + (n : ℤ) * a (n - 1)

end

end A066668.P12054352057865247217

/-! ## A066668.P10012574357046988250

`A062197(n)+A009940(n+1)`
-/

namespace A066668.P10012574357046988250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062197 n + A009940 (n + 1)

end

end A066668.P10012574357046988250

/-! ## A066668.P5727195453938447474

`A111884(n+1)/A033999(n)`
-/

namespace A066668.P5727195453938447474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111884 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A066668.P5727195453938447474

/-! ## A066668.P3128773464107527160

`A009940(n)-n*A293116(n)`
-/

namespace A066668.P3128773464107527160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009940 n - (n : ℤ) * A293116 n

end

end A066668.P3128773464107527160

/-! ## A066668.P3574107047458603939

`A000007(n+1)-A293116(n+1)`
-/

namespace A066668.P3574107047458603939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A293116 (n + 1)

end

end A066668.P3574107047458603939

/-!
# A066669: Numbers m such that phi(m) = 2^k*prime for some k >= 0.

The programs for A066669, the canonical program `A066669.P14009238441959775354` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066669 has offset 1).

The definition of A066669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066669.P14009238441959775354

`eq[2, A336158(A000010(n+1))]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066669

/-- `eq[2, A336158(A000010(n+1))]+1` -/
def P14009238441959775354.Spec : Prop :=
  ∀ n, (P14009238441959775354.a n : ℤ) = A066669 (n + 1)

theorem P14009238441959775354.correct : P14009238441959775354.Spec := by
  intro n
  simp only [A066669, Nat.add_sub_cancel]

end A066669

/-! ## A066669.P15807397375239291978

`eq[2, A193453(n+1)]+1`
-/

namespace A066669.P15807397375239291978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P15807397375239291978

namespace A066669

/-- `eq[2, A193453(n+1)]+1` -/
def P15807397375239291978.Spec : Prop :=
  ∀ n, (P15807397375239291978.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P12957579609607016656

`eq[2, A193453(A028310(n))]`
-/

namespace A066669.P12957579609607016656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066669.P12957579609607016656

namespace A066669

/-- `eq[2, A193453(A028310(n))]` -/
def P12957579609607016656.Spec : Prop :=
  ∀ n, (P12957579609607016656.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P16433723971996716923

`eq[1, A001222(A053575(n+1))]+1`
-/

namespace A066669.P16433723971996716923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P16433723971996716923

namespace A066669

/-- `eq[1, A001222(A053575(n+1))]+1` -/
def P16433723971996716923.Spec : Prop :=
  ∀ n, (P16433723971996716923.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P11558320419335604533

`eq[2, A336158(A109606(n+1)+1)]+1`
-/

namespace A066669.P11558320419335604533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P11558320419335604533

namespace A066669

/-- `eq[2, A336158(A109606(n+1)+1)]+1` -/
def P11558320419335604533.Spec : Prop :=
  ∀ n, (P11558320419335604533.a n : ℤ) = A066669 (n + 1)

theorem P11558320419335604533.correct : P11558320419335604533.Spec := by
  intro n
  simp only [A066669, Nat.add_sub_cancel, A066669.P11558320419335604533.f1, A066669.P11558320419335604533.f2, A066669.P11558320419335604533.a, A066669.P14009238441959775354.f1, A066669.P14009238441959775354.f2, A066669.P14009238441959775354.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A336158, A336158.P5052491878283479858.a, A000265, A000265.P2772582252347773295.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008578, A008578.P3639467937083264764.a, A059841, A059841.P2666504972441551157.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A110963, A110963.P3344771894533151408.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066669

/-! ## A066669.P2316299819724816921

`eq[2, A336158(A039649(n+1)-1)]+1`
-/

namespace A066669.P2316299819724816921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P2316299819724816921

namespace A066669

/-- `eq[2, A336158(A039649(n+1)-1)]+1` -/
def P2316299819724816921.Spec : Prop :=
  ∀ n, (P2316299819724816921.a n : ℤ) = A066669 (n + 1)

theorem P2316299819724816921.correct : P2316299819724816921.Spec := by
  intro n
  simp only [A066669, Nat.add_sub_cancel, A066669.P2316299819724816921.f1, A066669.P2316299819724816921.f2, A066669.P2316299819724816921.a, A066669.P14009238441959775354.f1, A066669.P14009238441959775354.f2, A066669.P14009238441959775354.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A336158, A336158.P5052491878283479858.a, A000265, A000265.P2772582252347773295.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008578, A008578.P3639467937083264764.a, A059841, A059841.P2666504972441551157.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A110963, A110963.P3344771894533151408.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066669

/-! ## A066669.P15280148341860301389

`eq[2, A193453(A004277(n))]`
-/

namespace A066669.P15280148341860301389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066669.P15280148341860301389

namespace A066669

/-- `eq[2, A193453(A004277(n))]` -/
def P15280148341860301389.Spec : Prop :=
  ∀ n, (P15280148341860301389.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P16014045015131809278

`eq[2, A050320(2*A000010(n+1))]+1`
-/

namespace A066669.P16014045015131809278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (2 * A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P16014045015131809278

namespace A066669

/-- `eq[2, A050320(2*A000010(n+1))]+1` -/
def P16014045015131809278.Spec : Prop :=
  ∀ n, (P16014045015131809278.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P8692549653612702892

`eq[2, A193453(A008574(n))]`
-/

namespace A066669.P8692549653612702892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066669.P8692549653612702892

namespace A066669

/-- `eq[2, A193453(A008574(n))]` -/
def P8692549653612702892.Spec : Prop :=
  ∀ n, (P8692549653612702892.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P14481663295583086170

`eq[2, A001227(A000010(A233583(n+1)))]`
-/

namespace A066669.P14481663295583086170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000010 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066669.P14481663295583086170

namespace A066669

/-- `eq[2, A001227(A000010(A233583(n+1)))]` -/
def P14481663295583086170.Spec : Prop :=
  ∀ n, (P14481663295583086170.a n : ℤ) = A066669 (n + 1)

end A066669

/-! ## A066669.P12153028869721833440

`eq[2, A001227(A225530(n))]`
-/

namespace A066669.P12153028869721833440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066669.P12153028869721833440

namespace A066669

/-- `eq[2, A001227(A225530(n))]` -/
def P12153028869721833440.Spec : Prop :=
  ∀ n, (P12153028869721833440.a n : ℤ) = A066669 (n + 1)

end A066669

/-!
# A066670: Primes arising in A066669: the only odd prime divisor of phi(A066669(n)).

The programs for A066670, the canonical program `A066670.P4126476494444957459` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066670 has offset 1).

The definition of A066670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053575, A066669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066670.P4126476494444957459

`A053575(A066669(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066670

/-- `A053575(A066669(n+1))` -/
def P4126476494444957459.Spec : Prop :=
  ∀ n, P4126476494444957459.a n = A066670 (n + 1)

theorem P4126476494444957459.correct : P4126476494444957459.Spec := by
  intro n
  simp only [A066670, Nat.add_sub_cancel]

end A066670

/-! ## A066670.P7613232947555051159

`p?[A000265(A000010(n+1))]`
-/

namespace A066670.P7613232947555051159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P7613232947555051159

namespace A066670

/-- `p?[A000265(A000010(n+1))]` -/
def P7613232947555051159.Spec : Prop :=
  ∀ n, P7613232947555051159.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P575643354773501561

`A000010(A066669(n+1))/A066671(n+1)`
-/

namespace A066670.P575643354773501561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A066669 (n + 1)).toNat : ℚ) / (A066671 (n + 1) : ℚ)

end

end A066670.P575643354773501561

namespace A066670

/-- `A000010(A066669(n+1))/A066671(n+1)` -/
def P575643354773501561.Spec : Prop :=
  ∀ n, P575643354773501561.a n = (A066670 (n + 1) : ℚ)

end A066670

/-! ## A066670.P13697515079300631368

`p?[A000265(A062570(n+1))]`
-/

namespace A066670.P13697515079300631368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P13697515079300631368

namespace A066670

/-- `p?[A000265(A062570(n+1))]` -/
def P13697515079300631368.Spec : Prop :=
  ∀ n, P13697515079300631368.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P3470701105075581540

`p?[A336652(A000010(n+3))]`
-/

namespace A066670.P3470701105075581540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P3470701105075581540

namespace A066670

/-- `p?[A336652(A000010(n+3))]` -/
def P3470701105075581540.Spec : Prop :=
  ∀ n, P3470701105075581540.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P16916636059157424813

`p?[A353412(A000010((n+1)/(or(n, n+1)-n)))]`
-/

namespace A066670.P16916636059157424813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P16916636059157424813

namespace A066670

/-- `p?[A353412(A000010((n+1)/(or(n, n+1)-n)))]` -/
def P16916636059157424813.Spec : Prop :=
  ∀ n, P16916636059157424813.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P16152100483091566962

`p?[A353412(A000010((n+1)/and(n+1, -(n+1))))]`
-/

namespace A066670.P16152100483091566962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P16152100483091566962

namespace A066670

/-- `p?[A353412(A000010((n+1)/and(n+1, -(n+1))))]` -/
def P16152100483091566962.Spec : Prop :=
  ∀ n, P16152100483091566962.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P4386471901029830321

`p?[A353412(A000010(2*(n+1)/(xor(n, n+1)+1)))]`
-/

namespace A066670.P4386471901029830321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P4386471901029830321

namespace A066670

/-- `p?[A353412(A000010(2*(n+1)/(xor(n, n+1)+1)))]` -/
def P4386471901029830321.Spec : Prop :=
  ∀ n, P4386471901029830321.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P14218501007469479719

`p?[A353412(A000010((n+1)/(1-and(n, n+1)+n)))]`
-/

namespace A066670.P14218501007469479719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P14218501007469479719

namespace A066670

/-- `p?[A353412(A000010((n+1)/(1-and(n, n+1)+n)))]` -/
def P14218501007469479719.Spec : Prop :=
  ∀ n, P14218501007469479719.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P4383448862074901584

`p?[A353412(A000010((n+1)/(n+1)%(xor(n, n+1)+1)))]`
-/

namespace A066670.P4383448862074901584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((n + 1) % (Nat.xor n (n + 1) + 1) : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P4383448862074901584

namespace A066670

/-- `p?[A353412(A000010((n+1)/(n+1)%(xor(n, n+1)+1)))]` -/
def P4383448862074901584.Spec : Prop :=
  ∀ n, P4383448862074901584.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P6003297840229904260

`p?[A000265(A046073(n+1))]`
-/

namespace A066670.P6003297840229904260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P6003297840229904260

namespace A066670

/-- `p?[A000265(A046073(n+1))]` -/
def P6003297840229904260.Spec : Prop :=
  ∀ n, P6003297840229904260.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P5185917652630684601

`p?[A000265(A293485(n+1))]`
-/

namespace A066670.P5185917652630684601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A293485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P5185917652630684601

namespace A066670

/-- `p?[A000265(A293485(n+1))]` -/
def P5185917652630684601.Spec : Prop :=
  ∀ n, P5185917652630684601.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P10776340044721293893

`p?[A353412(A000010(2*(n+1)))]`
-/

namespace A066670.P10776340044721293893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P10776340044721293893

namespace A066670

/-- `p?[A353412(A000010(2*(n+1)))]` -/
def P10776340044721293893.Spec : Prop :=
  ∀ n, P10776340044721293893.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P734109298283007659

`p?[A053575(n+1)]`
-/

namespace A066670.P734109298283007659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P734109298283007659

namespace A066670

/-- `p?[A053575(n+1)]` -/
def P734109298283007659.Spec : Prop :=
  ∀ n, P734109298283007659.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P2333865189592045941

`p?[A000265(A055034(n+1))]`
-/

namespace A066670.P2333865189592045941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P2333865189592045941

namespace A066670

/-- `p?[A000265(A055034(n+1))]` -/
def P2333865189592045941.Spec : Prop :=
  ∀ n, P2333865189592045941.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P7136547672311273727

`p?[A000265(A140434(n+1))]`
-/

namespace A066670.P7136547672311273727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P7136547672311273727

namespace A066670

/-- `p?[A000265(A140434(n+1))]` -/
def P7136547672311273727.Spec : Prop :=
  ∀ n, P7136547672311273727.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P16508214108663767665

`p?[A000265(A250207(n+1))]`
-/

namespace A066670.P16508214108663767665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A250207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P16508214108663767665

namespace A066670

/-- `p?[A000265(A250207(n+1))]` -/
def P16508214108663767665.Spec : Prop :=
  ∀ n, P16508214108663767665.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P7706147134356931570

`p?[A028234(A000010(n+2))]`
-/

namespace A066670.P7706147134356931570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066670.P7706147134356931570

namespace A066670

/-- `p?[A028234(A000010(n+2))]` -/
def P7706147134356931570.Spec : Prop :=
  ∀ n, P7706147134356931570.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P17981335070872516447

`filter[A053575(n+1), A010051(#)]`
-/

namespace A066670.P17981335070872516447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066670.P17981335070872516447

namespace A066670

/-- `filter[A053575(n+1), A010051(#)]` -/
def P17981335070872516447.Spec : Prop :=
  ∀ n, P17981335070872516447.a n = A066670 (n + 1)

end A066670

/-! ## A066670.P12650676290361715254

`filter[A053575(n+1), A323153(#)]`
-/

namespace A066670.P12650676290361715254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066670.P12650676290361715254

namespace A066670

/-- `filter[A053575(n+1), A323153(#)]` -/
def P12650676290361715254.Spec : Prop :=
  ∀ n, P12650676290361715254.a n = A066670 (n + 1)

end A066670

/-!
# A066671: a(n) is the largest power of 2 that divides phi(A066669(n)).

The programs for A066671, the canonical program `A066671.P14445244219669383195` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066671 has offset 1).

The definition of A066671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066669, A069177, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066671.P7663149972696043897

`2^A066672(n+1)`
-/

namespace A066671.P7663149972696043897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A066672 (n + 1) : ℤ)

end

end A066671.P7663149972696043897

namespace A066671

/-- `2^A066672(n+1)` -/
def P7663149972696043897.Spec : Prop :=
  ∀ n, P7663149972696043897.a n = (A066671 (n + 1) : ℚ)

end A066671

/-! ## A066671.P14445244219669383195

`A069177(A066669(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066671

/-- `A069177(A066669(n+1))` -/
def P14445244219669383195.Spec : Prop :=
  ∀ n, P14445244219669383195.a n = A066671 (n + 1)

theorem P14445244219669383195.correct : P14445244219669383195.Spec := by
  intro n
  simp only [A066671, Nat.add_sub_cancel]

end A066671

/-! ## A066671.P3588695487462998819

`A000079(A066672(n+1))`
-/

namespace A066671.P3588695487462998819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A066672 (n + 1)).toNat

end

end A066671.P3588695487462998819

namespace A066671

/-- `A000079(A066672(n+1))` -/
def P3588695487462998819.Spec : Prop :=
  ∀ n, P3588695487462998819.a n = A066671 (n + 1)

end A066671

/-! ## A066671.P5815186094225359197

`A000010(A066669(n+1))/A066670(n+1)`
-/

namespace A066671.P5815186094225359197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A066669 (n + 1)).toNat : ℚ) / (A066670 (n + 1) : ℚ)

end

end A066671.P5815186094225359197

namespace A066671

/-- `A000010(A066669(n+1))/A066670(n+1)` -/
def P5815186094225359197.Spec : Prop :=
  ∀ n, P5815186094225359197.a n = (A066671 (n + 1) : ℚ)

end A066671

/-! ## A066671.P7454510130020317280

`∑{e}[A000010(A066669(n+1)), A000203(2^#/2)]`
-/

namespace A066671.P7454510130020317280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (SequenceMachineLib.roundAway ((2 ^ Nat.factorization (f1 n).natAbs p : ℚ) / 2)).toNat

end

end A066671.P7454510130020317280

namespace A066671

/-- `∑{e}[A000010(A066669(n+1)), A000203(2^#/2)]` -/
def P7454510130020317280.Spec : Prop :=
  ∀ n, P7454510130020317280.a n = A066671 (n + 1)

end A066671

/-! ## A066671.P14048285877333932024

`filter[A293516(n+3), A209229(#)]`
-/

namespace A066671.P14048285877333932024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293516 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A066671.P14048285877333932024

namespace A066671

/-- `filter[A293516(n+3), A209229(#)]` -/
def P14048285877333932024.Spec : Prop :=
  ∀ n, P14048285877333932024.a n = A066671 (n + 1)

end A066671

/-! ## A066671.P16943151967540254862

`A003557(2*A000010(A066669(n+1)))`
-/

namespace A066671.P16943151967540254862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * A000010 (A066669 (n + 1)).toNat).toNat

end

end A066671.P16943151967540254862

namespace A066671

/-- `A003557(2*A000010(A066669(n+1)))` -/
def P16943151967540254862.Spec : Prop :=
  ∀ n, P16943151967540254862.a n = A066671 (n + 1)

end A066671

/-! ## A066671.P4595365393950851055

`gcd(A000010(A066669(n+1)), A096252(n))`
-/

namespace A066671.P4595365393950851055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A066669 (n + 1)).toNat) (A096252 n)

end

end A066671.P4595365393950851055

namespace A066671

/-- `gcd(A000010(A066669(n+1)), A096252(n))` -/
def P4595365393950851055.Spec : Prop :=
  ∀ n, (P4595365393950851055.a n : ℤ) = A066671 (n + 1)

end A066671

/-! ## A066671.P1090239532280121057

`A069177(A066673(A066672(n+1))²)`
-/

namespace A066671.P1090239532280121057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A066673 (A066672 (n + 1)).toNat ^ 2).toNat

end

end A066671.P1090239532280121057

namespace A066671

/-- `A069177(A066673(A066672(n+1))²)` -/
def P1090239532280121057.Spec : Prop :=
  ∀ n, P1090239532280121057.a n = A066671 (n + 1)

end A066671

/-!
# A066672: Exponent of the largest power of 2 that divides phi(A066669(n)).

The programs for A066672, the canonical program `A066672.P5992568165485167672` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066672 has offset 1).

The definition of A066672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066672.P5992568165485167672

`log2(A066671(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A066672

/-- `log2(A066671(n+1))` -/
def P5992568165485167672.Spec : Prop :=
  ∀ n, P5992568165485167672.a n = (A066672 (n + 1) : ℝ)

end A066672

/-! ## A066672.P1121825045101127842

`A053574(A066669(n+1))`
-/

namespace A066672.P1121825045101127842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A066669 (n + 1)).toNat

end

end A066672.P1121825045101127842

namespace A066672

/-- `A053574(A066669(n+1))` -/
def P1121825045101127842.Spec : Prop :=
  ∀ n, P1121825045101127842.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P4928950806615936843

`A000005(A066671(n+1)/2)`
-/

namespace A066672.P4928950806615936843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P4928950806615936843

namespace A066672

/-- `A000005(A066671(n+1)/2)` -/
def P4928950806615936843.Spec : Prop :=
  ∀ n, P4928950806615936843.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P10111329836746727985

`A001222(lcm(2, A066671(n+1)))`
-/

namespace A066672.P10111329836746727985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A066671 (n + 1)))

end

end A066672.P10111329836746727985

namespace A066672

/-- `A001222(lcm(2, A066671(n+1)))` -/
def P10111329836746727985.Spec : Prop :=
  ∀ n, P10111329836746727985.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P6820916682087890896

`∑{d}[A066671(n+1), A001221(#)]`
-/

namespace A066672.P6820916682087890896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A066672.P6820916682087890896

namespace A066672

/-- `∑{d}[A066671(n+1), A001221(#)]` -/
def P6820916682087890896.Spec : Prop :=
  ∀ n, P6820916682087890896.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P8651885114838459305

`A008908(A066671(n+1)/2)`
-/

namespace A066672.P8651885114838459305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P8651885114838459305

namespace A066672

/-- `A008908(A066671(n+1)/2)` -/
def P8651885114838459305.Spec : Prop :=
  ∀ n, P8651885114838459305.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P6450186208652499533

`A049108(A066671(n+1)/2)`
-/

namespace A066672.P6450186208652499533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P6450186208652499533

namespace A066672

/-- `A049108(A066671(n+1)/2)` -/
def P6450186208652499533.Spec : Prop :=
  ∀ n, P6450186208652499533.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P11701720315556319387

`A049113(A066671(n+1)/2)`
-/

namespace A066672.P11701720315556319387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P11701720315556319387

namespace A066672

/-- `A049113(A066671(n+1)/2)` -/
def P11701720315556319387.Spec : Prop :=
  ∀ n, P11701720315556319387.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P11403273821329654737

`A070939(A066671(n+1)/2)`
-/

namespace A066672.P11403273821329654737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P11403273821329654737

namespace A066672

/-- `A070939(A066671(n+1)/2)` -/
def P11403273821329654737.Spec : Prop :=
  ∀ n, P11403273821329654737.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P2841910054564019461

`A000523(A066671(n+1)+1)`
-/

namespace A066672.P2841910054564019461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A066671 (n + 1) + 1).toNat

end

end A066672.P2841910054564019461

namespace A066672

/-- `A000523(A066671(n+1)+1)` -/
def P2841910054564019461.Spec : Prop :=
  ∀ n, P2841910054564019461.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P5232200543822669892

`A000120(A066671(n+1)-1)`
-/

namespace A066672.P5232200543822669892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066671 (n + 1) - 1).toNat

end

end A066672.P5232200543822669892

namespace A066672

/-- `A000120(A066671(n+1)-1)` -/
def P5232200543822669892.Spec : Prop :=
  ∀ n, P5232200543822669892.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P17386669068844103548

`A007733(A066671(n+1)-1)`
-/

namespace A066672.P17386669068844103548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A066671 (n + 1) - 1).toNat

end

end A066672.P17386669068844103548

namespace A066672

/-- `A007733(A066671(n+1)-1)` -/
def P17386669068844103548.Spec : Prop :=
  ∀ n, P17386669068844103548.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P16162428276474479347

`A020651(A066671(n+1)+2)`
-/

namespace A066672.P16162428276474479347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A066671 (n + 1) + 2).toNat

end

end A066672.P16162428276474479347

namespace A066672

/-- `A020651(A066671(n+1)+2)` -/
def P16162428276474479347.Spec : Prop :=
  ∀ n, P16162428276474479347.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P12366698060026047366

`A070939(A066671(n+1)-1)`
-/

namespace A066672.P12366698060026047366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A066671 (n + 1) - 1).toNat

end

end A066672.P12366698060026047366

namespace A066672

/-- `A070939(A066671(n+1)-1)` -/
def P12366698060026047366.Spec : Prop :=
  ∀ n, P12366698060026047366.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P13160755164988099201

`A231204(A066671(n+1)+1)`
-/

namespace A066672.P13160755164988099201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A066671 (n + 1) + 1).toNat

end

end A066672.P13160755164988099201

namespace A066672

/-- `A231204(A066671(n+1)+1)` -/
def P13160755164988099201.Spec : Prop :=
  ∀ n, P13160755164988099201.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P13802137209010637774

`A053574(2*A066671(n+1))`
-/

namespace A066672.P13802137209010637774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (2 * A066671 (n + 1)).toNat

end

end A066672.P13802137209010637774

namespace A066672

/-- `A053574(2*A066671(n+1))` -/
def P13802137209010637774.Spec : Prop :=
  ∀ n, P13802137209010637774.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P14438929924103014998

`A053574(A066671(n+1)+A066671(n+1))`
-/

namespace A066672.P14438929924103014998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A066671 (n + 1) + A066671 (n + 1)).toNat

end

end A066672.P14438929924103014998

namespace A066672

/-- `A053574(A066671(n+1)+A066671(n+1))` -/
def P14438929924103014998.Spec : Prop :=
  ∀ n, P14438929924103014998.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P10442330425019234526

`A066620(3*A066671(n+1))`
-/

namespace A066672.P10442330425019234526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (3 * A066671 (n + 1)).toNat

end

end A066672.P10442330425019234526

namespace A066672

/-- `A066620(3*A066671(n+1))` -/
def P10442330425019234526.Spec : Prop :=
  ∀ n, P10442330425019234526.a n = A066672 (n + 1)

end A066672

/-! ## A066672.P4274069191500985089

`A001222(A066671(n+1)²)/2`
-/

namespace A066672.P4274069191500985089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A066671 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A066672.P4274069191500985089

namespace A066672

/-- `A001222(A066671(n+1)²)/2` -/
def P4274069191500985089.Spec : Prop :=
  ∀ n, P4274069191500985089.a n = (A066672 (n + 1) : ℚ)

end A066672

/-! ## A066672.P2262730966148192708

`A333766(A066671(n+1)/2)`
-/

namespace A066672.P2262730966148192708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (SequenceMachineLib.roundAway ((A066671 (n + 1) : ℚ) / 2)).toNat

end

end A066672.P2262730966148192708

namespace A066672

/-- `A333766(A066671(n+1)/2)` -/
def P2262730966148192708.Spec : Prop :=
  ∀ n, P2262730966148192708.a n = A066672 (n + 1)

end A066672

/-!
# A066673: Smallest term x from A066669 such that phi(x) = 2^n times some prime.

The programs for A066673, there is no canonical definition to state claims against.
-/

/-! ## A066673.P2156096119933961001

`A341845(3*2^n)`
-/

namespace A066673.P2156096119933961001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (3 * 2 ^ n)

end

end A066673.P2156096119933961001

/-! ## A066673.P3207686022940871262

`or(1, A341845(A007283(n)))`
-/

namespace A066673.P3207686022940871262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341845 (A007283 n).toNat)

end

end A066673.P3207686022940871262

/-! ## A066673.P8620637705137000071

`A007318(∑[n])*A341845(A007283(n))`
-/

namespace A066673.P8620637705137000071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A341845 (A007283 n).toNat

end

end A066673.P8620637705137000071

/-! ## A066673.P18122942308491844707

`A341845(A007283(n))/A007318(C(n, 2))`
-/

namespace A066673.P18122942308491844707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341845 (A007283 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A066673.P18122942308491844707

/-! ## A066673.P13291675391724442553

`A014963(10*(n+1))*A341845(A007283(n))`
-/

namespace A066673.P13291675391724442553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A341845 (A007283 n).toNat

end

end A066673.P13291675391724442553

/-!
# A066676: Smallest number m such that phi(m) is a multiple of n-th primorial number, the product of first n primes.

The programs for A066676, there is no canonical definition to state claims against.
-/

/-! ## A066676.P63725561585495598

`A289125(∑[round(root(n+1, 4))]+1)`
-/

namespace A066676.P63725561585495598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (4 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289125 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A066676.P63725561585495598

/-! ## A066676.P9451701353958924655

`filter[A289125(n+1), A072629(#)]`
-/

namespace A066676.P9451701353958924655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072629 (f1 j).toNat = 1) n)

end

end A066676.P9451701353958924655

/-!
# A066678: Totients of the least numbers for which the totient is divisible by n.

The programs for A066678, there is no canonical definition to state claims against.
-/

/-! ## A066678.P4303656475144157596

`A000010(A061026(n+1))`
-/

namespace A066678.P4303656475144157596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061026 (n + 1)).toNat

end

end A066678.P4303656475144157596

/-! ## A066678.P11432957380991159712

`(n+1)*A067005(n+1)`
-/

namespace A066678.P11432957380991159712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067005 (n + 1)

end

end A066678.P11432957380991159712

/-! ## A066678.P7040306948338284049

`A300718(2*A061026(n+1))`
-/

namespace A066678.P7040306948338284049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300718 (2 * A061026 (n + 1)).toNat

end

end A066678.P7040306948338284049

/-! ## A066678.P9899658100864532603

`∑{d}[A061026(n+1), A007431(#)]`
-/

namespace A066678.P9899658100864532603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A066678.P9899658100864532603

/-! ## A066678.P16836465794038283871

`lcm(1-A039649(A061026(n+1)), A000027(n+1))`
-/

namespace A066678.P16836465794038283871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A039649 (A061026 (n + 1)).toNat) (A000027 (n + 1))

end

end A066678.P16836465794038283871

/-! ## A066678.P11207062428987103769

`A039649(A061026(n+1))-abs((-1)^A005117(n+2))`
-/

namespace A066678.P11207062428987103769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (A061026 (n + 1)).toNat : ℚ) - |(-1 : ℚ) ^ (A005117 (n + 2) : ℤ)|

end

end A066678.P11207062428987103769

/-! ## A066678.P13462055813606445594

`A039649(A061026(n+1))-A014963(A005277(n+1))`
-/

namespace A066678.P13462055813606445594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A061026 (n + 1)).toNat - A014963 (A005277 (n + 1)).toNat

end

end A066678.P13462055813606445594

/-! ## A066678.P4378646628214082558

`A039649(A061026(n+1))-A001222(A181605(n+1))`
-/

namespace A066678.P4378646628214082558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A061026 (n + 1)).toNat - A001222 (A181605 (n + 1)).toNat

end

end A066678.P4378646628214082558

/-! ## A066678.P2605695606363433845

`A132952(2*A061026(n+1))`
-/

namespace A066678.P2605695606363433845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (2 * A061026 (n + 1)).toNat

end

end A066678.P2605695606363433845

/-! ## A066678.P6067188061703644514

`A132952(lcm(2, A061026(n+1)))`
-/

namespace A066678.P6067188061703644514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A061026 (n + 1)))

end

end A066678.P6067188061703644514

/-! ## A066678.P6579956758048754583

`A055034(2*A061026(n+1))`
-/

namespace A066678.P6579956758048754583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * A061026 (n + 1)).toNat

end

end A066678.P6579956758048754583

/-! ## A066678.P7814239932890303212

`A039649(2*A061026(n+1))-1`
-/

namespace A066678.P7814239932890303212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * A061026 (n + 1)).toNat - 1

end

end A066678.P7814239932890303212

/-! ## A066678.P12787992551561157095

`A023022(4*A061026(n+1))`
-/

namespace A066678.P12787992551561157095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (4 * A061026 (n + 1)).toNat

end

end A066678.P12787992551561157095

/-! ## A066678.P2231765162973509214

`A039649(A061026(n+1))-A000120(A059268(n))`
-/

namespace A066678.P2231765162973509214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A061026 (n + 1)).toNat - A000120 (A059268 n).toNat

end

end A066678.P2231765162973509214

/-!
# A066679: Numbers n such that sigma(n) is congruent to n mod phi(n).

The programs for A066679, there is no canonical definition to state claims against.
-/

/-! ## A066679.P3874235867183318332

`lt[A000010(n+1), A297170(n+1)+1]+1`
-/

namespace A066679.P3874235867183318332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297170 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066679.P3874235867183318332

/-! ## A066679.P11361232990335481735

`lt[A001065(n+1)%A000010(n+1), 1]+1`
-/

namespace A066679.P11361232990335481735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066679.P11361232990335481735

/-! ## A066679.P3019946825471122130

`lt[A173455(n+1)%A000010(n+1), 1]+1`
-/

namespace A066679.P3019946825471122130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066679.P3019946825471122130

/-!
# A066680: Badly sieved numbers: as in the Sieve of Eratosthenes multiples of unmarked numbers p are marked, but only up to p^2.

The programs for A066680, there is no canonical definition to state claims against.
-/

/-! ## A066680.P10677058176391696939

`record[(n+2)*A099104(n+2)]`
-/

namespace A066680.P10677058176391696939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A099104 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066680.P10677058176391696939

/-! ## A066680.P3820548193466691561

`∪[A000040(n+1), A066681(n+1)]`
-/

namespace A066680.P3820548193466691561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066680.P3820548193466691561

/-! ## A066680.P13200615343644045901

`eq[1, A099104(n+1)]+1`
-/

namespace A066680.P13200615343644045901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066680.P13200615343644045901

/-! ## A066680.P4687592876940541939

`filter[A100959(n+1), A099104(#)]`
-/

namespace A066680.P4687592876940541939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P4687592876940541939

/-! ## A066680.P16461052772555854634

`filter[A246716(n+1), A099104(#)]`
-/

namespace A066680.P16461052772555854634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P16461052772555854634

/-! ## A066680.P11617612798364791018

`filter[A253567(n+1), A099104(#)]`
-/

namespace A066680.P11617612798364791018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P11617612798364791018

/-! ## A066680.P3035747387859846270

`filter[A014089(n+1), A099104(#)]`
-/

namespace A066680.P3035747387859846270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P3035747387859846270

/-! ## A066680.P17810961518965931187

`filter[A213367(n+1), A099104(#)]`
-/

namespace A066680.P17810961518965931187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P17810961518965931187

/-! ## A066680.P14404153403462745462

`filter[A054027(n+1), A099104(#)]`
-/

namespace A066680.P14404153403462745462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066680.P14404153403462745462

/-! ## A066680.P1369798644351071942

`filter[n+1, A099104(#)]`
-/

namespace A066680.P1369798644351071942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j) = 1) n)

end

end A066680.P1369798644351071942

/-! ## A066680.P14956603118674545655

`eq[1, A099104(A000007(n)+n)]`
-/

namespace A066680.P14956603118674545655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066680.P14956603118674545655

/-! ## A066680.P4926583937408240284

`A000720(p?[A000040(n+1)*A099104(n+1)])`
-/

namespace A066680.P4926583937408240284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A099104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066680.P4926583937408240284

/-! ## A066680.P8123188246037191798

`eq[1, A099104(A065033(2*n))]`
-/

namespace A066680.P8123188246037191798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066680.P8123188246037191798

/-! ## A066680.P14324175472845852005

`A049084(p?[A000040(n+1)*A099104(n+1)])`
-/

namespace A066680.P14324175472845852005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A099104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066680.P14324175472845852005

/-!
# A066681: Badly sieved numbers (A066680) which are not primes.

The programs for A066681, there is no canonical definition to state claims against.
-/

/-! ## A066681.P15501123315316306028

`filter[A066680(n+1), A005171(#)]`
-/

namespace A066681.P15501123315316306028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066681.P15501123315316306028

/-! ## A066681.P15933668263571475745

`filter[A066680(n+1), A066247(#)]`
-/

namespace A066681.P15933668263571475745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066681.P15933668263571475745

/-! ## A066681.P17537727356625907184

`eq[A005171(n+1), A099104(n+1)]+1`
-/

namespace A066681.P17537727356625907184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066681.P17537727356625907184

/-! ## A066681.P7454115496057007538

`lt[A010051(n+1), A099104(n+1)]+1`
-/

namespace A066681.P7454115496057007538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066681.P7454115496057007538

/-! ## A066681.P16263208126662235548

`∩[A063539(n+1), A066680(n+1)]`
-/

namespace A066681.P16263208126662235548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P16263208126662235548

/-! ## A066681.P4143169038745974363

`filter[A063539(n+1), A099104(#)]`
-/

namespace A066681.P4143169038745974363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P4143169038745974363

/-! ## A066681.P12194437704747377512

`filter[A048098(n+1), A099104(#)]`
-/

namespace A066681.P12194437704747377512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P12194437704747377512

/-! ## A066681.P4889195144808143594

`∩[A048098(n+1), A066680(n+1)]`
-/

namespace A066681.P4889195144808143594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P4889195144808143594

/-! ## A066681.P5271351196998075657

`filter[A387941(n+1), A099104(#)]`
-/

namespace A066681.P5271351196998075657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P5271351196998075657

/-! ## A066681.P13747848831893257949

`∩[A066680(n+1), A387941(n+1)]`
-/

namespace A066681.P13747848831893257949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P13747848831893257949

/-! ## A066681.P18067214844713424615

`∩[A066680(n+1), A264828(n+1)]`
-/

namespace A066681.P18067214844713424615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P18067214844713424615

/-! ## A066681.P9478569322112748532

`∩[A002808(n+1), A066680(n+1)]`
-/

namespace A066681.P9478569322112748532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P9478569322112748532

/-! ## A066681.P9931239980483629993

`∩[A018252(n+1), A066680(n+1)]`
-/

namespace A066681.P9931239980483629993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P9931239980483629993

/-! ## A066681.P12077813329870847892

`∩[A066680(n+1), A141468(n+1)]`
-/

namespace A066681.P12077813329870847892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P12077813329870847892

/-! ## A066681.P10894439058783430615

`filter[A033942(n+1), A099104(#)]`
-/

namespace A066681.P10894439058783430615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P10894439058783430615

/-! ## A066681.P17965456401716269988

`filter[A111087(n+1), A099104(#)]`
-/

namespace A066681.P17965456401716269988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P17965456401716269988

/-! ## A066681.P9360754640933000701

`∩[A033942(n+1), A066680(n+1)]`
-/

namespace A066681.P9360754640933000701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P9360754640933000701

/-! ## A066681.P3687456907827913914

`∩[A066680(n+1), A111087(n+1)]`
-/

namespace A066681.P3687456907827913914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P3687456907827913914

/-! ## A066681.P4971981548433596331

`filter[A289553(n+1), A099104(#)]`
-/

namespace A066681.P4971981548433596331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A066681.P4971981548433596331

/-! ## A066681.P11982352629552824034

`∩[A066680(n+1), A289553(n+1)]`
-/

namespace A066681.P11982352629552824034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066681.P11982352629552824034

/-!
# A066682: Indices of badly sieved numbers: a(n) = k if n = A066680(k), otherwise 0.

The programs for A066682, there is no canonical definition to state claims against.
-/

/-! ## A066682.P14483053910412268348

`A099104(n+1)*A066683(n+1)`
-/

namespace A066682.P14483053910412268348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (n + 1) * A066683 (n + 1)

end

end A066682.P14483053910412268348

/-! ## A066682.P16741101037117326574

`char[A066680(n+1)-1]*A066683(n+1)`
-/

namespace A066682.P16741101037117326574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A066683 (n + 1)

end

end A066682.P16741101037117326574

/-! ## A066682.P3684939530753491004

`Δ[A000124(A066683(A028310(n)))]`
-/

namespace A066682.P3684939530753491004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A066683 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066682.P3684939530753491004

/-! ## A066682.P352449128057173320

`Δ[A066683(A028310(n))]*A066683(n+1)`
-/

namespace A066682.P352449128057173320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066683 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066683 (n + 1)

end

end A066682.P352449128057173320

/-! ## A066682.P14326583395599080783

`lcm(A099104(n+1)/A008836(n+1), A066683(n+1))`
-/

namespace A066682.P14326583395599080783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A099104 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))) (A066683 (n + 1))

end

end A066682.P14326583395599080783

/-! ## A066682.P9611745158552526774

`∑{d}[n+1, A008683(#)*A099042((n+1)/#)]*A066683(n+1)`
-/

namespace A066682.P9611745158552526774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A099042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A066683 (n + 1)

end

end A066682.P9611745158552526774

/-!
# A066683: Number of badly sieved numbers <= n.

The programs for A066683, there is no canonical definition to state claims against.
-/

/-! ## A066683.P13949867888063383007

`∑[A099104(n+1)]`
-/

namespace A066683.P13949867888063383007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066683.P13949867888063383007

/-! ## A066683.P6522698787436336013

`∑[char[A066680(n+1)-1]]`
-/

namespace A066683.P6522698787436336013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066680 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066683.P6522698787436336013

/-! ## A066683.P14725882423996660487

`∑[∑{d}[n+1, A008683(#)*A099042((n+1)/#)]]`
-/

namespace A066683.P14725882423996660487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A099042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066683.P14725882423996660487

/-! ## A066683.P14020063321803954228

`A099104(n+1)+A000040(n)%2*a(n-1)` with `a(0)=0`
-/

namespace A066683.P14020063321803954228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A099104 (n + 1) + Int.tmod (A000040 n) 2 * a (n - 1)

end

end A066683.P14020063321803954228

/-! ## A066683.P12484413655470630112

`∑[A002828(A066682(n+1)²)]`
-/

namespace A066683.P12484413655470630112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A066682 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066683.P12484413655470630112

/-! ## A066683.P3992080188936517094

`A003056(∑[A066682(n+1)])`
-/

namespace A066683.P3992080188936517094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066683.P3992080188936517094

/-! ## A066683.P9375932778082350441

`A025581(∑[A066682(n+1)])`
-/

namespace A066683.P9375932778082350441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066683.P9375932778082350441

/-! ## A066683.P5396477892158884147

`∑[A000122(A066682(n+1)²)-1]`
-/

namespace A066683.P5396477892158884147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A066682 (n + 1) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066683.P5396477892158884147

/-! ## A066683.P17643468809474689659

`A002262(4*∑[A066682(n+1)])`
-/

namespace A066683.P17643468809474689659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066683.P17643468809474689659

/-!
# A066684: Numbers k such that prime(k) is congruent to sigma(k) (mod k), where prime(n) denotes the n-th prime.

The programs for A066684, there is no canonical definition to state claims against.
-/

/-! ## A066684.P8159003066863982824

`eq[A000040(n+1)%-(n+1), A054024(n+1)]+1`
-/

namespace A066684.P8159003066863982824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (-(n + 1 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066684.P8159003066863982824

/-! ## A066684.P8885577182732897718

`A004001(A210506(n+1)-A255826(n+1))`
-/

namespace A066684.P8885577182732897718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A210506 (n + 1) - A255826 (n + 1)).toNat

end

end A066684.P8885577182732897718

/-!
# A066685: Numbers n such that p(n) is congruent to EulerPhi(n) mod n, where p(n) denotes the n-th prime.

The programs for A066685, there is no canonical definition to state claims against.
-/

/-! ## A066685.P13378966680316590088

`A076519(A129315(n+1))`
-/

namespace A066685.P13378966680316590088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076519 (A129315 (n + 1)).toNat

end

end A066685.P13378966680316590088

/-!
# A066686: Array T(i,j) read by antidiagonals, where T(i,j) is the concatenation of i and j (1<=i, 1<=j).

The programs for A066686, there is no canonical definition to state claims against.
-/

/-! ## A066686.P17552398543901644556

`A067574(∑[char[∑[n]]]²-n)`
-/

namespace A066686.P17552398543901644556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A066686.P17552398543901644556

/-! ## A066686.P12187062730654415961

`A067574(A038722(n+1))+A000007(n+1)`
-/

namespace A066686.P12187062730654415961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A066686.P12187062730654415961

/-! ## A066686.P5917791163517218801

`A067574(A038722(n+1))%A044332(n+1)`
-/

namespace A066686.P5917791163517218801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067574 (A038722 (n + 1)).toNat) (A044332 (n + 1))

end

end A066686.P5917791163517218801

/-! ## A066686.P10838725479398142914

`A368641(C(2, n)+1)+A067574(A038722(n+1))`
-/

namespace A066686.P10838725479398142914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368641 (Nat.choose 2 n + 1) + A067574 (A038722 (n + 1)).toNat

end

end A066686.P10838725479398142914

/-! ## A066686.P3677886933406746487

`A067574(A038722(n+1))*A191874(C(2, n)+1)`
-/

namespace A066686.P3677886933406746487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (A038722 (n + 1)).toNat * A191874 (Nat.choose 2 n + 1)

end

end A066686.P3677886933406746487

/-! ## A066686.P2312439762443458793

`A067574(A038722(n+1))*A286361(A219609(n+1))`
-/

namespace A066686.P2312439762443458793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (A038722 (n + 1)).toNat * A286361 (A219609 (n + 1)).toNat

end

end A066686.P2312439762443458793

/-! ## A066686.P375905741972721144

`A001222(A184868(n+1))*A067574(A038722(n+1))`
-/

namespace A066686.P375905741972721144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A184868 (n + 1)).toNat * A067574 (A038722 (n + 1)).toNat

end

end A066686.P375905741972721144

/-! ## A066686.P4237768701260080891

`A001222(A091180(n+1))*A067574(A038722(n+1))`
-/

namespace A066686.P4237768701260080891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091180 (n + 1)).toNat * A067574 (A038722 (n + 1)).toNat

end

end A066686.P4237768701260080891

/-! ## A066686.P4957883542564327297

`A165265(A099628(n+1))`
-/

namespace A066686.P4957883542564327297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 (A099628 (n + 1)).toNat

end

end A066686.P4957883542564327297

/-! ## A066686.P1886307176136882

`A165265(A018900(n+1)-1)`
-/

namespace A066686.P1886307176136882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 (A018900 (n + 1) - 1).toNat

end

end A066686.P1886307176136882

/-!
# A066688: Numbers n such that p(n) is congruent to n mod sigma(n), where p(n) denotes the n-th prime.

The programs for A066688, there is no canonical definition to state claims against.
-/

/-! ## A066688.P6044801714519223517

`A225090(C(comp[floor(ϕ*n)], n))`
-/

namespace A066688.P6044801714519223517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) n)

end

end A066688.P6044801714519223517

/-!
# A066691: Value of tau(2n-1) when tau(2n-1) = tau(2n+1).

The programs for A066691, the canonical program `A066691.P12764247508307257723` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066691 has offset 1).

The definition of A066691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066691.P12764247508307257723

`A000005(A066692(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066691

/-- `A000005(A066692(n+1))` -/
def P12764247508307257723.Spec : Prop :=
  ∀ n, P12764247508307257723.a n = A066691 (n + 1)

theorem P12764247508307257723.correct : P12764247508307257723.Spec := by
  intro n
  simp only [A066691, Nat.add_sub_cancel]

end A066691

/-! ## A066691.P10865277263304353954

`A000005(2*A190276(n+1)+1)`
-/

namespace A066691.P10865277263304353954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A190276 (n + 1) + 1).toNat

end

end A066691.P10865277263304353954

namespace A066691

/-- `A000005(2*A190276(n+1)+1)` -/
def P10865277263304353954.Spec : Prop :=
  ∀ n, P10865277263304353954.a n = A066691 (n + 1)

end A066691

/-! ## A066691.P7706955187015920822

`A000005(A190276(n+1)+A190276(n+1)+1)`
-/

namespace A066691.P7706955187015920822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A190276 (n + 1) + (A190276 (n + 1) + 1)).toNat

end

end A066691.P7706955187015920822

namespace A066691

/-- `A000005(A190276(n+1)+A190276(n+1)+1)` -/
def P7706955187015920822.Spec : Prop :=
  ∀ n, P7706955187015920822.a n = A066691 (n + 1)

end A066691

/-! ## A066691.P1219164970352082328

`A000005(eq[A325937(n+1), A325937(n+3)]+1)`
-/

namespace A066691.P1219164970352082328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A066691.P1219164970352082328

namespace A066691

/-- `A000005(eq[A325937(n+1), A325937(n+3)]+1)` -/
def P1219164970352082328.Spec : Prop :=
  ∀ n, P1219164970352082328.a n = A066691 (n + 1)

end A066691

/-! ## A066691.P12726145473150921937

`A099774(A190276(n+1))`
-/

namespace A066691.P12726145473150921937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A190276 (n + 1)).toNat

end

end A066691.P12726145473150921937

namespace A066691

/-- `A099774(A190276(n+1))` -/
def P12726145473150921937.Spec : Prop :=
  ∀ n, P12726145473150921937.a n = A066691 (n + 1)

end A066691

/-! ## A066691.P11495916445033543377

`A001227(A066692(n+1)+2)`
-/

namespace A066691.P11495916445033543377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A066692 (n + 1) + 2).toNat

end

end A066691.P11495916445033543377

namespace A066691

/-- `A001227(A066692(n+1)+2)` -/
def P11495916445033543377.Spec : Prop :=
  ∀ n, P11495916445033543377.a n = A066691 (n + 1)

end A066691

/-!
# A066692: Odd numbers k such that tau(k) = tau(k+2), where tau(k) = A000005(k) is the number of divisors of k.

The programs for A066692, the canonical program `A066692.P15153014828628836343` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066692 has offset 1).

The definition of A066692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066692.P676805563419449435

`2*A190276(n+1)-1`
-/

namespace A066692.P676805563419449435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190276 (n + 1) - 1

end

end A066692.P676805563419449435

namespace A066692

/-- `2*A190276(n+1)-1` -/
def P676805563419449435.Spec : Prop :=
  ∀ n, P676805563419449435.a n = A066692 (n + 1)

end A066692

/-! ## A066692.P9078116412586193266

`2*(eq[A000005(2*n+1), A000005(2*n+3)]+1)-1`
-/

namespace A066692.P9078116412586193266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℤ) - 1

end

end A066692.P9078116412586193266

namespace A066692

/-- `2*(eq[A000005(2*n+1), A000005(2*n+3)]+1)-1` -/
def P9078116412586193266.Spec : Prop :=
  ∀ n, P9078116412586193266.a n = A066692 (n + 1)

end A066692

/-! ## A066692.P105388798393597715

`∩[2*n+1, A062832(n+1)]`
-/

namespace A066692.P105388798393597715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P105388798393597715

namespace A066692

/-- `∩[2*n+1, A062832(n+1)]` -/
def P105388798393597715.Spec : Prop :=
  ∀ n, (P105388798393597715.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P15153014828628836343

`filter[A062832(n+1), A379952(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066692

/-- `filter[A062832(n+1), A379952(#)]` -/
def P15153014828628836343.Spec : Prop :=
  ∀ n, P15153014828628836343.a n = A066692 (n + 1)

theorem P15153014828628836343.correct : P15153014828628836343.Spec := by
  intro n
  simp only [A066692, Nat.add_sub_cancel]

end A066692

/-! ## A066692.P11609632970650378633

`filter[A062832(n+1), A323158(#)]`
-/

namespace A066692.P11609632970650378633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A066692.P11609632970650378633

namespace A066692

/-- `filter[A062832(n+1), A323158(#)]` -/
def P11609632970650378633.Spec : Prop :=
  ∀ n, P11609632970650378633.a n = A066692 (n + 1)

end A066692

/-! ## A066692.P11686490760302267334

`filter[A062832(n+1), A324908(#)]`
-/

namespace A066692.P11686490760302267334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A066692.P11686490760302267334

namespace A066692

/-- `filter[A062832(n+1), A324908(#)]` -/
def P11686490760302267334.Spec : Prop :=
  ∀ n, P11686490760302267334.a n = A066692 (n + 1)

end A066692

/-! ## A066692.P9492397391262264976

`eq[A325937(n+1), A325937(n+3)]+1`
-/

namespace A066692.P9492397391262264976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066692.P9492397391262264976

namespace A066692

/-- `eq[A325937(n+1), A325937(n+3)]+1` -/
def P9492397391262264976.Spec : Prop :=
  ∀ n, (P9492397391262264976.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P1843998300395579918

`∩[A062832(n+1), A089684(n+1)]`
-/

namespace A066692.P1843998300395579918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P1843998300395579918

namespace A066692

/-- `∩[A062832(n+1), A089684(n+1)]` -/
def P1843998300395579918.Spec : Prop :=
  ∀ n, (P1843998300395579918.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P9243410651966145788

`∩[A062832(n+1), A088828(n+1)]`
-/

namespace A066692.P9243410651966145788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P9243410651966145788

namespace A066692

/-- `∩[A062832(n+1), A088828(n+1)]` -/
def P9243410651966145788.Spec : Prop :=
  ∀ n, (P9243410651966145788.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P9271675818452292831

`2*eq[0, Δ[A000005(2*n+1)]]+1`
-/

namespace A066692.P9271675818452292831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066692.P9271675818452292831

namespace A066692

/-- `2*eq[0, Δ[A000005(2*n+1)]]+1` -/
def P9271675818452292831.Spec : Prop :=
  ∀ n, (P9271675818452292831.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P14049179229886200812

`A004273(A190276(n+1))`
-/

namespace A066692.P14049179229886200812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190276 (n + 1)).toNat

end

end A066692.P14049179229886200812

namespace A066692

/-- `A004273(A190276(n+1))` -/
def P14049179229886200812.Spec : Prop :=
  ∀ n, P14049179229886200812.a n = A066692 (n + 1)

end A066692

/-! ## A066692.P1840079661898852110

`∩[A062832(n+1), A004273(n)]`
-/

namespace A066692.P1840079661898852110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P1840079661898852110

namespace A066692

/-- `∩[A062832(n+1), A004273(n)]` -/
def P1840079661898852110.Spec : Prop :=
  ∀ n, (P1840079661898852110.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P6825636875988893914

`∩[A062832(n+1), A004274(n)]`
-/

namespace A066692.P6825636875988893914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P6825636875988893914

namespace A066692

/-- `∩[A062832(n+1), A004274(n)]` -/
def P6825636875988893914.Spec : Prop :=
  ∀ n, (P6825636875988893914.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P9362502426185314296

`∩[A062832(n+1), A004276(n)]`
-/

namespace A066692.P9362502426185314296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P9362502426185314296

namespace A066692

/-- `∩[A062832(n+1), A004276(n)]` -/
def P9362502426185314296.Spec : Prop :=
  ∀ n, (P9362502426185314296.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P14963155291248764444

`∩[A062832(n+1), A004281(n)]`
-/

namespace A066692.P14963155291248764444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P14963155291248764444

namespace A066692

/-- `∩[A062832(n+1), A004281(n)]` -/
def P14963155291248764444.Spec : Prop :=
  ∀ n, (P14963155291248764444.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P7593302288033050571

`∩[A062832(n+1), A060747(n)]`
-/

namespace A066692.P7593302288033050571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P7593302288033050571

namespace A066692

/-- `∩[A062832(n+1), A060747(n)]` -/
def P7593302288033050571.Spec : Prop :=
  ∀ n, (P7593302288033050571.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P9347605340016965437

`∩[A062832(n+1), A144396(n+1)]`
-/

namespace A066692.P9347605340016965437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P9347605340016965437

namespace A066692

/-- `∩[A062832(n+1), A144396(n+1)]` -/
def P9347605340016965437.Spec : Prop :=
  ∀ n, (P9347605340016965437.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P3042046380678550891

`eq[A000005(n+2), A000005(A093178(n))]`
-/

namespace A066692.P3042046380678550891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066692.P3042046380678550891

namespace A066692

/-- `eq[A000005(n+2), A000005(A093178(n))]` -/
def P3042046380678550891.Spec : Prop :=
  ∀ n, (P3042046380678550891.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P1563033671355673390

`∩[A062832(n+1), A128201(n+1)]`
-/

namespace A066692.P1563033671355673390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066692.P1563033671355673390

namespace A066692

/-- `∩[A062832(n+1), A128201(n+1)]` -/
def P1563033671355673390.Spec : Prop :=
  ∀ n, (P1563033671355673390.a n : ℤ) = A066692 (n + 1)

end A066692

/-! ## A066692.P16245982217977915257

`filter[A062832(n+1), A000035(#)]`
-/

namespace A066692.P16245982217977915257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A066692.P16245982217977915257

namespace A066692

/-- `filter[A062832(n+1), A000035(#)]` -/
def P16245982217977915257.Spec : Prop :=
  ∀ n, P16245982217977915257.a n = A066692 (n + 1)

end A066692

/-!
# A066694: Numbers k such that phi(sigma(k)) > k.

The programs for A066694, the canonical program `A066694.P293942461781957692` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066694 has offset 1).

The definition of A066694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066694.P9378101952182877157

`filter[A318083(n+1), A295308(#)]`
-/

namespace A066694.P9378101952182877157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P9378101952182877157

namespace A066694

/-- `filter[A318083(n+1), A295308(#)]` -/
def P9378101952182877157.Spec : Prop :=
  ∀ n, P9378101952182877157.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P293942461781957692

`eq[1, A295308(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066694

/-- `eq[1, A295308(n+1)]+1` -/
def P293942461781957692.Spec : Prop :=
  ∀ n, (P293942461781957692.a n : ℤ) = A066694 (n + 1)

theorem P293942461781957692.correct : P293942461781957692.Spec := by
  intro n
  simp only [A066694, Nat.add_sub_cancel]

end A066694

/-! ## A066694.P6015720989346958148

`lt[2, and(n, A295303(n+1))]+1`
-/

namespace A066694.P6015720989346958148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A295303 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066694.P6015720989346958148

namespace A066694

/-- `lt[2, and(n, A295303(n+1))]+1` -/
def P6015720989346958148.Spec : Prop :=
  ∀ n, (P6015720989346958148.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P14451471065247034968

`lt[A295303(abs(1-n)+1)+n, n]`
-/

namespace A066694.P14451471065247034968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066694.P14451471065247034968

namespace A066694

/-- `lt[A295303(abs(1-n)+1)+n, n]` -/
def P14451471065247034968.Spec : Prop :=
  ∀ n, (P14451471065247034968.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P5065156918613027442

`lt[A295303(n+1), A295297(n+1)]+1`
-/

namespace A066694.P5065156918613027442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066694.P5065156918613027442

namespace A066694

/-- `lt[A295303(n+1), A295297(n+1)]+1` -/
def P5065156918613027442.Spec : Prop :=
  ∀ n, (P5065156918613027442.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P15707525639950270111

`lt[A295301(n+1), A295297(n+1)]+1`
-/

namespace A066694.P15707525639950270111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066694.P15707525639950270111

namespace A066694

/-- `lt[A295301(n+1), A295297(n+1)]+1` -/
def P15707525639950270111.Spec : Prop :=
  ∀ n, (P15707525639950270111.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P3379697993120476875

`lt[A295301(n+1), A295303(n+1)]+1`
-/

namespace A066694.P3379697993120476875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066694.P3379697993120476875

namespace A066694

/-- `lt[A295301(n+1), A295303(n+1)]+1` -/
def P3379697993120476875.Spec : Prop :=
  ∀ n, (P3379697993120476875.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P14558232389929933871

`lt[n+1, A000010(A000203(n+1))]+1`
-/

namespace A066694.P14558232389929933871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066694.P14558232389929933871

namespace A066694

/-- `lt[n+1, A000010(A000203(n+1))]+1` -/
def P14558232389929933871.Spec : Prop :=
  ∀ n, (P14558232389929933871.a n : ℤ) = A066694 (n + 1)

end A066694

/-! ## A066694.P6294925854779637779

`filter[A353683(n+1), A295308(#)]`
-/

namespace A066694.P6294925854779637779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P6294925854779637779

namespace A066694

/-- `filter[A353683(n+1), A295308(#)]` -/
def P6294925854779637779.Spec : Prop :=
  ∀ n, P6294925854779637779.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P14281148547515249669

`filter[A013929(n+1), A295308(#)]`
-/

namespace A066694.P14281148547515249669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P14281148547515249669

namespace A066694

/-- `filter[A013929(n+1), A295308(#)]` -/
def P14281148547515249669.Spec : Prop :=
  ∀ n, P14281148547515249669.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P6665635240875058941

`filter[A162966(n+1), A295308(#)]`
-/

namespace A066694.P6665635240875058941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P6665635240875058941

namespace A066694

/-- `filter[A162966(n+1), A295308(#)]` -/
def P6665635240875058941.Spec : Prop :=
  ∀ n, P6665635240875058941.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P10127604099300066644

`filter[A354360(n+1), A295308(#)]`
-/

namespace A066694.P10127604099300066644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P10127604099300066644

namespace A066694

/-- `filter[A354360(n+1), A295308(#)]` -/
def P10127604099300066644.Spec : Prop :=
  ∀ n, P10127604099300066644.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P14616064501886493780

`filter[A353684(n+1), A295308(#)]`
-/

namespace A066694.P14616064501886493780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P14616064501886493780

namespace A066694

/-- `filter[A353684(n+1), A295308(#)]` -/
def P14616064501886493780.Spec : Prop :=
  ∀ n, P14616064501886493780.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P3097289406202039107

`filter[A389462(n+1), A295308(#)]`
-/

namespace A066694.P3097289406202039107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P3097289406202039107

namespace A066694

/-- `filter[A389462(n+1), A295308(#)]` -/
def P3097289406202039107.Spec : Prop :=
  ∀ n, P3097289406202039107.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P17260030108431262816

`filter[A003485(n), A295308(#)]`
-/

namespace A066694.P17260030108431262816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P17260030108431262816

namespace A066694

/-- `filter[A003485(n), A295308(#)]` -/
def P17260030108431262816.Spec : Prop :=
  ∀ n, P17260030108431262816.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P945961208780197828

`filter[A047466(n+2), A295308(#)]`
-/

namespace A066694.P945961208780197828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P945961208780197828

namespace A066694

/-- `filter[A047466(n+2), A295308(#)]` -/
def P945961208780197828.Spec : Prop :=
  ∀ n, P945961208780197828.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P17863379020137100534

`filter[A366288(n+1), A295308(#)]`
-/

namespace A066694.P17863379020137100534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P17863379020137100534

namespace A066694

/-- `filter[A366288(n+1), A295308(#)]` -/
def P17863379020137100534.Spec : Prop :=
  ∀ n, P17863379020137100534.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P6688915268783710840

`filter[A372771(n+1), A295308(#)]`
-/

namespace A066694.P6688915268783710840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P6688915268783710840

namespace A066694

/-- `filter[A372771(n+1), A295308(#)]` -/
def P6688915268783710840.Spec : Prop :=
  ∀ n, P6688915268783710840.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P5330990847352898101

`filter[A182339(n+1), A295308(#)]`
-/

namespace A066694.P5330990847352898101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P5330990847352898101

namespace A066694

/-- `filter[A182339(n+1), A295308(#)]` -/
def P5330990847352898101.Spec : Prop :=
  ∀ n, P5330990847352898101.a n = A066694 (n + 1)

end A066694

/-! ## A066694.P2243716736720091432

`lt[A295311(n+1), A295312(n+1)]+1`
-/

namespace A066694.P2243716736720091432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066694.P2243716736720091432

namespace A066694

/-- `lt[A295311(n+1), A295312(n+1)]+1` -/
def P2243716736720091432.Spec : Prop :=
  ∀ n, (P2243716736720091432.a n : ℤ) = A066694 (n + 1)

end A066694

/-!
# A066695: Numbers k such that Euler phi(k) / Carmichael lambda(k) = 12.

The programs for A066695, there is no canonical definition to state claims against.
-/

/-! ## A066695.P2609387291348394325

`eq[12, A034380(A028310(n))]`
-/

namespace A066695.P2609387291348394325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066695.P2609387291348394325

/-! ## A066695.P6350513000395029726

`A004830(eq[12, A034380(n+1)])`
-/

namespace A066695.P6350513000395029726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066695.P6350513000395029726

/-! ## A066695.P11902965930901479005

`A020725(eq[12, A034380(n+1)])`
-/

namespace A066695.P11902965930901479005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066695.P11902965930901479005

/-! ## A066695.P5625527193488969982

`A065475(eq[12, A034380(n+1)])`
-/

namespace A066695.P5625527193488969982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066695.P5625527193488969982

/-! ## A066695.P15852182565954864833

`eq[12, A034380(A060000(n+1))]`
-/

namespace A066695.P15852182565954864833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066695.P15852182565954864833

/-!
# A066697: Numbers k such that Euler phi(k) / Carmichael lambda(k) = 18.

The programs for A066697, there is no canonical definition to state claims against.
-/

/-! ## A066697.P8564970032981828467

`eq[18, A034380(A028310(n))]`
-/

namespace A066697.P8564970032981828467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066697.P8564970032981828467

