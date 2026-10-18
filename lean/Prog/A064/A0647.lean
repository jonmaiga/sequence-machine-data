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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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

/-!
# A064700: Numbers k that are divisible by the multiplicative digital root of k.

The programs for A064700, there is no canonical definition to state claims against.
-/

/-! ## A064700.P1702592745534997814

`eq[n+1, lcm(n+1, A031347(n+1))]+1`
-/

namespace A064700.P1702592745534997814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A031347 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064700.P1702592745534997814

/-! ## A064700.P4334131777459457820

`eq[gcd(n, A031347(n)), A051802(n)]`
-/

namespace A064700.P4334131777459457820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A031347 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064700.P4334131777459457820

/-! ## A064700.P11043110920146554114

`eq[lcm(n, A031347(n)), A028310(n)]`
-/

namespace A064700.P11043110920146554114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A031347 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064700.P11043110920146554114

/-! ## A064700.P3460671439798266388

`A382402(n+1)+A000007(A002083(n+1))`
-/

namespace A064700.P3460671439798266388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1) + A000007 (A002083 (n + 1)).toNat

end

end A064700.P3460671439798266388

/-! ## A064700.P6808908557003238963

`A382402(n+1)-A382424(A181058(n+3))`
-/

namespace A064700.P6808908557003238963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1) - A382424 (A181058 (n + 3)).toNat

end

end A064700.P6808908557003238963

/-!
# A064702: Nonnegative numbers such that additive and multiplicative digital roots coincide.

The programs for A064702, there is no canonical definition to state claims against.
-/

/-! ## A064702.P16559130487727950934

`eq[dr(n), A031347(n)]`
-/

namespace A064702.P16559130487727950934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064702.P16559130487727950934

/-! ## A064702.P6624484126710155185

`eq[A010888(n), A031347(n)]`
-/

namespace A064702.P6624484126710155185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P6624484126710155185

/-! ## A064702.P3652502846636934912

`eq[A007953(A007953(n)), A031347(n)]`
-/

namespace A064702.P3652502846636934912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P3652502846636934912

/-! ## A064702.P10592111420184436013

`eq[A031347(n), A180595(A004092(n))]`
-/

namespace A064702.P10592111420184436013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A004092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P10592111420184436013

/-! ## A064702.P3068316408130460863

`eq[A031347(n), A180595(A169805(n))]`
-/

namespace A064702.P3068316408130460863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P3068316408130460863

/-! ## A064702.P147574071303162467

`eq[A031347(n), A180595(A031347(n)+n)]`
-/

namespace A064702.P147574071303162467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A031347 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P147574071303162467

/-! ## A064702.P3687835390507718627

`eq[A031347(n), A180595(2*n)]`
-/

namespace A064702.P3687835390507718627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P3687835390507718627

/-! ## A064702.P16364277549168314280

`eq[A180595(A005843(n))², A031347(n)²]`
-/

namespace A064702.P16364277549168314280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A005843 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064702.P16364277549168314280

/-!
# A064703: Smallest lucky number that is the product of n lucky numbers.

The programs for A064703, there is no canonical definition to state claims against.
-/

/-! ## A064703.P14176216001859137410

`A006166(∑{d}[A203365(n+1), #])`
-/

namespace A064703.P14176216001859137410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A064703.P14176216001859137410

/-! ## A064703.P4974644465890939694

`A160797(A303058(n)+A303042(n+1))`
-/

namespace A064703.P4974644465890939694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A303058 n + A303042 (n + 1)).toNat

end

end A064703.P4974644465890939694

/-!
# A064704: Numbers beginning and ending with their multiplicative digital root.

The programs for A064704, there is no canonical definition to state claims against.
-/

/-! ## A064704.P13643760655900476179

`eq[n, A051802(n)*A213217(n)]`
-/

namespace A064704.P13643760655900476179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n * A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064704.P13643760655900476179

/-! ## A064704.P2233867348631354652

`∩[A064700(n+1), A179309(n+1)]`
-/

namespace A064704.P2233867348631354652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064704.P2233867348631354652

/-! ## A064704.P16197544516082206234

`∩[A064700(n+1), A214019(n+1)]`
-/

namespace A064704.P16197544516082206234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064704.P16197544516082206234

/-! ## A064704.P561922826438910761

`∩[A064700(n+1), A244514(n+1)]`
-/

namespace A064704.P561922826438910761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064704.P561922826438910761

/-! ## A064704.P6359108289697924362

`∩[A064700(n+1), A368944(n+1)]`
-/

namespace A064704.P6359108289697924362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064704.P6359108289697924362

/-!
# A064706: Square of permutation defined by A003188.

The programs for A064706, the canonical program `A064706.P11682189123624134312` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064706 has offset 0).

The definition of A064706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064706.P11682189123624134312

`A003188(A003188(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064706

/-- `A003188(A003188(n))` -/
def P11682189123624134312.Spec : Prop :=
  ∀ n, P11682189123624134312.a n = A064706 n

theorem P11682189123624134312.correct : P11682189123624134312.Spec := by
  intro n
  simp only [A064706]

end A064706

/-! ## A064706.P15416104322507000112

`A233280(A180201(n))`
-/

namespace A064706.P15416104322507000112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A180201 n).toNat

end

end A064706.P15416104322507000112

namespace A064706

/-- `A233280(A180201(n))` -/
def P15416104322507000112.Spec : Prop :=
  ∀ n, P15416104322507000112.a n = A064706 n

end A064706

/-! ## A064706.P3068120853852157448

`xor(n, floor(n/4))`
-/

namespace A064706.P3068120853852157448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

end

end A064706.P3068120853852157448

namespace A064706

/-- `xor(n, floor(n/4))` -/
def P3068120853852157448.Spec : Prop :=
  ∀ n, P3068120853852157448.a n = A064706 n

end A064706

/-! ## A064706.P10625850393829621998

`floor(A048725(n)/4)`
-/

namespace A064706.P10625850393829621998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048725 n : ℚ) / 4⌋

end

end A064706.P10625850393829621998

namespace A064706

/-- `floor(A048725(n)/4)` -/
def P10625850393829621998.Spec : Prop :=
  ∀ n, P10625850393829621998.a n = A064706 n

end A064706

/-! ## A064706.P460958244592154625

`A302846(A163355(n))`
-/

namespace A064706.P460958244592154625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163355 n).toNat

end

end A064706.P460958244592154625

namespace A064706

/-- `A302846(A163355(n))` -/
def P460958244592154625.Spec : Prop :=
  ∀ n, P460958244592154625.a n = A064706 n

end A064706

/-! ## A064706.P14540931505643629760

`A302846(A163905(A163356(n)))`
-/

namespace A064706.P14540931505643629760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163905 (A163356 n).toNat).toNat

end

end A064706.P14540931505643629760

namespace A064706

/-- `A302846(A163905(A163356(n)))` -/
def P14540931505643629760.Spec : Prop :=
  ∀ n, P14540931505643629760.a n = A064706 n

end A064706

/-! ## A064706.P3704349213017890726

`A302846(A163915(A163906(n)))`
-/

namespace A064706.P3704349213017890726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163915 (A163906 n).toNat).toNat

end

end A064706.P3704349213017890726

namespace A064706

/-- `A302846(A163915(A163906(n)))` -/
def P3704349213017890726.Spec : Prop :=
  ∀ n, P3704349213017890726.a n = A064706 n

end A064706

/-! ## A064706.P9396167085322284925

`A300838(A057300(A300838(A057300(n))))`
-/

namespace A064706.P9396167085322284925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A057300 (A300838 (A057300 n).toNat).toNat).toNat

end

end A064706.P9396167085322284925

namespace A064706

/-- `A300838(A057300(A300838(A057300(n))))` -/
def P9396167085322284925.Spec : Prop :=
  ∀ n, P9396167085322284925.a n = A064706 n

end A064706

/-! ## A064706.P1497914664762206623

`A234612(A234613(n))`
-/

namespace A064706.P1497914664762206623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A234613 n).toNat

end

end A064706.P1497914664762206623

namespace A064706

/-- `A234612(A234613(n))` -/
def P1497914664762206623.Spec : Prop :=
  ∀ n, P1497914664762206623.a n = A064706 n

end A064706

/-! ## A064706.P4427399925654893053

`A105081(A105081(n+1))-1`
-/

namespace A064706.P4427399925654893053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A105081 (n + 1)).toNat - 1

end

end A064706.P4427399925654893053

namespace A064706

/-- `A105081(A105081(n+1))-1` -/
def P4427399925654893053.Spec : Prop :=
  ∀ n, P4427399925654893053.a n = A064706 n

end A064706

/-! ## A064706.P17780872102256738333

`A234612(A006068(A193231(n)))`
-/

namespace A064706.P17780872102256738333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A006068 (A193231 n).toNat).toNat

end

end A064706.P17780872102256738333

namespace A064706

/-- `A234612(A006068(A193231(n)))` -/
def P17780872102256738333.Spec : Prop :=
  ∀ n, P17780872102256738333.a n = A064706 n

end A064706

/-! ## A064706.P3079353818360439029

`A234612(A064707(A234612(n)))`
-/

namespace A064706.P3079353818360439029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A064707 (A234612 n).toNat).toNat

end

end A064706.P3079353818360439029

namespace A064706

/-- `A234612(A064707(A234612(n)))` -/
def P3079353818360439029.Spec : Prop :=
  ∀ n, P3079353818360439029.a n = A064706 n

end A064706

/-! ## A064706.P11242185809556813596

`A193231(A006068(A234613(2*n-n)))`
-/

namespace A064706.P11242185809556813596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A006068 (A234613 (2 * n - n)).toNat).toNat

end

end A064706.P11242185809556813596

namespace A064706

/-- `A193231(A006068(A234613(2*n-n)))` -/
def P11242185809556813596.Spec : Prop :=
  ∀ n, P11242185809556813596.a n = A064706 n

end A064706

/-! ## A064706.P9983904961588597000

`A063946(A233280(A063946(A233280(n))))`
-/

namespace A064706.P9983904961588597000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A233280 (A063946 (A233280 n).toNat).toNat).toNat

end

end A064706.P9983904961588597000

namespace A064706

/-- `A063946(A233280(A063946(A233280(n))))` -/
def P9983904961588597000.Spec : Prop :=
  ∀ n, P9983904961588597000.a n = A064706 n

end A064706

/-! ## A064706.P17289417096332039022

`A004526(A396059(n))`
-/

namespace A064706.P17289417096332039022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A396059 n).toNat

end

end A064706.P17289417096332039022

namespace A064706

/-- `A004526(A396059(n))` -/
def P17289417096332039022.Spec : Prop :=
  ∀ n, P17289417096332039022.a n = A064706 n

end A064706

/-! ## A064706.P15480891600429380626

`A004526(xor(2*n, A004526(n)))`
-/

namespace A064706.P15480891600429380626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (2 * n : ℤ) (A004526 n)).toNat

end

end A064706.P15480891600429380626

namespace A064706

/-- `A004526(xor(2*n, A004526(n)))` -/
def P15480891600429380626.Spec : Prop :=
  ∀ n, P15480891600429380626.a n = A064706 n

end A064706

/-! ## A064706.P12645427412057020247

`A123108(xor(2*n, A123108(n)))`
-/

namespace A064706.P12645427412057020247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor (2 * n : ℤ) (A123108 n)).toNat

end

end A064706.P12645427412057020247

namespace A064706

/-- `A123108(xor(2*n, A123108(n)))` -/
def P12645427412057020247.Spec : Prop :=
  ∀ n, P12645427412057020247.a n = A064706 n

end A064706

/-! ## A064706.P12716998401790286350

`A004526(A048724(A004526(A048724(n))))`
-/

namespace A064706.P12716998401790286350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048724 (A004526 (A048724 n).toNat).toNat).toNat

end

end A064706.P12716998401790286350

namespace A064706

/-- `A004526(A048724(A004526(A048724(n))))` -/
def P12716998401790286350.Spec : Prop :=
  ∀ n, P12716998401790286350.a n = A064706 n

end A064706

/-! ## A064706.P6096076069617960325

`A002265(n)+A002265(A048725(n)-n)`
-/

namespace A064706.P6096076069617960325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + A002265 (A048725 n - (n : ℤ)).toNat

end

end A064706.P6096076069617960325

namespace A064706

/-- `A002265(n)+A002265(A048725(n)-n)` -/
def P6096076069617960325.Spec : Prop :=
  ∀ n, P6096076069617960325.a n = A064706 n

end A064706

/-! ## A064706.P16397924781429432633

`A002265(A048725(n))`
-/

namespace A064706.P16397924781429432633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A048725 n).toNat

end

end A064706.P16397924781429432633

namespace A064706

/-- `A002265(A048725(n))` -/
def P16397924781429432633.Spec : Prop :=
  ∀ n, P16397924781429432633.a n = A064706 n

end A064706

/-!
# A064707: Inverse square of permutation defined by A003188.

The programs for A064707, the canonical program `A064707.P16779567911126322867` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064707 has offset 0).

The definition of A064707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, A233279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064707.P16779567911126322867

`A180200(A233279(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064707

/-- `A180200(A233279(n))` -/
def P16779567911126322867.Spec : Prop :=
  ∀ n, P16779567911126322867.a n = A064707 n

theorem P16779567911126322867.correct : P16779567911126322867.Spec := by
  intro n
  simp only [A064707]

end A064707

/-! ## A064707.P14539589432720375133

`xor(n, a(floor(n/4)))` with `a(0)=0`
-/

namespace A064707.P14539589432720375133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat)

end

end A064707.P14539589432720375133

namespace A064707

/-- `xor(n, a(floor(n/4)))` -/
def P14539589432720375133.Spec : Prop :=
  ∀ n, (P14539589432720375133.a n : ℤ) = A064707 n

end A064707

/-! ## A064707.P660989091064171701

`A163356(A302845(n))`
-/

namespace A064707.P660989091064171701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302845 n).toNat

end

end A064707.P660989091064171701

namespace A064707

/-- `A163356(A302845(n))` -/
def P660989091064171701.Spec : Prop :=
  ∀ n, P660989091064171701.a n = A064707 n

end A064707

/-! ## A064707.P11752166468365801035

`xor(n, A292600(A292600(n)))`
-/

namespace A064707.P11752166468365801035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (A292600 n).toNat)

end

end A064707.P11752166468365801035

namespace A064707

/-- `xor(n, A292600(A292600(n)))` -/
def P11752166468365801035.Spec : Prop :=
  ∀ n, P11752166468365801035.a n = A064707 n

end A064707

/-! ## A064707.P823476291458107900

`A300839(xor(n, A300839(n)))`
-/

namespace A064707.P823476291458107900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (Int.xor (n : ℤ) (A300839 n)).toNat

end

end A064707.P823476291458107900

namespace A064707

/-- `A300839(xor(n, A300839(n)))` -/
def P823476291458107900.Spec : Prop :=
  ∀ n, P823476291458107900.a n = A064707 n

end A064707

/-! ## A064707.P12371618787964177568

`A286546(A006068(n))+A006068(n)`
-/

namespace A064707.P12371618787964177568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 (A006068 n).toNat + A006068 n

end

end A064707.P12371618787964177568

namespace A064707

/-- `A286546(A006068(n))+A006068(n)` -/
def P12371618787964177568.Spec : Prop :=
  ∀ n, P12371618787964177568.a n = A064707 n

end A064707

/-! ## A064707.P4357557056489856859

`A163356(A302843(A163356(A302843(n))))`
-/

namespace A064707.P4357557056489856859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302843 (A163356 (A302843 n).toNat).toNat).toNat

end

end A064707.P4357557056489856859

namespace A064707

/-- `A163356(A302843(A163356(A302843(n))))` -/
def P4357557056489856859.Spec : Prop :=
  ∀ n, P4357557056489856859.a n = A064707 n

end A064707

/-! ## A064707.P1116700378307696099

`A247891(A003188(A003188(A247891(n))))`
-/

namespace A064707.P1116700378307696099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 (A003188 (A003188 (A247891 n).toNat).toNat).toNat

end

end A064707.P1116700378307696099

namespace A064707

/-- `A247891(A003188(A003188(A247891(n))))` -/
def P1116700378307696099.Spec : Prop :=
  ∀ n, P1116700378307696099.a n = A064707 n

end A064707

/-! ## A064707.P8694410399998579095

`A006068(A006068(n))`
-/

namespace A064707.P8694410399998579095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A006068 n).toNat

end

end A064707.P8694410399998579095

namespace A064707

/-- `A006068(A006068(n))` -/
def P8694410399998579095.Spec : Prop :=
  ∀ n, P8694410399998579095.a n = A064707 n

end A064707

/-! ## A064707.P8561577135455954212

`A234613(A234612(n))`
-/

namespace A064707.P8561577135455954212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234612 n).toNat

end

end A064707.P8561577135455954212

namespace A064707

/-- `A234613(A234612(n))` -/
def P8561577135455954212.Spec : Prop :=
  ∀ n, P8561577135455954212.a n = A064707 n

end A064707

/-! ## A064707.P77209590397031231

`A292600(A268716(n))`
-/

namespace A064707.P77209590397031231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A268716 n).toNat

end

end A064707.P77209590397031231

namespace A064707

/-- `A292600(A268716(n))` -/
def P77209590397031231.Spec : Prop :=
  ∀ n, P77209590397031231.a n = A064707 n

end A064707

/-! ## A064707.P745914993725153997

`A066194(A066194(n+1))-1`
-/

namespace A064707.P745914993725153997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A066194 (n + 1)).toNat - 1

end

end A064707.P745914993725153997

namespace A064707

/-- `A066194(A066194(n+1))-1` -/
def P745914993725153997.Spec : Prop :=
  ∀ n, P745914993725153997.a n = A064707 n

end A064707

/-! ## A064707.P6898720648175738819

`A292600(2*A292600(2*n))`
-/

namespace A064707.P6898720648175738819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A292600 (2 * n)).toNat

end

end A064707.P6898720648175738819

namespace A064707

/-- `A292600(2*A292600(2*n))` -/
def P6898720648175738819.Spec : Prop :=
  ∀ n, P6898720648175738819.a n = A064707 n

end A064707

/-! ## A064707.P8373041734907770226

`A268716(A268716(n)/2)/2`
-/

namespace A064707.P8373041734907770226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A064707.P8373041734907770226

namespace A064707

/-- `A268716(A268716(n)/2)/2` -/
def P8373041734907770226.Spec : Prop :=
  ∀ n, P8373041734907770226.a n = (A064707 n : ℚ)

end A064707

/-! ## A064707.P15779677382613758767

`A234613(A003188(A193231(n)))`
-/

namespace A064707.P15779677382613758767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A003188 (A193231 n).toNat).toNat

end

end A064707.P15779677382613758767

namespace A064707

/-- `A234613(A003188(A193231(n)))` -/
def P15779677382613758767.Spec : Prop :=
  ∀ n, P15779677382613758767.a n = A064707 n

end A064707

/-! ## A064707.P10993802687512734688

`A180200(A292600(A063946(2*n)))`
-/

namespace A064707.P10993802687512734688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A292600 (A063946 (2 * n)).toNat).toNat

end

end A064707.P10993802687512734688

namespace A064707

/-- `A180200(A292600(A063946(2*n)))` -/
def P10993802687512734688.Spec : Prop :=
  ∀ n, P10993802687512734688.a n = A064707 n

end A064707

/-! ## A064707.P8700157722473221004

`A234613(A003188(A003188(A234613(n))))`
-/

namespace A064707.P8700157722473221004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A003188 (A003188 (A234613 n).toNat).toNat).toNat

end

end A064707.P8700157722473221004

namespace A064707

/-- `A234613(A003188(A003188(A234613(n))))` -/
def P8700157722473221004.Spec : Prop :=
  ∀ n, P8700157722473221004.a n = A064707 n

end A064707

/-! ## A064707.P3819262430292659465

`A233279(A063946(A233279(A063946(n))))`
-/

namespace A064707.P3819262430292659465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 (A233279 (A063946 n).toNat).toNat).toNat

end

end A064707.P3819262430292659465

namespace A064707

/-- `A233279(A063946(A233279(A063946(n))))` -/
def P3819262430292659465.Spec : Prop :=
  ∀ n, P3819262430292659465.a n = A064707 n

end A064707

/-! ## A064707.P17881335196113429432

`A054238(A163234(n))`
-/

namespace A064707.P17881335196113429432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163234 n).toNat

end

end A064707.P17881335196113429432

namespace A064707

/-- `A054238(A163234(n))` -/
def P17881335196113429432.Spec : Prop :=
  ∀ n, P17881335196113429432.a n = A064707 n

end A064707

/-! ## A064707.P14810165278453023112

`A346453(A163236(n))`
-/

namespace A064707.P14810165278453023112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346453 (A163236 n).toNat

end

end A064707.P14810165278453023112

namespace A064707

/-- `A346453(A163236(n))` -/
def P14810165278453023112.Spec : Prop :=
  ∀ n, P14810165278453023112.a n = A064707 n

end A064707

/-!
# A064708: Initial term of run of (at least) n consecutive numbers with just 2 distinct prime factors.

The programs for A064708, there is no canonical definition to state claims against.
-/

/-! ## A064708.P13133343608639832028

`A064709(C(n*gcd(2, n), 12)+n+1)`
-/

namespace A064708.P13133343608639832028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064709 (Nat.choose (n * Nat.gcd 2 n) 12 + (n + 1))

end

end A064708.P13133343608639832028

/-! ## A064708.P14821870980545292266

`A064709(C(∏{p}[n+1, #], 7)+n+1)`
-/

namespace A064708.P14821870980545292266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064709 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 7 + (n + 1))

end

end A064708.P14821870980545292266

/-! ## A064708.P12891319794700394708

`A064709(C(∑{p}[n+1, C(#, n)], 7)+n+1)`
-/

namespace A064708.P12891319794700394708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064709 (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) 7 + (n + 1))

end

end A064708.P12891319794700394708

/-! ## A064708.P7043771660685947230

`A064709(n+1)%Δ[C(p?[4*n-1]+1, 2)]`
-/

namespace A064708.P7043771660685947230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064709 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A064708.P7043771660685947230

/-!
# A064709: Initial term of run of (exactly) n consecutive numbers with just 2 distinct prime factors.

The programs for A064709, there is no canonical definition to state claims against.
-/

/-! ## A064709.P8503505632654772216

`A375287(∑[n+1]+1)`
-/

namespace A064709.P8503505632654772216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064709.P8503505632654772216

/-!
# A064710: Numbers k such that the sum of divisors of k and the product of divisors of k are both perfect squares.

The programs for A064710, the canonical program `A064710.P18009114973468891681` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064710 has offset 1).

The definition of A064710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064710.P18009114973468891681

`∩[A006532(n+1), A048943(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064710

/-- `∩[A006532(n+1), A048943(n+1)]` -/
def P18009114973468891681.Spec : Prop :=
  ∀ n, (P18009114973468891681.a n : ℤ) = A064710 (n + 1)

theorem P18009114973468891681.correct : P18009114973468891681.Spec := by
  intro n
  simp only [A064710, Nat.add_sub_cancel]

end A064710

/-! ## A064710.P13102009232329414875

`A006532(lt[A345197(3*n+2), A323901(n)])`
-/

namespace A064710.P13102009232329414875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064710.P13102009232329414875

namespace A064710

/-- `A006532(lt[A345197(3*n+2), A323901(n)])` -/
def P13102009232329414875.Spec : Prop :=
  ∀ n, P13102009232329414875.a n = A064710 (n + 1)

end A064710

/-! ## A064710.P9340751086585523229

`A006532(comp[A157306(n²)]+1)`
-/

namespace A064710.P9340751086585523229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157306 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A064710.P9340751086585523229

namespace A064710

/-- `A006532(comp[A157306(n²)]+1)` -/
def P9340751086585523229.Spec : Prop :=
  ∀ n, P9340751086585523229.a n = A064710 (n + 1)

end A064710

/-! ## A064710.P375590775524943402

`A006532(A130130(n^3+1)+n)`
-/

namespace A064710.P375590775524943402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (A130130 (n ^ 3 + 1) + (n : ℤ)).toNat

end

end A064710.P375590775524943402

namespace A064710

/-- `A006532(A130130(n^3+1)+n)` -/
def P375590775524943402.Spec : Prop :=
  ∀ n, P375590775524943402.a n = A064710 (n + 1)

end A064710

/-! ## A064710.P4584662820068718589

`A006532(A001227(A000043(n+1))+n)`
-/

namespace A064710.P4584662820068718589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (A001227 (A000043 (n + 1)).toNat + (n : ℤ)).toNat

end

end A064710.P4584662820068718589

namespace A064710

/-- `A006532(A001227(A000043(n+1))+n)` -/
def P4584662820068718589.Spec : Prop :=
  ∀ n, P4584662820068718589.a n = A064710 (n + 1)

end A064710

/-!
# A064711: Numbers n such that n^2 + prime(n) is a prime.

The programs for A064711, there is no canonical definition to state claims against.
-/

/-! ## A064711.P2538905577195276019

`A000720(A253971(n+1))`
-/

namespace A064711.P2538905577195276019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253971 (n + 1)).toNat

end

end A064711.P2538905577195276019

/-! ## A064711.P9303715668426228795

`A061395(A253971(n+1))%A004810(n+1)`
-/

namespace A064711.P9303715668426228795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A253971 (n + 1)).toNat) (A004810 (n + 1))

end

end A064711.P9303715668426228795

/-! ## A064711.P347676465516113093

`A061395(2*A253971(n+1))`
-/

namespace A064711.P347676465516113093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A253971 (n + 1)).toNat

end

end A064711.P347676465516113093

/-! ## A064711.P10136349174910474310

`A003963(p?[A253971(n+1)])`
-/

namespace A064711.P10136349174910474310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064711.P10136349174910474310

/-! ## A064711.P4362248424674646176

`A026233(p?[A253971(n+1)])`
-/

namespace A064711.P4362248424674646176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064711.P4362248424674646176

/-! ## A064711.P10151593575748593955

`A049084(p?[A253971(n+1)])`
-/

namespace A064711.P10151593575748593955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064711.P10151593575748593955

/-! ## A064711.P9691253655661239223

`A055396(p?[A253971(n+1)])`
-/

namespace A064711.P9691253655661239223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064711.P9691253655661239223

/-!
# A064712: Numbers k such that k^2 - prime(k) is a prime.

The programs for A064712, there is no canonical definition to state claims against.
-/

/-! ## A064712.P7958863997599117929

`eq[1, ∑{e}[n²-record[A020639(n+1)], #]]`
-/

namespace A064712.P7958863997599117929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064712.P7958863997599117929

/-! ## A064712.P14560804382995670697

`eq[1, ∑{e}[(n+1)²-A000040(n+1), #]]+1`
-/

namespace A064712.P14560804382995670697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064712.P14560804382995670697

/-! ## A064712.P3276871075375944403

`eq[1, A001222(abs(n²-A008578(n+1)))]`
-/

namespace A064712.P3276871075375944403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(n ^ 2 : ℤ) - A008578 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064712.P3276871075375944403

/-! ## A064712.P10124942484694286509

`lt[A000005(A276117(n+5)), A276094(n)]`
-/

namespace A064712.P10124942484694286509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276117 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064712.P10124942484694286509

/-! ## A064712.P8175031995049707593

`eq[A051445(A350429(n+1)), A339558(n+1)]`
-/

namespace A064712.P8175031995049707593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A350429 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064712.P8175031995049707593

/-!
# A064713: Numbers k such that prime(k)^2 - k is prime.

The programs for A064713, there is no canonical definition to state claims against.
-/

/-! ## A064713.P11668301219859865951

`A000720(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P11668301219859865951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P11668301219859865951

/-! ## A064713.P9879174296130546141

`A061395(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P9879174296130546141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P9879174296130546141

/-! ## A064713.P11498946891454035205

`A000720(round(sqrt(A227890(n+1))))`
-/

namespace A064713.P11498946891454035205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A227890 (n + 1) : ℝ))).toNat

end

end A064713.P11498946891454035205

/-! ## A064713.P10795118067459185852

`A061395(round(sqrt(A227890(n+1))))`
-/

namespace A064713.P10795118067459185852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A227890 (n + 1) : ℝ))).toNat

end

end A064713.P10795118067459185852

/-! ## A064713.P11506009935890515469

`A303753(round(sqrt(A227890(n+1))))`
-/

namespace A064713.P11506009935890515469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (SequenceMachineLib.roundAway (Real.sqrt (A227890 (n + 1) : ℝ))).toNat

end

end A064713.P11506009935890515469

/-! ## A064713.P9387128629254166464

`A058933(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P9387128629254166464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P9387128629254166464

/-! ## A064713.P8983276948764772768

`A289508(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P8983276948764772768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P8983276948764772768

/-! ## A064713.P7022164151438519468

`A289508(round(sqrt(A227890(n+1))))`
-/

namespace A064713.P7022164151438519468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway (Real.sqrt (A227890 (n + 1) : ℝ))).toNat

end

end A064713.P7022164151438519468

/-! ## A064713.P7655525014073281528

