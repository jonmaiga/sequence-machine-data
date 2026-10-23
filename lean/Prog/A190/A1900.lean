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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A190000: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sinh(1), t=cosh(1).

The programs for A190000, the canonical program `A190000.P15171156343150312303` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190000 has offset 1).

The definition of A190000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190000.P15171156343150312303

`n+1+floor((n+1)/sinh(1))+floor((n+1)/tanh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190000

/-- `n+1+floor((n+1)/sinh(1))+floor((n+1)/tanh(1))` -/
def P15171156343150312303.Spec : Prop :=
  ∀ n, P15171156343150312303.a n = A190000 (n + 1)

theorem P15171156343150312303.correct : P15171156343150312303.Spec := by
  intro n
  simp only [A190000, Nat.add_sub_cancel]

end A190000

/-! ## A190000.P4975730013351148088

`or(A001899(A156953(n)), A020914(2*n+1))`
-/

namespace A190000.P4975730013351148088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001899 (A156953 n).toNat) (A020914 (2 * n + 1))

end

end A190000.P4975730013351148088

namespace A190000

/-- `or(A001899(A156953(n)), A020914(2*n+1))` -/
def P4975730013351148088.Spec : Prop :=
  ∀ n, P4975730013351148088.a n = A190000 (n + 1)

end A190000

/-! ## A190000.P14255499378997120110

`A298139(A104443(n+1))+A020914(2*n+1)`
-/

namespace A190000.P14255499378997120110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (A104443 (n + 1)).toNat + A020914 (2 * n + 1)

end

end A190000.P14255499378997120110

namespace A190000

/-- `A298139(A104443(n+1))+A020914(2*n+1)` -/
def P14255499378997120110.Spec : Prop :=
  ∀ n, P14255499378997120110.a n = A190000 (n + 1)

end A190000

/-! ## A190000.P176829752737609947

`A195176(2*n+1)+A025469(A319140(2*(n+1)))`
-/

namespace A190000.P176829752737609947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (2 * n + 1) + A025469 (A319140 (2 * (n + 1))).toNat

end

end A190000.P176829752737609947

namespace A190000

/-- `A195176(2*n+1)+A025469(A319140(2*(n+1)))` -/
def P176829752737609947.Spec : Prop :=
  ∀ n, P176829752737609947.a n = A190000 (n + 1)

end A190000

/-! ## A190000.P4263467333044178664

`A261527(A261527(2*(n+1)))+A056576(2*n+1)`
-/

namespace A190000.P4263467333044178664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261527 (A261527 (2 * (n + 1))).toNat + A056576 (2 * n + 1)

end

end A190000.P4263467333044178664

namespace A190000

/-- `A261527(A261527(2*(n+1)))+A056576(2*n+1)` -/
def P4263467333044178664.Spec : Prop :=
  ∀ n, P4263467333044178664.a n = A190000 (n + 1)

end A190000

/-!
# A190001: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sinh(1), t=cosh(1).

The programs for A190001, the canonical program `A190001.P11819366785814072561` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190001 has offset 1).

The definition of A190001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190001.P11819366785814072561

`n+1+floor((n+1)/cosh(1))+floor((n+1)*tanh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190001

/-- `n+1+floor((n+1)/cosh(1))+floor((n+1)*tanh(1))` -/
def P11819366785814072561.Spec : Prop :=
  ∀ n, P11819366785814072561.a n = A190001 (n + 1)

theorem P11819366785814072561.correct : P11819366785814072561.Spec := by
  intro n
  simp only [A190001, Nat.add_sub_cancel]

end A190001

/-! ## A190001.P13508887106554466689

`A330144(n+1)-A008619(A064488(n+1))`
-/

namespace A190001.P13508887106554466689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330144 (n + 1) - A008619 (A064488 (n + 1)).toNat

end

end A190001.P13508887106554466689

namespace A190001

/-- `A330144(n+1)-A008619(A064488(n+1))` -/
def P13508887106554466689.Spec : Prop :=
  ∀ n, P13508887106554466689.a n = A190001 (n + 1)

end A190001

/-! ## A190001.P15748301782052337891

`A330144(n+1)-A008621(A329996(n+1))`
-/

namespace A190001.P15748301782052337891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330144 (n + 1) - A008621 (A329996 (n + 1)).toNat

end

end A190001.P15748301782052337891

namespace A190001

/-- `A330144(n+1)-A008621(A329996(n+1))` -/
def P15748301782052337891.Spec : Prop :=
  ∀ n, P15748301782052337891.a n = A190001 (n + 1)

end A190001

/-! ## A190001.P18375510467665515271

`A329978(A330144(n+1))-A329839(n+1)`
-/

namespace A190001.P18375510467665515271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A330144 (n + 1)).toNat - A329839 (n + 1)

end

end A190001.P18375510467665515271

namespace A190001

/-- `A329978(A330144(n+1))-A329839(n+1)` -/
def P18375510467665515271.Spec : Prop :=
  ∀ n, P18375510467665515271.a n = A190001 (n + 1)

end A190001

/-! ## A190001.P1702360919979721509

`A329978(A330144(n+1))-A329978(n+1)`
-/

namespace A190001.P1702360919979721509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A330144 (n + 1)).toNat - A329978 (n + 1)

end

end A190001.P1702360919979721509

namespace A190001

/-- `A329978(A330144(n+1))-A329978(n+1)` -/
def P1702360919979721509.Spec : Prop :=
  ∀ n, P1702360919979721509.a n = A190001 (n + 1)

end A190001

/-!
# A190002: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=(sinh(1))^2, t=(cosh(1))^2.

The programs for A190002, the canonical program `A190002.P7526971079784873890` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190002 has offset 1).

The definition of A190002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190002.P7526971079784873890

`n+1+floor((n+1)*sinh(1)²)+floor((n+1)*cosh(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190002

/-- `n+1+floor((n+1)*sinh(1)²)+floor((n+1)*cosh(1)²)` -/
def P7526971079784873890.Spec : Prop :=
  ∀ n, P7526971079784873890.a n = A190002 (n + 1)

theorem P7526971079784873890.correct : P7526971079784873890.Spec := by
  intro n
  simp only [A190002, Nat.add_sub_cancel]

end A190002

/-! ## A190002.P5196767549401189484

`2*floor((n+1)*cosh(1)²)`
-/

namespace A190002.P5196767549401189484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) * Real.cosh (1 : ℝ) ^ 2⌋

end

end A190002.P5196767549401189484

namespace A190002

/-- `2*floor((n+1)*cosh(1)²)` -/
def P5196767549401189484.Spec : Prop :=
  ∀ n, P5196767549401189484.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P8776773502912684872

`2*A190004(n+1)`
-/

namespace A190002.P8776773502912684872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190004 (n + 1)

end

end A190002.P8776773502912684872

namespace A190002

/-- `2*A190004(n+1)` -/
def P8776773502912684872.Spec : Prop :=
  ∀ n, P8776773502912684872.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P16989501264001802930

`A190004(xor(1, xor(1, n+1)))+A190004(n+1)`
-/

namespace A190002.P16989501264001802930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190004 (Nat.xor 1 (Nat.xor 1 (n + 1))) + A190004 (n + 1)

end

end A190002.P16989501264001802930

namespace A190002

/-- `A190004(xor(1, xor(1, n+1)))+A190004(n+1)` -/
def P16989501264001802930.Spec : Prop :=
  ∀ n, P16989501264001802930.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P7900905625738829961

`A000265(A190004(n+1)+A190004(n+1)+1)-1`
-/

namespace A190002.P7900905625738829961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A190004 (n + 1) + A190004 (n + 1) + 1).toNat - 1

end

end A190002.P7900905625738829961

namespace A190002

/-- `A000265(A190004(n+1)+A190004(n+1)+1)-1` -/
def P7900905625738829961.Spec : Prop :=
  ∀ n, P7900905625738829961.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P15367322504652922928

`A190003(A190004(n+1)-n)-2`
-/

namespace A190002.P15367322504652922928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190003 (A190004 (n + 1) - (n : ℤ)).toNat - 2

end

end A190002.P15367322504652922928

namespace A190002

/-- `A190003(A190004(n+1)-n)-2` -/
def P15367322504652922928.Spec : Prop :=
  ∀ n, P15367322504652922928.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P16371547442895557910

`A004277(A190004(n+1))`
-/

namespace A190002.P16371547442895557910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190004 (n + 1)).toNat

end

end A190002.P16371547442895557910

namespace A190002

/-- `A004277(A190004(n+1))` -/
def P16371547442895557910.Spec : Prop :=
  ∀ n, P16371547442895557910.a n = A190002 (n + 1)

end A190002

/-! ## A190002.P1735068661307114465

`∑[7-A095346(2*n+1)]`
-/

namespace A190002.P1735068661307114465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A095346 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190002.P1735068661307114465

namespace A190002

/-- `∑[7-A095346(2*n+1)]` -/
def P1735068661307114465.Spec : Prop :=
  ∀ n, P1735068661307114465.a n = A190002 (n + 1)

end A190002

/-!
# A190003: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=(sinh(1))^2, t=(cosh(1))^2.

The programs for A190003, the canonical program `A190003.P7967038470711772090` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190003 has offset 1).

The definition of A190003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190003.P7967038470711772090

`n+1+floor((n+1)/sinh(1)²)+floor((n+1)/tanh(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190003

/-- `n+1+floor((n+1)/sinh(1)²)+floor((n+1)/tanh(1)²)` -/
def P7967038470711772090.Spec : Prop :=
  ∀ n, P7967038470711772090.a n = A190003 (n + 1)

theorem P7967038470711772090.correct : P7967038470711772090.Spec := by
  intro n
  simp only [A190003, Nat.add_sub_cancel]

end A190003

/-! ## A190003.P15162779011259294099

`2*floor((n+1)/tanh(1)²)`
-/

namespace A190003.P15162779011259294099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) / Real.tanh (1 : ℝ) ^ 2⌋

end

end A190003.P15162779011259294099

namespace A190003

/-- `2*floor((n+1)/tanh(1)²)` -/
def P15162779011259294099.Spec : Prop :=
  ∀ n, P15162779011259294099.a n = A190003 (n + 1)

end A190003

/-! ## A190003.P190709422599041789

`floor((n+1)/tanh(1)²)/(1-1/2)`
-/

namespace A190003.P190709422599041789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) / Real.tanh (1 : ℝ) ^ 2⌋ : ℚ) / (1 - (1 : ℚ) / 2)

end

end A190003.P190709422599041789

namespace A190003

/-- `floor((n+1)/tanh(1)²)/(1-1/2)` -/
def P190709422599041789.Spec : Prop :=
  ∀ n, P190709422599041789.a n = (A190003 (n + 1) : ℚ)

end A190003

/-! ## A190003.P15573916476988188388

`A005843(floor((n+1)/tanh(1)²))`
-/

namespace A190003.P15573916476988188388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌊(n + 1 : ℝ) / Real.tanh (1 : ℝ) ^ 2⌋.toNat

end

end A190003.P15573916476988188388

namespace A190003

/-- `A005843(floor((n+1)/tanh(1)²))` -/
def P15573916476988188388.Spec : Prop :=
  ∀ n, P15573916476988188388.a n = A190003 (n + 1)

end A190003

/-! ## A190003.P730324259176337631

`A004277(ceil((n+1)/(3-ϕ)+n)%A215032(n+1))`
-/

namespace A190003.P730324259176337631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio) + (n : ℝ)⌉ (A215032 (n + 1))).toNat

end

end A190003.P730324259176337631

namespace A190003

/-- `A004277(ceil((n+1)/(3-ϕ)+n)%A215032(n+1))` -/
def P730324259176337631.Spec : Prop :=
  ∀ n, P730324259176337631.a n = A190003 (n + 1)

end A190003

/-! ## A190003.P2475077725200522997

`lcm(2*ceil((n+1)/(3-ϕ)+n), A319117(n))`
-/

namespace A190003.P2475077725200522997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio) + (n : ℝ)⌉) (A319117 n)

end

end A190003.P2475077725200522997

namespace A190003

/-- `lcm(2*ceil((n+1)/(3-ϕ)+n), A319117(n))` -/
def P2475077725200522997.Spec : Prop :=
  ∀ n, (P2475077725200522997.a n : ℤ) = A190003 (n + 1)

end A190003

/-! ## A190003.P11667718742145823721

`A004277(lcm(A182760(n+1), A319117(n)))`
-/

namespace A190003.P11667718742145823721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (A182760 (n + 1)) (A319117 n))

end

end A190003.P11667718742145823721

namespace A190003

/-- `A004277(lcm(A182760(n+1), A319117(n)))` -/
def P11667718742145823721.Spec : Prop :=
  ∀ n, P11667718742145823721.a n = A190003 (n + 1)

end A190003

/-! ## A190003.P10421548586565698733

`A004277(A182760(n+1)/A319117(n)²)`
-/

namespace A190003.P10421548586565698733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A182760 (n + 1) : ℚ) / (A319117 n ^ 2 : ℚ))).toNat

end

end A190003.P10421548586565698733

namespace A190003

/-- `A004277(A182760(n+1)/A319117(n)²)` -/
def P10421548586565698733.Spec : Prop :=
  ∀ n, P10421548586565698733.a n = A190003 (n + 1)

end A190003

/-! ## A190003.P15941839448602757236

`A000267(A182760(n+1)²)`
-/

namespace A190003.P15941839448602757236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A182760 (n + 1) ^ 2).toNat

end

end A190003.P15941839448602757236

namespace A190003

/-- `A000267(A182760(n+1)²)` -/
def P15941839448602757236.Spec : Prop :=
  ∀ n, P15941839448602757236.a n = A190003 (n + 1)

end A190003

/-!
# A190004: A190002/2.

The programs for A190004, the canonical program `A190004.P1722601912143706536` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190004 has offset 1).

The definition of A190004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190004.P1722601912143706536

`floor((n+1)*cosh(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190004

/-- `floor((n+1)*cosh(1)²)` -/
def P1722601912143706536.Spec : Prop :=
  ∀ n, P1722601912143706536.a n = A190004 (n + 1)

theorem P1722601912143706536.correct : P1722601912143706536.Spec := by
  intro n
  simp only [A190004, Nat.add_sub_cancel]

end A190004

/-! ## A190004.P9875962665700142832

`n+1+floor((n+1)*sinh(1)²)`
-/

namespace A190004.P9875962665700142832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℝ) * Real.sinh (1 : ℝ) ^ 2⌋

end

end A190004.P9875962665700142832

namespace A190004

/-- `n+1+floor((n+1)*sinh(1)²)` -/
def P9875962665700142832.Spec : Prop :=
  ∀ n, P9875962665700142832.a n = A190004 (n + 1)

end A190004

/-! ## A190004.P12162328251622071465

`ceil((n+1)*cosh(1)²)-1`
-/

namespace A190004.P12162328251622071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cosh (1 : ℝ) ^ 2⌉ - 1

end

end A190004.P12162328251622071465

namespace A190004

/-- `ceil((n+1)*cosh(1)²)-1` -/
def P12162328251622071465.Spec : Prop :=
  ∀ n, P12162328251622071465.a n = A190004 (n + 1)

end A190004

/-! ## A190004.P10031872489997889576

`floor((n+1)/(1/cosh(1))²)`
-/

namespace A190004.P10031872489997889576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 / Real.cosh (1 : ℝ)) ^ 2⌋

end

end A190004.P10031872489997889576

namespace A190004

/-- `floor((n+1)/(1/cosh(1))²)` -/
def P10031872489997889576.Spec : Prop :=
  ∀ n, P10031872489997889576.a n = A190004 (n + 1)

theorem P10031872489997889576.correct : P10031872489997889576.Spec := by
  intro n
  simp only [A190004, Nat.add_sub_cancel, A190004.P10031872489997889576.a, A190004.P1722601912143706536.a, SequenceMachineLib.memo_apply]
  try simp

end A190004

/-! ## A190004.P14651740584971480582

`floor((n+1)/(1-tanh(1)²))`
-/

namespace A190004.P14651740584971480582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - Real.tanh (1 : ℝ) ^ 2)⌋

end

end A190004.P14651740584971480582

namespace A190004

/-- `floor((n+1)/(1-tanh(1)²))` -/
def P14651740584971480582.Spec : Prop :=
  ∀ n, P14651740584971480582.a n = A190004 (n + 1)

end A190004

/-! ## A190004.P3835115813484586867

`ceil((n+1)*sinh(1)²+n)`
-/

namespace A190004.P3835115813484586867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ) ^ 2 + (n : ℝ)⌉

end

end A190004.P3835115813484586867

namespace A190004

/-- `ceil((n+1)*sinh(1)²+n)` -/
def P3835115813484586867.Spec : Prop :=
  ∀ n, P3835115813484586867.a n = A190004 (n + 1)

end A190004

/-! ## A190004.P15918800192027178964

`A190002(n+1)/2`
-/

namespace A190004.P15918800192027178964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190002 (n + 1) : ℚ) / 2

end

end A190004.P15918800192027178964

namespace A190004

/-- `A190002(n+1)/2` -/
def P15918800192027178964.Spec : Prop :=
  ∀ n, P15918800192027178964.a n = (A190004 (n + 1) : ℚ)

end A190004

/-! ## A190004.P133149234790667692

`A014682(A190002(n+1))`
-/

namespace A190004.P133149234790667692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190002 (n + 1)).toNat

end

end A190004.P133149234790667692

namespace A190004

/-- `A014682(A190002(n+1))` -/
def P133149234790667692.Spec : Prop :=
  ∀ n, P133149234790667692.a n = A190004 (n + 1)

end A190004

/-! ## A190004.P5926102891750538465

`ceil(log(A373816(n)))+2`
-/

namespace A190004.P5926102891750538465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A373816 n : ℝ)⌉ + 2

end

end A190004.P5926102891750538465

namespace A190004

/-- `ceil(log(A373816(n)))+2` -/
def P5926102891750538465.Spec : Prop :=
  ∀ n, P5926102891750538465.a n = A190004 (n + 1)

end A190004

/-!
# A190005: a(n) = 6*a(n-1) + 10*a(n-2), with a(0)=0, a(1)=1.

The programs for A190005, the canonical program `A190005.P5539387838093130320` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190005 has offset 0).

The definition of A190005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A190005.P5539387838093130320`, by `A190005.P5539387838093130320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190005.P5539387838093130320

`6*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190005

/-- `6*a(n-1)+10*a(n-2)` -/
def P5539387838093130320.Spec : Prop :=
  ∀ n, (P5539387838093130320.a n : ℤ) = A190005 n

theorem P5539387838093130320.correct : P5539387838093130320.Spec := by
  intro n
  simp only [A190005]

end A190005

/-! ## A190005.P16112206180571116063

`ogf(x/(1-6x-10x^2))`
-/

namespace A190005.P16112206180571116063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -10] n

end

end A190005.P16112206180571116063

namespace A190005

/-- `ogf(x/(1-6x-10x^2))` -/
def P16112206180571116063.Spec : Prop :=
  ∀ n, P16112206180571116063.a n = A190005 n

end A190005

/-! ## A190005.P11441581459263732522

`2*(4*a(n-1)-(a(n-1)-5*a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A190005.P11441581459263732522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2)))

end

end A190005.P11441581459263732522

namespace A190005

/-- `2*(4*a(n-1)-(a(n-1)-5*a(n-2)))` -/
def P11441581459263732522.Spec : Prop :=
  ∀ n, P11441581459263732522.a n = A190005 n

end A190005

/-! ## A190005.P16355223392820267298

`sqrt(19)*((3+sqrt(19))^n-(3-sqrt(19))^n)/38`
-/

namespace A190005.P16355223392820267298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (19 : ℝ) * (((3 + Real.sqrt (19 : ℝ)) ^ n - (3 - Real.sqrt (19 : ℝ)) ^ n) / 38)

end

end A190005.P16355223392820267298

namespace A190005

/-- `sqrt(19)*((3+sqrt(19))^n-(3-sqrt(19))^n)/38` -/
def P16355223392820267298.Spec : Prop :=
  ∀ n, P16355223392820267298.a n = (A190005 n : ℝ)

end A190005

/-!
# A190006: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190006, the canonical program `A190006.P8000461665052972933` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190006 has offset 1).

The definition of A190006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190006.P8000461665052972933

`n+1+floor((n+1)*sin(π/3))+floor((n+1)/sin(π/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190006

/-- `n+1+floor((n+1)*sin(π/3))+floor((n+1)/sin(π/3))` -/
def P8000461665052972933.Spec : Prop :=
  ∀ n, P8000461665052972933.a n = A190006 (n + 1)

theorem P8000461665052972933.correct : P8000461665052972933.Spec := by
  intro n
  simp only [A190006, Nat.add_sub_cancel]

end A190006

/-! ## A190006.P17635641996214856473

`A190053(2*(n+1))-(n+1)`
-/

namespace A190006.P17635641996214856473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190053 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A190006.P17635641996214856473

namespace A190006

/-- `A190053(2*(n+1))-(n+1)` -/
def P17635641996214856473.Spec : Prop :=
  ∀ n, P17635641996214856473.a n = A190006 (n + 1)

end A190006

/-! ## A190006.P8231083239870294062

`abs(A190053(n+2+n)-3-n)+2`
-/

namespace A190006.P8231083239870294062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190053 (n + 2 + n) - 3 - (n : ℤ)| + 2

end

end A190006.P8231083239870294062

namespace A190006

/-- `abs(A190053(n+2+n)-3-n)+2` -/
def P8231083239870294062.Spec : Prop :=
  ∀ n, P8231083239870294062.a n = A190006 (n + 1)

end A190006

/-! ## A190006.P2676778727183576725

`A194979(2*(n+1))+A171970(n+1)+n`
-/

namespace A190006.P2676778727183576725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (2 * (n + 1)) + (A171970 (n + 1) + (n : ℤ))

end

end A190006.P2676778727183576725

namespace A190006

/-- `A194979(2*(n+1))+A171970(n+1)+n` -/
def P2676778727183576725.Spec : Prop :=
  ∀ n, P2676778727183576725.a n = A190006 (n + 1)

end A190006

/-! ## A190006.P3317998501219664521

`A110654(A180123(n+1))+A097337(2*(n+1))`
-/

namespace A190006.P3317998501219664521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A180123 (n + 1)).toNat + A097337 (2 * (n + 1))

end

end A190006.P3317998501219664521

namespace A190006

/-- `A110654(A180123(n+1))+A097337(2*(n+1))` -/
def P3317998501219664521.Spec : Prop :=
  ∀ n, P3317998501219664521.a n = A190006 (n + 1)

end A190006

/-! ## A190006.P5911384861463081166

`A097337(2*(n+1))+A004526(A003512(n+1))`
-/

namespace A190006.P5911384861463081166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (2 * (n + 1)) + A004526 (A003512 (n + 1)).toNat

end

end A190006.P5911384861463081166

namespace A190006

/-- `A097337(2*(n+1))+A004526(A003512(n+1))` -/
def P5911384861463081166.Spec : Prop :=
  ∀ n, P5911384861463081166.a n = A190006 (n + 1)

end A190006

/-! ## A190006.P16899806965906125406

`A123108(A188085(2*(n+1))+A022838(n+1))`
-/

namespace A190006.P16899806965906125406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A188085 (2 * (n + 1)) + A022838 (n + 1)).toNat

end

end A190006.P16899806965906125406

namespace A190006

/-- `A123108(A188085(2*(n+1))+A022838(n+1))` -/
def P16899806965906125406.Spec : Prop :=
  ∀ n, P16899806965906125406.a n = A190006 (n + 1)

end A190006

/-!
# A190007: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190007, the canonical program `A190007.P7141546726997644681` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190007 has offset 1).

The definition of A190007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190007.P7141546726997644681

`n+1+floor((n+1)/sin(π/3))+floor((n+1)/sin(π/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190007

/-- `n+1+floor((n+1)/sin(π/3))+floor((n+1)/sin(π/3)²)` -/
def P7141546726997644681.Spec : Prop :=
  ∀ n, P7141546726997644681.a n = A190007 (n + 1)

theorem P7141546726997644681.correct : P7141546726997644681.Spec := by
  intro n
  simp only [A190007, Nat.add_sub_cancel]

end A190007

/-! ## A190007.P12726079510354744240

`A186539(2*(n+1))+A002264(n+1)`
-/

namespace A190007.P12726079510354744240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (2 * (n + 1)) + A002264 (n + 1)

end

end A190007.P12726079510354744240

namespace A190007

/-- `A186539(2*(n+1))+A002264(n+1)` -/
def P12726079510354744240.Spec : Prop :=
  ∀ n, P12726079510354744240.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P5517724634404593544

`A194979(2*(n+1))+A047282(n+1)`
-/

namespace A190007.P5517724634404593544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (2 * (n + 1)) + A047282 (n + 1)

end

end A190007.P5517724634404593544

namespace A190007

/-- `A194979(2*(n+1))+A047282(n+1)` -/
def P5517724634404593544.Spec : Prop :=
  ∀ n, P5517724634404593544.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P9682648400254180796

`A260307(2*n)+A194979(2*(n+1))`
-/

namespace A190007.P9682648400254180796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 (2 * n) + A194979 (2 * (n + 1))

end

end A190007.P9682648400254180796

namespace A190007

/-- `A260307(2*n)+A194979(2*(n+1))` -/
def P9682648400254180796.Spec : Prop :=
  ∀ n, P9682648400254180796.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P7323365504143840041

`A186539(2*(n+1))+n-A004396(n)`
-/

namespace A190007.P7323365504143840041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (2 * (n + 1)) + ((n : ℤ) - A004396 n)

end

end A190007.P7323365504143840041

namespace A190007

/-- `A186539(2*(n+1))+n-A004396(n)` -/
def P7323365504143840041.Spec : Prop :=
  ∀ n, P7323365504143840041.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P8555424393695498

`A186539(2*(n+1))+A008620(n+1)-1`
-/

namespace A190007.P8555424393695498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (2 * (n + 1)) + (A008620 (n + 1) - 1)

end

end A190007.P8555424393695498

namespace A190007

/-- `A186539(2*(n+1))+A008620(n+1)-1` -/
def P8555424393695498.Spec : Prop :=
  ∀ n, P8555424393695498.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P8788766771198368831

`A110654(A190054(n+1)-A047282(n+1))+A047282(n+1)`
-/

namespace A190007.P8788766771198368831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A190054 (n + 1) - A047282 (n + 1)).toNat + A047282 (n + 1)

end

end A190007.P8788766771198368831

namespace A190007

/-- `A110654(A190054(n+1)-A047282(n+1))+A047282(n+1)` -/
def P8788766771198368831.Spec : Prop :=
  ∀ n, P8788766771198368831.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P9878805712887566050

`A065033(A190054(n+1)-A047282(n+1))+A047282(n+1)`
-/

namespace A190007.P9878805712887566050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190054 (n + 1) - A047282 (n + 1)).toNat + A047282 (n + 1)

end

end A190007.P9878805712887566050

namespace A190007

/-- `A065033(A190054(n+1)-A047282(n+1))+A047282(n+1)` -/
def P9878805712887566050.Spec : Prop :=
  ∀ n, P9878805712887566050.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P5633219948434983423

`A065033(A190054(n+1)+A047282(n+1))`
-/

namespace A190007.P5633219948434983423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190054 (n + 1) + A047282 (n + 1)).toNat

end

end A190007.P5633219948434983423

namespace A190007

/-- `A065033(A190054(n+1)+A047282(n+1))` -/
def P5633219948434983423.Spec : Prop :=
  ∀ n, P5633219948434983423.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P13380500195287696130

`A110654(A190054(n+1)+A047282(n+1))`
-/

namespace A190007.P13380500195287696130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A190054 (n + 1) + A047282 (n + 1)).toNat

end

end A190007.P13380500195287696130

namespace A190007

/-- `A110654(A190054(n+1)+A047282(n+1))` -/
def P13380500195287696130.Spec : Prop :=
  ∀ n, P13380500195287696130.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P4592583831274888753

`A002264(A182778(2*(n+1)))+A002264(n+1)`
-/

namespace A190007.P4592583831274888753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A182778 (2 * (n + 1))).toNat + A002264 (n + 1)

end

end A190007.P4592583831274888753

namespace A190007

/-- `A002264(A182778(2*(n+1)))+A002264(n+1)` -/
def P4592583831274888753.Spec : Prop :=
  ∀ n, P4592583831274888753.a n = A190007 (n + 1)

end A190007

/-! ## A190007.P18378264378354012172

`A097337(2*(n+1))+A008615(A017017(2*n+1))`
-/

namespace A190007.P18378264378354012172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (2 * (n + 1)) + A008615 (A017017 (2 * n + 1)).toNat

end

end A190007.P18378264378354012172

namespace A190007

/-- `A097337(2*(n+1))+A008615(A017017(2*n+1))` -/
def P18378264378354012172.Spec : Prop :=
  ∀ n, P18378264378354012172.a n = A190007 (n + 1)

end A190007

/-!
# A190008: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190008, the canonical program `A190008.P15330482503549292457` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190008 has offset 1).

The definition of A190008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190008.P15330482503549292457

`A047293(n+1)+A008619(A022838(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190008

/-- `A047293(n+1)+A008619(A022838(n+1))` -/
def P15330482503549292457.Spec : Prop :=
  ∀ n, P15330482503549292457.a n = A190008 (n + 1)

theorem P15330482503549292457.correct : P15330482503549292457.Spec := by
  intro n
  simp only [A190008, Nat.add_sub_cancel]

end A190008

/-! ## A190008.P16792502221461752759

`A190055(n+1)-A110654(A022838(n+1))`
-/

namespace A190008.P16792502221461752759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190055 (n + 1) - A110654 (A022838 (n + 1)).toNat

end

end A190008.P16792502221461752759

namespace A190008

/-- `A190055(n+1)-A110654(A022838(n+1))` -/
def P16792502221461752759.Spec : Prop :=
  ∀ n, P16792502221461752759.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P6872977232849835724

`∑[Δ[A172475(A172475(n)+n)]+1]`
-/

namespace A190008.P6872977232849835724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A172475 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190008.P6872977232849835724

namespace A190008

/-- `∑[Δ[A172475(A172475(n)+n)]+1]` -/
def P6872977232849835724.Spec : Prop :=
  ∀ n, P6872977232849835724.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P7187403062203419967

`A172475(A172475(n+1)+n+1)+n+1`
-/

namespace A190008.P7187403062203419967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A172475 (n + 1) + (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A190008.P7187403062203419967

namespace A190008

/-- `A172475(A172475(n+1)+n+1)+n+1` -/
def P7187403062203419967.Spec : Prop :=
  ∀ n, P7187403062203419967.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P7146496365871355984

`A047293(n+1)+A008621(2*A022838(n+1))`
-/

namespace A190008.P7146496365871355984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1) + A008621 (2 * A022838 (n + 1)).toNat

end

end A190008.P7146496365871355984

namespace A190008

/-- `A047293(n+1)+A008621(2*A022838(n+1))` -/
def P7146496365871355984.Spec : Prop :=
  ∀ n, P7146496365871355984.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P11662209924187950924

`A004526(A190334(n+1)-2*A008621(n))`
-/

namespace A190008.P11662209924187950924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190334 (n + 1) - 2 * A008621 n).toNat

end

end A190008.P11662209924187950924

namespace A190008

/-- `A004526(A190334(n+1)-2*A008621(n))` -/
def P11662209924187950924.Spec : Prop :=
  ∀ n, P11662209924187950924.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P6435635254201016520

`A004526(A190334(n+1)-A008621(n)-A008621(n))`
-/

namespace A190008.P6435635254201016520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190334 (n + 1) - A008621 n - A008621 n).toNat