`A003963(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P7655525014073281528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P7655525014073281528

/-! ## A064713.P8097206834581466085

`A026233(ceil(sqrt(A227890(n+1))))`
-/

namespace A064713.P8097206834581466085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 ⌈Real.sqrt (A227890 (n + 1) : ℝ)⌉.toNat

end

end A064713.P8097206834581466085

/-!
# A064714: Define q(0)=1, q(1)=1, q(2)=1, q(n)=q(abs(n-q(n-2)))+q(abs(n-q(n-3))) (A063892); then a(0) = 1, a(n)=a(n-1)+2*(q(n)-n/2), n > 0.

The programs for A064714, there is no canonical definition to state claims against.
-/

/-! ## A064714.P3584665359899262791

`A004273(∑[A063892(n+1)])-∑[n]`
-/

namespace A064714.P3584665359899262791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063892 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A064714.P3584665359899262791

/-! ## A064714.P17744046859375932833

`A005843(∑[A063892(n+1)])-(∑[n]+1)`
-/

namespace A064714.P17744046859375932833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063892 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A064714.P17744046859375932833

/-!
# A064715: Smallest member of triple of consecutive numbers each of which is the sum of two different nonzero squares.

The programs for A064715, there is no canonical definition to state claims against.
-/

/-! ## A064715.P3594958460152900841

`A064716(lt[A008574(3*(n+1)), A304330(3*n+2)])`
-/

namespace A064715.P3594958460152900841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064715.P3594958460152900841

/-! ## A064715.P17242270462535457322

`A064716(lt[A288875(3*(n+1)), A205484(2*n+3)])`
-/

namespace A064715.P17242270462535457322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205484 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064715.P17242270462535457322

/-! ## A064715.P12286044650696475739

`A064716(lt[A329579(3*(n+1)), A304330(3*n+2)])`
-/

namespace A064715.P12286044650696475739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329579 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064715.P12286044650696475739

/-! ## A064715.P685806605768650231

`A064716(lt[A250120(2*n+3), A304330(3*n+2)])`
-/

namespace A064715.P685806605768650231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064715.P685806605768650231

/-! ## A064715.P12219598597084983505

`A064716(lt[A323835(2*n+3), A304330(3*n+2)])`
-/

namespace A064715.P12219598597084983505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323835 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064715.P12219598597084983505

/-!
# A064716: Smallest member of three consecutive numbers each of which is the sum of two nonzero squares (not necessarily different).

The programs for A064716, there is no canonical definition to state claims against.
-/

/-! ## A064716.P293163016236753975

`∩[A082982(n+1), A355769(n+1)]`
-/

namespace A064716.P293163016236753975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064716.P293163016236753975

/-!
# A064717: A Beatty sequence for 2^i + 2^(-i) where i = sqrt(-1).

The programs for A064717, the canonical program `A064717.P13793230735173341254` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064717 has offset 1).

The definition of A064717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064717.P13793230735173341254

`comp[A064718(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064717

/-- `comp[A064718(n+1)-1]+1` -/
def P13793230735173341254.Spec : Prop :=
  ∀ n, (P13793230735173341254.a n : ℤ) = A064717 (n + 1)

theorem P13793230735173341254.correct : P13793230735173341254.Spec := by
  intro n
  simp only [A064717, Nat.add_sub_cancel]

end A064717

/-! ## A064717.P8246472392339882174

`A057362(4*(n+1))`
-/

namespace A064717.P8246472392339882174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (4 * (n + 1))

end

end A064717.P8246472392339882174

namespace A064717

/-- `A057362(4*(n+1))` -/
def P8246472392339882174.Spec : Prop :=
  ∀ n, P8246472392339882174.a n = A064717 (n + 1)

end A064717

/-! ## A064717.P3959369488309208045

`A057362(A016813(n+4))-5`
-/

namespace A064717.P3959369488309208045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A016813 (n + 4)).toNat - 5

end

end A064717.P3959369488309208045

namespace A064717

/-- `A057362(A016813(n+4))-5` -/
def P3959369488309208045.Spec : Prop :=
  ∀ n, P3959369488309208045.a n = A064717 (n + 1)

end A064717

/-! ## A064717.P14612358469333319692

`A002264(∑[Δ[A057363(n)]+4])`
-/

namespace A064717.P14612358469333319692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064717.P14612358469333319692

namespace A064717

/-- `A002264(∑[Δ[A057363(n)]+4])` -/
def P14612358469333319692.Spec : Prop :=
  ∀ n, P14612358469333319692.a n = A064717 (n + 1)

end A064717

/-! ## A064717.P16477618257264528493

`A008619(A057363(5*(n+1)))-1`
-/

namespace A064717.P16477618257264528493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057363 (5 * (n + 1))).toNat - 1

end

end A064717.P16477618257264528493

namespace A064717

/-- `A008619(A057363(5*(n+1)))-1` -/
def P16477618257264528493.Spec : Prop :=
  ∀ n, P16477618257264528493.a n = A064717 (n + 1)

end A064717

/-! ## A064717.P6347370932430761222

`A259361(∑[A182778(n+1)]-A259361(n))`
-/

namespace A064717.P6347370932430761222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j - A259361 n).toNat

end

end A064717.P6347370932430761222

namespace A064717

/-- `A259361(∑[A182778(n+1)]-A259361(n))` -/
def P6347370932430761222.Spec : Prop :=
  ∀ n, P6347370932430761222.a n = A064717 (n + 1)

end A064717

/-!
# A064718: A Beatty sequence for 2^i + 2^-i where i = sqrt(-1).

The programs for A064718, the canonical program `A064718.P6226458648572987889` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064718 has offset 1).

The definition of A064718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064718.P9005440247006943432

`4*n+3-A333348(4*n+3)`
-/

namespace A064718.P9005440247006943432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A333348 (4 * n + 3)

end

end A064718.P9005440247006943432

namespace A064718

/-- `4*n+3-A333348(4*n+3)` -/
def P9005440247006943432.Spec : Prop :=
  ∀ n, P9005440247006943432.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P6226458648572987889

`A057359(A016825(n)-1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064718

/-- `A057359(A016825(n)-1)+2` -/
def P6226458648572987889.Spec : Prop :=
  ∀ n, P6226458648572987889.a n = A064718 (n + 1)

theorem P6226458648572987889.correct : P6226458648572987889.Spec := by
  intro n
  simp only [A064718, Nat.add_sub_cancel]

end A064718

/-! ## A064718.P18038408319568204094

`A057359(A005408(2*n))+2`
-/

namespace A064718.P18038408319568204094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A005408 (2 * n)).toNat + 2

end

end A064718.P18038408319568204094

namespace A064718

/-- `A057359(A005408(2*n))+2` -/
def P18038408319568204094.Spec : Prop :=
  ∀ n, P18038408319568204094.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P10391105318873525371

`A057359(A016777(n)+n)+2`
-/

namespace A064718.P10391105318873525371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A016777 n + (n : ℤ)).toNat + 2

end

end A064718.P10391105318873525371

namespace A064718

/-- `A057359(A016777(n)+n)+2` -/
def P10391105318873525371.Spec : Prop :=
  ∀ n, P10391105318873525371.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P3292811268493280211

`A096607(A311914(n+1))`
-/

namespace A064718.P3292811268493280211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (A311914 (n + 1)).toNat

end

end A064718.P3292811268493280211

namespace A064718

/-- `A096607(A311914(n+1))` -/
def P3292811268493280211.Spec : Prop :=
  ∀ n, P3292811268493280211.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P6547006719715844150

`A004396(A311914(n+1)-1)`
-/

namespace A064718.P6547006719715844150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311914 (n + 1) - 1).toNat

end

end A064718.P6547006719715844150

namespace A064718

/-- `A004396(A311914(n+1)-1)` -/
def P6547006719715844150.Spec : Prop :=
  ∀ n, P6547006719715844150.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P1295774476539652375

`A225875(A008706(n+1))-1`
-/

namespace A064718.P1295774476539652375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (A008706 (n + 1)).toNat - 1

end

end A064718.P1295774476539652375

namespace A064718

/-- `A225875(A008706(n+1))-1` -/
def P1295774476539652375.Spec : Prop :=
  ∀ n, P1295774476539652375.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P5235766360590999797

`A267530(A315541(n))`
-/

namespace A064718.P5235766360590999797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A315541 n).toNat

end

end A064718.P5235766360590999797

namespace A064718

/-- `A267530(A315541(n))` -/
def P5235766360590999797.Spec : Prop :=
  ∀ n, P5235766360590999797.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P15103014984309128373

`A116921(A314249(n+1))`
-/

namespace A064718.P15103014984309128373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A314249 (n + 1)).toNat

end

end A064718.P15103014984309128373

namespace A064718

/-- `A116921(A314249(n+1))` -/
def P15103014984309128373.Spec : Prop :=
  ∀ n, P15103014984309128373.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P12116146360732885789

`A004525(A314249(n+1)-1)`
-/

namespace A064718.P12116146360732885789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314249 (n + 1) - 1).toNat

end

end A064718.P12116146360732885789

namespace A064718

/-- `A004525(A314249(n+1)-1)` -/
def P12116146360732885789.Spec : Prop :=
  ∀ n, P12116146360732885789.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P5596407657958554341

`A057358(6*n+5)-A057358(n+1)`
-/

namespace A064718.P5596407657958554341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (6 * n + 5) - A057358 (n + 1)

end

end A064718.P5596407657958554341

namespace A064718

/-- `A057358(6*n+5)-A057358(n+1)` -/
def P5596407657958554341.Spec : Prop :=
  ∀ n, P5596407657958554341.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P14336300360614174853

`A132270(A008602(n+1))`
-/

namespace A064718.P14336300360614174853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A008602 (n + 1)).toNat

end

end A064718.P14336300360614174853

namespace A064718

/-- `A132270(A008602(n+1))` -/
def P14336300360614174853.Spec : Prop :=
  ∀ n, P14336300360614174853.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P11146688674785751897

`A132270(A017365(2*n+1)+2)`
-/

namespace A064718.P11146688674785751897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A017365 (2 * n + 1) + 2).toNat

end

end A064718.P11146688674785751897

namespace A064718

/-- `A132270(A017365(2*n+1)+2)` -/
def P11146688674785751897.Spec : Prop :=
  ∀ n, P11146688674785751897.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P3951151402644579778

`round(log2(A187919(n+1)))`
-/

namespace A064718.P3951151402644579778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A187919 (n + 1) : ℝ))

end

end A064718.P3951151402644579778

namespace A064718

/-- `round(log2(A187919(n+1)))` -/
def P3951151402644579778.Spec : Prop :=
  ∀ n, P3951151402644579778.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P10339626037912766480

`round(log2(A236581(n+1)))`
-/

namespace A064718.P10339626037912766480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A236581 (n + 1) : ℝ))

end

end A064718.P10339626037912766480

namespace A064718

/-- `round(log2(A236581(n+1)))` -/
def P10339626037912766480.Spec : Prop :=
  ∀ n, P10339626037912766480.a n = A064718 (n + 1)

end A064718

/-! ## A064718.P8102516852760195396

`floor(log2(A387696(2*n+1)))`
-/

namespace A064718.P8102516852760195396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A387696 (2 * n + 1)).toNat

end

end A064718.P8102516852760195396

namespace A064718

/-- `floor(log2(A387696(2*n+1)))` -/
def P8102516852760195396.Spec : Prop :=
  ∀ n, (P8102516852760195396.a n : ℤ) = A064718 (n + 1)

end A064718

/-! ## A064718.P4972881438286739503

`∑[A291454((n+1)²)]+n`
-/

namespace A064718.P4972881438286739503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064718.P4972881438286739503

namespace A064718

/-- `∑[A291454((n+1)²)]+n` -/
def P4972881438286739503.Spec : Prop :=
  ∀ n, P4972881438286739503.a n = A064718 (n + 1)

end A064718

/-!
# A064719: A Beatty sequence for 3^i + 3^-i + 1.

The programs for A064719, the canonical program `A064719.P7995491773970243797` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064719 has offset 1).

The definition of A064719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064719.P7995491773970243797

`comp[A064720(n+1)-1]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064719

/-- `comp[A064720(n+1)-1]+1` -/
def P7995491773970243797.Spec : Prop :=
  ∀ n, (P7995491773970243797.a n : ℤ) = A064719 (n + 1)

theorem P7995491773970243797.correct : P7995491773970243797.Spec := by
  intro n
  simp only [A064719, Nat.add_sub_cancel]

end A064719

/-! ## A064719.P74615681743473605

`floor(A233583(2*n+3)/acot(γ))`
-/

namespace A064719.P74615681743473605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233583 (2 * n + 3) : ℝ) / SequenceMachineLib.acot Real.eulerMascheroniConstant⌋

end

end A064719.P74615681743473605

namespace A064719

/-- `floor(A233583(2*n+3)/acot(γ))` -/
def P74615681743473605.Spec : Prop :=
  ∀ n, P74615681743473605.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P17700562547532169254

`a(n-1)+A168181(A044790(n))+A145568(n)` with `a(0)=1`
-/

namespace A064719.P17700562547532169254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A168181 (A044790 n).toNat + A145568 n)

end

end A064719.P17700562547532169254

namespace A064719

/-- `a(n-1)+A168181(A044790(n))+A145568(n)` -/
def P17700562547532169254.Spec : Prop :=
  ∀ n, P17700562547532169254.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P15891277998702851075

`∑[A168181(A044790(n+1))+A145568(n)]`
-/

namespace A064719.P15891277998702851075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A044790 (n + 1)).toNat + A145568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P15891277998702851075

namespace A064719

/-- `∑[A168181(A044790(n+1))+A145568(n)]` -/
def P15891277998702851075.Spec : Prop :=
  ∀ n, P15891277998702851075.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P12878145019399301315

`∑[A145568(n)-A321804(A010784(n+1))]`
-/

namespace A064719.P12878145019399301315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n - A321804 (A010784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P12878145019399301315

namespace A064719

/-- `∑[A145568(n)-A321804(A010784(n+1))]` -/
def P12878145019399301315.Spec : Prop :=
  ∀ n, P12878145019399301315.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P17584343655613685147

`A253671(3*(n+1))-A067742(A096478(n+1))`
-/

namespace A064719.P17584343655613685147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253671 (3 * (n + 1)) - A067742 (A096478 (n + 1)).toNat

end

end A064719.P17584343655613685147

namespace A064719

/-- `A253671(3*(n+1))-A067742(A096478(n+1))` -/
def P17584343655613685147.Spec : Prop :=
  ∀ n, P17584343655613685147.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P11702145965289928428

`∑[A329900(A333640(n+1))+A145568(n)]`
-/

namespace A064719.P11702145965289928428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A333640 (n + 1)).toNat + A145568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P11702145965289928428

namespace A064719

/-- `∑[A329900(A333640(n+1))+A145568(n)]` -/
def P11702145965289928428.Spec : Prop :=
  ∀ n, P11702145965289928428.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P16498557451756673575

`∑[gcd(2, ∑[A154654(n)])]`
-/

namespace A064719.P16498557451756673575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154654 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P16498557451756673575

namespace A064719

/-- `∑[gcd(2, ∑[A154654(n)])]` -/
def P16498557451756673575.Spec : Prop :=
  ∀ n, (P16498557451756673575.a n : ℤ) = A064719 (n + 1)

end A064719

/-! ## A064719.P16134184709886854175

`A103128(A025708(n+1))+n`
-/

namespace A064719.P16134184709886854175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A025708 (n + 1)).toNat + (n : ℤ)

end

end A064719.P16134184709886854175

namespace A064719

/-- `A103128(A025708(n+1))+n` -/
def P16134184709886854175.Spec : Prop :=
  ∀ n, P16134184709886854175.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P10551117384615532945

`A099375(∑[n])-A344420(n)`
-/

namespace A064719.P10551117384615532945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (∑ j ∈ Finset.range (n + 1), f1 j) - A344420 n

end

end A064719.P10551117384615532945

namespace A064719

/-- `A099375(∑[n])-A344420(n)` -/
def P10551117384615532945.Spec : Prop :=
  ∀ n, P10551117384615532945.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P11167290687510292620

`A099375(A000217(n))-floor(n/11)`
-/

namespace A064719.P11167290687510292620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A000217 n).toNat - ⌊(n : ℚ) / 11⌋

end

end A064719.P11167290687510292620

namespace A064719

/-- `A099375(A000217(n))-floor(n/11)` -/
def P11167290687510292620.Spec : Prop :=
  ∀ n, P11167290687510292620.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P17160612973279723833

`A059562(n+1)%A278507(A000124(n))`
-/

namespace A064719.P17160612973279723833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059562 (n + 1)) (A278507 (A000124 n).toNat)

end

end A064719.P17160612973279723833

namespace A064719

/-- `A059562(n+1)%A278507(A000124(n))` -/
def P17160612973279723833.Spec : Prop :=
  ∀ n, P17160612973279723833.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P2135064600402574156

`A198954(∑[n])-floor(n/11)`
-/

namespace A064719.P2135064600402574156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌊(n : ℚ) / 11⌋

end

end A064719.P2135064600402574156

namespace A064719

/-- `A198954(∑[n])-floor(n/11)` -/
def P2135064600402574156.Spec : Prop :=
  ∀ n, P2135064600402574156.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P10909940984884171140

`A253671(Δ[A008486(A000217(n))])`
-/

namespace A064719.P10909940984884171140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253671 (f1 (n + 1) - f1 n).toNat

end

end A064719.P10909940984884171140

namespace A064719

/-- `A253671(Δ[A008486(A000217(n))])` -/
def P10909940984884171140.Spec : Prop :=
  ∀ n, P10909940984884171140.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P6018128799731366

`A253671(A103517(n)+A003056(A034856(n+1)))`
-/

namespace A064719.P6018128799731366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253671 (A103517 n + A003056 (A034856 (n + 1)).toNat).toNat

end

end A064719.P6018128799731366

namespace A064719

/-- `A253671(A103517(n)+A003056(A034856(n+1)))` -/
def P6018128799731366.Spec : Prop :=
  ∀ n, P6018128799731366.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P17524264587289116662

`A122840(A104793(n+1))+A060144(5*(n+1))`
-/

namespace A064719.P17524264587289116662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A104793 (n + 1)).toNat + A060144 (5 * (n + 1))

end

end A064719.P17524264587289116662

namespace A064719

/-- `A122840(A104793(n+1))+A060144(5*(n+1))` -/
def P17524264587289116662.Spec : Prop :=
  ∀ n, P17524264587289116662.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P9383633575755946751

`∑[A020639(A005574(A225693(n)²²+1))]`
-/

namespace A064719.P9383633575755946751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005574 ((A225693 n ^ 2) ^ 2 + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P9383633575755946751

namespace A064719

/-- `∑[A020639(A005574(A225693(n)²²+1))]` -/
def P9383633575755946751.Spec : Prop :=
  ∀ n, P9383633575755946751.a n = A064719 (n + 1)

end A064719

/-! ## A064719.P3574323165510216646

`∑[A011582(n²)+1]`
-/

namespace A064719.P3574323165510216646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064719.P3574323165510216646

namespace A064719

/-- `∑[A011582(n²)+1]` -/
def P3574323165510216646.Spec : Prop :=
  ∀ n, P3574323165510216646.a n = A064719 (n + 1)

end A064719

/-!
# A064720: A Beatty sequence for 3^i + 3^-i + 1.

The programs for A064720, the canonical program `A064720.P14462698037988331331` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064720 has offset 1).

The definition of A064720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064720.P14462698037988331331

`A160542(n+1)+A002260(∑[n+1])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064720

/-- `A160542(n+1)+A002260(∑[n+1])` -/
def P14462698037988331331.Spec : Prop :=
  ∀ n, P14462698037988331331.a n = A064720 (n + 1)

theorem P14462698037988331331.correct : P14462698037988331331.Spec := by
  intro n
  simp only [A064720, Nat.add_sub_cancel]

end A064720

/-! ## A064720.P16173056155446960801

`A059995(n)+2*A002260(∑[n+1])`
-/

namespace A064720.P16173056155446960801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + 2 * A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064720.P16173056155446960801

namespace A064720

/-- `A059995(n)+2*A002260(∑[n+1])` -/
def P16173056155446960801.Spec : Prop :=
  ∀ n, P16173056155446960801.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P17136304730557527245

`A094727(A000124(n)+∑[char[10*n]])+n`
-/

namespace A064720.P17136304730557527245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A000124 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + (n : ℤ)

end

end A064720.P17136304730557527245

namespace A064720

/-- `A094727(A000124(n)+∑[char[10*n]])+n` -/
def P17136304730557527245.Spec : Prop :=
  ∀ n, P17136304730557527245.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P1908184584132340729

`n+1+A151890(∑[n+1])+A059995(n)`
-/

namespace A064720.P1908184584132340729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A151890 (∑ j ∈ Finset.range (n + 1), f1 j) + A059995 n)

end

end A064720.P1908184584132340729

namespace A064720

/-- `n+1+A151890(∑[n+1])+A059995(n)` -/
def P1908184584132340729.Spec : Prop :=
  ∀ n, P1908184584132340729.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P1797580705428888835

`A059995(n)+(n+1)*(A073424(∑[n+1])+1)`
-/

namespace A064720.P1797580705428888835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + (n + 1 : ℤ) * (A073424 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A064720.P1797580705428888835

namespace A064720

/-- `A059995(n)+(n+1)*(A073424(∑[n+1])+1)` -/
def P1797580705428888835.Spec : Prop :=
  ∀ n, P1797580705428888835.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P11092124572513719465

`A151890(A000217(n+1))+A059995(n)+1+n`
-/

namespace A064720.P11092124572513719465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 (A000217 (n + 1)).toNat + A059995 n + 1 + (n : ℤ)

end

end A064720.P11092124572513719465

namespace A064720

/-- `A151890(A000217(n+1))+A059995(n)+1+n` -/
def P11092124572513719465.Spec : Prop :=
  ∀ n, P11092124572513719465.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P2185520869988065701

`A002260(∑[n+2]+1)+A059995(n)+n`
-/

namespace A064720.P2185520869988065701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (A059995 n + (n : ℤ))

end

end A064720.P2185520869988065701

namespace A064720

/-- `A002260(∑[n+2]+1)+A059995(n)+n` -/
def P2185520869988065701.Spec : Prop :=
  ∀ n, P2185520869988065701.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P14625727047188575536

`A125704(∑[n+5]+6)+n+1`
-/

namespace A064720.P14625727047188575536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125704 (∑ j ∈ Finset.range (n + 1), f1 j + 6) + (n + 1 : ℤ)

end

end A064720.P14625727047188575536

namespace A064720

/-- `A125704(∑[n+5]+6)+n+1` -/
def P14625727047188575536.Spec : Prop :=
  ∀ n, P14625727047188575536.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P7828968719930332086

`∑[(gcd(5, n)^(n+1))%3]+n`
-/

namespace A064720.P7828968719930332086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n ^ (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A064720.P7828968719930332086

namespace A064720

/-- `∑[(gcd(5, n)^(n+1))%3]+n` -/
def P7828968719930332086.Spec : Prop :=
  ∀ n, (P7828968719930332086.a n : ℤ) = A064720 (n + 1)

end A064720

/-! ## A064720.P3429492439839230737

`A278507(A000124(n))+A059995(n)`
-/

namespace A064720.P3429492439839230737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A000124 n).toNat + A059995 n

end

end A064720.P3429492439839230737

namespace A064720

/-- `A278507(A000124(n))+A059995(n)` -/
def P3429492439839230737.Spec : Prop :=
  ∀ n, P3429492439839230737.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P11768926463547970465

`A160542(n+1)+A002024(A000124(n))`
-/

namespace A064720.P11768926463547970465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1) + A002024 (A000124 n).toNat

end

end A064720.P11768926463547970465

namespace A064720

/-- `A160542(n+1)+A002024(A000124(n))` -/
def P11768926463547970465.Spec : Prop :=
  ∀ n, P11768926463547970465.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P2483722700140477378

`A059995(n)+record[2*A193592(n)]`
-/

namespace A064720.P2483722700140477378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064720.P2483722700140477378

namespace A064720

/-- `A059995(n)+record[2*A193592(n)]` -/
def P2483722700140477378.Spec : Prop :=
  ∀ n, P2483722700140477378.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P2813256745752288066

`A160542(n+1)+A002024(∑[n+1])`
-/

namespace A064720.P2813256745752288066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1) + A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064720.P2813256745752288066

namespace A064720

/-- `A160542(n+1)+A002024(∑[n+1])` -/
def P2813256745752288066.Spec : Prop :=
  ∀ n, P2813256745752288066.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P759250902319908278

`A160542(n+1)+A139600(A000096(n+1))`
-/

namespace A064720.P759250902319908278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1) + A139600 (A000096 (n + 1)).toNat

end

end A064720.P759250902319908278

namespace A064720

/-- `A160542(n+1)+A139600(A000096(n+1))` -/
def P759250902319908278.Spec : Prop :=
  ∀ n, P759250902319908278.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P2121258883866844410

`A059995(n)+A056926(A005843(n+1)²)`
-/

namespace A064720.P2121258883866844410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + A056926 (A005843 (n + 1) ^ 2).toNat

end

end A064720.P2121258883866844410

namespace A064720

/-- `A059995(n)+A056926(A005843(n+1)²)` -/
def P2121258883866844410.Spec : Prop :=
  ∀ n, P2121258883866844410.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P9248886752501737288

`∑[A000007(A067079(n))]+2*n+1`
-/

namespace A064720.P9248886752501737288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A067079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A064720.P9248886752501737288

namespace A064720

/-- `∑[A000007(A067079(n))]+2*n+1` -/
def P9248886752501737288.Spec : Prop :=
  ∀ n, P9248886752501737288.a n = A064720 (n + 1)

end A064720

/-! ## A064720.P16382622470250663883

`filter[A076992(2*(n+1)), A144608(#)]`
-/

namespace A064720.P16382622470250663883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076992 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144608 (f1 j).toNat = 1) n)

end

end A064720.P16382622470250663883

namespace A064720

/-- `filter[A076992(2*(n+1)), A144608(#)]` -/
def P16382622470250663883.Spec : Prop :=
  ∀ n, P16382622470250663883.a n = A064720 (n + 1)

end A064720

/-!
# A064722: a(1) = 0; for n >= 2, a(n) = n - (largest prime <= n).

The programs for A064722, the canonical program `A064722.P17255395012520951887` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064722 has offset 1).

The definition of A064722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064722.P17255395012520951887

`A175851(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064722

/-- `A175851(n+1)-1` -/
def P17255395012520951887.Spec : Prop :=
  ∀ n, P17255395012520951887.a n = A064722 (n + 1)

theorem P17255395012520951887.correct : P17255395012520951887.Spec := by
  intro n
  simp only [A064722, Nat.add_sub_cancel]

end A064722

/-! ## A064722.P10922374218909200958

`n%A070320(n+1)`
-/

namespace A064722.P10922374218909200958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A070320 (n + 1))

end

end A064722.P10922374218909200958

namespace A064722

/-- `n%A070320(n+1)` -/
def P10922374218909200958.Spec : Prop :=
  ∀ n, P10922374218909200958.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P16456549651953985519

`(n+1-A175856(n+1))/2`
-/

namespace A064722.P16456549651953985519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A175856 (n + 1) : ℚ) / 2

end

end A064722.P16456549651953985519

namespace A064722

/-- `(n+1-A175856(n+1))/2` -/
def P16456549651953985519.Spec : Prop :=
  ∀ n, P16456549651953985519.a n = (A064722 (n + 1) : ℚ)

end A064722

/-! ## A064722.P10100379254634696224

`A023443(A175851(n+1))`
-/

namespace A064722.P10100379254634696224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175851 (n + 1)).toNat

end

end A064722.P10100379254634696224

namespace A064722

/-- `A023443(A175851(n+1))` -/
def P10100379254634696224.Spec : Prop :=
  ∀ n, P10100379254634696224.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P1839260860717404192

`A003986(C(A175851(n+1), 2))`
-/

namespace A064722.P1839260860717404192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A175851 (n + 1)).toNat 2)

end

end A064722.P1839260860717404192

namespace A064722

/-- `A003986(C(A175851(n+1), 2))` -/
def P1839260860717404192.Spec : Prop :=
  ∀ n, P1839260860717404192.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P7697716292287007912

`A152920(C(A175851(n+1), 2))`
-/

namespace A064722.P7697716292287007912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (Nat.choose (A175851 (n + 1)).toNat 2)

end

end A064722.P7697716292287007912

namespace A064722

/-- `A152920(C(A175851(n+1), 2))` -/
def P7697716292287007912.Spec : Prop :=
  ∀ n, P7697716292287007912.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P16390825591969128894

`A028310(n)-A070320(n+1)`
-/

namespace A064722.P16390825591969128894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A070320 (n + 1)

end

end A064722.P16390825591969128894

namespace A064722

/-- `A028310(n)-A070320(n+1)` -/
def P16390825591969128894.Spec : Prop :=
  ∀ n, P16390825591969128894.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P89697955798192080

`n-A349127(A151800(n+1))`
-/

namespace A064722.P89697955798192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349127 (A151800 (n + 1)).toNat

end

end A064722.P89697955798192080

namespace A064722

/-- `n-A349127(A151800(n+1))` -/
def P89697955798192080.Spec : Prop :=
  ∀ n, P89697955798192080.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P10229023577549825358

`A151800(n)%A119257(n+1)`
-/

namespace A064722.P10229023577549825358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n) (A119257 (n + 1))

end

end A064722.P10229023577549825358

namespace A064722

/-- `A151800(n)%A119257(n+1)` -/
def P10229023577549825358.Spec : Prop :=
  ∀ n, P10229023577549825358.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P3828945993437594871

`1-A008578(A036234(n+1))+n`
-/

namespace A064722.P3828945993437594871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008578 (A036234 (n + 1)).toNat + (n : ℤ)

end

end A064722.P3828945993437594871

namespace A064722

/-- `1-A008578(A036234(n+1))+n` -/
def P3828945993437594871.Spec : Prop :=
  ∀ n, P3828945993437594871.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P12770822548567061344

`A070229(n+1)-A083718(n+1)`
-/

namespace A064722.P12770822548567061344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - A083718 (n + 1)

end

end A064722.P12770822548567061344

namespace A064722

/-- `A070229(n+1)-A083718(n+1)` -/
def P12770822548567061344.Spec : Prop :=
  ∀ n, P12770822548567061344.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P15110545558974262948

`A004526(1-A175856(n+1)+n)`
-/

namespace A064722.P15110545558974262948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - A175856 (n + 1) + (n : ℤ)).toNat

end

end A064722.P15110545558974262948

namespace A064722

/-- `A004526(1-A175856(n+1)+n)` -/
def P15110545558974262948.Spec : Prop :=
  ∀ n, P15110545558974262948.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P17326563515414432286

`2-A028815(A000720(n+1))+n`
-/

namespace A064722.P17326563515414432286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028815 (A000720 (n + 1)).toNat + (n : ℤ)

end

end A064722.P17326563515414432286

namespace A064722

/-- `2-A028815(A000720(n+1))+n` -/
def P17326563515414432286.Spec : Prop :=
  ∀ n, P17326563515414432286.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P8182129869552226379

`A004524(2-A175856(n+1)+n)`
-/

namespace A064722.P8182129869552226379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 - A175856 (n + 1) + (n : ℤ)).toNat

end

end A064722.P8182129869552226379

namespace A064722

/-- `A004524(2-A175856(n+1)+n)` -/
def P8182129869552226379.Spec : Prop :=
  ∀ n, P8182129869552226379.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P14397492541770132381

`n+1-A008578(∑[A010051(n+1)]+1)`
-/

namespace A064722.P14397492541770132381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A064722.P14397492541770132381

namespace A064722

/-- `n+1-A008578(∑[A010051(n+1)]+1)` -/
def P14397492541770132381.Spec : Prop :=
  ∀ n, P14397492541770132381.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P10831587028626241565

`A305805(A151800(n))+A175851(n+1)`
-/

namespace A064722.P10831587028626241565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A151800 n).toNat + A175851 (n + 1)

end

end A064722.P10831587028626241565

namespace A064722

/-- `A305805(A151800(n))+A175851(n+1)` -/
def P10831587028626241565.Spec : Prop :=
  ∀ n, P10831587028626241565.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P13057570322758520203

`n+2-A028815(A230980(n+1))`
-/

namespace A064722.P13057570322758520203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A028815 (A230980 (n + 1)).toNat

end

end A064722.P13057570322758520203

namespace A064722

/-- `n+2-A028815(A230980(n+1))` -/
def P13057570322758520203.Spec : Prop :=
  ∀ n, P13057570322758520203.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P763787224631310768

`A007920(A210882(n+2))`
-/

namespace A064722.P763787224631310768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A210882 (n + 2)).toNat

end

end A064722.P763787224631310768

namespace A064722

/-- `A007920(A210882(n+2))` -/
def P763787224631310768.Spec : Prop :=
  ∀ n, P763787224631310768.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P18195955524073869415

`1-A064989(A066169(n+1))+n`
-/

namespace A064722.P18195955524073869415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064989 (A066169 (n + 1)).toNat + (n : ℤ)

end

end A064722.P18195955524073869415

namespace A064722

/-- `1-A064989(A066169(n+1))+n` -/
def P18195955524073869415.Spec : Prop :=
  ∀ n, P18195955524073869415.a n = A064722 (n + 1)

end A064722

/-! ## A064722.P10226758557154049278

`A028310(n+1)-A064989(A151800(n+1))`
-/

namespace A064722.P10226758557154049278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) - A064989 (A151800 (n + 1)).toNat

end

end A064722.P10226758557154049278

namespace A064722

/-- `A028310(n+1)-A064989(A151800(n+1))` -/
def P10226758557154049278.Spec : Prop :=
  ∀ n, P10226758557154049278.a n = A064722 (n + 1)

end A064722

/-!
# A064723: (L(p)-1)/p where L() are the Lucas numbers (A000032) and p runs through the primes.

The programs for A064723, there is no canonical definition to state claims against.
-/

/-! ## A064723.P6925358408302164439

`A006206(A000040(n+1))`
-/

namespace A064723.P6925358408302164439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (A000040 (n + 1)).toNat

end

end A064723.P6925358408302164439

/-! ## A064723.P1013906523867843933

`A006206(p?[xor(1, n)])`
-/

namespace A064723.P1013906523867843933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064723.P1013906523867843933

/-! ## A064723.P3852602453732990692

`A032190(p?[xor(1, n)])`
-/

namespace A064723.P3852602453732990692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064723.P3852602453732990692

/-! ## A064723.P14199338822377734986

`A006206(p?[comp[n²]])`
-/

namespace A064723.P14199338822377734986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064723.P14199338822377734986

/-! ## A064723.P16531374102436404184

`A157162(p?[comp[n²]])`
-/

namespace A064723.P16531374102436404184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157162 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064723.P16531374102436404184

/-! ## A064723.P1966469908424108659

`A181885(p?[comp[n²]])`
-/

namespace A064723.P1966469908424108659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181885 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064723.P1966469908424108659

/-! ## A064723.P6506185972554653105

`A006206(A006005(n+1))`
-/

namespace A064723.P6506185972554653105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (A006005 (n + 1)).toNat

end

end A064723.P6506185972554653105

/-! ## A064723.P11920187766941168213

`A006206(record[A006530(n+2)])`
-/

namespace A064723.P11920187766941168213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064723.P11920187766941168213

/-! ## A064723.P17160328568950433178

`A032190(record[A006530(n+2)])`
-/

namespace A064723.P17160328568950433178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064723.P17160328568950433178

/-! ## A064723.P16904212260519425557

`A172128(A006093(n+1)+1)`
-/

namespace A064723.P16904212260519425557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172128 (A006093 (n + 1) + 1).toNat

end

end A064723.P16904212260519425557

/-!
# A064724: A Beatty sequence for 2^sqrt(2).

The programs for A064724, the canonical program `A064724.P6478327992548843633` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064724 has offset 1).

The definition of A064724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064724.P6478327992548843633

`floor((n+1)*2^sqrt(2)/(2^sqrt(2)-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064724

/-- `floor((n+1)*2^sqrt(2)/(2^sqrt(2)-1))` -/
def P6478327992548843633.Spec : Prop :=
  ∀ n, P6478327992548843633.a n = A064724 (n + 1)

theorem P6478327992548843633.correct : P6478327992548843633.Spec := by
  intro n
  simp only [A064724, Nat.add_sub_cancel]

end A064724

/-! ## A064724.P9984434923000697276

`and(comp[A038127(n)], -1)`
-/

namespace A064724.P9984434923000697276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A064724.P9984434923000697276

namespace A064724

/-- `and(comp[A038127(n)], -1)` -/
def P9984434923000697276.Spec : Prop :=
  ∀ n, P9984434923000697276.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P12592172185382716210

`comp[A038127(n)]%A008585(n+1)`
-/

namespace A064724.P12592172185382716210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A008585 (n + 1))

end

end A064724.P12592172185382716210

namespace A064724

/-- `comp[A038127(n)]%A008585(n+1)` -/
def P12592172185382716210.Spec : Prop :=
  ∀ n, P12592172185382716210.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P13444385204433485680

`A325975(A141964(n+1))+A047488(n+1)`
-/

namespace A064724.P13444385204433485680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325975 (A141964 (n + 1)).toNat + A047488 (n + 1)

end

end A064724.P13444385204433485680

namespace A064724

/-- `A325975(A141964(n+1))+A047488(n+1)` -/
def P13444385204433485680.Spec : Prop :=
  ∀ n, P13444385204433485680.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P5359932860858415587

`A090223(2*n+2)+A011558(A013594(n+1))`
-/

namespace A064724.P5359932860858415587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (2 * n + 2) + A011558 (A013594 (n + 1)).toNat

end

end A064724.P5359932860858415587

namespace A064724

/-- `A090223(2*n+2)+A011558(A013594(n+1))` -/
def P5359932860858415587.Spec : Prop :=
  ∀ n, P5359932860858415587.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P933466393487501799

`A057354(4*(n+1))%A069106(3*n+1)`
-/

namespace A064724.P933466393487501799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057354 (4 * (n + 1))) (A069106 (3 * n + 1))

end

end A064724.P933466393487501799

namespace A064724

/-- `A057354(4*(n+1))%A069106(3*n+1)` -/
def P933466393487501799.Spec : Prop :=
  ∀ n, P933466393487501799.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P18096538908645809397

`∑[A000032(and(A004119(n), A052527(n)))]`
-/

namespace A064724.P18096538908645809397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (A004119 n) (A052527 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064724.P18096538908645809397

namespace A064724

/-- `∑[A000032(and(A004119(n), A052527(n)))]` -/
def P18096538908645809397.Spec : Prop :=
  ∀ n, P18096538908645809397.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P4379133098583089732

`∑[gcd(2, A300500(n+2))]`
-/

namespace A064724.P4379133098583089732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A300500 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064724.P4379133098583089732

namespace A064724

/-- `∑[gcd(2, A300500(n+2))]` -/
def P4379133098583089732.Spec : Prop :=
  ∀ n, (P4379133098583089732.a n : ℤ) = A064724 (n + 1)

end A064724

/-! ## A064724.P14395097488345295924

`∑[A000032(and(A005183(n), A052527(n)))]`
-/

namespace A064724.P14395097488345295924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (A005183 n) (A052527 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064724.P14395097488345295924

namespace A064724

/-- `∑[A000032(and(A005183(n), A052527(n)))]` -/
def P14395097488345295924.Spec : Prop :=
  ∀ n, P14395097488345295924.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P798026425644086109

`∑[A000032(and(A048474(n), A052527(n)))]`
-/

namespace A064724.P798026425644086109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (A048474 n) (A052527 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064724.P798026425644086109

namespace A064724

/-- `∑[A000032(and(A048474(n), A052527(n)))]` -/
def P798026425644086109.Spec : Prop :=
  ∀ n, P798026425644086109.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P2417955176810897056

`A244230(A244155(2*n+1))`
-/

namespace A064724.P2417955176810897056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A244155 (2 * n + 1)).toNat

end

end A064724.P2417955176810897056

namespace A064724

/-- `A244230(A244155(2*n+1))` -/
def P2417955176810897056.Spec : Prop :=
  ∀ n, P2417955176810897056.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P17258783167907215658

`record[A000045(n)%3+n+1]`
-/

namespace A064724.P17258783167907215658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 3 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064724.P17258783167907215658

namespace A064724

/-- `record[A000045(n)%3+n+1]` -/
def P17258783167907215658.Spec : Prop :=
  ∀ n, P17258783167907215658.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P2062312088148629791

`record[A000032(n+1)%3+n]`
-/

namespace A064724.P2062312088148629791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (n + 1)) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064724.P2062312088148629791

namespace A064724

/-- `record[A000032(n+1)%3+n]` -/
def P2062312088148629791.Spec : Prop :=
  ∀ n, P2062312088148629791.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P15902179730707498962

`lt[1, A114122(n)²]-2`
-/

namespace A064724.P15902179730707498962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114122 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A064724.P15902179730707498962

namespace A064724

/-- `lt[1, A114122(n)²]-2` -/
def P15902179730707498962.Spec : Prop :=
  ∀ n, P15902179730707498962.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P2962439594409586235

`ceil(log2(A018160(2*n+1)))`
-/

namespace A064724.P2962439594409586235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A018160 (2 * n + 1) : ℝ)⌉

end

end A064724.P2962439594409586235

namespace A064724

/-- `ceil(log2(A018160(2*n+1)))` -/
def P2962439594409586235.Spec : Prop :=
  ∀ n, P2962439594409586235.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P7667586867318620861

`ceil(log2(A018161(2*n+1)))`
-/

namespace A064724.P7667586867318620861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A018161 (2 * n + 1) : ℝ)⌉

end

end A064724.P7667586867318620861

namespace A064724

/-- `ceil(log2(A018161(2*n+1)))` -/
def P7667586867318620861.Spec : Prop :=
  ∀ n, P7667586867318620861.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P797101896405410765

`∑[2-and(1, A113436(n))]`
-/

namespace A064724.P797101896405410765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A113436 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064724.P797101896405410765

namespace A064724

/-- `∑[2-and(1, A113436(n))]` -/
def P797101896405410765.Spec : Prop :=
  ∀ n, P797101896405410765.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P11180226774236302154

`2*n+1-A181578(A027868(2*n+1))`
-/

namespace A064724.P11180226774236302154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A181578 (A027868 (2 * n + 1)).toNat

end

end A064724.P11180226774236302154

namespace A064724

/-- `2*n+1-A181578(A027868(2*n+1))` -/
def P11180226774236302154.Spec : Prop :=
  ∀ n, P11180226774236302154.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P13124370653492402966

`ceil(log(A018006(2*n+1)))`
-/

namespace A064724.P13124370653492402966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A018006 (2 * n + 1) : ℝ)⌉

end

end A064724.P13124370653492402966

namespace A064724

/-- `ceil(log(A018006(2*n+1)))` -/
def P13124370653492402966.Spec : Prop :=
  ∀ n, P13124370653492402966.a n = A064724 (n + 1)

end A064724

/-! ## A064724.P16892224444260187606

`ceil(log(A018007(2*n+1)))`
-/

namespace A064724.P16892224444260187606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A018007 (2 * n + 1) : ℝ)⌉

end

end A064724.P16892224444260187606

namespace A064724

/-- `ceil(log(A018007(2*n+1)))` -/
def P16892224444260187606.Spec : Prop :=
  ∀ n, P16892224444260187606.a n = A064724 (n + 1)

end A064724

/-!
# A064725: Sum of primes dividing Fibonacci(n) (with repetition).

The programs for A064725, there is no canonical definition to state claims against.
-/

/-! ## A064725.P12797785995084967279

`∑{d}[n+1, A001414(A061446(#))]`
-/

namespace A064725.P12797785995084967279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001414 (A061446 d).toNat

end

end A064725.P12797785995084967279

/-! ## A064725.P15562817929528610736

`A001414(A061446(n+1))+A001414(A105602(n+1))`
-/

namespace A064725.P15562817929528610736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A061446 (n + 1)).toNat + A001414 (A105602 (n + 1)).toNat

end

end A064725.P15562817929528610736

/-! ## A064725.P17537079838311620509

`A001414(A105800(n+1))+A001414(A280690(n+1))`
-/

namespace A064725.P17537079838311620509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A105800 (n + 1)).toNat + A001414 (A280690 (n + 1)).toNat

end

end A064725.P17537079838311620509

/-! ## A064725.P1504951841834709838

`A001414(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A064725.P1504951841834709838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A064725.P1504951841834709838

/-! ## A064725.P15476697753816736224

`A001414(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A064725.P15476697753816736224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A064725.P15476697753816736224

/-!
# A064726: Sum of primes dividing the partitions of n into distinct parts (with repetition).

The programs for A064726, there is no canonical definition to state claims against.
-/

/-! ## A064726.P14211502072802349928

`A001414(A000009(n))`
-/

namespace A064726.P14211502072802349928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000009 n).toNat

end

end A064726.P14211502072802349928

/-! ## A064726.P12095942907486654188

`A001414(abs(A081360(n)))`
-/

namespace A064726.P12095942907486654188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 |A081360 n|.toNat

end

end A064726.P12095942907486654188

/-! ## A064726.P9520939668284629447

`A001414(∑[A087897(n)])`
-/

namespace A064726.P9520939668284629447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064726.P9520939668284629447

/-! ## A064726.P569531436681778131

`A001414(A264405(∑[n]))`
-/

namespace A064726.P569531436681778131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A264405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064726.P569531436681778131

/-! ## A064726.P4209437565706034501

`A001414(A284593(∑[n]))`
-/

namespace A064726.P4209437565706034501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A284593 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064726.P4209437565706034501

/-! ## A064726.P9503544182398931973

`A001414(A111133(n)+1)`
-/

namespace A064726.P9503544182398931973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A111133 n + 1).toNat

end

end A064726.P9503544182398931973

/-! ## A064726.P6743804171504279355

`A001414(A035457(2*n))`
-/

namespace A064726.P6743804171504279355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A035457 (2 * n)).toNat

end

end A064726.P6743804171504279355

/-! ## A064726.P12685819136438841823

`A001414(A000041(n)-A047967(n))`
-/

namespace A064726.P12685819136438841823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000041 n - A047967 n).toNat

end

end A064726.P12685819136438841823

/-! ## A064726.P13095018566884057491

`A001414(A054242(∑[n]))`
-/

namespace A064726.P13095018566884057491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A054242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064726.P13095018566884057491

/-! ## A064726.P2522327138173252492

`∑{d}[A000009(n), A020639(#)%A014963(#)²]`
-/

namespace A064726.P2522327138173252492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A020639 d) (A014963 d ^ 2)

end

end A064726.P2522327138173252492

/-!
# A064727: Number of pairs x,y such that 0 < x <= y < n and x+y = n and x*y = k*n for some k.

The programs for A064727, the canonical program `A064727.P12752756130573243475` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064727 has offset 1).

The definition of A064727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064727.P12752756130573243475

`floor(∏{p}[n+1, #^val(n+1, #²)]/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064727

/-- `floor(∏{p}[n+1, #^val(n+1, #²)]/2)` -/
def P12752756130573243475.Spec : Prop :=
  ∀ n, P12752756130573243475.a n = A064727 (n + 1)

theorem P12752756130573243475.correct : P12752756130573243475.Spec := by
  intro n
  simp only [A064727, Nat.add_sub_cancel]

end A064727

/-! ## A064727.P5381450970768006117

`floor(A000188(n+1)/2)`
-/

namespace A064727.P5381450970768006117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (n + 1) : ℚ) / 2⌋

end

end A064727.P5381450970768006117

namespace A064727

/-- `floor(A000188(n+1)/2)` -/
def P5381450970768006117.Spec : Prop :=
  ∀ n, P5381450970768006117.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P9812975824989888493

`ceil(A057918(n+1)/2)`
-/

namespace A064727.P9812975824989888493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057918 (n + 1) : ℚ) / 2⌉

end

end A064727.P9812975824989888493

namespace A064727

/-- `ceil(A057918(n+1)/2)` -/
def P9812975824989888493.Spec : Prop :=
  ∀ n, P9812975824989888493.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P15655116480617045505

`round(n/(2*A019554(n+1)))`
-/

namespace A064727.P15655116480617045505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (2 * A019554 (n + 1) : ℚ))

end

end A064727.P15655116480617045505

namespace A064727

/-- `round(n/(2*A019554(n+1)))` -/
def P15655116480617045505.Spec : Prop :=
  ∀ n, P15655116480617045505.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P18090516669940413564

`floor(sqrt((n+1)/A007913(n+1))/2)`
-/

namespace A064727.P18090516669940413564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ) / 2⌋

end

end A064727.P18090516669940413564

namespace A064727

/-- `floor(sqrt((n+1)/A007913(n+1))/2)` -/
def P18090516669940413564.Spec : Prop :=
  ∀ n, P18090516669940413564.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P12104475549179029849

`A004526(A000188(n+1))`
-/

namespace A064727.P12104475549179029849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000188 (n + 1)).toNat

end

end A064727.P12104475549179029849

namespace A064727

/-- `A004526(A000188(n+1))` -/
def P12104475549179029849.Spec : Prop :=
  ∀ n, P12104475549179029849.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P4098397239736050345

`A057554(A008833(n+1))`
-/

namespace A064727.P4098397239736050345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A008833 (n + 1)).toNat

end

end A064727.P4098397239736050345

namespace A064727

/-- `A057554(A008833(n+1))` -/
def P4098397239736050345.Spec : Prop :=
  ∀ n, P4098397239736050345.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P8441283740909372439

`A337101(A026741(n+1))`
-/

namespace A064727.P8441283740909372439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A026741 (n + 1)).toNat

end

end A064727.P8441283740909372439

namespace A064727

/-- `A337101(A026741(n+1))` -/
def P8441283740909372439.Spec : Prop :=
  ∀ n, P8441283740909372439.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P5417121202090749023

`A337101(A214682(n+1))`
-/

namespace A064727.P5417121202090749023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A214682 (n + 1)).toNat

end

end A064727.P5417121202090749023

namespace A064727

/-- `A337101(A214682(n+1))` -/
def P5417121202090749023.Spec : Prop :=
  ∀ n, P5417121202090749023.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P11162928286583895826

`A057554(A000188(n+1)²)`
-/

namespace A064727.P11162928286583895826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000188 (n + 1) ^ 2).toNat

end

end A064727.P11162928286583895826

namespace A064727

/-- `A057554(A000188(n+1)²)` -/
def P11162928286583895826.Spec : Prop :=
  ∀ n, P11162928286583895826.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P11214150957416171703

`A004526(A057918(n+1)+1)`
-/

namespace A064727.P11214150957416171703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (n + 1) + 1).toNat

end

end A064727.P11214150957416171703

namespace A064727

/-- `A004526(A057918(n+1)+1)` -/
def P11214150957416171703.Spec : Prop :=
  ∀ n, P11214150957416171703.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P6421766985361478710

`A002265(2*A000188(n+1))`
-/

namespace A064727.P6421766985361478710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A000188 (n + 1)).toNat

end

end A064727.P6421766985361478710

namespace A064727

/-- `A002265(2*A000188(n+1))` -/
def P6421766985361478710.Spec : Prop :=
  ∀ n, P6421766985361478710.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P16759823031752779747

`A110655(2*A057918(n+1))`
-/

namespace A064727.P16759823031752779747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A057918 (n + 1)).toNat

end

end A064727.P16759823031752779747

namespace A064727

/-- `A110655(2*A057918(n+1))` -/
def P16759823031752779747.Spec : Prop :=
  ∀ n, P16759823031752779747.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P1986633307915705706

`A004526(A337101(2*(n+1)))`
-/

namespace A064727.P1986633307915705706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A337101 (2 * (n + 1))).toNat

end

end A064727.P1986633307915705706

namespace A064727

/-- `A004526(A337101(2*(n+1)))` -/
def P1986633307915705706.Spec : Prop :=
  ∀ n, P1986633307915705706.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P11632278496334503920

`A337101(A337101(2*(n+1))²)`
-/

namespace A064727.P11632278496334503920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A337101 (2 * (n + 1)) ^ 2).toNat

end

end A064727.P11632278496334503920

namespace A064727

/-- `A337101(A337101(2*(n+1))²)` -/
def P11632278496334503920.Spec : Prop :=
  ∀ n, P11632278496334503920.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P13475373416627125607

`A008619(A000188(n+1)+2)-2`
-/

namespace A064727.P13475373416627125607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000188 (n + 1) + 2).toNat - 2

end

end A064727.P13475373416627125607

namespace A064727

/-- `A008619(A000188(n+1)+2)-2` -/
def P13475373416627125607.Spec : Prop :=
  ∀ n, P13475373416627125607.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P13409878886533275484

`A008624(2*A000188(n+1)-1)`
-/

namespace A064727.P13409878886533275484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A000188 (n + 1) - 1).toNat

end

end A064727.P13409878886533275484

namespace A064727

/-- `A008624(2*A000188(n+1)-1)` -/
def P13409878886533275484.Spec : Prop :=
  ∀ n, P13409878886533275484.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P13668822160790332270

`A110654(A337101(2*(n+1))-1)`
-/

namespace A064727.P13668822160790332270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A337101 (2 * (n + 1)) - 1).toNat

end

end A064727.P13668822160790332270

namespace A064727

/-- `A110654(A337101(2*(n+1))-1)` -/
def P13668822160790332270.Spec : Prop :=
  ∀ n, P13668822160790332270.a n = A064727 (n + 1)

end A064727

/-! ## A064727.P4008787799126823537

`A057554((n+1)/A007913(n+1))`
-/

namespace A064727.P4008787799126823537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A064727.P4008787799126823537

namespace A064727

/-- `A057554((n+1)/A007913(n+1))` -/
def P4008787799126823537.Spec : Prop :=
  ∀ n, P4008787799126823537.a n = A064727 (n + 1)

end A064727

/-!
# A064728: Solutions to A064494(n) = 2(n+1).

The programs for A064728, there is no canonical definition to state claims against.
-/

/-! ## A064728.P7069460512506937498

`eq[2*n+3, A327093(n+1)]+1`
-/

namespace A064728.P7069460512506937498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064728.P7069460512506937498

/-! ## A064728.P6523656251512279707

`eq[2*n+1, A327093(A028310(n))]`
-/

namespace A064728.P6523656251512279707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064728.P6523656251512279707

/-! ## A064728.P5593561471826931018

`A020725(eq[2*n+3, A327093(n+1)])`
-/

namespace A064728.P5593561471826931018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064728.P5593561471826931018

/-! ## A064728.P15610143783787534750

`eq[A005408(n), A327093(A008574(n)-3*n)]`
-/

namespace A064728.P15610143783787534750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (A008574 n - (3 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064728.P15610143783787534750

/-! ## A064728.P11525208014882866562

`eq[2*n+1, A327093(A123108(2*n))]`
-/

namespace A064728.P11525208014882866562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064728.P11525208014882866562

/-!
# A064729: Numbers k such that k and k+1 have the same sum of unitary and nonunitary divisors.

The programs for A064729, there is no canonical definition to state claims against.
-/

/-! ## A064729.P1392893959194706309

`∩[A002961(n+1), A064125(n+1)]`
-/

namespace A064729.P1392893959194706309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P1392893959194706309

/-! ## A064729.P135379154765341287

`∩[A002961(n+1), A291043(n+1)]`
-/

namespace A064729.P135379154765341287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P135379154765341287

/-! ## A064729.P2001152955858354238

`∩[A058072(n+1), A291043(n+1)]`
-/

namespace A064729.P2001152955858354238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P2001152955858354238

/-! ## A064729.P12130690734436267107

`∩[A058073(n+1), A291043(n+1)]`
-/

namespace A064729.P12130690734436267107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P12130690734436267107

/-! ## A064729.P5120472032738271722

`∩[A002961(n+1), A360527(n+1)]`
-/

namespace A064729.P5120472032738271722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P5120472032738271722

/-! ## A064729.P9372295748514458539

`∩[A293183(n+1), A360527(n+1)]`
-/

namespace A064729.P9372295748514458539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P9372295748514458539

/-! ## A064729.P15422356744827967322

`∩[A002961(n+1), A379032(n+1)]`
-/

namespace A064729.P15422356744827967322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P15422356744827967322

/-! ## A064729.P3080414665000243411

`∩[A064125(n+1), A360527(n+1)]`
-/

namespace A064729.P3080414665000243411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P3080414665000243411

/-! ## A064729.P1807440634562019685

`∩[A058072(n+1), A360527(n+1)]`
-/

namespace A064729.P1807440634562019685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P1807440634562019685

/-! ## A064729.P335844972518995663

`∩[A058073(n+1), A360527(n+1)]`
-/

namespace A064729.P335844972518995663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P335844972518995663

/-! ## A064729.P7861798982258401890

`∩[A002961(n+1), A063964(n+1)]`
-/

namespace A064729.P7861798982258401890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P7861798982258401890

/-! ## A064729.P1568629076811628782

`∩[A063964(n+1), A223136(n+1)]`
-/

namespace A064729.P1568629076811628782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P1568629076811628782

/-! ## A064729.P8500721239494220454

`∩[A002961(n+1), A349224(n+1)]`
-/

namespace A064729.P8500721239494220454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P8500721239494220454

/-! ## A064729.P9471002014575891502

`∩[A063964(n+1), A333949(n+1)]`
-/

namespace A064729.P9471002014575891502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P9471002014575891502

/-! ## A064729.P4338300633248118029

`∩[A223136(n+1), A349224(n+1)]`
-/

namespace A064729.P4338300633248118029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P4338300633248118029

/-! ## A064729.P8461730462484414013

`∩[A327875(n+1), A349224(n+1)]`
-/

namespace A064729.P8461730462484414013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P8461730462484414013

/-! ## A064729.P6111425742290573573

`∩[A058072(n+1), A379032(n+1)]`
-/

namespace A064729.P6111425742290573573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P6111425742290573573

/-! ## A064729.P5420945277185436616

`∩[A058073(n+1), A379032(n+1)]`
-/

namespace A064729.P5420945277185436616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P5420945277185436616

/-! ## A064729.P681254631759251100

`∩[A063964(n+1), A293183(n+1)]`
-/

namespace A064729.P681254631759251100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P681254631759251100

/-! ## A064729.P13208583162404574051

`∩[A293183(n+1), A333949(n+1)]`
-/

namespace A064729.P13208583162404574051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064729.P13208583162404574051

/-!
# A064731: Number of connected integral graphs on n vertices.

The programs for A064731, there is no canonical definition to state claims against.
-/

/-! ## A064731.P880627652847352538

`A077027(n+1)-A287154(n+1)`
-/

namespace A064731.P880627652847352538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (n + 1) - A287154 (n + 1)

end

end A064731.P880627652847352538

/-! ## A064731.P5281751272437060723

`A001349(n+1)-A241842(n+1)`
-/

namespace A064731.P5281751272437060723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241842 (n + 1)

end

end A064731.P5281751272437060723

/-! ## A064731.P5538574124123241938

`A201922(A000124(n))-A241842(n+1)`
-/

namespace A064731.P5538574124123241938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A241842 (n + 1)

end

end A064731.P5538574124123241938

/-! ## A064731.P18276641261925737336

`A304311(A000096(n+1))-A241842(n+1)`
-/

namespace A064731.P18276641261925737336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000096 (n + 1)).toNat - A241842 (n + 1)

end

end A064731.P18276641261925737336

/-! ## A064731.P12718758872341070528

`A000088(n+1)-(A241842(n+1)+A000719(n+1))`
-/

namespace A064731.P12718758872341070528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A241842 (n + 1) + A000719 (n + 1))

end

end A064731.P12718758872341070528

/-!
# A064732: Number of labeled Hugenholtz diagrams with n nodes.

The programs for A064732, there is no canonical definition to state claims against.
-/

/-! ## A064732.P1019796979264054640

`∑{d}[A033950(A367904(n)), #]`
-/

namespace A064732.P1019796979264054640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (A367904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A064732.P1019796979264054640

/-!
# A064733: Final digits of A005165(2n) for large n, read from right.

The programs for A064733, there is no canonical definition to state claims against.
-/

/-! ## A064733.P1438432762979714652

`floor(acot(n)+9-A064734(n))`
-/

namespace A064733.P1438432762979714652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (9 - A064734 n : ℝ)⌋

end

end A064733.P1438432762979714652

/-! ## A064733.P9841093119641045614

`A000007(n)+9-A064734(n)`
-/

namespace A064733.P9841093119641045614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A064734 n)

end

end A064733.P9841093119641045614

/-! ## A064733.P10479417138160793649

`8-(A064734(n)-A054977(n))`
-/

namespace A064733.P10479417138160793649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (A064734 n - A054977 n)

end

end A064733.P10479417138160793649

/-! ## A064733.P7345890823557913395

`9-A057427(n)*A064734(n)`
-/

namespace A064733.P7345890823557913395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A057427 n * A064734 n

end

end A064733.P7345890823557913395

/-! ## A064733.P17796856511670965725

`9-lcm(A062157(n), A064734(n))`
-/

namespace A064733.P17796856511670965725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Int.lcm (A062157 n) (A064734 n) : ℤ)

end

end A064733.P17796856511670965725

/-! ## A064733.P14726908969671919577

`or(9-A064734(n), char[A002279(n)])`
-/

namespace A064733.P14726908969671919577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A064734 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064733.P14726908969671919577

/-! ## A064733.P9108955386881135876

`A036987(2*n)+9-A064734(n)`
-/

namespace A064733.P9108955386881135876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (9 - A064734 n)

end