end

end A190008.P6435635254201016520

namespace A190008

/-- `A004526(A190334(n+1)-A008621(n)-A008621(n))` -/
def P6435635254201016520.Spec : Prop :=
  ∀ n, P6435635254201016520.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P6618795160191955663

`A004526(A190334(n+1))-A008621(n)`
-/

namespace A190008.P6618795160191955663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190334 (n + 1)).toNat - A008621 n

end

end A190008.P6618795160191955663

namespace A190008

/-- `A004526(A190334(n+1))-A008621(n)` -/
def P6618795160191955663.Spec : Prop :=
  ∀ n, P6618795160191955663.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P16352751886241285229

`A004526(A190334(n+1))-A008619(A004526(n))`
-/

namespace A190008.P16352751886241285229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190334 (n + 1)).toNat - A008619 (A004526 n).toNat

end

end A190008.P16352751886241285229

namespace A190008

/-- `A004526(A190334(n+1))-A008619(A004526(n))` -/
def P16352751886241285229.Spec : Prop :=
  ∀ n, P16352751886241285229.a n = A190008 (n + 1)

end A190008

/-! ## A190008.P16585799038345829247

`A008619(A190334(n+1))-A008619(A008619(n)+1)`
-/

namespace A190008.P16585799038345829247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A190334 (n + 1)).toNat - A008619 (A008619 n + 1).toNat

end

end A190008.P16585799038345829247

namespace A190008

/-- `A008619(A190334(n+1))-A008619(A008619(n)+1)` -/
def P16585799038345829247.Spec : Prop :=
  ∀ n, P16585799038345829247.a n = A190008 (n + 1)

end A190008

/-!
# A190009: E.g.f.: exp(tan(x) + tan(x)^2).

The programs for A190009, there is no canonical definition to state claims against.
-/

/-! ## A190009.P15410000263270550237

`A324699(round(n²^(n/5)))`
-/

namespace A190009.P15410000263270550237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (SequenceMachineLib.roundAway ((n ^ 2 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat

end

end A190009.P15410000263270550237

/-! ## A190009.P16480354083996630631

`A306719(round(n²^(n/5)))-1`
-/

namespace A190009.P16480354083996630631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306719 (SequenceMachineLib.roundAway ((n ^ 2 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat - 1

end

end A190009.P16480354083996630631

/-!
# A190010: E.g.f. exp(tan(x)+tan(x)^2+tan(x)^3).

The programs for A190010, there is no canonical definition to state claims against.
-/

/-! ## A190010.P17145100487688043874

`A002632(n+1)-gcd(4, n)%4`
-/

namespace A190010.P17145100487688043874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002632 (n + 1) - ((Nat.gcd 4 n % 4 : ℕ) : ℤ)

end

end A190010.P17145100487688043874

/-! ## A190010.P10826940280876122718

`A022290(A351013(∑[n]))`
-/

namespace A190010.P10826940280876122718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A351013 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190010.P10826940280876122718

/-!
# A190011: Numbers with prime factorization pq^3r^5.

The programs for A190011, there is no canonical definition to state claims against.
-/

/-! ## A190011.P15863097212772158910

`∩[A046312(n+1), A175754(n+1)]`
-/

namespace A190011.P15863097212772158910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190011.P15863097212772158910

/-! ## A190011.P12909345305737497548

`∩[A079712(n+1), A175754(n+1)]`
-/

namespace A190011.P12909345305737497548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190011.P12909345305737497548

/-! ## A190011.P1185760629734127588

`∩[A175754(n+1), A195090(n+1)]`
-/

namespace A190011.P1185760629734127588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190011.P1185760629734127588

/-! ## A190011.P348766080896506709

`∩[A008586(A046308(n+1)), A175754(n+4)]`
-/

namespace A190011.P348766080896506709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A046308 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190011.P348766080896506709

/-!
# A190012: Numbers with prime factorization pq^4r^4.

The programs for A190012, there is no canonical definition to state claims against.
-/

/-! ## A190012.P6107374636062057705

`∩[A175756(n+1), A386805(n+1)]`
-/

namespace A190012.P6107374636062057705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190012.P6107374636062057705

/-! ## A190012.P10885369889879542787

`∩[A175756(n+1), A195090(n+1)]`
-/

namespace A190012.P10885369889879542787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190012.P10885369889879542787

/-! ## A190012.P15440024294647677301

`∩[A046312(n+1), A175756(n+1)]`
-/

namespace A190012.P15440024294647677301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190012.P15440024294647677301

/-! ## A190012.P5423246729145021131

`∩[A046312(n+1), A386805(n+1)]`
-/

namespace A190012.P5423246729145021131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190012.P5423246729145021131

/-! ## A190012.P15738013998297177579

`A175756(∑[A138904(4*n+5)])`
-/

namespace A190012.P15738013998297177579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175756 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190012.P15738013998297177579

/-!
# A190013: An optimal 2-radius sequence over a (2p)-element alphabet for p = 5.

The programs for A190013, there is no canonical definition to state claims against.
-/

/-! ## A190013.P12377281750465811585

`eq[A034888(n), A242681(n+2)]%5`
-/

namespace A190013.P12377281750465811585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242681 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 5

end

end A190013.P12377281750465811585

/-! ## A190013.P9260850370160189485

`eq[n%2, A324732(A094958(n+1))]%5`
-/

namespace A190013.P9260850370160189485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (A094958 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A190013.P9260850370160189485

/-! ## A190013.P5300065063999290929

`∑[A025857(A088726(n))]%8`
-/

namespace A190013.P5300065063999290929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A088726 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 8

end

end A190013.P5300065063999290929

/-!
# A190014: a(0)=0, a(1)=1, if n = (n-1)', then a(n)=0 otherwise a(n)=2*a((n-1)'), where n' is the arithmetic derivative of n.

The programs for A190014, there is no canonical definition to state claims against.
-/

/-! ## A190014.P3441234737573142276

`∑{d}[A049136(n+1)-A074712(n+1), and(1, #)]`
-/

namespace A190014.P3441234737573142276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049136 (n + 1) - A074712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A190014.P3441234737573142276

/-! ## A190014.P5530436848728022464

`A022851(A259376(n+1))%A022869(n+1)`
-/

namespace A190014.P5530436848728022464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022851 (A259376 (n + 1)).toNat) (A022869 (n + 1))

end

end A190014.P5530436848728022464

/-!
# A190015: Triangle T(n,k) for solving differential equation A'(x)=G(A(x)), G(0)!=0.

The programs for A190015, there is no canonical definition to state claims against.
-/

/-! ## A190015.P3294697397881864855

`A134133(n)*A355777(n)`
-/

namespace A190015.P3294697397881864855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134133 n * A355777 n

end

end A190015.P3294697397881864855

/-! ## A190015.P5493373976449311021

`A385342(A017988(n))`
-/

namespace A190015.P5493373976449311021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385342 (A017988 n).toNat

end

end A190015.P5493373976449311021

/-! ## A190015.P9989007491256110692

`A087653(A148246(n+1))`
-/

namespace A190015.P9989007491256110692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087653 (A148246 (n + 1)).toNat

end

end A190015.P9989007491256110692

/-! ## A190015.P10955648959569872398

`A236689(A157402(n+1))`
-/

namespace A190015.P10955648959569872398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236689 (A157402 (n + 1)).toNat

end

end A190015.P10955648959569872398

/-! ## A190015.P4819546546416503761

`A000005(A062962(n*A077042(n)))`
-/

namespace A190015.P4819546546416503761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062962 ((n : ℤ) * A077042 n).toNat).toNat

end

end A190015.P4819546546416503761

/-!
# A190016: Numbers 1 through 10000 sorted lexicographically in decimal representation.

The programs for A190016, there is no canonical definition to state claims against.
-/

/-! ## A190016.P17948901000024420991

`A276596(ceil(char[2]+(n/2)²)+1)`
-/

namespace A190016.P17948901000024420991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276596 (⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉ + 1).toNat

end

end A190016.P17948901000024420991

/-! ## A190016.P13299341927618523779

`∑{digits}[A054168(n), A276596(#)]`
-/

namespace A190016.P13299341927618523779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276596 x).sum

end

end A190016.P13299341927618523779

/-!
# A190019: Number of acute triangles on an n X n grid (or geoboard).

The programs for A190019, there is no canonical definition to state claims against.
-/

/-! ## A190019.P18024759779601220610

`A045996(n+1)-A077435(n+1)-A190020(n+1)`
-/

namespace A190019.P18024759779601220610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - A077435 (n + 1) - A190020 (n + 1)

end

end A190019.P18024759779601220610

/-! ## A190019.P16558205916220801885

`xor(A302829(n+1), A302829(A000712(n)))`
-/

namespace A190019.P16558205916220801885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A302829 (n + 1)) (A302829 (A000712 n).toNat)

end

end A190019.P16558205916220801885

/-!
# A190020: Number of obtuse triangles on an n X n grid (or geoboard).

The programs for A190020, there is no canonical definition to state claims against.
-/

/-! ## A190020.P10335516218700516320

`A045996(n+1)-A077435(n+1)-A190019(n+1)`
-/

namespace A190020.P10335516218700516320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - A077435 (n + 1) - A190019 (n + 1)

end

end A190020.P10335516218700516320

/-!
# A190021: Number of acute triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A190021, there is no canonical definition to state claims against.
-/

/-! ## A190021.P15683244918502998585

`A028419(n)-A189979(n+1)-A190022(n+1)`
-/

namespace A190021.P15683244918502998585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - A189979 (n + 1) - A190022 (n + 1)

end

end A190021.P15683244918502998585

/-! ## A190021.P4763997680307497258

`A190313(n+1)+A189978(n+1)-(A190022(n+1)+A189979(n+1))`
-/

namespace A190021.P4763997680307497258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A189978 (n + 1) - (A190022 (n + 1) + A189979 (n + 1))

end

end A190021.P4763997680307497258

/-! ## A190021.P12161325806720960227

`(A272053(n)+A189978(n+1))/3-(A190022(n+1)+A189979(n+1))`
-/

namespace A190021.P12161325806720960227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n + A189978 (n + 1) : ℚ) / 3 - (A190022 (n + 1) + A189979 (n + 1) : ℚ)

end

end A190021.P12161325806720960227

/-!
# A190022: Number of obtuse triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A190022, there is no canonical definition to state claims against.
-/

/-! ## A190022.P13722949369878874124

`A028419(n)-A190021(n+1)-A189979(n+1)`
-/

namespace A190022.P13722949369878874124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - A190021 (n + 1) - A189979 (n + 1)

end

end A190022.P13722949369878874124

/-! ## A190022.P549926348840874553

`A190313(n+1)+A189978(n+1)-(A190021(n+1)+A189979(n+1))`
-/

namespace A190022.P549926348840874553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A189978 (n + 1) - (A190021 (n + 1) + A189979 (n + 1))

end

end A190022.P549926348840874553

/-! ## A190022.P17728016569750008537

`(A272053(n)+A189978(n+1))/3-(A190021(n+1)+A189979(n+1))`
-/

namespace A190022.P17728016569750008537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n + A189978 (n + 1) : ℚ) / 3 - (A190021 (n + 1) + A189979 (n + 1) : ℚ)

end

end A190022.P17728016569750008537

/-! ## A190022.P18059265119483263330

`A086602(n)-A000999(A086591(n))`
-/

namespace A190022.P18059265119483263330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n - A000999 (A086591 n).toNat

end

end A190022.P18059265119483263330

/-!
# A190024: Number of (n+2)X(n+2) binary arrays with every 3X3 subblock commuting with each horizontal and vertical neighbor 3X3 subblock.

The programs for A190024, there is no canonical definition to state claims against.
-/

/-! ## A190024.P1686383610022228805

`A190033(∑[4*n]+1)`
-/

namespace A190024.P1686383610022228805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190024.P1686383610022228805

/-! ## A190024.P12352377366364312257

`abs(A190033((n+1)²+n²)-1)+1`
-/

namespace A190024.P12352377366364312257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190033 ((n + 1) ^ 2 + n ^ 2) - 1| + 1

end

end A190024.P12352377366364312257

/-! ## A190024.P17275002886862237749

`or(char[1], A190033(A001844(n)))`
-/

namespace A190024.P17275002886862237749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190033 (A001844 n).toNat)

end

end A190024.P17275002886862237749

/-! ## A190024.P8907076990093269006

`A033999(n)²*A190033(A001844(n))`
-/

namespace A190024.P8907076990093269006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A190033 (A001844 n).toNat

end

end A190024.P8907076990093269006

/-! ## A190024.P13657617026846433395

`A007318(∑[n])*A190033(A001844(n))`
-/

namespace A190024.P13657617026846433395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A190033 (A001844 n).toNat

end

end A190024.P13657617026846433395

/-! ## A190024.P13111034487441006195

`char[A004442(n)]*A190033(A001844(n))`
-/

namespace A190024.P13111034487441006195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A190033 (A001844 n).toNat

end

end A190024.P13111034487441006195

/-! ## A190024.P5328737533699279856

`A190033(A001844(n))+4%A000034(n)`
-/

namespace A190024.P5328737533699279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A001844 n).toNat + Int.tmod 4 (A000034 n)

end

end A190024.P5328737533699279856

/-! ## A190024.P6914944969643564902

`A190033(A001844(n))/A007318(C(n, 2))`
-/

namespace A190024.P6914944969643564902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190033 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A190024.P6914944969643564902

/-! ## A190024.P15084172140465715803

`A190033(A001844(n))+A008683(4*(n+4))`
-/

namespace A190024.P15084172140465715803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A001844 n).toNat + A008683 (4 * (n + 4))

end

end A190024.P15084172140465715803

/-! ## A190024.P2336858732491087000

`A349916(A000040(n+1))+A190033((n+1)²+n²)`
-/

namespace A190024.P2336858732491087000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (A000040 (n + 1)).toNat + A190033 ((n + 1) ^ 2 + n ^ 2)

end

end A190024.P2336858732491087000

/-!
# A190025: Number of (n+2) X 3 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190025, there is no canonical definition to state claims against.
-/

/-! ## A190025.P18079594490659718997

`A190033(∑[n]+1)`
-/

namespace A190025.P18079594490659718997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190025.P18079594490659718997

/-! ## A190025.P5430032048033826949

`abs(2-A190033(C(n, 2)+1+n))+2`
-/

namespace A190025.P5430032048033826949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A190033 (Nat.choose n 2 + 1 + n)| + 2

end

end A190025.P5430032048033826949

/-! ## A190025.P11747073425073627494

`or(char[3], A190033(A000124(n)))`
-/

namespace A190025.P11747073425073627494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190033 (A000124 n).toNat)

end

end A190025.P11747073425073627494

/-! ## A190025.P2490252249719321345

`abs(A190033(A000217(n)+1)-1)+1`
-/

namespace A190025.P2490252249719321345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190033 (A000217 n + 1).toNat - 1| + 1

end

end A190025.P2490252249719321345

/-! ## A190025.P11172813500357797342

`abs(1-A190033(A152947(n+1)+n))+1`
-/

namespace A190025.P11172813500357797342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A190033 (A152947 (n + 1) + (n : ℤ)).toNat| + 1

end

end A190025.P11172813500357797342

/-! ## A190025.P7892092674305388575

`lcm(A033999(n), A190033(A000124(n)))`
-/

namespace A190025.P7892092674305388575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A190033 (A000124 n).toNat)

end

end A190025.P7892092674305388575

/-! ## A190025.P12973648954384024433

`A007318(∑[n])*A190033(A000124(n))`
-/

namespace A190025.P12973648954384024433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A190033 (A000124 n).toNat

end

end A190025.P12973648954384024433

/-! ## A190025.P4044786214958724381

`A190033(A000124(n))+A000007(n+1)`
-/

namespace A190025.P4044786214958724381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 n).toNat + A000007 (n + 1)

end

end A190025.P4044786214958724381

/-! ## A190025.P18210031379816380772

`A190033(A000124(n))+A000038(n+1)`
-/

namespace A190025.P18210031379816380772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 n).toNat + A000038 (n + 1)

end

end A190025.P18210031379816380772

/-! ## A190025.P9812912782233168568

`A190033(A000124(n))+A000035(2*n)`
-/

namespace A190025.P9812912782233168568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 n).toNat + A000035 (2 * n)

end

end A190025.P9812912782233168568

/-! ## A190025.P18099929694768543448

`A005131(3*n)*A190033(A000124(n))`
-/

namespace A190025.P18099929694768543448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (3 * n) * A190033 (A000124 n).toNat

end

end A190025.P18099929694768543448

/-! ## A190025.P15200101638841845116

`A190033(A000124(n))+A001621(n)%2`
-/

namespace A190025.P15200101638841845116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 n).toNat + Int.tmod (A001621 n) 2

end

end A190025.P15200101638841845116

/-! ## A190025.P17438112001023204891

`A190033(A000124(n))/A007318(C(3, n))`
-/

namespace A190025.P17438112001023204891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190033 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A190025.P17438112001023204891

/-! ## A190025.P2272775364001371627

`ceil(1/A007318(n))*A190033(A000124(n))`
-/

namespace A190025.P2272775364001371627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A190033 (A000124 n).toNat

end

end A190025.P2272775364001371627

/-! ## A190025.P7324218811042647570

`A190033(A000124(n))+A008683(4*(n+1))`
-/

namespace A190025.P7324218811042647570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A190025.P7324218811042647570

/-! ## A190025.P2069635278139510643

`ceil(2/A000040(n+1))*A190033(A000124(n))`
-/

namespace A190025.P2069635278139510643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A000040 (n + 1) : ℚ)⌉ * A190033 (A000124 n).toNat

end

end A190025.P2069635278139510643

/-! ## A190025.P196323113716294723

`val(A005117(n+2), 3)!*A190033(A000124(n))`
-/

namespace A190025.P196323113716294723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) * A190033 (A000124 n).toNat

end

end A190025.P196323113716294723

/-! ## A190025.P2849103828258492107

`A000010(2-C(2, n+2))*A190033(A000124(n))`
-/

namespace A190025.P2849103828258492107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 - Nat.choose 2 (n + 2)) * A190033 (A000124 n).toNat

end

end A190025.P2849103828258492107

/-!
# A190026: Number of (n+2) X 4 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190026, there is no canonical definition to state claims against.
-/

/-! ## A190026.P10699801592479603851

`A190033(∑[n+1]+2)`
-/

namespace A190026.P10699801592479603851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A190026.P10699801592479603851

/-! ## A190026.P2126159641678624855

`or(char[1], A190033(A152948(n+3)))`
-/

namespace A190026.P2126159641678624855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190033 (A152948 (n + 3)).toNat)

end

end A190026.P2126159641678624855

/-! ## A190026.P7351766660729288064

`abs(1-A190033(A133263(n)+1+n))+1`
-/

namespace A190026.P7351766660729288064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A190033 (A133263 n + 1 + (n : ℤ)).toNat| + 1

end

end A190026.P7351766660729288064

/-! ## A190026.P16436815228851449516

`A190033(A152948(n+3))+char[A017382(n)]`
-/

namespace A190026.P16436815228851449516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017382 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190026.P16436815228851449516

/-! ## A190026.P1956570083800477861

`A190033(A152948(n+3))+A000007(n+1)`
-/

namespace A190026.P1956570083800477861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + A000007 (n + 1)

end

end A190026.P1956570083800477861

/-! ## A190026.P7940865763765238927

`A190033(A152948(n+3))+A000038(n+1)`
-/

namespace A190026.P7940865763765238927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + A000038 (n + 1)

end

end A190026.P7940865763765238927

/-! ## A190026.P17282905945173975861

`A190033(A152948(n+3))%A190028(n+1)`
-/

namespace A190026.P17282905945173975861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190033 (A152948 (n + 3)).toNat) (A190028 (n + 1))

end

end A190026.P17282905945173975861

/-! ## A190026.P16099178804660675766

`A007318(C(2, n))*A190033(A152948(n+3))`
-/

namespace A190026.P16099178804660675766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190033 (A152948 (n + 3)).toNat

end

end A190026.P16099178804660675766

/-! ## A190026.P13815009076713333959

`A190033(A152948(n+3))^A007318(and(1, -n))`
-/

namespace A190026.P13815009076713333959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190033 (A152948 (n + 3)).toNat : ℚ) ^ (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℤ)

end

end A190026.P13815009076713333959

/-! ## A190026.P11981493701329465497

`A190033(A152948(n+3))+char[A001837(n+1)]`
-/

namespace A190026.P11981493701329465497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001837 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190026.P11981493701329465497

/-! ## A190026.P1220397213940178517

`A190033(A152948(n+3))+char[A031556(n+1)]`
-/

namespace A190026.P1220397213940178517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031556 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190026.P1220397213940178517

/-! ## A190026.P14277504665889081651

`A190033(A152948(n+3))+A008683(4*(n+1))`
-/

namespace A190026.P14277504665889081651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A190026.P14277504665889081651

/-! ## A190026.P3355751516577132504

`A014963(6*(n+1))*A190033(A152948(n+3))`
-/

namespace A190026.P3355751516577132504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A190033 (A152948 (n + 3)).toNat

end

end A190026.P3355751516577132504

/-! ## A190026.P10456921329920847888

`A000108(C(2, n+2))*A190033(A152948(n+3))`
-/

namespace A190026.P10456921329920847888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A190033 (A152948 (n + 3)).toNat

end

end A190026.P10456921329920847888

/-! ## A190026.P11619230047883755596

`A000041(C(2, 2*n))*A190033(A152948(n+3))`
-/

namespace A190026.P11619230047883755596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A190033 (A152948 (n + 3)).toNat

end

end A190026.P11619230047883755596

/-! ## A190026.P12435442674631671191

`A000045(gcd(n, n+1))*A190033(A152948(n+3))`
-/

namespace A190026.P12435442674631671191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A190033 (A152948 (n + 3)).toNat

end

end A190026.P12435442674631671191

/-! ## A190026.P3977483633877620684

`A000010(-or(n, -2))*A190033(A152948(n+3))`
-/

namespace A190026.P3977483633877620684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.lor (n : ℤ) (-2)).toNat * A190033 (A152948 (n + 3)).toNat

end

end A190026.P3977483633877620684

/-! ## A190026.P1477338133551096699

`A190033(A152948(n+3))+val(n+1, A000040(n+1))`
-/

namespace A190026.P1477338133551096699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A152948 (n + 3)).toNat + (SequenceMachineLib.valuation (n + 1) (A000040 (n + 1)).toNat : ℤ)

end

end A190026.P1477338133551096699

/-! ## A190026.P17154128437245640490

`A001221(A003147(n+1))*A190033(A152948(n+3))`
-/

namespace A190026.P17154128437245640490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003147 (n + 1)).toNat * A190033 (A152948 (n + 3)).toNat

end

end A190026.P17154128437245640490

/-!
# A190027: Number of (n+2) X 5 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190027, there is no canonical definition to state claims against.
-/

/-! ## A190027.P8783080859850473939

`A190033(∑[n+2]+4)`
-/

namespace A190027.P8783080859850473939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A190027.P8783080859850473939

/-! ## A190027.P12550858508191209104

`and(-1, A190033(A167614(n+1)))`
-/

namespace A190027.P12550858508191209104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A190033 (A167614 (n + 1)).toNat)

end

end A190027.P12550858508191209104

/-! ## A190027.P803071433940848907

`abs(1-A190033(A055998(n)+6))+1`
-/

namespace A190027.P803071433940848907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A190033 (A055998 n + 6).toNat| + 1

end

end A190027.P803071433940848907

/-! ## A190027.P18063629709925549186

`lcm((-1)^n, A190033(A046691(n)+7))`
-/

namespace A190027.P18063629709925549186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A190033 (A046691 n + 7).toNat)

end

end A190027.P18063629709925549186

/-! ## A190027.P6757451705941544338

`lcm(A054977(n), A190033(A167614(n+1)))`
-/

namespace A190027.P6757451705941544338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A190033 (A167614 (n + 1)).toNat)

end

end A190027.P6757451705941544338

/-! ## A190027.P16249543254554645765

`A190033(A167614(n+1))+A000007(n+1)`
-/

namespace A190027.P16249543254554645765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A190027.P16249543254554645765

/-! ## A190027.P5061200806735837988

`A190033(A055998(n)+6)+A000007(n+1)`
-/

namespace A190027.P5061200806735837988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A055998 n + 6).toNat + A000007 (n + 1)

end

end A190027.P5061200806735837988

/-! ## A190027.P1602904636018241968

`A190033(A167614(n+1))%A190028(n+1)`
-/

namespace A190027.P1602904636018241968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190033 (A167614 (n + 1)).toNat) (A190028 (n + 1))

end

end A190027.P1602904636018241968

/-! ## A190027.P16985282675275985362

`A190033(A055998(n)+6)%A190032(n+1)`
-/

namespace A190027.P16985282675275985362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190033 (A055998 n + 6).toNat) (A190032 (n + 1))

end

end A190027.P16985282675275985362

/-! ## A190027.P11353444556495372096

`A190033(A046691(n)+7)%A190025(n+1)`
-/

namespace A190027.P11353444556495372096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190033 (A046691 n + 7).toNat) (A190025 (n + 1))

end

end A190027.P11353444556495372096

/-! ## A190027.P6396179942266876388

`A007318(C(2, n))*A190033(A167614(n+1))`
-/

namespace A190027.P6396179942266876388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190033 (A167614 (n + 1)).toNat

end

end A190027.P6396179942266876388

/-! ## A190027.P16917150428946787521

`A007318(C(2, n))*A190033(A046691(n)+7)`
-/

namespace A190027.P16917150428946787521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190033 (A046691 n + 7).toNat

end

end A190027.P16917150428946787521

/-! ## A190027.P9140870440672803019

`A000045(C(2, n)!)*A190033(A055998(n)+6)`
-/

namespace A190027.P9140870440672803019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (Nat.choose 2 n)) * A190033 (A055998 n + 6).toNat

end

end A190027.P9140870440672803019

/-! ## A190027.P16447438039938166428

`A000041(C(n, n²))*A190033(A167614(n+1))`
-/

namespace A190027.P16447438039938166428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A190033 (A167614 (n + 1)).toNat

end

end A190027.P16447438039938166428

/-! ## A190027.P4564145296780099820

`A190033(A167614(n+1))+A008683(4*(n+2))`
-/

namespace A190027.P4564145296780099820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167614 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A190027.P4564145296780099820

/-! ## A190027.P14027930247272936575

`A014963(6*(n+2))*A190033(A167614(n+1))`
-/

namespace A190027.P14027930247272936575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A190033 (A167614 (n + 1)).toNat

end

end A190027.P14027930247272936575

/-! ## A190027.P9397328072550361866

`A190033(A046691(n)+7)+A008683(4*(n+1))`
-/

namespace A190027.P9397328072550361866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A046691 n + 7).toNat + A008683 (4 * (n + 1))

end

end A190027.P9397328072550361866

/-! ## A190027.P2335230820605814828

`A190033(A055998(n)+6)+A000122(A000040(n+2))`
-/

namespace A190027.P2335230820605814828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A055998 n + 6).toNat + A000122 (A000040 (n + 2)).toNat

end

end A190027.P2335230820605814828

/-!
# A190028: Number of (n+2) X 6 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190028, there is no canonical definition to state claims against.
-/

/-! ## A190028.P9728389140560013114

`A190033(∑[n+3]+7)`
-/

namespace A190028.P9728389140560013114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A190028.P9728389140560013114

/-! ## A190028.P1169326659217913043

`or(char[1], A190033(A052905(n)+9))`
-/

namespace A190028.P1169326659217913043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190033 (A052905 n + 9).toNat)

end

end A190028.P1169326659217913043

/-! ## A190028.P11073648604526208916

`or(char[1], A190033(A167614(n+2)+1))`
-/

namespace A190028.P11073648604526208916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190033 (A167614 (n + 2) + 1).toNat)

end

end A190028.P11073648604526208916

/-! ## A190028.P7227715844760945419

`char[xor(1, n)]*A190033(A000124(n+3)+3)`
-/

namespace A190028.P7227715844760945419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A190033 (A000124 (n + 3) + 3).toNat

end

end A190028.P7227715844760945419

/-! ## A190028.P11064770620031321089

`char[A001057(n)]*A190033(A052905(n)+9)`
-/

namespace A190028.P11064770620031321089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A190033 (A052905 n + 9).toNat

end

end A190028.P11064770620031321089

/-! ## A190028.P913865075015212260

`A007318(C(2, n))*A190033(A052905(n)+9)`
-/

namespace A190028.P913865075015212260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190033 (A052905 n + 9).toNat

end

end A190028.P913865075015212260

/-! ## A190028.P4216623498560426969

`A190033(A052905(n)+9)+A008683(4*(n+1))`
-/

namespace A190028.P4216623498560426969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A052905 n + 9).toNat + A008683 (4 * (n + 1))

end

end A190028.P4216623498560426969

/-! ## A190028.P5020194742395879053

`A000041(and(4, -n)/4)*A190033(A052905(n)+9)`
-/