end A064733.P9108955386881135876

/-! ## A064733.P7952965103679532185

`A000038(n)/2+9-A064734(n)`
-/

namespace A064733.P7952965103679532185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 + (9 - A064734 n : ℚ)

end

end A064733.P7952965103679532185

/-! ## A064733.P5511197837972079690

`or(9-A064734(n), A000007(2*n))`
-/

namespace A064733.P5511197837972079690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A064734 n) (A000007 (2 * n))

end

end A064733.P5511197837972079690

/-! ## A064733.P438449547065055344

`∏{d}[n, A001222(#)]+9-A064734(n)`
-/

namespace A064733.P438449547065055344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001222 d + (9 - A064734 n)

end

end A064733.P438449547065055344

/-! ## A064733.P5564112487845887343

`C(2, A000040(n+1))+9-A064734(n)`
-/

namespace A064733.P5564112487845887343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000040 (n + 1)).toNat : ℤ) + (9 - A064734 n)

end

end A064733.P5564112487845887343

/-! ## A064733.P8705303879625764479

`round(acot(A020639(n+1))+9-A064734(n))`
-/

namespace A064733.P8705303879625764479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A020639 (n + 1) : ℝ) + (9 - A064734 n : ℝ))

end

end A064733.P8705303879625764479

/-! ## A064733.P578262874502312512

`A025016(n)+A065356(n)-A064734(n)`
-/

namespace A064733.P578262874502312512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n + (A065356 n - A064734 n)

end

end A064733.P578262874502312512

/-! ## A064733.P3001752493463501042

`A218031(2*n)+9-A064734(n)`
-/

namespace A064733.P3001752493463501042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 (2 * n) + (9 - A064734 n)

end

end A064733.P3001752493463501042

/-! ## A064733.P12372943735530710373

`A008683((n+1)²)+9-A064734(n)`
-/

namespace A064733.P12372943735530710373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A064734 n)

end

end A064733.P12372943735530710373

/-!
# A064734: Final digits of A005165(2n+1) for large n, read from right.

The programs for A064734, there is no canonical definition to state claims against.
-/

/-! ## A064734.P16498009945655494304

`floor(acot(n))+9-A064733(n)`
-/

namespace A064734.P16498009945655494304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 - A064733 n)

end

end A064734.P16498009945655494304

/-! ## A064734.P954805833097067978

`A000007(n)+9-A064733(n)`
-/

namespace A064734.P954805833097067978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A064733 n)

end

end A064734.P954805833097067978

/-! ## A064734.P1855888522654919537

`(9-A064733(n))^A019428(2*n)`
-/

namespace A064734.P1855888522654919537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A064733 n : ℚ) ^ (A019428 (2 * n) : ℤ)

end

end A064734.P1855888522654919537

/-! ## A064734.P17612988971200939185

`or(A057428(n)+1, 9-A064733(n))`
-/

namespace A064734.P17612988971200939185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + 1) (9 - A064733 n)

end

end A064734.P17612988971200939185

/-! ## A064734.P7828017485184763462

`9-A064733(n)+A028310(n)-n`
-/

namespace A064734.P7828017485184763462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A064733 n + (A028310 n - (n : ℤ))

end

end A064734.P7828017485184763462

/-! ## A064734.P15328745488997312635

`A000010(n+2)%2+9-A064733(n)`
-/

namespace A064734.P15328745488997312635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 + (9 - A064733 n)

end

end A064734.P15328745488997312635

/-! ## A064734.P3515408406838398850

`val(A000040(n+1), 2)+9-A064733(n)`
-/

namespace A064734.P3515408406838398850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (9 - A064733 n)

end

end A064734.P3515408406838398850

/-! ## A064734.P1102342687764396277

`A000045(C(2, n+2))+9-A064733(n)`
-/

namespace A064734.P1102342687764396277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (9 - A064733 n)

end

end A064734.P1102342687764396277

/-! ## A064734.P9558664588295388240

`log2(a(A008683(4*n)))+9-A064733(n)` with `a(0)=1`
-/

namespace A064734.P9558664588295388240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (a (A008683 (4 * n)).toNat) + (9 - A064733 n : ℝ)

end

end A064734.P9558664588295388240

/-! ## A064734.P11338829954520517958

`(9-A064733(n))^A055396(A004277(n))`
-/

namespace A064734.P11338829954520517958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A064733 n : ℚ) ^ (A055396 (A004277 n).toNat : ℤ)

end

end A064734.P11338829954520517958

/-! ## A064734.P9024386529752364330

`A025016(n)+A065356(n)-A064733(n)`
-/

namespace A064734.P9024386529752364330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025016 n + (A065356 n - A064733 n)

end

end A064734.P9024386529752364330

/-! ## A064734.P9709289897253590336

`9-A064733(n)-A008683(A002246(n+1))`
-/

namespace A064734.P9709289897253590336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A064733 n - A008683 (A002246 (n + 1)).toNat

end

end A064734.P9709289897253590336

/-! ## A064734.P5987422005213053090

`floor(1/A020639(A001316(n))+9-A064733(n))`
-/

namespace A064734.P5987422005213053090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A020639 (A001316 n).toNat : ℚ) + (9 - A064733 n : ℚ)⌋

end

end A064734.P5987422005213053090

/-! ## A064734.P17575284715764426652

`A008683((n+1)²)+9-A064733(n)`
-/

namespace A064734.P17575284715764426652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A064733 n)

end

end A064734.P17575284715764426652

/-! ## A064734.P15627734421608911887

`A059841(A049691(n))+9-A064733(n)`
-/

namespace A064734.P15627734421608911887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A049691 n).toNat + (9 - A064733 n)

end

end A064734.P15627734421608911887

/-!
# A064735: Next prime containing prime(n) in decimal notation.

The programs for A064735, there is no canonical definition to state claims against.
-/

/-! ## A064735.P403583386648463909

`A252629(n+1)+Δ[A007504(n)]`
-/

namespace A064735.P403583386648463909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064735.P403583386648463909

/-! ## A064735.P12454420183645670296

`A252629(n+1)+A000040(n+1)`
-/

namespace A064735.P12454420183645670296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + A000040 (n + 1)

end

end A064735.P12454420183645670296

/-! ## A064735.P16014338014179407300

`A252629(n+1)+A008578(n+2)`
-/

namespace A064735.P16014338014179407300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + A008578 (n + 2)

end

end A064735.P16014338014179407300

/-! ## A064735.P15591045575414199682

`A252629(n+1)+record[A020482(n+2)]`
-/

namespace A064735.P15591045575414199682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064735.P15591045575414199682

/-! ## A064735.P2007831458786534678

`A252629(n+1)+p?[A064429(n)]`
-/

namespace A064735.P2007831458786534678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064735.P2007831458786534678

/-! ## A064735.P7144091276536515996

`A252629(n+1)+record[A123528(n+2)]`
-/

namespace A064735.P7144091276536515996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252629 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064735.P7144091276536515996

/-! ## A064735.P9060541732147453197

`A381606(A000040(n+1))`
-/

namespace A064735.P9060541732147453197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381606 (A000040 (n + 1)).toNat

end

end A064735.P9060541732147453197

/-! ## A064735.P9404989307205774137

`A381606(A008578(n+2))`
-/

namespace A064735.P9404989307205774137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381606 (A008578 (n + 2)).toNat

end

end A064735.P9404989307205774137

/-! ## A064735.P6350991003890290899

`A381606(A182986(n+2))`
-/

namespace A064735.P6350991003890290899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381606 (A182986 (n + 2)).toNat

end

end A064735.P6350991003890290899

/-! ## A064735.P9105492801820563179

`A000040(A389647(n+1))`
-/

namespace A064735.P9105492801820563179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A389647 (n + 1)).toNat

end

end A064735.P9105492801820563179

/-! ## A064735.P579161794645778565

`A000265(A252629(n+1)+eq[1, A001222(n+1)]+1)`
-/

namespace A064735.P579161794645778565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252629 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 1).toNat

end

end A064735.P579161794645778565

/-! ## A064735.P3629764687447634090

`A000265(A252629(n+1)+eq[2, A000005(n+1)]+1)`
-/

namespace A064735.P3629764687447634090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252629 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 1).toNat

end

end A064735.P3629764687447634090

/-!
# A064736: a(1)=1, a(2)=2; for n>0, a(2*n+2) = smallest number missing from {a(1), ... ,a(2*n)}, and a(2*n+1) = a(2*n)*a(2*n+2).

The programs for A064736, there is no canonical definition to state claims against.
-/

/-! ## A064736.P9394384653631959581

`A207901(lt[A096111(n), 6])`
-/

namespace A064736.P9394384653631959581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064736.P9394384653631959581

/-! ## A064736.P10544626597746514416

`A176352(n+1)+A151756(A057977(n))`
-/

namespace A064736.P10544626597746514416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176352 (n + 1) + A151756 (A057977 n).toNat

end

end A064736.P10544626597746514416

/-! ## A064736.P13389269504837094933

`A176352(n+1)+A068932(A290995(n))`
-/

namespace A064736.P13389269504837094933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176352 (n + 1) + A068932 (A290995 n).toNat

end

end A064736.P13389269504837094933

/-! ## A064736.P2834714308103162925

`A309551(A276535(n))+A176352(n+1)`
-/

namespace A064736.P2834714308103162925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309551 (A276535 n).toNat + A176352 (n + 1)

end

end A064736.P2834714308103162925

/-! ## A064736.P14500531088284698561

`A309551(A309861(n))+A176352(n+1)`
-/

namespace A064736.P14500531088284698561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309551 (A309861 n).toNat + A176352 (n + 1)

end

end A064736.P14500531088284698561

/-!
# A064739: Primes p such that Fibonacci(p)-1 is divisible by p.

The programs for A064739, the canonical program `A064739.P7248377334255330722` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064739 has offset 1).

The definition of A064739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064739.P7248377334255330722

`p?[a(n-2)+5]` with `a(0)=2, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064739

/-- `p?[a(n-2)+5]` -/
def P7248377334255330722.Spec : Prop :=
  ∀ n, (P7248377334255330722.a n : ℤ) = A064739 (n + 1)

theorem P7248377334255330722.correct : P7248377334255330722.Spec := by
  intro n
  simp only [A064739, Nat.add_sub_cancel]

end A064739

/-! ## A064739.P401609363842671359

`p?[5*n-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A064739.P401609363842671359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064739.P401609363842671359

namespace A064739

/-- `p?[5*n-a(n-1)]` -/
def P401609363842671359.Spec : Prop :=
  ∀ n, P401609363842671359.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P6441097983734757952

`A038872(n+1)%(7*a(n-1))` with `a(0)=2`
-/

namespace A064739.P6441097983734757952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A038872 (n + 1)) (7 * a (n - 1))

end

end A064739.P6441097983734757952

namespace A064739

/-- `A038872(n+1)%(7*a(n-1))` -/
def P6441097983734757952.Spec : Prop :=
  ∀ n, P6441097983734757952.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P12078393513185152882

`A045468(C(n, a(n-1)+3)+n)` with `a(0)=2`
-/

namespace A064739.P12078393513185152882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A045468 (Nat.choose n (a (n - 1) + 3).toNat + n)

end

end A064739.P12078393513185152882

namespace A064739

/-- `A045468(C(n, a(n-1)+3)+n)` -/
def P12078393513185152882.Spec : Prop :=
  ∀ n, P12078393513185152882.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P8743014371111404570

`A038872(n+1)%A001539(n)`
-/

namespace A064739.P8743014371111404570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038872 (n + 1)) (A001539 n)

end

end A064739.P8743014371111404570

namespace A064739

/-- `A038872(n+1)%A001539(n)` -/
def P8743014371111404570.Spec : Prop :=
  ∀ n, P8743014371111404570.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P11761870414375106116

`p?[A076518(n+1)]`
-/

namespace A064739.P11761870414375106116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064739.P11761870414375106116

namespace A064739

/-- `p?[A076518(n+1)]` -/
def P11761870414375106116.Spec : Prop :=
  ∀ n, P11761870414375106116.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P5067175260537088513

`p?[5*round(n/5)+n]`
-/

namespace A064739.P5067175260537088513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((n : ℚ) / 5) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064739.P5067175260537088513

namespace A064739

/-- `p?[5*round(n/5)+n]` -/
def P5067175260537088513.Spec : Prop :=
  ∀ n, P5067175260537088513.a n = A064739 (n + 1)

end A064739

/-! ## A064739.P12883463526860340213

`∩[A076518(n+1), A045371(n+1)]`
-/

namespace A064739.P12883463526860340213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P12883463526860340213

namespace A064739

/-- `∩[A076518(n+1), A045371(n+1)]` -/
def P12883463526860340213.Spec : Prop :=
  ∀ n, (P12883463526860340213.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P10626425212320649436

`∩[A023173(n+1), A045348(n+1)]`
-/

namespace A064739.P10626425212320649436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P10626425212320649436

namespace A064739

/-- `∩[A023173(n+1), A045348(n+1)]` -/
def P10626425212320649436.Spec : Prop :=
  ∀ n, (P10626425212320649436.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P3491179020889498732

`∩[A023173(n+1), A045371(n+1)]`
-/

namespace A064739.P3491179020889498732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P3491179020889498732

namespace A064739

/-- `∩[A023173(n+1), A045371(n+1)]` -/
def P3491179020889498732.Spec : Prop :=
  ∀ n, (P3491179020889498732.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P5088609743819247555

`∩[A000040(n+1), A023173(n+1)]`
-/

namespace A064739.P5088609743819247555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P5088609743819247555

namespace A064739

/-- `∩[A000040(n+1), A023173(n+1)]` -/
def P5088609743819247555.Spec : Prop :=
  ∀ n, (P5088609743819247555.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P591448962103849597

`∩[A023173(n+1), A045319(n+1)]`
-/

namespace A064739.P591448962103849597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P591448962103849597

namespace A064739

/-- `∩[A023173(n+1), A045319(n+1)]` -/
def P591448962103849597.Spec : Prop :=
  ∀ n, (P591448962103849597.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P9631803723802073436

`∩[A023173(n+1), A045344(n+1)]`
-/

namespace A064739.P9631803723802073436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P9631803723802073436

namespace A064739

/-- `∩[A023173(n+1), A045344(n+1)]` -/
def P9631803723802073436.Spec : Prop :=
  ∀ n, (P9631803723802073436.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P10769129652773990573

`∩[A000040(n+1), A076518(n+1)]`
-/

namespace A064739.P10769129652773990573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P10769129652773990573

namespace A064739

/-- `∩[A000040(n+1), A076518(n+1)]` -/
def P10769129652773990573.Spec : Prop :=
  ∀ n, (P10769129652773990573.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P14785959339832241675

`∩[A023173(n+1), A053813(n+1)]`
-/

namespace A064739.P14785959339832241675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P14785959339832241675

namespace A064739

/-- `∩[A023173(n+1), A053813(n+1)]` -/
def P14785959339832241675.Spec : Prop :=
  ∀ n, (P14785959339832241675.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P878393151087570523

`∩[A053813(n+1), A076518(n+1)]`
-/

namespace A064739.P878393151087570523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P878393151087570523

namespace A064739

/-- `∩[A053813(n+1), A076518(n+1)]` -/
def P878393151087570523.Spec : Prop :=
  ∀ n, (P878393151087570523.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P3479452185492434140

`∩[A000430(n+1), A023173(n+1)]`
-/

namespace A064739.P3479452185492434140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P3479452185492434140

namespace A064739

/-- `∩[A000430(n+1), A023173(n+1)]` -/
def P3479452185492434140.Spec : Prop :=
  ∀ n, (P3479452185492434140.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P444512307541916210

`∩[A023173(n+1), A050376(n+1)]`
-/

namespace A064739.P444512307541916210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P444512307541916210

namespace A064739

/-- `∩[A023173(n+1), A050376(n+1)]` -/
def P444512307541916210.Spec : Prop :=
  ∀ n, (P444512307541916210.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P4415010643706131330

`∩[A009087(n+1), A023173(n+1)]`
-/

namespace A064739.P4415010643706131330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P4415010643706131330

namespace A064739

/-- `∩[A009087(n+1), A023173(n+1)]` -/
def P4415010643706131330.Spec : Prop :=
  ∀ n, (P4415010643706131330.a n : ℤ) = A064739 (n + 1)

end A064739

/-! ## A064739.P18232183855772011258

`∩[A023173(n+1), A066191(n+1)]`
-/

namespace A064739.P18232183855772011258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064739.P18232183855772011258

namespace A064739

/-- `∩[A023173(n+1), A066191(n+1)]` -/
def P18232183855772011258.Spec : Prop :=
  ∀ n, (P18232183855772011258.a n : ℤ) = A064739 (n + 1)

end A064739

/-!
# A064740: Smallest controlling prime when A064413(n) is computed.

The programs for A064740, there is no canonical definition to state claims against.
-/

/-! ## A064740.P17752118074330308007

`A020639(round(A073734(n+2)+acot(n+1)))`
-/

namespace A064740.P17752118074330308007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A073734 (n + 2) : ℝ) + SequenceMachineLib.acot (n + 1 : ℝ))).toNat

end

end A064740.P17752118074330308007

/-! ## A064740.P10048087721508375311

`A020639(A106458(A163985(n))+A073734(n+2))`
-/

namespace A064740.P10048087721508375311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106458 (A163985 n).toNat + A073734 (n + 2)).toNat

end

end A064740.P10048087721508375311

/-! ## A064740.P13153515827132992253

`A020639(A073734(n+2)*A151800(n))`
-/

namespace A064740.P13153515827132992253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073734 (n + 2) * A151800 n).toNat

end

end A064740.P13153515827132992253

/-! ## A064740.P9945257662817437384

`A006530(A073734(n+2)+A073734(n+2)%A064665(n+1))`
-/

namespace A064740.P9945257662817437384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073734 (n + 2) + Int.tmod (A073734 (n + 2)) (A064665 (n + 1))).toNat

end

end A064740.P9945257662817437384

/-! ## A064740.P14972452246822031713

`A006530(log2((2^A073734(n+2))²))`
-/

namespace A064740.P14972452246822031713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.logb 2 (((2 : ℚ) ^ (A073734 (n + 2) : ℤ)) ^ 2 : ℝ))).toNat

end

end A064740.P14972452246822031713

/-! ## A064740.P6847992162756027714

`A020639(A000040(n+1)*A073734(n+2))`
-/

namespace A064740.P6847992162756027714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) * A073734 (n + 2)).toNat

end

end A064740.P6847992162756027714

/-! ## A064740.P17769594116780841701

`A051664(A073734(n+2)²)`
-/

namespace A064740.P17769594116780841701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A073734 (n + 2) ^ 2).toNat

end

end A064740.P17769594116780841701

/-! ## A064740.P15412156291768641319

`A020639(A073734(n+2)*A073770(n+1))`
-/

namespace A064740.P15412156291768641319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073734 (n + 2) * A073770 (n + 1)).toNat

end

end A064740.P15412156291768641319

/-!
# A064741: Length of A064743(n); Index of the largest prime factor of the n-th term of EKG-sequence.

The programs for A064741, there is no canonical definition to state claims against.
-/

/-! ## A064741.P9964675237522283319

`A061395(A064413(n+1))`
-/

namespace A064741.P9964675237522283319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064413 (n + 1)).toNat

end

end A064741.P9964675237522283319

/-! ## A064741.P17041116267896059818

`A000720(A304733(n+1))`
-/

namespace A064741.P17041116267896059818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A304733 (n + 1)).toNat

end

end A064741.P17041116267896059818

/-! ## A064741.P29131681471947716

`A061395(sqrt(A104125(n+1)))`
-/

namespace A064741.P29131681471947716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A064741.P29131681471947716

/-! ## A064741.P13006625173382299675

`A061395(A304733(2*n+1-n))`
-/

namespace A064741.P13006625173382299675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A304733 (2 * n + 1 - n)).toNat

end

end A064741.P13006625173382299675

/-! ## A064741.P14117686478508700877

`A061395(A304733(n+1)²)`
-/

namespace A064741.P14117686478508700877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A304733 (n + 1) ^ 2).toNat

end

end A064741.P14117686478508700877

/-! ## A064741.P7487781595417201070

`A061395(A304733(n+1)*A304733(n+1))`
-/

namespace A064741.P7487781595417201070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A304733 (n + 1) * A304733 (n + 1)).toNat

end

end A064741.P7487781595417201070

/-! ## A064741.P18367189394237656384

`A061395(A104125(n+1))`
-/

namespace A064741.P18367189394237656384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A104125 (n + 1)).toNat

end

end A064741.P18367189394237656384

/-!
# A064742: Total number of primes (with multiplicity) dividing A064413(n).

The programs for A064742, there is no canonical definition to state claims against.
-/

/-! ## A064742.P17267249401777596745

`A001222(A064413(n+1))`
-/

namespace A064742.P17267249401777596745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064413 (n + 1)).toNat

end

end A064742.P17267249401777596745

/-! ## A064742.P12510817168790440011

`∑{e}[A278263(n+1), #]`
-/

namespace A064742.P12510817168790440011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064742.P12510817168790440011

/-! ## A064742.P1920041029541633993

`∑{e}[sqrt(A104125(n+1)), #]`
-/

namespace A064742.P1920041029541633993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104125 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A064742.P1920041029541633993

/-! ## A064742.P680902698898138863

`∑{e}[A065519(n+1)+1+n, #]`
-/

namespace A064742.P680902698898138863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064742.P680902698898138863

/-! ## A064742.P18235268725553564126

`∑{e}[A064426(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A064742.P18235268725553564126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A064426 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064742.P18235268725553564126

/-! ## A064742.P612869674748461169

`A001222(A278263(n+1))`
-/

namespace A064742.P612869674748461169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278263 (n + 1)).toNat

end

end A064742.P612869674748461169

/-! ## A064742.P11153506997224277472

`A001222(sqrt(A104125(n+1)))`
-/

namespace A064742.P11153506997224277472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A064742.P11153506997224277472

/-! ## A064742.P9746126703744649347

`A001222(root(A104125(n+1), 2))`
-/

namespace A064742.P9746126703744649347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A104125 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A064742.P9746126703744649347

/-! ## A064742.P16797968412657108592

`A001222(A065519(n+1)+1+n)`
-/

namespace A064742.P16797968412657108592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A064742.P16797968412657108592

/-! ## A064742.P5835933587924973336

`∑{e}[A304753(a(n-1)+1), #]` with `a(0)=1`
-/

namespace A064742.P5835933587924973336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A304753 (f1 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A064742.P5835933587924973336

/-! ## A064742.P2486519026066803183

`∑{d}[A064413(n+1), A001221(A014963(#))]`
-/

namespace A064742.P2486519026066803183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A064742.P2486519026066803183

/-! ## A064742.P11967468833209771979

`dr(A064743(n+1))`
-/

namespace A064742.P11967468833209771979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A064743 (n + 1))

end

end A064742.P11967468833209771979

/-! ## A064742.P10851856124897577957

`A001222(A064413(Δ[n²]-n)²)/2`
-/

namespace A064742.P10851856124897577957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A064413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat : ℚ) / 2

end

end A064742.P10851856124897577957

/-!
# A064743: A064413(n) written in base of primes, read from right to left, written as a string.

The programs for A064743, there is no canonical definition to state claims against.
-/

/-! ## A064743.P9032773577983896164

`A054841(Δ[A065057(n)])`
-/

namespace A064743.P9032773577983896164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (n + 1) - f1 n).toNat

end

end A064743.P9032773577983896164

/-! ## A064743.P1891012703490686931

`A054841(A064413(n+1))`
-/

namespace A064743.P1891012703490686931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A064413 (n + 1)).toNat

end

end A064743.P1891012703490686931

/-! ## A064743.P7766001184860478519

`A054841(sqrt(A104125(n+1)))`
-/

namespace A064743.P7766001184860478519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A064743.P7766001184860478519

/-! ## A064743.P13058958652072146864

`A054841(A065519(n+1)+1+n)`
-/

namespace A064743.P13058958652072146864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A064743.P13058958652072146864

/-! ## A064743.P12831600065111067831

`A054841(A065057(n+1)-A065057(n))`
-/

namespace A064743.P12831600065111067831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A065057 (n + 1) - A065057 n).toNat

end

end A064743.P12831600065111067831

/-!
# A064744: A064413(n) written in base of primes, read from right to left, written as n-th row of a table.

The programs for A064744, there is no canonical definition to state claims against.
-/

/-! ## A064744.P3958195657477301649

`A104273(A349026(n+1)+9)`
-/

namespace A064744.P3958195657477301649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104273 (A349026 (n + 1) + 9).toNat

end

end A064744.P3958195657477301649

/-! ## A064744.P2110098809191895778

`A018892(A327859(2*(n+1)))%A106494(2*n+1)`
-/

namespace A064744.P2110098809191895778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018892 (A327859 (2 * (n + 1))).toNat) (A106494 (2 * n + 1))

end

end A064744.P2110098809191895778

/-!
# A064746: a(n) = n*8^n + 1.

The programs for A064746, the canonical program `A064746.P4109743125523953254` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064746 has offset 0).

The definition of A064746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n+1` (program `A064746.P4109743125523953254`, by `A064746.P4109743125523953254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064746.P4109743125523953254

`n*8^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064746

/-- `n*8^n+1` -/
def P4109743125523953254.Spec : Prop :=
  ∀ n, (P4109743125523953254.a n : ℤ) = A064746 n

theorem P4109743125523953254.correct : P4109743125523953254.Spec := by
  intro n
  simp only [A064746]

end A064746

/-! ## A064746.P10653980609369693984

`or(1, n*8^n)`
-/

namespace A064746.P10653980609369693984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * 8 ^ n)

end

end A064746.P10653980609369693984

namespace A064746

/-- `or(1, n*8^n)` -/
def P10653980609369693984.Spec : Prop :=
  ∀ n, (P10653980609369693984.a n : ℤ) = A064746 n

end A064746

/-! ## A064746.P1837552684714392731

`xor(1, n*8^n)`
-/

namespace A064746.P1837552684714392731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * 8 ^ n)

end

end A064746.P1837552684714392731

namespace A064746

/-- `xor(1, n*8^n)` -/
def P1837552684714392731.Spec : Prop :=
  ∀ n, (P1837552684714392731.a n : ℤ) = A064746 n

end A064746

/-! ## A064746.P12523500701378402043

`-xor(n*A001018(n), -1)`
-/

namespace A064746.P12523500701378402043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * A001018 n) (-1)

end

end A064746.P12523500701378402043

namespace A064746

/-- `-xor(n*A001018(n), -1)` -/
def P12523500701378402043.Spec : Prop :=
  ∀ n, P12523500701378402043.a n = A064746 n

end A064746

/-! ## A064746.P5961758233488479804

`abs(n*A000051(3*n)+1-n)`
-/

namespace A064746.P5961758233488479804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000051 (3 * n) + 1 - (n : ℤ)|

end

end A064746.P5961758233488479804

namespace A064746

/-- `abs(n*A000051(3*n)+1-n)` -/
def P5961758233488479804.Spec : Prop :=
  ∀ n, P5961758233488479804.a n = A064746 n

end A064746

/-! ## A064746.P11502659320744285686

`abs(xor(A033999(n), A036294(n)))`
-/

namespace A064746.P11502659320744285686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A036294 n)|

end

end A064746.P11502659320744285686

namespace A064746

/-- `abs(xor(A033999(n), A036294(n)))` -/
def P11502659320744285686.Spec : Prop :=
  ∀ n, P11502659320744285686.a n = A064746 n

end A064746

/-! ## A064746.P17376251531695423561

`(A268147(n)+A000079(n))/A000079(n)`
-/

namespace A064746.P17376251531695423561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268147 n + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A064746.P17376251531695423561

namespace A064746

/-- `(A268147(n)+A000079(n))/A000079(n)` -/
def P17376251531695423561.Spec : Prop :=
  ∀ n, P17376251531695423561.a n = (A064746 n : ℚ)

end A064746

/-!
# A064747: a(n) = n*9^n + 1.

The programs for A064747, the canonical program `A064747.P2746404470026299106` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064747 has offset 0).

The definition of A064747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*9^n+1` (program `A064747.P2746404470026299106`, by `A064747.P2746404470026299106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064747.P2746404470026299106

`n*9^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064747

/-- `n*9^n+1` -/
def P2746404470026299106.Spec : Prop :=
  ∀ n, (P2746404470026299106.a n : ℤ) = A064747 n

theorem P2746404470026299106.correct : P2746404470026299106.Spec := by
  intro n
  simp only [A064747]

end A064747

/-! ## A064747.P1659049198276209744

`-xor(n*9^n, -1)`
-/

namespace A064747.P1659049198276209744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * 9 ^ n : ℤ) (-1)

end

end A064747.P1659049198276209744

namespace A064747

/-- `-xor(n*9^n, -1)` -/
def P1659049198276209744.Spec : Prop :=
  ∀ n, P1659049198276209744.a n = A064747 n

end A064747

/-! ## A064747.P1164312577040586832

`abs(xor(-1, A158749(n)))`
-/

namespace A064747.P1164312577040586832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A158749 n)|

end

end A064747.P1164312577040586832

namespace A064747

/-- `abs(xor(-1, A158749(n)))` -/
def P1164312577040586832.Spec : Prop :=
  ∀ n, P1164312577040586832.a n = A064747 n

end A064747

/-! ## A064747.P16793380687308380218

`ceil(A050914(2*n)/2)`
-/

namespace A064747.P16793380687308380218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050914 (2 * n) : ℚ) / 2⌉

end

end A064747.P16793380687308380218

namespace A064747

/-- `ceil(A050914(2*n)/2)` -/
def P16793380687308380218.Spec : Prop :=
  ∀ n, P16793380687308380218.a n = A064747 n

end A064747

/-! ## A064747.P6447341724531457201

`ceil((2*n*A001019(n)+1)/2)`
-/

namespace A064747.P6447341724531457201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((n : ℤ) * A001019 n) + 1 : ℚ) / 2⌉

end

end A064747.P6447341724531457201

namespace A064747

/-- `ceil((2*n*A001019(n)+1)/2)` -/
def P6447341724531457201.Spec : Prop :=
  ∀ n, P6447341724531457201.a n = A064747 n

end A064747

/-! ## A064747.P6056541509167528407

`lcm(A158749(n)+1, A057077(n))`
-/