namespace A190028.P5020194742395879053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.land 4 (-(n : ℤ)) : ℚ) / 4)).toNat * A190033 (A052905 n + 9).toNat

end

end A190028.P5020194742395879053

/-! ## A190028.P17548697977344168332

`A190033(Δ[A008778(n)]+6)+A008683(4*(n+1))`
-/

namespace A190028.P17548697977344168332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (f1 (n + 1) - f1 n + 6).toNat + A008683 (4 * (n + 1))

end

end A190028.P17548697977344168332

/-! ## A190028.P15277293309504654202

`A014963(C(n+4, 2))*A190033(A167614(n+2)+1)`
-/

namespace A190028.P15277293309504654202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 4) 2) * A190033 (A167614 (n + 2) + 1).toNat

end

end A190028.P15277293309504654202

/-!
# A190029: Number of (n+2) X 7 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190029, there is no canonical definition to state claims against.
-/

/-! ## A190029.P1570472121088108053

`A190033(∑[n+4]+11)`
-/

namespace A190029.P1570472121088108053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A190029.P1570472121088108053

/-! ## A190029.P14984496069106432403

`A190033(A374005(n+1))+A000007(3*n+1)`
-/

namespace A190029.P14984496069106432403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A374005 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A190029.P14984496069106432403

/-! ## A190029.P5533836622441156933

`A091247(2*(n+2))*A190033(A052905(n+2)+1)`
-/

namespace A190029.P5533836622441156933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 2)) * A190033 (A052905 (n + 2) + 1).toNat

end

end A190029.P5533836622441156933

/-! ## A190029.P17170159669578476101

`A190033(A052905(n+2)+1)*A233285(3*n+2)`
-/

namespace A190029.P17170159669578476101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A052905 (n + 2) + 1).toNat * A233285 (3 * n + 2)

end

end A190029.P17170159669578476101

/-!
# A190030: Number of (n+2) X 8 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190030, there is no canonical definition to state claims against.
-/

/-! ## A190030.P9853600523009485328

`A190033(C(n+6, 2)+6)`
-/

namespace A190030.P9853600523009485328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (Nat.choose (n + 6) 2 + 6)

end

end A190030.P9853600523009485328

/-! ## A190030.P16058243299910627000

`A190033(A056115(n)+21)`
-/

namespace A190030.P16058243299910627000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A056115 n + 21).toNat

end

end A190030.P16058243299910627000

/-! ## A190030.P12367652181754823918

`A190033(A167499(n+4)+1)`
-/

namespace A190030.P12367652181754823918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167499 (n + 4) + 1).toNat

end

end A190030.P12367652181754823918

/-! ## A190030.P644335088584649278

`A190033(A167487(n+4)-1)`
-/

namespace A190030.P644335088584649278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167487 (n + 4) - 1).toNat

end

end A190030.P644335088584649278

/-! ## A190030.P12473424120619165433

`A190033(A167614(n+4)+3)`
-/

namespace A190030.P12473424120619165433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167614 (n + 4) + 3).toNat

end

end A190030.P12473424120619165433

/-! ## A190030.P13168068004960307002

`A190033(A000124(n+5)+5)`
-/

namespace A190030.P13168068004960307002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 (n + 5) + 5).toNat

end

end A190030.P13168068004960307002

/-! ## A190030.P8104196906195026686

`A190033(A000096(n+4)+7)`
-/

namespace A190030.P8104196906195026686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000096 (n + 4) + 7).toNat

end

end A190030.P8104196906195026686

/-! ## A190030.P8183856878674478981

`A190033(A000217(n+5)+6)`
-/

namespace A190030.P8183856878674478981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000217 (n + 5) + 6).toNat

end

end A190030.P8183856878674478981

/-! ## A190030.P4197605700393144317

`A190033(A034856(n+4)+8)`
-/

namespace A190030.P4197605700393144317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A034856 (n + 4) + 8).toNat

end

end A190030.P4197605700393144317

/-! ## A190030.P18222687842082719173

`A190033(A046691(n+3)+10)`
-/

namespace A190030.P18222687842082719173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A046691 (n + 3) + 10).toNat

end

end A190030.P18222687842082719173

/-!
# A190031: Number of (n+2) X 9 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190031, there is no canonical definition to state claims against.
-/

/-! ## A190031.P14477381451230924821

`A190033(A167487(n+5))`
-/

namespace A190031.P14477381451230924821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167487 (n + 5)).toNat

end

end A190031.P14477381451230924821

/-! ## A190031.P10729848302232098005

`A190033(A167499(n+5)+2)`
-/

namespace A190031.P10729848302232098005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167499 (n + 5) + 2).toNat

end

end A190031.P10729848302232098005

/-! ## A190031.P7820749760543079170

`A190033(A167614(n+5)+4)`
-/

namespace A190031.P7820749760543079170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167614 (n + 5) + 4).toNat

end

end A190031.P7820749760543079170

/-! ## A190031.P13162913929681442556

`A190033(A133263(n+6)+5)`
-/

namespace A190031.P13162913929681442556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A133263 (n + 6) + 5).toNat

end

end A190031.P13162913929681442556

/-! ## A190031.P1896117550137296020

`A190033(A000124(n+6)+6)`
-/

namespace A190031.P1896117550137296020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 (n + 6) + 6).toNat

end

end A190031.P1896117550137296020

/-! ## A190031.P11301699266948451631

`A190033(A000096(n+5)+8)`
-/

namespace A190031.P11301699266948451631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000096 (n + 5) + 8).toNat

end

end A190031.P11301699266948451631

/-! ## A190031.P8830770576853018685

`A190033(A000217(n+6)+7)`
-/

namespace A190031.P8830770576853018685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000217 (n + 6) + 7).toNat

end

end A190031.P8830770576853018685

/-! ## A190031.P1020391638198979286

`A190033(A027379(n+4)+10)`
-/

namespace A190031.P1020391638198979286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A027379 (n + 4) + 10).toNat

end

end A190031.P1020391638198979286

/-! ## A190031.P5282747130121576012

`A190033(A034856(n+5)+9)`
-/

namespace A190031.P5282747130121576012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A034856 (n + 5) + 9).toNat

end

end A190031.P5282747130121576012

/-! ## A190031.P3731442795638245699

`A190033(A055998(n+4)+10)`
-/

namespace A190031.P3731442795638245699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A055998 (n + 4) + 10).toNat

end

end A190031.P3731442795638245699

/-!
# A190032: Number of (n+2) X 10 binary arrays with every 3 X 3 subblock commuting with each horizontal and vertical neighbor 3 X 3 subblock.

The programs for A190032, there is no canonical definition to state claims against.
-/

/-! ## A190032.P192975542271178660

`A190033(A167487(n+6)+1)`
-/

namespace A190032.P192975542271178660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167487 (n + 6) + 1).toNat

end

end A190032.P192975542271178660

/-! ## A190032.P10860796357705361406

`A190033(A166136(n+6)+2)`
-/

namespace A190032.P10860796357705361406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A166136 (n + 6) + 2).toNat

end

end A190032.P10860796357705361406

/-! ## A190032.P17634435332248815815

`A190033(A167499(n+6)+3)`
-/

namespace A190032.P17634435332248815815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A167499 (n + 6) + 3).toNat

end

end A190032.P17634435332248815815

/-! ## A190032.P1645243830040412255

`A190033(A000124(n+7)+7)`
-/

namespace A190032.P1645243830040412255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000124 (n + 7) + 7).toNat

end

end A190032.P1645243830040412255

/-! ## A190032.P2450420844337027291

`A190033(A000096(n+6)+9)`
-/

namespace A190032.P2450420844337027291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000096 (n + 6) + 9).toNat

end

end A190032.P2450420844337027291

/-! ## A190032.P965488077382426150

`A190033(A000217(n+7)+8)`
-/

namespace A190032.P965488077382426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A000217 (n + 7) + 8).toNat

end

end A190032.P965488077382426150

/-! ## A190032.P15129436574655297275

`A190033(A161680(n+8)+8)`
-/

namespace A190032.P15129436574655297275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A161680 (n + 8) + 8).toNat

end

end A190032.P15129436574655297275

/-! ## A190032.P10331994219963760590

`A190033(A055999(n+6)-A005408(n+1))`
-/

namespace A190032.P10331994219963760590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A055999 (n + 6) - A005408 (n + 1)).toNat

end

end A190032.P10331994219963760590

/-! ## A190032.P1204880919178773455

`A190033(A374009(n+1))`
-/

namespace A190032.P1204880919178773455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A374009 (n + 1)).toNat

end

end A190032.P1204880919178773455

/-! ## A190032.P15156578567210991166

`A190033(A052905(n+5)-2)`
-/

namespace A190032.P15156578567210991166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190033 (A052905 (n + 5) - 2).toNat

end

end A190032.P15156578567210991166

/-!
# A190034: Number of nondecreasing arrangements of n+2 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190034, there is no canonical definition to state claims against.
-/

/-! ## A190034.P11194197245840137864

`A190041(∑[4*n]+1)`
-/

namespace A190034.P11194197245840137864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190034.P11194197245840137864

/-! ## A190034.P18204384692643605639

`or(char[3], A190041(A001844(n)))`
-/

namespace A190034.P18204384692643605639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190041 (A001844 n).toNat)

end

end A190034.P18204384692643605639

/-! ## A190034.P9056551407145715895

`A007318(∑[n])*A190041(A001844(n))`
-/

namespace A190034.P9056551407145715895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A190041 (A001844 n).toNat

end

end A190034.P9056551407145715895

/-! ## A190034.P16624922367490403483

`A060576(n+3)*A190041(A001844(n))`
-/

namespace A190034.P16624922367490403483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 3) * A190041 (A001844 n).toNat

end

end A190034.P16624922367490403483

/-! ## A190034.P18418751201325432610

`A190041(A001844(n))%A112430(n+1)`
-/

namespace A190034.P18418751201325432610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A001844 n).toNat) (A112430 (n + 1))

end

end A190034.P18418751201325432610

/-!
# A190035: Number of nondecreasing arrangements of n+2 numbers in 0..3 with the last equal to 3 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190035, the canonical program `A190035.P15015409366306645168` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190035 has offset 1).

The definition of A190035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190035.P15015409366306645168

`2*a(n-1)-a(n-2)` with `a(0)=5, a(1)=7, a(2)=10, a(3)=14`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190035

/-- `2*a(n-1)-a(n-2)` -/
def P15015409366306645168.Spec : Prop :=
  ∀ n, P15015409366306645168.a n = A190035 (n + 1)

theorem P15015409366306645168.correct : P15015409366306645168.Spec := by
  intro n
  simp only [A190035, Nat.add_sub_cancel]

end A190035

/-!
# A190036: Number of nondecreasing arrangements of n+2 numbers in 0..4 with the last equal to 4 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190036, the canonical program `A190036.P1238088429610944115` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190036 has offset 1).

The definition of A190036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190036.P1238088429610944115

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=7, a(1)=12, a(2)=18, a(3)=27, a(4)=39, a(5)=53`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190036

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1238088429610944115.Spec : Prop :=
  ∀ n, P1238088429610944115.a n = A190036 (n + 1)

theorem P1238088429610944115.correct : P1238088429610944115.Spec := by
  intro n
  simp only [A190036, Nat.add_sub_cancel]

end A190036

/-! ## A190036.P9794121179510628250

`A027379(floor(n-atan(n)))+A155212(n)+4`
-/

namespace A190036.P9794121179510628250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + (A155212 n + 4)

end

end A190036.P9794121179510628250

namespace A190036

/-- `A027379(floor(n-atan(n)))+A155212(n)+4` -/
def P9794121179510628250.Spec : Prop :=
  ∀ n, P9794121179510628250.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P7509669098464082565

`2*n+A027379(floor(n-atan(n)))+A046691(n)+7`
-/

namespace A190036.P7509669098464082565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A027379 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + (A046691 n + 7))

end

end A190036.P7509669098464082565

namespace A190036

/-- `2*n+A027379(floor(n-atan(n)))+A046691(n)+7` -/
def P7509669098464082565.Spec : Prop :=
  ∀ n, P7509669098464082565.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P16277394071308785884

`A155212(n)+A027379(A289207(n))+4`
-/

namespace A190036.P16277394071308785884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n + (A027379 (A289207 n).toNat + 4)

end

end A190036.P16277394071308785884

namespace A190036

/-- `A155212(n)+A027379(A289207(n))+4` -/
def P16277394071308785884.Spec : Prop :=
  ∀ n, P16277394071308785884.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P10006965167817764380

`A046691(n+2)+A027379(A289207(n))`
-/

namespace A190036.P10006965167817764380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2) + A027379 (A289207 n).toNat

end

end A190036.P10006965167817764380

namespace A190036

/-- `A046691(n+2)+A027379(A289207(n))` -/
def P10006965167817764380.Spec : Prop :=
  ∀ n, P10006965167817764380.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P9312578643825275493

`A266794(2*n)+A027692(n)`
-/

namespace A190036.P9312578643825275493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 (2 * n) + A027692 n

end

end A190036.P9312578643825275493

namespace A190036

/-- `A266794(2*n)+A027692(n)` -/
def P9312578643825275493.Spec : Prop :=
  ∀ n, P9312578643825275493.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P3602719998965606798

`A155212(n)-A291497(A000124(n))`
-/

namespace A190036.P3602719998965606798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - A291497 (A000124 n).toNat

end

end A190036.P3602719998965606798

namespace A190036

/-- `A155212(n)-A291497(A000124(n))` -/
def P3602719998965606798.Spec : Prop :=
  ∀ n, P3602719998965606798.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P2045946289102391266

`A185180(A167614(n+1))+A134869(n+1)`
-/

namespace A190036.P2045946289102391266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A167614 (n + 1)).toNat + A134869 (n + 1)

end

end A190036.P2045946289102391266

namespace A190036

/-- `A185180(A167614(n+1))+A134869(n+1)` -/
def P2045946289102391266.Spec : Prop :=
  ∀ n, P2045946289102391266.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P6737133044524295511

`A065033(a(n-1))+∑[n+3]` with `a(0)=7, a(1)=12`
-/

namespace A190036.P6737133044524295511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 12] fun n a =>
  A065033 (a (n - 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A190036.P6737133044524295511

namespace A190036

/-- `A065033(a(n-1))+∑[n+3]` -/
def P6737133044524295511.Spec : Prop :=
  ∀ n, P6737133044524295511.a n = A190036 (n + 1)

end A190036

/-! ## A190036.P4741660924380023373

`A190041(∑[n+4]+3)`
-/

namespace A190036.P4741660924380023373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A190036.P4741660924380023373

namespace A190036

/-- `A190041(∑[n+4]+3)` -/
def P4741660924380023373.Spec : Prop :=
  ∀ n, P4741660924380023373.a n = A190036 (n + 1)

end A190036

/-!
# A190037: Number of nondecreasing arrangements of n+2 numbers in 0..5 with the last equal to 5 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190037, the canonical program `A190037.P3571137091424408204` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190037 has offset 1).

The definition of A190037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190037.P3571137091424408204

`2*a(n-1)-a(n-2)` with `a(0)=8, a(1)=12, a(2)=16, a(3)=23, a(4)=33, a(5)=45`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190037

/-- `2*a(n-1)-a(n-2)` -/
def P3571137091424408204.Spec : Prop :=
  ∀ n, P3571137091424408204.a n = A190037 (n + 1)

theorem P3571137091424408204.correct : P3571137091424408204.Spec := by
  intro n
  simp only [A190037, Nat.add_sub_cancel]

end A190037

/-!
# A190038: Number of nondecreasing arrangements of n+2 numbers in 0..6 with the last equal to 6 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190038, the canonical program `A190038.P4403519756458745727` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190038 has offset 1).

The definition of A190038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190038.P4403519756458745727

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=10, a(1)=18, a(2)=30, a(3)=47, a(4)=72, a(5)=107, a(6)=151, a(7)=203`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190038

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4403519756458745727.Spec : Prop :=
  ∀ n, P4403519756458745727.a n = A190038 (n + 1)

theorem P4403519756458745727.correct : P4403519756458745727.Spec := by
  intro n
  simp only [A190038, Nat.add_sub_cancel]

end A190038

/-! ## A190038.P8629882361964367146

`A190041(∑[n+6]+10)`
-/

namespace A190038.P8629882361964367146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A190038.P8629882361964367146

namespace A190038

/-- `A190041(∑[n+6]+10)` -/
def P8629882361964367146.Spec : Prop :=
  ∀ n, P8629882361964367146.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P7940478607080856020

`record[A190041(A052905(abs(3-n)))]`
-/

namespace A190038.P7940478607080856020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 |3 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190038.P7940478607080856020

namespace A190038

/-- `record[A190041(A052905(abs(3-n)))]` -/
def P7940478607080856020.Spec : Prop :=
  ∀ n, P7940478607080856020.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P7350490165061292120

`or(char[3], A190041(A052905(n+3)))`
-/

namespace A190038.P7350490165061292120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190041 (A052905 (n + 3)).toNat)

end

end A190038.P7350490165061292120

namespace A190038

/-- `or(char[3], A190041(A052905(n+3)))` -/
def P7350490165061292120.Spec : Prop :=
  ∀ n, P7350490165061292120.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P9759842802508347386

`log2(4/2)*A190041(A000124(n+6)-6)`
-/

namespace A190038.P9759842802508347386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A190041 (A000124 (n + 6) - 6).toNat : ℝ)

end

end A190038.P9759842802508347386

namespace A190038

/-- `log2(4/2)*A190041(A000124(n+6)-6)` -/
def P9759842802508347386.Spec : Prop :=
  ∀ n, P9759842802508347386.a n = (A190038 (n + 1) : ℝ)

end A190038

/-! ## A190038.P17759293498931874642

`∑{d}[A190041(A052905(n+3)), A000010(#)]`
-/

namespace A190038.P17759293498931874642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190038.P17759293498931874642

namespace A190038

/-- `∑{d}[A190041(A052905(n+3)), A000010(#)]` -/
def P17759293498931874642.Spec : Prop :=
  ∀ n, P17759293498931874642.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P3054442076517978438

`A007318(C(2, n))*A190041(A052905(n+3))`
-/

namespace A190038.P3054442076517978438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190041 (A052905 (n + 3)).toNat

end

end A190038.P3054442076517978438

namespace A190038

/-- `A007318(C(2, n))*A190041(A052905(n+3))` -/
def P3054442076517978438.Spec : Prop :=
  ∀ n, P3054442076517978438.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P2000054200370843396

`A190041(A052905(n+3))%A000040(n+3)²`
-/

namespace A190038.P2000054200370843396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A052905 (n + 3)).toNat) (A000040 (n + 3) ^ 2)

end

end A190038.P2000054200370843396

namespace A190038

/-- `A190041(A052905(n+3))%A000040(n+3)²` -/
def P2000054200370843396.Spec : Prop :=
  ∀ n, P2000054200370843396.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P9593872041289988874

`A000041(C(n, n²))*A190041(A052905(n+3))`
-/

namespace A190038.P9593872041289988874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A190041 (A052905 (n + 3)).toNat

end

end A190038.P9593872041289988874

namespace A190038

/-- `A000041(C(n, n²))*A190041(A052905(n+3))` -/
def P9593872041289988874.Spec : Prop :=
  ∀ n, P9593872041289988874.a n = A190038 (n + 1)

end A190038

/-! ## A190038.P10751959044324839438

`A190041(A052905(n+3))+A008683(4*(n+1))`
-/

namespace A190038.P10751959044324839438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A190038.P10751959044324839438

namespace A190038

/-- `A190041(A052905(n+3))+A008683(4*(n+1))` -/
def P10751959044324839438.Spec : Prop :=
  ∀ n, P10751959044324839438.a n = A190038 (n + 1)

end A190038

/-!
# A190039: Number of nondecreasing arrangements of n+2 numbers in 0..7 with the last equal to 7 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190039, the canonical program `A190039.P3660482928876137849` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190039 has offset 1).

The definition of A190039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190039.P3660482928876137849

`2*a(n-1)-a(n-2)` with `a(0)=11, a(1)=17, a(2)=22, a(3)=31, a(4)=43, a(5)=60, a(6)=80`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190039

/-- `2*a(n-1)-a(n-2)` -/
def P3660482928876137849.Spec : Prop :=
  ∀ n, P3660482928876137849.a n = A190039 (n + 1)

theorem P3660482928876137849.correct : P3660482928876137849.Spec := by
  intro n
  simp only [A190039, Nat.add_sub_cancel]

end A190039

/-!
# A190040: Number of nondecreasing arrangements of n+2 numbers in 0..8 with the last equal to 8 and each after the second equal to the sum of one or two of the preceding three.

The programs for A190040, the canonical program `A190040.P17561174630970626372` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190040 has offset 1).

The definition of A190040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190040.P17561174630970626372

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=13, a(1)=24, a(2)=40, a(3)=65, a(4)=105, a(5)=164, a(6)=246, a(7)=349, a(8)=472, a(9)=617`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190040

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17561174630970626372.Spec : Prop :=
  ∀ n, P17561174630970626372.a n = A190040 (n + 1)

theorem P17561174630970626372.correct : P17561174630970626372.Spec := by
  intro n
  simp only [A190040, Nat.add_sub_cancel]

end A190040

/-! ## A190040.P13713336702607343804

`A190041(eq[5, A219347(n)])`
-/

namespace A190040.P13713336702607343804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190040.P13713336702607343804

namespace A190040

/-- `A190041(eq[5, A219347(n)])` -/
def P13713336702607343804.Spec : Prop :=
  ∀ n, P13713336702607343804.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P682231017078706134

`A190041(eq[7, A193592(n)])`
-/

namespace A190040.P682231017078706134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190040.P682231017078706134

namespace A190040

/-- `A190041(eq[7, A193592(n)])` -/
def P682231017078706134.Spec : Prop :=
  ∀ n, P682231017078706134.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P12307016630106527819

`A190041(A155212(n+4)+1)`
-/

namespace A190040.P12307016630106527819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A155212 (n + 4) + 1).toNat

end

end A190040.P12307016630106527819

namespace A190040

/-- `A190041(A155212(n+4)+1)` -/
def P12307016630106527819.Spec : Prop :=
  ∀ n, P12307016630106527819.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P7722208335263046522

`A190041(A052905(n+5)-2)`
-/

namespace A190040.P7722208335263046522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 (n + 5) - 2).toNat

end

end A190040.P7722208335263046522

namespace A190040

/-- `A190041(A052905(n+5)-2)` -/
def P7722208335263046522.Spec : Prop :=
  ∀ n, P7722208335263046522.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P658309488773699175

`A190041(A046691(n+6)-3)`
-/

namespace A190040.P658309488773699175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A046691 (n + 6) - 3).toNat

end

end A190040.P658309488773699175

namespace A190040

/-- `A190041(A046691(n+6)-3)` -/
def P658309488773699175.Spec : Prop :=
  ∀ n, P658309488773699175.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P13986029236294975056

`A190041(A027379(n+6)-4)`
-/

namespace A190040.P13986029236294975056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A027379 (n + 6) - 4).toNat

end

end A190040.P13986029236294975056

namespace A190040

/-- `A190041(A027379(n+6)-4)` -/
def P13986029236294975056.Spec : Prop :=
  ∀ n, P13986029236294975056.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P11955696913425810729

`A190041(A000096(n+7)-6)`
-/

namespace A190040.P11955696913425810729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000096 (n + 7) - 6).toNat

end

end A190040.P11955696913425810729

namespace A190040

/-- `A190041(A000096(n+7)-6)` -/
def P11955696913425810729.Spec : Prop :=
  ∀ n, P11955696913425810729.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P129307613282873949

`A190041(A000217(n+8)-7)`
-/

namespace A190040.P129307613282873949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000217 (n + 8) - 7).toNat

end

end A190040.P129307613282873949

namespace A190040

/-- `A190041(A000217(n+8)-7)` -/
def P129307613282873949.Spec : Prop :=
  ∀ n, P129307613282873949.a n = A190040 (n + 1)

end A190040

/-! ## A190040.P14026470587023334729

`A190041(A000124(n+8)-8)`
-/

namespace A190040.P14026470587023334729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000124 (n + 8) - 8).toNat

end

end A190040.P14026470587023334729

namespace A190040

/-- `A190041(A000124(n+8)-8)` -/
def P14026470587023334729.Spec : Prop :=
  ∀ n, P14026470587023334729.a n = A190040 (n + 1)

end A190040

/-!
# A190041: T(n,k)=Number of nondecreasing arrangements of n+2 numbers in 0..k with the last equal to k and each after the second equal to the sum of one or two of the preceding three.

The programs for A190041, there is no canonical definition to state claims against.
-/

/-! ## A190041.P5744743643260421049

`A189326(n+1)-A184159(A099594(n))`
-/

namespace A190041.P5744743643260421049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (n + 1) - A184159 (A099594 n).toNat

end

end A190041.P5744743643260421049

/-! ## A190041.P2642483339199691959

`A189326(n+1)-A163510(A157273(n))`
-/

namespace A190041.P2642483339199691959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (n + 1) - A163510 (A157273 n).toNat

end

end A190041.P2642483339199691959

/-! ## A190041.P2955762627188192436

`A189326(n+1)-A373264(A228267(2*n+1))`
-/

namespace A190041.P2955762627188192436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (n + 1) - A373264 (A228267 (2 * n + 1)).toNat

end

end A190041.P2955762627188192436

/-! ## A190041.P7342532220020509776

`A189326(n+1)-A247505(A007318(3*(n+1)))`
-/

namespace A190041.P7342532220020509776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (n + 1) - A247505 (A007318 (3 * (n + 1))).toNat

end

end A190041.P7342532220020509776

/-! ## A190041.P16444186545374410050

`A240354(A056217(n+1))+A189326(n+1)`
-/

namespace A190041.P16444186545374410050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240354 (A056217 (n + 1)).toNat + A189326 (n + 1)

end

end A190041.P16444186545374410050

/-!
# A190042: Number of nondecreasing arrangements of 5 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190042, there is no canonical definition to state claims against.
-/

/-! ## A190042.P5858747246767346085

`A190041(∑[n+2]+4)`
-/

namespace A190042.P5858747246767346085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A190042.P5858747246767346085

/-! ## A190042.P14927618699489692291

`and(-1, A190041(A167614(n+1)))`
-/

namespace A190042.P14927618699489692291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A190041 (A167614 (n + 1)).toNat)

end

end A190042.P14927618699489692291

/-! ## A190042.P13131577657329684101

`A190041(A034856(n+1)+5)%(n+2)²`
-/

namespace A190042.P13131577657329684101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A034856 (n + 1) + 5).toNat) ((n + 2) ^ 2 : ℤ)

end

end A190042.P13131577657329684101

/-! ## A190042.P8280511906715469467

`A190041(A167614(n+1))%A017438(n)`
-/

namespace A190042.P8280511906715469467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A167614 (n + 1)).toNat) (A017438 n)

end

end A190042.P8280511906715469467

/-! ## A190042.P17570725335082606337

`lcm(A033999(n), A190041(A167614(n+1)))`
-/

namespace A190042.P17570725335082606337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A190041 (A167614 (n + 1)).toNat)

end

end A190042.P17570725335082606337

/-! ## A190042.P1667775734442294808

`∑{d}[A190041(A167614(n+1)), A000010(#)]`
-/

namespace A190042.P1667775734442294808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190042.P1667775734442294808

/-! ## A190042.P13226293384163195721

`∏{d}[A190041(A167614(n+1)), A014963(#)]`
-/

namespace A190042.P13226293384163195721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A190042.P13226293384163195721

/-! ## A190042.P3720203783086287278

`A007318(C(3, n))*A190041(A167614(n+1))`
-/

namespace A190042.P3720203783086287278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A190041 (A167614 (n + 1)).toNat

end

end A190042.P3720203783086287278

/-! ## A190042.P404152842525618082

`A000041(C(2, n+2))*A190041(A167614(n+1))`
-/

namespace A190042.P404152842525618082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A190041 (A167614 (n + 1)).toNat

end

end A190042.P404152842525618082

/-! ## A190042.P15277408445904982970

`A000108(C(2, 2*n))*A190041(A167614(n+1))`
-/

namespace A190042.P15277408445904982970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A190041 (A167614 (n + 1)).toNat

end

end A190042.P15277408445904982970

/-!
# A190043: Number of nondecreasing arrangements of 6 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190043, there is no canonical definition to state claims against.
-/

/-! ## A190043.P4730653400244773376

`A190041(∑[n+3]+7)`
-/

namespace A190043.P4730653400244773376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A190043.P4730653400244773376

/-! ## A190043.P11709718905441719909

`or(char[3], A190041(A052905(n)+9))`
-/

namespace A190043.P11709718905441719909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190041 (A052905 n + 9).toNat)

end

end A190043.P11709718905441719909

/-! ## A190043.P15758663674766829972

`A190041(A055999(n)+10)/gcd(n, n-1)`
-/

namespace A190043.P15758663674766829972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190041 (A055999 n + 10).toNat : ℚ) / (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℚ)

end

end A190043.P15758663674766829972

/-! ## A190043.P1946766610345924850

`A190041(A055999(n)+10)%A104678(n)`
-/

namespace A190043.P1946766610345924850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A055999 n + 10).toNat) (A104678 n)

end

end A190043.P1946766610345924850

/-! ## A190043.P11092471211490850056

`∑{d}[A190041(A052905(n)+9), A000010(#)]`
-/

namespace A190043.P11092471211490850056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190043.P11092471211490850056

/-! ## A190043.P4431529506208966221

`∏{d}[A190041(A055999(n)+10), A014963(#)]`
-/

namespace A190043.P4431529506208966221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A190043.P4431529506208966221

/-! ## A190043.P12812475614180200011

`A190041(A052905(n)+9)%A000041(n+6)`
-/

namespace A190043.P12812475614180200011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A052905 n + 9).toNat) (A000041 (n + 6))

end

end A190043.P12812475614180200011

/-! ## A190043.P1478026628658242680

`A190041(A052905(n)+9)+C(n, A000040(n+1))`
-/

namespace A190043.P1478026628658242680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 n + 9).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A190043.P1478026628658242680

/-! ## A190043.P6475000720309635684

`A190041(A052905(n)+9)-A000040(n+2)%2+1`
-/

namespace A190043.P6475000720309635684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 n + 9).toNat - Int.tmod (A000040 (n + 2)) 2 + 1

end

end A190043.P6475000720309635684

/-! ## A190043.P3309058781506733079

`A000005(floor(1/(n+1))!)*A190041(A052905(n)+9)`
-/

namespace A190043.P3309058781506733079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial ⌊1 / (n + 1 : ℚ)⌋.toNat) * A190041 (A052905 n + 9).toNat

end

end A190043.P3309058781506733079

/-!
# A190044: Number of nondecreasing arrangements of 7 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190044, there is no canonical definition to state claims against.
-/

/-! ## A190044.P15052254562365795898

`A190041(∑[n+4]+11)`
-/

namespace A190044.P15052254562365795898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A190044.P15052254562365795898

/-! ## A190044.P3904383499050432934

`and(-1, A190041(A167499(n+3)))`
-/

namespace A190044.P3904383499050432934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A190041 (A167499 (n + 3)).toNat)

end

end A190044.P3904383499050432934

/-! ## A190044.P8799281124632952505

`abs(A190041(A000217(n+4)+5)-1)+1`
-/

namespace A190044.P8799281124632952505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190041 (A000217 (n + 4) + 5).toNat - 1| + 1

end

end A190044.P8799281124632952505

/-! ## A190044.P13509391539716049098

`A190041(A167499(n+3))%A008888(n)`
-/

namespace A190044.P13509391539716049098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A167499 (n + 3)).toNat) (A008888 n)

end

end A190044.P13509391539716049098

/-! ## A190044.P13659158547595922006

`gcd(A000038(n), A190041(A167499(n+3)))`
-/

namespace A190044.P13659158547595922006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A190041 (A167499 (n + 3)).toNat)

end

end A190044.P13659158547595922006

/-! ## A190044.P3217467959345899138

`A057427(n+1)*A190041(A167499(n+3))`
-/

namespace A190044.P3217467959345899138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A190041 (A167499 (n + 3)).toNat

end

end A190044.P3217467959345899138

/-! ## A190044.P8757278806482284048

`A190041(A167499(n+3))+A000038(2*n+1)`
-/

namespace A190044.P8757278806482284048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167499 (n + 3)).toNat + A000038 (2 * n + 1)

end

end A190044.P8757278806482284048

/-! ## A190044.P13676773209841544937

`A339579(2*n+5)+A190041(A167499(n+3))`
-/

namespace A190044.P13676773209841544937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * n + 5) + A190041 (A167499 (n + 3)).toNat

end

end A190044.P13676773209841544937

/-!
# A190045: Number of nondecreasing arrangements of 8 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190045, there is no canonical definition to state claims against.
-/

/-! ## A190045.P8066124401787217979

`A190041(∑[n+5]+16)`
-/

namespace A190045.P8066124401787217979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A190045.P8066124401787217979

/-! ## A190045.P1958160993833709329

`or(char[3], A190041(A000096(n+4)+7))`
-/

namespace A190045.P1958160993833709329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190041 (A000096 (n + 4) + 7).toNat)

end

end A190045.P1958160993833709329

/-! ## A190045.P1001666842449342605

`gcd(floor(acot(n)²), A190041(A000217(n+5)+6))`
-/

namespace A190045.P1001666842449342605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A190041 (A000217 (n + 5) + 6).toNat)

end

end A190045.P1001666842449342605

/-! ## A190045.P6585219366073530968

`A190041(A167499(n+4)+1)+C(n, n+1)`
-/

namespace A190045.P6585219366073530968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167499 (n + 4) + 1).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A190045.P6585219366073530968

/-! ## A190045.P11034056806337063363

`∑{d}[A190041(A027379(n+3)+9), A000010(#)]`
-/

namespace A190045.P11034056806337063363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A027379 (n + 3) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190045.P11034056806337063363

/-! ## A190045.P11953416177583144253

`A190041(A000096(n+4)+7)/A007318(C(2, n))`
-/

namespace A190045.P11953416177583144253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190041 (A000096 (n + 4) + 7).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A190045.P11953416177583144253

/-! ## A190045.P13999941629839729144

`A007318(C(2, n))*A190041(A027379(n+3)+9)`
-/

namespace A190045.P13999941629839729144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190041 (A027379 (n + 3) + 9).toNat

end

end A190045.P13999941629839729144

/-! ## A190045.P10142922201321619167

`A190041(A000096(n+4)+7)%A000040(n+3)²`
-/

namespace A190045.P10142922201321619167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190041 (A000096 (n + 4) + 7).toNat) (A000040 (n + 3) ^ 2)

end

end A190045.P10142922201321619167

/-! ## A190045.P4925793650096940517

`A190041(A000096(n+4)+7)+A008683(8*(n+1))`
-/

namespace A190045.P4925793650096940517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000096 (n + 4) + 7).toNat + A008683 (8 * (n + 1))

end

end A190045.P4925793650096940517

/-! ## A190045.P16005416011711292944

`A000108(and(1, n-1))*A190041(A000096(n+4)+7)`
-/

namespace A190045.P16005416011711292944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 ((n : ℤ) - 1)).toNat * A190041 (A000096 (n + 4) + 7).toNat

end

end A190045.P16005416011711292944

/-!
# A190046: Number of nondecreasing arrangements of 9 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190046, there is no canonical definition to state claims against.
-/

/-! ## A190046.P9479959824245803506

`A190041(A167487(n+5))`
-/

namespace A190046.P9479959824245803506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167487 (n + 5)).toNat

end

end A190046.P9479959824245803506

/-! ## A190046.P2614505539929146617

`A190041(A056119(n)+28)`
-/

namespace A190046.P2614505539929146617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A056119 n + 28).toNat

end

end A190046.P2614505539929146617

/-! ## A190046.P697482298636681068

`A190041(A167499(n+5)+2)`
-/

namespace A190046.P697482298636681068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167499 (n + 5) + 2).toNat

end

end A190046.P697482298636681068

/-! ## A190046.P2551330690294565714

`A190041(A167614(n+5)+4)`
-/

namespace A190046.P2551330690294565714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167614 (n + 5) + 4).toNat

end

end A190046.P2551330690294565714

/-! ## A190046.P17316466620692642108

`A190041(A000124(n+6)+6)`
-/

namespace A190046.P17316466620692642108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000124 (n + 6) + 6).toNat

end

end A190046.P17316466620692642108

/-! ## A190046.P1362107553905835632

`A190041(A000096(n+5)+8)`
-/

namespace A190046.P1362107553905835632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000096 (n + 5) + 8).toNat

end

end A190046.P1362107553905835632

/-! ## A190046.P15975303948174042491

`A190041(A000217(n+6)+7)`
-/

namespace A190046.P15975303948174042491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000217 (n + 6) + 7).toNat

end

end A190046.P15975303948174042491

/-! ## A190046.P5874876650053426519

`A190041(A052905(n+3)+12)`
-/

namespace A190046.P5874876650053426519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 (n + 3) + 12).toNat

end

end A190046.P5874876650053426519

/-! ## A190046.P15966821907624967465

`A190041(A184218(n+7)+8)`
-/

namespace A190046.P15966821907624967465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A184218 (n + 7) + 8).toNat

end

end A190046.P15966821907624967465

/-! ## A190046.P4071580490541190857

`A190041(A046691(n)+A016813(n+7))`
-/

namespace A190046.P4071580490541190857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A046691 n + A016813 (n + 7)).toNat

end

end A190046.P4071580490541190857

/-!
# A190047: Number of nondecreasing arrangements of 10 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding three.

The programs for A190047, there is no canonical definition to state claims against.
-/

/-! ## A190047.P14250078555010123860

`A190041(A166136(n+6)+2)`
-/

namespace A190047.P14250078555010123860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A166136 (n + 6) + 2).toNat

end

end A190047.P14250078555010123860

/-! ## A190047.P2589342794246522475

`A190041(A167499(n+6)+3)`
-/

namespace A190047.P2589342794246522475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A167499 (n + 6) + 3).toNat

end

end A190047.P2589342794246522475

/-! ## A190047.P13382270055640308291

`A190041(A000124(n+7)+7)`
-/

namespace A190047.P13382270055640308291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000124 (n + 7) + 7).toNat

end

end A190047.P13382270055640308291

/-! ## A190047.P5203311243966636007

`A190041(A000096(n+6)+9)`
-/

namespace A190047.P5203311243966636007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000096 (n + 6) + 9).toNat

end

end A190047.P5203311243966636007

/-! ## A190047.P14340506381105222544

`A190041(A000217(n+7)+8)`
-/

namespace A190047.P14340506381105222544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A000217 (n + 7) + 8).toNat

end

end A190047.P14340506381105222544

/-! ## A190047.P15810446354671267918

`A190041(A046691(n+5)+12)`
-/

namespace A190047.P15810446354671267918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A046691 (n + 5) + 12).toNat

end

end A190047.P15810446354671267918

/-! ## A190047.P10408367979550541439

`A190041(A052905(n+4)+13)`
-/

namespace A190047.P10408367979550541439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A052905 (n + 4) + 13).toNat

end

end A190047.P10408367979550541439

/-! ## A190047.P11760556321577796794

`A190041(A055999(n+2)+A005408(n+13))`
-/

namespace A190047.P11760556321577796794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (A055999 (n + 2) + A005408 (n + 13)).toNat

end

end A190047.P11760556321577796794

/-!
# A190048: Expansion of g.f. 2*(4+3*x)/(1-x)^5.

The programs for A190048, the canonical program `A190048.P8316356761629757961` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190048 has offset 0).

The definition of A190048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8+6x)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A190048.P8316356761629757961`, by `A190048.P8316356761629757961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190048.P8316356761629757961

`ogf((8+6x)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190048

/-- `ogf((8+6x)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8316356761629757961.Spec : Prop :=
  ∀ n, P8316356761629757961.a n = A190048 n

theorem P8316356761629757961.correct : P8316356761629757961.Spec := by
  intro n
  simp only [A190048]

end A190048

/-! ## A190048.P6587318112409984872

`8*C(n+4, 4)+6*C(n+3, 4)`
-/

namespace A190048.P6587318112409984872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n + 4) 4 + 6 * Nat.choose (n + 3) 4

end

end A190048.P6587318112409984872

namespace A190048

/-- `8*C(n+4, 4)+6*C(n+3, 4)` -/
def P6587318112409984872.Spec : Prop :=
  ∀ n, (P6587318112409984872.a n : ℤ) = A190048 n

end A190048

/-! ## A190048.P6544602995810915349

`(7*n^4+58*n^3+173*n²+218*n+96)/12`
-/

namespace A190048.P6544602995810915349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 4 + 58 * n ^ 3 + 173 * n ^ 2 + 218 * n + 96 : ℚ) / 12

end

end A190048.P6544602995810915349

namespace A190048

/-- `(7*n^4+58*n^3+173*n²+218*n+96)/12` -/
def P6544602995810915349.Spec : Prop :=
  ∀ n, P6544602995810915349.a n = (A190048 n : ℚ)

end A190048