namespace A064747.P6056541509167528407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158749 n + 1) (A057077 n)

end

end A064747.P6056541509167528407

namespace A064747

/-- `lcm(A158749(n)+1, A057077(n))` -/
def P6056541509167528407.Spec : Prop :=
  ∀ n, (P6056541509167528407.a n : ℤ) = A064747 n

end A064747

/-! ## A064747.P7668383073622219242

`ceil(A000244(n)/acot(A036290(n)))`
-/

namespace A064747.P7668383073622219242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000244 n : ℝ) / SequenceMachineLib.acot (A036290 n : ℝ)⌉

end

end A064747.P7668383073622219242

namespace A064747

/-- `ceil(A000244(n)/acot(A036290(n)))` -/
def P7668383073622219242.Spec : Prop :=
  ∀ n, P7668383073622219242.a n = A064747 n

end A064747

/-! ## A064747.P11804659693615055992

`abs(xor(n*A001019(n), A033999(n)))`
-/

namespace A064747.P11804659693615055992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) * A001019 n) (A033999 n)|

end

end A064747.P11804659693615055992

namespace A064747

/-- `abs(xor(n*A001019(n), A033999(n)))` -/
def P11804659693615055992.Spec : Prop :=
  ∀ n, P11804659693615055992.a n = A064747 n

end A064747

/-! ## A064747.P17504276960619009039

`ceil((A001019(n)*A004277(n)+1)/2)`
-/

namespace A064747.P17504276960619009039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001019 n * A004277 n + 1 : ℚ) / 2⌉

end

end A064747.P17504276960619009039

namespace A064747

/-- `ceil((A001019(n)*A004277(n)+1)/2)` -/
def P17504276960619009039.Spec : Prop :=
  ∀ n, P17504276960619009039.a n = A064747 n

end A064747

/-! ## A064747.P3248407161525896192

`(A116176(n)+1+n)/(n+1)`
-/

namespace A064747.P3248407161525896192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116176 n + 1 + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A064747.P3248407161525896192

namespace A064747

/-- `(A116176(n)+1+n)/(n+1)` -/
def P3248407161525896192.Spec : Prop :=
  ∀ n, P3248407161525896192.a n = (A064747 n : ℚ)

end A064747

/-!
# A064748: a(n) = n*10^n + 1.

The programs for A064748, the canonical program `A064748.P4514015484673215208` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064748 has offset 0).

The definition of A064748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*10^n+1` (program `A064748.P4514015484673215208`, by `A064748.P4514015484673215208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064748.P4514015484673215208

`n*10^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064748

/-- `n*10^n+1` -/
def P4514015484673215208.Spec : Prop :=
  ∀ n, (P4514015484673215208.a n : ℤ) = A064748 n

theorem P4514015484673215208.correct : P4514015484673215208.Spec := by
  intro n
  simp only [A064748]

end A064748

/-! ## A064748.P10756819282277681490

`or(1, n*10^n)`
-/

namespace A064748.P10756819282277681490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * 10 ^ n)

end

end A064748.P10756819282277681490

namespace A064748

/-- `or(1, n*10^n)` -/
def P10756819282277681490.Spec : Prop :=
  ∀ n, (P10756819282277681490.a n : ℤ) = A064748 n

end A064748

/-! ## A064748.P9010080259416338226

`xor(1, n*10^n)`
-/

namespace A064748.P9010080259416338226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * 10 ^ n)

end

end A064748.P9010080259416338226

namespace A064748

/-- `xor(1, n*10^n)` -/
def P9010080259416338226.Spec : Prop :=
  ∀ n, (P9010080259416338226.a n : ℤ) = A064748 n

end A064748

/-! ## A064748.P1714606835274267289

`∑{digits}[10^n, gcd(#, 10^n)]`
-/

namespace A064748.P1714606835274267289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (10 ^ n)).sum

end

end A064748.P1714606835274267289

namespace A064748

/-- `∑{digits}[10^n, gcd(#, 10^n)]` -/
def P1714606835274267289.Spec : Prop :=
  ∀ n, (P1714606835274267289.a n : ℤ) = A064748 n

end A064748

/-! ## A064748.P17287151325870981329

`abs(n*Δ[A002275(n)]+1)`
-/

namespace A064748.P17287151325870981329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n) + 1|

end

end A064748.P17287151325870981329

namespace A064748

/-- `abs(n*Δ[A002275(n)]+1)` -/
def P17287151325870981329.Spec : Prop :=
  ∀ n, P17287151325870981329.a n = A064748 n

end A064748

/-! ## A064748.P8043519768725903400

`abs(A110807(n)+Δ[n²]-n)`
-/

namespace A064748.P8043519768725903400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110807 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A064748.P8043519768725903400

namespace A064748

/-- `abs(A110807(n)+Δ[n²]-n)` -/
def P8043519768725903400.Spec : Prop :=
  ∀ n, P8043519768725903400.a n = A064748 n

end A064748

/-! ## A064748.P6214827265564913838

`abs(10^n-1-A053541(n+1))`
-/

namespace A064748.P6214827265564913838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - 1 - A053541 (n + 1)|

end

end A064748.P6214827265564913838

namespace A064748

/-- `abs(10^n-1-A053541(n+1))` -/
def P6214827265564913838.Spec : Prop :=
  ∀ n, P6214827265564913838.a n = A064748 n

end A064748

/-! ## A064748.P1649666383674522941

`abs(A153881(n+1)-A126431(n))`
-/

namespace A064748.P1649666383674522941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153881 (n + 1) - A126431 n|

end

end A064748.P1649666383674522941

namespace A064748

/-- `abs(A153881(n+1)-A126431(n))` -/
def P1649666383674522941.Spec : Prop :=
  ∀ n, P1649666383674522941.a n = A064748 n

end A064748

/-! ## A064748.P11293328183192012645

`abs(xor(A034947(n+1), A126431(n)))`
-/

namespace A064748.P11293328183192012645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A034947 (n + 1)) (A126431 n)|

end

end A064748.P11293328183192012645

namespace A064748

/-- `abs(xor(A034947(n+1), A126431(n)))` -/
def P11293328183192012645.Spec : Prop :=
  ∀ n, P11293328183192012645.a n = A064748 n

end A064748

/-! ## A064748.P4576873738126428412

`C(A126431(n)+1, A126431(n))`
-/

namespace A064748.P4576873738126428412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126431 n + 1).toNat (A126431 n).toNat

end

end A064748.P4576873738126428412

namespace A064748

/-- `C(A126431(n)+1, A126431(n))` -/
def P4576873738126428412.Spec : Prop :=
  ∀ n, (P4576873738126428412.a n : ℤ) = A064748 n

end A064748

/-!
# A064749: a(n) = n*11^n + 1.

The programs for A064749, the canonical program `A064749.P13370309510445526629` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064749 has offset 0).

The definition of A064749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*11^n+1` (program `A064749.P13370309510445526629`, by `A064749.P13370309510445526629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064749.P13370309510445526629

`n*11^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064749

/-- `n*11^n+1` -/
def P13370309510445526629.Spec : Prop :=
  ∀ n, (P13370309510445526629.a n : ℤ) = A064749 n

theorem P13370309510445526629.correct : P13370309510445526629.Spec := by
  intro n
  simp only [A064749]

end A064749

/-! ## A064749.P8339060966884770103

`-xor(n*11^n, -1)`
-/

namespace A064749.P8339060966884770103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * 11 ^ n : ℤ) (-1)

end

end A064749.P8339060966884770103

namespace A064749

/-- `-xor(n*11^n, -1)` -/
def P8339060966884770103.Spec : Prop :=
  ∀ n, P8339060966884770103.a n = A064749 n

end A064749

/-! ## A064749.P2169513425596239898

`abs(xor(n*A001020(n), A033999(n)))`
-/

namespace A064749.P2169513425596239898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) * A001020 n) (A033999 n)|

end

end A064749.P2169513425596239898

namespace A064749

/-- `abs(xor(n*A001020(n), A033999(n)))` -/
def P2169513425596239898.Spec : Prop :=
  ∀ n, P2169513425596239898.a n = A064749 n

end A064749

/-! ## A064749.P2309254941208229624

`(A004442(n)-n)*xor(n*A001020(n), A033999(n))`
-/

namespace A064749.P2309254941208229624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * Int.xor ((n : ℤ) * A001020 n) (A033999 n)

end

end A064749.P2309254941208229624

namespace A064749

/-- `(A004442(n)-n)*xor(n*A001020(n), A033999(n))` -/
def P2309254941208229624.Spec : Prop :=
  ∀ n, P2309254941208229624.a n = A064749 n

end A064749

/-! ## A064749.P3640279282727532621

`(n*A001020(n)+1)%(A041067(2*n)+1)`
-/

namespace A064749.P3640279282727532621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001020 n + 1) (A041067 (2 * n) + 1)

end

end A064749.P3640279282727532621

namespace A064749

/-- `(n*A001020(n)+1)%(A041067(2*n)+1)` -/
def P3640279282727532621.Spec : Prop :=
  ∀ n, P3640279282727532621.a n = A064749 n

end A064749

/-!
# A064750: a(n) = n*12^n + 1.

The programs for A064750, the canonical program `A064750.P8846264144529737356` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064750 has offset 0).

The definition of A064750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*12^n+1` (program `A064750.P8846264144529737356`, by `A064750.P8846264144529737356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064750.P8846264144529737356

`n*12^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064750

/-- `n*12^n+1` -/
def P8846264144529737356.Spec : Prop :=
  ∀ n, (P8846264144529737356.a n : ℤ) = A064750 n

theorem P8846264144529737356.correct : P8846264144529737356.Spec := by
  intro n
  simp only [A064750]

end A064750

/-! ## A064750.P15375448709943994350

`or(1, n*12^n)`
-/

namespace A064750.P15375448709943994350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * 12 ^ n)

end

end A064750.P15375448709943994350

namespace A064750

/-- `or(1, n*12^n)` -/
def P15375448709943994350.Spec : Prop :=
  ∀ n, (P15375448709943994350.a n : ℤ) = A064750 n

end A064750

/-! ## A064750.P4307572564519990215

`xor(1, n*12^n)`
-/

namespace A064750.P4307572564519990215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * 12 ^ n)

end

end A064750.P4307572564519990215

namespace A064750

/-- `xor(1, n*12^n)` -/
def P4307572564519990215.Spec : Prop :=
  ∀ n, (P4307572564519990215.a n : ℤ) = A064750 n

end A064750

/-! ## A064750.P2401199730189898352

`(n*A001021(n)+1)*A007318(∑[n])`
-/

namespace A064750.P2401199730189898352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001021 n + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064750.P2401199730189898352

namespace A064750

/-- `(n*A001021(n)+1)*A007318(∑[n])` -/
def P2401199730189898352.Spec : Prop :=
  ∀ n, P2401199730189898352.a n = A064750 n

end A064750

/-! ## A064750.P7222415714833394733

`round(sqrt((n*A282022(2*n)+1)²+1))`
-/

namespace A064750.P7222415714833394733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n : ℤ) * A282022 (2 * n) + 1) ^ 2 + 1 : ℝ))

end

end A064750.P7222415714833394733

namespace A064750

/-- `round(sqrt((n*A282022(2*n)+1)²+1))` -/
def P7222415714833394733.Spec : Prop :=
  ∀ n, P7222415714833394733.a n = A064750 n

end A064750

/-!
# A064751: a(n) = n*5^n - 1.

The programs for A064751, the canonical program `A064751.P2179001577369083540` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064751 has offset 1).

The definition of A064751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*5^(n+1)-1` (program `A064751.P2179001577369083540`, by `A064751.P2179001577369083540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064751.P2179001577369083540

`(n+1)*5^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064751

/-- `(n+1)*5^(n+1)-1` -/
def P2179001577369083540.Spec : Prop :=
  ∀ n, P2179001577369083540.a n = A064751 (n + 1)

theorem P2179001577369083540.correct : P2179001577369083540.Spec := by
  intro n
  simp only [A064751, Nat.add_sub_cancel]

end A064751

/-! ## A064751.P4261170019244997683

`floor((n+1)*∑[5*a(n-1)]+n)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A064751.P4261170019244997683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A064751.P4261170019244997683

namespace A064751

/-- `floor((n+1)*∑[5*a(n-1)]+n)` -/
def P4261170019244997683.Spec : Prop :=
  ∀ n, (P4261170019244997683.a n : ℤ) = A064751 (n + 1)

end A064751

/-! ## A064751.P16522295539193207558

`Δ[A277975(n)-n]`
-/

namespace A064751.P16522295539193207558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277975 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064751.P16522295539193207558

namespace A064751

/-- `Δ[A277975(n)-n]` -/
def P16522295539193207558.Spec : Prop :=
  ∀ n, P16522295539193207558.a n = A064751 (n + 1)

end A064751

/-! ## A064751.P9835407224844597174

`Δ[∑[A036291(n)]-n]`
-/

namespace A064751.P9835407224844597174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064751.P9835407224844597174

namespace A064751

/-- `Δ[∑[A036291(n)]-n]` -/
def P9835407224844597174.Spec : Prop :=
  ∀ n, P9835407224844597174.a n = A064751 (n + 1)

end A064751

/-! ## A064751.P5682541850635809373

`abs(1-A036291(n+1))`
-/

namespace A064751.P5682541850635809373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036291 (n + 1)|

end

end A064751.P5682541850635809373

namespace A064751

/-- `abs(1-A036291(n+1))` -/
def P5682541850635809373.Spec : Prop :=
  ∀ n, P5682541850635809373.a n = A064751 (n + 1)

end A064751

/-! ## A064751.P1459587137063428689

`abs(A036291(n+1)+A033999(2*n+1))`
-/

namespace A064751.P1459587137063428689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036291 (n + 1) + A033999 (2 * n + 1)|

end

end A064751.P1459587137063428689

namespace A064751

/-- `abs(A036291(n+1)+A033999(2*n+1))` -/
def P1459587137063428689.Spec : Prop :=
  ∀ n, P1459587137063428689.a n = A064751 (n + 1)

end A064751

/-!
# A064752: a(n) = n*6^n - 1.

The programs for A064752, the canonical program `A064752.P6838774867230682218` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064752 has offset 1).

The definition of A064752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*6^(n+1)-1` (program `A064752.P6838774867230682218`, by `A064752.P6838774867230682218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064752.P6838774867230682218

`(n+1)*6^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064752

/-- `(n+1)*6^(n+1)-1` -/
def P6838774867230682218.Spec : Prop :=
  ∀ n, P6838774867230682218.a n = A064752 (n + 1)

theorem P6838774867230682218.correct : P6838774867230682218.Spec := by
  intro n
  simp only [A064752, Nat.add_sub_cancel]

end A064752

/-! ## A064752.P15898492958150757278

`abs(1-A036292(n+1))`
-/

namespace A064752.P15898492958150757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036292 (n + 1)|

end

end A064752.P15898492958150757278

namespace A064752

/-- `abs(1-A036292(n+1))` -/
def P15898492958150757278.Spec : Prop :=
  ∀ n, P15898492958150757278.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P2442692114413857182

`abs(2-A050917(n+1))`
-/

namespace A064752.P2442692114413857182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A050917 (n + 1)|

end

end A064752.P2442692114413857182

namespace A064752

/-- `abs(2-A050917(n+1))` -/
def P2442692114413857182.Spec : Prop :=
  ∀ n, P2442692114413857182.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P14235907888159357890

`abs(A027266(Δ[n²])-1)`
-/

namespace A064752.P14235907888159357890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027266 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1|

end

end A064752.P14235907888159357890

namespace A064752

/-- `abs(A027266(Δ[n²])-1)` -/
def P14235907888159357890.Spec : Prop :=
  ∀ n, P14235907888159357890.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P12286662029343291346

`abs(A027276(Δ[n²])-1)`
-/

namespace A064752.P12286662029343291346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027276 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1|

end

end A064752.P12286662029343291346

namespace A064752

/-- `abs(A027276(Δ[n²])-1)` -/
def P12286662029343291346.Spec : Prop :=
  ∀ n, P12286662029343291346.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P12106818010825690715

`Δ[∑[A050917(n)]-2*n]`
-/

namespace A064752.P12106818010825690715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050917 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064752.P12106818010825690715

namespace A064752

/-- `Δ[∑[A050917(n)]-2*n]` -/
def P12106818010825690715.Spec : Prop :=
  ∀ n, P12106818010825690715.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P15407408289830814522

`Δ[∑[n*A000400(n)]-n]`
-/

namespace A064752.P15407408289830814522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064752.P15407408289830814522

namespace A064752

/-- `Δ[∑[n*A000400(n)]-n]` -/
def P15407408289830814522.Spec : Prop :=
  ∀ n, P15407408289830814522.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P5364609750119681966

`abs(1-A027266(2*n+1))`
-/

namespace A064752.P5364609750119681966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A027266 (2 * n + 1)|

end

end A064752.P5364609750119681966

namespace A064752

/-- `abs(1-A027266(2*n+1))` -/
def P5364609750119681966.Spec : Prop :=
  ∀ n, P5364609750119681966.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P8768649483048200252

`-or(1-A036292(n+1), A000007(n))`
-/

namespace A064752.P8768649483048200252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (1 - A036292 (n + 1)) (A000007 n)

end

end A064752.P8768649483048200252

namespace A064752

/-- `-or(1-A036292(n+1), A000007(n))` -/
def P8768649483048200252.Spec : Prop :=
  ∀ n, P8768649483048200252.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P10517428966638626735

`-(1-A036292(n+1))*A000930(C(2, n²))`
-/

namespace A064752.P10517428966638626735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - A036292 (n + 1)) * A000930 (Nat.choose 2 (n ^ 2)))

end

end A064752.P10517428966638626735

namespace A064752

/-- `-(1-A036292(n+1))*A000930(C(2, n²))` -/
def P10517428966638626735.Spec : Prop :=
  ∀ n, P10517428966638626735.a n = A064752 (n + 1)

end A064752

/-! ## A064752.P1883919086929388666

`(A050917(n+1)-A141310(2*n+1))%A050917(n+1)`
-/

namespace A064752.P1883919086929388666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050917 (n + 1) - A141310 (2 * n + 1)) (A050917 (n + 1))

end

end A064752.P1883919086929388666

namespace A064752

/-- `(A050917(n+1)-A141310(2*n+1))%A050917(n+1)` -/
def P1883919086929388666.Spec : Prop :=
  ∀ n, P1883919086929388666.a n = A064752 (n + 1)

end A064752

/-!
# A064753: a(n) = n*7^n - 1.

The programs for A064753, the canonical program `A064753.P11049362427559591682` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064753 has offset 1).

The definition of A064753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*7^(n+1)-1` (program `A064753.P11049362427559591682`, by `A064753.P11049362427559591682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064753.P11049362427559591682

`(n+1)*7^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064753

/-- `(n+1)*7^(n+1)-1` -/
def P11049362427559591682.Spec : Prop :=
  ∀ n, P11049362427559591682.a n = A064753 (n + 1)

theorem P11049362427559591682.correct : P11049362427559591682.Spec := by
  intro n
  simp only [A064753, Nat.add_sub_cancel]

end A064753

/-! ## A064753.P12243927853375881472

`abs(1-A036293(n+1))`
-/

namespace A064753.P12243927853375881472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036293 (n + 1)|

end

end A064753.P12243927853375881472

namespace A064753

/-- `abs(1-A036293(n+1))` -/
def P12243927853375881472.Spec : Prop :=
  ∀ n, P12243927853375881472.a n = A064753 (n + 1)

end A064753

/-! ## A064753.P10406253369323534732

`abs(2-A050919(n+1))`
-/

namespace A064753.P10406253369323534732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A050919 (n + 1)|

end

end A064753.P10406253369323534732

namespace A064753

/-- `abs(2-A050919(n+1))` -/
def P10406253369323534732.Spec : Prop :=
  ∀ n, P10406253369323534732.a n = A064753 (n + 1)

end A064753

/-! ## A064753.P4345460354881235612

`abs(7*(n+1)*A000420(n)-1)`
-/

namespace A064753.P4345460354881235612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * (n + 1) : ℤ) * A000420 n - 1|

end

end A064753.P4345460354881235612

namespace A064753

/-- `abs(7*(n+1)*A000420(n)-1)` -/
def P4345460354881235612.Spec : Prop :=
  ∀ n, P4345460354881235612.a n = A064753 (n + 1)

end A064753

/-! ## A064753.P9458571169569750961

`record[A036293(A008611(n))-1]`
-/

namespace A064753.P9458571169569750961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036293 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064753.P9458571169569750961

namespace A064753

/-- `record[A036293(A008611(n))-1]` -/
def P9458571169569750961.Spec : Prop :=
  ∀ n, P9458571169569750961.a n = A064753 (n + 1)

end A064753

/-! ## A064753.P14983736393577486215

`abs(A036293(n+1)+A033999(2*n+1))`
-/

namespace A064753.P14983736393577486215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036293 (n + 1) + A033999 (2 * n + 1)|

end

end A064753.P14983736393577486215

namespace A064753

/-- `abs(A036293(n+1)+A033999(2*n+1))` -/
def P14983736393577486215.Spec : Prop :=
  ∀ n, P14983736393577486215.a n = A064753 (n + 1)

end A064753

/-! ## A064753.P17011431064816074429

`(2-A050919(n+1))*A008683(A005383(n+1))`
-/

namespace A064753.P17011431064816074429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A050919 (n + 1)) * A008683 (A005383 (n + 1)).toNat

end

end A064753.P17011431064816074429

namespace A064753

/-- `(2-A050919(n+1))*A008683(A005383(n+1))` -/
def P17011431064816074429.Spec : Prop :=
  ∀ n, P17011431064816074429.a n = A064753 (n + 1)

end A064753

/-!
# A064754: a(n) = n*8^n - 1.

The programs for A064754, the canonical program `A064754.P2499548771574143420` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064754 has offset 1).

The definition of A064754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*8^(n+1)-1` (program `A064754.P2499548771574143420`, by `A064754.P2499548771574143420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064754.P2499548771574143420

`(n+1)*8^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064754

/-- `(n+1)*8^(n+1)-1` -/
def P2499548771574143420.Spec : Prop :=
  ∀ n, P2499548771574143420.a n = A064754 (n + 1)

theorem P2499548771574143420.correct : P2499548771574143420.Spec := by
  intro n
  simp only [A064754, Nat.add_sub_cancel]

end A064754

/-! ## A064754.P4428316579549621191

`Δ[∑[A036294(n)]-n]`
-/

namespace A064754.P4428316579549621191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064754.P4428316579549621191

namespace A064754

/-- `Δ[∑[A036294(n)]-n]` -/
def P4428316579549621191.Spec : Prop :=
  ∀ n, P4428316579549621191.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P3728191569223254847

`abs(1-A036294(n+1))`
-/

namespace A064754.P3728191569223254847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036294 (n + 1)|

end

end A064754.P3728191569223254847

namespace A064754

/-- `abs(1-A036294(n+1))` -/
def P3728191569223254847.Spec : Prop :=
  ∀ n, P3728191569223254847.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P15340978713773068207

`abs(2-A064746(n+1))`
-/

namespace A064754.P15340978713773068207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A064746 (n + 1)|

end

end A064754.P15340978713773068207

namespace A064754

/-- `abs(2-A064746(n+1))` -/
def P15340978713773068207.Spec : Prop :=
  ∀ n, P15340978713773068207.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P9164553707816428174

`abs(1-(n+1)*A011782(3*n+4))`
-/

namespace A064754.P9164553707816428174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 1 : ℤ) * A011782 (3 * n + 4)|

end

end A064754.P9164553707816428174

namespace A064754

/-- `abs(1-(n+1)*A011782(3*n+4))` -/
def P9164553707816428174.Spec : Prop :=
  ∀ n, P9164553707816428174.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P2172877207266261300

`∑[Δ[A064746(n)]-A000007(n)]`
-/

namespace A064754.P2172877207266261300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064754.P2172877207266261300

namespace A064754

/-- `∑[Δ[A064746(n)]-A000007(n)]` -/
def P2172877207266261300.Spec : Prop :=
  ∀ n, P2172877207266261300.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P18072213601142201710

`abs(A036294(n+1)+A033999(2*n+1))`
-/

namespace A064754.P18072213601142201710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036294 (n + 1) + A033999 (2 * n + 1)|

end

end A064754.P18072213601142201710

namespace A064754

/-- `abs(A036294(n+1)+A033999(2*n+1))` -/
def P18072213601142201710.Spec : Prop :=
  ∀ n, P18072213601142201710.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P8037521271965628422

`abs((n+1)*A094014(A004277(n+1))-1)`
-/

namespace A064754.P8037521271965628422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A094014 (A004277 (n + 1)).toNat - 1|

end

end A064754.P8037521271965628422

namespace A064754

/-- `abs((n+1)*A094014(A004277(n+1))-1)` -/
def P8037521271965628422.Spec : Prop :=
  ∀ n, P8037521271965628422.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P1902419360424031939

`or(2, a(n-1)+A001018(n)*A016993(n+1))` with `a(0)=7`
-/

namespace A064754.P1902419360424031939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.lor 2 (a (n - 1) + A001018 n * A016993 (n + 1))

end

end A064754.P1902419360424031939

namespace A064754

/-- `or(2, a(n-1)+A001018(n)*A016993(n+1))` -/
def P1902419360424031939.Spec : Prop :=
  ∀ n, P1902419360424031939.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P11109057929791966228

`or(A000079(n)*A003261(2*(n+1)), A003261(n+1))`
-/

namespace A064754.P11109057929791966228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A003261 (2 * (n + 1))) (A003261 (n + 1))

end

end A064754.P11109057929791966228

namespace A064754

/-- `or(A000079(n)*A003261(2*(n+1)), A003261(n+1))` -/
def P11109057929791966228.Spec : Prop :=
  ∀ n, P11109057929791966228.a n = A064754 (n + 1)

end A064754

/-! ## A064754.P16357383713076991724

`floor(A003261(3*(n+1))/3)`
-/

namespace A064754.P16357383713076991724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003261 (3 * (n + 1)) : ℚ) / 3⌋

end

end A064754.P16357383713076991724

namespace A064754

/-- `floor(A003261(3*(n+1))/3)` -/
def P16357383713076991724.Spec : Prop :=
  ∀ n, P16357383713076991724.a n = A064754 (n + 1)

end A064754

/-!
# A064755: a(n) = n*9^n - 1.

The programs for A064755, the canonical program `A064755.P806243928124627926` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064755 has offset 1).

The definition of A064755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*9^(n+1)-1` (program `A064755.P806243928124627926`, by `A064755.P806243928124627926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064755.P806243928124627926

`(n+1)*9^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064755

/-- `(n+1)*9^(n+1)-1` -/
def P806243928124627926.Spec : Prop :=
  ∀ n, P806243928124627926.a n = A064755 (n + 1)

theorem P806243928124627926.correct : P806243928124627926.Spec := by
  intro n
  simp only [A064755, Nat.add_sub_cancel]

end A064755

/-! ## A064755.P15858636961066181028

`Δ[∑[A158749(n)]-n]`
-/

namespace A064755.P15858636961066181028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064755.P15858636961066181028

namespace A064755

/-- `Δ[∑[A158749(n)]-n]` -/
def P15858636961066181028.Spec : Prop :=
  ∀ n, P15858636961066181028.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P18099308728507468753

`abs(1-A158749(n+1))`
-/

namespace A064755.P18099308728507468753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A158749 (n + 1)|

end

end A064755.P18099308728507468753

namespace A064755

/-- `abs(1-A158749(n+1))` -/
def P18099308728507468753.Spec : Prop :=
  ∀ n, P18099308728507468753.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P13643071747254913566

`abs(2-A064747(n+1))`
-/

namespace A064755.P13643071747254913566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A064747 (n + 1)|

end

end A064755.P13643071747254913566

namespace A064755

/-- `abs(2-A064747(n+1))` -/
def P13643071747254913566.Spec : Prop :=
  ∀ n, P13643071747254913566.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P11784099355355194493

`abs(A158749(-xor(n, -1))-1)`
-/

namespace A064755.P11784099355355194493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158749 (-Int.xor (n : ℤ) (-1)).toNat - 1|

end

end A064755.P11784099355355194493

namespace A064755

/-- `abs(A158749(-xor(n, -1))-1)` -/
def P11784099355355194493.Spec : Prop :=
  ∀ n, P11784099355355194493.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P12048064834431448230

`(A060352(2*(n+1))-1)/2`
-/

namespace A064755.P12048064834431448230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060352 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A064755.P12048064834431448230

namespace A064755

/-- `(A060352(2*(n+1))-1)/2` -/
def P12048064834431448230.Spec : Prop :=
  ∀ n, P12048064834431448230.a n = (A064755 (n + 1) : ℚ)

end A064755

/-! ## A064755.P3854519167975775476

`∑[Δ[A064747(n)]-A000007(n)]`
-/

namespace A064755.P3854519167975775476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064755.P3854519167975775476

namespace A064755

/-- `∑[Δ[A064747(n)]-A000007(n)]` -/
def P3854519167975775476.Spec : Prop :=
  ∀ n, P3854519167975775476.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P9124211891221802541

`record[A158749(A050873(n+1))-1]`
-/

namespace A064755.P9124211891221802541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 (A050873 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064755.P9124211891221802541

namespace A064755

/-- `record[A158749(A050873(n+1))-1]` -/
def P9124211891221802541.Spec : Prop :=
  ∀ n, P9124211891221802541.a n = A064755 (n + 1)

end A064755

/-! ## A064755.P11941969146523034298

`abs(A158749(n+1)+A033999(2*n+1))`
-/

namespace A064755.P11941969146523034298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158749 (n + 1) + A033999 (2 * n + 1)|

end

end A064755.P11941969146523034298

namespace A064755

/-- `abs(A158749(n+1)+A033999(2*n+1))` -/
def P11941969146523034298.Spec : Prop :=
  ∀ n, P11941969146523034298.a n = A064755 (n + 1)

end A064755

/-!
# A064756: a(n) = n*10^n - 1.

The programs for A064756, the canonical program `A064756.P1316985546857033383` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064756 has offset 1).

The definition of A064756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*10^(n+1)-1` (program `A064756.P1316985546857033383`, by `A064756.P1316985546857033383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064756.P1316985546857033383

`(n+1)*10^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064756

/-- `(n+1)*10^(n+1)-1` -/
def P1316985546857033383.Spec : Prop :=
  ∀ n, P1316985546857033383.a n = A064756 (n + 1)

theorem P1316985546857033383.correct : P1316985546857033383.Spec := by
  intro n
  simp only [A064756, Nat.add_sub_cancel]

end A064756

/-! ## A064756.P11876080511177724463

`∑[and(10^n, -2)+(n+1)*Δ[10^n]]`
-/

namespace A064756.P11876080511177724463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2) + (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064756.P11876080511177724463

namespace A064756

/-- `∑[and(10^n, -2)+(n+1)*Δ[10^n]]` -/
def P11876080511177724463.Spec : Prop :=
  ∀ n, P11876080511177724463.a n = A064756 (n + 1)

end A064756

/-! ## A064756.P16971520484327537148

`xor(n, (n+1)*A002283(n+1))`
-/

namespace A064756.P16971520484327537148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n + 1 : ℤ) * A002283 (n + 1))

end

end A064756.P16971520484327537148

namespace A064756

/-- `xor(n, (n+1)*A002283(n+1))` -/
def P16971520484327537148.Spec : Prop :=
  ∀ n, P16971520484327537148.a n = A064756 (n + 1)

end A064756

/-! ## A064756.P1109949164590056343

`abs((n+1)*A011557(n+1)-1)`
-/

namespace A064756.P1109949164590056343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A011557 (n + 1) - 1|

end

end A064756.P1109949164590056343

namespace A064756

/-- `abs((n+1)*A011557(n+1)-1)` -/
def P1109949164590056343.Spec : Prop :=
  ∀ n, P1109949164590056343.a n = A064756 (n + 1)

end A064756

/-! ## A064756.P3205538328700843643

`xor((n+1)*(A133384(n)-4), Δ[n²])`
-/

namespace A064756.P3205538328700843643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) * (A133384 n - 4)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A064756.P3205538328700843643

namespace A064756

/-- `xor((n+1)*(A133384(n)-4), Δ[n²])` -/
def P3205538328700843643.Spec : Prop :=
  ∀ n, P3205538328700843643.a n = A064756 (n + 1)

end A064756

/-! ## A064756.P7772796405103237564

`(n+1)*(A017934(A004275(n+2))-1/(n+1))`
-/

namespace A064756.P7772796405103237564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A017934 (A004275 (n + 2)).toNat : ℚ) - 1 / (n + 1 : ℚ))

end

end A064756.P7772796405103237564

namespace A064756

/-- `(n+1)*(A017934(A004275(n+2))-1/(n+1))` -/
def P7772796405103237564.Spec : Prop :=
  ∀ n, P7772796405103237564.a n = (A064756 (n + 1) : ℚ)

end A064756

/-! ## A064756.P12757340152117597541

`Δ[A052245(n)-n]`
-/

namespace A064756.P12757340152117597541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052245 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064756.P12757340152117597541

namespace A064756

/-- `Δ[A052245(n)-n]` -/
def P12757340152117597541.Spec : Prop :=
  ∀ n, P12757340152117597541.a n = A064756 (n + 1)

end A064756

/-! ## A064756.P16051694051316139326

`Δ[∑[A126431(n)]-n]`
-/

namespace A064756.P16051694051316139326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064756.P16051694051316139326

namespace A064756

/-- `Δ[∑[A126431(n)]-n]` -/
def P16051694051316139326.Spec : Prop :=
  ∀ n, P16051694051316139326.a n = A064756 (n + 1)

end A064756

/-!
# A064757: a(n) = n*11^n - 1.

The programs for A064757, the canonical program `A064757.P257597308733415405` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064757 has offset 1).

The definition of A064757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*11^(n+1)-1` (program `A064757.P257597308733415405`, by `A064757.P257597308733415405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064757.P257597308733415405

`(n+1)*11^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064757

/-- `(n+1)*11^(n+1)-1` -/
def P257597308733415405.Spec : Prop :=
  ∀ n, P257597308733415405.a n = A064757 (n + 1)

theorem P257597308733415405.correct : P257597308733415405.Spec := by
  intro n
  simp only [A064757, Nat.add_sub_cancel]

end A064757

/-! ## A064757.P2200855355139009093

`record[A064749(A328399(n))-2]`
-/

namespace A064757.P2200855355139009093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064749 (A328399 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064757.P2200855355139009093

namespace A064757

/-- `record[A064749(A328399(n))-2]` -/
def P2200855355139009093.Spec : Prop :=
  ∀ n, P2200855355139009093.a n = A064757 (n + 1)

end A064757

/-! ## A064757.P326832071594479314

`∑[Δ[A064749(n)]-A000007(n)]`
-/

namespace A064757.P326832071594479314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064757.P326832071594479314

namespace A064757

/-- `∑[Δ[A064749(n)]-A000007(n)]` -/
def P326832071594479314.Spec : Prop :=
  ∀ n, P326832071594479314.a n = A064757 (n + 1)

end A064757

/-!
# A064758: a(n) = n*12^n - 1.

The programs for A064758, the canonical program `A064758.P16934764560612669296` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064758 has offset 1).

The definition of A064758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*12^(n+1)-1` (program `A064758.P16934764560612669296`, by `A064758.P16934764560612669296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064758.P16934764560612669296

`(n+1)*12^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064758

/-- `(n+1)*12^(n+1)-1` -/
def P16934764560612669296.Spec : Prop :=
  ∀ n, P16934764560612669296.a n = A064758 (n + 1)

theorem P16934764560612669296.correct : P16934764560612669296.Spec := by
  intro n
  simp only [A064758, Nat.add_sub_cancel]

end A064758

/-! ## A064758.P3168803486807695419

`abs(2-A064750(n+1))`
-/

namespace A064758.P3168803486807695419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A064750 (n + 1)|

end

end A064758.P3168803486807695419

namespace A064758

/-- `abs(2-A064750(n+1))` -/
def P3168803486807695419.Spec : Prop :=
  ∀ n, P3168803486807695419.a n = A064758 (n + 1)

end A064758

/-! ## A064758.P14556604323317167588

`Δ[∑[n*A001021(n)]-(n-1)]`
-/

namespace A064758.P14556604323317167588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064758.P14556604323317167588

namespace A064758

/-- `Δ[∑[n*A001021(n)]-(n-1)]` -/
def P14556604323317167588.Spec : Prop :=
  ∀ n, P14556604323317167588.a n = A064758 (n + 1)

end A064758

/-! ## A064758.P3957060963757075955

`∑[Δ[A064750(n)]-A000007(n)]`
-/

namespace A064758.P3957060963757075955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064758.P3957060963757075955

namespace A064758

/-- `∑[Δ[A064750(n)]-A000007(n)]` -/
def P3957060963757075955.Spec : Prop :=
  ∀ n, P3957060963757075955.a n = A064758 (n + 1)

end A064758

/-! ## A064758.P16625101931439079647

`or(A064750(n+1)-2, A151909(n))`
-/

namespace A064758.P16625101931439079647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064750 (n + 1) - 2) (A151909 n)

end

end A064758.P16625101931439079647

namespace A064758

/-- `or(A064750(n+1)-2, A151909(n))` -/
def P16625101931439079647.Spec : Prop :=
  ∀ n, P16625101931439079647.a n = A064758 (n + 1)

end A064758

/-!
# A064760: Variant of A002034 with initial term 0.

The programs for A064760, there is no canonical definition to state claims against.
-/

/-! ## A064760.P13844296084557775706

`∑[1-Δ[A072480(n)]]`
-/

namespace A064760.P13844296084557775706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064760.P13844296084557775706

/-! ## A064760.P14799474801185012985

`1-A072480(n+1)+n`
-/

namespace A064760.P14799474801185012985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072480 (n + 1) + (n : ℤ)

end

end A064760.P14799474801185012985

/-! ## A064760.P15029850506605911308

`Δ[A029716(round(sqrt(n²+1)))]`
-/

namespace A064760.P15029850506605911308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029716 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064760.P15029850506605911308

/-! ## A064760.P263991767626475349

`floor(A122416(n+1)-acot(n))`
-/

namespace A064760.P263991767626475349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122416 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A064760.P263991767626475349

/-! ## A064760.P17785077059599413016

`A002034(n+1)%(2*n+1)`
-/

namespace A064760.P17785077059599413016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 (n + 1)) (2 * n + 1 : ℤ)

end

end A064760.P17785077059599413016

/-! ## A064760.P12341127611616504929

`A087156(A002034(n+1))`
-/

namespace A064760.P12341127611616504929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A002034 (n + 1)).toNat

end

end A064760.P12341127611616504929

/-! ## A064760.P9353853066159444299

`A199969(A122416(n+1))`
-/

namespace A064760.P9353853066159444299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A122416 (n + 1)).toNat

end

end A064760.P9353853066159444299

/-! ## A064760.P12879812930610273180

`A002034(n+1)-A000007(n)`
-/

namespace A064760.P12879812930610273180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A000007 n

end

end A064760.P12879812930610273180

/-! ## A064760.P9099201843398352723

`A122416(n+1)-A054977(n)`
-/

namespace A064760.P9099201843398352723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A054977 n

end

end A064760.P9099201843398352723

/-! ## A064760.P475614662226072591

`A002034(n+1)*A057427(n)`
-/

namespace A064760.P475614662226072591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) * A057427 n

end

end A064760.P475614662226072591

/-! ## A064760.P1565447149140909958

`and(A002034(n+1), A057428(n))`
-/

namespace A064760.P1565447149140909958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002034 (n + 1)) (A057428 n)

end

end A064760.P1565447149140909958

/-! ## A064760.P17172874873845504424

`A002034(n+1)-A000038(n)/2`
-/

namespace A064760.P17172874873845504424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A064760.P17172874873845504424

/-! ## A064760.P6262000277520528166

`A002034(n+1)+n-A028310(n)`
-/

namespace A064760.P6262000277520528166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) + ((n : ℤ) - A028310 n)

end

end A064760.P6262000277520528166

/-! ## A064760.P14312314885394734317

`A002034(n+1)-A238532(2*(n+1))`
-/

namespace A064760.P14312314885394734317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A238532 (2 * (n + 1))

end

end A064760.P14312314885394734317

/-! ## A064760.P15837653347726807657

`A002034(n+1)-A322860(2*n+1)`
-/

namespace A064760.P15837653347726807657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A322860 (2 * n + 1)

end

end A064760.P15837653347726807657

/-! ## A064760.P17910619845573355023

`A002034(n+1)-C(2, A003627(n+1))`
-/

namespace A064760.P17910619845573355023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - (Nat.choose 2 (A003627 (n + 1)).toNat : ℤ)

end

end A064760.P17910619845573355023

/-! ## A064760.P3275062917685817005

`A008475(A034699(n+1))-A057110(n+1)`
-/

namespace A064760.P3275062917685817005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A034699 (n + 1)).toNat - A057110 (n + 1)

end

end A064760.P3275062917685817005

/-! ## A064760.P12612119506264992550

`A001221(A008578(n+1))*A002034(n+1)`
-/

namespace A064760.P12612119506264992550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat * A002034 (n + 1)

end

end A064760.P12612119506264992550

/-! ## A064760.P3059666864694210530

`A002034(n+1)+A048799(n)-A071120(n)`
-/

namespace A064760.P3059666864694210530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) + (A048799 (n + 1) - A071120 (n + 1))

end

end A064760.P3059666864694210530

/-! ## A064760.P15957850104441305389

`A002034(n+1)*A049046(A215454(n+1))`
-/

namespace A064760.P15957850104441305389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) * A049046 (A215454 (n + 1)).toNat

end

end A064760.P15957850104441305389

/-!
# A064761: a(n) = 15*n^2.

The programs for A064761, the canonical program `A064761.P5984238371699821623` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064761 has offset 0).

The definition of A064761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²` (program `A064761.P5984238371699821623`, by `A064761.P5984238371699821623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064761.P5984238371699821623

`15*n²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064761

/-- `15*n²` -/
def P5984238371699821623.Spec : Prop :=
  ∀ n, (P5984238371699821623.a n : ℤ) = A064761 n

theorem P5984238371699821623.correct : P5984238371699821623.Spec := by
  intro n
  simp only [A064761]

end A064761

/-!
# A064762: a(n) = 21*n^2.

The programs for A064762, the canonical program `A064762.P18116716922960969571` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064762 has offset 0).

The definition of A064762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*n²` (program `A064762.P18116716922960969571`, by `A064762.P18116716922960969571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064762.P18116716922960969571

`21*n²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064762

/-- `21*n²` -/
def P18116716922960969571.Spec : Prop :=
  ∀ n, (P18116716922960969571.a n : ℤ) = A064762 n

theorem P18116716922960969571.correct : P18116716922960969571.Spec := by
  intro n
  simp only [A064762]

end A064762

/-!
# A064763: a(n) = 28*n^2.

The programs for A064763, the canonical program `A064763.P5638320516339495305` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064763 has offset 0).

The definition of A064763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n²` (program `A064763.P5638320516339495305`, by `A064763.P5638320516339495305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064763.P5638320516339495305

`28*n²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064763

/-- `28*n²` -/
def P5638320516339495305.Spec : Prop :=
  ∀ n, (P5638320516339495305.a n : ℤ) = A064763 n

theorem P5638320516339495305.correct : P5638320516339495305.Spec := by
  intro n
  simp only [A064763]

end A064763

/-!
# A064766: Fill up an infinite triangular array by rows by successively writing numbers 1, then 1 up to 2*3/2, then 1 up to 3*4/2, then 1 up to 4*5/2 and so on, at the k-th step writing the numbers from 1 up to the k-th triangular number. The final elements of the rows of this infinite triangle form the sequence.

The programs for A064766, the canonical program `A064766.P6005750168765779772` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064766 has offset 0).

The definition of A064766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064766.P6005750168765779772

`A332663(C(n+1, 2)+n)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064766

/-- `A332663(C(n+1, 2)+n)+1` -/
def P6005750168765779772.Spec : Prop :=
  ∀ n, P6005750168765779772.a n = A064766 n

theorem P6005750168765779772.correct : P6005750168765779772.Spec := by
  intro n
  simp only [A064766]

end A064766

/-! ## A064766.P7781720887494482535

`A332663(or(1, n)*ceil(n/2)+n)+1`
-/

namespace A064766.P7781720887494482535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉ + (n : ℤ)).toNat + 1

end

end A064766.P7781720887494482535

namespace A064766

/-- `A332663(or(1, n)*ceil(n/2)+n)+1` -/
def P7781720887494482535.Spec : Prop :=
  ∀ n, P7781720887494482535.a n = A064766 n

end A064766

/-! ## A064766.P49428211988447483

`A332662(n*(n+3))+1`
-/

namespace A064766.P49428211988447483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (n * (n + 3)) + 1

end

end A064766.P49428211988447483

namespace A064766

/-- `A332662(n*(n+3))+1` -/
def P49428211988447483.Spec : Prop :=
  ∀ n, P49428211988447483.a n = A064766 n

end A064766

/-! ## A064766.P287134067873694154

`A124171(∑[n+1])`
-/

namespace A064766.P287134067873694154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064766.P287134067873694154

namespace A064766

/-- `A124171(∑[n+1])` -/
def P287134067873694154.Spec : Prop :=
  ∀ n, P287134067873694154.a n = A064766 n

end A064766

/-! ## A064766.P1369485453512122322

`A124757(A238246(∑[n+1]))`
-/

namespace A064766.P1369485453512122322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A238246 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064766.P1369485453512122322

namespace A064766

/-- `A124757(A238246(∑[n+1]))` -/
def P1369485453512122322.Spec : Prop :=
  ∀ n, P1369485453512122322.a n = A064766 n

end A064766

/-!
# A064767: Order of automorphism group of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

The programs for A064767, the canonical program `A064767.P3059737301395273929` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064767 has offset 1).

The definition of A064767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064767.P3059737301395273929

`Δ[A002088(n)]*A011785(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064767

/-- `Δ[A002088(n)]*A011785(n+1)` -/
def P3059737301395273929.Spec : Prop :=
  ∀ n, P3059737301395273929.a n = A064767 (n + 1)

theorem P3059737301395273929.correct : P3059737301395273929.Spec := by
  intro n
  simp only [A064767, Nat.add_sub_cancel]

end A064767

/-! ## A064767.P2350801207971310031

`Δ[A005728(n)]*A011785(n+1)`
-/

namespace A064767.P2350801207971310031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011785 (n + 1)

end

end A064767.P2350801207971310031

namespace A064767

/-- `Δ[A005728(n)]*A011785(n+1)` -/
def P2350801207971310031.Spec : Prop :=
  ∀ n, P2350801207971310031.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P2296420655602066237

`A000010(n+1)*A011785(n+1)`
-/

namespace A064767.P2296420655602066237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A011785 (n + 1)

end

end A064767.P2296420655602066237

namespace A064767

/-- `A000010(n+1)*A011785(n+1)` -/
def P2296420655602066237.Spec : Prop :=
  ∀ n, P2296420655602066237.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P653521215315499016

`A000056(n+1)*A115226(n+1)`
-/

namespace A064767.P653521215315499016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000056 (n + 1) * A115226 (n + 1)

end

end A064767.P653521215315499016

namespace A064767

/-- `A000056(n+1)*A115226(n+1)` -/
def P653521215315499016.Spec : Prop :=
  ∀ n, P653521215315499016.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P15743074412822400405

`A000252(n+1)*A115224(n+1)`
-/

namespace A064767.P15743074412822400405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A115224 (n + 1)

end

end A064767.P15743074412822400405

namespace A064767

/-- `A000252(n+1)*A115224(n+1)` -/
def P15743074412822400405.Spec : Prop :=
  ∀ n, P15743074412822400405.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P9926839049783458596

`Δ[A100449(n)/4]*A011785(n+1)`
-/

namespace A064767.P9926839049783458596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A011785 (n + 1) : ℚ)

end

end A064767.P9926839049783458596

namespace A064767

/-- `Δ[A100449(n)/4]*A011785(n+1)` -/
def P9926839049783458596.Spec : Prop :=
  ∀ n, P9926839049783458596.a n = (A064767 (n + 1) : ℚ)

end A064767

/-! ## A064767.P18022113935563929255

`(A109606(n+1)+1)*A011785(n+1)`
-/

namespace A064767.P18022113935563929255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A011785 (n + 1)

end

end A064767.P18022113935563929255

namespace A064767

/-- `(A109606(n+1)+1)*A011785(n+1)` -/
def P18022113935563929255.Spec : Prop :=
  ∀ n, P18022113935563929255.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P1980707045463956368

`(A039649(n+1)-1)*A011785(n+1)`
-/

namespace A064767.P1980707045463956368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A011785 (n + 1)

end

end A064767.P1980707045463956368

namespace A064767

/-- `(A039649(n+1)-1)*A011785(n+1)` -/
def P1980707045463956368.Spec : Prop :=
  ∀ n, P1980707045463956368.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P6047079682803285178

`(1-A051953(n+1)+n)*A011785(n+1)`
-/

namespace A064767.P6047079682803285178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ)) * A011785 (n + 1)

end

end A064767.P6047079682803285178

namespace A064767

/-- `(1-A051953(n+1)+n)*A011785(n+1)` -/
def P6047079682803285178.Spec : Prop :=
  ∀ n, P6047079682803285178.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P11270937255361019608

`(n+1)*A007434(n+1)*A115226(n+1)`
-/

namespace A064767.P11270937255361019608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007434 (n + 1) * A115226 (n + 1)

end

end A064767.P11270937255361019608

namespace A064767

/-- `(n+1)*A007434(n+1)*A115226(n+1)` -/
def P11270937255361019608.Spec : Prop :=
  ∀ n, P11270937255361019608.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P7752023332910861241

`A000010(n+1)*A000056(n+1)*A115224(n+1)`
-/

namespace A064767.P7752023332910861241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000056 (n + 1) * A115224 (n + 1)

end

end A064767.P7752023332910861241

namespace A064767

/-- `A000010(n+1)*A000056(n+1)*A115224(n+1)` -/
def P7752023332910861241.Spec : Prop :=
  ∀ n, P7752023332910861241.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P1022710442338702683

`A001615(n+1)*A002618(n+1)*A115226(n+1)`
-/

namespace A064767.P1022710442338702683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A002618 (n + 1) * A115226 (n + 1)

end

end A064767.P1022710442338702683

namespace A064767

/-- `A001615(n+1)*A002618(n+1)*A115226(n+1)` -/
def P1022710442338702683.Spec : Prop :=
  ∀ n, P1022710442338702683.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P1515814752799431298

`A062570(n+1)*A065430(n+1)*A115224(n+1)`
-/

namespace A064767.P1515814752799431298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A065430 (n + 1) * A115224 (n + 1)

end

end A064767.P1515814752799431298

namespace A064767

/-- `A062570(n+1)*A065430(n+1)*A115224(n+1)` -/
def P1515814752799431298.Spec : Prop :=
  ∀ n, P1515814752799431298.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P8590244849269492530

`A062570(n+1)*A070732(n+1)*A115226(n+1)`
-/

namespace A064767.P8590244849269492530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A070732 (n + 1) * A115226 (n + 1)

end

end A064767.P8590244849269492530

namespace A064767

/-- `A062570(n+1)*A070732(n+1)*A115226(n+1)` -/
def P8590244849269492530.Spec : Prop :=
  ∀ n, P8590244849269492530.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P15405272161221719916

`A070732(n+1)*A082953(n+1)*A115224(n+1)`
-/

namespace A064767.P15405272161221719916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070732 (n + 1) * A082953 (n + 1) * A115224 (n + 1)

end

end A064767.P15405272161221719916

namespace A064767

/-- `A070732(n+1)*A082953(n+1)*A115224(n+1)` -/
def P15405272161221719916.Spec : Prop :=
  ∀ n, P15405272161221719916.a n = A064767 (n + 1)

end A064767

/-! ## A064767.P16421836488472379590

`A000252(n+1)/A000056(n+1)*A011785(n+1)`
-/

namespace A064767.P16421836488472379590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A011785 (n + 1) : ℚ)

end

end A064767.P16421836488472379590

namespace A064767

/-- `A000252(n+1)/A000056(n+1)*A011785(n+1)` -/
def P16421836488472379590.Spec : Prop :=
  ∀ n, P16421836488472379590.a n = (A064767 (n + 1) : ℚ)

end A064767

/-! ## A064767.P15247188491842820696

`A007434(n+1)/A001615(n+1)*A011785(n+1)`
-/

namespace A064767.P15247188491842820696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A011785 (n + 1) : ℚ)

end

end A064767.P15247188491842820696

namespace A064767

/-- `A007434(n+1)/A001615(n+1)*A011785(n+1)` -/
def P15247188491842820696.Spec : Prop :=
  ∀ n, P15247188491842820696.a n = (A064767 (n + 1) : ℚ)

end A064767

/-! ## A064767.P15374289455921062757

`A011785(n+1)/A115224(n+1)*A115226(n+1)`
-/

namespace A064767.P15374289455921062757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ) * (A115226 (n + 1) : ℚ)

end

end A064767.P15374289455921062757

namespace A064767

/-- `A011785(n+1)/A115224(n+1)*A115226(n+1)` -/
def P15374289455921062757.Spec : Prop :=
  ∀ n, P15374289455921062757.a n = (A064767 (n + 1) : ℚ)

end A064767

/-! ## A064767.P10157386827126787844

`A011785(n+1)/A011786(n+1)*A305186(n+1)`
-/

namespace A064767.P10157386827126787844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A011786 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A064767.P10157386827126787844

namespace A064767

/-- `A011785(n+1)/A011786(n+1)*A305186(n+1)` -/
def P10157386827126787844.Spec : Prop :=
  ∀ n, P10157386827126787844.a n = (A064767 (n + 1) : ℚ)

end A064767

/-! ## A064767.P16537873057885338514

`A000252(n+1)/A294705(n+1)*A305186(n+1)`
-/

namespace A064767.P16537873057885338514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A294705 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A064767.P16537873057885338514

namespace A064767

/-- `A000252(n+1)/A294705(n+1)*A305186(n+1)` -/
def P16537873057885338514.Spec : Prop :=
  ∀ n, P16537873057885338514.a n = (A064767 (n + 1) : ℚ)

end A064767

/-!
# A064768: Sum of primes dividing the repunit numbers with a prime number of digits [A031974] (with repetition).

The programs for A064768, there is no canonical definition to state claims against.
-/

/-! ## A064768.P216044308614366929

`A064798(A000040(n+1))`
-/

namespace A064768.P216044308614366929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064798 (A000040 (n + 1)).toNat

end

end A064768.P216044308614366929

/-! ## A064768.P15079256080886202649

`A064798(record[A006530(n+2)])`
-/

namespace A064768.P15079256080886202649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064768.P15079256080886202649

/-! ## A064768.P5462705904339090202

`A064798(record[A014963(n+2)])`
-/

namespace A064768.P5462705904339090202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064768.P5462705904339090202

/-! ## A064768.P13205434010081542693

`A064798(record[A020639(n+2)])`
-/

namespace A064768.P13205434010081542693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064768.P13205434010081542693

/-! ## A064768.P8550660769838267865

`A064798(root(A001248(n+1), 2))`
-/