/-! ## A190048.P6248388912901013574

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=8, a(1)=46, a(2)=150, a(3)=370, a(4)=770`
-/

namespace A190048.P6248388912901013574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 46, 150, 370, 770] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A190048.P6248388912901013574

namespace A190048

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6248388912901013574.Spec : Prop :=
  ∀ n, P6248388912901013574.a n = A190048 n

end A190048

/-! ## A190048.P4405946585186877726

`∑[∑[∑[a(n-1)+14]]]` with `a(0)=8`
-/

namespace A190048.P4405946585186877726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f3 =>
  f3 (n - 1) + 14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190048.P4405946585186877726

namespace A190048

/-- `∑[∑[∑[a(n-1)+14]]]` -/
def P4405946585186877726.Spec : Prop :=
  ∀ n, (P4405946585186877726.a n : ℤ) = A190048 n

end A190048

/-! ## A190048.P18423496706914469161

`2*∑[∑[∑[A017029(n)]]]`
-/

namespace A190048.P18423496706914469161
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190048.P18423496706914469161

namespace A190048

/-- `2*∑[∑[∑[A017029(n)]]]` -/
def P18423496706914469161.Spec : Prop :=
  ∀ n, P18423496706914469161.a n = A190048 n

end A190048

/-! ## A190048.P4866931825832599836

`∑[∑[A073577(n+1)]]+∑[n+1]²`
-/

namespace A190048.P4866931825832599836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

end

end A190048.P4866931825832599836

namespace A190048

/-- `∑[∑[A073577(n+1)]]+∑[n+1]²` -/
def P4866931825832599836.Spec : Prop :=
  ∀ n, P4866931825832599836.a n = A190048 n

end A190048

/-! ## A190048.P2768655711685279912

`A162668(n+1)+A033487(n)`
-/

namespace A190048.P2768655711685279912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 (n + 1) + A033487 n

end

end A190048.P2768655711685279912

namespace A190048

/-- `A162668(n+1)+A033487(n)` -/
def P2768655711685279912.Spec : Prop :=
  ∀ n, P2768655711685279912.a n = A190048 n

end A190048

/-! ## A190048.P3309349232715722097

`∑[∑[A092277(n+1)]]`
-/

namespace A190048.P3309349232715722097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190048.P3309349232715722097

namespace A190048

/-- `∑[∑[A092277(n+1)]]` -/
def P3309349232715722097.Spec : Prop :=
  ∀ n, P3309349232715722097.a n = A190048 n

end A190048

/-! ## A190048.P8639125711527474991

`∑[2*A304993(n+1)]`
-/

namespace A190048.P8639125711527474991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190048.P8639125711527474991

namespace A190048

/-- `∑[2*A304993(n+1)]` -/
def P8639125711527474991.Spec : Prop :=
  ∀ n, P8639125711527474991.a n = A190048 n

end A190048

/-! ## A190048.P8840304727270503889

`∑[∑[n+1]]+∑[A169607(n+1)]`
-/

namespace A190048.P8840304727270503889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A190048.P8840304727270503889

namespace A190048

/-- `∑[∑[n+1]]+∑[A169607(n+1)]` -/
def P8840304727270503889.Spec : Prop :=
  ∀ n, P8840304727270503889.a n = A190048 n

end A190048

/-! ## A190048.P15795488203940186230

`2*(A004320(n+1)+A001296(n+1))`
-/

namespace A190048.P15795488203940186230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004320 (n + 1) + A001296 (n + 1))

end

end A190048.P15795488203940186230

namespace A190048

/-- `2*(A004320(n+1)+A001296(n+1))` -/
def P15795488203940186230.Spec : Prop :=
  ∀ n, P15795488203940186230.a n = A190048 n

end A190048

/-! ## A190048.P4329457333196075382

`2*(A338996(n+1)-A000292(n+1))`
-/

namespace A190048.P4329457333196075382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A338996 (n + 1) - A000292 (n + 1))

end

end A190048.P4329457333196075382

namespace A190048

/-- `2*(A338996(n+1)-A000292(n+1))` -/
def P4329457333196075382.Spec : Prop :=
  ∀ n, P4329457333196075382.a n = A190048 n

end A190048

/-! ## A190048.P13413331331571287614

`A179824(n+3)-2*A006322(n+2)`
-/

namespace A190048.P13413331331571287614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 3) - 2 * A006322 (n + 2)

end

end A190048.P13413331331571287614

namespace A190048

/-- `A179824(n+3)-2*A006322(n+2)` -/
def P13413331331571287614.Spec : Prop :=
  ∀ n, P13413331331571287614.a n = A190048 n

end A190048

/-! ## A190048.P14089285997278316864

`A033487(n)+A112415(n)-A033488(n+1)`
-/

namespace A190048.P14089285997278316864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n + (A112415 n - A033488 (n + 1))

end

end A190048.P14089285997278316864

namespace A190048

/-- `A033487(n)+A112415(n)-A033488(n+1)` -/
def P14089285997278316864.Spec : Prop :=
  ∀ n, P14089285997278316864.a n = A190048 n

end A190048

/-! ## A190048.P2769886954166365670

`A033486(n+1)+A033487(n)-A033488(n+1)`
-/

namespace A190048.P2769886954166365670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 (n + 1) + (A033487 n - A033488 (n + 1))

end

end A190048.P2769886954166365670

namespace A190048

/-- `A033486(n+1)+A033487(n)-A033488(n+1)` -/
def P2769886954166365670.Spec : Prop :=
  ∀ n, P2769886954166365670.a n = A190048 n

end A190048

/-! ## A190048.P11041516986137332945

`A002415(n+1)+A083374(n+2)+A006002(n+1)`
-/

namespace A190048.P11041516986137332945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A083374 (n + 2) + A006002 (n + 1))

end

end A190048.P11041516986137332945

namespace A190048

/-- `A002415(n+1)+A083374(n+2)+A006002(n+1)` -/
def P11041516986137332945.Spec : Prop :=
  ∀ n, P11041516986137332945.a n = A190048 n

end A190048

/-! ## A190048.P11203169890226744209

`(n+1)/2*A255211(n+2)`
-/

namespace A190048.P11203169890226744209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A255211 (n + 2) : ℚ)

end

end A190048.P11203169890226744209

namespace A190048

/-- `(n+1)/2*A255211(n+2)` -/
def P11203169890226744209.Spec : Prop :=
  ∀ n, P11203169890226744209.a n = (A190048 n : ℚ)

end A190048

/-! ## A190048.P12507424880788362587

`A213436(n+2)-A071238(n+2)`
-/

namespace A190048.P12507424880788362587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213436 (n + 2) - A071238 (n + 2)

end

end A190048.P12507424880788362587

namespace A190048

/-- `A213436(n+2)-A071238(n+2)` -/
def P12507424880788362587.Spec : Prop :=
  ∀ n, P12507424880788362587.a n = A190048 n

end A190048

/-! ## A190048.P1818019992915695555

`A302758(2*(n+2))-A002415(n+3)`
-/

namespace A190048.P1818019992915695555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302758 (2 * (n + 2)) - A002415 (n + 3)

end

end A190048.P1818019992915695555

namespace A190048

/-- `A302758(2*(n+2))-A002415(n+3)` -/
def P1818019992915695555.Spec : Prop :=
  ∀ n, P1818019992915695555.a n = A190048 n

end A190048

/-!
# A190049: Expansion of g.f. 2*(8+12*x+x^2)/(x-1)^6.

The programs for A190049, the canonical program `A190049.P13381933111257739097` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190049 has offset 0).

The definition of A190049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((16+24x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A190049.P13381933111257739097`, by `A190049.P13381933111257739097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190049.P13381933111257739097

`ogf((16+24x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190049

/-- `ogf((16+24x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13381933111257739097.Spec : Prop :=
  ∀ n, P13381933111257739097.a n = A190049 n

theorem P13381933111257739097.correct : P13381933111257739097.Spec := by
  intro n
  simp only [A190049]

end A190049

/-! ## A190049.P1562150288909183560

`16*C(n+5, 5)+24*C(n+4, 5)+2*C(n+3, 5)`
-/

namespace A190049.P1562150288909183560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose (n + 5) 5 + 24 * Nat.choose (n + 4) 5 + 2 * Nat.choose (n + 3) 5

end

end A190049.P1562150288909183560

namespace A190049

/-- `16*C(n+5, 5)+24*C(n+4, 5)+2*C(n+3, 5)` -/
def P1562150288909183560.Spec : Prop :=
  ∀ n, (P1562150288909183560.a n : ℤ) = A190049 n

end A190049

/-! ## A190049.P5863011919872143791

`∑[∑[(∑[14*(n+1)]+2)*(n+1)]]`
-/

namespace A190049.P5863011919872143791
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 2) * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190049.P5863011919872143791

namespace A190049

/-- `∑[∑[(∑[14*(n+1)]+2)*(n+1)]]` -/
def P5863011919872143791.Spec : Prop :=
  ∀ n, (P5863011919872143791.a n : ℤ) = A190049 n

end A190049

/-! ## A190049.P16640709595865556237

`A027777(n+2)+∑[2*A053126(n+4)]`
-/

namespace A190049.P16640709595865556237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190049.P16640709595865556237

namespace A190049

/-- `A027777(n+2)+∑[2*A053126(n+4)]` -/
def P16640709595865556237.Spec : Prop :=
  ∀ n, P16640709595865556237.a n = A190049 n

end A190049

/-! ## A190049.P3937445759606865153

`A053127(n+5)+(A000124(n+5)-6)*A000292(n+1)`
-/

namespace A190049.P3937445759606865153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053127 (n + 5) + (A000124 (n + 5) - 6) * A000292 (n + 1)

end

end A190049.P3937445759606865153

namespace A190049

/-- `A053127(n+5)+(A000124(n+5)-6)*A000292(n+1)` -/
def P3937445759606865153.Spec : Prop :=
  ∀ n, P3937445759606865153.a n = A190049 n

end A190049

/-!
# A190050: Expansion of ((1-x)*(3*x^2-3*x+1))/(1-2*x)^3.

The programs for A190050, the canonical program `A190050.P14035810624460656423` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190050 has offset 0).

The definition of A190050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-3x^3)/(1-6x+12x^2-8x^3))` (program `A190050.P14035810624460656423`, by `A190050.P14035810624460656423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190050.P14035810624460656423

`ogf((1-4x+6x^2-3x^3)/(1-6x+12x^2-8x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190050

/-- `ogf((1-4x+6x^2-3x^3)/(1-6x+12x^2-8x^3))` -/
def P14035810624460656423.Spec : Prop :=
  ∀ n, P14035810624460656423.a n = A190050 n

theorem P14035810624460656423.correct : P14035810624460656423.Spec := by
  intro n
  simp only [A190050]

end A190050

/-! ## A190050.P12020446222210226935

`A268586(n+1)+2^n`
-/

namespace A190050.P12020446222210226935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + (2 ^ n : ℤ)

end

end A190050.P12020446222210226935

namespace A190050

/-- `A268586(n+1)+2^n` -/
def P12020446222210226935.Spec : Prop :=
  ∀ n, P12020446222210226935.a n = A190050 n

end A190050

/-! ## A190050.P1632951674708539880

`A049611(n)+A011782(n)`
-/

namespace A190050.P1632951674708539880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A011782 n

end

end A190050.P1632951674708539880

namespace A190050

/-- `A049611(n)+A011782(n)` -/
def P1632951674708539880.Spec : Prop :=
  ∀ n, P1632951674708539880.a n = A190050 n

end A190050

/-! ## A190050.P624490472926862544

`A128183(n)-A049610(n)`
-/

namespace A190050.P624490472926862544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128183 n - A049610 n

end

end A190050.P624490472926862544

namespace A190050

/-- `A128183(n)-A049610(n)` -/
def P624490472926862544.Spec : Prop :=
  ∀ n, P624490472926862544.a n = A190050 n

end A190050

/-! ## A190050.P7826540487020126866

`A049611(n)+Δ[A056469(n)]`
-/

namespace A190050.P7826540487020126866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + (f1 (n + 1) - f1 n)

end

end A190050.P7826540487020126866

namespace A190050

/-- `A049611(n)+Δ[A056469(n)]` -/
def P7826540487020126866.Spec : Prop :=
  ∀ n, P7826540487020126866.a n = A190050 n

end A190050

/-! ## A190050.P17027238045485971084

`A049611(n)+Δ[A131577(n)]`
-/

namespace A190050.P17027238045485971084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + (f1 (n + 1) - f1 n)

end

end A190050.P17027238045485971084

namespace A190050

/-- `A049611(n)+Δ[A131577(n)]` -/
def P17027238045485971084.Spec : Prop :=
  ∀ n, P17027238045485971084.a n = A190050 n

end A190050

/-! ## A190050.P10227437261729372286

`A058396(n)-Δ[A139756(n)]`
-/

namespace A190050.P10227437261729372286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - (f1 (n + 1) - f1 n)

end

end A190050.P10227437261729372286

namespace A190050

/-- `A058396(n)-Δ[A139756(n)]` -/
def P10227437261729372286.Spec : Prop :=
  ∀ n, P10227437261729372286.a n = A190050 n

end A190050

/-! ## A190050.P16178388934908551420

`A268586(n+1)+A000225(n)+1`
-/

namespace A190050.P16178388934908551420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + A000225 n + 1

end

end A190050.P16178388934908551420

namespace A190050

/-- `A268586(n+1)+A000225(n)+1` -/
def P16178388934908551420.Spec : Prop :=
  ∀ n, P16178388934908551420.a n = A190050 n

end A190050

/-! ## A190050.P1819568992037125788

`A049611(n)+A000079(A028310(n)-1)`
-/

namespace A190050.P1819568992037125788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A000079 (A028310 n - 1).toNat

end

end A190050.P1819568992037125788

namespace A190050

/-- `A049611(n)+A000079(A028310(n)-1)` -/
def P1819568992037125788.Spec : Prop :=
  ∀ n, P1819568992037125788.a n = A190050 n

end A190050

/-! ## A190050.P18316361943428935896

`A011782(n)+A058396(n)-A045623(n)`
-/

namespace A190050.P18316361943428935896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A058396 n - A045623 n)

end

end A190050.P18316361943428935896

namespace A190050

/-- `A011782(n)+A058396(n)-A045623(n)` -/
def P18316361943428935896.Spec : Prop :=
  ∀ n, P18316361943428935896.a n = A190050 n

end A190050

/-! ## A190050.P15399350235105047914

`A049611(n)+gcd(A131575(n)², A131577(n))`
-/

namespace A190050.P15399350235105047914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + (Int.gcd (A131575 n ^ 2) (A131577 n) : ℤ)

end

end A190050.P15399350235105047914

namespace A190050

/-- `A049611(n)+gcd(A131575(n)², A131577(n))` -/
def P15399350235105047914.Spec : Prop :=
  ∀ n, P15399350235105047914.a n = A190050 n

end A190050

/-! ## A190050.P11461804753009999330

`∑[A049611(n+1)]-3*A049611(n)`
-/

namespace A190050.P11461804753009999330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 * A049611 n

end

end A190050.P11461804753009999330

namespace A190050

/-- `∑[A049611(n+1)]-3*A049611(n)` -/
def P11461804753009999330.Spec : Prop :=
  ∀ n, P11461804753009999330.a n = A190050 n

end A190050

/-! ## A190050.P3149132383508398466

`A236471(∑[n])+A049611(n)`
-/

namespace A190050.P3149132383508398466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236471 (∑ j ∈ Finset.range (n + 1), f1 j) + A049611 n

end

end A190050.P3149132383508398466

namespace A190050

/-- `A236471(∑[n])+A049611(n)` -/
def P3149132383508398466.Spec : Prop :=
  ∀ n, P3149132383508398466.a n = A190050 n

end A190050

/-! ## A190050.P12321921703504383817

`A175136(∑[n+1]+2)`
-/

namespace A190050.P12321921703504383817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175136 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A190050.P12321921703504383817

namespace A190050

/-- `A175136(∑[n+1]+2)` -/
def P12321921703504383817.Spec : Prop :=
  ∀ n, P12321921703504383817.a n = A190050 n

end A190050

/-! ## A190050.P2882312885566776137

`A210562(∑[n+2]-1)`
-/

namespace A190050.P2882312885566776137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210562 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A190050.P2882312885566776137

namespace A190050

/-- `A210562(∑[n+2]-1)` -/
def P2882312885566776137.Spec : Prop :=
  ∀ n, P2882312885566776137.a n = A190050 n

end A190050

/-! ## A190050.P17623300894654575890

`A196182(A340266(n+1))`
-/

namespace A190050.P17623300894654575890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196182 (A340266 (n + 1)).toNat

end

end A190050.P17623300894654575890

namespace A190050

/-- `A196182(A340266(n+1))` -/
def P17623300894654575890.Spec : Prop :=
  ∀ n, P17623300894654575890.a n = A190050 n

end A190050

/-!
# A190051: Expansion of (1-x)*(10*x^4-20*x^3+16*x^2-6*x+1)/(1-2*x)^5.

The programs for A190051, the canonical program `A190051.P5731589860248151259` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190051 has offset 0).

The definition of A190051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+22x^2-36x^3+30x^4-10x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` (program `A190051.P5731589860248151259`, by `A190051.P5731589860248151259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190051.P5731589860248151259

`ogf((1-7x+22x^2-36x^3+30x^4-10x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190051

/-- `ogf((1-7x+22x^2-36x^3+30x^4-10x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P5731589860248151259.Spec : Prop :=
  ∀ n, P5731589860248151259.a n = A190051 n

theorem P5731589860248151259.correct : P5731589860248151259.Spec := by
  intro n
  simp only [A190051]

end A190051

/-! ## A190051.P8197523974380305121

`A175136(∑[n+2]+4)`
-/

namespace A190051.P8197523974380305121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175136 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A190051.P8197523974380305121

namespace A190051

/-- `A175136(∑[n+2]+4)` -/
def P8197523974380305121.Spec : Prop :=
  ∀ n, P8197523974380305121.a n = A190051 n

end A190051

/-! ## A190051.P2432437029427751530

`A196182(A167614(n+2))`
-/

namespace A190051.P2432437029427751530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196182 (A167614 (n + 2)).toNat

end

end A190051.P2432437029427751530

namespace A190051

/-- `A196182(A167614(n+2))` -/
def P2432437029427751530.Spec : Prop :=
  ∀ n, P2432437029427751530.a n = A190051 n

end A190051

/-! ## A190051.P8354574801307486964

`record[gcd(A175136(n+5), A207032(n+1))]`
-/

namespace A190051.P8354574801307486964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175136 (n + 5)) (A207032 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190051.P8354574801307486964

namespace A190051

/-- `record[gcd(A175136(n+5), A207032(n+1))]` -/
def P8354574801307486964.Spec : Prop :=
  ∀ n, (P8354574801307486964.a n : ℤ) = A190051 n

end A190051

/-!
# A190052: Least number having exactly two odd prime factors that differ by 2*n^2.

The programs for A190052, there is no canonical definition to state claims against.
-/

/-! ## A190052.P336117392148814802

`A216898(n+1)²-(n+1)²²`
-/

namespace A190052.P336117392148814802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216898 (n + 1) ^ 2 - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A190052.P336117392148814802

/-! ## A190052.P4286348041930050690

`A083372((n+1)²)`
-/

namespace A190052.P4286348041930050690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083372 ((n + 1) ^ 2)

end

end A190052.P4286348041930050690

/-! ## A190052.P7171374695525667291

`A020483((n+1)²)*A020484((n+1)²)`
-/

namespace A190052.P7171374695525667291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 ((n + 1) ^ 2) * A020484 ((n + 1) ^ 2)

end

end A190052.P7171374695525667291

/-! ## A190052.P7968881461569188310

`A020484((n+1)²)*A054906((n+1)²)`
-/

namespace A190052.P7968881461569188310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 ((n + 1) ^ 2) * A054906 ((n + 1) ^ 2)

end

end A190052.P7968881461569188310

/-! ## A190052.P10041827118705036638

`(A216898(n+1)+(n+1)²)*A020483(∑[A005408(n)])`
-/

namespace A190052.P10041827118705036638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216898 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A020483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190052.P10041827118705036638

/-! ## A190052.P8790965863540000335

`(A216898(n+1)+(n+1)²)*A054906(∑[A005408(n)])`
-/

namespace A190052.P8790965863540000335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216898 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A054906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190052.P8790965863540000335

/-! ## A190052.P3879108131564413929

`(A216898(n+1)+(n+1)²)*A020483(Δ[A153058(n)])`
-/

namespace A190052.P3879108131564413929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216898 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A020483 (f1 (n + 1) - f1 n).toNat

end

end A190052.P3879108131564413929

/-! ## A190052.P11959584938983416460

`(A216898(n+1)+(n+1)²)*A054906(Δ[A153058(n)])`
-/

namespace A190052.P11959584938983416460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216898 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A054906 (f1 (n + 1) - f1 n).toNat

end

end A190052.P11959584938983416460

/-! ## A190052.P15743095728093520541

`A020483(∑[A005408(n)])*A190148(n+1)`
-/

namespace A190052.P15743095728093520541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A190148 (n + 1)

end

end A190052.P15743095728093520541

/-! ## A190052.P14045682823464004544

`A054906(∑[A005408(n)])*A190148(n+1)`
-/

namespace A190052.P14045682823464004544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A190148 (n + 1)

end

end A190052.P14045682823464004544

/-!
# A190053: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190053, the canonical program `A190053.P9225782899654358364` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190053 has offset 1).

The definition of A190053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190053.P9225782899654358364

`n+1+floor((n+1)*sin(π/3)/2)+floor((n+1)/(2*sin(π/3)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190053

/-- `n+1+floor((n+1)*sin(π/3)/2)+floor((n+1)/(2*sin(π/3)))` -/
def P9225782899654358364.Spec : Prop :=
  ∀ n, P9225782899654358364.a n = A190053 (n + 1)

theorem P9225782899654358364.correct : P9225782899654358364.Spec := by
  intro n
  simp only [A190053, Nat.add_sub_cancel]

end A190053

/-! ## A190053.P264198172571938352

`A186539(n+1)+A004526(A171970(n+1))`
-/

namespace A190053.P264198172571938352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A004526 (A171970 (n + 1)).toNat

end

end A190053.P264198172571938352

namespace A190053

/-- `A186539(n+1)+A004526(A171970(n+1))` -/
def P264198172571938352.Spec : Prop :=
  ∀ n, P264198172571938352.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P2695790265151019832

`A308358(n+1)+A186539(n+1)`
-/

namespace A190053.P2695790265151019832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (n + 1) + A186539 (n + 1)

end

end A190053.P2695790265151019832

namespace A190053

/-- `A308358(n+1)+A186539(n+1)` -/
def P2695790265151019832.Spec : Prop :=
  ∀ n, P2695790265151019832.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P97864800709393048

`A186539(n+1)+A002265(A022838(n+1))`
-/

namespace A190053.P97864800709393048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A002265 (A022838 (n + 1)).toNat

end

end A190053.P97864800709393048

namespace A190053

/-- `A186539(n+1)+A002265(A022838(n+1))` -/
def P97864800709393048.Spec : Prop :=
  ∀ n, P97864800709393048.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P8037619282881136499

`A123108(A180123(n+1))+A008647(A022838(n+1))`
-/

namespace A190053.P8037619282881136499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A180123 (n + 1)).toNat + A008647 (A022838 (n + 1)).toNat

end

end A190053.P8037619282881136499

namespace A190053

/-- `A123108(A180123(n+1))+A008647(A022838(n+1))` -/
def P8037619282881136499.Spec : Prop :=
  ∀ n, P8037619282881136499.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P4036466663632536406

`A097337(n+1)+A002265(A190334(n+1))`
-/

namespace A190053.P4036466663632536406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + A002265 (A190334 (n + 1)).toNat

end

end A190053.P4036466663632536406

namespace A190053

/-- `A097337(n+1)+A002265(A190334(n+1))` -/
def P4036466663632536406.Spec : Prop :=
  ∀ n, P4036466663632536406.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P15679462943919845225

`A303590(n+1)-A183142(n+1)`
-/

namespace A190053.P15679462943919845225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) - A183142 (n + 1)

end

end A190053.P15679462943919845225

namespace A190053

/-- `A303590(n+1)-A183142(n+1)` -/
def P15679462943919845225.Spec : Prop :=
  ∀ n, P15679462943919845225.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P383210341108760283

`A004396(A303590(n+1)+A194979(n+1))`
-/

namespace A190053.P383210341108760283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A303590 (n + 1) + A194979 (n + 1)).toNat

end

end A190053.P383210341108760283

namespace A190053

/-- `A004396(A303590(n+1)+A194979(n+1))` -/
def P383210341108760283.Spec : Prop :=
  ∀ n, P383210341108760283.a n = A190053 (n + 1)

end A190053

/-! ## A190053.P16513600274307665126

`A303590(n+1)-A002264(A182777(n+1))`
-/

namespace A190053.P16513600274307665126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) - A002264 (A182777 (n + 1)).toNat

end

end A190053.P16513600274307665126

namespace A190053

/-- `A303590(n+1)-A002264(A182777(n+1))` -/
def P16513600274307665126.Spec : Prop :=
  ∀ n, P16513600274307665126.a n = A190053 (n + 1)

end A190053

/-!
# A190054: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190054, the canonical program `A190054.P14669485344474698555` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190054 has offset 1).

The definition of A190054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190054.P14669485344474698555

`n+1+floor(2*(n+1)/sin(π/3))+floor((n+1)/sin(π/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190054

/-- `n+1+floor(2*(n+1)/sin(π/3))+floor((n+1)/sin(π/3)²)` -/
def P14669485344474698555.Spec : Prop :=
  ∀ n, P14669485344474698555.a n = A190054 (n + 1)

theorem P14669485344474698555.correct : P14669485344474698555.Spec := by
  intro n
  simp only [A190054, Nat.add_sub_cancel]

end A190054

/-! ## A190054.P17436923950915406882

`A194979(4*(n+1))+A047282(n+1)`
-/

namespace A190054.P17436923950915406882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (4 * (n + 1)) + A047282 (n + 1)

end

end A190054.P17436923950915406882

namespace A190054

/-- `A194979(4*(n+1))+A047282(n+1)` -/
def P17436923950915406882.Spec : Prop :=
  ∀ n, P17436923950915406882.a n = A190054 (n + 1)

end A190054

/-! ## A190054.P169642264079499398

`A203301(A326057(n+1))+A061785(2*n+1)`
-/

namespace A190054.P169642264079499398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203301 (A326057 (n + 1)).toNat + A061785 (2 * n + 1)

end

end A190054.P169642264079499398

namespace A190054

/-- `A203301(A326057(n+1))+A061785(2*n+1)` -/
def P169642264079499398.Spec : Prop :=
  ∀ n, P169642264079499398.a n = A190054 (n + 1)

end A190054

/-! ## A190054.P15395556666198743000

`A003056(A001107(2*(n+1))+2)-n`
-/

namespace A190054.P15395556666198743000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001107 (2 * (n + 1)) + 2).toNat - (n : ℤ)

end

end A190054.P15395556666198743000

namespace A190054

/-- `A003056(A001107(2*(n+1))+2)-n` -/
def P15395556666198743000.Spec : Prop :=
  ∀ n, P15395556666198743000.a n = A190054 (n + 1)

end A190054

/-! ## A190054.P11179343558822065788

`A003056(A298791(3*n+2)-n)-n`
-/

namespace A190054.P11179343558822065788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A298791 (3 * n + 2) - (n : ℤ)).toNat - (n : ℤ)

end

end A190054.P11179343558822065788

namespace A190054

/-- `A003056(A298791(3*n+2)-n)-n` -/
def P11179343558822065788.Spec : Prop :=
  ∀ n, P11179343558822065788.a n = A190054 (n + 1)

end A190054

/-!
# A190055: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190055, the canonical program `A190055.P7163293221970799965` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190055 has offset 1).

The definition of A190055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190055.P7163293221970799965

`n+1+floor(2*(n+1)*sin(π/3))+floor((n+1)*sin(π/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190055

/-- `n+1+floor(2*(n+1)*sin(π/3))+floor((n+1)*sin(π/3)²)` -/
def P7163293221970799965.Spec : Prop :=
  ∀ n, P7163293221970799965.a n = A190055 (n + 1)

theorem P7163293221970799965.correct : P7163293221970799965.Spec := by
  intro n
  simp only [A190055, Nat.add_sub_cancel]

end A190055

/-! ## A190055.P2048767028386042385

`floor((sqrt(3)+2)*(n+1))-1-floor(n/4)`
-/

namespace A190055.P2048767028386042385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋ - 1 - ⌊(n : ℚ) / 4⌋

end

end A190055.P2048767028386042385

namespace A190055

/-- `floor((sqrt(3)+2)*(n+1))-1-floor(n/4)` -/
def P2048767028386042385.Spec : Prop :=
  ∀ n, P2048767028386042385.a n = A190055 (n + 1)

end A190055

/-! ## A190055.P10642892007472874196

`abs(∑[char[4*n]]-A003512(n+1))`
-/

namespace A190055.P10642892007472874196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003512 (n + 1)|

end

end A190055.P10642892007472874196

namespace A190055

/-- `abs(∑[char[4*n]]-A003512(n+1))` -/
def P10642892007472874196.Spec : Prop :=
  ∀ n, P10642892007472874196.a n = A190055 (n + 1)

end A190055

/-! ## A190055.P15863578665648492025

`∑[A166486(n)+A007538(n+1)]`
-/

namespace A190055.P15863578665648492025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190055.P15863578665648492025

namespace A190055

/-- `∑[A166486(n)+A007538(n+1)]` -/
def P15863578665648492025.Spec : Prop :=
  ∀ n, P15863578665648492025.a n = A190055 (n + 1)

end A190055

/-! ## A190055.P18010507778185547724

`A008619(2*A180123(n+1)-A008619(n))`
-/

namespace A190055.P18010507778185547724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A180123 (n + 1) - A008619 n).toNat

end

end A190055.P18010507778185547724

namespace A190055

/-- `A008619(2*A180123(n+1)-A008619(n))` -/
def P18010507778185547724.Spec : Prop :=
  ∀ n, P18010507778185547724.a n = A190055 (n + 1)

end A190055

/-! ## A190055.P18379399508409878680

`A002265(A188089(n+1))`
-/

namespace A190055.P18379399508409878680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A188089 (n + 1)).toNat

end

end A190055.P18379399508409878680

namespace A190055

/-- `A002265(A188089(n+1))` -/
def P18379399508409878680.Spec : Prop :=
  ∀ n, P18379399508409878680.a n = A190055 (n + 1)

end A190055

/-!
# A190056: a(n) = n + [n*s/r] + [n*t/r]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190056, the canonical program `A190056.P8183118750180193618` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190056 has offset 1).

The definition of A190056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190056.P8183118750180193618

`n+1+floor(2*(n+1)*sin(π/3))+floor(2*(n+1)/sin(π/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190056

/-- `n+1+floor(2*(n+1)*sin(π/3))+floor(2*(n+1)/sin(π/3))` -/
def P8183118750180193618.Spec : Prop :=
  ∀ n, P8183118750180193618.a n = A190056 (n + 1)

theorem P8183118750180193618.correct : P8183118750180193618.Spec := by
  intro n
  simp only [A190056, Nat.add_sub_cancel]

end A190056

/-! ## A190056.P2200806919395298525

`A190006(2*(n+1))-(n+1)`
-/

namespace A190056.P2200806919395298525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190006 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A190056.P2200806919395298525

namespace A190056

/-- `A190006(2*(n+1))-(n+1)` -/
def P2200806919395298525.Spec : Prop :=
  ∀ n, P2200806919395298525.a n = A190056 (n + 1)

end A190056

/-! ## A190056.P7060575451042401764

`A190053(4*(n+1))-3*(n+1)`
-/

namespace A190056.P7060575451042401764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190053 (4 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A190056.P7060575451042401764

namespace A190056

/-- `A190053(4*(n+1))-3*(n+1)` -/
def P7060575451042401764.Spec : Prop :=
  ∀ n, P7060575451042401764.a n = A190056 (n + 1)

end A190056

/-! ## A190056.P2231787574486263250

`A097337(4*(n+1))+A054088(n+1)`
-/

namespace A190056.P2231787574486263250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (4 * (n + 1)) + A054088 (n + 1)

end

end A190056.P2231787574486263250

namespace A190056

/-- `A097337(4*(n+1))+A054088(n+1)` -/
def P2231787574486263250.Spec : Prop :=
  ∀ n, P2231787574486263250.a n = A190056 (n + 1)

end A190056

/-! ## A190056.P6349239479906110167

`A194979(4*(n+1))+A022838(n+1)+n`
-/

namespace A190056.P6349239479906110167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (4 * (n + 1)) + (A022838 (n + 1) + (n : ℤ))

end

end A190056.P6349239479906110167

namespace A190056

/-- `A194979(4*(n+1))+A022838(n+1)+n` -/
def P6349239479906110167.Spec : Prop :=
  ∀ n, P6349239479906110167.a n = A190056 (n + 1)

end A190056

/-! ## A190056.P17686400687285786279

`n+1+A097337(3*(n+1))+A097337(4*(n+1))`
-/

namespace A190056.P17686400687285786279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A097337 (3 * (n + 1)) + A097337 (4 * (n + 1)))

end

end A190056.P17686400687285786279

namespace A190056

/-- `n+1+A097337(3*(n+1))+A097337(4*(n+1))` -/
def P17686400687285786279.Spec : Prop :=
  ∀ n, P17686400687285786279.a n = A190056 (n + 1)

end A190056

/-! ## A190056.P12975421632226181762

`A028310(A190006(n+2+n)-(n+1))`
-/

namespace A190056.P12975421632226181762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A190006 (n + 2 + n) - (n + 1 : ℤ)).toNat

end

end A190056.P12975421632226181762

namespace A190056

/-- `A028310(A190006(n+2+n)-(n+1))` -/
def P12975421632226181762.Spec : Prop :=
  ∀ n, P12975421632226181762.a n = A190056 (n + 1)

end A190056

/-!
# A190057: a(n) = n + [n*r/s] + [n*t/s]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190057, the canonical program `A190057.P4302537667797237693` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190057 has offset 1).

The definition of A190057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190057.P4302537667797237693

`n+1+floor((n+1)/(2*sin(π/3)))+floor((n+1)/sin(π/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190057

/-- `n+1+floor((n+1)/(2*sin(π/3)))+floor((n+1)/sin(π/3)²)` -/
def P4302537667797237693.Spec : Prop :=
  ∀ n, P4302537667797237693.a n = A190057 (n + 1)

theorem P4302537667797237693.correct : P4302537667797237693.Spec := by
  intro n
  simp only [A190057, Nat.add_sub_cancel]

end A190057

/-! ## A190057.P16480512143075207067

`A190333(n+1)+1+n`
-/

namespace A190057.P16480512143075207067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190333 (n + 1) + 1 + (n : ℤ)

end

end A190057.P16480512143075207067

namespace A190057

/-- `A190333(n+1)+1+n` -/
def P16480512143075207067.Spec : Prop :=
  ∀ n, P16480512143075207067.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P90875528142520626

`floor(A182771(n+1)+(n+1)/3)`
-/

namespace A190057.P90875528142520626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182771 (n + 1) : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A190057.P90875528142520626

namespace A190057

/-- `floor(A182771(n+1)+(n+1)/3)` -/
def P90875528142520626.Spec : Prop :=
  ∀ n, P90875528142520626.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P8269562644898287448

`A194979(n+1)+A047282(n+1)`
-/

namespace A190057.P8269562644898287448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) + A047282 (n + 1)

end

end A190057.P8269562644898287448

namespace A190057

/-- `A194979(n+1)+A047282(n+1)` -/
def P8269562644898287448.Spec : Prop :=
  ∀ n, P8269562644898287448.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P11710978111760393962

`A097337(n+1)+∑[A177702(n)+1]`
-/

namespace A190057.P11710978111760393962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190057.P11710978111760393962

namespace A190057

/-- `A097337(n+1)+∑[A177702(n)+1]` -/
def P11710978111760393962.Spec : Prop :=
  ∀ n, P11710978111760393962.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P1699246265728248324

`A042965(n+1)+A186539(n+1)+1`
-/

namespace A190057.P1699246265728248324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A186539 (n + 1) + 1)

end

end A190057.P1699246265728248324

namespace A190057

/-- `A042965(n+1)+A186539(n+1)+1` -/
def P1699246265728248324.Spec : Prop :=
  ∀ n, P1699246265728248324.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P1854603946389891198

`n+1+A194979(n+1)+A042965(n+1)`
-/

namespace A190057.P1854603946389891198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A194979 (n + 1) + A042965 (n + 1))

end

end A190057.P1854603946389891198

namespace A190057

/-- `n+1+A194979(n+1)+A042965(n+1)` -/
def P1854603946389891198.Spec : Prop :=
  ∀ n, P1854603946389891198.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P2912335485736953884

`Δ[A071619(n+1)]+A097337(n+1)+n`
-/

namespace A190057.P2912335485736953884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A097337 (n + 1) + (n : ℤ))

end

end A190057.P2912335485736953884

namespace A190057

/-- `Δ[A071619(n+1)]+A097337(n+1)+n` -/
def P2912335485736953884.Spec : Prop :=
  ∀ n, P2912335485736953884.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P14150825651249725

`A260307(2*n)+A194979(n+1)`
-/

namespace A190057.P14150825651249725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 (2 * n) + A194979 (n + 1)

end

end A190057.P14150825651249725

namespace A190057

/-- `A260307(2*n)+A194979(n+1)` -/
def P14150825651249725.Spec : Prop :=
  ∀ n, P14150825651249725.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P6414758242781239356

`A186539(n+1)+A008620(A136290(n))`
-/

namespace A190057.P6414758242781239356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A008620 (A136290 n).toNat

end

end A190057.P6414758242781239356

namespace A190057

/-- `A186539(n+1)+A008620(A136290(n))` -/
def P6414758242781239356.Spec : Prop :=
  ∀ n, P6414758242781239356.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P7284363142239225562

`A186539(n+1)+A154958(A008574(n))`
-/

namespace A190057.P7284363142239225562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A154958 (A008574 n).toNat

end

end A190057.P7284363142239225562

namespace A190057

/-- `A186539(n+1)+A154958(A008574(n))` -/
def P7284363142239225562.Spec : Prop :=
  ∀ n, P7284363142239225562.a n = A190057 (n + 1)

end A190057

/-! ## A190057.P5515325252725035530

`A008620(A182778(n+1))+A004396(2*n)`
-/

namespace A190057.P5515325252725035530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A182778 (n + 1)).toNat + A004396 (2 * n)

end

end A190057.P5515325252725035530

namespace A190057

/-- `A008620(A182778(n+1))+A004396(2*n)` -/
def P5515325252725035530.Spec : Prop :=
  ∀ n, P5515325252725035530.a n = A190057 (n + 1)

end A190057

/-!
# A190058: a(n) = n + [n*r/t] + [n*s/t]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

The programs for A190058, the canonical program `A190058.P6495222783503891125` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190058 has offset 1).

The definition of A190058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190058.P6495222783503891125

`n+1+floor((n+1)*sin(π/3)/2)+floor((n+1)*sin(π/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190058

/-- `n+1+floor((n+1)*sin(π/3)/2)+floor((n+1)*sin(π/3)²)` -/
def P6495222783503891125.Spec : Prop :=
  ∀ n, P6495222783503891125.a n = A190058 (n + 1)

theorem P6495222783503891125.correct : P6495222783503891125.Spec := by
  intro n
  simp only [A190058, Nat.add_sub_cancel]

end A190058

/-! ## A190058.P17496650737982553346

`A065033(A190008(n+1)-A047293(n+1))+A047293(n+1)`
-/

namespace A190058.P17496650737982553346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190008 (n + 1) - A047293 (n + 1)).toNat + A047293 (n + 1)

end

end A190058.P17496650737982553346

namespace A190058

/-- `A065033(A190008(n+1)-A047293(n+1))+A047293(n+1)` -/
def P17496650737982553346.Spec : Prop :=
  ∀ n, P17496650737982553346.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P6397097136836854313

`A110654(A190008(n+1)-A047293(n+1))+A047293(n+1)`
-/

namespace A190058.P6397097136836854313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A190008 (n + 1) - A047293 (n + 1)).toNat + A047293 (n + 1)

end

end A190058.P6397097136836854313

namespace A190058

/-- `A110654(A190008(n+1)-A047293(n+1))+A047293(n+1)` -/
def P6397097136836854313.Spec : Prop :=
  ∀ n, P6397097136836854313.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P2561962998980832407

`n+1+A308358(n+1)+A057353(n+1)`
-/

namespace A190058.P2561962998980832407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A308358 (n + 1) + A057353 (n + 1))

end

end A190058.P2561962998980832407

namespace A190058

/-- `n+1+A308358(n+1)+A057353(n+1)` -/
def P2561962998980832407.Spec : Prop :=
  ∀ n, P2561962998980832407.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P10140916510190259561

`A047293(n+1)+A008621(A022838(n+1))`
-/

namespace A190058.P10140916510190259561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1) + A008621 (A022838 (n + 1)).toNat

end

end A190058.P10140916510190259561

namespace A190058

/-- `A047293(n+1)+A008621(A022838(n+1))` -/
def P10140916510190259561.Spec : Prop :=
  ∀ n, P10140916510190259561.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P11668967791305594842

`A065033(A190008(n+1)+A047293(n+1))`
-/

namespace A190058.P11668967791305594842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190008 (n + 1) + A047293 (n + 1)).toNat

end

end A190058.P11668967791305594842

namespace A190058

/-- `A065033(A190008(n+1)+A047293(n+1))` -/
def P11668967791305594842.Spec : Prop :=
  ∀ n, P11668967791305594842.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P1533720293900164974

`A110654(A190008(n+1)+A047293(n+1))`
-/

namespace A190058.P1533720293900164974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A190008 (n + 1) + A047293 (n + 1)).toNat

end

end A190058.P1533720293900164974

namespace A190058

/-- `A110654(A190008(n+1)+A047293(n+1))` -/
def P1533720293900164974.Spec : Prop :=
  ∀ n, P1533720293900164974.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P15253356729508564954

`A002265(A190334(n+1))+n-A002265(n)`
-/

namespace A190058.P15253356729508564954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A190334 (n + 1)).toNat + ((n : ℤ) - A002265 n)

end

end A190058.P15253356729508564954

namespace A190058

/-- `A002265(A190334(n+1))+n-A002265(n)` -/
def P15253356729508564954.Spec : Prop :=
  ∀ n, P15253356729508564954.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P16540632596622570827

`A008621(A190334(n+1))+n-A008621(n)`
-/

namespace A190058.P16540632596622570827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190334 (n + 1)).toNat + ((n : ℤ) - A008621 n)

end

end A190058.P16540632596622570827

namespace A190058

/-- `A008621(A190334(n+1))+n-A008621(n)` -/
def P16540632596622570827.Spec : Prop :=
  ∀ n, P16540632596622570827.a n = A190058 (n + 1)

end A190058

/-! ## A190058.P17991775535555041830

`A303590(n+1)-A002265(n)`
-/

namespace A190058.P17991775535555041830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) - A002265 n

end

end A190058.P17991775535555041830

namespace A190058

/-- `A303590(n+1)-A002265(n)` -/
def P17991775535555041830.Spec : Prop :=
  ∀ n, P17991775535555041830.a n = A190058 (n + 1)

end A190058

/-!
# A190059: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(Pi/5), t=csc(Pi/5).

The programs for A190059, the canonical program `A190059.P9803396630904402915` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190059 has offset 1).

The definition of A190059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190059.P9803396630904402915

`n+1+floor((n+1)*sin(π/5))+floor((n+1)/sin(π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190059

/-- `n+1+floor((n+1)*sin(π/5))+floor((n+1)/sin(π/5))` -/
def P9803396630904402915.Spec : Prop :=
  ∀ n, P9803396630904402915.a n = A190059 (n + 1)

theorem P9803396630904402915.correct : P9803396630904402915.Spec := by
  intro n
  simp only [A190059, Nat.add_sub_cancel]

end A190059

/-! ## A190059.P15205237455778046660

`∑[A111497(A025487(n+1))]+n`
-/

namespace A190059.P15205237455778046660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111497 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190059.P15205237455778046660

namespace A190059

/-- `∑[A111497(A025487(n+1))]+n` -/
def P15205237455778046660.Spec : Prop :=
  ∀ n, P15205237455778046660.a n = A190059 (n + 1)

end A190059

/-! ## A190059.P5554923711793843703

`Δ[n²]+A111972(A003461(n))+n`
-/

namespace A190059.P5554923711793843703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A111972 (A003461 n).toNat + (n : ℤ))

end

end A190059.P5554923711793843703

namespace A190059

/-- `Δ[n²]+A111972(A003461(n))+n` -/
def P5554923711793843703.Spec : Prop :=
  ∀ n, P5554923711793843703.a n = A190059 (n + 1)

end A190059

/-! ## A190059.P3219849616419539415

`A056556(A007518(2*(n+1)))+1+n`
-/

namespace A190059.P3219849616419539415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A007518 (2 * (n + 1))).toNat + 1 + (n : ℤ)

end

end A190059.P3219849616419539415

namespace A190059

/-- `A056556(A007518(2*(n+1)))+1+n` -/
def P3219849616419539415.Spec : Prop :=
  ∀ n, P3219849616419539415.a n = A190059 (n + 1)

end A190059

/-! ## A190059.P16726487044464967965

`floor(sqrt(A101418(3*n+2)+A045681(n+4)))`
-/

namespace A190059.P16726487044464967965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A101418 (3 * n + 2) + A045681 (n + 4))

end

end A190059.P16726487044464967965

namespace A190059

/-- `floor(sqrt(A101418(3*n+2)+A045681(n+4)))` -/
def P16726487044464967965.Spec : Prop :=
  ∀ n, P16726487044464967965.a n = A190059 (n + 1)

end A190059

/-!
# A190060: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(Pi/5), t=csc(Pi/5).

The programs for A190060, the canonical program `A190060.P17520377405647131686` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190060 has offset 1).

The definition of A190060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190060.P17520377405647131686

`n+1+floor((n+1)/sin(π/5))+floor((n+1)/sin(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190060

/-- `n+1+floor((n+1)/sin(π/5))+floor((n+1)/sin(π/5)²)` -/
def P17520377405647131686.Spec : Prop :=
  ∀ n, P17520377405647131686.a n = A190060 (n + 1)

theorem P17520377405647131686.correct : P17520377405647131686.Spec := by
  intro n
  simp only [A190060, Nat.add_sub_cancel]

end A190060

/-! ## A190060.P707092914590376162

`A314220(n+1)-(A185284(2*n+1)+1)`
-/

namespace A190060.P707092914590376162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 (n + 1) - (A185284 (2 * n + 1) + 1)

end

end A190060.P707092914590376162

namespace A190060

/-- `A314220(n+1)-(A185284(2*n+1)+1)` -/
def P707092914590376162.Spec : Prop :=
  ∀ n, P707092914590376162.a n = A190060 (n + 1)

end A190060

/-! ## A190060.P11455905832938614785

`∑[Δ[A314220(n)]%A241008(3*n+5)]`
-/

namespace A190060.P11455905832938614785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A241008 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190060.P11455905832938614785

namespace A190060

/-- `∑[Δ[A314220(n)]%A241008(3*n+5)]` -/
def P11455905832938614785.Spec : Prop :=
  ∀ n, P11455905832938614785.a n = A190060 (n + 1)

end A190060

/-! ## A190060.P15412756262654823301

`A313053(n+1)+A001222(A000079(n))`
-/

namespace A190060.P15412756262654823301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 (n + 1) + A001222 (A000079 n).toNat

end

end A190060.P15412756262654823301

namespace A190060

/-- `A313053(n+1)+A001222(A000079(n))` -/
def P15412756262654823301.Spec : Prop :=
  ∀ n, P15412756262654823301.a n = A190060 (n + 1)

end A190060

/-!
# A190061: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(Pi/5), t=csc(Pi/5).

The programs for A190061, the canonical program `A190061.P2871278485548252775` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190061 has offset 1).

The definition of A190061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190061.P2871278485548252775

`n+1+floor((n+1)*sin(π/5))+floor((n+1)*sin(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190061

/-- `n+1+floor((n+1)*sin(π/5))+floor((n+1)*sin(π/5)²)` -/
def P2871278485548252775.Spec : Prop :=
  ∀ n, P2871278485548252775.a n = A190061 (n + 1)

theorem P2871278485548252775.correct : P2871278485548252775.Spec := by
  intro n
  simp only [A190061, Nat.add_sub_cancel]

end A190061

/-! ## A190061.P3324612205621639823

`A110882(A042965(n+1)%A000053(n+2))`
-/

namespace A190061.P3324612205621639823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110882 (Int.tmod (A042965 (n + 1)) (A000053 (n + 2))).toNat

end

end A190061.P3324612205621639823

namespace A190061

/-- `A110882(A042965(n+1)%A000053(n+2))` -/
def P3324612205621639823.Spec : Prop :=
  ∀ n, P3324612205621639823.a n = A190061 (n + 1)

end A190061

/-! ## A190061.P2093056863008373596

`A110882(A151933(3*n+2)+A042965(n+1))`
-/

namespace A190061.P2093056863008373596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110882 (A151933 (3 * n + 2) + A042965 (n + 1)).toNat

end

end A190061.P2093056863008373596

namespace A190061

/-- `A110882(A151933(3*n+2)+A042965(n+1))` -/
def P2093056863008373596.Spec : Prop :=
  ∀ n, P2093056863008373596.a n = A190061 (n + 1)

end A190061

/-! ## A190061.P1336849871988433636

`Δ[A343609(3*n)]+4*n+3-A209900(A080754(n+1))`
-/

namespace A190061.P1336849871988433636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((4 * n + 3 : ℤ) - A209900 (A080754 (n + 1)).toNat)

end

end A190061.P1336849871988433636

namespace A190061

/-- `Δ[A343609(3*n)]+4*n+3-A209900(A080754(n+1))` -/
def P1336849871988433636.Spec : Prop :=
  ∀ n, P1336849871988433636.a n = A190061 (n + 1)

end A190061

/-! ## A190061.P4875507506279378236

`A151933(A067418(n))+A110882(A042965(n+1))`
-/

namespace A190061.P4875507506279378236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A067418 n).toNat + A110882 (A042965 (n + 1)).toNat

end

end A190061.P4875507506279378236

namespace A190061

/-- `A151933(A067418(n))+A110882(A042965(n+1))` -/
def P4875507506279378236.Spec : Prop :=
  ∀ n, P4875507506279378236.a n = A190061 (n + 1)

end A190061

/-!
# A190062: a(n) = n*Fibonacci(n) - Sum_{i=0..n-1} Fibonacci(i).

The programs for A190062, the canonical program `A190062.P16595495950276087387` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190062 has offset 0).

The definition of A190062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045925, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190062.P16595495950276087387

`A045925(n)-A000071(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190062

/-- `A045925(n)-A000071(n+1)` -/
def P16595495950276087387.Spec : Prop :=
  ∀ n, P16595495950276087387.a n = A190062 n

theorem P16595495950276087387.correct : P16595495950276087387.Spec := by
  intro n
  simp only [A190062]

end A190062

/-! ## A190062.P15742632286928290664

`∑[n*∑[a(n-1)+a(n-2)]]` with `a(0)=-1, a(1)=2, a(2)=-1`
-/

namespace A190062.P15742632286928290664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, -1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P15742632286928290664

namespace A190062

/-- `∑[n*∑[a(n-1)+a(n-2)]]` -/
def P15742632286928290664.Spec : Prop :=
  ∀ n, P15742632286928290664.a n = A190062 n

end A190062

/-! ## A190062.P10944084660492160352

`∑[abs(n*A152163(n))]`
-/

namespace A190062.P10944084660492160352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A152163 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P10944084660492160352

namespace A190062

/-- `∑[abs(n*A152163(n))]` -/
def P10944084660492160352.Spec : Prop :=
  ∀ n, P10944084660492160352.a n = A190062 n

end A190062

/-! ## A190062.P12482255295564871712

`∑[n*Δ[A212804(n)]]`
-/

namespace A190062.P12482255295564871712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P12482255295564871712

namespace A190062

/-- `∑[n*Δ[A212804(n)]]` -/
def P12482255295564871712.Spec : Prop :=
  ∀ n, P12482255295564871712.a n = A190062 n

end A190062

/-! ## A190062.P14698974107605194744

`∑[n*Δ[Δ[A000045(n)]]]`
-/

namespace A190062.P14698974107605194744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P14698974107605194744

namespace A190062

/-- `∑[n*Δ[Δ[A000045(n)]]]` -/
def P14698974107605194744.Spec : Prop :=
  ∀ n, P14698974107605194744.a n = A190062 n

end A190062

/-! ## A190062.P7672579990992769850

`A006490(n)+a(n-1)` with `a(0)=0`
-/

namespace A190062.P7672579990992769850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006490 n + a (n - 1)

end

end A190062.P7672579990992769850

namespace A190062

/-- `A006490(n)+a(n-1)` -/
def P7672579990992769850.Spec : Prop :=
  ∀ n, P7672579990992769850.a n = A190062 n

end A190062

/-! ## A190062.P172810007454147534

`∑[A006490(abs(1-n)+1)]`
-/

namespace A190062.P172810007454147534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P172810007454147534

namespace A190062

/-- `∑[A006490(abs(1-n)+1)]` -/
def P172810007454147534.Spec : Prop :=
  ∀ n, P172810007454147534.a n = A190062 n

end A190062

/-! ## A190062.P29149623317623995

`∑[n*A000045(abs(2-n))]`
-/

namespace A190062.P29149623317623995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P29149623317623995

namespace A190062

/-- `∑[n*A000045(abs(2-n))]` -/
def P29149623317623995.Spec : Prop :=
  ∀ n, P29149623317623995.a n = A190062 n

end A190062

/-! ## A190062.P6202896853959911958

`∑[abs(n*A051792(2*(n+1)))]`
-/

namespace A190062.P6202896853959911958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A051792 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P6202896853959911958

namespace A190062

/-- `∑[abs(n*A051792(2*(n+1)))]` -/
def P6202896853959911958.Spec : Prop :=
  ∀ n, P6202896853959911958.a n = A190062 n

end A190062

/-! ## A190062.P3038496637934034248

`A010049(n)+A006478(n)`
-/

namespace A190062.P3038496637934034248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + A006478 n

end

end A190062.P3038496637934034248

namespace A190062

/-- `A010049(n)+A006478(n)` -/
def P3038496637934034248.Spec : Prop :=
  ∀ n, P3038496637934034248.a n = A190062 n

end A190062

/-! ## A190062.P1024470205945859666

`A122491(n)+A000045(n)`
-/

namespace A190062.P1024470205945859666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 n + A000045 n

end

end A190062.P1024470205945859666

namespace A190062

/-- `A122491(n)+A000045(n)` -/
def P1024470205945859666.Spec : Prop :=
  ∀ n, P1024470205945859666.a n = A190062 n

end A190062

/-! ## A190062.P12711807081325968259

`A006478(n)+Δ[A001629(n)]`
-/

namespace A190062.P12711807081325968259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + (f1 (n + 1) - f1 n)

end

end A190062.P12711807081325968259

namespace A190062

/-- `A006478(n)+Δ[A001629(n)]` -/
def P12711807081325968259.Spec : Prop :=
  ∀ n, P12711807081325968259.a n = A190062 n

end A190062

/-! ## A190062.P580980271663126870

`A099920(n)-∑[A000045(n)]`
-/

namespace A190062.P580980271663126870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P580980271663126870

namespace A190062

/-- `A099920(n)-∑[A000045(n)]` -/
def P580980271663126870.Spec : Prop :=
  ∀ n, P580980271663126870.a n = A190062 n

end A190062

/-! ## A190062.P6066025350740411663

`A007502(n+1)-A001595(n)`
-/

namespace A190062.P6066025350740411663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - A001595 n

end

end A190062.P6066025350740411663

namespace A190062

/-- `A007502(n+1)-A001595(n)` -/
def P6066025350740411663.Spec : Prop :=
  ∀ n, P6066025350740411663.a n = A190062 n

end A190062

/-! ## A190062.P8330375370043580553

`A006490(n+2)-A001610(n)`
-/

namespace A190062.P8330375370043580553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 2) - A001610 n

end

end A190062.P8330375370043580553

namespace A190062

/-- `A006490(n+2)-A001610(n)` -/
def P8330375370043580553.Spec : Prop :=
  ∀ n, P8330375370043580553.a n = A190062 n

end A190062

/-! ## A190062.P665548000430611016

`A099920(n)-A000071(n+2)`
-/

namespace A190062.P665548000430611016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n - A000071 (n + 2)

end

end A190062.P665548000430611016

namespace A190062

/-- `A099920(n)-A000071(n+2)` -/
def P665548000430611016.Spec : Prop :=
  ∀ n, P665548000430611016.a n = A190062 n

end A190062

/-! ## A190062.P10119289748239369412

`∑[n*(A000045(n)-A212804(n))]`
-/

namespace A190062.P10119289748239369412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n - A212804 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190062.P10119289748239369412

namespace A190062

/-- `∑[n*(A000045(n)-A212804(n))]` -/
def P10119289748239369412.Spec : Prop :=
  ∀ n, P10119289748239369412.a n = A190062 n

end A190062

/-! ## A190062.P8137538992890172379

`A240847(n+1)+A006478(n+1)`
-/

namespace A190062.P8137538992890172379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 1) + A006478 (n + 1)

end

end A190062.P8137538992890172379

namespace A190062

/-- `A240847(n+1)+A006478(n+1)` -/
def P8137538992890172379.Spec : Prop :=
  ∀ n, P8137538992890172379.a n = A190062 n

end A190062

/-! ## A190062.P17701187595604286543

`n*A000045(n)-A000071(n+1)`
-/

namespace A190062.P17701187595604286543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n - A000071 (n + 1)

end

end A190062.P17701187595604286543

namespace A190062

/-- `n*A000045(n)-A000071(n+1)` -/
def P17701187595604286543.Spec : Prop :=
  ∀ n, P17701187595604286543.a n = A190062 n

end A190062

/-!
# A190063: Number of arrangements of n+1 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190063, there is no canonical definition to state claims against.
-/

/-! ## A190063.P10729257826825856575

`A190071((n+1)²+n²)`
-/

namespace A190063.P10729257826825856575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 ((n + 1) ^ 2 + n ^ 2)

end

end A190063.P10729257826825856575

/-! ## A190063.P4656112604091595104

`A178489(n)*A190071(A001844(n))`
-/

namespace A190063.P4656112604091595104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A190071 (A001844 n).toNat

end

end A190063.P4656112604091595104

/-! ## A190063.P17459898178592412676

`and(A057428(n), A190071(A001844(n)))`
-/

namespace A190063.P17459898178592412676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A190071 (A001844 n).toNat)

end

end A190063.P17459898178592412676

/-! ## A190063.P13704210154102099319

`lcm(A097588(n+2), A190071(A001844(n)))`
-/

namespace A190063.P13704210154102099319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097588 (n + 2)) (A190071 (A001844 n).toNat)

end

end A190063.P13704210154102099319

/-! ## A190063.P14398872861709175123

`A190071(A001844(n))^A146631(n+1)`
-/

namespace A190063.P14398872861709175123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190071 (A001844 n).toNat : ℚ) ^ (A146631 (n + 1) : ℤ)

end

end A190063.P14398872861709175123

/-!
# A190064: Number of arrangements of n+1 nonzero numbers x(i) in -2..2 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190064, there is no canonical definition to state claims against.
-/

/-! ## A190064.P1311369605002851530

`A190071(∑[n+2])`
-/

namespace A190064.P1311369605002851530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190064.P1311369605002851530

/-! ## A190064.P8760391175888609861

`lcm(2, A190071(A000096(n+1)))`
-/

namespace A190064.P8760391175888609861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A190071 (A000096 (n + 1)).toNat)

end

end A190064.P8760391175888609861

/-! ## A190064.P17681208511822002982

`record[A190071(A000096(A004736(n+1)))]`
-/

namespace A190064.P17681208511822002982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190064.P17681208511822002982

/-! ## A190064.P11419868507187283965

`record[A190071(A000096(A054576(n+1)))]`
-/

namespace A190064.P11419868507187283965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000096 (A054576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190064.P11419868507187283965

/-! ## A190064.P11595585705449199092

`record[A190071(A233583(A276956(n+1)))]`
-/

namespace A190064.P11595585705449199092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A233583 (A276956 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190064.P11595585705449199092

/-!
# A190065: Number of arrangements of n+1 nonzero numbers x(i) in -3..3 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190065, there is no canonical definition to state claims against.
-/

/-! ## A190065.P2784471494188893981

`A190071(∑[n+3]+1)`
-/

namespace A190065.P2784471494188893981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190065.P2784471494188893981

/-! ## A190065.P9185306263204466921

`record[A190071(A130297(n+2))]`
-/

namespace A190065.P9185306263204466921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A130297 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190065.P9185306263204466921

/-! ## A190065.P5596414309322859345

`A190071(A034856(n+2))*A276329(2*n+1)`
-/

namespace A190065.P5596414309322859345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A034856 (n + 2)).toNat * A276329 (2 * n + 1)

end

end A190065.P5596414309322859345

/-!
# A190066: Number of arrangements of n+1 nonzero numbers x(i) in -4..4 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190066, there is no canonical definition to state claims against.
-/

/-! ## A190066.P15685161993808932267

`A190071(A027379(n+2))`
-/

namespace A190066.P15685161993808932267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A027379 (n + 2)).toNat

end

end A190066.P15685161993808932267

/-! ## A190066.P9534047519048885062

`A190071(A055998(n+2))`
-/

namespace A190066.P9534047519048885062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A055998 (n + 2)).toNat

end

end A190066.P9534047519048885062

/-! ## A190066.P11974730604873994821

`A190071(A155212(n)+5)`
-/

namespace A190066.P11974730604873994821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A155212 n + 5).toNat

end

end A190066.P11974730604873994821

/-! ## A190066.P1366956730269487342

`A190071(eq[3, A193592(n)])`
-/

namespace A190066.P1366956730269487342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190066.P1366956730269487342

/-! ## A190066.P14625804015240026221

`A190071(A052905(n+1)+2)`
-/

namespace A190066.P14625804015240026221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A052905 (n + 1) + 2).toNat

end

end A190066.P14625804015240026221

/-!
# A190067: Number of arrangements of n+1 nonzero numbers x(i) in -5..5 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190067, there is no canonical definition to state claims against.
-/

/-! ## A190067.P16499500619483803853

`A190071(∑[n+5]+6)`
-/

namespace A190067.P16499500619483803853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A190067.P16499500619483803853

/-!
# A190068: Number of arrangements of n+1 nonzero numbers x(i) in -6..6 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190068, there is no canonical definition to state claims against.
-/

/-! ## A190068.P17438377264611662912

`A190071(A052905(n+3))`
-/

namespace A190068.P17438377264611662912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A052905 (n + 3)).toNat

end

end A190068.P17438377264611662912

/-! ## A190068.P12725486356868148009

`A190071(eq[3, A219347(n)])`
-/

namespace A190068.P12725486356868148009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190068.P12725486356868148009

/-! ## A190068.P1557220455411973569

`A190071(eq[5, A193592(n)])`
-/

namespace A190068.P1557220455411973569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190068.P1557220455411973569

/-! ## A190068.P698799778769167964

`A190071(A046691(n+4)-1)`
-/

namespace A190068.P698799778769167964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A046691 (n + 4) - 1).toNat

end

end A190068.P698799778769167964

/-! ## A190068.P3000438716046557781

`A190071(Δ[Δ[A006504(n+1)]])`
-/

namespace A190068.P3000438716046557781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (f1 (n + 1) - f1 n).toNat

end

end A190068.P3000438716046557781

/-!
# A190069: Number of arrangements of n+1 nonzero numbers x(i) in -7..7 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190069, there is no canonical definition to state claims against.
-/

/-! ## A190069.P17623807807729085569

`A190071(eq[4, A219347(n)])`
-/

namespace A190069.P17623807807729085569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190069.P17623807807729085569

/-! ## A190069.P3504271733547557641

`A190071(eq[6, A193592(n)])`
-/

namespace A190069.P3504271733547557641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190069.P3504271733547557641

/-! ## A190069.P4832208426938805105

`A190071(A027379(n+5)-3)`
-/

namespace A190069.P4832208426938805105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A027379 (n + 5) - 3).toNat

end

end A190069.P4832208426938805105

/-! ## A190069.P13487027452225074748

`A190071(A000124(n+7)-7)`
-/

namespace A190069.P13487027452225074748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 7) - 7).toNat

end

end A190069.P13487027452225074748

/-! ## A190069.P1375507165149532546

`A190071(eq[7, A200370(n+1)])`
-/

namespace A190069.P1375507165149532546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190069.P1375507165149532546

/-!
# A190070: Number of arrangements of n+1 nonzero numbers x(i) in -8..8 with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190070, there is no canonical definition to state claims against.
-/

/-! ## A190070.P17356296161602652826

`A190071(eq[5, A219347(n)])`
-/

namespace A190070.P17356296161602652826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190070.P17356296161602652826

/-! ## A190070.P9488605096456686752

`A190071(eq[7, A193592(n)])`
-/

namespace A190070.P9488605096456686752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190070.P9488605096456686752

/-! ## A190070.P383241583554629162

`A190071(A155212(n+4)+1)`
-/

namespace A190070.P383241583554629162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A155212 (n + 4) + 1).toNat

end

end A190070.P383241583554629162

/-! ## A190070.P15932201731247271955

`A190071(A000217(n+8)-7)`
-/

namespace A190070.P15932201731247271955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000217 (n + 8) - 7).toNat

end

end A190070.P15932201731247271955

/-! ## A190070.P4213770353040642511

`A190071(A000124(n+8)-8)`
-/

namespace A190070.P4213770353040642511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 8) - 8).toNat

end

end A190070.P4213770353040642511

/-!
# A190071: T(n,k)=Number of arrangements of n+1 nonzero numbers x(i) in -k..k with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190071, there is no canonical definition to state claims against.
-/

/-! ## A190071.P14051138778733520442

`A189498(n+1)-A086010(A151421(n))`
-/

namespace A190071.P14051138778733520442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (n + 1) - A086010 (A151421 n).toNat

end

end A190071.P14051138778733520442

/-! ## A190071.P10493891322831661779

`A189498(n+1)-A025427(A356968(n))`
-/

namespace A190071.P10493891322831661779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (n + 1) - A025427 (A356968 n).toNat

end

end A190071.P10493891322831661779

/-! ## A190071.P485372441309286047

`A189498(n+1)-A240862(A070251(n+1))`
-/

namespace A190071.P485372441309286047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (n + 1) - A240862 (A070251 (n + 1)).toNat

end

end A190071.P485372441309286047

/-! ## A190071.P16522274634080348686

`A189498(A032559(n+1))-A281034(n+1)`
-/

namespace A190071.P16522274634080348686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A032559 (n + 1)).toNat - A281034 (n + 1)

end

end A190071.P16522274634080348686

/-!
# A190072: Number of arrangements of 3 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190072, there is no canonical definition to state claims against.
-/

/-! ## A190072.P16162905410583145129

`A190071(∑[n+1]+2)`
-/

namespace A190072.P16162905410583145129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A190072.P16162905410583145129

/-! ## A190072.P12536551394411429409

`record[A190071(A152949(n+1)-n)]`
-/

namespace A190072.P12536551394411429409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A152949 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190072.P12536551394411429409

/-! ## A190072.P2103987283959165367

`record[gcd(A025581(n), A190071(n+3))]`
-/

namespace A190072.P2103987283959165367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A190071 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190072.P2103987283959165367

/-! ## A190072.P9055471480374813303

`record[A190071(n+3)/A089504(n+1)]`
-/

namespace A190072.P9055471480374813303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190071 (n + 3) : ℚ) / (A089504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190072.P9055471480374813303

/-!
# A190073: Number of arrangements of 4 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190073, there is no canonical definition to state claims against.
-/

/-! ## A190073.P6660759127072641119

`A190071(∑[n+2]+4)`
-/

namespace A190073.P6660759127072641119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A190073.P6660759127072641119

/-! ## A190073.P15717781236466260644

`lcm(A033999(n), A190071(A167614(n+1)))`
-/

namespace A190073.P15717781236466260644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A190071 (A167614 (n + 1)).toNat)

end

end A190073.P15717781236466260644

/-! ## A190073.P16859480150412627068

`A190071(A000217(n+2)+3)%A190049(n)`
-/

namespace A190073.P16859480150412627068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190071 (A000217 (n + 2) + 3).toNat) (A190049 n)

end

end A190073.P16859480150412627068

/-! ## A190073.P3406871229957562866

`A019428(2*n)*A190071(A000217(n+2)+3)`
-/

namespace A190073.P3406871229957562866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) * A190071 (A000217 (n + 2) + 3).toNat

end

end A190073.P3406871229957562866

/-! ## A190073.P3096809780941418612

`A190071(A167614(n+1))%A075960(n)`
-/

namespace A190073.P3096809780941418612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190071 (A167614 (n + 1)).toNat) (A075960 n)

end

end A190073.P3096809780941418612

/-!
# A190074: Number of arrangements of 5 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190074, there is no canonical definition to state claims against.
-/

/-! ## A190074.P6100361915647340891

`A190071(A052905(n)+9)`
-/

namespace A190074.P6100361915647340891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A052905 n + 9).toNat

end

end A190074.P6100361915647340891

/-! ## A190074.P13466927102611275323

`A190071(A055999(n)+10)`
-/

namespace A190074.P13466927102611275323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A055999 n + 10).toNat

end

end A190074.P13466927102611275323

/-! ## A190074.P9033476749648286456

`record[A190071(A323294(n)+4)]`
-/

namespace A190074.P9033476749648286456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A323294 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190074.P9033476749648286456

/-! ## A190074.P17265862772390118203

`A190071(A167614(n+2)+1)`
-/

namespace A190074.P17265862772390118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A167614 (n + 2) + 1).toNat

end

end A190074.P17265862772390118203

/-! ## A190074.P18086913736616357863

`A190071(A167487(n+2)-3)`
-/

namespace A190074.P18086913736616357863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A167487 (n + 2) - 3).toNat

end

end A190074.P18086913736616357863

/-!
# A190075: Number of arrangements of 6 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190075, there is no canonical definition to state claims against.
-/

/-! ## A190075.P1942854303654317605

`A190071(A167499(n+3))`
-/

namespace A190075.P1942854303654317605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A167499 (n + 3)).toNat

end

end A190075.P1942854303654317605

/-! ## A190075.P9455440931559767098

`A190071(A000124(n+4)+4)`
-/

namespace A190075.P9455440931559767098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 4) + 4).toNat

end

end A190075.P9455440931559767098

/-! ## A190075.P9322803434762455059

`A190071(A000096(n+3)+6)`
-/

namespace A190075.P9322803434762455059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000096 (n + 3) + 6).toNat

end

end A190075.P9322803434762455059

/-! ## A190075.P10860200279228706069

`A190071(A055998(n+2)+8)`
-/

namespace A190075.P10860200279228706069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A055998 (n + 2) + 8).toNat

end

end A190075.P10860200279228706069

/-! ## A190075.P6519294183300661347

`A190071(eq[32, A130321(n)]-A005843(n))`
-/

namespace A190075.P6519294183300661347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A190075.P6519294183300661347

/-!
# A190076: Number of arrangements of 7 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190076, there is no canonical definition to state claims against.
-/

/-! ## A190076.P17756572169750683095

`A190071(A167499(n+4)+1)`
-/

namespace A190076.P17756572169750683095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A167499 (n + 4) + 1).toNat

end

end A190076.P17756572169750683095

/-! ## A190076.P13565285944575282895

`A190071(A152950(n+6)+3)`
-/

namespace A190076.P13565285944575282895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A152950 (n + 6) + 3).toNat

end

end A190076.P13565285944575282895

/-! ## A190076.P4107396336287974200

`A190071(A000124(n+5)+5)`
-/

namespace A190076.P4107396336287974200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 5) + 5).toNat

end

end A190076.P4107396336287974200

/-! ## A190076.P14729253280745837123

`A190071(A000096(n+4)+7)`
-/

namespace A190076.P14729253280745837123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000096 (n + 4) + 7).toNat

end

end A190076.P14729253280745837123

/-! ## A190076.P17654851260595746899

`A190071(A000217(n+5)+6)`
-/

namespace A190076.P17654851260595746899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000217 (n + 5) + 6).toNat

end

end A190076.P17654851260595746899

/-!
# A190077: Number of arrangements of 8 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190077, there is no canonical definition to state claims against.
-/

/-! ## A190077.P13903426813370158506

`A190071(eq[11, A066657(n)])`
-/

namespace A190077.P13903426813370158506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190077.P13903426813370158506

/-! ## A190077.P9213223777093893014

`A190071(A167499(n+5)+2)`
-/

namespace A190077.P9213223777093893014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A167499 (n + 5) + 2).toNat

end

end A190077.P9213223777093893014

/-! ## A190077.P1708434096570461376

`A190071(A000217(n+6)+7)`
-/

namespace A190077.P1708434096570461376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000217 (n + 6) + 7).toNat

end

end A190077.P1708434096570461376

/-! ## A190077.P7543491005809254101

`A190071(eq[8, A131818(n+1)])`
-/

namespace A190077.P7543491005809254101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190077.P7543491005809254101

/-! ## A190077.P16159987881564699865

`A190071(A000124(n+7)-(n+1))`
-/

namespace A190077.P16159987881564699865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A190077.P16159987881564699865

/-!
# A190078: Number of arrangements of 9 nonzero numbers x(i) in -n..n with the sum of div(x(i),x(i+1)), where div(a,b)=a/b produces the integer quotient implying a nonnegative remainder, equal to zero.

The programs for A190078, there is no canonical definition to state claims against.
-/

/-! ## A190078.P10193103340475106773

`A190071(eq[13, A066657(n)])`
-/

namespace A190078.P10193103340475106773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190078.P10193103340475106773

/-! ## A190078.P5694416311278206474

`A190071(A000124(n+7)+7)`
-/

namespace A190078.P5694416311278206474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000124 (n + 7) + 7).toNat

end

end A190078.P5694416311278206474

/-! ## A190078.P13302852272854624670

`A190071(A000217(n+7)+8)`
-/

namespace A190078.P13302852272854624670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (A000217 (n + 7) + 8).toNat

end

end A190078.P13302852272854624670

/-! ## A190078.P9115842817345804110

`A190071(eq[7, A002262(n)]+1)`
-/

namespace A190078.P9115842817345804110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A190078.P9115842817345804110

/-! ## A190078.P14680760691114474087

`A190071(eq[9, A131818(n+1)])`
-/

namespace A190078.P14680760691114474087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190078.P14680760691114474087

/-!
# A190079: n + [n*s/r] + [n*t/r]; r=1, s=cos(Pi/5), t=sec(Pi/5).

The programs for A190079, the canonical program `A190079.P9874723453973700029` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190079 has offset 1).

The definition of A190079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190079.P9874723453973700029

`n+1+floor((n+1)*cos(π/5))+floor((n+1)/cos(π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190079

/-- `n+1+floor((n+1)*cos(π/5))+floor((n+1)/cos(π/5))` -/
def P9874723453973700029.Spec : Prop :=
  ∀ n, P9874723453973700029.a n = A190079 (n + 1)

theorem P9874723453973700029.correct : P9874723453973700029.Spec := by
  intro n
  simp only [A190079, Nat.add_sub_cancel]

end A190079

/-! ## A190079.P11399741776294635593

`A108598(n+1)+A001961(n+1)`
-/

namespace A190079.P11399741776294635593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A001961 (n + 1)

end

end A190079.P11399741776294635593

namespace A190079

/-- `A108598(n+1)+A001961(n+1)` -/
def P11399741776294635593.Spec : Prop :=
  ∀ n, P11399741776294635593.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P16919918793524061958

`A108598(n+1)+comp[A004976(n)+n]`
-/

namespace A190079.P16919918793524061958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A190079.P16919918793524061958

namespace A190079

/-- `A108598(n+1)+comp[A004976(n)+n]` -/
def P16919918793524061958.Spec : Prop :=
  ∀ n, P16919918793524061958.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P2031664538206879169

`A022839(n+1)+A108598(n+1)-(n+1)`
-/

namespace A190079.P2031664538206879169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + (A108598 (n + 1) - (n + 1 : ℤ))

end

end A190079.P2031664538206879169

namespace A190079

/-- `A022839(n+1)+A108598(n+1)-(n+1)` -/
def P2031664538206879169.Spec : Prop :=
  ∀ n, P2031664538206879169.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P5402788860394421928

`A001961(n+1)+ceil((A000201(n+1)+Δ[n²])/2)`
-/

namespace A190079.P5402788860394421928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1) + ⌈(A000201 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2⌉

end

end A190079.P5402788860394421928

namespace A190079

/-- `A001961(n+1)+ceil((A000201(n+1)+Δ[n²])/2)` -/
def P5402788860394421928.Spec : Prop :=
  ∀ n, P5402788860394421928.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P17009428108935330593

`A022839(n+1)+A004526(A000201(n+1))`
-/

namespace A190079.P17009428108935330593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + A004526 (A000201 (n + 1)).toNat

end

end A190079.P17009428108935330593

namespace A190079

/-- `A022839(n+1)+A004526(A000201(n+1))` -/
def P17009428108935330593.Spec : Prop :=
  ∀ n, P17009428108935330593.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P17924589142016962580

`n+1+A004526(A000201(n+1))+A001961(n+1)`
-/

namespace A190079.P17924589142016962580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004526 (A000201 (n + 1)).toNat + A001961 (n + 1))

end

end A190079.P17924589142016962580

namespace A190079

/-- `n+1+A004526(A000201(n+1))+A001961(n+1)` -/
def P17924589142016962580.Spec : Prop :=
  ∀ n, P17924589142016962580.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P4113938138380168556

`record[A026262(n+1)+n]-n`
-/

namespace A190079.P4113938138380168556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A190079.P4113938138380168556

namespace A190079

/-- `record[A026262(n+1)+n]-n` -/
def P4113938138380168556.Spec : Prop :=
  ∀ n, P4113938138380168556.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P6031744570253244941

`A007067(n+1)+A004526(A287665(n+1))`
-/

namespace A190079.P6031744570253244941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + A004526 (A287665 (n + 1)).toNat

end

end A190079.P6031744570253244941

namespace A190079

/-- `A007067(n+1)+A004526(A287665(n+1))` -/
def P6031744570253244941.Spec : Prop :=
  ∀ n, P6031744570253244941.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P354410741400427253

`A001068(A000201(2*(n+1)))-(n+1)`
-/

namespace A190079.P354410741400427253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A000201 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A190079.P354410741400427253

namespace A190079

/-- `A001068(A000201(2*(n+1)))-(n+1)` -/
def P354410741400427253.Spec : Prop :=
  ∀ n, P354410741400427253.a n = A190079 (n + 1)

end A190079

/-! ## A190079.P16640319533348522422

`A004526(A001950(n+1)+n+1)+A001961(n+1)`
-/

namespace A190079.P16640319533348522422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001950 (n + 1) + (n + 1 : ℤ)).toNat + A001961 (n + 1)

end

end A190079.P16640319533348522422

namespace A190079

/-- `A004526(A001950(n+1)+n+1)+A001961(n+1)` -/
def P16640319533348522422.Spec : Prop :=
  ∀ n, P16640319533348522422.a n = A190079 (n + 1)

end A190079

/-!
# A190080: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=cos(Pi/5), t=sec(Pi/5).

The programs for A190080, the canonical program `A190080.P2742258796275749021` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190080 has offset 1).

The definition of A190080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190080.P2742258796275749021

`n+1+floor((n+1)/cos(π/5))+floor((n+1)/cos(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190080

/-- `n+1+floor((n+1)/cos(π/5))+floor((n+1)/cos(π/5)²)` -/
def P2742258796275749021.Spec : Prop :=
  ∀ n, P2742258796275749021.a n = A190080 (n + 1)

theorem P2742258796275749021.correct : P2742258796275749021.Spec := by
  intro n
  simp only [A190080, Nat.add_sub_cancel]

end A190080

/-! ## A190080.P7583876377121684028

`round((n+1)*(5-sqrt(5))+n)`
-/

namespace A190080.P7583876377121684028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * (5 - Real.sqrt (5 : ℝ)) + (n : ℝ))

end

end A190080.P7583876377121684028

namespace A190080

/-- `round((n+1)*(5-sqrt(5))+n)` -/
def P7583876377121684028.Spec : Prop :=
  ∀ n, P7583876377121684028.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P842041411863546678

`∑[5-Δ[A022848(n)]]+n`
-/

namespace A190080.P842041411863546678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190080.P842041411863546678

namespace A190080

/-- `∑[5-Δ[A022848(n)]]+n` -/
def P842041411863546678.Spec : Prop :=
  ∀ n, P842041411863546678.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P3927297368220816559

`A184748(n+1)+2*(n+1)`
-/

namespace A190080.P3927297368220816559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184748 (n + 1) + (2 * (n + 1) : ℤ)

end

end A190080.P3927297368220816559

namespace A190080

/-- `A184748(n+1)+2*(n+1)` -/
def P3927297368220816559.Spec : Prop :=
  ∀ n, P3927297368220816559.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P17427756430717332054

`5*(n+1)-A022848(n+1)+n`
-/

namespace A190080.P17427756430717332054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A022848 (n + 1) + (n : ℤ)

end

end A190080.P17427756430717332054

namespace A190080

/-- `5*(n+1)-A022848(n+1)+n` -/
def P17427756430717332054.Spec : Prop :=
  ∀ n, P17427756430717332054.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P18088291173835202548

`A016897(n)-A184738(n+1)`
-/

namespace A190080.P18088291173835202548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A184738 (n + 1)

end

end A190080.P18088291173835202548

namespace A190080

/-- `A016897(n)-A184738(n+1)` -/
def P18088291173835202548.Spec : Prop :=
  ∀ n, P18088291173835202548.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P2812923607649996836

`A189935(n+1)+A022839(n+1)`
-/

namespace A190080.P2812923607649996836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189935 (n + 1) + A022839 (n + 1)

end

end A190080.P2812923607649996836

namespace A190080

/-- `A189935(n+1)+A022839(n+1)` -/
def P2812923607649996836.Spec : Prop :=
  ∀ n, P2812923607649996836.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P1696157425613065760

`A008458(n+1)-(A184738(n+1)+2+n)`
-/

namespace A190080.P1696157425613065760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - (A184738 (n + 1) + 2 + (n : ℤ))

end

end A190080.P1696157425613065760

namespace A190080

/-- `A008458(n+1)-(A184738(n+1)+2+n)` -/
def P1696157425613065760.Spec : Prop :=
  ∀ n, P1696157425613065760.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P8782280475217866045

`A001950(2*(n+1))-A001961(2*(n+1))+n`
-/

namespace A190080.P8782280475217866045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) - A001961 (2 * (n + 1)) + (n : ℤ)