namespace A064768.P8550660769838267865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064798 (SequenceMachineLib.roundAway ((A001248 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A064768.P8550660769838267865

/-!
# A064770: Replace each digit of n with the floor of its square root.

The programs for A064770, there is no canonical definition to state claims against.
-/

/-! ## A064770.P13347425460824278121

`∑[A136428(abs(1-n))]`
-/

namespace A064770.P13347425460824278121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064770.P13347425460824278121

/-! ## A064770.P9104087056696792143

`A136428(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A064770.P9104087056696792143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A136428 (n - 1) + a (n - 1)

end

end A064770.P9104087056696792143

/-! ## A064770.P17091066139976168898

`∑[A136428(n)]-A136428(n)`
-/

namespace A064770.P17091066139976168898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A136428 n

end

end A064770.P17091066139976168898

/-!
# A064771: Let S(n) = set of divisors of n, excluding n; sequence gives n such that there is a unique subset of S(n) that sums to n.

The programs for A064771, there is no canonical definition to state claims against.
-/

/-! ## A064771.P17987567778875351969

`eq[1, A378448(n+1)]+1`
-/

namespace A064771.P17987567778875351969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064771.P17987567778875351969

/-! ## A064771.P1739059665646187571

`filter[A204829(n+1), A378448(#)]`
-/

namespace A064771.P1739059665646187571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P1739059665646187571

/-! ## A064771.P7369811844992474815

`filter[A005835(n+1), A378448(#)]`
-/

namespace A064771.P7369811844992474815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P7369811844992474815

/-! ## A064771.P8127855609118724631

`filter[A023196(n+1), A378448(#)]`
-/

namespace A064771.P8127855609118724631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P8127855609118724631

/-! ## A064771.P12473835180631382109

`filter[A177052(n+1), A378448(#)]`
-/

namespace A064771.P12473835180631382109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P12473835180631382109

/-! ## A064771.P9015898464351275426

`filter[A326133(n+1), A378448(#)]`
-/

namespace A064771.P9015898464351275426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P9015898464351275426

/-! ## A064771.P18151556250506456327

`filter[A103288(n+1), A378448(#)]`
-/

namespace A064771.P18151556250506456327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P18151556250506456327

/-! ## A064771.P12030975264007685315

`filter[A177085(n+1), A378448(#)]`
-/

namespace A064771.P12030975264007685315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P12030975264007685315

/-! ## A064771.P2894872577080958388

`filter[A363171(n+1), A378448(#)]`
-/

namespace A064771.P2894872577080958388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P2894872577080958388

/-! ## A064771.P14224512468783503716

`filter[A334166(n+1), A378448(#)]`
-/

namespace A064771.P14224512468783503716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P14224512468783503716

/-! ## A064771.P4164749186381925867

`filter[A119357(n+1), A378448(#)]`
-/

namespace A064771.P4164749186381925867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P4164749186381925867

/-! ## A064771.P11244089810416693887

`filter[A051774(n+1), A378448(#)]`
-/

namespace A064771.P11244089810416693887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P11244089810416693887

/-! ## A064771.P1001444482539621802

`filter[A005279(n+1), A378448(#)]`
-/

namespace A064771.P1001444482539621802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P1001444482539621802

/-! ## A064771.P7682816224543594399

`filter[A039725(n+1), A378448(#)]`
-/

namespace A064771.P7682816224543594399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P7682816224543594399

/-! ## A064771.P3138507345461823558

`filter[A043720(n+1), A378448(#)]`
-/

namespace A064771.P3138507345461823558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P3138507345461823558

/-! ## A064771.P6880709135220710098

`filter[A053226(n+1), A378448(#)]`
-/

namespace A064771.P6880709135220710098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P6880709135220710098

/-! ## A064771.P5276041322178542526

`filter[A054741(n+1), A378448(#)]`
-/

namespace A064771.P5276041322178542526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378448 (f1 j).toNat = 1) n)

end

end A064771.P5276041322178542526

/-! ## A064771.P13678188265641907448

`eq[2, A033630(n)]`
-/

namespace A064771.P13678188265641907448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064771.P13678188265641907448

/-! ## A064771.P14695789070839390501

`eq[1, A065205(n+1)]+1`
-/

namespace A064771.P14695789070839390501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064771.P14695789070839390501

/-!
# A064772: Sum of primes dividing n^n+1 (with repetition).

The programs for A064772, there is no canonical definition to state claims against.
-/

/-! ## A064772.P16908922068553218171

`A001414(∑[abs(Δ[n^n])]+2)`
-/

namespace A064772.P16908922068553218171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A064772.P16908922068553218171

/-! ## A064772.P8959117799132901882

`A008475(∑[abs(Δ[n^n])]+2)`
-/

namespace A064772.P8959117799132901882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A064772.P8959117799132901882

/-!
# A064773: Numbers k such that k^k + p(k) is prime.

The programs for A064773, there is no canonical definition to state claims against.
-/

/-! ## A064773.P1572199791537113443

`48*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=14`
-/

namespace A064773.P1572199791537113443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 14] fun n a =>
  48 * a (n - 1)

end

end A064773.P1572199791537113443

/-!
# A064775: Number of positive integers k <= n such that all prime divisors of k are <= sqrt(k).

The programs for A064775, the canonical program `A064775.P13267556708224384151` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064775 has offset 1).

The definition of A064775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064775.P18395147065748544827

`n+1-A242493(n+1)`
-/

namespace A064775.P18395147065748544827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A242493 (n + 1)

end

end A064775.P18395147065748544827

namespace A064775

/-- `n+1-A242493(n+1)` -/
def P18395147065748544827.Spec : Prop :=
  ∀ n, P18395147065748544827.a n = A064775 (n + 1)

end A064775

/-! ## A064775.P13267556708224384151

`∑[1-A341642(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064775

/-- `∑[1-A341642(n+1)]` -/
def P13267556708224384151.Spec : Prop :=
  ∀ n, P13267556708224384151.a n = A064775 (n + 1)

theorem P13267556708224384151.correct : P13267556708224384151.Spec := by
  intro n
  simp only [A064775, Nat.add_sub_cancel]

end A064775

/-! ## A064775.P478742785137915954

`∑[char[lt[n, A052126(n+1)²]]]`
-/

namespace A064775.P478742785137915954
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P478742785137915954

namespace A064775

/-- `∑[char[lt[n, A052126(n+1)²]]]` -/
def P478742785137915954.Spec : Prop :=
  ∀ n, (P478742785137915954.a n : ℤ) = A064775 (n + 1)

end A064775

/-! ## A064775.P4215818026477897476

`∑[char[lt[A006530(n+1)², n+2]]]`
-/

namespace A064775.P4215818026477897476
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P4215818026477897476

namespace A064775

/-- `∑[char[lt[A006530(n+1)², n+2]]]` -/
def P4215818026477897476.Spec : Prop :=
  ∀ n, (P4215818026477897476.a n : ℤ) = A064775 (n + 1)

end A064775

/-! ## A064775.P4092188217189493476

`∑[1-A010051(A140271(n+1))]`
-/

namespace A064775.P4092188217189493476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (A140271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P4092188217189493476

namespace A064775

/-- `∑[1-A010051(A140271(n+1))]` -/
def P4092188217189493476.Spec : Prop :=
  ∀ n, P4092188217189493476.a n = A064775 (n + 1)

end A064775

/-! ## A064775.P4742082926968279164

`∑[A005171(gcd(n+1, A072501(n+1)))]`
-/

namespace A064775.P4742082926968279164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (Int.gcd (n + 1 : ℤ) (A072501 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P4742082926968279164

namespace A064775

/-- `∑[A005171(gcd(n+1, A072501(n+1)))]` -/
def P4742082926968279164.Spec : Prop :=
  ∀ n, P4742082926968279164.a n = A064775 (n + 1)

end A064775

/-! ## A064775.P4675263147375609814

`∑[C(A063962(n+1), A001221(n+1))]`
-/

namespace A064775.P4675263147375609814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063962 (n + 1)).toNat (A001221 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P4675263147375609814

namespace A064775

/-- `∑[C(A063962(n+1), A001221(n+1))]` -/
def P4675263147375609814.Spec : Prop :=
  ∀ n, (P4675263147375609814.a n : ℤ) = A064775 (n + 1)

end A064775

/-! ## A064775.P62885205766775986

`∑[(A110088(n+1)%2)^A097975(n+1)]`
-/

namespace A064775.P62885205766775986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A110088 (n + 1)) 2 : ℚ) ^ (A097975 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P62885205766775986

namespace A064775

/-- `∑[(A110088(n+1)%2)^A097975(n+1)]` -/
def P62885205766775986.Spec : Prop :=
  ∀ n, P62885205766775986.a n = (A064775 (n + 1) : ℚ)

end A064775

/-! ## A064775.P10919440423100015652

`∑[C(A097974(n+1), n+1-A076694(n+1))]`
-/

namespace A064775.P10919440423100015652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097974 (n + 1)).toNat ((n + 1 : ℤ) - A076694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P10919440423100015652

namespace A064775

/-- `∑[C(A097974(n+1), n+1-A076694(n+1))]` -/
def P10919440423100015652.Spec : Prop :=
  ∀ n, (P10919440423100015652.a n : ℤ) = A064775 (n + 1)

end A064775

/-!
# A064778: Largest m such that 1..m all divide n!.

The programs for A064778, the canonical program `A064778.P14139164401297173886` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064778 has offset 1).

The definition of A064778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064778.P14139164401297173886

`A266620(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064778

/-- `A266620(n+1)-1` -/
def P14139164401297173886.Spec : Prop :=
  ∀ n, P14139164401297173886.a n = A064778 (n + 1)

theorem P14139164401297173886.correct : P14139164401297173886.Spec := by
  intro n
  simp only [A064778, Nat.add_sub_cancel]

end A064778

/-! ## A064778.P1912313295997911600

`A071960(n+1)+1+n`
-/

namespace A064778.P1912313295997911600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (n + 1) + 1 + (n : ℤ)

end

end A064778.P1912313295997911600

namespace A064778

/-- `A071960(n+1)+1+n` -/
def P1912313295997911600.Spec : Prop :=
  ∀ n, P1912313295997911600.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P777740109742969967

`A151800(n+1)-(char[2]+1)`
-/

namespace A064778.P777740109742969967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A064778.P777740109742969967

namespace A064778

/-- `A151800(n+1)-(char[2]+1)` -/
def P777740109742969967.Spec : Prop :=
  ∀ n, P777740109742969967.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P7324153914895711214

`A066169(n+1)-A294619(n)`
-/

namespace A064778.P7324153914895711214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1) - A294619 n

end

end A064778.P7324153914895711214

namespace A064778

/-- `A066169(n+1)-A294619(n)` -/
def P7324153914895711214.Spec : Prop :=
  ∀ n, P7324153914895711214.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P8527132542836417028

`A000040(A000720(n+1)+1)-(char[2]+1)`
-/

namespace A064778.P8527132542836417028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 1) + 1).toNat - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A064778.P8527132542836417028

namespace A064778

/-- `A000040(A000720(n+1)+1)-(char[2]+1)` -/
def P8527132542836417028.Spec : Prop :=
  ∀ n, P8527132542836417028.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P15387389167124383773

`A068499(comp[A068499(n+1)+n]-n+1)`
-/

namespace A064778.P15387389167124383773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A064778.P15387389167124383773

namespace A064778

/-- `A068499(comp[A068499(n+1)+n]-n+1)` -/
def P15387389167124383773.Spec : Prop :=
  ∀ n, P15387389167124383773.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P11727479771346654716

`A007918(n+2)-(char[2]+1)`
-/

namespace A064778.P11727479771346654716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A064778.P11727479771346654716

namespace A064778

/-- `A007918(n+2)-(char[2]+1)` -/
def P11727479771346654716.Spec : Prop :=
  ∀ n, P11727479771346654716.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P9402085268426109828

`A013632(char[2]+1+n)+n`
-/

namespace A064778.P9402085268426109828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + (n : ℤ)

end

end A064778.P9402085268426109828

namespace A064778

/-- `A013632(char[2]+1+n)+n` -/
def P9402085268426109828.Spec : Prop :=
  ∀ n, P9402085268426109828.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P8161086565731180005

`A013632(n+1)-A135461(2*n)+n`
-/

namespace A064778.P8161086565731180005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - A135461 (2 * n) + (n : ℤ)

end

end A064778.P8161086565731180005

namespace A064778

/-- `A013632(n+1)-A135461(2*n)+n` -/
def P8161086565731180005.Spec : Prop :=
  ∀ n, P8161086565731180005.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P11201559803004783309

`A006874(A266620(n+1))`
-/

namespace A064778.P11201559803004783309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (A266620 (n + 1)).toNat

end

end A064778.P11201559803004783309

namespace A064778

/-- `A006874(A266620(n+1))` -/
def P11201559803004783309.Spec : Prop :=
  ∀ n, P11201559803004783309.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P16337970951098910442

`A013632(n+1)-A055668(2*n)+n`
-/

namespace A064778.P16337970951098910442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - A055668 (2 * n) + (n : ℤ)

end

end A064778.P16337970951098910442

namespace A064778

/-- `A013632(n+1)-A055668(2*n)+n` -/
def P16337970951098910442.Spec : Prop :=
  ∀ n, P16337970951098910442.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P3670963975752009563

`A000777(n)%A266620(n+1)`
-/

namespace A064778.P3670963975752009563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000777 n) (A266620 (n + 1))

end

end A064778.P3670963975752009563

namespace A064778

/-- `A000777(n)%A266620(n+1)` -/
def P3670963975752009563.Spec : Prop :=
  ∀ n, P3670963975752009563.a n = A064778 (n + 1)

end A064778

/-! ## A064778.P18391143096226804675

`A030662(n+1)%A266620(n+1)`
-/

namespace A064778.P18391143096226804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030662 (n + 1)) (A266620 (n + 1))

end

end A064778.P18391143096226804675

namespace A064778

/-- `A030662(n+1)%A266620(n+1)` -/
def P18391143096226804675.Spec : Prop :=
  ∀ n, P18391143096226804675.a n = A064778 (n + 1)

end A064778

/-!
# A064779: Primes such that the sum of their digits and the sum of the reciprocals of their digits is also prime.

The programs for A064779, there is no canonical definition to state claims against.
-/

/-! ## A064779.P6306794139718939368

`∩[A046704(n+1), A266815(n+1)]`
-/

namespace A064779.P6306794139718939368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064779.P6306794139718939368

/-!
# A064780: Number of times n occurs in A000195.

The programs for A064780, the canonical program `A064780.P6241550995251501969` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064780 has offset 0).

The definition of A064780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064780.P6241550995251501969

`floor(exp(n+1))-ceil(exp(n))+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064780

/-- `floor(exp(n+1))-ceil(exp(n))+1` -/
def P6241550995251501969.Spec : Prop :=
  ∀ n, P6241550995251501969.a n = A064780 n

theorem P6241550995251501969.correct : P6241550995251501969.Spec := by
  intro n
  simp only [A064780]

end A064780

/-! ## A064780.P8867310037223210419

`or(Δ[ceil(e^n)], char[1])`
-/

namespace A064780.P8867310037223210419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 ^ n⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A064780.P8867310037223210419

namespace A064780

/-- `or(Δ[ceil(e^n)], char[1])` -/
def P8867310037223210419.Spec : Prop :=
  ∀ n, P8867310037223210419.a n = A064780 n

end A064780

/-! ## A064780.P8241117532397700397

`Δ[A001671(n)]`
-/

namespace A064780.P8241117532397700397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064780.P8241117532397700397

namespace A064780

/-- `Δ[A001671(n)]` -/
def P8241117532397700397.Spec : Prop :=
  ∀ n, P8241117532397700397.a n = A064780 n

end A064780

/-! ## A064780.P10650059444013744724

`Δ[A005181(2*n+1)]`
-/

namespace A064780.P10650059444013744724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064780.P10650059444013744724

namespace A064780

/-- `Δ[A005181(2*n+1)]` -/
def P10650059444013744724.Spec : Prop :=
  ∀ n, P10650059444013744724.a n = A064780 n

end A064780

/-! ## A064780.P9278695390423141108

`Δ[floor(2*sinh(n))]`
-/

namespace A064780.P9278695390423141108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sinh (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064780.P9278695390423141108

namespace A064780

/-- `Δ[floor(2*sinh(n))]` -/
def P9278695390423141108.Spec : Prop :=
  ∀ n, P9278695390423141108.a n = A064780 n

end A064780

/-!
# A064781: Number of partially labeled rooted trees with n nodes (5 of which are labeled).

The programs for A064781, there is no canonical definition to state claims against.
-/

/-! ## A064781.P3687097195782994625

`A008295(eq[5, A002262(n)])`
-/

namespace A064781.P3687097195782994625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064781.P3687097195782994625

/-! ## A064781.P8901847274888134321

`A008295(eq[5, A141169(n)])`
-/

namespace A064781.P8901847274888134321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064781.P8901847274888134321

/-! ## A064781.P2294760680554460438

`A008295(eq[7, A140207(n)])`
-/

namespace A064781.P2294760680554460438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064781.P2294760680554460438

/-! ## A064781.P10574462809672967244

`A008295(A167614(n+4)+2)`
-/

namespace A064781.P10574462809672967244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A167614 (n + 4) + 2).toNat

end

end A064781.P10574462809672967244

/-! ## A064781.P12403590162846847876

`A008295(eq[5, A144328(n+1)])`
-/

namespace A064781.P12403590162846847876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064781.P12403590162846847876

/-!
# A064782: Number of partially labeled rooted trees with n nodes (6 of which are labeled).

The programs for A064782, there is no canonical definition to state claims against.
-/

/-! ## A064782.P14571433888186491193

`A008295(eq[6, A002262(n)])`
-/

namespace A064782.P14571433888186491193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064782.P14571433888186491193

/-! ## A064782.P12222305639779521416

`A008295(eq[8, A141169(n)])`
-/

namespace A064782.P12222305639779521416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064782.P12222305639779521416

/-! ## A064782.P2950699606334635820

`A008295(eq[11, A140207(n)])`
-/

namespace A064782.P2950699606334635820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064782.P2950699606334635820

/-! ## A064782.P301915862487755950

`A008295(eq[6, A144328(n+1)])`
-/

namespace A064782.P301915862487755950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064782.P301915862487755950

/-! ## A064782.P18053967750164063451

`A008295(eq[7, A002260(n+1)])`
-/

namespace A064782.P18053967750164063451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064782.P18053967750164063451

/-!
# A064783: Least prime signature numbers that are not a Jordan-Polya number.

The programs for A064783, there is no canonical definition to state claims against.
-/

/-! ## A064783.P4565829109284248159

`filter[A181826(n+2), A321081(#)]`
-/

namespace A064783.P4565829109284248159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321081 (f1 j).toNat = 1) n)

end

end A064783.P4565829109284248159

/-! ## A064783.P65696979859643126

`A126098(A000037(n+5))%A141546(n+1)`
-/

namespace A064783.P65696979859643126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126098 (A000037 (n + 5)).toNat) (A141546 (n + 1))

end

end A064783.P65696979859643126

/-! ## A064783.P7351310470527249216

`A308471(A308468(n+3))%A352585(2*n+3)`
-/

namespace A064783.P7351310470527249216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308471 (A308468 (n + 3)).toNat) (A352585 (2 * n + 3))

end

end A064783.P7351310470527249216

/-!
# A064784: Difference between n-th triangular number t(n) and the largest square <= t(n).

The programs for A064784, the canonical program `A064784.P5795352748328165414` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064784 has offset 1).

The definition of A064784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064784.P5795352748328165414

`A053186(A000217(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064784

/-- `A053186(A000217(n+1))` -/
def P5795352748328165414.Spec : Prop :=
  ∀ n, P5795352748328165414.a n = A064784 (n + 1)

theorem P5795352748328165414.correct : P5795352748328165414.Spec := by
  intro n
  simp only [A064784, Nat.add_sub_cancel]

end A064784

/-! ## A064784.P8379415483143736091

`∑[n+1]-floor(sqrt(∑[n+1]))²`
-/

namespace A064784.P8379415483143736091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ)

end

end A064784.P8379415483143736091

namespace A064784

/-- `∑[n+1]-floor(sqrt(∑[n+1]))²` -/
def P8379415483143736091.Spec : Prop :=
  ∀ n, P8379415483143736091.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P10171945649925598537

`∑[n+1-Δ[A065737(n+1)]]`
-/

namespace A064784.P10171945649925598537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064784.P10171945649925598537

namespace A064784

/-- `∑[n+1-Δ[A065737(n+1)]]` -/
def P10171945649925598537.Spec : Prop :=
  ∀ n, P10171945649925598537.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P17893572846434875669

`A053186(Δ[A000292(n)-A065737(n+1)])`
-/

namespace A064784.P17893572846434875669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A065737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (f1 (n + 1) - f1 n).toNat

end

end A064784.P17893572846434875669

namespace A064784

/-- `A053186(Δ[A000292(n)-A065737(n+1)])` -/
def P17893572846434875669.Spec : Prop :=
  ∀ n, P17893572846434875669.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P13555456288290815152

`A053186(∑[n+1])`
-/

namespace A064784.P13555456288290815152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064784.P13555456288290815152

namespace A064784

/-- `A053186(∑[n+1])` -/
def P13555456288290815152.Spec : Prop :=
  ∀ n, P13555456288290815152.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P316290154482451831

`∑{d}[n+2, A053186(C(#, n))]`
-/

namespace A064784.P316290154482451831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053186 (Nat.choose d n)

end

end A064784.P316290154482451831

namespace A064784

/-- `∑{d}[n+2, A053186(C(#, n))]` -/
def P316290154482451831.Spec : Prop :=
  ∀ n, P316290154482451831.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P2068053158463446303

`A053186(C(n+2, 2))%(2*(n+1))`
-/

namespace A064784.P2068053158463446303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 (Nat.choose (n + 2) 2)) (2 * (n + 1) : ℤ)

end

end A064784.P2068053158463446303

namespace A064784

/-- `A053186(C(n+2, 2))%(2*(n+1))` -/
def P2068053158463446303.Spec : Prop :=
  ∀ n, P2068053158463446303.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P17463757310636270384

`ceil(acot(n))*A053186(A253145(n))`
-/

namespace A064784.P17463757310636270384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A053186 (A253145 n).toNat

end

end A064784.P17463757310636270384

namespace A064784

/-- `ceil(acot(n))*A053186(A253145(n))` -/
def P17463757310636270384.Spec : Prop :=
  ∀ n, P17463757310636270384.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P12561522752884267362

`∑[n+1-Δ[A048760(A000217(n))]]`
-/

namespace A064784.P12561522752884267362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000217 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064784.P12561522752884267362

namespace A064784

/-- `∑[n+1-Δ[A048760(A000217(n))]]` -/
def P12561522752884267362.Spec : Prop :=
  ∀ n, P12561522752884267362.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P11593628634661545613

`A053186(Δ[A000292(n)])%p?[12*n+1]`
-/

namespace A064784.P11593628634661545613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 (f1 (n + 1) - f1 n).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A064784.P11593628634661545613

namespace A064784

/-- `A053186(Δ[A000292(n)])%p?[12*n+1]` -/
def P11593628634661545613.Spec : Prop :=
  ∀ n, P11593628634661545613.a n = A064784 (n + 1)

end A064784

/-! ## A064784.P8544821247564072757

`gcd(A008683(8*n+4), A053186(C(n+2, 2)))`
-/

namespace A064784.P8544821247564072757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (8 * n + 4)) (A053186 (Nat.choose (n + 2) 2))

end

end A064784.P8544821247564072757

namespace A064784

/-- `gcd(A008683(8*n+4), A053186(C(n+2, 2)))` -/
def P8544821247564072757.Spec : Prop :=
  ∀ n, (P8544821247564072757.a n : ℤ) = A064784 (n + 1)

end A064784

/-!
# A064785: Number of partially labeled trees with n nodes (6 of which are labeled).

The programs for A064785, there is no canonical definition to state claims against.
-/

/-! ## A064785.P7846361788825163668

`A034799(eq[6, A002262(n)])`
-/

namespace A064785.P7846361788825163668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064785.P7846361788825163668

/-! ## A064785.P16675868719037215063

`A034799(eq[8, A141169(n)])`
-/

namespace A064785.P16675868719037215063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064785.P16675868719037215063

/-! ## A064785.P13277398212817160937

`A034799(eq[11, A140207(n)])`
-/

namespace A064785.P13277398212817160937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064785.P13277398212817160937

/-! ## A064785.P24650250316705080

`A034799(eq[64, A059268(n)])`
-/

namespace A064785.P24650250316705080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064785.P24650250316705080

/-! ## A064785.P14330245700737357345

`A034799(A000124(n+6)+5)`
-/

namespace A064785.P14330245700737357345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A000124 (n + 6) + 5).toNat

end

end A064785.P14330245700737357345

/-!
# A064786: Inverse permutation to A054084.

The programs for A064786, the canonical program `A064786.P10676103472922795577` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064786 has offset 1).

The definition of A064786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064786.P5756411309858837585

`abs(xor(1, -A072062(n+1)))`
-/

namespace A064786.P5756411309858837585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A072062 (n + 1))|

end

end A064786.P5756411309858837585

namespace A064786

/-- `abs(xor(1, -A072062(n+1)))` -/
def P5756411309858837585.Spec : Prop :=
  ∀ n, P5756411309858837585.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P17537571731089384512

`A014675(n)+2*A193564(n+1)`
-/

namespace A064786.P17537571731089384512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + 2 * A193564 (n + 1)

end

end A064786.P17537571731089384512

namespace A064786

/-- `A014675(n)+2*A193564(n+1)` -/
def P17537571731089384512.Spec : Prop :=
  ∀ n, P17537571731089384512.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P10676103472922795577

`2*A026242(n+1)-A003849(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064786

/-- `2*A026242(n+1)-A003849(n)` -/
def P10676103472922795577.Spec : Prop :=
  ∀ n, P10676103472922795577.a n = A064786 (n + 1)

theorem P10676103472922795577.correct : P10676103472922795577.Spec := by
  intro n
  simp only [A064786, Nat.add_sub_cancel]

end A064786

/-! ## A064786.P14112130228789380298

`A004277(A026242(n+1))-A003849(n)`
-/

namespace A064786.P14112130228789380298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026242 (n + 1)).toNat - A003849 n

end

end A064786.P14112130228789380298

namespace A064786

/-- `A004277(A026242(n+1))-A003849(n)` -/
def P14112130228789380298.Spec : Prop :=
  ∀ n, P14112130228789380298.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P7982501450382217438

`A005408(A026242(n+1))-A003842(n)`
-/

namespace A064786.P7982501450382217438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A026242 (n + 1)).toNat - A003842 n

end

end A064786.P7982501450382217438

namespace A064786

/-- `A005408(A026242(n+1))-A003842(n)` -/
def P7982501450382217438.Spec : Prop :=
  ∀ n, P7982501450382217438.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P4120986618357113308

`A000007(n+1)-xor(1, -A072062(n+1))`
-/

namespace A064786.P4120986618357113308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - Int.xor 1 (-A072062 (n + 1))

end

end A064786.P4120986618357113308

namespace A064786

/-- `A000007(n+1)-xor(1, -A072062(n+1))` -/
def P4120986618357113308.Spec : Prop :=
  ∀ n, P4120986618357113308.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P15054973107717307888

`A064579(n+3)-2`
-/

namespace A064786.P15054973107717307888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064579 (n + 3) - 2

end

end A064786.P15054973107717307888

namespace A064786

/-- `A064579(n+3)-2` -/
def P15054973107717307888.Spec : Prop :=
  ∀ n, P15054973107717307888.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P12157396497481600360

`A064579(A054084(A064579(n+1)))`
-/

namespace A064786.P12157396497481600360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064579 (A054084 (A064579 (n + 1)).toNat).toNat

end

end A064786.P12157396497481600360

namespace A064786

/-- `A064579(A054084(A064579(n+1)))` -/
def P12157396497481600360.Spec : Prop :=
  ∀ n, P12157396497481600360.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P12551364582274179904

`A014681(A072062(n+1))`
-/

namespace A064786.P12551364582274179904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A072062 (n + 1)).toNat

end

end A064786.P12551364582274179904

namespace A064786

/-- `A014681(A072062(n+1))` -/
def P12551364582274179904.Spec : Prop :=
  ∀ n, P12551364582274179904.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P12062230692062692609

`A103889(A072062(n+1)%(5*n+2))`
-/

namespace A064786.P12062230692062692609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (Int.tmod (A072062 (n + 1)) (5 * n + 2 : ℤ)).toNat

end

end A064786.P12062230692062692609

namespace A064786

/-- `A103889(A072062(n+1)%(5*n+2))` -/
def P12062230692062692609.Spec : Prop :=
  ∀ n, P12062230692062692609.a n = A064786 (n + 1)

end A064786

/-! ## A064786.P6229113528909219674

`A072062(A002251(n+1))`
-/

namespace A064786.P6229113528909219674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (A002251 (n + 1)).toNat

end

end A064786.P6229113528909219674

namespace A064786

/-- `A072062(A002251(n+1))` -/
def P6229113528909219674.Spec : Prop :=
  ∀ n, P6229113528909219674.a n = A064786 (n + 1)

end A064786

/-!
# A064787: Inverse permutation to A053212.

The programs for A064787, there is no canonical definition to state claims against.
-/

/-! ## A064787.P9268142011144580066

`A286605(A259939(n))`
-/

namespace A064787.P9268142011144580066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A259939 n).toNat

end

end A064787.P9268142011144580066

/-! ## A064787.P1316094759672892908

`A061071(A005179(n+1))`
-/

namespace A064787.P1316094759672892908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A005179 (n + 1)).toNat

end

end A064787.P1316094759672892908

/-! ## A064787.P17522082282190835054

`A286605(A037019(n+1))`
-/

namespace A064787.P17522082282190835054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A037019 (n + 1)).toNat

end

end A064787.P17522082282190835054

/-! ## A064787.P12294604150515886082

`A286605(A069654(n+1))`
-/

namespace A064787.P12294604150515886082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A069654 (n + 1)).toNat

end

end A064787.P12294604150515886082

/-! ## A064787.P8279857379225073867

`A286605(A136641(n+1))`
-/

namespace A064787.P8279857379225073867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A136641 (n + 1)).toNat

end

end A064787.P8279857379225073867

/-!
# A064788: Inverse permutation to A060736.

The programs for A064788, there is no canonical definition to state claims against.
-/

/-! ## A064788.P1455951219474263941

`A064790(n+1)+2*n-comp[round(sqrt(n+1))²+n]`
-/

namespace A064788.P1455951219474263941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064790 (n + 1) + ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A064788.P1455951219474263941

/-! ## A064788.P5047126252731100498

`A064790(A020703(n+1))`
-/

namespace A064788.P5047126252731100498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064790 (A020703 (n + 1)).toNat

end

end A064788.P5047126252731100498

/-! ## A064788.P15729112799205567791

`A196199(n)+A064790(n+1)`
-/

namespace A064788.P15729112799205567791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A064790 (n + 1)

end

end A064788.P15729112799205567791

/-! ## A064788.P12399858254613222367

`A194258(n+1)+A064790(n+1)-A194195(n+1)`
-/

namespace A064788.P12399858254613222367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1) + (A064790 (n + 1) - A194195 (n + 1))

end

end A064788.P12399858254613222367

/-! ## A064788.P18286926798995767088

`A194280(n+1)+A220603(n+1)-A194195(n+1)`
-/

namespace A064788.P18286926798995767088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1) + (A220603 (n + 1) - A194195 (n + 1))

end

end A064788.P18286926798995767088

/-! ## A064788.P1966724382209509022

`A194258(n+1)+A194280(n+1)-A220604(n+1)`
-/

namespace A064788.P1966724382209509022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1) + (A194280 (n + 1) - A220604 (n + 1))

end

end A064788.P1966724382209509022

/-! ## A064788.P5173880270313588198

`A038722(A064790(n+1))`
-/

namespace A064788.P5173880270313588198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A064790 (n + 1)).toNat

end

end A064788.P5173880270313588198

/-! ## A064788.P16545805785314056613

`A211377(A216252(n+1))`
-/

namespace A064788.P16545805785314056613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216252 (n + 1)).toNat

end

end A064788.P16545805785314056613

/-! ## A064788.P10394318956147892495

`A211377(A216253(A060736(A211377(A216253(n+1)))))`
-/

namespace A064788.P10394318956147892495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216253 (A060736 (A211377 (A216253 (n + 1)).toNat).toNat).toNat).toNat

end

end A064788.P10394318956147892495

/-! ## A064788.P11394041712738676917

`A060736(round(sqrt(n+1))²+1+n)/2`
-/

namespace A064788.P11394041712738676917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060736 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1 + (n : ℤ)).toNat : ℚ) / 2

end

end A064788.P11394041712738676917

/-! ## A064788.P10199219674473159096

`A188568(A194280(n+1))`
-/

namespace A064788.P10199219674473159096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A194280 (n + 1)).toNat

end

end A064788.P10199219674473159096

/-! ## A064788.P14697516174986144506

`A185180(A214928(n+1))`
-/

namespace A064788.P14697516174986144506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A214928 (n + 1)).toNat

end

end A064788.P14697516174986144506

/-! ## A064788.P5783710481211057083

`A188568(A064578(A064578(A057028(A214929(n+1)))))`
-/

namespace A064788.P5783710481211057083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A064578 (A064578 (A057028 (A214929 (n + 1)).toNat).toNat).toNat).toNat

end

end A064788.P5783710481211057083

/-!
# A064789: Inverse permutation to A057028.

The programs for A064789, the canonical program `A064789.P9104811540179186593` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064789 has offset 1).

The definition of A064789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064789.P11545983679594598233

`A038722(A064578(n+1))`
-/

namespace A064789.P11545983679594598233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A064578 (n + 1)).toNat

end

end A064789.P11545983679594598233

namespace A064789

/-- `A038722(A064578(n+1))` -/
def P11545983679594598233.Spec : Prop :=
  ∀ n, P11545983679594598233.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P107909628537797005

`A130517(n+1)+A057944(n)`
-/

namespace A064789.P107909628537797005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A057944 n

end

end A064789.P107909628537797005

namespace A064789

/-- `A130517(n+1)+A057944(n)` -/
def P107909628537797005.Spec : Prop :=
  ∀ n, P107909628537797005.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P9104811540179186593

`A057944(n)+abs(A056951(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064789

/-- `A057944(n)+abs(A056951(n+1))` -/
def P9104811540179186593.Spec : Prop :=
  ∀ n, P9104811540179186593.a n = A064789 (n + 1)

theorem P9104811540179186593.correct : P9104811540179186593.Spec := by
  intro n
  simp only [A064789, Nat.add_sub_cancel]

end A064789

/-! ## A064789.P15502405461805676178

`A265129(n+1)-A064578(n+1)`
-/

namespace A064789.P15502405461805676178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A064578 (n + 1)

end

end A064789.P15502405461805676178

namespace A064789

/-- `A265129(n+1)-A064578(n+1)` -/
def P15502405461805676178.Spec : Prop :=
  ∀ n, P15502405461805676178.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P5535242901406617636

`A130517(n+1)+n-A002262(n)`
-/

namespace A064789.P5535242901406617636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + ((n : ℤ) - A002262 n)

end

end A064789.P5535242901406617636

namespace A064789

/-- `A130517(n+1)+n-A002262(n)` -/
def P5535242901406617636.Spec : Prop :=
  ∀ n, P5535242901406617636.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P1326363835586086802

`A002024(n+1)²+1-A064578(n+1)`
-/

namespace A064789.P1326363835586086802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A064578 (n + 1))

end

end A064789.P1326363835586086802

namespace A064789

/-- `A002024(n+1)²+1-A064578(n+1)` -/
def P1326363835586086802.Spec : Prop :=
  ∀ n, P1326363835586086802.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P9683629144614443984

`A130517(n+1)+A000217(A003056(n))`
-/

namespace A064789.P9683629144614443984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A000217 (A003056 n).toNat

end

end A064789.P9683629144614443984

namespace A064789

/-- `A130517(n+1)+A000217(A003056(n))` -/
def P9683629144614443984.Spec : Prop :=
  ∀ n, P9683629144614443984.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P15875060357604003617

`A056011(n+1)+A056023(n+1)-A064578(n+1)`
-/

namespace A064789.P15875060357604003617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A056023 (n + 1) - A064578 (n + 1))

end

end A064789.P15875060357604003617

namespace A064789

/-- `A056011(n+1)+A056023(n+1)-A064578(n+1)` -/
def P15875060357604003617.Spec : Prop :=
  ∀ n, P15875060357604003617.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P13414578910106418560

`A185180(A038722(n+1))`
-/

namespace A064789.P13414578910106418560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A038722 (n + 1)).toNat

end

end A064789.P13414578910106418560

namespace A064789

/-- `A185180(A038722(n+1))` -/
def P13414578910106418560.Spec : Prop :=
  ∀ n, P13414578910106418560.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P9822470482485033324

`A185180(n+1)-A068344(n)`
-/

namespace A064789.P9822470482485033324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) - A068344 n

end

end A064789.P9822470482485033324

namespace A064789

/-- `A185180(n+1)-A068344(n)` -/
def P9822470482485033324.Spec : Prop :=
  ∀ n, P9822470482485033324.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P15660939283008973359

`A185180(A093995(n+1)-n)`
-/

namespace A064789.P15660939283008973359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A064789.P15660939283008973359

namespace A064789

/-- `A185180(A093995(n+1)-n)` -/
def P15660939283008973359.Spec : Prop :=
  ∀ n, P15660939283008973359.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P8772776433544888231

`A185180(A002024(n+1)²-n)`
-/

namespace A064789.P8772776433544888231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A064789.P8772776433544888231

namespace A064789

/-- `A185180(A002024(n+1)²-n)` -/
def P8772776433544888231.Spec : Prop :=
  ∀ n, P8772776433544888231.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P17299235026468834409

`A185180(A265129(n+1)-(n+1))`
-/

namespace A064789.P17299235026468834409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A064789.P17299235026468834409

namespace A064789

/-- `A185180(A265129(n+1)-(n+1))` -/
def P17299235026468834409.Spec : Prop :=
  ∀ n, P17299235026468834409.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P7576757533070388187

`A185180(A056023(A056011(n+1)))`
-/

namespace A064789.P7576757533070388187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A064789.P7576757533070388187

namespace A064789

/-- `A185180(A056023(A056011(n+1)))` -/
def P7576757533070388187.Spec : Prop :=
  ∀ n, P7576757533070388187.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P10281628873731463544

`A185180(A057028(A185180(n+1)))`
-/

namespace A064789.P10281628873731463544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A064789.P10281628873731463544

namespace A064789

/-- `A185180(A057028(A185180(n+1)))` -/
def P10281628873731463544.Spec : Prop :=
  ∀ n, P10281628873731463544.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P15467495194992863044

`A130517(n+1)+A083920(A127739(n+1))`
-/

namespace A064789.P15467495194992863044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A083920 (A127739 (n + 1)).toNat

end

end A064789.P15467495194992863044

namespace A064789

/-- `A130517(n+1)+A083920(A127739(n+1))` -/
def P15467495194992863044.Spec : Prop :=
  ∀ n, P15467495194992863044.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P6515173802625208965

`A130517(n+1)+A185180(n+1)-A220073(n+1)`
-/

namespace A064789.P6515173802625208965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + (A185180 (n + 1) - A220073 (n + 1))

end

end A064789.P6515173802625208965

namespace A064789

/-- `A130517(n+1)+A185180(n+1)-A220073(n+1)` -/
def P6515173802625208965.Spec : Prop :=
  ∀ n, P6515173802625208965.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P3273200053026310194

`A130517(n+1)+A061579(A061579(n)+A002262(n))`
-/

namespace A064789.P3273200053026310194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A061579 (A061579 n + A002262 n).toNat

end

end A064789.P3273200053026310194

namespace A064789

/-- `A130517(n+1)+A061579(A061579(n)+A002262(n))` -/
def P3273200053026310194.Spec : Prop :=
  ∀ n, P3273200053026310194.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P606301276737299813

`A185180(A188568(A064790(A081344(n+1))))`
-/

namespace A064789.P606301276737299813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A188568 (A064790 (A081344 (n + 1)).toNat).toNat).toNat

end

end A064789.P606301276737299813

namespace A064789

/-- `A185180(A188568(A064790(A081344(n+1))))` -/
def P606301276737299813.Spec : Prop :=
  ∀ n, P606301276737299813.a n = A064789 (n + 1)

end A064789

/-! ## A064789.P1814794781649782204

`A057944(n)+A004737(2*n+1)`
-/

namespace A064789.P1814794781649782204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004737 (2 * n + 1)

end

end A064789.P1814794781649782204

namespace A064789

/-- `A057944(n)+A004737(2*n+1)` -/
def P1814794781649782204.Spec : Prop :=
  ∀ n, P1814794781649782204.a n = A064789 (n + 1)

end A064789

/-!
# A064790: Inverse permutation to A060734.

The programs for A064790, there is no canonical definition to state claims against.
-/

/-! ## A064790.P12387743382815811520

`A064788(n+1)-(2*n-comp[round(sqrt(n+1))²+n])`
-/

namespace A064790.P12387743382815811520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (n + 1) - ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A064790.P12387743382815811520

/-! ## A064790.P6548036428222582385

`A064788(A020703(n+1))`
-/

namespace A064790.P6548036428222582385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (A020703 (n + 1)).toNat

end

end A064790.P6548036428222582385

/-! ## A064790.P17588675147993178427

`A381232(n)+A064788(n+1)`
-/

namespace A064790.P17588675147993178427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 n + A064788 (n + 1)

end

end A064790.P17588675147993178427

/-! ## A064790.P3666547722782124377

`abs(A064788(n+1)-A196199(n))`
-/

namespace A064790.P3666547722782124377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064788 (n + 1) - A196199 n|

end

end A064790.P3666547722782124377

/-! ## A064790.P5543202233515415758

`val(A006530(n+1), 8)+A064788(n+1)-A196199(n)`
-/

namespace A064790.P5543202233515415758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 8 : ℤ) + (A064788 (n + 1) - A196199 n)

end

end A064790.P5543202233515415758

/-! ## A064790.P3130514651644653575

`A038722(A064788(n+1))`
-/

namespace A064790.P3130514651644653575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A064788 (n + 1)).toNat

end

end A064790.P3130514651644653575

/-! ## A064790.P1746974853618620422

`A061579(A064788(n+1)-1)+1`
-/

namespace A064790.P1746974853618620422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A064788 (n + 1) - 1).toNat + 1

end

end A064790.P1746974853618620422

/-! ## A064790.P8033899310509309755

`A194280(A060734(A194280(n+1)))`
-/

namespace A064790.P8033899310509309755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A060734 (A194280 (n + 1)).toNat).toNat

end

end A064790.P8033899310509309755

/-! ## A064790.P11220729425131407468

`A064578(A064578(A057028(A214928(n+1))))`
-/

namespace A064790.P11220729425131407468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (A064578 (A057028 (A214928 (n + 1)).toNat).toNat).toNat

end

end A064790.P11220729425131407468

/-! ## A064790.P14767809759302457885

`A211377(A216252(A060734(A211377(A216252(n+1)))))`
-/

namespace A064790.P14767809759302457885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216252 (A060734 (A211377 (A216252 (n + 1)).toNat).toNat).toNat).toNat

end

end A064790.P14767809759302457885

/-! ## A064790.P11139265744008296324

`A211377(A216253(A060734(A211377(A216253(n+1)))))`
-/

namespace A064790.P11139265744008296324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216253 (A060734 (A211377 (A216253 (n + 1)).toNat).toNat).toNat).toNat

end

end A064790.P11139265744008296324

/-! ## A064790.P10599981947453598012

`A188568(A185180(A214929(n+1)))`
-/

namespace A064790.P10599981947453598012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A185180 (A214929 (n + 1)).toNat).toNat

end

end A064790.P10599981947453598012

/-! ## A064790.P17207464271141878714

`A188568(A329116(n)+A194280(n+1))`
-/

namespace A064790.P17207464271141878714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A329116 n + A194280 (n + 1)).toNat

end

end A064790.P17207464271141878714

/-! ## A064790.P9978007112600580974

`A185180(A214928(n+1))-A196199(n)`
-/

namespace A064790.P9978007112600580974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A214928 (n + 1)).toNat - A196199 n

end

end A064790.P9978007112600580974

/-!
# A064792: Append more digits to the n-th prime (leading zeros are permitted) until another prime is reached.

The programs for A064792, there is no canonical definition to state claims against.
-/

/-! ## A064792.P16322155259644692361

`A030665(p?[comp[n²]])`
-/

namespace A064792.P16322155259644692361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064792.P16322155259644692361

/-! ## A064792.P4536851702524988331

`A030665(record[∑{p}[n+2, #]])`
-/

namespace A064792.P4536851702524988331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A064792.P4536851702524988331

/-! ## A064792.P12122374191030867157

`A030665(record[A051698(n)])`
-/

namespace A064792.P12122374191030867157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P12122374191030867157

/-! ## A064792.P2979216054109169734

`A030665(A000040(n+1))`
-/

namespace A064792.P2979216054109169734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A000040 (n + 1)).toNat

end

end A064792.P2979216054109169734

/-! ## A064792.P14712156002338177237

`A030665(A008578(n+2))`
-/

namespace A064792.P14712156002338177237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A008578 (n + 2)).toNat

end

end A064792.P14712156002338177237

/-! ## A064792.P11479791161774471089

`A030665(A182986(n+2))`
-/

namespace A064792.P11479791161774471089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A182986 (n + 2)).toNat

end

end A064792.P11479791161774471089

/-! ## A064792.P14551233678030220032

`A030665(eq[n, A084413(n)])`
-/

namespace A064792.P14551233678030220032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064792.P14551233678030220032

/-! ## A064792.P7466189259101909326

`A030665(record[A006530(n+2)])`
-/

namespace A064792.P7466189259101909326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P7466189259101909326

/-! ## A064792.P12478278913249325442

`A030665(record[A014963(n+2)])`
-/

namespace A064792.P12478278913249325442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P12478278913249325442

/-! ## A064792.P18421056904716368231

`A030665(record[A020639(n+2)])`
-/

namespace A064792.P18421056904716368231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P18421056904716368231

/-! ## A064792.P13593256212699660631

`A030665(record[Δ[A002088(n)]+1])`
-/

namespace A064792.P13593256212699660631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P13593256212699660631

/-! ## A064792.P12401711948505310974

`A030665(record[Δ[A027424(n+1)]])`
-/

namespace A064792.P12401711948505310974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P12401711948505310974

/-! ## A064792.P17190273815974817848

`A030665(record[Δ[A034387(n+1)]])`
-/

namespace A064792.P17190273815974817848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064792.P17190273815974817848

/-! ## A064792.P4533036895121803923

`A030665(eq[1, char[A018800(n+1)]])`
-/

namespace A064792.P4533036895121803923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064792.P4533036895121803923

/-! ## A064792.P15270127153936582891

`A030665(A064735(n+1)-A252629(n+1))`
-/

namespace A064792.P15270127153936582891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A064735 (n + 1) - A252629 (n + 1)).toNat

end

end A064792.P15270127153936582891

/-! ## A064792.P8993785766422703540

`p?[∑{e}[n+1, #]*A030665(n+1)]`
-/

namespace A064792.P8993785766422703540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A030665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064792.P8993785766422703540

/-!
# A064794: Minimal representatives for the finite cycles in the permutation defined by A064413.

The programs for A064794, there is no canonical definition to state claims against.
-/

/-! ## A064794.P13635693499751677862

`∩[A046892(n+1), A064669(n+1)]`
-/

namespace A064794.P13635693499751677862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064794.P13635693499751677862

/-! ## A064794.P10972114402538791790

`A064669(A243058(n+1)%A055728(n+4))`
-/

namespace A064794.P10972114402538791790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064669 (Int.tmod (A243058 (n + 1)) (A055728 (n + 4))).toNat

end

end A064794.P10972114402538791790

/-! ## A064794.P965569380735445204

`A064669(A169829(n+1))`
-/

namespace A064794.P965569380735445204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064669 (A169829 (n + 1)).toNat

end

end A064794.P965569380735445204

/-!
# A064795: Home primes in base 2: primes reached when you start with n and (working in base 2) concatenate its prime factors (A048985); repeat until a prime is reached (or -1 if no prime is ever reached).

The programs for A064795, there is no canonical definition to state claims against.
-/

/-! ## A064795.P291565394450405444

`A007088(A048986(n+1))`
-/

namespace A064795.P291565394450405444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048986 (n + 1)).toNat

end

end A064795.P291565394450405444

/-! ## A064795.P9917096711118377795

`A185544(2*A048986(n+1))`
-/

namespace A064795.P9917096711118377795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A048986 (n + 1)).toNat

end

end A064795.P9917096711118377795

/-! ## A064795.P1745073760185631873

`A064841(∏{d}[A048986(n+1), #])`
-/

namespace A064795.P1745073760185631873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064841 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A064795.P1745073760185631873

/-! ## A064795.P13090392982796258461

`A287874(∏{d}[A048986(n+1), #])`
-/

namespace A064795.P13090392982796258461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A064795.P13090392982796258461

/-! ## A064795.P17708235053583006786

`A064841(∏{p}[A048986(n+1), #])`
-/

namespace A064795.P17708235053583006786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064841 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A064795.P17708235053583006786

/-!
# A064796: Largest integer m such that every permutation (p_1, ..., p_n) of (1, ..., n) satisfies p_i * p_{i+1} >= m for some i, 1 <= i <= n, where p_{n+1} = p_1.

The programs for A064796, the canonical program `A064796.P2967550620710016835` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064796 has offset 1).

The definition of A064796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064796.P2967550620710016835

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8, a(4)=12, a(5)=15`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A064796

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2967550620710016835.Spec : Prop :=
  ∀ n, P2967550620710016835.a n = A064796 (n + 1)

theorem P2967550620710016835.correct : P2967550620710016835.Spec := by
  intro n
  simp only [A064796, Nat.add_sub_cancel]

end A064796

/-! ## A064796.P12268534824075303423

`∑[a(n-2)+1]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2, a(4)=4`
-/

namespace A064796.P12268534824075303423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2, 4] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064796.P12268534824075303423

namespace A064796

/-- `∑[a(n-2)+1]` -/
def P12268534824075303423.Spec : Prop :=
  ∀ n, (P12268534824075303423.a n : ℤ) = A064796 (n + 1)

end A064796

/-! ## A064796.P8792547055157963882

`a(n-2)+2+n` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8`
-/

namespace A064796.P8792547055157963882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 8] fun n a =>
  a (n - 2) + 2 + n

end

end A064796.P8792547055157963882

namespace A064796

/-- `a(n-2)+2+n` -/
def P8792547055157963882.Spec : Prop :=
  ∀ n, (P8792547055157963882.a n : ℤ) = A064796 (n + 1)

end A064796

/-! ## A064796.P3441454454729256238

`∑[2-(a(n-1)-n)]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A064796.P3441454454729256238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  2 - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064796.P3441454454729256238

namespace A064796

/-- `∑[2-(a(n-1)-n)]` -/
def P3441454454729256238.Spec : Prop :=
  ∀ n, P3441454454729256238.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P2891962012469155333

`A184676(n+1)+A157928(n)`
-/

namespace A064796.P2891962012469155333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) + A157928 n

end

end A064796.P2891962012469155333

namespace A064796

/-- `A184676(n+1)+A157928(n)` -/
def P2891962012469155333.Spec : Prop :=
  ∀ n, P2891962012469155333.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P4081997712111913761

`A184676(n+1)+1-char[A151811(n)]`
-/

namespace A064796.P4081997712111913761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A064796.P4081997712111913761

namespace A064796

/-- `A184676(n+1)+1-char[A151811(n)]` -/
def P4081997712111913761.Spec : Prop :=
  ∀ n, P4081997712111913761.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P5468413378721842475

`(A265283(n)-A110654(n))*A008619(n)`
-/

namespace A064796.P5468413378721842475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265283 n - A110654 n) * A008619 n

end

end A064796.P5468413378721842475

namespace A064796

/-- `(A265283(n)-A110654(n))*A008619(n)` -/
def P5468413378721842475.Spec : Prop :=
  ∀ n, P5468413378721842475.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P2992844556458785118

`A004526(n)+∑[A329684(n)+A004526(n)]`
-/

namespace A064796.P2992844556458785118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064796.P2992844556458785118

namespace A064796

/-- `A004526(n)+∑[A329684(n)+A004526(n)]` -/
def P2992844556458785118.Spec : Prop :=
  ∀ n, P2992844556458785118.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P5299544115397393385

`(A265283(n)-A110654(n))*A110654(n+1)`
-/

namespace A064796.P5299544115397393385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265283 n - A110654 n) * A110654 (n + 1)

end

end A064796.P5299544115397393385

namespace A064796

/-- `(A265283(n)-A110654(n))*A110654(n+1)` -/
def P5299544115397393385.Spec : Prop :=
  ∀ n, P5299544115397393385.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P13721492037150787847

`∑[A004526(char[2]+1+n)]+or(1, n)`
-/

namespace A064796.P13721492037150787847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 n : ℤ)

end

end A064796.P13721492037150787847

namespace A064796

/-- `∑[A004526(char[2]+1+n)]+or(1, n)` -/
def P13721492037150787847.Spec : Prop :=
  ∀ n, P13721492037150787847.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P10890680544248344209

`A035106(A326178(n+1))`
-/

namespace A064796.P10890680544248344209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A326178 (n + 1)).toNat

end

end A064796.P10890680544248344209

namespace A064796

/-- `A035106(A326178(n+1))` -/
def P10890680544248344209.Spec : Prop :=
  ∀ n, P10890680544248344209.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P10363152082620258417

`A035106(A005171(or(1, n)+1)+n+1)`
-/

namespace A064796.P10363152082620258417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A005171 (Nat.lor 1 n + 1) + (n : ℤ) + 1).toNat

end

end A064796.P10363152082620258417

namespace A064796

/-- `A035106(A005171(or(1, n)+1)+n+1)` -/
def P10363152082620258417.Spec : Prop :=
  ∀ n, P10363152082620258417.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P13257925586315055179

`A035106(A029265(floor(2/(n+1)))+n+1)`
-/

namespace A064796.P13257925586315055179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A029265 ⌊2 / (n + 1 : ℚ)⌋.toNat + (n : ℤ) + 1).toNat

end

end A064796.P13257925586315055179

namespace A064796

/-- `A035106(A029265(floor(2/(n+1)))+n+1)` -/
def P13257925586315055179.Spec : Prop :=
  ∀ n, P13257925586315055179.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P10210742744541566143

`A008619(n)*A008619(A265283(n))`
-/

namespace A064796.P10210742744541566143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A008619 (A265283 n).toNat

end

end A064796.P10210742744541566143

namespace A064796

/-- `A008619(n)*A008619(A265283(n))` -/
def P10210742744541566143.Spec : Prop :=
  ∀ n, P10210742744541566143.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P3991902809703661413

`A008619(n)*A008619(A158478(n)+n)`
-/

namespace A064796.P3991902809703661413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A008619 (A158478 n + (n : ℤ)).toNat

end

end A064796.P3991902809703661413

namespace A064796

/-- `A008619(n)*A008619(A158478(n)+n)` -/
def P3991902809703661413.Spec : Prop :=
  ∀ n, P3991902809703661413.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P5105659657804637885

`A008619(n)*A008619(A174296(n)+n)`
-/

namespace A064796.P5105659657804637885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A008619 (A174296 n + (n : ℤ)).toNat

end

end A064796.P5105659657804637885

namespace A064796

/-- `A008619(n)*A008619(A174296(n)+n)` -/
def P5105659657804637885.Spec : Prop :=
  ∀ n, P5105659657804637885.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P8892157148551039242

`A008619(n)*A008619(A267530(n)+A008619(n))`
-/

namespace A064796.P8892157148551039242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A008619 (A267530 n + A008619 n).toNat

end

end A064796.P8892157148551039242

namespace A064796

/-- `A008619(n)*A008619(A267530(n)+A008619(n))` -/
def P8892157148551039242.Spec : Prop :=
  ∀ n, P8892157148551039242.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P12166725529680031188

`A110654(A265283(n)+1)*A110654(n+1)`
-/

namespace A064796.P12166725529680031188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A265283 n + 1).toNat * A110654 (n + 1)

end

end A064796.P12166725529680031188

namespace A064796

/-- `A110654(A265283(n)+1)*A110654(n+1)` -/
def P12166725529680031188.Spec : Prop :=
  ∀ n, P12166725529680031188.a n = A064796 (n + 1)

end A064796

/-! ## A064796.P13554254297178816739

`comp[floor(2*sqrt(abs(1-n)+1))+n]+1`
-/

namespace A064796.P13554254297178816739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (|1 - (n : ℤ)| + 1 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064796.P13554254297178816739

namespace A064796

/-- `comp[floor(2*sqrt(abs(1-n)+1))+n]+1` -/
def P13554254297178816739.Spec : Prop :=
  ∀ n, (P13554254297178816739.a n : ℤ) = A064796 (n + 1)

end A064796

/-! ## A064796.P625656943420483934

`filter[A035106(n+1), A347950(#)]`
-/

namespace A064796.P625656943420483934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A064796.P625656943420483934

namespace A064796

/-- `filter[A035106(n+1), A347950(#)]` -/
def P625656943420483934.Spec : Prop :=
  ∀ n, P625656943420483934.a n = A064796 (n + 1)

end A064796

/-!
# A064798: Sum of primes dividing the repunit numbers (with repetition).

The programs for A064798, there is no canonical definition to state claims against.
-/

/-! ## A064798.P15321650344100615907

`∑{p}[A002275(comp[or(6, n)]), #]`
-/

namespace A064798.P15321650344100615907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A064798.P15321650344100615907

/-! ## A064798.P116545786370887686

`A001414(or(1, A002275(n)))`
-/

namespace A064798.P116545786370887686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.lor 1 (A002275 n)).toNat

end

end A064798.P116545786370887686

/-!
# A064799: Sum of n-th prime number and n-th composite number.

The programs for A064799, the canonical program `A064799.P13450618005534133469` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064799 has offset 1).

The definition of A064799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064799.P13450618005534133469

`A000040(n+1)+A002808(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064799

/-- `A000040(n+1)+A002808(n+1)` -/
def P13450618005534133469.Spec : Prop :=
  ∀ n, P13450618005534133469.a n = A064799 (n + 1)

theorem P13450618005534133469.correct : P13450618005534133469.Spec := by
  intro n
  simp only [A064799, Nat.add_sub_cancel]

end A064799

/-! ## A064799.P12030005299792307699

`A171639(n+2)`
-/

namespace A064799.P12030005299792307699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 2)

end

end A064799.P12030005299792307699

namespace A064799

/-- `A171639(n+2)` -/
def P12030005299792307699.Spec : Prop :=
  ∀ n, P12030005299792307699.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P7945262463508937406

`A129189(n+1)+1+n`
-/

namespace A064799.P7945262463508937406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129189 (n + 1) + 1 + (n : ℤ)

end

end A064799.P7945262463508937406

namespace A064799

/-- `A129189(n+1)+1+n` -/
def P7945262463508937406.Spec : Prop :=
  ∀ n, P7945262463508937406.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P8074889562612681985

`A129188(n+1)-(n+1)`
-/

namespace A064799.P8074889562612681985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129188 (n + 1) - (n + 1 : ℤ)

end

end A064799.P8074889562612681985

namespace A064799

/-- `A129188(n+1)-(n+1)` -/
def P8074889562612681985.Spec : Prop :=
  ∀ n, P8074889562612681985.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P18091885291033519823

`Δ[A053767(n)+A007504(n)]`
-/

namespace A064799.P18091885291033519823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064799.P18091885291033519823

namespace A064799

/-- `Δ[A053767(n)+A007504(n)]` -/
def P18091885291033519823.Spec : Prop :=
  ∀ n, P18091885291033519823.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P14867786943284746639

`A075526(n)+A022798(n+1)`
-/

namespace A064799.P14867786943284746639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A022798 (n + 1)

end

end A064799.P14867786943284746639

namespace A064799

/-- `A075526(n)+A022798(n+1)` -/
def P14867786943284746639.Spec : Prop :=
  ∀ n, P14867786943284746639.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P3474512394912263828

`comp[A351078(n)]+Δ[A007504(n)]`
-/

namespace A064799.P3474512394912263828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (f2 (n + 1) - f2 n)

end

end A064799.P3474512394912263828

namespace A064799

/-- `comp[A351078(n)]+Δ[A007504(n)]` -/
def P3474512394912263828.Spec : Prop :=
  ∀ n, P3474512394912263828.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P12289109420514500174

`A002808(n+1)+Δ[A007504(n)]`
-/

namespace A064799.P12289109420514500174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064799.P12289109420514500174

namespace A064799

/-- `A002808(n+1)+Δ[A007504(n)]` -/
def P12289109420514500174.Spec : Prop :=
  ∀ n, P12289109420514500174.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P11705609513772811327

`A000040(n+1)+Δ[A053767(n)]`
-/

namespace A064799.P11705609513772811327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064799.P11705609513772811327

namespace A064799

/-- `A000040(n+1)+Δ[A053767(n)]` -/
def P11705609513772811327.Spec : Prop :=
  ∀ n, P11705609513772811327.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P9879686416102313585

`Δ[A007504(n)]+A018252(n+2)`
-/

namespace A064799.P9879686416102313585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A018252 (n + 2)

end

end A064799.P9879686416102313585

namespace A064799

/-- `Δ[A007504(n)]+A018252(n+2)` -/
def P9879686416102313585.Spec : Prop :=
  ∀ n, P9879686416102313585.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P6211097131834446573

`A072668(n+1)+A008864(n+1)`
-/

namespace A064799.P6211097131834446573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + A008864 (n + 1)

end

end A064799.P6211097131834446573

namespace A064799

/-- `A072668(n+1)+A008864(n+1)` -/
def P6211097131834446573.Spec : Prop :=
  ∀ n, P6211097131834446573.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P2300385992537556598

`A079696(n+1)+A006093(n+1)`
-/

namespace A064799.P2300385992537556598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) + A006093 (n + 1)

end

end A064799.P2300385992537556598

namespace A064799

/-- `A079696(n+1)+A006093(n+1)` -/
def P2300385992537556598.Spec : Prop :=
  ∀ n, P2300385992537556598.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P1349428190040406647

`A073169(n+1)+A014688(n+1)`
-/

namespace A064799.P1349428190040406647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + A014688 (n + 1)

end

end A064799.P1349428190040406647

namespace A064799

/-- `A073169(n+1)+A014688(n+1)` -/
def P1349428190040406647.Spec : Prop :=
  ∀ n, P1349428190040406647.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P11527496038897906385

`A065310(n+1)+A022797(n+1)`
-/

namespace A064799.P11527496038897906385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1) + A022797 (n + 1)

end

end A064799.P11527496038897906385

namespace A064799

/-- `A065310(n+1)+A022797(n+1)` -/
def P11527496038897906385.Spec : Prop :=
  ∀ n, P11527496038897906385.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P226045634775998816

`A161537(n+1)+A014689(n+1)`
-/

namespace A064799.P226045634775998816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1) + A014689 (n + 1)

end

end A064799.P226045634775998816

namespace A064799

/-- `A161537(n+1)+A014689(n+1)` -/
def P226045634775998816.Spec : Prop :=
  ∀ n, P226045634775998816.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P9807432187864877017

`A000040(n+1)+A018252(n+2)`
-/

namespace A064799.P9807432187864877017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 2)

end

end A064799.P9807432187864877017

namespace A064799

/-- `A000040(n+1)+A018252(n+2)` -/
def P9807432187864877017.Spec : Prop :=
  ∀ n, P9807432187864877017.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P8262872614430409186

`A100484(n+1)-A038529(n+1)`
-/

namespace A064799.P8262872614430409186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A038529 (n + 1)

end

end A064799.P8262872614430409186

namespace A064799

/-- `A100484(n+1)-A038529(n+1)` -/
def P8262872614430409186.Spec : Prop :=
  ∀ n, P8262872614430409186.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P18372256674326048319

`A141468(n+3)+A000040(n+1)`
-/

namespace A064799.P18372256674326048319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + A000040 (n + 1)

end

end A064799.P18372256674326048319

namespace A064799

/-- `A141468(n+3)+A000040(n+1)` -/
def P18372256674326048319.Spec : Prop :=
  ∀ n, P18372256674326048319.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P10617852007111823166

`lt[1, A074206(n)]+A000040(n+1)`
-/

namespace A064799.P10617852007111823166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + A000040 (n + 1)

end

end A064799.P10617852007111823166

namespace A064799

/-- `lt[1, A074206(n)]+A000040(n+1)` -/
def P10617852007111823166.Spec : Prop :=
  ∀ n, P10617852007111823166.a n = A064799 (n + 1)

end A064799

/-! ## A064799.P11568159659207237662

`lt[1, A328847(n)]+A000040(n+1)`
-/

namespace A064799.P11568159659207237662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + A000040 (n + 1)

end

end A064799.P11568159659207237662

namespace A064799

/-- `lt[1, A328847(n)]+A000040(n+1)` -/
def P11568159659207237662.Spec : Prop :=
  ∀ n, P11568159659207237662.a n = A064799 (n + 1)

end A064799