end

end A190080.P8782280475217866045

namespace A190080

/-- `A001950(2*(n+1))-A001961(2*(n+1))+n` -/
def P8782280475217866045.Spec : Prop :=
  ∀ n, P8782280475217866045.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P12010823758606822601

`A003231(2*(n+1))-A022839(2*(n+1))+n`
-/

namespace A190080.P12010823758606822601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (2 * (n + 1)) - A022839 (2 * (n + 1)) + (n : ℤ)

end

end A190080.P12010823758606822601

namespace A190080

/-- `A003231(2*(n+1))-A022839(2*(n+1))+n` -/
def P12010823758606822601.Spec : Prop :=
  ∀ n, P12010823758606822601.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P9763855593012495818

`A054770(2*(n+1))-A190511(2*(n+1))+n`
-/

namespace A190080.P9763855593012495818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (2 * (n + 1)) - A190511 (2 * (n + 1)) + (n : ℤ)

end

end A190080.P9763855593012495818

namespace A190080

/-- `A054770(2*(n+1))-A190511(2*(n+1))+n` -/
def P9763855593012495818.Spec : Prop :=
  ∀ n, P9763855593012495818.a n = A190080 (n + 1)

end A190080

/-! ## A190080.P15507215679238183009

`floor(A195121(A008574(n+1))/2+n)`
-/

namespace A190080.P15507215679238183009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195121 (A008574 (n + 1)).toNat : ℚ) / 2 + (n : ℚ)⌋

end

end A190080.P15507215679238183009

namespace A190080

/-- `floor(A195121(A008574(n+1))/2+n)` -/
def P15507215679238183009.Spec : Prop :=
  ∀ n, P15507215679238183009.a n = A190080 (n + 1)

end A190080

/-!
# A190081: n + [n*r/t] + [n*s/t]; r=1, s=cos(Pi/5), t=sec(Pi/5).

The programs for A190081, the canonical program `A190081.P9462919297017202335` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190081 has offset 1).

The definition of A190081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190081.P9462919297017202335

`n+1+floor((n+1)*cos(π/5))+floor((n+1)*cos(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190081

/-- `n+1+floor((n+1)*cos(π/5))+floor((n+1)*cos(π/5)²)` -/
def P9462919297017202335.Spec : Prop :=
  ∀ n, P9462919297017202335.a n = A190081 (n + 1)

theorem P9462919297017202335.correct : P9462919297017202335.Spec := by
  intro n
  simp only [A190081, Nat.add_sub_cancel]

end A190081

/-! ## A190081.P6520681701707582739

`A108598(n+1)+A004526(comp[A004976(n)])`
-/

namespace A190081.P6520681701707582739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190081.P6520681701707582739

namespace A190081

/-- `A108598(n+1)+A004526(comp[A004976(n)])` -/
def P6520681701707582739.Spec : Prop :=
  ∀ n, P6520681701707582739.a n = A190081 (n + 1)

end A190081

/-! ## A190081.P9181336068523130841

`A123108(comp[A004976(n)])+A108598(n+1)`
-/

namespace A190081.P9181336068523130841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A108598 (n + 1)

end

end A190081.P9181336068523130841

namespace A190081

/-- `A123108(comp[A004976(n)])+A108598(n+1)` -/
def P9181336068523130841.Spec : Prop :=
  ∀ n, P9181336068523130841.a n = A190081 (n + 1)

end A190081

/-! ## A190081.P8852999749129432937

`A108598(n+1)+A004526(A188222(n+1))`
-/

namespace A190081.P8852999749129432937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A004526 (A188222 (n + 1)).toNat

end

end A190081.P8852999749129432937

namespace A190081

/-- `A108598(n+1)+A004526(A188222(n+1))` -/
def P8852999749129432937.Spec : Prop :=
  ∀ n, P8852999749129432937.a n = A190081 (n + 1)

end A190081

/-! ## A190081.P10244608376417186124

`A108598(n+1)+A002265(A001950(n+1))`
-/

namespace A190081.P10244608376417186124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A002265 (A001950 (n + 1)).toNat

end

end A190081.P10244608376417186124

namespace A190081

/-- `A108598(n+1)+A002265(A001950(n+1))` -/
def P10244608376417186124.Spec : Prop :=
  ∀ n, P10244608376417186124.a n = A190081 (n + 1)

end A190081

/-! ## A190081.P15859987832959513488

`A004526(A003231(n+1))+A002265(A001950(n+1))`
-/

namespace A190081.P15859987832959513488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003231 (n + 1)).toNat + A002265 (A001950 (n + 1)).toNat

end

end A190081.P15859987832959513488

namespace A190081

/-- `A004526(A003231(n+1))+A002265(A001950(n+1))` -/
def P15859987832959513488.Spec : Prop :=
  ∀ n, P15859987832959513488.a n = A190081 (n + 1)

end A190081

/-! ## A190081.P1878371811433076544

`A004526(A003231(n+1))+A004526(A188222(n+1))`
-/

namespace A190081.P1878371811433076544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003231 (n + 1)).toNat + A004526 (A188222 (n + 1)).toNat

end

end A190081.P1878371811433076544

namespace A190081

/-- `A004526(A003231(n+1))+A004526(A188222(n+1))` -/
def P1878371811433076544.Spec : Prop :=
  ∀ n, P1878371811433076544.a n = A190081 (n + 1)

end A190081

/-!
# A190082: n + [n*s/r] + [n*t/r]; r=1, s=sin(2*Pi/5), t=csc(2*Pi/5).

The programs for A190082, the canonical program `A190082.P9634654587932190092` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190082 has offset 1).

The definition of A190082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190082.P9634654587932190092

`n+1+floor((n+1)*sin(2*π/5))+floor((n+1)/sin(2*π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190082

/-- `n+1+floor((n+1)*sin(2*π/5))+floor((n+1)/sin(2*π/5))` -/
def P9634654587932190092.Spec : Prop :=
  ∀ n, P9634654587932190092.a n = A190082 (n + 1)

theorem P9634654587932190092.correct : P9634654587932190092.Spec := by
  intro n
  simp only [A190082, Nat.add_sub_cancel]

end A190082

/-! ## A190082.P2277339877161217465

`A347246(A219547(n+1))+3*n+2`
-/

namespace A190082.P2277339877161217465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (A219547 (n + 1)).toNat + (3 * n + 2 : ℤ)

end

end A190082.P2277339877161217465

namespace A190082

/-- `A347246(A219547(n+1))+3*n+2` -/
def P2277339877161217465.Spec : Prop :=
  ∀ n, P2277339877161217465.a n = A190082 (n + 1)

end A190082

/-! ## A190082.P2005419091175360994

`A240228(A005117(n+1))+A000027(3*n+1)`
-/

namespace A190082.P2005419091175360994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (A005117 (n + 1)).toNat + A000027 (3 * n + 1)

end

end A190082.P2005419091175360994

namespace A190082

/-- `A240228(A005117(n+1))+A000027(3*n+1)` -/
def P2005419091175360994.Spec : Prop :=
  ∀ n, P2005419091175360994.a n = A190082 (n + 1)

end A190082

/-! ## A190082.P17376640167541652734

`A265575(A265603(n))+3*n+1`
-/

namespace A190082.P17376640167541652734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (A265603 n).toNat + (3 * n + 1 : ℤ)

end

end A190082.P17376640167541652734

namespace A190082

/-- `A265575(A265603(n))+3*n+1` -/
def P17376640167541652734.Spec : Prop :=
  ∀ n, P17376640167541652734.a n = A190082 (n + 1)

end A190082

/-! ## A190082.P9957998120908835300

`A303579(A140633(2*(n+1)))+3*n`
-/

namespace A190082.P9957998120908835300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (A140633 (2 * (n + 1))).toNat + (3 * n : ℤ)

end

end A190082.P9957998120908835300

namespace A190082

/-- `A303579(A140633(2*(n+1)))+3*n` -/
def P9957998120908835300.Spec : Prop :=
  ∀ n, P9957998120908835300.a n = A190082 (n + 1)

end A190082

/-!
# A190083: n + [n*r/s] + [n*t/s]; r=1, s=sin(2*Pi/5), t=csc(2*Pi/5).

The programs for A190083, the canonical program `A190083.P4754210741960950759` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190083 has offset 1).

The definition of A190083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190083.P4754210741960950759

`n+1+floor((n+1)/sin(2*π/5))+floor((n+1)/sin(2*π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190083

/-- `n+1+floor((n+1)/sin(2*π/5))+floor((n+1)/sin(2*π/5)²)` -/
def P4754210741960950759.Spec : Prop :=
  ∀ n, P4754210741960950759.a n = A190083 (n + 1)

theorem P4754210741960950759.correct : P4754210741960950759.Spec := by
  intro n
  simp only [A190083, Nat.add_sub_cancel]

end A190083

/-! ## A190083.P15926429165513268253

`∑[A276863(A038416(A106265(n+1)))]`
-/

namespace A190083.P15926429165513268253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (A038416 (A106265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190083.P15926429165513268253

namespace A190083

/-- `∑[A276863(A038416(A106265(n+1)))]` -/
def P15926429165513268253.Spec : Prop :=
  ∀ n, P15926429165513268253.a n = A190083 (n + 1)

end A190083

/-! ## A190083.P5696949332108857904

`∑[A063438(A192002(3*n+5))]`
-/

namespace A190083.P5696949332108857904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 (A192002 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190083.P5696949332108857904

namespace A190083

/-- `∑[A063438(A192002(3*n+5))]` -/
def P5696949332108857904.Spec : Prop :=
  ∀ n, P5696949332108857904.a n = A190083 (n + 1)

end A190083

/-! ## A190083.P11955563342619544296

`∑[A073855(A005920(A179211(n+1)))]`
-/

namespace A190083.P11955563342619544296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A005920 (A179211 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190083.P11955563342619544296

namespace A190083

/-- `∑[A073855(A005920(A179211(n+1)))]` -/
def P11955563342619544296.Spec : Prop :=
  ∀ n, P11955563342619544296.a n = A190083 (n + 1)

end A190083

/-! ## A190083.P15707935639661964111

`A116371(n+1)+A089854(A089854(3*n+2))`
-/

namespace A190083.P15707935639661964111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (n + 1) + A089854 (A089854 (3 * n + 2)).toNat

end

end A190083.P15707935639661964111

namespace A190083

/-- `A116371(n+1)+A089854(A089854(3*n+2))` -/
def P15707935639661964111.Spec : Prop :=
  ∀ n, P15707935639661964111.a n = A190083 (n + 1)

end A190083

/-!
# A190084: n + [n*r/t] + [n*s/t]; r=1, s=sin(2*Pi/5), t=csc(2*Pi/5).

The programs for A190084, the canonical program `A190084.P4066557164871222390` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190084 has offset 1).

The definition of A190084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190084.P4066557164871222390

`n+1+floor((n+1)*sin(2*π/5))+floor((n+1)*sin(2*π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190084

/-- `n+1+floor((n+1)*sin(2*π/5))+floor((n+1)*sin(2*π/5)²)` -/
def P4066557164871222390.Spec : Prop :=
  ∀ n, P4066557164871222390.a n = A190084 (n + 1)

theorem P4066557164871222390.correct : P4066557164871222390.Spec := by
  intro n
  simp only [A190084, Nat.add_sub_cancel]

end A190084

/-! ## A190084.P5699996286926989582

`∑[A306690(A306615(3*(n+1)))]`
-/

namespace A190084.P5699996286926989582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306690 (A306615 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190084.P5699996286926989582

namespace A190084

/-- `∑[A306690(A306615(3*(n+1)))]` -/
def P5699996286926989582.Spec : Prop :=
  ∀ n, P5699996286926989582.a n = A190084 (n + 1)

end A190084

/-! ## A190084.P13051379697679443767

`record[3*n+1-A051624(A059995(n))]`
-/

namespace A190084.P13051379697679443767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A051624 (A059995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190084.P13051379697679443767

namespace A190084

/-- `record[3*n+1-A051624(A059995(n))]` -/
def P13051379697679443767.Spec : Prop :=
  ∀ n, P13051379697679443767.a n = A190084 (n + 1)

end A190084

/-! ## A190084.P2061172533031293042

`record[3*n+1-A131242(10*A059995(n))]`
-/

namespace A190084.P2061172533031293042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A131242 (10 * A059995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190084.P2061172533031293042

namespace A190084

/-- `record[3*n+1-A131242(10*A059995(n))]` -/
def P2061172533031293042.Spec : Prop :=
  ∀ n, P2061172533031293042.a n = A190084 (n + 1)

end A190084

/-! ## A190084.P5581830389514042334

`A085736(3*n+1)-A059995(n)²`
-/

namespace A190084.P5581830389514042334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (3 * n + 1) - A059995 n ^ 2

end

end A190084.P5581830389514042334

namespace A190084

/-- `A085736(3*n+1)-A059995(n)²` -/
def P5581830389514042334.Spec : Prop :=
  ∀ n, P5581830389514042334.a n = A190084 (n + 1)

end A190084

/-!
# A190085: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(1/2), t=cos(1/2).

The programs for A190085, the canonical program `A190085.P17451323181686068920` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190085 has offset 1).

The definition of A190085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190085.P17451323181686068920

`n+1+floor((n+1)*sin(1/2))+floor((n+1)*cos(1/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190085

/-- `n+1+floor((n+1)*sin(1/2))+floor((n+1)*cos(1/2))` -/
def P17451323181686068920.Spec : Prop :=
  ∀ n, P17451323181686068920.a n = A190085 (n + 1)

theorem P17451323181686068920.correct : P17451323181686068920.Spec := by
  intro n
  simp only [A190085, Nat.add_sub_cancel]

end A190085

/-! ## A190085.P12094288106559363596

`∑[A158478((2-A315979(n))²)]`
-/

namespace A190085.P12094288106559363596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 ((2 - A315979 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190085.P12094288106559363596

namespace A190085

/-- `∑[A158478((2-A315979(n))²)]` -/
def P12094288106559363596.Spec : Prop :=
  ∀ n, P12094288106559363596.a n = A190085 (n + 1)

end A190085

/-! ## A190085.P11061796111014898067

`∑[A158478(A315979(n)²)]`
-/

namespace A190085.P11061796111014898067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A315979 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190085.P11061796111014898067

namespace A190085

/-- `∑[A158478(A315979(n)²)]` -/
def P11061796111014898067.Spec : Prop :=
  ∀ n, P11061796111014898067.a n = A190085 (n + 1)

end A190085

/-! ## A190085.P4150803333082652343

`A227394(3*n+1)-A233566(A070939(n))`
-/

namespace A190085.P4150803333082652343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (3 * n + 1) - A233566 (A070939 n).toNat

end

end A190085.P4150803333082652343

namespace A190085

/-- `A227394(3*n+1)-A233566(A070939(n))` -/
def P4150803333082652343.Spec : Prop :=
  ∀ n, P4150803333082652343.a n = A190085 (n + 1)

end A190085

/-! ## A190085.P2923270887774096701

`comp[floor(n*(π-1))]+A001222(3^floor(n/2))`
-/

namespace A190085.P2923270887774096701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.pi - 1)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A190085.P2923270887774096701

namespace A190085

/-- `comp[floor(n*(π-1))]+A001222(3^floor(n/2))` -/
def P2923270887774096701.Spec : Prop :=
  ∀ n, P2923270887774096701.a n = A190085 (n + 1)

end A190085

/-!
# A190086: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(1/2), t=cos(1/2).

The programs for A190086, the canonical program `A190086.P16075021741652932996` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190086 has offset 1).

The definition of A190086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190086.P16075021741652932996

`n+1+floor((n+1)/sin(1/2))+floor((n+1)/tan(1/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190086

/-- `n+1+floor((n+1)/sin(1/2))+floor((n+1)/tan(1/2))` -/
def P16075021741652932996.Spec : Prop :=
  ∀ n, P16075021741652932996.a n = A190086 (n + 1)

theorem P16075021741652932996.correct : P16075021741652932996.Spec := by
  intro n
  simp only [A190086, Nat.add_sub_cancel]

end A190086

/-! ## A190086.P756283835528898069

`A005843(n)+A000196(A069130(n+2))`
-/

namespace A190086.P756283835528898069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000196 (A069130 (n + 2)).toNat

end

end A190086.P756283835528898069

namespace A190086

/-- `A005843(n)+A000196(A069130(n+2))` -/
def P756283835528898069.Spec : Prop :=
  ∀ n, P756283835528898069.a n = A190086 (n + 1)

end A190086

/-! ## A190086.P4146368101768470917

`A282025(n)+A001222(A130791(n+1))`
-/

namespace A190086.P4146368101768470917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282025 n + A001222 (A130791 (n + 1)).toNat

end

end A190086.P4146368101768470917

namespace A190086

/-- `A282025(n)+A001222(A130791(n+1))` -/
def P4146368101768470917.Spec : Prop :=
  ∀ n, P4146368101768470917.a n = A190086 (n + 1)

end A190086

/-! ## A190086.P6582146530957498933

`A010121(A130791(n+1))+5*n+4-A195174(A062575(2*(n+2)))`
-/

namespace A190086.P6582146530957498933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A130791 (n + 1)).toNat + ((5 * n + 4 : ℤ) - A195174 (A062575 (2 * (n + 2))).toNat)

end

end A190086.P6582146530957498933

namespace A190086

/-- `A010121(A130791(n+1))+5*n+4-A195174(A062575(2*(n+2)))` -/
def P6582146530957498933.Spec : Prop :=
  ∀ n, P6582146530957498933.a n = A190086 (n + 1)

end A190086

/-! ## A190086.P10653443975275529682

`A282025(n)+ceil(A332489(3*(n+1))/24)`
-/

namespace A190086.P10653443975275529682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282025 n + ⌈(A332489 (3 * (n + 1)) : ℚ) / 24⌉

end

end A190086.P10653443975275529682

namespace A190086

/-- `A282025(n)+ceil(A332489(3*(n+1))/24)` -/
def P10653443975275529682.Spec : Prop :=
  ∀ n, P10653443975275529682.a n = A190086 (n + 1)

end A190086

/-!
# A190087: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(1/2), t=cos(1/2).

The programs for A190087, the canonical program `A190087.P5173771715447108193` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190087 has offset 1).

The definition of A190087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190087.P5173771715447108193

`n+1+floor((n+1)/cos(1/2))+floor((n+1)*tan(1/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190087

/-- `n+1+floor((n+1)/cos(1/2))+floor((n+1)*tan(1/2))` -/
def P5173771715447108193.Spec : Prop :=
  ∀ n, P5173771715447108193.a n = A190087 (n + 1)

theorem P5173771715447108193.correct : P5173771715447108193.Spec := by
  intro n
  simp only [A190087, Nat.add_sub_cancel]

end A190087

/-! ## A190087.P12314260755882761859

`A091245(A016777(n)+A000006(n+9))`
-/

namespace A190087.P12314260755882761859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A016777 n + A000006 (n + 9)).toNat

end

end A190087.P12314260755882761859

namespace A190087

/-- `A091245(A016777(n)+A000006(n+9))` -/
def P12314260755882761859.Spec : Prop :=
  ∀ n, P12314260755882761859.a n = A190087 (n + 1)

end A190087

/-! ## A190087.P7108016470240666667

`A329990(A329844(n+1))-A330116(n+1)`
-/

namespace A190087.P7108016470240666667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329990 (A329844 (n + 1)).toNat - A330116 (n + 1)

end

end A190087.P7108016470240666667

namespace A190087

/-- `A329990(A329844(n+1))-A330116(n+1)` -/
def P7108016470240666667.Spec : Prop :=
  ∀ n, P7108016470240666667.a n = A190087 (n + 1)

end A190087

/-! ## A190087.P14474565776673304539

`A063459(n+1)+A004526(A020753(n+1))`
-/

namespace A190087.P14474565776673304539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (n + 1) + A004526 (A020753 (n + 1)).toNat

end

end A190087.P14474565776673304539

namespace A190087

/-- `A063459(n+1)+A004526(A020753(n+1))` -/
def P14474565776673304539.Spec : Prop :=
  ∀ n, P14474565776673304539.a n = A190087 (n + 1)

end A190087

/-! ## A190087.P8936993267289832289

`A342696(floor((n+1)/6*π²))+A253671(4*A187829(n+1))`
-/

namespace A190087.P8936993267289832289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 ⌊((n + 1 : ℚ) / 6 : ℝ) * Real.pi ^ 2⌋.toNat + A253671 (4 * A187829 (n + 1)).toNat

end

end A190087.P8936993267289832289

namespace A190087

/-- `A342696(floor((n+1)/6*π²))+A253671(4*A187829(n+1))` -/
def P8936993267289832289.Spec : Prop :=
  ∀ n, P8936993267289832289.a n = A190087 (n + 1)

end A190087

/-!
# A190088: Triangle of binomial coefficients binomial(3*n-k+1,3*n-3*k+1).

The programs for A190088, the canonical program `A190088.P10356372276694908` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190088 has offset 0).

The definition of A190088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190088.P10356372276694908

`C(A131894(n), 2*A002262(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190088

/-- `C(A131894(n), 2*A002262(n))` -/
def P10356372276694908.Spec : Prop :=
  ∀ n, (P10356372276694908.a n : ℤ) = A190088 n

theorem P10356372276694908.correct : P10356372276694908.Spec := by
  intro n
  simp only [A190088]

end A190088

/-! ## A190088.P11542452463351184604

`C(A131894(n), A005843(A002262(n)))`
-/

namespace A190088.P11542452463351184604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n).toNat (A005843 (A002262 n).toNat).toNat

end

end A190088.P11542452463351184604

namespace A190088

/-- `C(A131894(n), A005843(A002262(n)))` -/
def P11542452463351184604.Spec : Prop :=
  ∀ n, (P11542452463351184604.a n : ℤ) = A190088 n

end A190088

/-! ## A190088.P17944174469218586744

`A124819(A245300(n)+A114327(n))`
-/

namespace A190088.P17944174469218586744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 (A245300 n + A114327 n).toNat

end

end A190088.P17944174469218586744

namespace A190088

/-- `A124819(A245300(n)+A114327(n))` -/
def P17944174469218586744.Spec : Prop :=
  ∀ n, P17944174469218586744.a n = A190088 n

end A190088

/-! ## A190088.P5205315940871732246

`A008480(2*A025633(n+1))`
-/

namespace A190088.P5205315940871732246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * A025633 (n + 1)).toNat

end

end A190088.P5205315940871732246

namespace A190088

/-- `A008480(2*A025633(n+1))` -/
def P5205315940871732246.Spec : Prop :=
  ∀ n, P5205315940871732246.a n = A190088 n

end A190088

/-! ## A190088.P6036922735186018205

`A285572(2*A025633(n+1))`
-/

namespace A190088.P6036922735186018205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (2 * A025633 (n + 1)).toNat

end

end A190088.P6036922735186018205

namespace A190088

/-- `A285572(2*A025633(n+1))` -/
def P6036922735186018205.Spec : Prop :=
  ∀ n, P6036922735186018205.a n = A190088 n

end A190088

/-!
# A190089: Row sums of the triangular matrix A190088.

The programs for A190089, the canonical program `A190089.P9195914912786890191` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190089 has offset 0).

The definition of A190089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190089.P9195914912786890191

`5*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190089

/-- `5*a(n-1)+2*a(n-2)+a(n-3)` -/
def P9195914912786890191.Spec : Prop :=
  ∀ n, (P9195914912786890191.a n : ℤ) = A190089 n

theorem P9195914912786890191.correct : P9195914912786890191.Spec := by
  intro n
  simp only [A190089]

end A190089

/-! ## A190089.P14604899901186203623

`ogf((-1+x+x^2)/(-1+5x+2x^2+x^3))`
-/

namespace A190089.P14604899901186203623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -5, -2, -1] n

end

end A190089.P14604899901186203623

namespace A190089

/-- `ogf((-1+x+x^2)/(-1+5x+2x^2+x^3))` -/
def P14604899901186203623.Spec : Prop :=
  ∀ n, P14604899901186203623.a n = A190089 n

end A190089

/-! ## A190089.P12457126189592660700

`A052921(2*n)`
-/

namespace A190089.P12457126189592660700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (2 * n)

end

end A190089.P12457126189592660700

namespace A190089

/-- `A052921(2*n)` -/
def P12457126189592660700.Spec : Prop :=
  ∀ n, P12457126189592660700.a n = A190089 n

end A190089

/-! ## A190089.P2137106150770340734

`∑[A135364(2*n)]`
-/

namespace A190089.P2137106150770340734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190089.P2137106150770340734

namespace A190089

/-- `∑[A135364(2*n)]` -/
def P2137106150770340734.Spec : Prop :=
  ∀ n, P2137106150770340734.a n = A190089 n

end A190089

/-! ## A190089.P6140637622456841079

`A005251(3*n+2)`
-/

namespace A190089.P6140637622456841079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (3 * n + 2)

end

end A190089.P6140637622456841079

namespace A190089

/-- `A005251(3*n+2)` -/
def P6140637622456841079.Spec : Prop :=
  ∀ n, P6140637622456841079.a n = A190089 n

end A190089

/-! ## A190089.P12700251651973972684

`A134816(6*n+1)`
-/

namespace A190089.P12700251651973972684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (6 * n + 1)

end

end A190089.P12700251651973972684

namespace A190089

/-- `A134816(6*n+1)` -/
def P12700251651973972684.Spec : Prop :=
  ∀ n, P12700251651973972684.a n = A190089 n

end A190089

/-! ## A190089.P9174024184365951162

`A000931(6*n+5)`
-/

namespace A190089.P9174024184365951162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (6 * n + 5)

end

end A190089.P9174024184365951162

namespace A190089

/-- `A000931(6*n+5)` -/
def P9174024184365951162.Spec : Prop :=
  ∀ n, P9174024184365951162.a n = A190089 n

end A190089

/-! ## A190089.P2020815656269068310

`A127682(12*n+3)`
-/

namespace A190089.P2020815656269068310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (12 * n + 3)

end

end A190089.P2020815656269068310

namespace A190089

/-- `A127682(12*n+3)` -/
def P2020815656269068310.Spec : Prop :=
  ∀ n, P2020815656269068310.a n = A190089 n

end A190089

/-! ## A190089.P1539051178730241339

`A329244(Δ[n²])-1`
-/

namespace A190089.P1539051178730241339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A190089.P1539051178730241339

namespace A190089

/-- `A329244(Δ[n²])-1` -/
def P1539051178730241339.Spec : Prop :=
  ∀ n, P1539051178730241339.a n = A190089 n

end A190089

/-! ## A190089.P5011922152213510831

`A078027(6*(n+1)+1)`
-/

namespace A190089.P5011922152213510831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (6 * (n + 1) + 1)

end

end A190089.P5011922152213510831

namespace A190089

/-- `A078027(6*(n+1)+1)` -/
def P5011922152213510831.Spec : Prop :=
  ∀ n, P5011922152213510831.a n = A190089 n

end A190089

/-! ## A190089.P10218783166711730947

`A133034(3*(2*n+3))`
-/

namespace A190089.P10218783166711730947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (2 * n + 3))

end

end A190089.P10218783166711730947

namespace A190089

/-- `A133034(3*(2*n+3))` -/
def P10218783166711730947.Spec : Prop :=
  ∀ n, P10218783166711730947.a n = A190089 n

end A190089

/-! ## A190089.P10612972073256436587

`A114775(6*(2*n+1))`
-/

namespace A190089.P10612972073256436587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (6 * (2 * n + 1))

end

end A190089.P10612972073256436587

namespace A190089

/-- `A114775(6*(2*n+1))` -/
def P10612972073256436587.Spec : Prop :=
  ∀ n, P10612972073256436587.a n = A190089 n

end A190089

/-! ## A190089.P998500330608884759

`A182097(4*n+2*(n+1))`
-/

namespace A190089.P998500330608884759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (4 * n + 2 * (n + 1))

end

end A190089.P998500330608884759

namespace A190089

/-- `A182097(4*n+2*(n+1))` -/
def P998500330608884759.Spec : Prop :=
  ∀ n, P998500330608884759.a n = A190089 n

end A190089

/-! ## A190089.P2995341895526006300

`A259968(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A190089.P2995341895526006300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259968 (3 * n) + a (n - 1)

end

end A190089.P2995341895526006300

namespace A190089

/-- `A259968(3*n)+a(n-1)` -/
def P2995341895526006300.Spec : Prop :=
  ∀ n, P2995341895526006300.a n = A190089 n

end A190089

/-! ## A190089.P2517801743313512946

`record[A005251(A153727(n)+n)]`
-/

namespace A190089.P2517801743313512946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (A153727 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190089.P2517801743313512946

namespace A190089

/-- `record[A005251(A153727(n)+n)]` -/
def P2517801743313512946.Spec : Prop :=
  ∀ n, P2517801743313512946.a n = A190089 n

end A190089

/-! ## A190089.P18079927406614460892

`A164001(A033627(2*n+1))`
-/

namespace A190089.P18079927406614460892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A033627 (2 * n + 1)).toNat

end

end A190089.P18079927406614460892

namespace A190089

/-- `A164001(A033627(2*n+1))` -/
def P18079927406614460892.Spec : Prop :=
  ∀ n, P18079927406614460892.a n = A190089 n

end A190089

/-! ## A190089.P13426723745251103746

`A228361(A135042(n+1)+n)`
-/

namespace A190089.P13426723745251103746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A135042 (n + 1) + (n : ℤ)).toNat

end

end A190089.P13426723745251103746

namespace A190089

/-- `A228361(A135042(n+1)+n)` -/
def P13426723745251103746.Spec : Prop :=
  ∀ n, P13426723745251103746.a n = A190089 n

end A190089

/-! ## A190089.P6898239395624217463

`A097550(2*n)-Δ[A034943(2*n)]`
-/

namespace A190089.P6898239395624217463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (2 * n) - (f1 (n + 1) - f1 n)

end

end A190089.P6898239395624217463

namespace A190089

/-- `A097550(2*n)-Δ[A034943(2*n)]` -/
def P6898239395624217463.Spec : Prop :=
  ∀ n, P6898239395624217463.a n = A190089 n

end A190089

/-! ## A190089.P11257531131026845323

`A181984(2*n+1)-A097550(2*n)`
-/

namespace A190089.P11257531131026845323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (2 * n + 1) - A097550 (2 * n)

end

end A190089.P11257531131026845323

namespace A190089

/-- `A181984(2*n+1)-A097550(2*n)` -/
def P11257531131026845323.Spec : Prop :=
  ∀ n, P11257531131026845323.a n = A190089 n

end A190089

/-! ## A190089.P14801391883685231250

`A159328(2*n+1)-A136305(2*n)`
-/

namespace A190089.P14801391883685231250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 (2 * n + 1) - A136305 (2 * n)

end

end A190089.P14801391883685231250

namespace A190089

/-- `A159328(2*n+1)-A136305(2*n)` -/
def P14801391883685231250.Spec : Prop :=
  ∀ n, P14801391883685231250.a n = A190089 n

end A190089

/-!
# A190090: Diagonal sums of the triangular matrix A190088.

The programs for A190090, the canonical program `A190090.P13508341134430365225` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190090 has offset 0).

The definition of A190090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190090.P13508341134430365225

`2*a(n-1)+2*a(n-2)+6*a(n-3)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=16, a(4)=42, a(5)=137`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190090

/-- `2*a(n-1)+2*a(n-2)+6*a(n-3)-3*a(n-4)+a(n-6)` -/
def P13508341134430365225.Spec : Prop :=
  ∀ n, P13508341134430365225.a n = A190090 n

theorem P13508341134430365225.correct : P13508341134430365225.Spec := by
  intro n
  simp only [A190090]

end A190090

/-! ## A190090.P9326516445895070396

`A000698(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=16, a(4)=42, a(5)=137`
-/

namespace A190090.P9326516445895070396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 16, 42, 137] fun n a =>
  A000698 (a (n - 1)).toNat

end

end A190090.P9326516445895070396

namespace A190090

/-- `A000698(a(n-1))` -/
def P9326516445895070396.Spec : Prop :=
  ∀ n, P9326516445895070396.a n = A190090 n

end A190090

/-!
# A190091: Number of rhombuses on a (n+1) X 3 grid.

The programs for A190091, the canonical program `A190091.P6094034355666588017` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190091 has offset 1).

The definition of A190091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190091.P6094034355666588017

`floor(((n+7)/2)²)-10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190091

/-- `floor(((n+7)/2)²)-10` -/
def P6094034355666588017.Spec : Prop :=
  ∀ n, P6094034355666588017.a n = A190091 (n + 1)

theorem P6094034355666588017.correct : P6094034355666588017.Spec := by
  intro n
  simp only [A190091, Nat.add_sub_cancel]

end A190091

/-! ## A190091.P3395163915276049545

`∑[a(n-2)+1]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A190091.P3395163915276049545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 4] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P3395163915276049545

namespace A190091

/-- `∑[a(n-2)+1]` -/
def P3395163915276049545.Spec : Prop :=
  ∀ n, (P3395163915276049545.a n : ℤ) = A190091 (n + 1)

end A190091

/-! ## A190091.P13621325706962087132

`∑[∑[1-a(n-1)]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A190091.P13621325706962087132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P13621325706962087132

namespace A190091

/-- `∑[∑[1-a(n-1)]]` -/
def P13621325706962087132.Spec : Prop :=
  ∀ n, P13621325706962087132.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P17179930421828365766

`ogf((2+2x-2x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A190091.P17179930421828365766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2, -1] [1, -2, 0, 2, -1] n

end

end A190091.P17179930421828365766

namespace A190091

/-- `ogf((2+2x-2x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P17179930421828365766.Spec : Prop :=
  ∀ n, P17179930421828365766.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P1984522036029173337

`floor(a(n-1)+(n+7)/2)` with `a(0)=2`
-/

namespace A190091.P1984522036029173337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 7 : ℚ) / 2⌋

end

end A190091.P1984522036029173337

namespace A190091

/-- `floor(a(n-1)+(n+7)/2)` -/
def P1984522036029173337.Spec : Prop :=
  ∀ n, P1984522036029173337.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P7012299444512772762

`record[floor(((n-3)/2)²-2*n)]`
-/

namespace A190091.P7012299444512772762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 3 : ℚ) / 2) ^ 2 - (2 * n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190091.P7012299444512772762

namespace A190091

/-- `record[floor(((n-3)/2)²-2*n)]` -/
def P7012299444512772762.Spec : Prop :=
  ∀ n, P7012299444512772762.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P2408221935796864310

`round(record[((n-3)/2)²]+2*n)`
-/

namespace A190091.P2408221935796864310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℚ))

end

end A190091.P2408221935796864310

namespace A190091

/-- `round(record[((n-3)/2)²]+2*n)` -/
def P2408221935796864310.Spec : Prop :=
  ∀ n, P2408221935796864310.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P6213415656580242887

`round(record[((n-3)/2)²-2*n])`
-/

namespace A190091.P6213415656580242887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ 2 - (2 * n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A190091.P6213415656580242887

namespace A190091

/-- `round(record[((n-3)/2)²-2*n])` -/
def P6213415656580242887.Spec : Prop :=
  ∀ n, P6213415656580242887.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P13930125634792177102

`floor(lcm(2, 2*n)+((n+3)/2)²)`
-/

namespace A190091.P13930125634792177102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℚ) + ((n + 3 : ℚ) / 2) ^ 2⌋

end

end A190091.P13930125634792177102

namespace A190091

/-- `floor(lcm(2, 2*n)+((n+3)/2)²)` -/
def P13930125634792177102.Spec : Prop :=
  ∀ n, P13930125634792177102.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P5214778431192806382

`floor(((n+3)/gcd(2, 2*n))²+2*n)`
-/

namespace A190091.P5214778431192806382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)) ^ 2 + (2 * n : ℚ)⌋

end

end A190091.P5214778431192806382

namespace A190091

/-- `floor(((n+3)/gcd(2, 2*n))²+2*n)` -/
def P5214778431192806382.Spec : Prop :=
  ∀ n, P5214778431192806382.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P60935118899560170

`floor((C(n+3, 2)/(n+2))²+2*n)`
-/

namespace A190091.P60935118899560170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 3) 2 : ℚ) / (n + 2 : ℚ)) ^ 2 + (2 * n : ℚ)⌋

end

end A190091.P60935118899560170

namespace A190091

/-- `floor((C(n+3, 2)/(n+2))²+2*n)` -/
def P60935118899560170.Spec : Prop :=
  ∀ n, P60935118899560170.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P15752153394120155089

`floor(and(2*n+1, 2*n)+((n+3)/2)²)`
-/

namespace A190091.P15752153394120155089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) : ℚ) + ((n + 3 : ℚ) / 2) ^ 2⌋

end

end A190091.P15752153394120155089

namespace A190091

/-- `floor(and(2*n+1, 2*n)+((n+3)/2)²)` -/
def P15752153394120155089.Spec : Prop :=
  ∀ n, P15752153394120155089.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P10825418543699675070

`∑[A049636(n)-n]`
-/

namespace A190091.P10825418543699675070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P10825418543699675070

namespace A190091

/-- `∑[A049636(n)-n]` -/
def P10825418543699675070.Spec : Prop :=
  ∀ n, P10825418543699675070.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P10190985271229071321

`∑[3-A123108(n)+n]`
-/

namespace A190091.P10190985271229071321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A123108 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P10190985271229071321

namespace A190091

/-- `∑[3-A123108(n)+n]` -/
def P10190985271229071321.Spec : Prop :=
  ∀ n, P10190985271229071321.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P2559487116980651852

`∑[∑[A000045(a(n-2))]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A190091.P2559487116980651852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  A000045 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P2559487116980651852

namespace A190091

/-- `∑[∑[A000045(a(n-2))]]` -/
def P2559487116980651852.Spec : Prop :=
  ∀ n, P2559487116980651852.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P10687667860371811844

`∑[∑[A166333(A166333(n))]-n]`
-/

namespace A190091.P10687667860371811844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A166333 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P10687667860371811844

namespace A190091

/-- `∑[∑[A166333(A166333(n))]-n]` -/
def P10687667860371811844.Spec : Prop :=
  ∀ n, P10687667860371811844.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P12346864984241683607

`Δ[A005744(n)+n²]`
-/

namespace A190091.P12346864984241683607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190091.P12346864984241683607

namespace A190091

/-- `Δ[A005744(n)+n²]` -/
def P12346864984241683607.Spec : Prop :=
  ∀ n, P12346864984241683607.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P5921147848190017796

`∑[A257839(2*(n+1))+2]`
-/

namespace A190091.P5921147848190017796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190091.P5921147848190017796

namespace A190091

/-- `∑[A257839(2*(n+1))+2]` -/
def P5921147848190017796.Spec : Prop :=
  ∀ n, P5921147848190017796.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P16245231969421582781

`A023444(A036573(n+3))`
-/

namespace A190091.P16245231969421582781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A036573 (n + 3)).toNat

end

end A190091.P16245231969421582781

namespace A190091

/-- `A023444(A036573(n+3))` -/
def P16245231969421582781.Spec : Prop :=
  ∀ n, P16245231969421582781.a n = A190091 (n + 1)

end A190091

/-! ## A190091.P15215436125117542492

`A023446(A036572(n+4))`
-/

namespace A190091.P15215436125117542492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A036572 (n + 4)).toNat

end

end A190091.P15215436125117542492

namespace A190091

/-- `A023446(A036572(n+4))` -/
def P15215436125117542492.Spec : Prop :=
  ∀ n, P15215436125117542492.a n = A190091 (n + 1)

end A190091

/-!
# A190092: Number of rhombuses on a (n+1) X 4 grid.

The programs for A190092, there is no canonical definition to state claims against.
-/

/-! ## A190092.P6460187808168400266

`A190098(∑[n+2]+4)`
-/

namespace A190092.P6460187808168400266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A190092.P6460187808168400266

/-! ## A190092.P17303187332529415180

`and(-1, A190098(A167614(n+1)))`
-/

namespace A190092.P17303187332529415180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A190098 (A167614 (n + 1)).toNat)

end

end A190092.P17303187332529415180

/-! ## A190092.P2238713950323296723

`record[A190098(C(A056538(n+2), 2)+3)]`
-/

namespace A190092.P2238713950323296723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (Nat.choose (A056538 (n + 2)).toNat 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190092.P2238713950323296723

/-! ## A190092.P15861235000987871986

`A190098(A055998(n)+6)%(n+4)²`
-/

namespace A190092.P15861235000987871986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190098 (A055998 n + 6).toNat) ((n + 4) ^ 2 : ℤ)

end

end A190092.P15861235000987871986

/-! ## A190092.P16889146549981380415

`A190098(A000217(n+2)+3)%(n+4)²`
-/

namespace A190092.P16889146549981380415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190098 (A000217 (n + 2) + 3).toNat) ((n + 4) ^ 2 : ℤ)

end

end A190092.P16889146549981380415

/-! ## A190092.P4279602933420519173

`lcm(A158388(n), A190098(A167614(n+1)))`
-/

namespace A190092.P4279602933420519173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A190098 (A167614 (n + 1)).toNat)

end

end A190092.P4279602933420519173

/-! ## A190092.P13872229753472508226

`∑{d}[A190098(A167614(n+1)), A000010(#)]`
-/

namespace A190092.P13872229753472508226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190092.P13872229753472508226

/-! ## A190092.P12074273206534158726

`∑{d}[A190098(A046691(n)+7), A000010(#)]`
-/

namespace A190092.P12074273206534158726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190092.P12074273206534158726

/-! ## A190092.P17726025322215859125

`A007318(C(2, n))*A190098(A167614(n+1))`
-/

namespace A190092.P17726025322215859125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190098 (A167614 (n + 1)).toNat

end

end A190092.P17726025322215859125

/-! ## A190092.P3564086460383807994

`A007318(C(2, n))*A190098(A055998(n)+6)`
-/

namespace A190092.P3564086460383807994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190098 (A055998 n + 6).toNat

end

end A190092.P3564086460383807994

/-!
# A190093: Number of rhombuses on an (n+1) X 5 grid.

The programs for A190093, there is no canonical definition to state claims against.
-/

/-! ## A190093.P14938959962920653869

`A190098(∑[n+3]+7)`
-/

namespace A190093.P14938959962920653869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A190093.P14938959962920653869

/-! ## A190093.P10856403823532437974

`or(char[1], A190098(A167614(n+2)+1))`
-/

namespace A190093.P10856403823532437974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190098 (A167614 (n + 2) + 1).toNat)

end

end A190093.P10856403823532437974

/-! ## A190093.P4839927776549074714

`or(char[1], A190098(A000217(n+3)+4))`
-/

namespace A190093.P4839927776549074714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A190098 (A000217 (n + 3) + 4).toNat)

end

end A190093.P4839927776549074714

/-! ## A190093.P12052045737989295450

`lcm(A106400(n), A190098(A000217(n+3)+4))`
-/

namespace A190093.P12052045737989295450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A190098 (A000217 (n + 3) + 4).toNat)

end

end A190093.P12052045737989295450

/-! ## A190093.P1166216520125561723

`A190098(A167614(n+2)+1)%A107203(n+1)`
-/

namespace A190093.P1166216520125561723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190098 (A167614 (n + 2) + 1).toNat) (A107203 (n + 1))

end

end A190093.P1166216520125561723

/-! ## A190093.P10905644438339124495

`A007318(C(2, n))*A190098(A000217(n+3)+4)`
-/

namespace A190093.P10905644438339124495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190098 (A000217 (n + 3) + 4).toNat

end

end A190093.P10905644438339124495

/-! ## A190093.P4173730563173890457

`A190098(A000217(n+3)+4)%A000040(n+2)²`
-/

namespace A190093.P4173730563173890457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190098 (A000217 (n + 3) + 4).toNat) (A000040 (n + 2) ^ 2)

end

end A190093.P4173730563173890457

/-! ## A190093.P9179727283906671791

`A007318(C(2, n))²*A190098(A167614(n+2)+1)`
-/

namespace A190093.P9179727283906671791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A190098 (A167614 (n + 2) + 1).toNat

end

end A190093.P9179727283906671791

/-! ## A190093.P14843435680676668102

`A014963(15*(n+1))*A190098(A000217(n+3)+4)`
-/

namespace A190093.P14843435680676668102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A190098 (A000217 (n + 3) + 4).toNat

end

end A190093.P14843435680676668102

/-! ## A190093.P8080549608362737766

`A007318(C(2, n+2))*A190098(A167614(n+2)+1)`
-/

namespace A190093.P8080549608362737766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A190098 (A167614 (n + 2) + 1).toNat

end

end A190093.P8080549608362737766

/-!
# A190094: Number of rhombuses on a (n+1) X 6 grid.

The programs for A190094, there is no canonical definition to state claims against.
-/

/-! ## A190094.P13430287111895625450

`A190098(A374005(n+1))`
-/

namespace A190094.P13430287111895625450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A374005 (n + 1)).toNat

end

end A190094.P13430287111895625450

/-! ## A190094.P13064075585979419800

`A190098(A167499(n+3))`
-/

namespace A190094.P13064075585979419800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167499 (n + 3)).toNat

end

end A190094.P13064075585979419800

/-! ## A190094.P740069288507282020

`A190098(A155212(n)+13)`
-/

namespace A190094.P740069288507282020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A155212 n + 13).toNat

end

end A190094.P740069288507282020

/-! ## A190094.P799765915959122987

`A190098(A056000(n)+15)`
-/

namespace A190094.P799765915959122987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A056000 n + 15).toNat

end

end A190094.P799765915959122987

/-! ## A190094.P15633561639444404657

`A190098(A167614(n+3)+2)`
-/

namespace A190094.P15633561639444404657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167614 (n + 3) + 2).toNat

end

end A190094.P15633561639444404657

/-! ## A190094.P15105260953553970609

`A190098(A000124(n+4)+4)`
-/

namespace A190094.P15105260953553970609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000124 (n + 4) + 4).toNat

end

end A190094.P15105260953553970609

/-! ## A190094.P16171499493155978621

`A190098(A000096(n+3)+6)`
-/

namespace A190094.P16171499493155978621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000096 (n + 3) + 6).toNat

end

end A190094.P16171499493155978621

/-! ## A190094.P12217670383764615473

`A190098(A000217(n+4)+5)`
-/

namespace A190094.P12217670383764615473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000217 (n + 4) + 5).toNat

end

end A190094.P12217670383764615473

/-! ## A190094.P15222527042368704795

`A190098(A034856(n+3)+7)`
-/

namespace A190094.P15222527042368704795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A034856 (n + 3) + 7).toNat

end

end A190094.P15222527042368704795

/-! ## A190094.P3308782815600023325

`A190098(A051936(n+4)+14)`
-/

namespace A190094.P3308782815600023325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A051936 (n + 4) + 14).toNat

end

end A190094.P3308782815600023325

/-!
# A190095: Number of rhombuses on a (n+1)X7 grid.

The programs for A190095, there is no canonical definition to state claims against.
-/

/-! ## A190095.P2852277401818926349

`A190098(∑[n+5]+16)`
-/

namespace A190095.P2852277401818926349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A190095.P2852277401818926349

/-! ## A190095.P8074663859674226255

`record[A190098(A052905(n+1))]`
-/

namespace A190095.P8074663859674226255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A052905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190095.P8074663859674226255

/-! ## A190095.P5018518334767399133

`record[A190098(A155212(n)+3)]`
-/

namespace A190095.P5018518334767399133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A155212 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190095.P5018518334767399133

/-! ## A190095.P9926223098067357997

`lcm(A020985(n), A190098(A052905(n+3)))`
-/

namespace A190095.P9926223098067357997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A190098 (A052905 (n + 3)).toNat)

end

end A190095.P9926223098067357997

/-! ## A190095.P16129603269573455701

`∑{d}[A190098(A155212(n+2)+3), A000010(#)]`
-/

namespace A190095.P16129603269573455701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A155212 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190095.P16129603269573455701

/-! ## A190095.P8356338020282134089

`A007318(C(2, n))*A190098(A155212(n+2)+3)`
-/

namespace A190095.P8356338020282134089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190098 (A155212 (n + 2) + 3).toNat

end

end A190095.P8356338020282134089

/-! ## A190095.P16846282939827962232

`A007318(and(1, -n))*A190098(A155212(n+2)+3)`
-/

namespace A190095.P16846282939827962232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A190098 (A155212 (n + 2) + 3).toNat

end

end A190095.P16846282939827962232

/-! ## A190095.P11169610214065271167

`A190098(A155212(n+2)+3)+A008683(4*(n+1))`
-/

namespace A190095.P11169610214065271167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A155212 (n + 2) + 3).toNat + A008683 (4 * (n + 1))

end

end A190095.P11169610214065271167

/-! ## A190095.P494868390919054828

`A014963(6*(n+1))*A190098(A155212(n+2)+3)`
-/

namespace A190095.P494868390919054828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A190098 (A155212 (n + 2) + 3).toNat

end

end A190095.P494868390919054828

/-! ## A190095.P16543371488223067805

`A190098(A155212(n+2)+3)/A000040(n+2)%2`
-/

namespace A190095.P16543371488223067805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190098 (A155212 (n + 2) + 3).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A190095.P16543371488223067805

/-!
# A190096: Number of rhombuses on a (n+1)X8 grid.

The programs for A190096, there is no canonical definition to state claims against.
-/

/-! ## A190096.P9701455388468083055

`A190098(C(n+7, 2)+7)`
-/

namespace A190096.P9701455388468083055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (Nat.choose (n + 7) 2 + 7)

end

end A190096.P9701455388468083055

/-! ## A190096.P6764195628289395072

`A190098(A374008(n+1))`
-/

namespace A190096.P6764195628289395072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A374008 (n + 1)).toNat

end

end A190096.P6764195628289395072

/-! ## A190096.P7937676130644791238

`A190098(A167487(n+5))`
-/

namespace A190096.P7937676130644791238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167487 (n + 5)).toNat

end

end A190096.P7937676130644791238

/-! ## A190096.P10290559211225729915

`A190098(A056119(n)+28)`
-/

namespace A190096.P10290559211225729915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A056119 n + 28).toNat

end

end A190096.P10290559211225729915

/-! ## A190096.P3351817423607192581

`A190098(A167499(n+5)+2)`
-/

namespace A190096.P3351817423607192581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167499 (n + 5) + 2).toNat

end

end A190096.P3351817423607192581

/-! ## A190096.P9783549195129746332

`A190098(A000124(n+6)+6)`
-/

namespace A190096.P9783549195129746332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000124 (n + 6) + 6).toNat

end

end A190096.P9783549195129746332

/-! ## A190096.P8728303257516322998

`A190098(A000096(n+5)+8)`
-/

namespace A190096.P8728303257516322998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000096 (n + 5) + 8).toNat

end

end A190096.P8728303257516322998

/-! ## A190096.P12900477876454997106

`A190098(A000217(n+6)+7)`
-/

namespace A190096.P12900477876454997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000217 (n + 6) + 7).toNat

end

end A190096.P12900477876454997106

/-! ## A190096.P17626681805924073840

`A190098(A055998(n+4)+10)`
-/

namespace A190096.P17626681805924073840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A055998 (n + 4) + 10).toNat

end

end A190096.P17626681805924073840

/-! ## A190096.P7888362670092500874

`A190098(A052905(n+3)+12)`
-/

namespace A190096.P7888362670092500874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A052905 (n + 3) + 12).toNat

end

end A190096.P7888362670092500874

/-!
# A190097: Number of rhombuses on a (n+1)X9 grid.

The programs for A190097, there is no canonical definition to state claims against.
-/

/-! ## A190097.P14365178709796253103

`A190098(A374009(n+1))`
-/

namespace A190097.P14365178709796253103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A374009 (n + 1)).toNat

end

end A190097.P14365178709796253103

/-! ## A190097.P10511485543129646242

`A190098(A167487(n+6)+1)`
-/

namespace A190097.P10511485543129646242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167487 (n + 6) + 1).toNat

end

end A190097.P10511485543129646242

/-! ## A190097.P1232854779988863006

`A190098(A167499(n+6)+3)`
-/

namespace A190097.P1232854779988863006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167499 (n + 6) + 3).toNat

end

end A190097.P1232854779988863006

/-! ## A190097.P8678041934405915189

`A190098(A167614(n+6)+5)`
-/

namespace A190097.P8678041934405915189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A167614 (n + 6) + 5).toNat

end

end A190097.P8678041934405915189

/-! ## A190097.P10395579053287938141

`A190098(A000124(n+7)+7)`
-/

namespace A190097.P10395579053287938141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000124 (n + 7) + 7).toNat

end

end A190097.P10395579053287938141

/-! ## A190097.P4289195784697786211

`A190098(A000096(n+6)+9)`
-/

namespace A190097.P4289195784697786211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000096 (n + 6) + 9).toNat

end

end A190097.P4289195784697786211

/-! ## A190097.P17193234861859855139

`A190098(A000217(n+7)+8)`
-/

namespace A190097.P17193234861859855139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A000217 (n + 7) + 8).toNat

end

end A190097.P17193234861859855139

/-! ## A190097.P4667802808459156018

`A190098(A134227(n+7)-3-2*n)`
-/

namespace A190097.P4667802808459156018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A134227 (n + 7) - 3 - (2 * n : ℤ)).toNat

end

end A190097.P4667802808459156018

/-! ## A190097.P13143597194339861096

`A190098(A055999(n+6)-A005408(n+1))`
-/

namespace A190097.P13143597194339861096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A055999 (n + 6) - A005408 (n + 1)).toNat

end

end A190097.P13143597194339861096

/-! ## A190097.P4053823972837473753

`A190098(A052905(n+6)-A051755(n+3))`
-/

namespace A190097.P4053823972837473753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (A052905 (n + 6) - A051755 (n + 3)).toNat

end

end A190097.P4053823972837473753

/-!
# A190098: T(n,k)=Number of rhombuses on a (n+1)X(k+1) grid.

The programs for A190098, there is no canonical definition to state claims against.
-/

/-! ## A190098.P2846209436447218328

`A337101(A157641(n))+A014430(n)`
-/

namespace A190098.P2846209436447218328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A157641 n).toNat + A014430 n

end

end A190098.P2846209436447218328

/-! ## A190098.P17622652224186438443

`A010051(A022177(n))+A001057(A335056(n+1))`
-/

namespace A190098.P17622652224186438443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A022177 n).toNat + A001057 (A335056 (n + 1)).toNat

end

end A190098.P17622652224186438443

/-! ## A190098.P13916365642964773955

`A044941(A000079(n))+A001057(A335056(n+1))`
-/

namespace A190098.P13916365642964773955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A000079 n).toNat + A001057 (A335056 (n + 1)).toNat

end

end A190098.P13916365642964773955

/-! ## A190098.P11149311799723645942

`A319861(n)+A032741(A038247(n))`
-/

namespace A190098.P11149311799723645942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 n + A032741 (A038247 n).toNat

end

end A190098.P11149311799723645942

/-! ## A190098.P7428613619163722419

`A137512(A027170(n))`
-/

namespace A190098.P7428613619163722419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A027170 n).toNat

end

end A190098.P7428613619163722419

/-!
# A190099: Number of 1:2:sqrt(5) proportioned triangles on an (n+1) X (n+1) grid.

The programs for A190099, there is no canonical definition to state claims against.
-/

/-! ## A190099.P4147615275542289784

`A190100(∑[4*n]+1)`
-/

namespace A190099.P4147615275542289784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190099.P4147615275542289784

/-! ## A190099.P881974658616939370

`lcm(2, A190100(A001844(n)))`
-/

namespace A190099.P881974658616939370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A190100 (A001844 n).toNat)

end

end A190099.P881974658616939370

/-! ## A190099.P4134356926798000700

`A057427(n)*A190100(A001844(n))`
-/

namespace A190099.P4134356926798000700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A190100 (A001844 n).toNat

end

end A190099.P4134356926798000700

/-! ## A190099.P4661850418053726189

`A190100(A001844(n))%A004009(n)`
-/

namespace A190099.P4661850418053726189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190100 (A001844 n).toNat) (A004009 n)

end

end A190099.P4661850418053726189

/-! ## A190099.P8143123881392807678

`A190100(A001844(n))+A000007(n+1)`
-/

namespace A190099.P8143123881392807678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190100 (A001844 n).toNat + A000007 (n + 1)

end

end A190099.P8143123881392807678

/-! ## A190099.P10759346567015526756

`A007318(C(2, n))*A190100(A001844(n))`
-/

namespace A190099.P10759346567015526756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190100 (A001844 n).toNat

end

end A190099.P10759346567015526756

/-! ## A190099.P17628735113129455529

`A190100(A001844(n))-A008683(8*n+4)`
-/

namespace A190099.P17628735113129455529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190100 (A001844 n).toNat - A008683 (8 * n + 4)

end

end A190099.P17628735113129455529

/-! ## A190099.P6502470067525994948

`A000040(n+1)%2*A190100(A001844(n))`
-/

namespace A190099.P6502470067525994948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A190100 (A001844 n).toNat

end

end A190099.P6502470067525994948

/-! ## A190099.P8738065327328683507

`A190100(A001844(n))+val(A020639(n+1), 4)`
-/

namespace A190099.P8738065327328683507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190100 (A001844 n).toNat + (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 4 : ℤ)

end

end A190099.P8738065327328683507

